import binary_tools
import itertools
import logging
import shutil
import subprocess
import time
import threading
import os 
import logging
import random
import argparse
import jpype
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
    logging.debug('SetupError: Missing a enviorment variable, trying setting it via java_setup.sh and try again')
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


global_coverage_list = [0] * COVERAGE_SIZE

coverage_dict = {}
seed_dir = ''
results_dir = ''
local_pool_size = 10
global_pool_size = 10
global_pool = [] #List of all seeds in the SEED_DIR of the users choosing.
local_pool = [] #What is currently loaded into the device ID only 
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
program_to_load = './DSPFuzz.out'
seed_size = 500 #Size of current seed
amount_of_crashes = 0
start_time = 0
sanity_check = None
reload_timeout = False
first_execution = True
thoughput = 0
last_time = 0
execution_time = 0
isRunning = False


board_increasing_cases = 0
host_increasing_cases = 0

asm_in_mem = 0  #The asm signature of coverage function call

average_testcase_time = 0
total_testcase_time = 0
iterations = 0

logger = logging.getLogger()
logging.basicConfig(filename='branch.log', level=logging.DEBUG)


def log(func):

    def wrapper(*args, **kwargs):
        #logging.debug('Entering ' + func.__name__)
        start_time = time.clock_gettime(time.CLOCK_BOOTTIME)
        ret_value = func(*args,**kwargs)        
        end_time = time.clock_gettime(time.CLOCK_BOOTTIME)
        #logging.debug('Exiting ' + func.__name__)
        # logging.debug('--------------------------------')
        logging.debug('DSLOG: Time taken for ' + func.__name__ + ' = ' + str(end_time-start_time))
        # logging.debug('--------------------------------')
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

def coverage_setup(bin_path, isRestart):
    global coverage_dict, asm_in_mem
    if not isRestart:
        shutil.copyfile(bin_path, './DSPFuzz.out')

    # starting_address = binary_tools.read_map_file('./DSPFuzz.map')
    coverage_locations = binary_tools.read_disassembly_file(bin_path)
    starting_byte = binary_tools.find_calls('./DSPFuzz.out', asm_in_mem, isRestart)
    coverage_dict = binary_tools.calc_offsets(coverage_locations, starting_byte)

    #coverage_dict = binary_tools.calc_new_address(coverage_locations, starting_address=starting_address)

@log
def find_coverage_call():
    """
        Locates the asm instructions for a call to the coverage logging function.
        This only done once at the start to find what the call is.
    """

    global debugServer, debugSession, script, asm_in_mem

    starting_index = 0
    
    sut_address_var = debugSession.symbol.getAddress('g_sutStartAddress')
    sut_address = debugSession.memory.readData(1, sut_address_var, 32)
    first_part = debugSession.memory.readData(1, (sut_address//2), 32)
    second_part = debugSession.memory.readData(1, (sut_address//2)+1, 32)

    #Parsing through the resulting hex string to look for the coverage call trace.
    first_part = hex(first_part)
    for count, nibble in enumerate(first_part): 
        if nibble == '6':
            nibbleFlg = True
        elif nibble == 'c' and nibbleFlg:
            starting_index = count - 1

    remaining_nibbles = len(first_part) - (len(first_part) - starting_index + 1)
    logging.debug(f"DSLOG: We need {remaining_nibbles} more nibbles.")

    if remaining_nibbles != 0:
        #If the call is split between multiple words.
        first_part = first_part[starting_index:len(first_part)]
        last_nibbles = first_part[-2:]
        second_part = hex(second_part)[2:]

        for count, nibble in enumerate(second_part):
            if nibble == last_nibbles[0]:
                nibbleFlg = True
            elif nibble == last_nibbles[1] and nibbleFlg:
                second_part = second_part[count + 1 : count + remaining_nibbles + 1]

    else:
        second_part = ''

    #This is a work in progress. Manaul input has to be done here.
    logging.debug(f"DSLOG: Coverage call: {'0x' + first_part + second_part}")
    asm_in_mem = int(first_part + second_part, 16)
    asm_in_mem = 1812023022


    logging.debug(f'DSLOG: {hex(asm_in_mem)}')
    # logging.debug(asm_in_mem)
    

def reset_and_reload():
    global debugServer, debugSession, script, timer_thread, isRunning
    id_num = ''
    # reset1 = debugSession.target.getResetType(0)   
    # reset1.issueReset()
    # debugSession.target.verifyProgram("DSPFuzz.out")
    isRunning = False
    # try:
    #     debugSession.target.reset()
    # except:
    #     logging.debug('DSLOG: Failed to reset the device.')
    # finally:
    try:
        debugSession.terminate()
        #debugServer.stop()
    except:
        logging.debug("DSLOG: Failed to terminate the debug session.")


        #This scrapes the id number for the usbreset command
    outstring = subprocess.check_output("uhubctl")
    
    outstring = outstring.decode("utf-8")
    outstring = outstring.split('\n')

    device_line = ''
    for line in outstring:
        #logging.debug(line)
        if 'hub' in str(line):
            split = str(line).split('hub')
            #logging.debug(split)
            final_split = split[1].split('[')
            #logging.debug(final_split)
            layer = final_split[0].replace(' ', '')

        if 'Texas' in str(line):
            device_line = str(line)
            # logging.debug(device_line)
            port_split = device_line.split('Port')
            # logging.debug(port_split)
            final_split = port_split[1].split(':')
            # logging.debug(final_split)
            port = final_split[0].replace(' ','')
            break

    logging.debug(f"DSLOG: USB Device: {layer} Port: {port}")
        
        # logging.debug('-----Resetting the Device-----')
    os.system(f'uhubctl -a off -l {layer} -p {port} -r 1000')
    # time.sleep(20)
    os.system(f'uhubctl -a on -l {layer} -p {port} -r 1000')
    # time.sleep(15)
    # os.system('uhubctl -a on  -l 3-1 -p 1')

    # try:
    #     debugSession.target.reset()
    # except:
    #     logging.debug('DSLOG: Failed to reset the device after power cycle.')

    # script = ScriptingEnvironment.instance()

    # script.traceBegin('FuzzerLog.xml', 'DefaultStylesheet.xsl')

    # # Set our 
    # script.setScriptTimeout(1500000000)

    # # Log everything
    # script.traceSetConsoleLevel(TraceLevel.INFO)
    # script.traceSetFileLevel(TraceLevel.INFO)
    # # try:
    # # Get the Debug Server and start a Debug Session
    try:
    #     debugServer = script.getServer('DebugServer.1')
    #     debugServer.setConfig('./board_configuration/USBSTK5515_BOARD.ccxml')
    #     #debugServer.setConfig('./board_configuration/USBSTK5515_SIM.ccxml')
        debugSession = debugServer.openSession('.*')
        debugSession.target.connect()

        debugSession.clock.enable()

        debugSession.memory.loadProgram('./DSPFuzz.out')
    except:
        #If something happens the board needs to be power cycled twice :(
        logging.debug('DSLOG: Power Cycling the board twice :(')
        reset_and_reload()
        return
    #debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    retVal = set_intial_breakpoints()
    if(retVal == -1):
        logging.debug('DSLOG: Failed to set intial breakpoints power cycling.')
        return

    # set_refresh_breakpoint()
    refresh_local_pool()
    

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
        reset_and_reload()



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
        Pulls coverage from our on board coverage map and stores it.
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
            # logging.debug(hex(cov))
            if ((x > 0) and (cov == 0)):
                logging.debug('DSLOG: Found the end of the coverage map.')
                break

        except(Exception):
            #Sleep for a time and try again.
            time.sleep(.05)
            cov = debugSession.memory.readData(1,coverage_list_address + x, 32)

        coverage_list.append(cov)
        
    return coverage_list

def _update_global_map(coverage_list,seed_id, isCrash) -> None:
    """ Updates the global coverage map for our SUT, performed in the back ground using a thread.
        
        @Arguments: coverage_list -> list of ints that represent coverage from a test run.
        @Return:    NONE
    """

    global results_dir, global_coverage_list, run_map_path

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    

    #Assocates bitmap with a coverage increasing input to see coverage areas.
    run_map_path = results_dir + 'list/coverage:id:' + str(seed_id)
    if isCrash:
        run_map_path = results_dir + 'crashes/crash:id:' + str(seed_id)

    map_path = results_dir + 'global_coverage.map'
    new_coverage = []

    _write_coverage(coverage_list, run_map_path, dt_string)

def _pull_statistics(isCrash):
    """Pulls total time and number of iterations performed and adds them to global statistics for the campaign.
    
        @Arguments: NONE
        @Return:    NONE
    """
    global start_time, iterations, board_increasing_cases, host_increasing_cases, last_time, thoughput, execution_time

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    logging.debug(f"DSLOG: Current time: {dt_string}")

    end_time = time.clock_gettime(time.CLOCK_REALTIME)
    
    it_address = debugSession.symbol.getAddress('g_iterations')
    #time_address = debugSession.symbol.getAddress('total_time')

    increasing_address = debugSession.symbol.getAddress('g_numInteresting')
    board_increasing_cases = debugSession.memory.readData(1, increasing_address ,16)

    logging.debug(f'DSLOG: Board has tracked this number of increasing test cases --> {board_increasing_cases}')
    logging.debug(f'DSLOG: Host has tracked this number of increasing test cases --> {host_increasing_cases}')


    #Read the number of iterations.
    try:
        itermetiate = debugSession.memory.readData(1, it_address ,16)
    except:
        iterations = 0
        return
    
    guess_iterations = iterations + (((end_time - last_time)/execution_time) * 2)  
    if (isCrash and (itermetiate >= guess_iterations)):
        #if there is a crash use timing statisitics to infer iterations since.
        logging.debug(str(thoughput) + ' ' + str(end_time - last_time))
        iterations = iterations + ((end_time - last_time)/execution_time)  
    else:
        try:
            iterations = debugSession.memory.readData(1, it_address ,16) + iterations
        except:
            pass
    if iterations == 0:
        return
    

    #Need to clear the number of iterations on the device so that we can track them properly...
    try:
        debugSession.memory.writeData(1, it_address, 0, 16)
    except:
        pass
    
    elapsed_time = end_time - start_time
    thoughput = elapsed_time/iterations
    last_time = end_time
    
    logging.debug(f'DSLOG: Total number of iterations: {str(iterations)}' )
    logging.debug(f'DSLOG: Average throughput time: {str(thoughput)}' )

# def _set_breakpoints():
#     crash_void_address = debugSession.symbol.getAddress('crash_void')
#     debugSession.breakpoint.add(crash_void_address , "Hardware")

#     lp_refresh_address = debugSession.symbol.getAddress('dequeue_seed')
#     lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address,  "Hardware")

#     coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
#     coverage_bubble_id = debugSession.breakpoint.add(coverage_bubble_address , "Hardware")


@log
def set_intial_breakpoints():
    """ Sets the intial breakpoints in our fuzzing program.
        @Arguments: NONE
        @Return:    NONE
    """

    global lp_refresh_id, crash_void_address, coverage_bubble_id, coverage_bubble_address, coverage_list_address, lp_refresh_address, lp_props
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

        logging.debug(f'Interrupt Enable Registers {hex(IER0)} {hex(IER1)} | Interrupt Flag Registers {hex(IFR0)} {hex(IFR1)} | Status Registers  {hex(ST0)} {hex(ST1)} {hex(ST2)} {hex(ST3)} | Program Counter {hex(PC)}')    
    except:
        logging.debug("DSLOG: Failed to read registers.")

    #Clears any stale breakpoints.
    try:
        debugSession.breakpoint.removeAll()
    except:
        logging.debug("DSLOG: Failed to remove stale breakpoints.")

    try:
        lp_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
        lp_refresh_address = debugSession.symbol.getAddress('dequeue_seed')
        lp_props.setString("Hardware Configuration.Type.Location", str(lp_refresh_address))
        lp_refresh_id = debugSession.breakpoint.add(lp_props)
        
        crash_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
        crash_void_address = debugSession.symbol.getAddress('crash_void')
        crash_props.setString("Hardware Configuration.Type.Location", str(crash_void_address))
        debugSession.breakpoint.add(crash_props)

        coverage_props = debugSession.breakpoint.createProperties(HARDWARE_ID)
        coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
        coverage_props.setString("Hardware Configuration.Type.Location", str(coverage_bubble_address))
        coverage_bubble_id = debugSession.breakpoint.add(coverage_props)

        #Find the coverage map address
        coverage_list_address = debugSession.symbol.getAddress('g_coverageMap')
    except:
        reset_and_reload()
        return -1


    
    logging.debug('DSLOG: Refresh breakpoints set.')
    debugSession.target.run()


    # try:
        

    #     crash_void_address = debugSession.symbol.getAddress('crash_void')
    #     debugSession.breakpoint.add(crash_void_address) 
        

    #     #Find the coverage map address
    #     coverage_list_address = debugSession.symbol.getAddress('g_coverageMap')

    #     #Adds a breakpoint in the setup to load a intial local pool
    #     lp_refresh_address = debugSession.symbol.getAddress('dequeue_seed')
    #     lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address, "Hardware")

    #     #Adds a breakpoint in the results handler if we have a coverage increasing input.
    #     coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
    #     coverage_bubble_id = debugSession.breakpoint.add(coverage_bubble_address , "Hardware")

    #     logging.debug('DSLOG: Refresh breakpoints set.')
    #     debugSession.target.run()
    # except Exception:
    #     logging.debug(Exception)
    #     logging.debug('DSLOG: DSP run failure resetting the board.')
    #     return -1

def calculate_timeout(global_pool_size, local_pool_size) -> int:

    if global_pool_size <= local_pool_size:
        #If the global pool is smaller or the same as the local pool it 'never' needs to be refreshed.
        timeout = 1200
    else:
        timeout = max(90, 1200 - (global_pool_size  * 15))

    return timeout

@log
def refresh_global_pool():

    global global_pool, global_pool_size, end_time, start_time, seed_dir

    #Seeds are number and managed by the fuzz engine all we have to do is read them.
    global_pool = os.listdir(seed_dir)
    #logging.debug(global_pool)
    global_pool_size = len(global_pool)
    logging.debug(f'DSLOG: We have this many seeds in the global pool --> {global_pool_size}')

    return global_pool_size

def select_random_seed() -> list:
    """Selects a random seed to be loaded

        @Arguments: None
        @Return: a seed
    """
    global local_pool

    rnd_num = random.randint(0, global_pool_size - 1)
    selected_seed = global_pool[rnd_num % (global_pool_size -1 )]
    #TODO: Maybe a better way to select seeds for the local pool

    while selected_seed in local_pool: 
        #get a unique random seed here...
        rnd_num = random.randint(0, global_pool_size - 1)
        selected_seed = global_pool[rnd_num % (global_pool_size -1 )]
    
    local_pool.append(selected_seed)
    with open(seed_dir + selected_seed, 'r') as fp:
        str_seed = fp.read()

    seed = [int(ele) for ele in str_seed.split()]

    return seed
def select_seed(num) -> list:
    """Selects a seed to be loaded based on number

        @Arguments: 
        @Return: A list of lines representing input to our DUT
    """

    selected_seed = global_pool[num]

    with open(seed_dir + selected_seed, 'r') as fp:
        str_seed = fp.read()

    seed = [int(ele) for ele in str_seed.split()]

    return seed


def _write_seed(corpus_address, seed):

    global seed_size, local_pool_size, local_pool

    seed_check = []

    written_seed_len = len(seed)
    #logging.debug(written_seed_len)

    isNotSame = True

    while(isNotSame):
        try:
            debugSession.memory.writeData(1, corpus_address, seed, 16)
        
            seed_check = debugSession.memory.readData(1, corpus_address, 16, written_seed_len, False)
            seed_check = [int(j)for j in seed_check]

            isNotSame = seed_check != seed
            isNotSame = False
            # if(isNotSame):
            #     logging.debug("DSLOG: Seed writting error trying again.")
        except:
            logging.debug("DSLOG: Failed to write seed.")


@log
def write_local_pool() -> None:
    """Refreshes the local pool on the DSP
        
        @Arguments: None
        @Return: None
    """
    
    global seed_size, local_pool_size, local_pool

    corpus_address = debugSession.symbol.getAddress('g_localPool')
    corpus_tracker_address = debugSession.symbol.getAddress('g_currentSeed')

   

    #Refresh the global pool incase there have been coverage increasing test cases added.
    num_seeds = refresh_global_pool()
    seed_check = []
    seeds_loaded = 0
    logging.debug('DSLOG: We have '+ str(num_seeds) + ' in the global pool.')

    #If the global pool only has less then the number of seeds to load then load them sequencially 
    if num_seeds <= local_pool_size:
        for x in range(0, num_seeds):
            
            seed = select_seed(x)
            _write_seed(corpus_address, seed)

            corpus_address = corpus_address + seed_size
            seeds_loaded += 1
            
            # debugSession.memory.writeData(1, corpus_address, seed, 16)
            
            # seed_check = debugSession.memory.readData(1, corpus_address, 16, seed_size, False)
            # logging.debug(type(seed_check[0]))
            # logging.debug(type(seed[0]))
            # seed_check = [int(j)for j in seed_check]
            # if seed_check != seed:
            #     logging.debug(seed_check)
            #     logging.debug(seed)
            #     logging.debug(f'DSLOG: Failure to load seed {x} propererly.')


            # corpus_address = corpus_address + seed_size
            # seeds_loaded += 1

        # #Make sure the corpus tracker is updated.
        # debugSession.memory.writeData(1, corpus_tracker_address, seeds_loaded, 16)
        
    
    elif num_seeds >= local_pool_size:
        for x in range(0, local_pool_size):
            seed = select_random_seed()

            _write_seed(corpus_address, seed)

            corpus_address = corpus_address + seed_size
            seeds_loaded += 1

            # logging.debug('Seed loaded --> ', seed)
            # debugSession.memory.writeData(1, corpus_address, seed, 16)
            # 
            # seed_check = debugSession.memory.readData(1, corpus_address, 16, written_seed_len, False)
            # logging.debug(type(seed_check[0]))
            # logging.debug(type(seed[0]))
            # seed_check = [int(j)for j in seed_check]
            # logging.debug(type(seed_check[0]))
            # if seed_check != seed:
                # logging.debug(seed_check)
                # logging.debug(seed)
                # logging.debug(f'DSLOG: Failure to load seed {x} propererly.')
                # exit(-1)

            # corpus_address = corpus_address + seed_size
            # seeds_loaded += 1
    try:
        debugSession.memory.writeData(1, corpus_tracker_address, seeds_loaded, 16)
    except:
        logging.debug("DSLOG: Failed to write seed tracker.")

    #TODO: Add more advanced seed selection here
    local_pool = [] #After everything is written set the tracking to be empty
    logging.debug('DSLOG: Local pool written')
    

def _pull_seed(seed_address, seed_id, dir, isCrash) -> None:
    """Can pull a seed from memory at a specific address on the DSP.
    
        @Arguments: seed_address -> address of where the seed starts.
                    seed_id -> id of the newly stored seed
                    dir -> directory to store it at.
        @Return: None
    """
    global seed_size
    # logging.debug(dir)
    # logging.debug(seed_id)
    test_seed = []
    #TODO: Add Check for empty seed spots?
    logging.debug('DSLOG: Obtained seed.')
    for x in range (0, seed_size):
        try:
            
            seed = str(debugSession.memory.readData(1, seed_address + x, 16))
            test_seed.append(seed)
        except(Exception):
            logging.debug('DSLOG: Error memory read error wait a second and try again.')
            time.sleep(.05)
            #seed = str(debugSession.memory.readData(1, seed_address + x, 16))
        if x == 0:
            if isCrash:
                with open(dir+str(seed_id), 'a+') as fp:
                    fp.write(seed)
            else:
                with open(dir+str(seed_id), 'w+') as fp:
                    fp.write(seed)
        else:
            with open(dir+str(seed_id), 'a+') as fp:
                fp.write('\n'+seed)
    # logging.debug(test_seed)

@log
def _pull_stage_cycles():
    try:
        mutation_amount_address = debugSession.symbol.getAddress('g_mutationDegression')
        mutation_amount = debugSession.memory.readData(1,mutation_amount_address, 16)
        mutation_amount = 100 // mutation_amount 

        current_mutation_address = debugSession.symbol.getAddress('g_currentMutation')
        current_mutation = debugSession.memory.readData(1,current_mutation_address, 16)
    except:
        logging.debug("DSLOG: Failed to read stage data.")
        mutation_amount = 0
        current_mutation = 0

    if(current_mutation == 0):
        logging.debug(f"DSLOG: effective mutaton: bitflip 1/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 1):
        logging.debug(f"DSLOG: effective mutaton: bitflip 2/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 2):
        logging.debug(f"DSLOG: effective mutaton: bitflip 4/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 3):
        logging.debug(f"DSLOG: effective mutaton: byteflip 1/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 4):
        logging.debug(f"DSLOG: effective mutaton: bitflip 2/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 5):
        logging.debug(f"DSLOG: effective mutaton: bitflip 4/1 |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 6):
        logging.debug(f"DSLOG: effective mutaton: arith-add |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 7):
        logging.debug(f"DSLOG: effective mutaton: arith-sub |Mutation Percentage: {mutation_amount}")
    elif(current_mutation == 8):
        logging.debug(f"DSLOG: effective mutaton: random |Mutation Percentage: {mutation_amount}")

@log
def current_seed_to_global_pool() -> None:
    """Pulls the current seed to the global pool this happens when there is a coverage increasing mutated input.
        
        @Arguments: None
        @Return: None
    """
    global global_pool_size, seed_dir, coverage_dict, timer_thread, run_map_path, coverage_list,address, current_seed_address, host_increasing_cases
    logging.debug(f"DSLOG: Seed dir in current_seed is : {seed_dir}")
    #Stop the local pool refresh until so we can interact with the board the board.
    timer_thread.cancel()

    logging.debug("DSLOG: Found coverage-increasing input.")
    host_increasing_cases = host_increasing_cases +1

    #Pull timing statistics here
    _pull_statistics(False)

    #Pull the stage cycles to determine what mutation pattern is effective
    _pull_stage_cycles()


    #Pull coverage map
    cov = _pull_coverage()
    _update_global_map(cov, global_pool_size + 1, isCrash=False)

    #Lets use that found coverage to UNinsturment our binary.
    test_dict = binary_tools.uninsturment(coverage_dict,cov)
    # if test_dict == None:
    #     #try reading the coverage_list again
    #     logging.debug("DSLOG: test_dict is empty.")
    #     _pull_seed(current_seed_address,global_pool_size,seed_dir,False)
    #     cov = _pull_coverage()
    #     test_dict = binary_tools.uninsturment(coverage_dict, cov)

    if test_dict != None:
        
        coverage_dict = test_dict
        global_pool_size = refresh_global_pool() + 1
        
        #Pull seed from the input buffer and store it in the global seed pool
        _pull_seed(current_seed_address, global_pool_size, seed_dir, False)
        write_local_pool()
        #Recalc the timeout with new global pool
        timeout = calculate_timeout(refresh_global_pool(), 15)
        timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
        timer_thread.start()

    # else:
    #     #Lets move the troubled seed somewhere else.
    #     logging.debug('DSLOG: Found a trouble seed')
    #     seed_head_address = debugSession.symbol.getAddress('g_seedHead')
    #     trouble_seed = debugSession.memory.readData(1, seed_head_address ,16)
    #     logging.debug('DSLOG: Trouble Seed: ',trouble_seed)
    #     files = os.listdir('./seeds/')
    #     logging.debug(files)
    #     files = [int(i) for i in files]
    #     logging.debug(files)
    #     files.sort()
    #     logging.debug(files)
    #     global_pool_size = global_pool_size - 1
    #     shutil.move('./seeds/'+str(files[trouble_seed]), './results/trouble_seeds/'+str(trouble_seed+1))
    #     #pull the input to check it later 
    #     _pull_seed(current_seed_address, global_pool_size, "./results/crashes/", True)
    #     reset_and_reload()
        # reload_binary()
    
def timeout():

    global global_pool_size
    cov = _pull_coverage()
    _update_global_map(cov, global_pool_size + 1, isCrash=False)

    #Lets use that found coverage to UNinsturment our binary.
    test_dict = binary_tools.uninsturment(coverage_dict,cov)
    

    


@log
def crash_reload() -> None:
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """
    global amount_of_crashes, start_time, timer_thread, coverage_dict, run_map_path, timer_thread, sanity_check, current_seed_address

    #Stop the local pool refresh until we can reload the board.
    if(sanity_check):
        sanity_check.cancel()
        sanity_check = None
    #crash_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)
    #logging.debug('Found Crash in '+ str(crash_time - start_time)+ ' ns')

    
    logging.debug("DSLOG: Found crash.")
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
        logging.debug(f'Interrupt Enable Registers {hex(IER0)} {hex(IER1)} | Interrupt Flag Registers {hex(IFR0)} {hex(IFR1)} | Status Registers  {hex(ST0)} {hex(ST1)} {hex(ST2)} {hex(ST3)} | Program Counter {hex(PC)}')
        
    except: 
        logging.debug("DSLOG: Failed to read status registers.")

    try:
        debugSession.breakpoint.removeAll()
    except:
        logging.debug("DSLOG: Failed to remove all breakpoints.")
    

    


    amount_of_crashes+=1

    #Pull timing statistics here
    _pull_statistics(True)

  
    now = datetime.now() 
    dt_string = now.strftime("%d_%m_%Y_%H_%M_%S")
    #Put the crashing input in the crashes directory.
    # current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer , 16)
    _pull_seed(current_seed_address, amount_of_crashes, results_dir+'crashes/' + dt_string, isCrash=True)

    # #Pull coverage map before loading
    #cov = _pull_coverage()
    #_update_global_map(cov, amount_of_crashes, isCrash=True )
   # new_coverage_dict = binary_tools.uninsturment(coverage_dict,cov)
    #uinsturment bin file as coverage is found.
    
    #coverage_dict = new_coverage_dict

    reset_and_reload()


@log
def refresh_local_pool():
    global timer_thread, lp_refresh_id
    timer_thread.cancel()
    _pull_statistics(False)
    write_local_pool()
    #Remove the breakpoint untill the next refresh.
    try:
        debugSession.breakpoint.remove(lp_refresh_id)
    except:
        logging.debug('DSLOG: Error refresh breakpoint can not be unset.')
    # debugSession.target.runAsynch()

    #Reschedule the timer.
    timeout = calculate_timeout(refresh_global_pool(), 15)

    timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    timer_thread.start()
            
@log
def device_listener() -> None:
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """

    global isRunning, coverage_bubble_address, crash_void_address, lp_refresh_address, debugSession, sanity_check, reload_timeout, first_execution, execution_time
    
    isRunning = False
    previous_pc = 0
    pc = 0
    start_time = 0
    end_time = 0
    isTiming = False

    if (first_execution):
        start_time = time.clock_gettime(time.CLOCK_REALTIME)
        debugSession.target.run()
        end_time = time.clock_gettime(time.CLOCK_REALTIME)
        execution_time = end_time - start_time
        logging.debug(f"DSLOG: Intial exeuction time: {execution_time}")
        first_execution = False
        isRunning = True


    while(1):    
        #Once the device is halted check to see what breakpoint was hit.
        if(reload_timeout):
            crash_reload()
            reload_timeout = False
            isRunning = False

        if not isRunning:
            try:
                logging.debug('DSLOG: You are in device_listner, attemping to run the target.')
                previous_pc = pc 
                pc = 0
                #debugSession.target.runAsynch()
                debugSession.target.run()
                isRunning = True
            except:
                logging.debug("DSLOG: Failed to run target.")
                crash_reload()
                isRunning = False
        
        if isRunning:
            try:
                pc = debugSession.expression.evaluate('PC')
                #print(pc)
            except:
                #pc = debugSession.expression.evaluate('PC')
                logging.debug("DSLOG: Unable to read PC counter going to try again.")
                crash_reload()
                isRunning = False

            if(pc ==  8388608):
                #There is accumulator overflow here and this device needs to be reset.
                crash_reload()
                isRunning = False
                continue

            if(pc == crash_void_address):
                #If there is crash reload the DSP program.
                crash_reload()
                isRunning = False
                continue

            if(pc == coverage_bubble_address):
                #If there is a covereage increasing input found bubble it up to the global pool.
                if (sanity_check):
                    sanity_check.cancel()
                    sanity_check = None
                current_seed_to_global_pool()
                isRunning = False
                continue

            if(pc == lp_refresh_address):
                if (sanity_check):
                    sanity_check.cancel()
                    sanity_check = None
                refresh_local_pool()
                isRunning = False
                continue

            if(pc == previous_pc and not isTiming):
                #Start timer
                #start_time = time.monotonic()
                time.sleep(2)
                isTiming = True
                previous_pc = pc
            elif(pc != previous_pc):
                isTiming = False
                previous_pc = pc
            elif((pc == previous_pc) and isTiming):
                logging.debug("DSLOG: Execution timeout")
                isRunning = False
                isTiming = False
                crash_reload()
            else:
                previous_pc = pc

            

        

def toggle_timeout():
    global reload_timeout

    logging.debug('DSLOG: Toggling Timeout.')
    reload_timeout = True




@log
def set_refresh_breakpoint() -> None:
    """Sets our corpusWaiting flag to true and waits till the DSP is ready to refresh the local pool.
        
        @Arguments: None
        @Return: None
    """

    global isRunning, timer_thread, lp_refresh_address, lp_refresh_id, timer_thread, sanity_check, lp_props, first_execution
    if(timer_thread):
        timer_thread.cancel()

    #Sets a breakpoint to refresh the pool.
    try:
        lp_refresh_id = debugSession.breakpoint.add(lp_props)
    except:
        logging.debug("DSLOG: Failed to set pool refresh breakpoint.")
        reset_and_reload()
        set_refresh_breakpoint()
        isRunning = False
        first_execution = False
        device_listener()
        
        

    #If we set the refresh breakpoint and it is not hit within a second which is a long time -> assume a crash.
    logging.debug("DSLOG: Starting sanity check.")
    sanity_check = threading.Timer(20, toggle_timeout)
    sanity_check.start()

    # Sleep for a second and wait for the fuzzer to finish its latest run.
    # time.sleep(0.05)

    # _pull_statistics()
    # refresh_local_pool()
    
    # #Remove the breakpoint untill the next refresh.
    # debugSession.breakpoint.remove(lp_refresh_id)
    # debugSession.target.runAsynch()

    # #Reschedule the timer.
    # timeout = calculate_timeout(refresh_global_pool(), 15)

    # timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    # timer_thread.start()

    
@log
def main():
    """Main entry point, intially sets up the debug server and handles arguments.
        
        @Arguments: None
        @Return: None
    """

    global sanity_check, asm_in_mem, lp_refresh_id, local_pool_size, seed_dir, results_dir, start_time, timer_thread, current_seed_address, seed_dir



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
    set_intial_breakpoints()
    
    # Get the address of the current seed. Only need to do this once.
    current_seed_pointer_address = debugSession.symbol.getAddress('g_inputBuffer')
    #logging.debug('DSLOG: Current seed address --> {current_seed_point}', current_seed_pointer_address)
    current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    #logging.debug('DSLOG: Current seed pointer -->', current_seed_address)
    write_local_pool()

    #Remove the breakpoint untill the next refresh.
    try:
        debugSession.breakpoint.remove(lp_refresh_id)
    except:
        logging.debug("DSLOG: Failed to remove pool refresh breakpoint.")
    

    start_time = time.clock_gettime(time.CLOCK_REALTIME)
    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    logging.debug(f"DSLOG: Time of start = {dt_string}")
    logging.debug("DSLOG: Finding coverage calls in binary")
    find_coverage_call()
    coverage_setup(bin_path, restart)

    
    #start the refresh thread
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    
    timer_thread.start()
    logging.debug("DSLOG: Starting the device listener.")
    device_listener()


if __name__ == "__main__":
    main()
