
#TODO LIST
#====================================================================
#TODO: Add the ability to insert '__fuzz_log' into the DSP firmware.
#TODO: How are we going to get that information out.
#====================================================================

import os 
import sys
import re
import random


# Trampoline ASM - 
# Have to save register context 
#TODO: See if we need to push of registers to the stack for now this may work...
#====================================================================
trampoline_ti = ["\tPSH T0;\n","\tPSH T1;\n","\tPSH T2;\n","\tPSH T3;\n",
                 "\tMOV #{cov_number}, T3;\n", "\tCALL #___fuzz_log;\n",
                 "\tPOP T3;\n","\tPOP T2;\n","\tPOP T1;\n","\tPOP T0;\n",]
#====================================================================

coverage = {}
pre_coverage = {}
random.seed()





def insert_asm(start: int, newinst: list, lines) -> list:
    new_lines = []
    instCounter = 0
    for index, line in enumerate(lines, start=1):
        if 'BCC' in line:
            print("Found a branch instruction BCC...")
        elif re.match("^\s+B\s.+\s",line):
            print("Found a branch instruction B...")
        elif re.match("^\s*_[a-zA-Z0-9]+:\s", line):
            print("Found a function start: " + line)

        #if ((len(newinst) + start ) < index > start) and (instCounter < len(newinst)):
         #   new_lines.append("\t\t"+ newinst[instCounter] + ";" + "\t; Inst Added" + "\n")
          #  instCounter += 1
        elif (re.match("\$[A-Z]\$L[0-9]+", line) is not None):
            print("Found a loop start: " + line)
            #new_lines.append(line)
        else:
            print("here")
            #new_lines.append(line)

    return 0
    #return new_lines          
def insert_function(start: int, lines) -> list:
    new_lines = []
    in_function = False
    inserted = False
    for index ,line in enumerate(lines, start=1):
        if index == start:
            print("Entering Function...")
            in_function = True
            new_lines.append(line)
        elif in_function and inserted == False:
            for instruction in new_funct:
                new_lines.append("\t\t"+ instruction+ ";" + "\t; Inst Added" + "\n")
            inserted = True
        if inserted and ((re.match("\$[A-Z]\$L[0-9]+", line) is not None) or re.match("^\s*_[a-zA-Z0-9]+:\s", line) is not None):
            print("We are at the next function area")
            in_function = False
            inserted = False
            new_lines.append(line)
        elif not in_function:
            new_lines.append(line)
    return new_lines





# def find_function(file) -> list:
#     name_list = []
#     fun_count = 0
#     for index, line in enumerate(file, start=1):
#         if re.match("_.*:",line):
#             fun_count+=1
#             edited_line = line.replace('_','',1)
#             edited_line = edited_line.replace(':','',1)
#             edited_line = edited_line.replace('\n','')
#             name_list.append(edited_line)
#     return name_list

def file_handling(filename):
    file = open(filename, 'r')
    lines = file.readlines()
    file.close
    return lines

def _function_helper(line):
    edited_line = line.replace('_','',1)
    edited_line = edited_line.replace(':','',1)
    edited_line = edited_line.replace('\n','')
    return edited_line

def _label_helper(line):
    edited_line = line.replace(':','',1)
    edited_line = edited_line.replace('\n','')
    edited_line = edited_line.replace(' ','')
    return edited_line

def _data_word_helper(line):
    split = line.split()
    edited_line = split[0].replace('$','')
    edited_line = edited_line.replace('C','')
    edited_line = edited_line.replace('DW','')
    return edited_line

def _branch_helper(line):
    """
    Extracts the branch label.
    """
    split = line.split()
    split2 = split[1].split(',')
    edited_line = split2[0]
    return edited_line

def find_coverage(file):
    """
        Loops through the given ASM file and finds branch, and function starts.
    """
    global coverage, pre_coverage

    branch_lines = set()
    function_lines = set()
    fun_count = 0
    branc_count = 0
    current_function ="NULL"
    current_dataword = 0

    for index ,line in enumerate(file,start=1):
        if 'BCC' in line:
            branch_label = _branch_helper(line)
            print(f'BCC in {current_function} branching to {branch_label} , located in Dataword {current_dataword}')
            #Adds the line it found the branch in for further insturmentation
            branch_lines.add(index)
            pre_coverage[index] = [0, 'BCC '+ branch_label]
            print(index)
            branc_count+=1

        elif re.match("^\s+B\s.+\s",line):
            branch_label = _branch_helper(line)
            print(f'B in {current_function} branching to {branch_label} , in Dataword {current_dataword}')
            #Adds the line it found the branch in for further insturmentation
            branch_lines.add(index)
            pre_coverage[index] = [0, 'B '+ branch_label]
            branc_count+=1

        elif re.match("_.*:",line):
            print("Found a function start: " + line)
            fun_count+=1
            current_function = _function_helper(line)
            if re.match("___fuzz_log:", line):
                continue
            pre_coverage[index] = [0, current_function]
            print(index)
            function_lines.add(index)

        elif re.match("^\$C\$L[0-9]+", line):
            label = _label_helper(line)
            #print(index)
            pre_coverage[index] = [0, 'Label '+ label]
            function_lines.add(index)
        
    # Sets need to be sorted it makes things eaiser later on.
    branch_lines = sorted(branch_lines)
    function_lines = sorted(function_lines)


    return (branch_lines, function_lines)


def insturment(lines, file):
    global trampoline_tir, pre_coverage
    #TODO Make Pre_coverage not global 
    branches = lines[0]
    functions = lines[1]
    new_lines = []

    for index, line in enumerate(file, start=1):
        
        if (index) in functions:
            new_lines.append(line)
            #Generate a new coverage number
            cov_number = random.randint(1,50000)
            #TODO Add Check here if the number has been used before.
            pre_coverage[index][0] = cov_number
            for x in range(0, len(trampoline_ti)):
                if x == 4:
                    new_lines.append(trampoline_ti[x].format(cov_number=cov_number))
                else:
                    new_lines.append(trampoline_ti[x])
            
        elif (index+1) in branches:
            #Generate a new coverage number
            cov_number = random.randint(1,50000)
            #TODO Add Check here if the number has been used before.
            pre_coverage[(index + 1)][0] = cov_number
            for x in range(0, len(trampoline_ti)):
                if x == 4:
                    new_lines.append(trampoline_ti[x].format(cov_number=cov_number))
                else:
                    new_lines.append(trampoline_ti[x])
            new_lines.append(line)
        else:
            new_lines.append(line)

    print(pre_coverage)
    return new_lines

def coverage_formater():
    global pre_coverage, coverage

    #Take pre_coverage information and get rid of the line numbers,
    #all we care about now is the unique identifier, function, and number of hits
    for key in pre_coverage:
        coverage[pre_coverage[key][0]] = [pre_coverage[key][1], 0]
    #print(coverage)



def _write_file(lines, name):
    with open(name + ".asm",'w+') as fp:
        for line in lines:
            fp.write(line)
    print("All done...")


def main(filename):
    script_dir = os.path.dirname(os.path.abspath(sys.argv[0]))
    file = open(filename, 'r')
    lines = file.readlines()
    #for line in lines:
    #    print(line)
    coverage = find_coverage(lines)
    insturmented_asm = insturment(coverage, lines)
    file.close()
    coverage_formater()
    _write_file(insturmented_asm, './test_bench/bmark')
    return(coverage)

    #if index == -1:
        #print("Function not found...")
        #exit(-2)
    #print("Function start is at line: " + str(index))
    #new_lines = insert_asm(index, instruct, lines)
    #new_lines = insert_function(index, lines)
    #file.close()
    #print(script_dir)
    #write_file(new_lines, (script_dir + "\\" + "demo")) 

    #for line in new_lines:
    #    print(line)




if __name__ =='__main__':
    main()