import binascii
import argparse
import os 

from functools import partial

COVERAGE_SIZE = 20

def _handle_args():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='binary_tools.py',
        description='Intialization, Loading, and Arbitor for the DSP'
    )
    parser.add_argument('-b','--binfile' ,dest='bin_file',action='store',
        help='Binary File to Rewrite'
    )
    parser.add_argument('-m','--map' ,dest='map_file',action='store',
        help='Map file containig memory locations.'
    )
    # 
    return parser.parse_args()





def _get_disassembly(bin_file):
    tools_dir = os.environ["TOOLS_DIR"]
    disasm_name = 'disasm.asm'
    
    os.system(f'{tools_dir}/dis55 {bin_file} > {disasm_name}')

    return disasm_name

def read_disassembly_file(bin_file):
    locations = []

    disasm_file = _get_disassembly(bin_file)

    with open(disasm_file, 'r') as fp:
        for line in fp.readlines():
            if 'CALL _coverage_log' in line:
                split_line = line.split(':')
                locations.append(int(split_line[0], 16))

    return locations


def read_map_file(map_file) -> int:
    """
        Read the map file to pull the exact location of SUT start. Note: Should be stored in .program_sandbox section.
    """
    locationflg = False
    with open(map_file, 'r') as f:
        for line in f.readlines():
            if '.program_sandbox' in line:
                locationflg = True
            elif locationflg and '.text' in line:
                test = line.replace(' ', '')
                break
    
    starting_address_placeholder = []
    for char in test:
        #Count 8 digits
        starting_address_placeholder.append(char)
        if len(starting_address_placeholder) == 8:
            break
    starting_address = ''.join(starting_address_placeholder)
    print(f'DSLOG: Starting address of SUT: 0x{starting_address}')
    return int(starting_address, 16)


def _read_coverage_map(path):
    coverage_map = []
    uncoverage = []
    

    with open(path, 'r') as fpc:
        for chunk in iter(partial(fpc.read, 16), ''):
            coverage_map.append(str(chunk))
        
    for count, line in enumerate(coverage_map):
        for x in range(0,16):
            #print(line[x])
            if line[x] == '1':
                # print(line)
                # print(x)
                # print((count * 16) + x)
                uncoverage.append((count * 16) + x)

    #Returning the calculated offsets 
    return uncoverage

def _read_raw_binary(bin_path):
    raw_binary = []

    with open(bin_path, 'rb') as fp:

        for binary in iter(lambda: fp.read(1), b''):
            raw_binary.append(binascii.hexlify(binary))

    # print(raw_binary)
    return raw_binary

# def find_calls(bin_path, disasm, priorTest) -> dict:
#     """Searches binary file for our distinct byte value for our insturmentation i.e 0x6c014b19.
#     When the begining of a call is found its offset from the first call made in the program is saved along with the byte number to uninsturment later.
#     This is stored in a local file for use in future 

#     @Arguments: bin_file -> path to the binary we are going to search.
#     @Return: A dictionary -> offset:byte number
#     """
#     raw_binary = []
#     call_function_starts = []
#     coverage_locations = dict()

#     flag_1 = False
#     flag_2 = False
#     flag_3 = False
#     byte_1 = binascii.hexlify((((disasm >> 24) & 0xFF)).to_bytes(1,byteorder='big'))
#     print(byte_1)
#     byte_2 = binascii.hexlify((((disasm >> 16) & 0xFF)).to_bytes(1,byteorder='big'))
#     print(byte_2)
#     byte_3 = binascii.hexlify((((disasm >> 8) & 0xFF)).to_bytes(1,byteorder='big'))
#     print(byte_3)
#     byte_4 = binascii.hexlify((((disasm) & 0xFF)).to_bytes(1,byteorder='big'))
#     print(byte_4)
    
#     if priorTest:
#         data = {}
#         with open('./cov.dat', 'r+') as fp:
#             for line in fp:
#                 key, value = line.strip().split(': ')
#                 data[int(key)] = int(value)
#         print(f'DSLOG: Loading previous offsets: {data}')
#         return data



#     raw_binary = _read_raw_binary(bin_path)
#     # print(raw_binary)

#     for count, byte in enumerate(raw_binary):
#         if byte == byte_1 and not (flag_1 or flag_2 or flag_3):
#             # print('1',byte)
#             flag_1 = True
#         elif byte == byte_2 and flag_1 and not(flag_2 or flag_3):
#             # print('2',byte)
#             flag_2 = True
#         elif byte == byte_3 and flag_2 and not (flag_3):
#             # print('3',byte, raw_binary[count + 1])
#             #print("I am here")
#             flag_3 = True
#         elif byte == byte_4 and flag_3:
#             # print('4',byte)
#             #Store the byte number and reset the flags.
#             call_function_starts.append(count - 3)
#             flag_1 = False
#             flag_2 = False
#             flag_3 = False
#         else:
#             #Failed to find the patern completely dump the try.
#             flag_1 = False
#             flag_2 = False
#             flag_3 = False
    
#     # print(call_function_starts)
#     coverage_differences = []
#     for x in range(0,  len(call_function_starts)):
#         # Saves the offset|byte number pair for later referance and uninsturmentation.
        
#         coverage_differences.append(call_function_starts[x] - call_function_starts[0]) 
        
#         coverage_locations[call_function_starts[x] - call_function_starts[0]] = call_function_starts[x]
#     print(coverage_differences, end='')
#     print(coverage_locations)
#     # print('---------------------------------')
#     # with open('./cov.dat', 'w+') as fp:
#     #     for offset, byte_number in coverage_locations.items():
#     #         fp.write(f"{offset}: {byte_number}\n")

#     return coverage_locations


def find_calls(bin_path, disasm, priorTest):
    """Searches binary file for our distinct byte value for our insturmentation i.e 0x6c014b19.
    When the begining of a call is found its offset from the first call made in the program is saved along with the byte number to uninsturment later.
    This is stored in a local file for use in future 

    @Arguments: bin_file -> path to the binary we are going to search.
    @Return: A dictionary -> offset:byte number
    """
    raw_binary = []
    # call_function_starts = []
    coverage_locations = dict()

    call_function_starting_location = 0

    flag_1 = False
    flag_2 = False
    flag_3 = False
    byte_1 = binascii.hexlify((((disasm >> 24) & 0xFF)).to_bytes(1,byteorder='big'))
    # print(byte_1)
    byte_2 = binascii.hexlify((((disasm >> 16) & 0xFF)).to_bytes(1,byteorder='big'))
    # print(byte_2)
    byte_3 = binascii.hexlify((((disasm >> 8) & 0xFF)).to_bytes(1,byteorder='big'))
    # print(byte_3)
    byte_4 = binascii.hexlify((((disasm) & 0xFF)).to_bytes(1,byteorder='big'))
    # print(byte_4)
    
    if priorTest:
        data = {}
        with open('./cov.dat', 'r+') as fp:
            for line in fp:
                key, value = line.strip().split(': ')
                data[int(key)] = int(value)
        print(f'DSLOG: Loading previous offsets: {data}')
        return data



    raw_binary = _read_raw_binary(bin_path)
    # print(raw_binary)

    for count, byte in enumerate(raw_binary):
        if byte == byte_1 and not (flag_1 or flag_2 or flag_3):
            # print('1',byte)
            flag_1 = True
        elif byte == byte_2 and flag_1 and not(flag_2 or flag_3):
            # print('2',byte)
            flag_2 = True
        elif byte == byte_3 and flag_2 and not (flag_3):
            # print('3',byte, raw_binary[count + 1])
            #print("I am here")
            flag_3 = True
        elif byte == byte_4 and flag_3:
            # print('4',byte)
            #Store the byte number and reset the flags.
            call_function_starting_location = count-3
            break
            flag_1 = False
            flag_2 = False
            flag_3 = False
        else:
            #Failed to find the patern completely dump the try.
            flag_1 = False
            flag_2 = False
            flag_3 = False
    
    # print(call_function_starts)
    # coverage_differences = []
    # for x in range(0,  len(call_function_starts)):
        # Saves the offset|byte number pair for later referance and uninsturmentation.
        # 
        # coverage_differences.append(call_function_starts[x] - call_function_starts[0]) 
        # 
        # coverage_locations[call_function_starts[x] - call_function_starts[0]] = call_function_starts[x]
    # print(coverage_differences, end='')
    # print(coverage_locations)
    # print('---------------------------------')
    # with open('./cov.dat', 'w+') as fp:
    #     for offset, byte_number in coverage_locations.items():
    #         fp.write(f"{offset}: {byte_number}\n")

    return call_function_starting_location



def uninsturment(coverage_dict,coverage_list):
    """Adds NOP's to provided binary file based on coverage map information
    @Arguments:  NONE
    @Return:    #TODO: Make sure this is successful and throw an exception if not.
    """
    #print('This needs to be fixed to be done in the setup')    
    # coverage_map = './results/coverage.map'
    if coverage_dict == None:
        return None
    missing_coverage = False
 
    raw_bin = _read_raw_binary('./DSPFuzz.out')
 
    #Checks for a empty read coverage map this is a problem.
    if coverage_list == None:
        return None
    new_coverage = coverage_dict
 
    #print(f'DSLOG: Old Coverage {coverage_dict}')
    #print(f'DSLOG: Found Coverage {coverage_list}')
    print(f'DSLOG: Found {len(coverage_list)} new coverage.')
    for address in coverage_list:
        if address in coverage_dict:
            byte_number = coverage_dict[address]
            #print(byte_number)
            for x in range(byte_number, byte_number+4):
                #Write some no-ops
                raw_bin[x] = b'20'
            del new_coverage[address]
        else:
            #TODO: Handle Misses in the coverage_dict. Fix the maping function on board. -> Context isnt being saved. 
            print(f'DSLOG: Coverage not found: {address}')
            #missing_coverage = True

 

    with open ('./DSPFuzz.out', 'wb') as bp:
        for byte in raw_bin:
            bp.write(binascii.unhexlify(byte))    

    # if missing_coverage:
    #     return None
    print(f'DSLOG: Remaining coverage points: {len(coverage_dict)}')
    with open('./cov.dat', 'w+') as fp:
        for address, byte_number in coverage_dict.items():
            fp.write(f"{address}: {byte_number}\n")

    return new_coverage

# def uninsturment(coverage_dict,coverage_map):
#     """Adds NOP's to provided binary file based on coverage map information

#     @Arguments:  NONE
    
#     @Return:    #TODO: Make sure this is successful and throw an exception if not.
#     """
#     #print('This needs to be fixed to be done in the setup')    
#     # coverage_map = './results/coverage.map'
#     if coverage_dict == None:
#         return None
#     missing_coverage = False

#     raw_bin = _read_raw_binary('./DSPFuzz.out')

#     uncoverage = coverage_map

#     #Checks for a empty read coverage map this is a problem.
#     if uncoverage == None:
#         return None

#     new_coverage = coverage_dict

#     print(f'DSLOG: Old Coverage {coverage_dict}')
#     print(f'DSLOG: Found Coverage {uncoverage}')
#     for offset in uncoverage:
#         if offset in coverage_dict:
#             byte_number = coverage_dict[offset]
#             #print(byte_number)
#             for x in range(byte_number, byte_number+4):
                
#                 raw_bin[x] = b'20'
#             del new_coverage[offset]
#         else:
#             #TODO: Handle Misses in the coverage_dict. Fix the maping function on board. -> Context isnt being saved. 
#             print(f'DSLOG: Coverage not found: {offset}')
#             missing_coverage = True
#             i = 0 

#     with open ('./DSPFuzz.out', 'wb') as bp:
#         for byte in raw_bin:
#             bp.write(binascii.unhexlify(byte))    

#     if missing_coverage:
#         return None
#     print(f'DSLOG: New coverage {new_coverage}')
#     with open('./cov.dat', 'w+') as fp:
#         for offset, byte_number in new_coverage.items():
#             fp.write(f"{offset}: {byte_number}\n")

#     return new_coverage

def calc_offsets(coverage_locations, starting_byte):
    result = {}

    starting_address = coverage_locations[0]
    
    for loc in coverage_locations:
        result[loc] = starting_byte + (loc - starting_address)

    print(f'DSLOG: Coverage points {result}')
    print(f'DSLOG: Total Coverage Points: {len(result)}')
    return result


def setup_offsets(offsets, coverage_locations):
    result = {}
    test_result = {}
    print(f'Len of offsets: {len(offsets)}')
    print(f'Len of coverage_locations {len(coverage_locations)}')

    for count,(key, value) in enumerate(offsets.items()):
        result[coverage_locations[count]] = offsets[key]
        test_result[hex(coverage_locations[count])] = offsets[key] 
    
    print(test_result)
    return result

def calc_new_address(offsets, starting_address, coverage_locations):
    new_addresses = {}
    test_addresses = {}
    for key in offsets.keys():
        new_addresses[starting_address + key] = offsets[key]
        #test_addresses[hex(starting_address + key)] = offsets[key] 

    #print(test_addresses)
    if (len(offsets) != len(coverage_locations)):
        print(f'DSLOG: Total Coverage Points: {len(new_addresses)}.')
    return new_addresses

def main():
    #print('Binary Rewritting Tool')

    


    args = _handle_args()
    map_file = args.map_file
    #starting = read_map_file(map_file)
    # print(starting)
    bin_file = args.bin_file
    disasm_file = _get_disassembly(bin_file)
    coverage_points = read_disassembly_file(disasm_file)
    coverage_differences = find_calls(bin_file, 1812016897 ,False)
    calc_new_address(coverage_differences, coverage_points[0])
    #uninsturment()
    #tup = find_calls(bin_file=bin_file)
    #uninsturment(tup[1], coverage_map='./results/coverage.map', coverage_dict=tup[0])

    # for x in range(24179, 24179+4):
    #     print(binascii.unhexlify(raw_binary[x]))

    # for x in range(24179, 24179+4):
    #     raw_binary[x] = b'20'

    # for x in range(24179, 24179+4):
    #     print(binascii.unhexlify(raw_binary[x]))
    #     #print(raw_binary)
    # with open ('./test.out', 'wb') as bp:

    #     for byte in raw_binary:
    #         bp.write(binascii.unhexlify(byte))
        


if __name__ == "__main__":
    main()