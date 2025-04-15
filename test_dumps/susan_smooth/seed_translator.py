import argparse
import os



#TODO: Add the ability to load variable sized global pools ~global pool < local pool
def _handle_args():
    parser = argparse.ArgumentParser(
        prog='DSPFuzz.py',
        description='Host side fuzzing engine for DSPFuzz.'
    )
    parser.add_argument('-s','--seeds' ,dest='seed_dir',action='store',
        help='seed', required='true'
    )
    parser.add_argument('-o', '--outfile', dest='outfile', action='store',
                        help='Output file name', required='true'
    )
    # parser.add_argument('-l', '--seedsize', dest='seedsize', action='store',
    #                     help='Size of each size', required='true'                    
    # )
    
    return parser.parse_args()


def seedToHex(dir, name)-> list:
    """
        Reads a seed file and translates it into hex.
    """
    hexVals = []

    with open(dir + name, 'r') as file:
        for line in file.readlines():
            hexVals.append(f"{int(line):04x}")

    return hexVals

def translateToDat(dir, outname):

    seeds = os.listdir(dir)
    print(seeds)
    for x in range(0, len(seeds)):
        with open(outname + str(x) + '.dat', 'w') as file:
            file.write('1651 9 4002 1 1f4 0\n') #We need this header to be written first.
            
            curSeed = seeds[x]
            translatedHex = seedToHex(dir, curSeed)
            print(translatedHex)
            print(outname)

            for val in translatedHex:
                file.write(val +'\n')

def main():

    args = _handle_args()
    seedDir = args.seed_dir
    outName = args.outfile

    translateToDat(seedDir,outName)


if __name__ == "__main__":
    main()