import os 
import sys
import re

#TODO: Generate random number to be used for function marking.
#TODO: Figure out the function(s) we are inserting into the DSP firmware.
#TODO: How are we going to get that information out.

#TODO: Export the names of functions that are found to the DSS script controller.

branch_loc = {}


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
def write_file(lines, name):
    with open(name + ".asm",'w+') as fp:
        for line in lines:
            fp.write(line)
    print("All done...")



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
    edited_line = "'" + split2[0] + "'" #This is stupid but trust.
    return edited_line

def find_coverage(file):
    """
        Loops through the given ASM file and finds branch, and function starts.
    """
    funct_list = []
    branch_list =[]
    fun_count = 0
    branc_count = 0
    current_function ="NULL"
    current_dataword = 0

    for index ,line in enumerate(file,start=1):
        if 'BCC' in line:
            branch_label = _branch_helper(line)
            print(f'BCC in {current_function} branching to {branch_label} , located in Dataword {current_dataword}')
            branch_list.append(branch_label)
            branc_count+=1
        elif re.match("^\s+B\s.+\s",line):
            branch_label = _branch_helper(line)
            print(f'B in {current_function} branching to {branch_label} , in Dataword {current_dataword}')

            branc_count+=1
        elif re.match("_.*:",line):
            print("Found a function start: " + line)
            fun_count+=1
            current_function = _function_helper(line)
            funct_list.append(current_function)
        elif re.match("\$C\$DW\$[0-9]+", line) and current_function != "NULL":
            current_dataword = _data_word_helper(line)
            #print(f'On line {current_dataword}, in function {current_function}')
    return (funct_list, branch_list)

def main():
    script_dir = os.path.dirname(os.path.abspath(sys.argv[0]))
    filename = sys.argv[1]
    file = open(filename, 'r')
    lines = file.readlines()
    #for line in lines:
    #    print(line)
    index = find_coverage(lines)
    print(index)
    file.close()
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