
#TODO LIST
#====================================================================
#
#====================================================================

import os 
import sys
import re
import random
from itertools import islice
import argparse


# Trampoline ASM - 
# Have to save register context 
#TODO: Need to add reference to fuzz_log function in the begining of the file or before each function via tracking the .global keyword
#====================================================================
trampoline_ti = ["\tCALL #_coverage_log;\n"]
extern_identifier = '\t.ref _coverage_log;\n'
#====================================================================
FUNCTION = 1
BRANCH = 2

coverage = {}
pre_coverage = {}
branch_lines = set()
function_lines = set()
identifier_lines = set()




# Argument Handling
#===================================================================
parser = argparse.ArgumentParser(
    prog='Insturmentor.py',
    description='insturments TI TMS320C5515 ASM code'
)
parser.add_argument('-f','--filename',dest='filename',action='store',
    help='Filename for insturmention'
)
#===================================================================


        
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


def _label_ripper(requested_label, line_to_rip):
    split_string = line_to_rip.split(requested_label)
    #print(split_string)
    pre_label = split_string[1].replace(' ', '')
    label = re.split('[^a-zA-Z]', pre_label)
    #print(label[0])
    return label[0]

def first_pass(lines):
    """
    First pass of the insturmentor. We are tracking instruction count and look for block repeats.
    """
    isStarted = False

    labels = [] #List of labels used in the rptbloc instruciton

    for index, line in enumerate(lines, start = 1):

        #Found the real begining of the file
        if not isStarted and re.match("_.*:",line):
            #Track the line number for insturmentation later
            function_lines.add(index)
            isStarted = True
            continue
        if isStarted:
            #A local repeat block instuction have to treat this different.
            #These instructions need a label to track where they end. We can use this to track it as well.
            if 'rptblocal' in line:
                labels.append(_label_ripper('rptblocal', line))

            elif 'RPTBLOCAL' in line:
                labels.append(_label_ripper('RPTBLOCAL', line))

            elif 'rptb' in line:
                labels.append(_label_ripper('rptb', line))

            elif 'RPTB' in line:
                labels.append(_label_ripper('RPTB', line))
        else:
            continue

    #Found all Reapeat Blocks so return our found labels
    return labels
def second_pass(lines,repeat_labels):
    labels_to_insturment = []

    print("These are the repeat labels: ", repeat_labels)
    inRepeatBlock = False
    for index, pre_line in enumerate(lines, start = 1):
        

        #Make sure the line does not contain any comments that could cause issues in parsing.
        line_comments = pre_line.split(';')
        line = line_comments[0]

        #Iterate and look for the instructions we need to add insturmentation after e.g branches and labels.

        #Check if any of our labels in the line if it is then note it.
        for label in repeat_labels:
            if label in line and not inRepeatBlock:
                #print(line)
                inRepeatBlock = True
                continue
        #Condtional Branches, there are special cases which repeat blocks may have a BCC instruction.
        if 'BCC' in line and not inRepeatBlock:
            print(line)          
            # branch_lines.add(index)
            dummy_label = _branch_helper(line)
            if dummy_label in labels_to_insturment:
                continue
            labels_to_insturment.append(dummy_label)
            #branc_count+=1
        # elif 'B' in line and not inRepeatBlock:
        #     print(line)
        #     dummy_label = _branch_helper(line)
        #     if dummy_label in labels_to_insturment:
        #         continue
        #     labels_to_insturment.append(dummy_label)
        
    return labels_to_insturment


def third_pass(lines, insturment_labels):
    global function_lines, branch_lines

    #Now that we have checked for rpt blocks we can see where we need to add insturmentation
    #We track line numbers where these instructions are and then add them to a list to be insturmented
    print("These are the labels: ", insturment_labels)
    inRepeatBlock = False
    for index, pre_line in enumerate(lines, start = 1):
        

        #Make sure the line does not contain any comments that could cause issues in parsing.
        line_comments = pre_line.split(';')
        line = line_comments[0]
        #Labels that begin with _ and end with : e.g _foo:
        if re.match("_.*:",line):
            #Not going to be out of a repeat block until we see a new label
            print(line)
            if inRepeatBlock:
                inRepeatBlock = False
            function_lines.add(index)
            continue
            #fun_count+=1

        #TODO: This may break with a repeat block may have to check logic 
        for label in insturment_labels:   
            if label in line:
                print(line)
                branch_lines.add(index)
        
        #global label to add extern reference to coverage logging function
        if '.global' in line:
            #print(line)
            identifier_lines.add(index)

def forth_pass(lines):
    #This function takes the information gathered from previous passes and then adds insturmentation where it is needed.

    new_lines = []
    identifierPlaced = False

    for index, line in enumerate(lines, start=1):

        #Insert trampoline after the function label.  
        if (index) in function_lines:
            new_lines.append(line)
            new_lines.append(trampoline_ti[0])
        
        #Insert trampoline after the label of a branch instruction.
        elif (index) in branch_lines:
            new_lines.append(line)
            new_lines.append(trampoline_ti[0])
            

        #Only need to place the extern indentifier once.
        elif (index) in identifier_lines and not identifierPlaced:
            new_lines.append(extern_identifier)
            new_lines.append(line)
            identifierPlaced = True

        else:
            new_lines.append(line)

    #print(new_lines)
    return new_lines

def main():
    random.seed()
    args = parser.parse_args()
    filename = args.filename

    with open(filename, 'r') as fp:
        lines = fp.readlines()
    #for line in lines:
    #    print(line)
    bad_labels = first_pass(lines)
    good_labels = second_pass(lines, bad_labels)
    third_pass(lines, good_labels)
    insturmented_lines = forth_pass(lines)

    new_filename = 'new_' + filename
    _write_file(insturmented_lines, new_filename)





if __name__ =='__main__':
    main()
