import binascii
import argparse
from functools import partial

COVERAGE_SIZE = 1024

def _handle_args():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='debug_connection.py',
        description='Intialization, Loading, and Arbitor for the DSP'
    )
    parser.add_argument('-b','--binfile' ,dest='bin_file',action='store',
        help='Binary File to Rewrite', required='true'
    )
    
    return parser.parse_args()

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

    return raw_binary

def find_calls(bin_path) -> dict:
    """Searches binary file for our distinct byte value for our insturmentation i.e 0x6c014b19.
    When the begining of a call is found its offset from the first call made in the program is saved along with the byte number to uninsturment later.

    @Arguments: bin_file -> path to the binary we are going to search.
    @Return: A dictionary -> offset:byte number
    """
    raw_binary = []
    call_function_starts = []
    coverage_locations = dict()
    flag_6c = False
    flag_01 = False
    flag_4a = False

    raw_binary = _read_raw_binary(bin_path)

    for count, byte in enumerate(raw_binary):
        if byte == b'6c':
            flag_6c = True
        elif byte == b'01' and flag_6c:
            flag_01 = True
        elif byte == b'4d' and flag_01:
            flag_4a = True
        elif byte == b'11' and flag_4a:
            #Store the byte number and reset the flags.
            call_function_starts.append(count - 3)
            #print(count - 3)
            flag_6c = False
            flag_01 = False
            flag_4a = False
        else:
            #Failed to find the patern completely dump the try.
            flag_6c = False
            flag_01 = False
            flag_4a = False

    for x in range(0,  len(call_function_starts)):
        # Saves the offset|byte number pair for later referance and uninsturmentation.
        coverage_locations[call_function_starts[x] - call_function_starts[0]] = call_function_starts[x]
        
    #print(coverage_locations)
    return coverage_locations




def uninsturment(coverage_dict):
    """Adds NOP's to provided binary file based on coverage map information

    @Arguments:  NONE
    
    @Return:    #TODO: Make sure this is successful and throw an exception if not.
    """
    #print('This needs to be fixed to be done in the setup')    
    coverage_map = './results/coverage.map'

    raw_bin = _read_raw_binary('./DSPFuzz.out')

    uncoverage = _read_coverage_map(coverage_map)

    new_coverage = coverage_dict

    print(coverage_dict)
    print(uncoverage)
    for offset in uncoverage:
        if offset in coverage_dict:
            byte_number = coverage_dict[offset]
            #print(byte_number)
            for x in range(byte_number, byte_number+4):
                
                raw_bin[x] = b'20'
            del new_coverage[offset]
        else:
            #TODO: Handle Misses in the coverage_dict. Fix the maping function on board. -> Context isnt being saved. 
            print('DSLOG: Coverage not found in the coverage_dict but thats okay')

    with open ('./DSPFuzz.out', 'wb') as bp:
        for byte in raw_bin:
            bp.write(binascii.unhexlify(byte))    

    return new_coverage






def main():
    #print('Binary Rewritting Tool')

    


    args = _handle_args()
    bin_file = args.bin_file
    uninsturment()
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