import random
import sys

MISSING_ARGUMENTS = -1
FILE_DOES_NOT_EXIST = -2
SUCCESS = 42


def count_lines(file_path):
    with open(file_path, 'r') as file_pointer:
        lines = 0
        for char in file_pointer.read():
            if char == ',':
                lines += 1
        #print("Number of Lines in the file =", lines)
        return lines

def random_one_input(filename):
    random.seed()
    buf_size = 50

    #print("----------Mutator----------")

    try:

        with open(filename, 'wb') as fp:
            random_num = 0

            for i in range(0,1):
                random_num = random.randint(0, 2**31)

                number_str = f"{random_num}"
                print(f"LOG: Trying... {number_str}")

                # Write the string to the file
                fp.write(bytes(number_str, 'utf-8'))
                #print("Number of Elements Written:", fp.write(bytes(number_str, 'utf-8')))
    
    except FileNotFoundError:
        print("Cannot find .dat file specified... try again...")
        return FILE_DOES_NOT_EXIST
    
    return SUCCESS

def random_mutate(filename):
    random.seed()
    buf_size = 50
    number_buf = ['\0'] * buf_size

    #print("----------Mutator----------")

    try:
        with open(filename, 'rb') as fp:
            lines = count_lines(filename)

        with open(filename, 'wb') as fp:
            random_num = 0

            for i in range(lines):
                random_num = random.randint(-2**31, 2**31)

                number_str = f"     {random_num},\n"
                #print(f"Adding: {number_str}")

                # Write the string to the file
                fp.write(bytes(number_str, 'utf-8'))
                #print("Number of Elements Written:", fp.write(bytes(number_str, 'utf-8')))
    
    except FileNotFoundError:
        print("Cannot find .dat file specified... try again...")
        return FILE_DOES_NOT_EXIST
    
    return SUCCESS

def main():
    random.seed()
    buf_size = 50
    number_buf = ['\0'] * buf_size

    #print("----------Mutator----------")
    
    if len(sys.argv) != 2:
        print("Invalid arguments... try again...")
        return MISSING_ARGUMENTS

    filename = sys.argv[1]

    try:
        with open(filename, 'rb') as fp:
            lines = count_lines(filename)

        with open(filename, 'wb') as fp:
            random_num = 0

            for i in range(lines):
                random_num = random.randint(-2**31, 2**31)

                number_str = f"     {random_num},\n"
                print(f"Adding: {number_str}")

                # Write the string to the file
                print("Number of Elements Written:", fp.write(bytes(number_str, 'utf-8')))
    
    except FileNotFoundError:
        print("Cannot find .dat file specified... try again...")
        return FILE_DOES_NOT_EXIST

if __name__ == "__main__":
    main()
