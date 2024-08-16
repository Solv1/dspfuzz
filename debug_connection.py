import binary_tools
import shutil
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
jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *


COVERAGE_SIZE = 1024
SEED_SIZE = 256
SENQUENCIAL = 1
RANDOM = 2


global_coverage_map = [0] * COVERAGE_SIZE

coverage_dict = {}
seed_dir = ''
results_dir = ''
local_pool_size = 0
global_pool_size = 0
global_pool = [] #List of all seeds in the SEED_DIR of the users choosing.
local_pool = [] #What is currently loaded into the device ID only 
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
program_to_load = 'DSPFuzz.out'
seed_size = 256 #Size of current seed
amount_of_crashes = 0
start_time = 0
end_time = 0

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


    return parser.parse_args()

def coverage_setup(bin_path):
    global coverage_dict

    coverage_dict = binary_tools.find_calls(bin_path)
    
    shutil.copyfile(bin_path, './DSPFuzz.out')

@log
def debug_server_setup():
    """ Sets up the varrious functions for the debug connection
    """

    global debugServer, debugSession, script

    script = ScriptingEnvironment.instance()

    script.traceBegin('FuzzerLog.xml', 'DefaultStylesheet.xsl')

    # Set our TimeOut
    script.setScriptTimeout(1500000000)

    # Log everything
    script.traceSetConsoleLevel(TraceLevel.INFO)
    script.traceSetFileLevel(TraceLevel.INFO)

    # Get the Debug Server and start a Debug Session
    debugServer = script.getServer('DebugServer.1')
    debugServer.setConfig('./Board_Configuation/USBSTK5515_BOARD.ccxml')
    #debugServer.setConfig('./Board_Configuation/USBSTK5515_SIM.ccxml')
    debugSession = debugServer.openSession('.*')
    debugSession.target.connect()
    debugSession.clock.enable()

    try:
        debugSession.memory.loadProgram(program_to_load)
    except:
        print("Error: failed to load program please check if current location is valid.")
        exit(-1)

def _write_coverage(coverage, path) -> None:
    """
        Writes coverage to coverage.map file
        @Arguments: coverage -> list of ints that represent hashed addresses of the SUT 
                    path -> path to store the coverage map
        @Return:    None
    """

    #TODO: Associate the seed input or crash with a specific bitmap.
    with open(path, 'w') as fp: 
        for x in range(0,len(coverage)):
                #if (x % 4) == 0:
                    #fp.write('\n')
                fp.write(("{0:016b}".format(coverage[x])[::-1]))

def reset_target():
    global debugServer, debugSession, script

    debugSession.target.reset()
    debugSession.terminate()
    debugServer.stop()

    # Get the Debug Server and start a Debug Session
    debugServer = script.getServer('DebugServer.1')
    debugServer.setConfig('./Board_Configuation/USBSTK5515_BOARD.ccxml')
    #debugServer.setConfig('./Board_Configuation/USBSTK5515_SIM.ccxml')
    debugSession = debugServer.openSession('.*')
    debugSession.target.connect()
    debugSession.clock.enable()
    #Load the Fuzzer back onto the DSP
    debugSession.memory.loadProgram('DSPFuzz.out')
    #debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    set_intial_breakpoints()

    #Breakpoint is set ready for a seed refresh
    logging.info('Running target program.')
    
    refresh_local_pool()

    #start the refresh thread
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, refresh_interrupt)
    timer_thread.start()


def _pull_coverage() -> list:
    """
        Pulls coverage from our on board coverage map and stores it.
        @Arguments: coverage_map_address -> address on the board of the coverage map 
                    size -> size of the coverage map currently being used on the board.
        @Return:    coverage_map -> a list of ints that represent coverage from a test run
    """
    global coverage_map_address
    coverage_map = []
    map_loc_address = debugSession.symbol.getAddress('map_postion')
    map_loc = debugSession.memory.readData(1,  map_loc_address, 16)
    print(map_loc)

    for x in range(0, COVERAGE_SIZE):

        #Pull the coverage map when we find new coverage
        try:
            # cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
            cov = debugSession.memory.readWord(1,coverage_map_address + x)
            if ((x == map_loc) and (cov == 0)):
                print('DSERROR: Covarage Map failed to be read properly... resetting the board.')
                reset_target()
                return -1
                # time.sleep(.05)
                # cov = debugSession.memory.readWord(1,coverage_map_address + x)
                # while (x == map_loc) and (cov == 0):
                #     print('DSERROR: Trying again')
                #     cov = debugSession.memory.readWord(1,coverage_map_address + x)

                #raise Exception('DSERROR: Covarage Map failed to be read properly... trying again.')

        except(Exception):
            #Sleep for a time and try again.
            time.sleep(.05)
            cov = debugSession.memory.readWord(1,coverage_map_address + x)
            # cov = debugSession.memory.readData(1,coverage_map_address + x, 16)
        print(cov, end='')
        
        #print(f"{cov:016b}", end=' ')
        coverage_map.append(cov)

    for x in range(0, COVERAGE_SIZE):
        #clear the coverage map when we find new coverage 
        try:
            debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
        except(Exception):
            print('DSERROR: Failed to writting memory.. sleeping and trying again.')
            time.sleep(.05)
            debugSession.memory.writeData(1, coverage_map_address + x, 0, 16)
    print('')
    return coverage_map

def _update_global_map(coverage_map,seed_id, isCrash) -> None:
    """ Updates the global coverage map for our SUT, performed in the back ground using a thread.
        
        @Arguments: coverage_map -> list of ints that represent coverage from a test run.
        @Return:    NONE
    """

    global results_dir, global_coverage_map, run_map_path

    #Assocates bitmap with a coverage increasing input to see coverage areas.
    run_map_path = results_dir + 'bitmaps/coverage:id:' + str(seed_id) 
    if isCrash:
        run_map_path = results_dir + 'bitmaps/crash:id:' + str(seed_id) 

    map_path = results_dir + 'global_coverage.map'
    new_coverage = []

    #Calculate the new map
    for x in range(0, COVERAGE_SIZE):
        new_coverage.append(coverage_map[x] | global_coverage_map[x])

    global_coverage_map = new_coverage
    
    _write_coverage(new_coverage, map_path)
    _write_coverage(coverage_map, run_map_path)

def _pull_statistics():
    """Pulls total time and number of iterations performed and adds them to global statistics for the campaign.
    
        @Arguments: NONE
        @Return:    NONE
    """
    global start_time, iterations

    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print("Current time =", dt_string)

    end_time = time.clock_gettime(time.CLOCK_REALTIME)
    it_address = debugSession.symbol.getAddress('iterations')
    #time_address = debugSession.symbol.getAddress('total_time')

    #Read the number of iterations.
    iterations = debugSession.memory.readData(1, it_address ,16) + iterations
    if iterations == 0:
        return
    #total_testcase_time = float(debugSession.memory.readData(1, time_address ,32)/ 100000000.0) + total_testcase_time

    #Need to clear the number of iterations on the device so that we can track them properly...
    debugSession.memory.writeData(1, it_address, 0, 16)
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


    #Adds a breakpoint in the results handler if we have a coverage increasing input.
    coverage_bubble_address = debugSession.symbol.getAddress('bubble_coverage')
    coverage_bubble_id = debugSession.breakpoint.add(coverage_bubble_address)
    debugSession.target.runAsynch()

def calculate_timeout(global_pool_size, local_pool_size) -> int:

    if global_pool_size <= local_pool_size:
        #If the global pool is smaller or the same as the local pool it 'never' needs to be refreshed.
        timeout = 600
    else:
        timeout = max(90, 1200 - (global_pool_size  * 15))


    return timeout

@log
def refresh_global_pool():

    global global_pool, global_pool_size, end_time, start_time

    #Seeds are number and managed by the fuzz engine all we have to do is read them.
    global_pool = os.listdir(seed_dir)
    #print(global_pool)
    global_pool_size = len(global_pool)
    #print(global_pool_size)

    return global_pool_size

def select_random_seed() -> list:
    """Selects a random seed to be loaded

        @Arguments: None
        @Return: a seed
    """
    #TODO: Maybe a better way to select seeds for the local pool
    rnd_num = random.randint(0, global_pool_size - 1)

    selected_seed = global_pool[rnd_num % (global_pool_size -1 )]

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

@log
def refresh_local_pool() -> None:
    """Refreshes the local pool on the DSP
        
        @Arguments: None
        @Return: None
    """
    
    global seed_size

    corpus_address = debugSession.symbol.getAddress('local_pool')
    corpus_tracker_address = debugSession.symbol.getAddress('current_seed_num')

   

    #Refresh the global pool incase there have been coverage increasing test cases added.
    num_seeds = refresh_global_pool()
    #print(num_seeds)

    #If the global pool only has less then the number of seeds to load then load them sequencially 
    if num_seeds < local_pool_size:
        for x in range(0, num_seeds):
            #print(x)
            seed = select_seed(x)
            debugSession.memory.writeData(1, corpus_address, seed, 16)
            corpus_address = corpus_address + seed_size

        #Make sure the corpus tracker is updated.
        debugSession.memory.writeData(1, corpus_tracker_address, 0, 16)
        debugSession.memory.writeData(1, corpus_tracker_address, num_seeds, 16)
        
    
    elif num_seeds >= local_pool_size:
        for x in range(0, local_pool_size):
            seed = select_random_seed()
            debugSession.memory.writeData(1, corpus_address, seed, 16)
            
            corpus_address = corpus_address + seed_size

        #Make sure the corpus tracker is updated.
        debugSession.memory.writeData(1, corpus_tracker_address, 0, 16)
        debugSession.memory.writeData(1, corpus_tracker_address, local_pool_size, 16)


    #Continue fuzzing execution.
    debugSession.target.runAsynch()

def _pull_seed(seed_address, seed_id, dir) -> None:
    """Can pull a seed from memory at a specific address on the DSP.
    
        @Arguments: seed_address -> address of where the seed starts.
                    seed_id -> id of the newly stored seed
                    dir -> directory to store it at.
        @Return: None
    """
    global seed_size

    #TODO: Add Check for empty seed spots?
    for x in range (0, seed_size):
        try:
            seed = str(debugSession.memory.readData(1, seed_address + x, 16))
        except(Exception):
            print('ERROR: Memory read error wait a second and try again.')
            time.sleep(.05)
            seed = str(debugSession.memory.readData(1, seed_address + x, 16))
        if x == 0:
            with open(dir+str(seed_id), 'w+') as fp:
                fp.write(seed)
        else:
            with open(dir+str(seed_id), 'a+') as fp:
                fp.write('\n'+seed)



@log
def current_seed_to_global_pool() -> None:
    """Pulls the current seed to the global pool this happens when there is a coverage increasing mutated input.
        
        @Arguments: None
        @Return: None
    """
    global global_pool_size, seed_dir, coverage_dict, timer_thread, run_map_path, coverage_map,address

    #Stop the local pool refresh until so we can interact with the board the board.
    timer_thread.cancel()
    

    print("Found coverage-increasing input:")
    #Pull timing statistics here
    _pull_statistics()

    #Get the address of the current seed.
    current_seed_address = debugSession.symbol.getAddress('current_input')

    #Pull coverage map
    
    cov = _pull_coverage()
    if cov == -1:
        print('DSERROR: Un winding from coverage map read failure.')
        return
    _update_global_map(cov, global_pool_size + 1, isCrash=False)

    #Lets use that found coverage to UNinsturment our binary.
    new_coverage_dict = binary_tools.uninsturment(coverage_dict,run_map_path)
    if new_coverage_dict:
        coverage_dict = new_coverage_dict

        
        global_pool_size = refresh_global_pool() + 1
        

        #Pull seed from the input buffer and store it in the global seed pool
        _pull_seed(current_seed_address, global_pool_size, seed_dir)

    else:
        print('DSERROR:Coverage map returned empty from the device.')
        #pull the input to check it later 
        _pull_seed(current_seed_address, global_pool_size, "./results/bugs/")
        # #If the coverage map reutrns empty we can assume the device is stalled and needs to be reset.
        # reload_binary()


    debugSession.target.runAsynch()

    #Recalc the timeout with new global pool
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, refresh_interrupt)
    timer_thread.start()


@log
def crash_reload() -> None:
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """
    global amount_of_crashes, start_time, timer_thread, coverage_dict, run_map_path

    #crash_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)
    #print('Found Crash in '+ str(crash_time - start_time)+ ' ns')

    #Stop the local pool refresh until we can reload the board.
    timer_thread.cancel()

    print("Found crash:")

    amount_of_crashes+=1

    #Pull timing statistics here
    _pull_statistics()

    #Put the crashing input in the crashes directory.
    current_seed_address = debugSession.symbol.getAddress('current_input')
    _pull_seed(current_seed_address, amount_of_crashes, results_dir+'crashes/')

    #Pull coverage map before loading
    coverage_map_address = debugSession.symbol.getAddress('coverage_map')
    cov = _pull_coverage()
    _update_global_map(cov, amount_of_crashes, crash=True )

    #Reset the target
    logging.info('Reloading target after crash')
    debugSession.target.reset()

    #uinsturment bin file as coverage is found.
    new_coverage_dict = binary_tools.uninsturment(coverage_dict, run_map_path)
    coverage_dict = new_coverage_dict
    
    #Load the Fuzzer back onto the DSP
    debugSession.memory.loadProgram('DSPFuzz.out')
    #debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    set_intial_breakpoints()

    #Breakpoint is set ready for a seed refresh
    logging.info('Running target program.')
    
    refresh_local_pool()

    #start the refresh thread
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, refresh_interrupt)
    timer_thread.start()

    
            
@log
def device_listener() -> None:
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """

    global coverage_bubble_address, crash_void_address

    
    while(1):    
        #Poll the PC to check for both errors and coverage bubbling
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

    
@log
def refresh_interrupt() -> None:
    """Sets our corpusWaiting flag to true and waits till the DSP is ready to refresh the local pool.
        
        @Arguments: None
        @Return: None
    """

    global timer_thread, lp_refresh_address

    #Sets a breakpoint to refresh the pool.
    # lp_refresh_id = debugSession.breakpoint.add('main_harness_loop + 0x15')
    lp_refresh_id = debugSession.breakpoint.add(lp_refresh_address)
    #print(lp_refresh_id)

    #Sleep for a second and wait for the fuzzer to finish its latest run.
    time.sleep(0.05)

    _pull_statistics()
    refresh_local_pool()
    
    #Remove the breakpoint untill the next refresh.
    debugSession.breakpoint.remove(lp_refresh_id)
    debugSession.target.runAsynch()

    #Reschedule the timer.
    timeout = calculate_timeout(refresh_global_pool(), 15)

    timer_thread = threading.Timer(timeout, refresh_interrupt)
    timer_thread.start()

    
@log
def main():
    """Main entry point, intially sets up the debug server and handles arguments.
        
        @Arguments: None
        @Return: None
    """

    global lp_refresh_id, local_pool_size, seed_dir, results_dir, start_time, timer_thread, setup_pool_id

    args = _handle_args()
    local_pool_size = args.localpool
    seed_dir = args.seed_dir
    results_dir = args.res_dir
    bin_path = args.binary

    coverage_setup(bin_path)

    debug_server_setup()

    set_intial_breakpoints()
    
    refresh_local_pool()
    
    #Remove the breakpoint untill the next refresh.
    debugSession.breakpoint.remove(lp_refresh_id)
    debugSession.target.runAsynch()


    start_time = time.clock_gettime(time.CLOCK_REALTIME)
    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    print("Time of start =", dt_string)



    #start the refresh thread
    timeout = calculate_timeout(refresh_global_pool(), 15)
    timer_thread = threading.Timer(timeout, refresh_interrupt)
    timer_thread.start()

    device_listener()


if __name__ == "__main__":
    main()