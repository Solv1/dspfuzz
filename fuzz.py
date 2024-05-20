import subprocess
import math
import argparse
import os
import insturmentor
import timeit
from pathlib import Path


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
    #print(coverage_array_redux)

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


def seed_generator(filename):
    """ Handles generating new seed files to be used in test cases.
        filename: The name of the seed file that will be mutated.
    """
    # if(mutator.random_mutate("./seeds/"+filename) == mutator.FILE_DOES_NOT_EXIST):
    #     print("File not found please try again")
    #     exit(-1)
    # subprocess.run(('cp ./seeds/'+ filename + " ./test_bench/"), shell=True)
    if(mutator.random_one_input("./seeds/"+filename) == mutator.FILE_DOES_NOT_EXIST):
        print("File not found please try again")
        exit(-1)
    subprocess.run(('cp ./seeds/'+ filename + " ./test/"), shell=True)
        
    #TODO:Add a check here
    #print("File Copy complete.")

def insturmentation(asm_file):
    coverage = insturmentor.fuzz_insturment(asm_file)
    return coverage

def compile_test():
    """
        Handles compiling the appropriate test based on the data file.
    """
    #TODO: Change for new test cases and make it more general and usable by anyone...
    subprocess.call('cd ./test/; make test; cd ..',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST COMPILED")

def link_test():
    #TODO: Same as compile test make it more general and usable by any file...
    subprocess.call('cd ./test/; make asm; cd ..',shell=True,stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("LOG: TEST LINKED")
    
def re_insturmentation(breakpoints, asm_file, global_coverage):
    #TODO: This is old and needs to be removed.
    compile_test()
    #print(breakpoints)    
    new_coverage = insturmentor.refresh_breakpoints(breakpoints, global_coverage)
    #print(new_coverage)
    insturmentor.re_insturment(asm_file, new_coverage)
    return new_coverage

def scrape_fuzzer_log(fuzzer_output):
    #TODO: Connect this up with fuzzer output and see what happens
    id = 0
    isHang = False
    isCrash = False
    results = []
    #TODO: Need to add granulatarity for instance 
    crash_dir = './crashes/'

    for line in fuzzer_output:
        
        if "hang" in line:
            isHang = True
            continue
        elif "bus error" in line:
            isCrash = True
            continue
        elif isHang and "RESULTS" in line:
            fuzz_input = line.replace('RESULTS: ', '')
            #TODO: Add mutation stratergy last used here. 
            result = ('id:' + str(id) + ',sig:HANG' + ',strat:')
            fp = open(os.path.join(crash_dir, result), 'w')
            fp.write(fuzz_input)
            fp.close
            id +=1
            isHang = False
            continue
        elif isCrash and "RESULTS" in line:
            fuzz_input = line.replace('RESULTS: ', '')
            result = ('id:' + str(id) + ',sig:BUSERROR' + ',strat:')
            fp = open(os.path.join(crash_dir, result), 'w')
            fp.write(fuzz_input)
            fp.close
            id +=1
            isCrash = False
            continue

def load_and_run():
    #TODO: Make this more general and provide options for this...
    """
        Loads and runs the test case on either hardware or simulator
    """
    #print('Running main test...')
    subprocess.call('cp ./test/main.out /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin/test.out', shell=True)
    if(SIM):
        subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ; cmd.exe /c dss.bat sim_load.js', shell=True, stdout=subprocess.DEVNULL)
    elif(BOARD):
        branch_string = 'cmd.exe /c dss.bat Breakpoints.js'
        #Try Check_Output to screen grab output
        results = subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ;' + branch_string , shell=True, capture_output=True, text=True)
    else:
        print('Error please make sure to select a arch type to run the tests.')
    #TODO: Add Check Here....
    
    
    results = _results_helper(results.stdout)
    #print(results)


    return results

def set_edges(run_result):
    #TODO: This is also old 
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
    #print("Test Result:" + str(coverage_set))
    return coverage_set

def check_increasing(run_edges):
    #TODO: This is old 
    """
    Checks to see there is increasing coverage in the test case.
    """
    global edges
    check = run_edges.difference(edges)
    if not check:
        print("LOG: Coverage not increasing")
        return False
    else:
        print("LOG: Coverage Increasing Test Case Noted:  ")
        #print(check)
        edges = edges.union(run_edges)
        return True

def _write_coverage_results():
    global edges
    fp = open("coverage.txt", 'a')
    fp_test = open('./test/input.dat', 'r')

    fp.write(fp_test.read() + ':')
    fp.write(str(edges))
    fp.close()

def _seed_setup(seed_directory, results_directory):
    """
        @_seed_setup: Gives each seeds an ID and then moves the newly id seeds into the results/intial_seeds directory
                    This function is called once at startup
        @Args: seed_directory: directory where all seeds are located.
    """
    id = 1

    if(not os.path.isdir(seed_directory)):
        print('ERROR: Seed directory is not valid, make sure it is created.')
        exit(-1)
    if(not os.path.isdir(results_directory)):
        print('ERROR: Results directory is not valid, make sure it is created.')
        exit(-1)

    file_list = os.listdir(seed_directory)

    #ID the seeds and store them in both the working seeds and results directories specified by the user.
    for seed in file_list:
        old_file = os.path.join(seed_directory, seed)
        os.system('cp '+ old_file + ' ' + results_directory + 'intial_seeds')
        new_file = os.path.join(seed_directory, str(id)) #TODO: Decided if padding the id with zeros is a good idea..... probably not :(

        os.rename(old_file, new_file)

        id+=1

def _handle_arguments():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='fuzz.py',
        description='Main host engine -> Talks to the DSP handles seeds, moving files and insturmenting.'
    )
    parser.add_argument('-s','--intialseeds',dest='seed_dir',action='store',
        help='Directory where the intial seeds are stored.', required='true'
    )
    parser.add_argument('-r', '--results', dest = 'results_dir', action='store', required='true'
    )
    
    return parser.parse_args()

def main():
    

    args = _handle_arguments()


    seed_dir = args.seed_dir
    results_dir = args.results_dir

    _seed_setup(seed_dir, results_dir)
    exit(0)
    iterations = 1
    asm_file = './test/main.asm'    

    test_buffer = []
    filename = 'test.txt'
    with open(filename, 'r') as fp:
        test_buffer = fp.read().splitlines()

    scrape_fuzzer_log(test_buffer)

    # compile_test()
    # global_coverage = insturmentation(asm_file)
    # seed_generator(filename)
    # link_test()
    #TODO: Only do function detection once on each test file.
    # for iterations in range(0,10):
        #splash_screen(runtime=math.floor((time.time() - start_time)),iterations=iterations)
        # start = timeit.default_timer()
        #t1 = time.time()
        # compile_test()
        # link_test()
        # run = load_and_run()
        #t2 = time.time()
        #print(f'Code executed in {(t2-t1):.4f}s')
        # current_edges = set_edges(run)
        # isIncreasing = check_increasing(current_edges)
        # if isIncreasing:
        #     seed_generator(filename)
        #     global_coverage = re_insturmentation(run, asm_file, global_coverage)
        #     link_test()
        # else:
        #     ## Need to use global coverage information to reinsturment the file even if new
        #     # coverage isnt found
        #     run = None
        #     seed_generator(filename)
        #     re_insturmentation(run,asm_file, global_coverage)
        #     link_test()
        #     #_write_coverage_results()
        

        
        #print(run)
        #results = code_coverage_calc(trace, run)
        #print(results)
        #stop = timeit.default_timer()

        #print('Time: ', str(stop - start) + "s")  

if __name__ == "__main__":
    main()