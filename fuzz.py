import mutator
import time
import subprocess
import math
import argparse
import os
import insturmentor

SIM = False
BOARD = True


#TODO ADD COMMAND LINE OPTIONS TO FUZZER FOR EASIER DEBUGGING 


#Text Formating Info
BLINK    = '\33[5m'
RESET = '\033[0m'

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
    lines = insturmentor.file_handling(asm_file)
    #results = insturmentor.find_coverage(lines)
    results = insturmentor.main(asm_file)
    return results


def compile_test(datafile):
    """
        Handles compiling the appropriate test based on the data file.
    """
    #subprocess.call('cd ./test_bench/; make',shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    #print("Test Compiled.")
    #TODO:Add a check here
    subprocess.call('cp ./test_bench/TeleBench_autcor.out /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin/test.out', shell=True)
    #TODO:This needs to be able to handle multiple test cases.
    print("Test Copied.")
    

def load_and_run(functions, branches):
    """
        Loads and runs the test case on either hardware or simulator
    """
    #print('Running main test...')
    if(SIM):
        subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ; cmd.exe /c dss.bat sim_load.js', shell=True, stdout=subprocess.DEVNULL)
    elif(BOARD):
        branch_string = 'cmd.exe /c dss.bat Breakpoints.js -f '+ str(functions)+ ' -b '+ str(branches) 
        print(branch_string)
        #Try Check_Output to screen grab output
        results = subprocess.run('cd /mnt/c/ti/ccsv5/ccsv5/ccs_base/scripting/bin ;' + branch_string , shell=True)
    else:
        print('Error please make sure to select a arch type to run the tests.')
    #TODO: Add Check Here....
    print('Testcase Ran---------Results----------')
    print(str(results))

#def code_coverage_calc(num_reached, num_possible):


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
        #compile_test(filename)
        branch_funct = insturmentation(asm_file)
        #functions = ' '.join(branch_funct[0])
        #branches = ' '.join(branch_funct[1])
        #print(branches)
        functions = ''
        branches = ''
        #load_and_run(functions, branches)
        iterations+=1
    


if __name__ == "__main__":
    main()