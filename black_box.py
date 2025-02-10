import binary_tools
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
    print('SetupError: Missing a enviorment variable, trying setting it via java_setup.sh and try again')
    exit(0)
# jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])
jpype.startJVM(classpath=[classpath1+':'+classpath2+':'+classpath3])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *


COVERAGE_SIZE = 200 #This is equal to the max number of blocks we can support tracing at once.
# SEED_SIZE = 256
SENQUENCIAL = 1
RANDOM = 2


global_coverage_map = [0] * COVERAGE_SIZE

coverage_dict = {}
seed_dir = ''
results_dir = ''
local_pool_size = 0
global_pool_size = 9
global_pool = [] #List of all seeds in the SEED_DIR of the users choosing.
local_pool = [] #What is currently loaded into the device ID only 
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
program_to_load = 'DSPFuzz.out'
seed_size = 128 #Size of current seed
amount_of_crashes = 0
start_time = 0
sanity_check = None


board_increasing_cases = 0
host_increasing_cases = 0

asm_in_mem = 0  #The asm signature of coverage function call

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
        print('DSLOG: Time taken for ' + func.__name__ + ' = ' + str(end_time-start_time))
        print('--------------------------------')
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

    coverage_dict = binary_tools.find_calls('./DSPFuzz.out', asm_in_mem, isRestart)

@log
def find_coverage_call():
    """
        Locates the asm instructions for a call to the coverage logging function.
        This only done once at the start to find what the call is.
    """
    global debugServer, debugSession, script, asm_in_mem
    
    sut_address_var = debugSession.symbol.getAddress('sut_start_address')
    sut_address = debugSession.memory.readData(1, sut_address_var, 32)
    if (sut_address % 2):
        first_part = debugSession.memory.readData(1, (sut_address//2), 32)
        second_part = debugSession.memory.readData(1, (sut_address//2)+1, 32)

        fp_hex = hex(first_part) 
        sp_hex = hex(second_part)
        print(fp_hex)
        print(sp_hex)

        result1 = fp_hex[7:]
        result2 = sp_hex[2:6]
        asm_in_mem = "0x"+result1+result2

        print(asm_in_mem)
    else:
        asm_in_mem = debugSession.memory.readData(1, (sut_address//2), 32)
        print(hex(asm_in_mem))

   #asm_in_mem =  1812025158
    print(hex(asm_in_mem))

def reset_and_reload():
    global debugServer, debugSession, script, timer_thread
    id_num = ''
    
    try:
        # debugServer.target.restart()
        debugSession.target.reset()
    except:
        print('DSLOG: Failed to reset target using the debug server.')
    finally:
        debugSession.terminate()
        debugServer.stop()



        #This scrapes the id number for the usbreset command
        # result = subprocess.getoutput('usbreset')
        # result_list = result.split()
        # for count, item in enumerate(result_list,0):
        #     if 'Texas' in item:
        #         id_num = result_list[count - 3]
        
        # result = subprocess.run(["uhubctl", "-a cycle -d 3 -l 3-2 -p 1"], shell=True) #stdout=subprocess.PIPE).stdout.decode('utf-8')
        print('-----Resetting the Device-----')
        os.system('uhubctl -a off  -l 3-1 -p 1')
    
        time.sleep(20)
        # os.system('uhubctl -a on -d 2 -l 3-2 -p 1')
        os.system('uhubctl -a on  -l 3-1 -p 1')
        time.sleep(5)

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
        
            debugSession.memory.loadProgram('DSPFuzz.out')
        except:
            #If something happens the board needs to be power cycled twice :(
            print('-----Power Cycling the board twice :(-----')
            reset_and_reload()
            return
        #debugSession.memory.loadProgram('DSPFuzz.out')

        #Set breakpoints again
        retVal = set_intial_breakpoints()
        if(retVal == -1):
            print('-----Failed to set intial breakpoints-----')
        # set_refresh_breakpoint()
        refresh_local_pool()

        #start the refresh thread
        # timeout = calculate_timeout(refresh_global_pool(), 15)
        # timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
        # timer_thread.start()
        



@log
def debug_server_setup():
    """ Sets up the varrious functions for the debug connection
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
        @Arguments: coverage_map_address -> address on the board of the coverage map 
                    size -> size of the coverage map currently being used on the board.
        @Return:    coverage_map -> a list of ints that represent coverage from a test run
    """
    global coverage_map_address
    coverage_map = []

    for x in range(0, COVERAGE_SIZE):
        #Pull the coverage map when we find new coverage
        try:
            cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
            if ((x > 0) and (cov == 0)):
                print('DSLOG: Found the end of the coverage map.')
                break
                # time.sleep(.05)
                # cov = debugSession.memory.readWord(1,coverage_map_address + x)
                # while (x == map_loc) and (cov == 0):
                #     print('DSERROR: Trying again')
                #     cov = debugSession.memory.readWord(1,coverage_map_address + x)

                #raise Exception('DSERROR: Covarage Map failed to be read properly... trying again.')

        except(Exception):
            #Sleep for a time and try again.
            time.sleep(.05)
            cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
        # print(cov)
    #Clearing the coverage map is done by the DSP side Fuzzer.
        #print(f"{cov:016b}", end=' ')
        coverage_map.append(cov)
        
    # for x in range(0, COVERAGE_SIZE):
    #     #clear the coverage map when we find new coverage 
    #     try:
    #         debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
    #     except(Exception):
    #         print('DSERROR: Failed to writting memory.. sleeping and trying again.')
    #         time.sleep(.05)
    #         debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
    # print('')
    # print(coverage_map)
    return coverage_map

def _update_global_map(coverage_map,seed_id, isCrash) -> None:
    """ Updates the global coverage map for our SUT, performed in the back ground using a thread.
        
        @Arguments: coverage_map -> list of ints that represent coverage from a test run.
        @Return:    NONE
    """

    global results_dir, global_coverage_map, run_map_path

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    

    #Assocates bitmap with a coverage increasing input to see coverage areas.
    run_map_path = results_dir + 'bitmaps/coverage:id:' + str(seed_id)
    if isCrash:
        run_map_path = results_dir + 'bitmaps/crash:id:' + str(seed_id)

    map_path = results_dir + 'global_coverage.map'
    new_coverage = []

    # #Calculate the new map
    # for x in range(0, COVERAGE_SIZE):
    #     new_coverage.append(coverage_map[x] | global_coverage_map[x])

    # global_coverage_map = new_coverage
    
    # _write_coverage(new_coverage, map_path)
    _write_coverage(coverage_map, run_map_path, dt_string)

def _pull_statistics():
    """Pulls total time and number of iterations performed and adds them to global statistics for the campaign.
    
        @Arguments: NONE
        @Return:    NONE
    """
    global start_time, iterations, board_increasing_cases, host_increasing_cases

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print("Current time =", dt_string)

    end_time = time.clock_gettime(time.CLOCK_REALTIME)
    it_address = debugSession.symbol.getAddress('iterations')
    #time_address = debugSession.symbol.getAddress('total_time')

    increasing_address = debugSession.symbol.getAddress('intersting_cases')
    board_increasing_cases = debugSession.memory.readData(1, increasing_address ,16)

    print('Board has tracked this number of increasing test cases --> ',board_increasing_cases)
    print('Host has tracked this number of increasing test cases --> ',host_increasing_cases)


    #Read the number of iterations.
    iterations = debugSession.memory.readData(1, it_address ,16) + iterations
    if iterations == 0:
        return
    #total_testcase_time = float(debugSession.memory.readData(1, time_address ,32)/ 100000000.0) + total_testcase_time

    #Need to clear the number of iterations on the device so that we can track them properly...
    try:
        debugSession.memory.writeData(1, it_address, 0, 16)
    except:
        pass
    #debugSession.memory.writeData(1,time_address, 0, 32)


    elapsed_time = end_time - start_time
    print('DSLOG: Total number of iterations: ' + str(iterations))
    #print('DSLOG: Total time for test cases: '+ str(total_testcase_time))
    print('DSLOG: Average throughput time: ' + str(elapsed_time/iterations))


@log
def set_intial_breakpoints():
    """ Sets the intial breakpoints in our fuzzing program.
        @Arguments: NONE
        @Return:    NONE
    """

    global lp_refresh_id, crash_void_address, coverage_bubble_id, coverage_bubble_address, lp_refresh_address, coverage_map_address
    

    #Adds a breakpoint at the void
    try:
        crash_void_address = debugSession.symbol.getAddress('crash_void')
        debugSession.breakpoint.add(crash_void_address) 


        #Find the coverage map address
        coverage_map_address = debugSession.symbol.getAddress('coverage_map')

        #Adds a breakpoint in the setup to load a intial local pool
        # setup_pool_id = debugSession.breakpoint.add('setupLocalPool')
        # setup_pool_address = 258479
        # setup_pool_id = debugSession.breakpoint.add(setup_pool_address)
        lp_refresh_address = debugSession.symbol.getAddress('dequeue_seed')
        lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address)
        # print(lp_refresh_id)


        #Adds a breakpoint in the results handler if we have a coverage increasing input.
        coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
        coverage_bubble_id = debugSession.breakpoint.add(coverage_bubble_address)

        print('-----Refresh Breakpoints Set------')
        debugSession.target.run()
    except:
        print('------DSP run failure resetting the board...-------')
        reset_and_reload()
        return -1

def calculate_timeout(global_pool_size, local_pool_size) -> int:

    if global_pool_size <= local_pool_size:
        #If the global pool is smaller or the same as the local pool it 'never' needs to be refreshed.
        
        
        # timeout = 3600
        timeout = 1200
        # timeout = 60
    else:
        timeout = max(90, 1200 - (global_pool_size  * 15))


    return timeout

@log
def refresh_global_pool():

    global global_pool, global_pool_size, end_time, start_time, seed_dir

    #Seeds are number and managed by the fuzz engine all we have to do is read them.
    global_pool = os.listdir(seed_dir)
    print(global_pool)
    global_pool_size = len(global_pool)
    print('We have this many seeds in the global pool --> ', global_pool_size)

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
    # print(seed)
    return seed

@log
def write_local_pool() -> None:
    """Refreshes the local pool on the DSP
        
        @Arguments: None
        @Return: None
    """
    
    global seed_size, local_pool_size, local_pool

    corpus_address = debugSession.symbol.getAddress('local_pool')
    corpus_tracker_address = debugSession.symbol.getAddress('current_seed_num')

   

    #Refresh the global pool incase there have been coverage increasing test cases added.
    num_seeds = refresh_global_pool()
    seeds_loaded = num_seeds % local_pool_size + 1
    print('DSLOG: We have '+ str(num_seeds) + ' in the global pool.')
    num_seeds = 1 #Only load one seed at a time.

    #If the global pool only has less then the number of seeds to load then load them sequencially 
    if num_seeds <= local_pool_size:
        for x in range(0, num_seeds):
            #print(x)
            seed = select_seed(x)
            debugSession.memory.writeData(1, corpus_address, seed, 16)
            corpus_address = corpus_address + seed_size

        #Make sure the corpus tracker is updated.
        # debugSession.memory.writeData(1, corpus_tracker_address, 0, 16)
        debugSession.memory.writeData(1, corpus_tracker_address, seeds_loaded, 16)
        
    
    elif num_seeds >= local_pool_size:
        for x in range(0, local_pool_size):
            seed = select_random_seed()
            # print('Seed loaded --> ', seed)
            debugSession.memory.writeData(1, corpus_address, seed, 16)
            # test_corpus_address = corpus_address
            # for x in range(0, seed_size):
            #     test = debugSession.memory.readData(1, test_corpus_address, 16)
            #     print(test, end='')
            #     print(', ', end='')
            #     test_corpus_address = test_corpus_address + 1
            corpus_address = corpus_address + seed_size
        debugSession.memory.writeData(1, corpus_tracker_address, seeds_loaded, 16)

    #TODO: Add more advanced seed selection here
    local_pool = [] #After everything is written set the tracking to be empty
    print('-----Local Pool Written-----')
    #Continue fuzzing execution.
    #debugSession.target.runAsynch()

def _pull_seed(seed_address, seed_id, dir, isCrash) -> None:
    """Can pull a seed from memory at a specific address on the DSP.
    
        @Arguments: seed_address -> address of where the seed starts.
                    seed_id -> id of the newly stored seed
                    dir -> directory to store it at.
        @Return: None
    """
    global seed_size
    print(dir)
    print(seed_id)
    test_seed = []
    #TODO: Add Check for empty seed spots?
    print('-----Obtained Seed------')
    for x in range (0, seed_size):
        try:
            
            seed = str(debugSession.memory.readData(1, seed_address + x, 16))
            test_seed.append(seed)
        except(Exception):
            print('ERROR: Memory read error wait a second and try again.')
            time.sleep(.05)
            seed = str(debugSession.memory.readData(1, seed_address + x, 16))
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
    print(test_seed)

@log
def _pull_stage_cycles():
    stage_cycle_address = debugSession.symbol.getAddress('stage_cycles')
    stage_cycles = debugSession.memory.readData(1, stage_cycle_address, 16)

    mutation_amount_address = debugSession.symbol.getAddress('mutation_degression')
    mutation_amount = debugSession.memory.readData(1,mutation_amount_address, 16)
    mutation_amount = 100 // mutation_amount 

    if(stage_cycles < 2):
        print("Effective Mutaton: bitflip 1/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 4):
        print("Effective Mutaton: bitflip 2/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 6):
        print("Effective Mutaton: bitflip 4/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 8):
        print("Effective Mutaton: byteflip 1/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 10):
        print("Effective Mutaton: bitflip 2/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 12):
        print("Effective Mutaton: bitflip 4/1 |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 48):
        print("Effective Mutaton: arith-add |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles < 48):
        print("Effective Mutaton: arith-sub |Mutation Percentage: ",mutation_amount)
    elif(stage_cycles > 47):
        print("Effective Mutation: random |Mutation Percentage: ",mutation_amount)

@log
def current_seed_to_global_pool() -> None:
    """Pulls the current seed to the global pool this happens when there is a coverage increasing mutated input.
        
        @Arguments: None
        @Return: None
    """
    global global_pool_size, seed_dir, coverage_dict, timer_thread, run_map_path, coverage_map,address, current_seed_address, host_increasing_cases
    print("Seed dir in current_seed is :",seed_dir)
    #Stop the local pool refresh until so we can interact with the board the board.
    timer_thread.cancel()

    print("-------Found coverage-increasing input-------")
    host_increasing_cases = host_increasing_cases +1

    #Pull timing statistics here
    _pull_statistics()

    # #Get the address of the current seed.
    # current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    # print('-----Current Seed Address -->', current_seed_pointer_address)
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    # print('-----Current Seed Pointer -->', current_seed_address)
    # # current_seed_address = debugSession.memory.readData(1, current_seed_pointer , 16)
    # # print('-----Current Seed Address ---> ',current_seed_address)

    #Pull the stage cycles to determine what mutation pattern is effective
    _pull_stage_cycles()


    #Pull coverage map
    cov = _pull_coverage()
    # if(cov[0] == 65535):
    #     reset_and_reload()
    #     return
    _update_global_map(cov, global_pool_size + 1, isCrash=False)

    #Lets use that found coverage to UNinsturment our binary.
    test_dict = binary_tools.uninsturment(coverage_dict,cov)
    if test_dict == None:
        #try reading the coverage_map again
        print("-----test_dict is none-----")
        _pull_seed(current_seed_address,global_pool_size,"/home/santiago/Research/DSPFuzz/",False)
        cov = _pull_coverage()
        test_dict = binary_tools.uninsturment(coverage_dict, cov)

    if test_dict != None:
        new_coverage_dict = test_dict
        coverage_dict = new_coverage_dict
        global_pool_size = refresh_global_pool() + 1
        
        #Pull seed from the input buffer and store it in the global seed pool
        _pull_seed(current_seed_address, global_pool_size, seed_dir, False)
        write_local_pool()
        #Recalc the timeout with new global pool
        timeout = calculate_timeout(refresh_global_pool(), 15)
        timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
        timer_thread.start()

    else:
        #Lets move the troubled seed somewhere else.
        print('-----Found a trouble seed-----')
        seed_head_address = debugSession.symbol.getAddress('seed_head')
        trouble_seed = debugSession.memory.readData(1, seed_head_address ,16)
        print('-----Trouble Seed = ',trouble_seed)
        files = os.listdir('./seeds/')
        print(files)
        files = [int(i) for i in files]
        print(files)
        files.sort()
        print(files)
        global_pool_size = global_pool_size - 1
        shutil.move('./seeds/'+str(files[trouble_seed]), './results/trouble_seeds/'+str(trouble_seed+1))
        #pull the input to check it later 
        _pull_seed(current_seed_address, global_pool_size, "./results/crashes/", True)
        reset_and_reload()
        # reload_binary()
    

    


@log
def crash_reload() -> None:
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """
    global amount_of_crashes, start_time, timer_thread, coverage_dict, run_map_path, timer_thread, sanity_check, current_seed_address

    if(sanity_check):
        sanity_check.cancel()
        sanity_check = None
    #crash_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)
    #print('Found Crash in '+ str(crash_time - start_time)+ ' ns')

    #Stop the local pool refresh until we can reload the board.

    print("-----Found crash-----")

    amount_of_crashes+=1

    #Pull timing statistics here
    _pull_statistics()

  
    now = datetime.now()
    dt_string = now.strftime("%d_%m_%Y_%H_%M_%S")
    #Put the crashing input in the crashes directory.
    # current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer , 16)
    _pull_seed(current_seed_address, amount_of_crashes, results_dir+'crashes/' + dt_string, isCrash=True)

    # #Pull coverage map before loading
    cov = _pull_coverage()
    #_update_global_map(cov, amount_of_crashes, isCrash=True )
    new_coverage_dict = binary_tools.uninsturment(coverage_dict,cov)
    #uinsturment bin file as coverage is found.
    
    coverage_dict = new_coverage_dict

    reset_and_reload()

    #Reset the target
    # logging.info('Reloading target after crash')
    # debugSession.target.reset()

    
    
    #Load the Fuzzer back onto the DSP
    # debugSession.memory.loadProgram('DSPFuzz.out')
    #debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    # set_intial_breakpoints()

    # #Breakpoint is set ready for a seed refresh
    # logging.info('Running target program.')
    
    # refresh_local_pool()

    # #start the refresh thread
    # timeout = calculate_timeout(refresh_global_pool(), 15)
    # timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    # timer_thread.start()

@log
def refresh_local_pool():
    global timer_thread, lp_refresh_id
    timer_thread.cancel()
    _pull_statistics()
    write_local_pool()
    # #Remove the breakpoint untill the next refresh.
    # try:
    #     debugSession.breakpoint.remove(lp_refresh_id )
    # except:
    #     print('DSERROR: Breakpoint can not be unset.')
    # debugSession.target.runAsynch()

    #Reschedule the timer.
    # timeout = calculate_timeout(refresh_global_pool(), 15)

    # timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    # timer_thread.start()
            
@log
def device_listener() -> None:
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """

    global coverage_bubble_address, crash_void_address, lp_refresh_address, debugSession, sanity_check
    
    
    while(1):    
        #Once the device is halted check to see what breakpoint was hit.
        # debugSession.target.waitForHalt()
        try:
            debugSession.target.run()
        except:
            crash_reload()
        if (sanity_check):
            sanity_check.cancel()
            sanity_check = None
        try:
            pc = debugSession.expression.evaluate('PC')
        except:
            pc = debugSession.expression.evaluate('PC')
        if(pc ==  8388608):
            #There is accumulator overflow here and this device needs to be reset.
            crash_reload()

        if(pc == crash_void_address):
            #If there is crash reload the DSP program.
            crash_reload()

        if(pc == coverage_bubble_address):
            #If there is a covereage increasing input found bubble it up to the global pool.
            current_seed_to_global_pool()

        if(pc == lp_refresh_address):
            refresh_local_pool()


    
@log
def set_refresh_breakpoint() -> None:
    """Sets our corpusWaiting flag to true and waits till the DSP is ready to refresh the local pool.
        
        @Arguments: None
        @Return: None
    """

    global timer_thread, lp_refresh_address, lp_refresh_id, timer_thread, sanity_check
    if(timer_thread):
        timer_thread.cancel()

    #Sets a breakpoint to refresh the pool.
    # lp_refresh_id = debugSession.breakpoint.add('main_harness_loop + 0x15')
    lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address)
    print(lp_refresh_id)

    #If we set the refresh breakpoint and it is not hit within a second which is a long time -> assume a crash.
    print("-----Starting Sanity Check-----")
    sanity_check = threading.Timer(10, crash_reload)
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

    global asm_in_mem, lp_refresh_id, local_pool_size, seed_dir, results_dir, start_time, timer_thread, current_seed_address, seed_dir



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
    current_seed_pointer_address = debugSession.symbol.getAddress('current_input')
    print('-----Current Seed Address -->', current_seed_pointer_address)
    current_seed_address = debugSession.memory.readData(1, current_seed_pointer_address , 32)
    print('-----Current Seed Pointer -->', current_seed_address)
    write_local_pool()

    
    # current_seed_address = debugSession.memory.readData(1, current_seed_pointer , 16)
    # print('-----Current Seed Address ---> ',current_seed_address)

    


    #Remove the breakpoint untill the next refresh.
    # debugSession.breakpoint.remove(lp_refresh_id)
    
    #debugSession.target.runAsynch()


    start_time = time.clock_gettime(time.CLOCK_REALTIME)
    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print("Time of start =", dt_string)
    print("------Finding Coverage Calls in Binary------")
    find_coverage_call()
    coverage_setup(bin_path, restart)

    
    #start the refresh thread
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, set_refresh_breakpoint)
    timer_thread.start()
    print("------Starting the Device Listener------")
    device_listener()


if __name__ == "__main__":
    main()
