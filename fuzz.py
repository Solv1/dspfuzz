import mutator
import time
import subprocess
import math
import argparse
import os
import insturmentor
import tree

SIM = False
BOARD = True
#Text Formating Info
BLINK    = '\33[5m'
RESET = '\033[0m'


#TODO ADD COMMAND LINE OPTIONS TO FUZZER FOR EASIER DEBUGGING 

def _results_helper(results):
    string = results.split("--Coverage--")
    coverage_array = string[1].replace('\n', '')
    coverage_array_redux = coverage_array.split(',')
    coverage_array = map(int, coverage_array_redux)
    print(coverage_array)

    return coverage_array

def calc_time(time):
    days = 0
    hours = 0
    minutes = time//60
    seconds = time % 60
    if minutes > 60:
        hours = time//3600
        minutes = (time - (hours*3600))//60
    if hours > 24:
        days = hours//24
        hours = hours - days * 24

    return """{:02d}d {:02d}h {:02d}m {:02d}s""".format(days, hours, minutes, seconds)

def splash_screen(runtime, iterations):
    os.system('cls||clear')

    formatedtime = calc_time(runtime)
    
    """Prints out and handles the splash screen for the fuzzer."""
    string = BLINK +"        dspfuzz"+RESET+""":the dsp fuzzer v.0.1   
╔═══════Timing═══════════════════╦═════Results════════════╗"""

    string2 =  """║   Run Time:  {time}   {pillar} flashes done: {cycles:04d}     {pillar}
║                                ║                        ║                       
║                                ║                        ║
║                                ║                        ║""".format(time=formatedtime,cycles=iterations, pillar="║")
    print(string)
    print(string2)

def setup():
    """ 
        Manages the building of nessciary tools on start up.
    """
    subprocess.Popen('make mutator', shell=True, stdout=subprocess.DEVNULL)
#TODO: Add some way to buffer test cases before loading them onto the board
def seed_generator(filename):
    """ Handles generating new seed files to be used in test cases.
        filename: The name of the seed file that will be mutated.
    """
    if(mutator.random_mutate("./seeds/"+filename) == mutator.FILE_DOES_NOT_EXIST):
        print("File not found please try again")
        exit(-1)
    subprocess.run(('cp ./seeds/'+ filename + " ./test/"), shell=True)
    #TODO:Add a check here
    #print("File Copy complete.")

def insturmentation(asm_file):
    coverage = insturmentor.main(asm_file)
    return coverage

def compile_test():
    """
        Handles compiling the appropriate test based on the data file.
    """
    #TODO: NEEDS PROPER SETUP FOR TEST CASE COMP
    subprocess.call('cd ./test_bench/; make test; cd ..',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST COMPILED")
    
def link_test():
    subprocess.call('cd ./test_bench/; make asm; cd ..',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST LINKED")
    
def load_and_run(functions, branches):
    """
        Loads and runs the test case on either hardware or simulator
    """
    #print('Running main test...')
    subprocess.call('cp ./test_bench/TeleBench_autcor.out /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin/test.out', shell=True)
    if(SIM):
        subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ; cmd.exe /c dss.bat sim_load.js', shell=True, stdout=subprocess.DEVNULL)
    elif(BOARD):
        branch_string = 'cmd.exe /c dss.bat Breakpoints.js -f '+ str(functions)+ ' -b '+ str(branches) 
        print(branch_string)
        #Try Check_Output to screen grab output
        results = subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ;' + branch_string , shell=True, capture_output=True, text=True)
    else:
        print('Error please make sure to select a arch type to run the tests.')
    #TODO: Add Check Here....
    #print(results.stdout)
    
    results = _results_helper(results.stdout)

    return results

def code_coverage_calc(coverage_map, run_result):
    for identifier in run_result:
        if identifier in coverage_map:
            coverage_map[identifier][1] += 1
    return coverage_map

def main():
    start_time = time.time()
    iterations = 1
    filename = 'xsinei.dat'
    # asm_file = './test/main.asm'
    asm_file = './test_bench/bmark.asm'
   # setup()
    #TODO: Only do function detection once on each test file.
    for iterations in range(0,1):
        #splash_screen(runtime=math.floor((time.time() - start_time)),iterations=iterations)
        #seed_generator(filename)
        compile_test()
        trace = insturmentation(asm_file)
        #link_test()
        #functions = ' '.join(branch_funct[0])
        #branches = ' '.join(branch_funct[1])
        #print(branches)
        functions = ''
        branches = ''
        #run = load_and_run(functions, branches)
        #results = code_coverage_calc(trace, run)
        #print(results)
    


if __name__ == "__main__":
    main()