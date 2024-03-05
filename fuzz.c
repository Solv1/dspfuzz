
#include "Dsplib.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "intial_fuzz.c"
#include "file.h"

/**
 * fuzz.c
 */
//#define NO_LOGGING

#define SEED_CAPACITY 500
#define MAX_COVERAGE 500
#define RANDOM 69

short seed_corpus[SEED_CAPACITY];
short * corpus_pointer = seed_corpus;
short coverage_map[MAX_COVERAGE];
char previous_function;


#ifdef NO_LOGGING
void talkf(char * string){
    //TODO: Add simple logging function here to keep it light weight.

}
#endif


int setup(){
/********************************************************
 * @brief Inits fuzzer, testing random number generatation, and mallocing a coverage map for later use.
 * @param None
 * @return 0 on success, -1 on failure
********************************************************/

    short test[3];
    rand16init();
    if(!(rand16(test, 3))){
#ifdef NO_LOGGING
        printf("LOG: Random number init passed \n");
#endif NO_LOGGING
    }
    else{
#ifdef NO_LOGGING
        printf("ERROR: Random number init failed \n");
#endif
        return(-1);
    }

    memset(coverage_map,0,MAX_COVERAGE);

    if (coverage_map == NULL){
#ifdef NO_LOGGING
        printf("ERROR: Coverage map init failed \n");
#endif
        return(-1);
    }

    return 0;

}


int mutator(short * input, size_t size, char type){
/********************************************************
 * @brief Mutator: A input mutator
 * @param input: address of data to be mutated,
 *        size: size of the data in bytes,
 *        type: what type of mutation strategy to perform.
 * @return 0 if data successfully mutated, -1 on error
 ********************************************************/
    short result;
    if(input == NULL){
#ifdef NO_LOGGING
        printf("ERROR: Null data pointer in mutator input \n");
#endif
        return(-1);
    }
    if(type == RANDOM){
        result = rand16(input,(ushort)size);
        }
    if(result != 0 ){
#ifdef NO_LOGGING
        printf("ERROR: Random Number generation failure \n");
#endif
        return -1;
    }

    return 0;
}

void coverage_track(){
/*******************************************************
 * @brief Coverage Track: Called from SUT, label stored in T3 is used to access the coverage map.
 * @param None
 * @return None
 *******************************************************/
    short  current_function = 0;
    asm("\tMOV T3, *SP(#00h) ;"); /* Moves the current function id from register to variable */

#ifdef NO_LOGGING
    printf("Current Function Tracking: %i\n",current_function);
#endif

    coverage_map[current_function]++; /* Updates hit counts */
}



void fuzz_loop()
{
    short input[10];
    int iterations = 0;
    //insturmentor();
    setup();
    while(1)
    {
        mutator(input, sizeof(input), RANDOM);
        fflush(stdout);
        printf("Trying %d, on loop interation %d \n", input[0], iterations);
        int result = intial_fuzz(sizeof(input), (int *)input);
        if ( result == -1){
            printf("Found a 'crash' \n");
            exit(0);
        }
        iterations++;
        if(iterations % 100 == 0)
        {
            printf("---Coverage Map--- \n");
            int i;
            for (i = 0; i < 15; i++){
                printf("%d, ",coverage_map[i]);
            }
            printf("\n----------------\n");
        }
    }

}

int main(void){
    fuzz_loop();
}




