import binary_tools
import schedule
import shutil
import subprocess
import time
import threading
import os 
import logging
import random
import argparse
import jpype
import copy
import jpype.imports
from datetime import datetime

from jpype.types import *
#TODO: Set this to be a enviorment varriable.

#Source these env variables from java_home.sh
try:
    classpath1 = os.environ["SCRIPTING_JAR"]
    classpath2 = os.environ["DSS_JAR"]
    classpath3 = os.environ["DBENG_JAR"]
except KeyError:
    print('SetupError: Missing a enviorment variable, trying setting it via java_setup.sh and try again')
    exit(0)
# jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])
jpype.startJVM(classpath=[classpath1+':'+classpath2+':'+classpath3])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *


COVERAGE_SIZE = 200*2 #This is equal to the max number of blocks we can support tracing at once. 32 bits each entry
# SEED_SIZE = 256
SENQUENCIAL = 1
RANDOM = 2
HARDWARE_ID = 1


global_coverage_list = []
coverage_locations = []
corrupted_list = False


current_test_case = []
seed_dir = ''
results_dir = ''
global_pool = {}
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
program_to_load = 'DumbFuzz.out'
seed_size = 500 #Size of current seed
amount_of_crashes = 0
fuzzer_start_time = 0



increasing_cases = 0

average_testcase_time = 0
total_testcase_time = 0
iterations = 0

logging.getLogger()
logging.basicConfig(filename='fuzz.log', level=logging.DEBUG)


def log(func):

    def wrapper(*args, **kwargs):
        logging.debug('Entering ' + func.__name__)
        start_time = time.clock_gettime(time.CLOCK_BOOTTIME)
        ret_value = func(*args,**kwargs)        
        end_time = time.clock_gettime(time.CLOCK_BOOTTIME)
        logging.debug('Exiting ' + func.__name__)
        # print('--------------------------------')
        print('DSLOG: Time taken for ' + func.__name__ + ' = ' + str(end_time-start_time))
        # print('--------------------------------')
        return ret_value
    return wrapper


def _handle_args():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='DSPFuzz.py',
        description='Host side fuzzing engine for DSPFuzz.'
    )
    parser.add_argument('-l','--localpool', type=int ,dest='localpool',action='store',
        help='Size of the local pool on the DSP', required='true'
    )
    parser.add_argument('-i','--seeds' ,dest='seed_dir',action='store',
        help='Directory of the global seed pool', required='true'
    )
    parser.add_argument('-o', '--results', dest='res_dir', action='store',
                        help='Directory of results storage', required='true'
    )
    parser.add_argument('-b', '--bin', dest='binary', action='store',
                        help='Path to the binary.', required='true'
    )
    parser.add_argument('-r', '--restart', dest='restart', action='store',
                        help='Are we restarting a test: reusing offsets', required='true'
    )


    return parser.parse_args()


def _reset_and_reload():
    global debugServer, debugSession, script, program_to_load
    id_num = ''
    try:
        debugSession.target.reset()
    except:
        print('DSLOG: Failed to reset the device.')
    finally:
        debugSession.terminate()
        debugServer.stop()


        #This scrapes the id number for the usbreset command
    outstring = subprocess.check_output("uhubctl")
    
    outstring = outstring.decode("utf-8")
    outstring = outstring.split('\n')

    device_line = ''
    for line in outstring:
        #print(line)
        if 'hub' in str(line):
            split = str(line).split('hub')
            #print(split)
            final_split = split[1].split('[')
            #print(final_split)
            layer = final_split[0].replace(' ', '')

        if 'Texas' in str(line):
            device_line = str(line)
            # print(device_line)
            port_split = device_line.split('Port')
            # print(port_split)
            final_split = port_split[1].split(':')
            # print(final_split)
            port = final_split[0].replace(' ','')
            break

    print(f"DSLOG: USB Device: {layer} Port: {port}")
        
        # print('-----Resetting the Device-----')
    os.system(f'uhubctl -a off -l {layer} -p {port} -r 1000')
    # time.sleep(20)
    os.system(f'uhubctl -a on -l {layer} -p {port} -r 1000')
    # time.sleep(15)
    # os.system('uhubctl -a on  -l 3-1 -p 1')

    try:
        debugSession.target.reset()
    except:
        print('DSLOG: Failed to reset the device after power cycle.')

    script = ScriptingEnvironment.instance()

    script.traceBegin('FuzzerLog.xml', 'DefaultStylesheet.xsl')

    # Set our TimeOut
    script.setScriptTimeout(1500000000)

    # Log everything
    script.traceSetConsoleLevel(TraceLevel.INFO)
    script.traceSetFileLevel(TraceLevel.INFO)
    try:
        # Get the Debug Server and start a Debug Session
        debugServer = script.getServer('DebugServer.1')
        debugServer.setConfig('./board_configuration/USBSTK5515_BOARD.ccxml')
        #debugServer.setConfig('./board_configuration/USBSTK5515_SIM.ccxml')
        debugSession = debugServer.openSession('.*')
        debugSession.target.connect()
    
        debugSession.clock.enable()
    
        debugSession.memory.loadProgram(program_to_load)
    except:
        #If something happens the board needs to be power cycled twice :(
        print('DSLOG: Power Cycling the board twice :(')
        _reset_and_reload()
        return
    #debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    retVal = setup()
    if(retVal == -1):
        print('DSLOG: Failed to set intial breakpoints power cycling.')
        _reset_and_reload()
        return

    
def _coverage_setup(bin_path, isRestart):
    global program_to_load, coverage_locations
    if not isRestart:
        shutil.copyfile(bin_path, program_to_load)

    # starting_address = binary_tools.read_map_file('./DSPFuzz.map')
    coverage_integers = binary_tools.read_disassembly_file(bin_path)
    for locs in coverage_integers:
        print(hex(locs) + ', ', end='')
        coverage_locations.append(hex(locs))
    print('')
    #starting_byte = binary_tools.find_calls(program_to_load, asm_in_mem, isRestart)
    #coverage_dict = binary_tools.calc_offsets(coverage_locations, starting_byte)

@log
def debug_server_setup():
    """ 
        Sets up the varrious functions for the debug connection
    """

    global debugServer, debugSession, script
    try:
        script = ScriptingEnvironment.instance()

        script.traceBegin('FuzzerLog.xml', 'DefaultStylesheet.xsl')

        # Set our TimeOut
        script.setScriptTimeout(1500000000)

        # Log everything
        script.traceSetConsoleLevel(TraceLevel.INFO)
        script.traceSetFileLevel(TraceLevel.INFO)

        # Get the Debug Server and start a Debug Session
        debugServer = script.getServer('DebugServer.1')
        debugServer.setConfig('./board_configuration/USBSTK5515_BOARD.ccxml')
        #debugServer.setConfig('./board_configuration/USBSTK5515_SIM.ccxml')
        debugSession = debugServer.openSession('.*')
        debugSession.target.connect()
        debugSession.clock.enable()

        debugSession.memory.loadProgram(program_to_load)
    except:
        _reset_and_reload()

def _write_coverage(coverage, path, time) -> None:
    """
        Writes coverage to coverage.map file
        @Arguments: coverage -> list of ints that represent hashed addresses of the SUT 
                    path -> path to store the coverage map
        @Return:    None
    """

    with open(path, 'w') as fp:
        fp.write(time)
        fp.write(' ') 
        for x in range(0,len(coverage)):
                #if (x % 4) == 0:
                    #fp.write('\n')
                # fp.write(("{0:016b}".format(coverage[x])[::-1]))
                fp.write(str(coverage[x]))
                fp.write(' ')

def _pull_coverage() -> list:
    """
        Pulls coverage from our on board coverage list.
        @Arguments: coverage_list_address -> address on the board of the coverage map 
                    size -> size of the coverage map currently being used on the board.
        @Return:    coverage_list -> a list of ints that represent coverage from a test run
    """
    global coverage_list_address
    coverage_list = []

    for x in range(0, COVERAGE_SIZE,2):
        #Pull the coverage map when we find new coverage
        try:
            cov = debugSession.memory.readData(1,coverage_list_address + x, 32)
            # print(hex(cov))
            if ((x > 0) and (cov == 0)):
                #print('DSLOG: Found the end of the coverage map.')
                break

        except(Exception):
            #Sleep for a time and try again.
            time.sleep(.05)
            cov = debugSession.memory.readData(1,coverage_list_address + x, 32)

        coverage_list.append(cov)
        
    return coverage_list

def _pull_statistics():
    """Pulls total time and number of iterations performed and adds them to global statistics for the campaign.
    
        @Arguments: NONE
        @Return:    NONE
    """
    global start_time, iterations, board_increasing_cases, host_increasing_cases

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print(f"DSLOG: Current time: {dt_string}")

    end_time = time.clock_gettime(time.CLOCK_REALTIME)
    it_address = debugSession.symbol.getAddress('g_iterations')
    #time_address = debugSession.symbol.getAddress('total_time')

    increasing_address = debugSession.symbol.getAddress('g_numInteresting')
    board_increasing_cases = debugSession.memory.readData(1, increasing_address ,16)

    print('DSLOG: Board has tracked this number of increasing test cases --> ',board_increasing_cases)
    print('DSLOG: Host has tracked this number of increasing test cases --> ',host_increasing_cases)


    #Read the number of iterations.
    iterations = debugSession.memory.readData(1, it_address ,16) + iterations
    if iterations == 0:
        return

    #Need to clear the number of iterations on the device so that we can track them properly...
    try:
        debugSession.memory.writeData(1, it_address, 0, 16)
    except:
        pass


    elapsed_time = end_time - start_time
    print('DSLOG: Total number of iterations: ' + str(iterations))
    print('DSLOG: Average throughput time: ' + str(elapsed_time/iterations))

def _mutate(seed_num) -> list:
    """
        Performs mutation on a seed.
        @Arguments: seed: the seed to be used to fuzz [0] number of iterations performed, [1] acutal seed
        @Return: mutated test case
    """
    global current_test_case, global_pool

    #print("DSLOG: In the mutator.")
    # print(global_pool)
    stage_cycles = global_pool[seed_num] 

    with open(seed_dir + str(seed_num), 'r') as fp:
        str_seed = fp.readlines()
        #print(str_seed)

    seed = list(map(int, str_seed))

    #print(seed_num)
    #print(seed)
    

    global_pool[seed_num] += 1

    test_case = []

    #Walking bit-flips
    if stage_cycles < 1:    
        for byte in seed:
            temp = byte
            for i in range(0,16, 2):
                temp = temp ^ (1 << i)
            test_case.append(temp)
    elif stage_cycles < 2:
        for byte in seed:
            temp = byte
            for i in range(1,16, 2):
                temp = temp ^ (1 << i)
            test_case.append(temp & 65535)
    elif stage_cycles < 3:
        for byte in seed:
            temp = byte
            for i in range(0,16, 3):
                temp = temp ^ (3 << i)
            test_case.append(temp & 65535)

    elif stage_cycles < 4:
        for byte in seed:
            temp = byte
            for i in range(1,16, 3):
                temp = temp ^ (3 << i)
            test_case.append(temp & 65535)

    elif stage_cycles < 5:
        for byte in seed:
            temp = byte
            for i in range(0,16, 5):
                temp = temp ^ (15 << i)
            test_case.append(temp & 65535)

    elif stage_cycles < 6:
        for byte in seed:
            temp = byte
            for i in range(1,16, 5):
                temp = temp ^ (15 << i)
            test_case.append(temp & 65535)

    #Walkling byte flip
    elif stage_cycles < 7:
        for i in range(0,len(seed),2):
            temp = seed[i]
            test_case.append(temp ^ 255)

    elif stage_cycles < 8:
        for i in range(1, len(seed), 2):
            temp = seed[i]
            test_case.append(temp ^ 65280)

    elif stage_cycles < 9:
        for i in range(0,len(seed),2):
            temp = seed[i]
            test_case.append(temp ^ 65535)

    elif stage_cycles < 10:
        for i in range(1, len(seed), 2):
            temp = seed[i]
            test_case.append(temp ^ 65535)

    elif stage_cycles < 45:
        for i in range(0, len(seed), 2):
            temp = seed[i]
            test_case.append((temp + (stage_cycles % 35)) % 65535)

    elif stage_cycles < 80:
        for i in range(1, len(seed), 2):
            temp = seed[i]
            test_case.append((temp + (stage_cycles % 35)) % 65535)

    elif stage_cycles < 115:
        for i in range(0, len(seed), 2):
            temp = seed[i]
            test_case.append(abs(temp - (stage_cycles % 35)) % 65535)

    elif stage_cycles < 150:
        for i in range(1, len(seed), 2):
            temp = seed[i]
            test_case.append(abs(temp - (stage_cycles % 35)) % 65535)
    #Random Mutation
    else:
        mut_amount = random.randint(1, 100)
        temp = copy.deepcopy(seed)

        for i in range(0, mut_amount):
            mut_byte = random.randint(0, len(seed) - 1)
            mut_choice = random.randint(0,9)
            b = random.randint(0,15)

            if mut_choice == 0:    
                temp[mut_byte] = (temp[mut_byte] ^ (1 << b)) & 65535
            
            elif mut_choice == 1:
                temp[mut_byte] = (temp[mut_byte] ^ (3 << b)) & 65535

            elif mut_choice == 2:
                temp[mut_byte] = (temp[mut_byte] ^ (15 << i)) & 65535
            
            elif mut_choice == 3:
                temp[mut_byte] = temp[mut_byte] ^ 255

            elif mut_choice == 4:
                temp[mut_byte] = temp[mut_byte] ^ 65280

            elif mut_choice == 5:
                temp[mut_byte] = temp[mut_byte] ^ 65535

            elif mut_choice == 6:
                temp[mut_byte] = (temp[mut_byte] + (mut_amount % 35)) & 65535

            elif mut_choice == 7:
                temp[mut_byte] = abs(temp[mut_byte] - (mut_amount % 35)) & 65535

            elif mut_choice == 8:
                temp[mut_byte] = random.randint(1, 255)

            elif mut_choice == 9:
                temp[mut_byte] = 0

        test_case = copy.deepcopy(temp)


    current_test_case = copy.deepcopy(test_case)

    # print(test_case)
    # print(current_test_case)
    return test_case

def _setup_seed_pool():
    global global_pool, seed_dir, global_pool_size

    seeds = os.listdir(seed_dir)
    global_pool_size = len(seeds)

    for seed in seeds:
        global_pool[int(seed)] = 0

def prepare_for_execution():

    global iterations

    iterations += 1

    selected_seed = _select_seed()
    seed = _mutate(selected_seed)
    _write_testcase_to_buffer(seed)



@log
def setup():
    """ Sets the intial breakpoints in our fuzzing program.
        @Arguments: NONE
        @Return:    NONE
    """

    global lp_refresh_id, crash_void_address, finished_execution_id, finished_execution_address, input_buffer_address, lp_refresh_address, lp_props, coverage_list_address, timeout_address
    try:
        IER0 = debugSession.memory.readRegister('IER0', False)
        IER1 = debugSession.memory.readRegister('IER1', False)
        IFR0 = debugSession.memory.readRegister('IFR0', False)
        IFR1 = debugSession.memory.readRegister('IFR1', False)
        ST0 =  debugSession.memory.readRegister('ST0', False)
        ST1 =  debugSession.memory.readRegister('ST1', False)
        ST2 =  debugSession.memory.readRegister('ST2', False)
        ST3 =  debugSession.memory.readRegister('ST3', False)
        PC = debugSession.memory.readRegister('PC', False)

        print(f'Interrupt Enable Registers {hex(IER0)} {hex(IER1)} | Interrupt Flag Registers {hex(IFR0)} {hex(IFR1)} | Status Registers  {hex(ST0)} {hex(ST1)} {hex(ST2)} {hex(ST3)} | Program Counter {hex(PC)}')    
    except:
        print("DSLOG: Failed to read registers.")

    #Clears any stale breakpoints.
    try:
        debugSession.breakpoint.removeAll()
    except:
        print("DSLOG: Failed to remove stale breakpoints.")

    lp_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    lp_refresh_address = debugSession.symbol.getAddress('obtain_seed')
    lp_props.setString("Hardware Configuration.Type.Location", str(lp_refresh_address))
    lp_refresh_id = debugSession.breakpoint.add(lp_props)
    
    crash_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    crash_void_address = debugSession.symbol.getAddress('crash_void')
    crash_props.setString("Hardware Configuration.Type.Location", str(crash_void_address))
    debugSession.breakpoint.add(crash_props)

    coverage_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    finished_execution_address = debugSession.symbol.getAddress('finshed_execution')
    coverage_props.setString("Hardware Configuration.Type.Location", str(finished_execution_address))
    finished_execution_id = debugSession.breakpoint.add(coverage_props)
    
    #Obtain the input buffer address
    input_buffer_pointer = debugSession.symbol.getAddress('g_inputBuffer')
    print(hex(input_buffer_pointer))

    #Find the coverage map address
    coverage_list_address = debugSession.symbol.getAddress('g_coverageMap')

    timeout_address = debugSession.symbol.getAddress('g_isTimeout')

    _coverage_setup('./on_board/DumbFuzz.out', False)
    # try:
    #     lp_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    #     lp_refresh_address = debugSession.symbol.getAddress('obtain_seed')
    #     lp_props.setString("Hardware Configuration.Type.Location", str(lp_refresh_address))
    #     lp_refresh_id = debugSession.breakpoint.add(lp_props)
        
    #     crash_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    #     crash_void_address = debugSession.symbol.getAddress('crash_void')
    #     crash_props.setString("Hardware Configuration.Type.Location", str(crash_void_address))
    #     debugSession.breakpoint.add(crash_props)

    #     coverage_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
    #     finished_execution_address = debugSession.symbol.getAddress('finshed_execution')
    #     coverage_props.setString("Hardware Configuration.Type.Location", str(finished_execution_address))
    #     finished_execution_id = debugSession.breakpoint.add(coverage_props)
        
    #     #Obtain the input buffer address
    #     input_buffer_address = debugSession.memory.symbol.getAddress('g_inputBuffer')

    #     #Find the coverage map address
    #     coverage_list_address = debugSession.symbol.getAddress('g_coverageMap')

    #     timeout_address = debugSession.symbol.getAddress('g_isTimeout')

    # except:
    #     print("DSLOG: Failed to set breakpoints trying again.")
    #     return -1

    _setup_seed_pool()

    
    print('DSLOG: Refresh breakpoints set.')
    debugSession.target.run()
    input_buffer_address = debugSession.memory.readData(1, input_buffer_pointer, 32)

    prepare_for_execution()
    




def _select_seed() -> list:
    """Selects a random seed to be loaded

        @Arguments: None
        @Return: a seed
    """
    global global_pool, global_pool_size

    global_pool_size = len(global_pool)
    rnd_num = random.randint(1, global_pool_size)
    #TODO: Maybe a better way to select seeds for the local pool

    

    return rnd_num



def _write_testcase_to_buffer(seed):

    global seed_size, input_buffer_address

    # seed_check = []

    written_seed_len = 400
    seed = seed[:400]
    # print(type(seed[0]))
    debugSession.memory.writeData(1, input_buffer_address, seed, 16)
    # isNotSame = True
    
    # while(isNotSame):
    #     debugSession.memory.writeData(1, input_buffer_address, seed, 16)
        
    #     seed_check = debugSession.memory.readData(1, input_buffer_address, 16, written_seed_len, False)
    #     # seed_check = [int(j)for j in seed_check]
    #     print(type(seed_check[0]))

        # isNotSame = seed_check != seed
        # if(isNotSame):
        #     print(seed_check, end='')
        #     print(' | ' , end='')
        #     print(seed)
        #     print("DSLOG: Seed writting error trying again.")
        # try:
        #     debugSession.memory.writeData(1, input_buffer_address, seed, 16)
        
        #     seed_check = debugSession.memory.readData(1, input_buffer_address, 16, written_seed_len, False)
        #     seed_check = [int(j)for j in seed_check]

        #     isNotSame = seed_check != seed
        #     if(isNotSame):
        #         print(seed_check + ' | ' + seed)
        #         #print("DSLOG: Seed writting error trying again.")
        # except:
        #     print("DSLOG: Failed to write seed.")


    

def _store_seed(isCrash) -> None:
    """
        Stores the seed on the host and adds an entry into the pool tracker.
        @Arguments: seed_address -> address of where the seed starts.
                    seed_id -> id of the newly stored seed
                    dir -> directory to store it at.
        @Return: None
    """
    global seed_size, input_buffer_address, seed_dir, results_dir, global_pool, current_test_case, global_pool, amount_of_crashes

    new_seed_num = len(global_pool) + 1

    if isCrash:
        with open(results_dir+"crashes/" +str(amount_of_crashes), 'w+') as fp:
            for byte in current_test_case:
                    fp.write(str(byte) + '\n')
            
    else:
        #print(current_test_case)
        print(f'DSLOG: Writing new seed to {new_seed_num}')
        with open('./seeds/' +str(new_seed_num), 'w+') as fp:
            for byte in current_test_case:
                fp.write(str(byte) + '\n')

    #TODO: Add entry into the pool tracker
    global_pool[new_seed_num] = 0
    #print(global_pool)


def _is_new_coverage(coverage) -> bool:
    """
        Check to see if there is increasing coverage.
    """
    global global_coverage_list, increasing_cases, coverage_locations, corrupted_list

    isIncreasing = False
    #print('DSLOG: New coverage points: ',end='')
    # for block in coverage:
    #     print(hex(block) +', ', end='')
    # print('')

    for block in coverage:
        if hex(block) not in global_coverage_list:
            global_coverage_list.append(hex(block))
            increasing_cases +=1
            isIncreasing = True
        if hex(block) not in coverage_locations:
            #print(hex(block))
            corrupted_list = True
            #print('DSLOG: Found non-existant coverage.')
            isIncreasing = False
            return isIncreasing

    #print('DSLOG: Global Coverage: ',global_coverage_list)

    if isIncreasing:
        print(f'DSLOG: Found new coverage. {coverage}')
    

    return isIncreasing


def finshed_execution():
    """
        Board has finished an execution check to see if there is new coverage.
    """
    cov = _pull_coverage()
    isIncreasing = _is_new_coverage(cov)

    if isIncreasing:
        _store_seed(False)
    

@log
def crash_reload() -> None:
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """
    global amount_of_crashes, timeout_address


    #finshed_execution()
    
    print("DSLOG: Found crash.")
    try:
        IER0 = debugSession.memory.readRegister('IER0', False)
        IER1 = debugSession.memory.readRegister('IER1', False)
        IFR0 = debugSession.memory.readRegister('IFR0', False)
        IFR1 = debugSession.memory.readRegister('IFR1', False)
        ST0 =  debugSession.memory.readRegister('ST0', False)
        ST1 =  debugSession.memory.readRegister('ST1', False)
        ST2 =  debugSession.memory.readRegister('ST2', False)
        ST3 =  debugSession.memory.readRegister('ST3', False)
        PC = debugSession.memory.readRegister('PC', False)
        print(f'Interrupt Enable Registers {hex(IER0)} {hex(IER1)} | Interrupt Flag Registers {hex(IFR0)} {hex(IFR1)} | Status Registers  {hex(ST0)} {hex(ST1)} {hex(ST2)} {hex(ST3)} | Program Counter {hex(PC)}')
        
    except: 
        print("DSLOG: Failed to read status registers.")

    try:
        debugSession.breakpoint.removeAll()
    except:
        print("DSLOG: Failed to remove all breakpoints.")
    

    amount_of_crashes+=1

  
    now = datetime.now()
    dt_string = now.strftime("%d_%m_%Y_%H_%M_%S")
    
    _store_seed(True)
    # try:
    #     isTimeout = debugSession.memory.readData(1, timeout_address, 16, 1, False)
    # except:
    #     _store_seed(True)
    
    # if not isTimeout:
    #     _store_seed(True)
    # elif isTimeout:
    #     finshed_execution()

    _reset_and_reload()

def _halt_device():
    global debugSession
    print('DSLOG: Halting Target')
    debugSession.target.halt()
    
    
            
@log
def device_listener() -> None:
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """

    global finished_execution_address, crash_void_address, lp_refresh_address, debugSession, corrupted_list
    
    isRunning = False

    start_time = 0
    end_time = 0

    print(hex(crash_void_address))
    print(hex(finished_execution_address))
    print(hex(lp_refresh_address))
    
    while(1):    
        schedule.run_pending()
        #Once the device is halted check to see what breakpoint was hit.
        # if(reload_timeout):
        #     crash_reload()
        #     reload_timeout = False
        #     isRunning = False
        
        if not isRunning:
            try:
                start_time = time.clock_gettime(time.CLOCK_REALTIME)
                debugSession.target.runAsynch()
                isRunning = True
                
                # print("DSLOG: Target started.")
            except:
                print("DSLOG: Failed to run target.")
                crash_reload()
            
        if isRunning:
            
            try:
                pc = debugSession.expression.evaluate('PC')
            except:
                print("DSLOG: Failed to read the program counter.")
                crash_reload()
                isRunning = False
            if(pc == crash_void_address):
                #If there is crash reload the DSP program.
                #finshed_execution()
                crash_reload()
                isRunning = False

            if(pc == finished_execution_address):
                #If there is a covereage increasing input found bubble it up to the global pool.
                # print("DSLOG: Finished Execution.")
                finshed_execution()
                if corrupted_list:
                    print('DSLOG: Coverage list is corrputed resetting.')
                    crash_reload()
                    corrupted_list = False
                isRunning = False
                # isRunning = False

            if(pc == lp_refresh_address):
                # print("DSLOG: Preparing for execution.")
                prepare_for_execution()
                isRunning = False

            end_time = time.clock_gettime(time.CLOCK_REALTIME)
            if (end_time - start_time) >= 120:
                print('DSLOG: Execution timeout.')
                #finshed_execution()
                crash_reload()
                isRunning = False
            pc = 0
        

def print_fuzzer_status():
    global iterations, fuzzer_start_time

    end_time = time.clock_gettime(time.CLOCK_REALTIME)

    total_time = end_time - fuzzer_start_time

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print(f"DSLOG: Current time: {dt_string}")
    print(f'DSLOG: Total Time for fuzzer {total_time}s')
    print(f'DSLOG: Average throughput time: {total_time/iterations}')
    print(f'DSLOG: Total number of iterations {iterations}')

    
@log
def main():
    """Main entry point, intially sets up the debug server and handles arguments.
        
        @Arguments: None
        @Return: None
    """

    global sanity_check, asm_in_mem, lp_refresh_id, local_pool_size, seed_dir, results_dir, fuzzer_start_time, timer_thread, current_seed_address, seed_dir



    args = _handle_args()
    local_pool_size = args.localpool
    seed_dir = args.seed_dir
    results_dir = args.res_dir
    bin_path = args.binary
    if args.restart == 'False' or args.restart == 'false':
        restart = False
    else:
        restart = True

    
    
    debug_server_setup()
    setup()
    
    # Get the address of the current seed. Only need to do this once.
    current_seed_pointer_address = debugSession.symbol.getAddress('g_inputBuffer')
    print('DSLOG: Current seed address -->', current_seed_pointer_address)
    current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    print('DSLOG: Current seed pointer -->', current_seed_address)
    

    fuzzer_start_time = time.clock_gettime(time.CLOCK_REALTIME)
    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print("DSLOG: Time of start =", dt_string)
    print("DSLOG: Finding coverage calls in binary")

    
    #start the refresh thread
    
    schedule.every(2).minutes.do(print_fuzzer_status)
    
    
    print("DSLOG: Starting the device listener.")
    device_listener()


if __name__ == "__main__":
    main()
