
#TODO LIST
#====================================================================
#TODO: Add the ability to insert '__fuzz_log' into the DSP firmware.
#TODO: How are we going to get that information out.
#====================================================================

import os 
import sys
import re
import random
from itertools import islice


# Trampoline ASM - 
# Have to save register context 
#TODO: See if we need to push of registers to the stack for now this may work...
#====================================================================
trampoline_ti = ["\tPSH T0;\n","\tPSH T1;\n","\tPSH T2;\n","\tPSH T3;\n",
                 "\tMOV #{cov_number}, T3;\n", "\tCALL #___fuzz_log;\n",
                 "\tPOP T3;\n","\tPOP T2;\n","\tPOP T1;\n","\tPOP T0;\n",]
#====================================================================
FUNCTION = 1
BRANCH = 2

coverage = {}
pre_coverage = {}
branch_lines = set()
function_lines = set()

        
def _file_handling(filename):
    file = open(filename, 'r')
    lines = file.readlines()
    file.close
    return lines

def _call_helper(line):
    edited_line = line.replace('_','',1)
    edited_line = edited_line.replace('\n','')
    edited_line = edited_line.replace('\t','')
    edited_line = edited_line.replace('#','')
    return edited_line

def _write_file(lines, name):
    with open(name,'w+') as fp:
        for line in lines:
            fp.write(line)
    #print("All done...")

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
    global coverage, pre_coverage, branch_lines, function_lines

    fun_count = 0
    branc_count = 0
    current_function = None

    for index ,line in enumerate(file,start=1):
        if 'BCC' in line:
            branch_label = _branch_helper(line)
            #print(f'BCC in {current_function} branching to {branch_label} , located in Dataword {current_dataword}')
            #Adds the line it found the branch in for further insturmentation
            branch_lines.add(index)
            pre_coverage[index] = [0, 'BCC '+ branch_label, BRANCH]
            #print(index)
            branc_count+=1

        elif re.match("_.*:",line):
            #print("Found a function start: " + line)
            if re.match("___fuzz_log:", line):
                continue
            fun_count+=1
            current_function = _function_helper(line)
            pre_coverage[index] = [0, current_function, FUNCTION]
            #print(index)
            function_lines.add(index)

                
        elif re.match("CALL #_.*", line):
            pre_coverage[index] = [0,_call_helper(line)]
            continue

        elif re.match("^\$C\$L[0-9]+", line):
            label = _label_helper(line)
            #print(index)
            pre_coverage[index] = [0, label, BRANCH]
            function_lines.add(index)
        
    # Sets need to be sorted it makes things eaiser later on.
    branch_lines = sorted(branch_lines)
    function_lines = sorted(function_lines)


    return (branch_lines, function_lines)

def insturment(lines, file):
    """
    Adds the Trampoline notated by user.
    """
    global trampoline_ti, pre_coverage
    #TODO Make Pre_coverage not global 
    new_lines = []
    cov_number = 0

    for index, line in enumerate(file, start=1):
        
        if (index) in function_lines:
            new_lines.append(line)
            #Generate a new coverage number
            cov_number += 1 
            #TODO Add Check here if the number has been used before.
            pre_coverage[index][0] = cov_number
            for x in range(0, len(trampoline_ti)):
                if x == 4:
                    new_lines.append(trampoline_ti[x].format(cov_number=cov_number))
                else:
                    new_lines.append(trampoline_ti[x])
            
        elif (index+1) in branch_lines:
            #Generate a new coverage number
            cov_number += 1 
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

    #print(pre_coverage)
    return new_lines

def coverage_formater():
    """
    Formats precoverage information into a global coverage structure.
    """
    global pre_coverage, coverage

    for key in pre_coverage:
        coverage[pre_coverage[key][0]] = [pre_coverage[key][1], 0, pre_coverage[key][2], key, True ]

    #print(coverage)
    return coverage

def refresh_breakpoints(removal_breakpoints, coverage):
    """
    Discards Breakpoints when increasing coverage is discovered using them.
    """
    #print(removal_breakpoints)
    if removal_breakpoints:
        for point in removal_breakpoints:
            con_point = int(point)
            if con_point in coverage.keys():
                coverage[con_point][4] = False
    #print(coverage)
    return coverage

def _line_helper(coverage):
    """
    Uses struct labels to see rather or not coverage is a function or branch.
    """
    function_lines = dict()
    branch_lines = dict()

    for info in coverage:
        if coverage[info][4]:
            if coverage[info][2] == BRANCH:
                branch_lines[coverage[info][3]] = info
            elif coverage[info][2] == FUNCTION:
                function_lines[coverage[info][3]] = info
    

    return function_lines, branch_lines

def re_insturment(asm_file, new_coverage):
    """
    Does basically the same as the orginal insturmentation function but with a twist...
    """
    global trampoline_ti

    new_lines = []
    with open(asm_file, 'r') as fp:
        lines = fp.readlines()
    result = _line_helper(new_coverage)
    branch_lines = result[0]
    function_lines = result[1]

    for index, line in enumerate(lines, start=1):
        if index in function_lines.keys():
            new_lines.append(line)
            
            cov_number = function_lines[index]

            for x in range(0, len(trampoline_ti)):
                if x == 4:
                    new_lines.append(trampoline_ti[x].format(cov_number=cov_number))
                else:
                    new_lines.append(trampoline_ti[x])
            
        elif (index) in branch_lines.keys():
            
            cov_number = branch_lines[index]

            for x in range(0, len(trampoline_ti)):
                if x == 4:
                    new_lines.append(trampoline_ti[x].format(cov_number=cov_number))
                else:
                    new_lines.append(trampoline_ti[x])
            new_lines.append(line)
        else:
            new_lines.append(line)
    _write_file(new_lines,asm_file)



def main(filename):
    random.seed()
    file = open(filename, 'r')
    lines = file.readlines()
    #for line in lines:
    #    print(line)
    trace = find_coverage(lines)
    insturmented_asm = insturment(trace, lines)
    file.close()
    coverage = coverage_formater()
    _write_file(insturmented_asm, filename)
    return(coverage)





if __name__ =='__main__':
    main()