import mutator
import time
import subprocess
import math
import argparse
import os
import insturmentor


SIM = False
BOARD = True
#Text Formating Info
BLINK    = '\33[5m'
RESET = '\033[0m'


# This is the global tracker of edges for a given campaign. 
edges = set()

#TODO ADD COMMAND LINE OPTIONS TO FUZZER FOR EASIER DEBUGGING 

def _results_helper(results):
    #print(results)
    string = results.split("--Coverage--")
    coverage_array = string[1].replace('\n', '')
    coverage_array_redux = coverage_array.split(',')
    #coverage_array = map(int, coverage_array_redux)
    print(coverage_array_redux)

    return coverage_array_redux

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
    # if(mutator.random_mutate("./seeds/"+filename) == mutator.FILE_DOES_NOT_EXIST):
    #     print("File not found please try again")
    #     exit(-1)
    if(mutator.random_one_input("./seeds/"+filename) == mutator.FILE_DOES_NOT_EXIST):
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
    subprocess.call('cd ./test/; make test; cd ..',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST COMPILED")
    
def link_test():
    subprocess.call('cd ./test/; make asm; cd ..',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST LINKED")
    
def load_and_run():
    """
        Loads and runs the test case on either hardware or simulator
    """
    #print('Running main test...')
    subprocess.call('cp ./test/main.out /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin/test.out', shell=True)
    if(SIM):
        subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ; cmd.exe /c dss.bat sim_load.js', shell=True, stdout=subprocess.DEVNULL)
    elif(BOARD):
        branch_string = 'cmd.exe /c dss.bat Breakpoints.js'
        #print(branch_string)
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

def set_edges(run_result):
    coverage = []
    coverage_set = set()
    list_length = len(run_result)
    prev_function = 0
    for index ,label in enumerate(run_result):
        if index == list_length -1:
            break
        #print("{:04d}".format(int(label))+"{:04d}".format(int(run_result[index+1])))
        coverage.append("{:04d}".format(int(label))+"{:04d}".format(int(run_result[index+1])))
        coverage_set.add("{:04d}".format(int(label))+"{:04d}".format(int(run_result[index+1])))
    # This maintains path which we dont care about
    #print(coverage)
    # This is the coverage based on the current edges Note: they are not in order 
    print("Test Result:" + str(coverage_set))
    return coverage_set
def check_increasing(run_edges):
    global edges
    check = run_edges.difference(edges)
    if not check:
        print("LOG: Coverage not increasing")
        return False
    else:
        print("LOG: Coverage Increasing Test Case Noted:  ")
        print(check)
        edges = edges.union(run_edges)
        return True


# def coverage_track(tuples):
#     if tuple in c 

def _write_coverage_results():
    global edges
    fp = open("coverage.txt", 'a')
    fp_test = open('./test/input.dat', 'r')

    fp.write(fp_test.read() + ':')
    fp.write(str(edges))
    fp.close()


def main():
    start_time = time.time()
    iterations = 1
    filename = 'input.dat'
    # asm_file = './test/main.asm'
    asm_file = './test/main.asm'
   # setup()
    
    #TODO: Only do function detection once on each test file.
    for iterations in range(0,10000):
        #splash_screen(runtime=math.floor((time.time() - start_time)),iterations=iterations)
        seed_generator(filename)
        compile_test()
        trace = insturmentation(asm_file)
        link_test()
        #t1 = time.time()
        run = load_and_run()
        #t2 = time.time()
        #print(f'Code executed in {(t2-t1):.4f}s')
        current_edges = set_edges(run)
        isIncreasing = check_increasing(current_edges)
        if isIncreasing:
            _write_coverage_results()
        

        
        #print(run)
        #results = code_coverage_calc(trace, run)
        #print(results)
    


if __name__ == "__main__":
    main()