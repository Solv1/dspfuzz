/**
 * fuzz.c
 */

#include "test.h"
#include "fuzz.h"
#include "fuzz_log.h"
#include <stdio.h>
#include <string.h>
#include "imagelib.h"


//#define NO_LOGGING

#define TIMEOUT 10000 /*Timeout is in milliseconds*/

/*---------------------Fuzzer Defines---------------------*/
#define SEED_CAPACITY 15
#define MAX_COVERAGE 16384      /*14 bits 2 entries per function = 32822 entries*/

#define NO_ERROR 0x00           /* Fuzzer Flags */
#define HANG 0x02
#define BUS_ERROR 0x03
#define DATA_LOG_ERROR 0x04
#define INCREASING 0x05
/*----------------------------------------------------------*/

#define WIDTH 256 //Fixed size width for now.

typedef struct seed_t{ //Add seed id?
    int16_t input[WIDTH];
    int16_t output[WIDTH];
    uint16_t seed_id;
    bool isInteresting;
} seed_t;


#pragma DATA_SECTION(seed_corpus, ".data_sandbox") // Store the corpus in a sandbox away from program memory.
volatile seed_t seed_corpus[SEED_CAPACITY];


#pragma DATA_SECTION(current_seed, ".data_sandbox") // Store the current_seed in a sandbox away from program memory.
seed_t  current_seed;

volatile uint16_t ids[SEED_CAPACITY]; //Need to keep track of these as the fuzzer executes testcases.

uint16_t coverage_map[MAX_COVERAGE] = {0};

uint32_t sut_start_address = 0;


uint16_t seeds_remaining = SEED_CAPACITY; //Assume that the debugger loads a total of 30 seeds.

uint16_t seed_head = 0;
uint16_t seed_tail = SEED_CAPACITY - 1;

bool isIncreasing = false;

uint16_t isError = NO_ERROR;

jmp_buf saved_context;

volatile bool corpusWaiting = true;     //Flag set by Host PC side


/* Preprocessor Defines */
void image_library_harness();
void seed_printf(struct seed_t * seed);
void the_void();

/*------------------------------------------------------------*/


/*--------------------Interrupt Variables--------------------*/
Uint32    cpuCycleCount = 0;
Uint32    sysClk;
uint32_t count = 0;
bool isTest = true;
/*-----------------------------------------------------------*/


__interrupt void fuzzer_isr(void)
/********************************************************
 * @brief fuzzer_isr interrupt service reutine to track software stalls or hangs.
 * @param TIMEOUT: a define that sets the SUT timeout
 * @return VOID always
********************************************************/
{
    IRQ_clear(TINT_EVENT);
    CSL_SYSCTRL_REGS->TIAFR = 0x01;/* Clear Timer Interrupt Aggregation Flag Register (TIAFR) */
    count++;
    if ((count % TIMEOUT) == 0){
            isError = HANG;
            count = 0;
            printf("\nLOG: Hit a software hang\n");
            seed_printf(&current_seed);
            IRQ_globalDisable(); /* Disable the CPU interrupts */
            IRQ_clearAll(); /* Clear any pending interrupts */
            IRQ_disableAll(); /* Disable all the interrupts */
            longjmp(saved_context, true);
    }
}

__interrupt void bus_error_isr(void)
{
    //seed_printf(&seed_corpus[0]);
    IRQ_clear(BERR_EVENT);
    IRQ_clearAll(); /* Clear any pending interrupts */
    printf("LOG: Found a bus error \n");
    seed_printf(&current_seed);
    isError = BUS_ERROR; // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    the_void();

}
__interrupt void data_log_isr(void)
{
    IRQ_clear(DLOG_EVENT);
    IRQ_clearAll(); // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    printf("LOG: Found a data log error \n");
    seed_printf(&current_seed);
    isError = DATA_LOG_ERROR;
    the_void();
}

void the_void(){ //The place where all bad errors go
    while(1);
}

void memset_volatile(volatile void * addr, uint16_t ch, size_t range){ //Because of undefined behavior with memset and volatile pointers we have to write one ourself.
    uint16_t i;

    for(i = 0; i < range; i++){
        *((volatile uint16_t *)(addr) + i) = ch;
    }

}

void seed_printf(struct seed_t * seed){
/********************************************************
 * @brief seed_printf: A seed printer
 * @param type: seed struct of your choice
 * @return NONE
 ********************************************************/
    int i;
    //printf("--------Inputs--------\n");
    printf("RESULTS: Input:");
    for(i = 0; i < sizeof(seed->input); i++){
        printf("%u",seed->input[i]);
    }
    printf(",Colum:%u,Row:%u\n",seed->input[0],seed->input[1]);

}

void start_timer(CSL_Handle * timer_handle){
/*************************************************************************
 * @brief start_timer: Starts the timer to attempt to detect timeouts or program stalls.
 * @param
 * @return 0 on success, -1 on failure
*************************************************************************/
    int16_t    status;
    CSL_Config    hwConfig;
    CSL_GptObj    gptObj;
    *timer_handle = GPT_open (GPT_0, &gptObj, (CSL_Status *)&status); /* Open the CSL GPT module */
    if((NULL == *timer_handle) || (CSL_SOK != status))
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Open Failed\n");
    }
    else
    {
        printf("LOG: GPT Open Successful\n");
#endif
    }

    status = GPT_reset(*timer_handle); /* Reset the GPT module */
    if(CSL_SOK != status)
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Reset Failed\n");
//        return (CSL_TEST_FAILED);
    }
    else
    {
        printf("LOG: GPT Reset Successful\n");
#endif
    }

    IRQ_clearAll(); /* Clear any pending interrupts */

    IRQ_disableAll(); /* Disable all the interrupts */

    IRQ_setVecs((Uint32)(&VECSTART));               // This section adds ISR to the interrupt vector table
    IRQ_plug(BERR_EVENT, &bus_error_isr);           //Bus Handler ISR
    IRQ_plug(DLOG_EVENT, &data_log_isr);            //Data Log ISR
    IRQ_plug(TINT_EVENT, &fuzzer_isr);              //Timer ISR
    IRQ_enable(DLOG_EVENT);
    IRQ_enable(BERR_EVENT);
    IRQ_enable(TINT_EVENT);

    hwConfig.autoLoad    = GPT_AUTO_ENABLE;         // Some clock config
    hwConfig.ctrlTim     = GPT_TIMER_ENABLE;
    hwConfig.preScaleDiv = GPT_PRE_SC_DIV_1;
    hwConfig.prdLow      = (sysClk)/4;
    hwConfig.prdHigh     = 0x0000;

    status =  GPT_config(*timer_handle, &hwConfig); /* Configure the GPT module */
    if(CSL_SOK != status)
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Config Failed\n");
        //return (CSL_TEST_FAILED);
    }
    else
    {
        printf("LOG: GPT Config Successful\n");
#endif
    }

    IRQ_globalEnable(); /* Enable CPU Interrupts */

    GPT_start(*timer_handle); /* Start the Timer */

}

void stop_timer(CSL_Handle * timer_handle){
/*************************************************************************
 * @brief stop_timer: Stops the timer and does stuff.
 * @param
 * @return 0 on success, -1 on failure
*************************************************************************/

    uint16_t status;

    IRQ_globalDisable(); /* Disable the CPU interrupts */

    IRQ_clearAll(); /* Clear any pending interrupts */

    IRQ_disableAll(); /* Disable all the interrupts */

    status = GPT_stop(*timer_handle); /* Stop the Timer */
    if(CSL_SOK != status)
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Stop Failed \n");
        //return (CSL_TEST_FAILED);
    }
    else
    {
        printf("LOG: Timer Stopped Successful\n");
#endif
    }
//    IRQ_globalEnable(); /* Enable CPU Interrupts */
    status = GPT_reset(*timer_handle);

}


int16_t setup(void * function_pointer){
/********************************************************
 * @brief Inits fuzzer, testing random number generatation, and sets the coverage map to zero.
 * @param None
 * @return 0 on success, -1 on failure
********************************************************/

    memset(&coverage_map,0,sizeof(coverage_map));
    memset(&seed_corpus, 0, sizeof(seed_t)*SEED_CAPACITY);
    //memset(&current_seed, 0, sizeof(seed_t));

    sut_start_address = *((uint32_t *)function_pointer); /*Finds the offset in memory of the start of our sut */

    if (coverage_map == NULL ){
#ifdef NO_LOGGING
        printf("ERROR: Coverage map init failed \n");
#endif
        return(-1);
    }

    return 0;

}

void mutator(struct seed_t * seed, size_t input_size){
/********************************************************
 * @brief Mutator: A input mutator
 * @param type: what type of mutation strategy to perform.
 * @return 0 if data successfully mutated, -1 on error
 ********************************************************/
        uint16_t i;
        uint16_t rand_time;
        uint16_t random_value;
        rand_time = time(NULL);         //Use time() call because the clock is being used elsewhere.
        srand(rand_time);
        random_value = rand();

//TODO: Add block mutations in here.

//Flips a random bit in the 16 bit value
#define bitflip(value) (value ^ (1 << rand() % 15))

//Flips a random byte in the 16 bit value.
#define byteflip(value) (value ^ (0xFF << rand() % 2))

//Heavy Inspo From AFL: mind you there is no byte type don't exist in this arch....
        switch (random_value % 5){

        case 0:
            for(i = 0; i < input_size; i++){
                //Walking bit
                seed->input[i] = bitflip(seed->input[i]);
            }

            break;
        case 1:
            for(i = 0; i < input_size; i++){
                // Walking 2-bit
                seed->input[i] = seed->input[i] ^ (0x03 << rand() % 9);
            }

            break;
        case 2:
            for(i = 0; i < input_size; i++){
                // Walking 4-bit
                seed->input[i] = seed->input[i] ^ (0x0F << rand() % 5);
            }

            break;
        case 3:
            for(i = 0; i < input_size; i++){
                // Walking byte
                seed->input[i] = byteflip(seed->input[i]);
           }

           break;
        case 4:
            // Chose a random operation to do on a value + - * or /
            switch (random_value % 3)
            {
            case 0:
                for(i = 0; i < input_size/3; i++){
                    seed->input[random_value % input_size] = seed->input[random_value % input_size] + random_value % UINT_MAX;
                    random_value = rand();
                }
                break;
            case 1:
                for(i = 0; i < input_size/3; i++){
                    seed->input[random_value % input_size] = seed->input[random_value % input_size] - random_value % UINT_MAX;
                    random_value = rand();
                }
                break;
            case 2:
                for(i = 0; i < input_size/3; i++){
                    seed->input[random_value % input_size] = seed->input[random_value % input_size] * random_value % UINT_MAX;
                    random_value = rand();
                }
                break;
            }

        }
}




void refresh_seed_corpus(){
/********************************************************
 * @brief refresh_seed_corpus: Breakpointed by debugger and will load a new seed corpus once entered.
 * @param type: w
 * @return NONE
 ********************************************************/

    uint16_t i = 0;


//    /********Test for queueing system********/
//    for(i = 0; i < SEED_CAPACITY; i++){
//        memset(&seed_corpus[i].input, 1, WIDTH);
//        memset(&seed_corpus[i].output, -1, WIDTH);
//        seed_corpus[i].seed_id = i+1;
//        seed_corpus[i].isInteresting = true;
//    }
//    /********End Testing Here********/
    while(corpusWaiting){
        i = 0;
    }
}

void queue_seed(struct seed_t * seed){

    //Inputs that result in increasing coverage get added back to the seed corpus queue.


    if(seed_head == seed_tail){
        seed_head = 0;
    }


    if(seed_head == 0){
        seed_corpus[seed_head] = *seed;
    }
    //Seed head is incremented in the dequeue seed.
    else{
        seed_corpus[seed_head - 1] = *seed;
    }

}

struct seed_t dequeue_seed(){
    //This function selects a seed from the corpus.
    struct seed_t  seed;


    //Check if the corpus is half full if it is refresh seed corpus.
    if(seed_head == (SEED_CAPACITY/2)){

        //Let the debugger refresh the corpus.
        corpusWaiting = true;
        refresh_seed_corpus();

    }
    //At the end of queue set it back to the beggining
    if(seed_head == seed_tail){
        seed_head = 0;
    }


    //Treating our corpus array as a first in first out queue.
    seed = seed_corpus[seed_head];

    //After we assign it set it to zero.
    memset_volatile(&seed_corpus[seed_head], 0, sizeof(seed_t));

    //Increment the seed_head
    seed_head++;

    return seed;
}

void handle_results(struct seed_t * seed){

    if (isError == HANG){

        //Raw Input Dumped and Scraped by Host PC via Python Script
        seed_printf(seed);
        isError = NO_ERROR;
    }
    else if(isIncreasing){

        isIncreasing = false;
        queue_seed(seed);
    }
    if (corpusWaiting){

        //Host Side Corpus Refresh Waiting.
        refresh_seed_corpus();

    }


}

void image_library_harness(){

    CSL_Handle timer_handle;
    uint16_t iterations = 0;
    setup(&IMG_boundary);


    //Initial Loading of the Seed Corpus
    refresh_seed_corpus();


    while(1){

            printf("\nLOG: Trying, on loop interation %d \n",iterations);

            //Need to grab a seed to mutate from our corpus
            current_seed = dequeue_seed();

            mutator(&current_seed,WIDTH);

            //Saves context before entering the function to restore control in the case of a stall
            setjmp(saved_context);

            start_timer(&timer_handle);

            if (isError == NO_ERROR){
                IMG_boundary((short *)(&(current_seed.input) + 2), (int16_t)current_seed.input[0], (int16_t)current_seed.input[1], (int16_t *)&current_seed.output, (int16_t *)&current_seed.output); //This is broken with weird inputs.
            }

           stop_timer(&timer_handle);

           isIncreasing = true;

           handle_results(&current_seed);

           iterations++;
    }
}


int main(void){

    image_library_harness();
}





