import time
import threading
import os 
import logging
import random
import argparse
import jpype
import jpype.imports
from jpype.types import *
#TODO: Set this to be a enviorment varriable.
jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *


seed_dir = ''
results_dir = ''
local_pool_size = 0
global_pool_size = 0
global_pool = [] #List of all seeds in the SEED_DIR of the users choosing.
local_pool = [] #What is currently loaded into the device ID only 
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
refresh_function_address = 0
seed_add_address = 0 #When we find coverage we will go into this function and wait for the seed to be pulled from the device for the global seed pull
program_to_load = 'DSPFuzz.out'
seed_number = 16
seed_size = 256 #Size of current seed
amount_of_crashes = 0
start_time = 0
end_time = 0
corpus_waiting_address = 0
timeout = 5 #Default timeout is seconds

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
        prog='debug_connection.py',
        description='Intialization, Loading, and Arbitor for the DSP'
    )
    parser.add_argument('-c','--corpussize', type=int ,dest='corpus_size',action='store',
        help='Size of the Intial Corpus', required='true'
    )
    parser.add_argument('-i','--seeds' ,dest='seed_dir',action='store',
        help='Directory of the global seed pool', required='true'
    )
    parser.add_argument('-o', '--results', dest='res_dir', action='store',
                        help='Directory of results storage', required='true'
    )
    parser.add_argument('-t', '--timeout', type=int, dest='timeout', action='store',
                        help='Timeout for a local pool refresh.', default=10
    )
    return parser.parse_args()

@log
def debug_server_setup():
    """
    @setup: Sets up the varrious functions for the debug connection
    """

    global debugServer, debugSession

    script = ScriptingEnvironment.instance()

    script.traceBegin('BreakpointsTestLog.xml', 'DefaultStylesheet.xsl')

    # Set our TimeOut
    script.setScriptTimeout(1500000000)

    # Log everything
    script.traceSetConsoleLevel(TraceLevel.INFO)
    script.traceSetFileLevel(TraceLevel.INFO)

    # Get the Debug Server and start a Debug Session
    debugServer = script.getServer('DebugServer.1')
    debugServer.setConfig('USBSTK5515_BOARD.ccxml')
    debugSession = debugServer.openSession('.*')
    debugSession.target.connect()
    debugSession.clock.enable()

    try:
        debugSession.memory.loadProgram(program_to_load)
    except:
        logging.error('Failed to load program check path of fuzzer engine')
        exit(-1)

@log
def set_intial_breakpoints():

    global crash_void_address, refresh_function_address, seed_add_address, corpus_waiting_address

    

    #Adds a breakpoint at the void
    #TODO: Rename the_void -> crash_void
    crash_void_address = debugSession.symbol.getAddress('crash_void')
    debugSession.breakpoint.add(crash_void_address) 

    #Set a breakpoint at the refresh_seed_corpus address.
    refresh_function_address = debugSession.symbol.getAddress("refresh_seed_corpus")
    debugSession.breakpoint.add(refresh_function_address)

    seed_add_address = debugSession.symbol.getAddress('seed_to_global_pool')
    debugSession.breakpoint.add(seed_add_address)

    corpus_waiting_address =  debugSession.symbol.getAddress("corpusWaiting")

    debugSession.target.runAsynch()

#@log
def refresh_global_pool():

    global global_pool, global_pool_size, end_time, start_time

    #Seeds are number and managed by the fuzz engine all we have to do is read them.
    global_pool = os.listdir(seed_dir)
    #print(global_pool)
    global_pool_size = len(global_pool)
    #print(global_pool_size)


#@log
def select_seed():
    """Selects a random seed to be loaded
    @Arguments: NONE
    @Return: A list of lines representing input to our DUT
    """

    #TODO: Maybe a better way to select seeds for the local pool
    rnd_num = random.randint(0, global_pool_size - 1)
    
    selected_seed = global_pool[rnd_num]
    
    with open(seed_dir + selected_seed, 'r') as fp:
       str_seed = fp.read()

    seed = [int(ele) for ele in str_seed.split()]

    return seed


@log
def refresh_local_pool():
    global seed_size

    corpus_waiting_address =  debugSession.symbol.getAddress("corpusWaiting")
    corpus_address = debugSession.symbol.getAddress('local_pool')

    print('In the local pool refresh...')
    #Refresh the global pool incase there have been coverage increasing test cases added.
    refresh_global_pool()

    for x in range(0, local_pool_size):
        seed = select_seed()
        debugSession.memory.writeData(1, corpus_address, seed, 16)
        #514 -> offset for the next seed to be loaded.
        corpus_address = corpus_address + seed_size

    #All done with loading seeds now set corpusWaiting to be false
    debugSession.memory.writeData(1,corpus_waiting_address, 0, 16)

    #Continue fuzzing execution.
    debugSession.target.runAsynch()

def _pull_seed(seed_address, seed_id, dir):
    """Can pull a seed from memory at a specific address on the DSP.
    
        @Arguments: seed_address: address of where the seed starts.
                    seed_id: id of the newly stored seed
                    dir: directory to store it at.
        @Return: None
    """
    global seed_size

    #TODO: Add Check for empty seed spots?
    for x in range (0, seed_size):
        seed = str(debugSession.memory.readData(1, seed_address + x, 16))
        if x == 0:
            with open(dir+str(seed_id), 'w+') as fp:
                fp.write(seed)
        else:
            with open(dir+str(seed_id), 'a+') as fp:
                fp.write('\n'+seed)


@log
def current_seed_to_global_pool():
    """Pulls the current seed to the global pool this happens when there is a coverage increasing mutated input.
        @Arguments: None
        @Return: None
    """
    global global_pool_size, seed_dir

    print('Pulling the seed now ')
    #Get the address of the current seed.
    current_seed_address = debugSession.symbol.getAddress('current_input')

    global_pool_size+=1

    _pull_seed(current_seed_address, global_pool_size, seed_dir)


    debugSession.target.runAsynch()


@log
def crash_reload():
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """
    global amount_of_crashes, start_time

    crash_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)
    print('Found Crash in '+ str(crash_time - start_time)+ ' ns')

    #Put the crashing input in the crashes directory.
    current_seed_address = debugSession.symbol.getAddress('current_input')
    _pull_seed(current_seed_address, amount_of_crashes, results_dir+'crashes/')

    #Reset the target
    logging.info('Reloading target after crash')
    debugSession.target.reset()

    #Load the Fuzzer back onto the DSP
    debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    set_intial_breakpoints()

    #Breakpoint is set ready for a seed refresh
    logging.info('Running target program.')
    
    amount_of_crashes+=1
            
@log
def device_listener():
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """

    global seed_add_address

    print('I am in the checking thread')
    
    while(1):    
        #Poll the PC to check for both errors and refreshs
        pc = debugSession.expression.evaluate('PC')

        if(pc == crash_void_address):
            #If there is crash reload the DSP program.
            crash_reload()

        if(pc == seed_add_address):
            #If there is a covereage increasing input found bubble it up to the global pool.
            print('About to enter current seed to global pool')
            current_seed_to_global_pool()

    
@log
def refresh_interrupt():
    
    global corpus_waiting_address, timeout

    #test_time = int(time.clock_gettime(time.CLOCK_BOOTTIME))
    #print(test_time)
    print('DSLOG: Time for a local pool refresh.')
    
    # #Set corpus waiting to true and wait for the fuzzer to sit in the while loop.
    debugSession.memory.writeData(1,corpus_waiting_address, 1, 16)
    
    #Sleep for a second and wait for the fuzzer to finish.
    time.sleep(1)
    refresh_local_pool()
    
    #Reschedule the timer.
    threading.Timer(timeout, refresh_interrupt).start()

    
@log
def main():
    global local_pool_size, seed_dir, results_dir, start_time, timeout

    args = _handle_args()
    local_pool_size = args.corpus_size
    seed_dir = args.seed_dir
    results_dir = args.res_dir
    timeout = args.timeout

    debug_server_setup()

    set_intial_breakpoints()

    refresh_local_pool()

    start_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)

    #start the refresh thread
    threading.Timer(timeout, refresh_interrupt).start()

    device_listener()


if __name__ == "__main__":
    main()