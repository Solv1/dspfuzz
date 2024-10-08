/**
 * fuzz.c
 */

//#include "test.h"
#include "fuzz.h"
//#include "test_fuzz.h"
#include <stdio.h>
#include <string.h>
#include "imagelib.h"
#include <setjmp.h>
//#include <ti/mas/vpe/test/src/vpesim.h>
#include <test_programs/test_functions.h>
//#include <test_programs/jpeg.h>
//#include <vision.h>
//#include <coms.h>
// #include <sonar.h>
#include <test_programs/jpeg/jpec.h>        //Header for test program.

//#define NO_LOGGING

#define TIMEOUT 100000 /*Assuming a 100Mhz Clock*/

/*---------------------Fuzzer Defines---------------------*/
#define SEED_CAPACITY 15
#define MAX_BLOCKS_PER_INPUT 60
#define MAX_CYCLES 16           /*16 Cycles for varrious mutation strats before getting a new seed.*/
#define INCREASING 0x05
// #define ti_targets_C55_large 1



/*----------------------------------------------------------*/

#define WIDTH 256 //Fixed size width for now.


#pragma DATA_SECTION(local_pool, ".data_sandbox") // Store the corpus in a sandbox away from program memory.

volatile int16_t local_pool[SEED_CAPACITY][WIDTH]; // A bunch of inputs here
volatile int16_t current_seed_num = 0; //Track which seeds are in use

#pragma DATA_SECTION(current_input, ".data_sandbox") // Store the current_seed in a sandbox away from program memory.
int16_t current_input[WIDTH];

#pragma DATA_SECTION(output_buffer, ".data_sandbox") //Keep the output here too
int16_t output_buffer[WIDTH] = {0};


volatile int16_t coverage_map[MAX_BLOCKS_PER_INPUT] = {NULL}; //Fill the coverage map with NULL characters.
volatile int16_t * coverage_map_head; //Head tracker of the coverage map.


volatile uint16_t return_address = 0;
//uint16_t coverage_map[MAX_COVERAGE] = {0};

int16_t retVal;

uint32_t * sut_start_address = 0;

uint16_t seed_head = 0;
uint16_t seed_tail = SEED_CAPACITY - 1;

bool cov_function_enter = false;

bool isIncreasing = false;

jmp_buf saved_context;

uint16_t stage_cycles = 0;

volatile uint16_t iterations = 0;



/* Preprocessor Defines */
void crash_void();

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
            count = 0;
            printf("\nLOG: Hit a software hang\n");
            //input_printf(current_input);
            IRQ_globalDisable(); /* Disable the CPU interrupts */
            IRQ_clearAll(); /* Clear any pending interrupts */
            IRQ_disableAll(); /* Disable all the interrupts */
            crash_void();

    }
}

__interrupt void bus_error_isr(void)
{
    //seed_printf(&seed_corpus[0]);
    IRQ_clear(BERR_EVENT);
    IRQ_clearAll(); /* Clear any pending interrupts */
    printf("LOG: Found a bus error \n");
    crash_void();

}
__interrupt void data_log_isr(void)
{
    IRQ_clear(DLOG_EVENT);
    IRQ_clearAll(); // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    // printf("LOG: Found a data log error \n");
    crash_void();
}

void crash_void(){ //The place where all bad errors go
    while(1);
}


// void input_printf(int16_t * input, int16_t size){
// /********************************************************
//  * @brief seed_printf: A seed printer
//  * @param type: seed struct of your choice
//  * @return NONE
//  ********************************************************/
//     int i;
//     //printf("--------Inputs--------\n");
//     printf("RESULTS: Input:");
//     for(i = 0; i < size; i++){
//         printf("%c",input[i]);
//     }
//     printf("\n");
//     //printf(",Colum:%u,Row:%u\n",input[0],input[1]);

// }

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
    hwConfig.preScaleDiv = GPT_PRE_SC_DIV_0;
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

    memset(&coverage_map,NULL,sizeof(coverage_map));
    coverage_map[0] = -1;
    memset(&local_pool, 0, sizeof(local_pool));
    coverage_map_head =  &coverage_map[0];
    sut_start_address = ((uint32_t *)function_pointer); /*Finds the offset in memory of the start of our sut */

        if (coverage_map == NULL ){
    #ifdef NO_LOGGING
            printf("ERROR: Coverage map init failed \n");
    #endif
            return(-1);
        }



    return 0;

}



void mutator(int16_t * input, size_t input_size){
/********************************************************
 * @brief Mutator: A input mutator
 * @param input: pointer to input 
 *        input_size: size of the input
 * @return void
 ********************************************************/
        uint16_t i, j, k;
        uint16_t rand_time;
        uint16_t random_value;
        rand_time = time(NULL);         //Use time() call because the clock is being used elsewhere.
        srand(rand_time);
        //random_value = rand() % 16;

        //uint16_t random_stage = random_value % 16;

//Flips a random bit in the 16 bit value
#define bitflip(value, bit) (value ^ (1 << bit))

//Flips a random byte in the 16 bit value.
#define byteflip(value) (value ^ (0xFF << ((rand() % 2)*8)))

        if(stage_cycles < 2){
            for(i = 0; i < input_size; i++){
                //Choose at random rather we start with the first bit postion or the second
//                random_value = rand();
                //Walking 1-bit flip with one bit step over
                for(j = 0; j < 16; j=j+2){
                    input[i] = bitflip(input[i], j);
                    j++;
                }
		    
            }
        }
        else if(stage_cycles < 4){
            for(i = 0; i < input_size; i++){
                // Walking 2-bit flip with one bit step over
//                random_value = rand();
                for(j = 0; j < 16; j = j+3){
                    input[i] = bitflip(input[i], j);
                    input[i] = bitflip(input[i], j+1);
                    j = j + 2;
                }
            }
        }
        else if(stage_cycles < 7){
            for(i = 0; i < input_size; i++){

                // Walking 4-bit with one bit step over
                random_value = rand();
                for(j = 0; j < 16; j= j + 5){
                    input[i] = bitflip(input[i], j);
                    input[i] = bitflip(input[i], j+1);
                    input[i] = bitflip(input[i], j+2);
                    input[i] = bitflip(input[i], j+3);
                    j = j + 4;
                }            
            }
        }
        else if(stage_cycles < 9){

            for(i = 0; i < input_size; i++){
                input[i] = byteflip(input[i]);
           }
        }
        else if(stage_cycles < 11){

            // Chose a random operation to do on a value + or -
            random_value = rand();
            switch (random_value % 2)
            {
            case 0:
                //TODO: This could use some work...
                for(i = 0; i < input_size; i++){
                    input[i] = input[i] + (random_value % 33);
                    random_value = rand();
                }
                break;
            case 1:
                for(i = 0; i < input_size; i++){
                    input[i] = input[i] - (random_value % 33);
                    random_value = rand();
                }
                break;
    
            }

        }
        else if(stage_cycles < 16){
            //Do a random amount of mutations
            int16_t mutation_pick = rand() % 5;
            random_value = rand() % 5 + 2;
            for(i = 0; i < random_value; i++){
                switch (mutation_pick)
                {
                case 0:
                    //TODO: This could use some work...
                    for(j = 0; j < input_size; j++){
                        input[j] = input[j] + (rand() % 33);
                        
                    }
                    break;
                case 1:
                    for(j = 0; j < input_size; j++){
                        input[j] = input[j] - (rand() % 33);
                    }
                    break;
                case 2:
                    //Walking 1-bit flip with one bit step over
                    for(j = 0; j < input_size; j++){
                        for(k = 0; k < 16; k = k+2){
                            input[j] = bitflip(input[j], k);
                            k++;
                        }   
                    }
                    break;
                case 3: 
                    for(j = 0; j < input_size; j++){
                        for(k = 0; k < 16; k = k+3){
                            input[j] = bitflip(input[j], k);
                            input[j] = bitflip(input[j], k+1);
                            k = k + 2;
                        }       
                    }
                    break;
                case 4:
                    for(j = 0; j < input_size; j++){
                        for(k = 0; k < 16; k = k+5){
                            input[j] = bitflip(input[j], k);
                            input[j] = bitflip(input[j], k+1);
                            input[j] = bitflip(input[j], k+2);
                            input[j] = bitflip(input[j], k+3);
                            k = k + 4;
                        }
                    }
                    break;
                case 5:
                    for(j = 0; j < input_size; j++){
                        input[j] = byteflip(input[j]);
                    }    
                }
                //Choose another random mutator to oo.
                mutation_pick = rand() % 6;

            }
        
    }
    stage_cycles++;
}


void dequeue_seed(int16_t * input){
/********************************************************
 * @brief dequeue_seed: handles need seeds being loaded into the input buffer 
 * @param input: pointer to the input buffer
 * @return void
 ********************************************************/

    uint16_t * result;
    //At the end of queue set it back to the beggining
    //Corpus will loop continously.
    if(seed_head == seed_tail){
        seed_head = 0;
    }

   if(stage_cycles == MAX_CYCLES){
	stage_cycles = 0;
	seed_head++;
   }
   if(seed_head >= current_seed_num){
	seed_head = 0;
   }
    result = memcpy(input, (int16_t *)local_pool[seed_head], WIDTH);

    if(result == NULL){
        printf("ERROR: Failed to copy seed to input buffer. \n");
    }

}


void bubble_coverage(){
	return;
}


void main_harness_loop(){
/********************************************************
 * @brief main_harness_loop: harness for varrious functions
 * @param  none
 * @return void
 ********************************************************/
	retVal = 0;
	uint16_t i;
    CSL_Handle timer_handle;

    // setup(&pace_test);

    setjmp(saved_context);

    
    while(1){
        
	iterations++;
	dequeue_seed(current_input);
        
	mutator(current_input,WIDTH);

    //printf("\nLOG: Trying seed %d with Mutation Cycle %d \n", num_of_seeds, stage_cycles);

    //start_timer(&timer_handle);
    //test(32,current_input);
    // communcation_test(current_input, sizeof(current_input));
    //sonar_test(current_input, sizeof(current_input));
    //filter_test(current_input,output_buffer,sizeof(current_input));
    //pace_test(current_input,sizeof(current_input));
    //compress_and_decompress(current_input, sizeof(current_input));
    //process_image(current_input, sizeof(current_input));
    //vpe_test(current_input, output_buffer);
    //stop_timer(&timer_handle);


    jpeg_test(current_input, 16, 16);


    if(cov_function_enter && (coverage_map[0] != -1)){

        bubble_coverage();

        /* Clear the coverage map*/
        for(i = 0; i < MAX_BLOCKS_PER_INPUT; i++){
            coverage_map[i] = 0;
        }
        coverage_map[0] = -1;
        coverage_map_head = &coverage_map[0];
        cov_function_enter = false;
    }
    else if(cov_function_enter){
    printf("ERROR: Coverage map is zeroed but flag is set. \n");
    }

        longjmp(saved_context, true);


    }
}

int main(void){

    main_harness_loop();
}

