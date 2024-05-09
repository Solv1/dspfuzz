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

#define RANDOM 5
#define NORMAL 1
#define SEED_CAPACITY 5
#define MAX_COVERAGE 16384 /*14 bits 2 entries per function = 32822 entries*/
#define STORAGE_MAX 5
//#define CRASH 0x01       /* Fuzzer */
#define NO_ERROR 0x00
#define HANG 0x02
#define BUS_ERROR 0x03
#define DATA_LOG_ERROR 0x04        /*        */
#define INCREASING 0x05  /* Flags */
/*----------------------------------------------------------*/
#define WIDTH 256 //Fixed size width for now.

typedef struct seed_t{
    int16_t input[WIDTH];
    int16_t rows;
    int16_t cols;
    int16_t XY[WIDTH];
    int16_t output[WIDTH];
    bool isInteresting;
} seed_t;

#pragma DATA_SECTION(shr_memory, ".data_sandbox")
int16_t shr_memory[WIDTH * 4];

#pragma DATA_SECTION(seed_corpus, ".data_sandbox") // Store the corpus in a sandbox away from program memory.
seed_t seed_corpus[SEED_CAPACITY];

uint16_t coverage_map[MAX_COVERAGE] = {0};

uint32_t sut_start_address = 0;

uint16_t iterations = 0; // Will be set to 0 once a coverage increasing input happens

volatile bool isIncreasing = false;

volatile uint16_t isError = NO_ERROR;

 jmp_buf saved_context;

void image_library_harness(); //processor define
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
    seed_printf(&seed_corpus[0]);
    isError = BUS_ERROR; // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    the_void();

}
__interrupt void data_log_isr(void)
{
    IRQ_clear(DLOG_EVENT);
    IRQ_clearAll(); // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    printf("LOG: Found a data log error \n");
    seed_printf(&seed_corpus[0]);
    isError = DATA_LOG_ERROR;
    the_void();
}

void the_void(){ //The place where all bad errors go
    while(1);
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
    //TODO: This is where the intial seed would be pulled from somewhere.
    memset(&coverage_map,0,sizeof(coverage_map));
    memset(&seed_corpus, 0, sizeof(seed_t)*SEED_CAPACITY);

    sut_start_address = *((uint32_t *)function_pointer); /*Finds the offset in memory of the start of our sut */

    if (coverage_map == NULL ){
#ifdef NO_LOGGING
        printf("ERROR: Coverage map init failed \n");
#endif
        return(-1);
    }

    return (int16_t)0;

}

//int16_t mutator(struct seed_t * seed, size_t input_size){
///********************************************************
// * @brief Mutator: A input mutator
// * @param type: what type of mutation strategy to perform.
// * @return 0 if data successfully mutated, -1 on error
// ********************************************************/
//        uint16_t i;
//        uint16_t rand_time;
//        uint16_t random_value;
//        rand_time = time(NULL);         //Use time() call because the clock is being used elsewhere.
//        srand(rand_time);
//        random_value = rand();
//
////Flips a random bit in the 16 bit value
//#define bitflip(value) (value ^ (1 << rand() % 15))
//
////Flips a random byte in the 16 bit value.
//#define byteflip(value) (value ^ (0xFF << rand() % 2))
//
////Heavy Inspo From AFL: mind you there is no byte type don't exist in this arch....
//        switch (random_value % 5){
//
//        case 0:
//            for(i = 0; i < input_size; i++){
//                //Walking bit
//                seed->input[i] = bitflip(seed->input[i]);
//
//            }
//            //seed->cols = bitflip(seed->cols);
//            //seed->rows = bitflip(seed->rows);
//            break;
//        case 1:
//            for(i = 0; i < input_size; i++){
//                // Walking 2-bit
//                seed->input[i] = bitflip(seed->input[i]);
//                seed->input[i] = bitflip(seed->input[i]);
//
//
//            }
//            //seed->cols = bitflip(seed->cols);
//            //seed->rows = bitflip(seed->rows);
//            break;
//        case 2:
//            for(i = 0; i < input_size; i++){
//                // Walking 4-bit
//                seed->input[i] = bitflip(seed->input[i]);
//                seed->input[i] = bitflip(seed->input[i]);
//                seed->input[i] = bitflip(seed->input[i]);
//                seed->input[i] = bitflip(seed->input[i]);
//
//
//            }
//            //seed->cols = bitflip(seed->cols);
//            //seed->rows = bitflip(seed->rows);
//            break;
//        case 3:
//            for(i = 0; i < input_size; i++){
//                // Walking byte
//                seed->input[i] = byteflip(seed->input[i]);
//
//           }
//           //seed->cols = bitflip(seed->cols);
//           //seed->rows = bitflip(seed->rows);
//           break;
//        case 4:
//            // Chose a random operation to do on a value + - * or /
//            switch (random_value % 3)
//            {
//            case 0:
//                for(i = 0; i < input_size/3; i++){
//                    seed->input[random_value % input_size] = seed->input[random_value % input_size] + (1 << random_value % 6);
//                    seed->cols = seed->cols + (1 << random_value % 6);
//                    seed->rows = seed->rows + (1 << random_value % 6);
//                    random_value = rand();
//                }
//                break;
//            case 1:
//                for(i = 0; i < input_size/3; i++){
//                    seed->input[random_value % input_size] = seed->input[random_value % input_size] - (1 << random_value % 6);
//                    seed->cols = seed->cols - (1 << random_value % 6);
//                    seed->rows = seed->rows - (1 << random_value % 6);
//                    random_value = rand();
//                }
//                break;
//            case 2:
//                for(i = 0; i < input_size/3; i++){
//                    seed->input[random_value % input_size] = seed->input[random_value % input_size] * (1 << random_value % 6);
//                    seed->cols = seed->cols * (1 << random_value % 6);
//                    seed->rows = seed->rows * (1 << random_value % 6);
//                    random_value = rand();
//                }
//                break;
//            }
//
//        }
//}
int16_t mutator(size_t input_size){
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

//Flips a random bit in the 16 bit value
#define bitflip(value) (value ^ (1 << rand() % 15))

//Flips a random byte in the 16 bit value.
#define byteflip(value) (value ^ (0xFF << rand() % 2))

//Heavy Inspo From AFL: mind you there is no byte type don't exist in this arch....
        switch (random_value % 5){

        case 0:
            for(i = 0; i < input_size; i++){
                //Walking bit
                shr_memory[i] = bitflip(shr_memory[i]);

            }

            break;
        case 1:
            for(i = 0; i < input_size; i++){
                // Walking 2-bit
                shr_memory[i] = bitflip(shr_memory[i]);
                shr_memory[i+1] = bitflip(shr_memory[i + 1]);


            }

            break;
        case 2:
            for(i = 0; i < input_size; i++){
                // Walking 4-bit
                shr_memory[i] = bitflip(shr_memory[i]);
                shr_memory[i+1] = bitflip(shr_memory[i+1]);
                shr_memory[i+2] = bitflip(shr_memory[i+2]);
                shr_memory[i+3] = bitflip(shr_memory[i+3]);


            }

            break;
        case 3:
            for(i = 0; i < input_size; i++){
                // Walking byte
                shr_memory[i] = byteflip(shr_memory[i]);

           }

           break;
        case 4:
            // Chose a random operation to do on a value + - * or /
            switch (random_value % 3)
            {
            case 0:
                for(i = 0; i < input_size/3; i++){
                    shr_memory[random_value % input_size] = shr_memory[random_value % input_size] + (1 << random_value % 6);
                    random_value = rand();
                }
                break;
            case 1:
                for(i = 0; i < input_size/3; i++){
                    shr_memory[random_value % input_size] = shr_memory[random_value % input_size] - (1 << random_value % 6);
                    random_value = rand();
                }
                break;
            case 2:
                for(i = 0; i < input_size/3; i++){
                    shr_memory[random_value % input_size] = shr_memory[random_value % input_size] * (1 << random_value % 6);
                    random_value = rand();
                }
                break;
            }

        }
}

void seed_printf(struct seed_t * seed){
/********************************************************
 * @brief seed_printf: A seed printer
 * @param type: seed struct of your choice
 * @return NONE
 ********************************************************/
//    int i;
//    //printf("--------Inputs--------\n");
//    printf("RESULTS: Input:");
//    for(i = 0; i < sizeof(seed->input); i++){
//        printf("%u",seed->input[i]);
//    }
////    printf("\nXY Matrix: ");
////    for(i = 0; i < sizeof(seed->XY);i++){
////            printf("%d",seed->XY[i]);
////        }
//    printf(",Colum:%u,Row:%u\n",seed->cols,seed->rows);
    int i;
    //printf("--------Inputs--------\n");
    printf("RESULTS: Input:");
    for(i = 2; i < WIDTH; i++){
        printf("%u",shr_memory[i]);
    }
//    printf("\nXY Matrix: ");
//    for(i = 0; i < sizeof(seed->XY);i++){
//            printf("%d",seed->XY[i]);
//        }
    printf(",Colum:%u,Row:%u\n",shr_memory[1],shr_memory[0]);
}


void prepare_intial_seed(struct seed_t * seed){//TODO: Eventially I would load a seed from some outside source via the debugger maybe? or we can link it in
/********************************************************
 * @brief prepare_intial_seed: Prepares a intial seed to use in mutation
 * @param type: w
 * @return 0 on successful dequeue , -1 on error
 ********************************************************/

    uint16_t i = 0;
//    struct seed * seed = &seed_corpus[0];

    for(i = 0; i< WIDTH; i++){
        seed->input[i] = 0;
        seed->output[i] = -1;
    }
    seed->rows = 32;
    seed->cols = 16;
    seed->input[0] = 15;
    seed->input[1] = 5;
    seed->input[2] = 10;
    seed->input[3] = 99;
    seed->isInteresting = false;
}

void handle_results(struct seed_t * seed){
    if (isError == HANG){// I just dump my output to the terminal which will get caught by the debugger and logged in the python script.
        seed_printf(seed);
        //corpus_queue(seed);
        isError = NO_ERROR;
    }
    else if(isIncreasing){
        isIncreasing = false;
        //corpus_queue(seed);
    }

}

void image_library_harness(){

    seed_t * current_seed = &seed_corpus[0];
    CSL_Handle timer_handle;
    memset(shr_memory, 0 , sizeof(shr_memory));
    setup(&IMG_boundary);
    //mutator(RANDOM, &seed); //First time init with random values. Really should have a valid input here.
    prepare_intial_seed(current_seed); //prepare valid seed that we can mutate.
    //printf("test \n");
    //printf("Size of seed_corpus[0] %d \n", sizeof(seed_corpus[0]));
    while(1){
            printf("\nLOG: Trying, on loop interation %d \n",iterations);
            setjmp(saved_context); /*Saves context before entering the function to restore control in the case of a stall*/
            //mutator(NORMAL, current_seed);
            mutator(WIDTH);
            //int i;
//            for(i = 0; i < WIDTH; i++){
//                shr_memory[i] = 23;
//            }
            //current_seed->cols = 0; //Induces a bus error

            start_timer(&timer_handle);
            if (isError == NO_ERROR){
                //IMG_boundary((short *)current_seed->input, (int16_t)current_seed->rows, (int16_t)current_seed->cols, (int16_t *)current_seed->XY, (int16_t *)current_seed->output); //This is broken with weird inputs.
                IMG_boundary((short *)shr_memory, (int16_t)shr_memory[0], (int16_t)shr_memory[1], (int16_t *)(shr_memory + WIDTH), (int16_t *)(shr_memory + WIDTH)); //This is broken with weird inputs.
            }
            stop_timer(&timer_handle);


           handle_results(current_seed);
           iterations++;
           //longjmp(saved_context, true);
    }
}


int main(void){

    image_library_harness();
    //fuzz_loop();
}





