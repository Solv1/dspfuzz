import time
import os 
import random
import argparse
import jpype
import jpype.imports
from jpype.types import *
jpype.startJVM(classpath=['/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar:/home/santiago/Research/Ti/CCS/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar'])

from com.ti.debug.engine.scripting import *
from com.ti.ccstudio.scripting.environment import *


seed_dir = ''
local_pool_size = 0
global_pool_size = 0
global_pool = [] #List of all seeds in the SEED_DIR of the users choosing.
local_pool = [] #What is currently loaded into the device ID only 
crash_void_address = 0 #Holds the address of where errors go when there is a crash condition(hang, bus error, data log error)
refresh_function_address = 0
seed_add_address = 0 #When we find coverage we will go into this function and wait for the seed to be pulled from the device for the global seed pull
program_to_load = 'DSPFuzz.out'
seed_number = 16



def _handle_args():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='debug_connection.py',
        description='Intialization, Loading, and Arbitor for the DSP'
    )
    parser.add_argument('-c','--corpussize', type=int ,dest='corpus_size',action='store',
        help='Size of the Intial Corpus', required='true'
    )
    parser.add_argument('-s','--seeds' ,dest='seed_dir',action='store',
        help='Directory of the global seed pool', required='true'
    )
    return parser.parse_args()


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
    debugSession.memory.loadProgram(program_to_load)

def set_intial_breakpoints():

    global crash_void_address, refresh_function_address, seed_add_address

    print("DSLOG: Setting Breakpoints in program")

    #Adds a breakpoint at the void
    #TODO: Rename the_void -> crash_void
    crash_void_address = debugSession.symbol.getAddress('crash_void')
    debugSession.breakpoint.add(crash_void_address) 

    #Set a breakpoint at the refresh_seed_corpus address.
    refresh_function_address = debugSession.symbol.getAddress("refresh_seed_corpus")
    debugSession.breakpoint.add(refresh_function_address)

    seed_add_address = debugSession.symbol.getAddress('seed_to_global_pool')
    debugSession.breakpoint.add(seed_add_address)

    debugSession.target.run()

def select_seed():

    #TODO: Maybe a better way to select seeds for the local pool
    rnd_num = random.randint(0, global_pool_size - 1)
    
    selected_seed = global_pool[rnd_num]

    #local_pool.append(selected_seed)

    
    with open(seed_dir + selected_seed, 'r') as fp:
       str_seed = fp.read()

    #Once the seed is selected for use on the device rm it from the global seed pool

    seed = [int(ele) for ele in str_seed.split()]

    #print(seed)

    return seed

def refresh_global_pool():

    global global_pool, global_pool_size

    #Seeds are number and managed by the fuzz engine all we have to do is read them.
    global_pool = os.listdir(seed_dir)
    print(global_pool)
    global_pool_size = len(global_pool)
    print(global_pool_size)

    if(len(global_pool) < local_pool_size):
        #TODO: Add shutdown when we are out of seeds.
        print("DSERROR: Not enough seeds in the global pool")
        exit(-42)

def refresh_local_pool():

    corpus_waiting_address =  debugSession.symbol.getAddress("corpusWaiting")
    corpus_address = debugSession.symbol.getAddress('seed_corpus')

    for x in range(0, local_pool_size):
        seed = select_seed()
        debugSession.memory.writeData(1, corpus_address, seed, 16)
        #514 -> offset for the next seed to be loaded.
        corpus_address = corpus_address + 514

    #All done with loading seeds now set corpusWaiting to be false
    debugSession.memory.writeData(1,corpus_waiting_address, 0, 16)

    #Continue fuzzing execution.
    debugSession.target.run()

def crash_reload():
    """When a condition causes a crash of the DSP pull the seed information from the device and store it then reload the device with new seeds and a fresh image of the fuzzer.

        @Arguments: None
        @Return: None
    """

    #TODO: Pull Crashing seed information without relaying on a print statement.
    #TODO: I must pull all of the other seeds that have not caused a crash and store them in the global seed pool
        #NOTE: Because I remove each of the seeds that I use when I load them onto the DSP I do not have to worry about duplicates :) 
        


    #Reset the target
    print('DSLOG: Reloading target after crash')
    debugSession.target.reset()

    #Load the Fuzzer back onto the DSP
    debugSession.memory.loadProgram('DSPFuzz.out')

    #Set breakpoints again
    set_intial_breakpoints()

    #Breakpoint is set ready for a seed refresh
    debugSession.target.run()

def pull_seed_to_global_pool():
    global seed_number

    # We are at a breakpoint the coverage increasing seed is in 'current_seed'

    #Get the address of the current seed.
    current_seed_address = debugSession.symbol.getAddress('current_seed')

    for x in range (0, 514):
        seed = str(debugSession.memory.readData(1, current_seed_address, 16))
        if x == 0:
            with open(seed_dir+str(seed_number), 'w+') as fp:
                fp.write(seed)
        else:
            with open(seed_dir+str(seed_number), 'a+') as fp:
                fp.write('\n'+seed)
        current_seed_address+= 1
    

    
    seed_number+= 1

    debugSession.target.run()
    # print(seed)
    







def device_listener():
    """ After connection is established poll device to see if the following conditons are met: Timeout, Crash, or Coverage increasing seed needs to be bubbled up.
        @Arguments: None
        @Return: None
    """


    corpus_waiting_address =  debugSession.symbol.getAddress("corpusWaiting")

    while(1):
        #Poll the PC to check for both errors and refreshs
        pc = debugSession.expression.evaluate('PC')
        test_time = time.clock_gettime_ns(time.CLOCK_BOOTTIME)

        if((test_time % 10000 == 0) or (pc == crash_void_address)):
            print('DSLOG: Refreshing Now')
            #Set corpus waiting to true and wait for the fuzzer to sit in the while loop.
            debugSession.memory.writeData(1,corpus_waiting_address, 1, 16)
            refresh_global_pool()
            refresh_local_pool()

        if(pc == crash_void_address):
            crash_reload()
        
        if(pc == seed_add_address):
            pull_seed_to_global_pool()
            
        
    


    

def main():
    global local_pool_size, seed_dir

    args = _handle_args()
    local_pool_size = args.corpus_size
    seed_dir = args.seed_dir

    print(time.clock_gettime_ns(time.CLOCK_BOOTTIME))

    debug_server_setup()

    set_intial_breakpoints()

    refresh_global_pool()

    device_listener()


if __name__ == "__main__":
    main()