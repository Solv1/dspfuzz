import argparse
import random
import os


def _handle_args():
    #TODO: Add more arguments as needed for fuzzing.
    parser = argparse.ArgumentParser(
        prog='debug_connection.py',
        description='Intialization, Loading, and Arbitor for the DSP'
    )
    parser.add_argument('-o','--seedout',dest='seed_dir',action='store',
        help='Output dir to store generated seeds', required='true'
    )
    parser.add_argument('-a','--amount', type=int ,dest='amount',action='store',
        help='Amount of seeds to gen', required='true'
    )
    return parser.parse_args()

def gen_seeds(amount, dir):
    
    for x in range(1, amount):
        with open(dir + str(x), 'a') as fp:
            for y in range(0, 514):
                fp.write(str(random.randint(0,2300))+'\n')


def main():
    args = _handle_args()
    amount_of_seeds = int(args.amount)
    out_dir = args.seed_dir
    gen_seeds(amount=amount_of_seeds, dir=out_dir )





if __name__ == "__main__":
    main()