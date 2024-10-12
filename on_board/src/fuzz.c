/**
 * fuzz.c
 */

//#include "test.h"
#include "fuzz.h"
// #include <test_fuzz.h>
#include <stdio.h>
#include <string.h>
// #include "imagelib.h"
#include <setjmp.h>
#include <assert.h>
// #include "../test_programs/ti/mas/vpe/test/src/vpesim.h"
// #include "../test_programs/ti/mas/types/types.h"
// #include <test_programs/test_functions.h>
// #include <test_programs/jpeg.h>
// #include <../test_programs/vision/vision.h>
// #include <coms.h>
// #include <../test_programs/sonar/sonar.h>
// #include <../test_programs/jpeg/jpec.h>        //Header for test program.

//#define NO_LOGGING

#define TIMEOUT 100000 /*Assuming a 100Mhz Clock*/

/*---------------------Fuzzer Defines---------------------*/
#define SEED_CAPACITY 15
#define MAX_BLOCKS_PER_INPUT 200
#define MAX_CYCLES 250           /*16 Cycles for varrious mutation strats before getting a new seed.*/

#define INCREASING 0x05
// #define ti_targets_C55_large 1


/*----------------------------------------------------------*/

#define INPUT_BUFFER_MAX 100
#define WIDTH 128 //Fixed size width for now.


#pragma DATA_SECTION(local_pool, ".program_sandbox") // Store the corpus in a sandbox away from program memory.

volatile int16_t local_pool[SEED_CAPACITY][WIDTH]; // A bunch of inputs here
volatile int16_t current_seed_num = 0; //Track which seeds are in use


// int16_t * previous_input;
// int16_t previous_size;
// int16_t * current_input;
// int16_t current_size;

// #pragma DATA_SECTION(current_input, ".program_sandbox") // Store the current_seed in a sandbox away from program memory.
// int16_t current_input[WIDTH];
int16_t * current_input;

#pragma DATA_SECTION(output_buffer, ".data_sandbox") //Keep the output here too
int16_t output_buffer[WIDTH] = {0};


volatile uint16_t coverage_map[MAX_BLOCKS_PER_INPUT] = {NULL}; //Fill the coverage map with NULL characters.
volatile uint16_t * coverage_map_head; //Head tracker of the coverage map.


volatile uint16_t return_address = 0;
//uint16_t coverage_map[MAX_COVERAGE] = {0};

int16_t retVal;
uint16_t seed_number = 0;

uint32_t * sut_start_address = 0;


uint16_t seed_head = 0;
uint16_t seed_tail = SEED_CAPACITY - 1;

bool cov_function_enter = false;

bool isIncreasing = false;

jmp_buf saved_context;

uint16_t stage_cycles = 0;

uint16_t pool_loops = 0;

volatile uint16_t iterations = 0;

volatile uint16_t mutation_degression = 1;

// extern int16_t telecom_test(int16_t * input, int16_t size );
// extern int32_t jpeg_test(uint16_t * input, uint16_t w, uint16_t h);
extern int16_t sonar_test(int16_t * input, int16_t size);
// extern int16_t test(uint16_t argc, int16_t args[]);
// extern int16_t pace_test(int16_t * raw_data, uint16_t size);
// extern int16_t process_image(int16_t * raw_sample, int16_t size);

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
    printf("LOG: Found a data log error \n");
    crash_void();
}

void crash_void(){ //The place where all bad errors go
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
//    IRQ_plug(DLOG_EVENT, &data_log_isr);            //Data Log ISR
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

    //Get the input buffer.
    current_input = calloc(WIDTH, sizeof(int16_t));
    if(current_input == NULL){
        printf("Failed to get memory for input buffer.\n");
        exit(-1);
    }

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
    //---------OLD CODE---------
    // else if(stage_cycles < 2 && mutation_degression){
    //     // Pick a random interger to start at and do this x times 
    //     //X based on mutation aggression

    //     // rnd_value = rand() % input_size;
        
    //     mutation_amount = input_size / mutation_degression;
    //     rnd_value = (rand() + mutation_amount) % input_size;
    //     //Start at either index 0 or 1 and then skip bit flips every byte
    //     for(i = rnd_value; i < (rnd_value + mutation_amount)% input_size; i++){
    //         //Walking 1-bit flip with one bit step over
    //         for(j = 0; j < 16; j=j+2){
    //             input[i] = bitflip(input[i], j);
    //             j++;
    //         }
    //         i++;
    //     }
    // }
    //---------OLD CODE--------- 
    uint16_t i, j;
    uint16_t rand_time;
    uint16_t rnd_int;
    uint16_t rnd_bit;
    uint16_t rnd_byte;
    uint16_t rnd_amount;
    uint16_t rnd_value;


    uint16_t start;
    uint16_t mutation_amount;
    rand_time = time(NULL);         //Use time() call because the clock is being used elsewhere.
    srand(rand_time);
    if(input_size == 0){
        assert("Cannot fuzz a empty input...");
    }

//Flips a random bit in the 16 bit value
#define bitflip(value, b) (value ^ (1 << b))
//Flips a random byte in the 16 bit value.
#define byteflip(value,h) (value ^ (0xFF << (h*8)))
    
    // rnd_value = (input_size/10);
    // i = 0;
    // while(i <= rnd_value){
    //     rnd_byte = rand() % input_size;
    //     input[rnd_byte] = rand() % 256;
    //     i++;
    // }
    if(mutation_degression > 2){
        //If there is mutation degression calc it here.
        mutation_amount = input_size / (input_size / mutation_degression);
        if(mutation_amount == 0){
            mutation_amount = 1;
            //Handle different input sizes here maybe a while loop counting up to adjust?
        }
        
        // if(mutation_amount < 5){
        //     mutation_amount = 5;
        // }
        // start = (rand()  % (input_size/2));        //Start at a random index here.
        start = 0;
    }
    else{
        mutation_amount = 1;
        // mutation_amount = input_size;
        start = 0;
    }

//Based on stage cycles flip more bits or bytes in a input
    // if(stage_cycles < 2 ){
    //     for(i = start; i < start + mutation_amount; i++){
    //         //Walking 1-bit flip with one bit step over
    //         for(j = stage_cycles % 2; j < 16; j++){
    //             input[i] = bitflip(input[i], j);
    //             j++;
    //         }
    //     }
    // }
    if(stage_cycles < 2 ){
        for(i = start; i < input_size; i = i + mutation_amount){
            //Walking 1-bit flip with one bit step over
            for(j = stage_cycles % 2; j < 16; j++){
                input[i] = bitflip(input[i], j);
                j++;
            }
        }
    }

    else if(stage_cycles < 4 ){
        for(i = start; i < input_size; i = i + mutation_amount){
            // Walking 2-bit flip with one bit step over
            for(j = stage_cycles % 2; j < 16; j++){
                input[i] = bitflip(input[i], j);
                input[i] = bitflip(input[i], j+1);
                j = j + 2;
            }
        }
    }
    else if(stage_cycles < 6){
        for(i = start; i < input_size; i = i + mutation_amount){
            // Walking 4-bit with one bit step over
            for(j = stage_cycles % 2; j < 16; j++){
                input[i] = bitflip(input[i], j);
                input[i] = bitflip(input[i], j+1);
                input[i] = bitflip(input[i], j+2);
                input[i] = bitflip(input[i], j+3);
                j = j + 4;
            }            
        }
    }
    else if(stage_cycles < 8){

        //walking 8-bit flip -> reminder: bytes are 16-bits here
        for(i = start; i < input_size; i = i + mutation_amount){
            input[i] = byteflip(input[i], (stage_cycles % 2));
        }
    }
    else if(stage_cycles < 10){
        //Walking full byte flip
        for(i = start; i < input_size; i = i + mutation_amount){
            input[i] = byteflip(input[i], 0);
            input[i] = byteflip(input[i], 1);
        }
    }
    else if(stage_cycles < 12){
        //Walking 32-bit flip
        for(i = start; i < input_size; i = i + mutation_amount + 2){
            if((i+1) >= start + mutation_amount){
                break;
            }
            input[i] = byteflip(input[i], 0);
            input[i] = byteflip(input[i], 1);
            input[i+1] = byteflip(input[i+1], 0);
            input[i+1] = byteflip(input[i+1], 1);
        }
    }
    
    else if(stage_cycles < 48){
        //Add a increasing value.
        for(i = start; i < input_size; i = i + mutation_amount){
            input[i] = input[i] + (stage_cycles % 35);
            i++;
        }
    }
    else if(stage_cycles < 82){
        //Subtract a increasing value.
        for(i = start; i < input_size; i = i + mutation_amount){
                input[i] = input[i] - (stage_cycles % 35);
                i++;
        }
    }
    else if(stage_cycles <= MAX_CYCLES){
        //Do a random amount of mutations
        int16_t mutation_pick = rand() % 12;

        
        rnd_value = (rand() % (100/mutation_degression));
        //orginal
        // rnd_value = (rand() % 100);
        // if(rnd_value < 1){
        //     rnd_value = 1;
        // }
        
        for(i = 0; i < rnd_value; i++){
            rnd_int = rand() % input_size;
            switch (mutation_pick)
            {
            case 0:
                input[rnd_int] = rand() % 256;
                break;
            case 1:
                input[rnd_int] = input[rnd_int] + (stage_cycles % 34);
                break;
            case 2:
                input[rnd_int] = input[rnd_int] + (stage_cycles % 256);
                break;
            case 3:
                input[rnd_int] = input[rnd_int] - (stage_cycles % 256);
                break;
            case 4:
                input[rnd_int] = input[rnd_int] - (stage_cycles % 34);
                break;
            case 5:
                rnd_int = rand() % input_size - 1;
                rnd_bit = rand() % 16;
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit);
                break;
            case 6:
                rnd_int = rand() % input_size - 1;
                rnd_bit = rand() % 16;
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit);
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit + 1);
                break;
            case 7:
                rnd_int = rand() % input_size - 1;
                rnd_bit = rand() % 16;
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit);
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit + 1);
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit + 2);
                input[rnd_int] = bitflip(input[rnd_int],rnd_bit + 3);
                break;
            case 8:
                rnd_int = rand() % input_size - 1;
                input[rnd_int] = byteflip(input[rnd_int],stage_cycles%2);
                break;
            case 9:
                rnd_int = rand() % input_size;
                input[rnd_int] = byteflip(input[rnd_int],0);
                input[rnd_int] = byteflip(input[rnd_int],1);
                break;
            case 10:
                rnd_int = rand() % input_size - 1;
                input[rnd_int] = byteflip(input[rnd_int],0);
                input[rnd_int] = byteflip(input[rnd_int],1);
                input[rnd_int+1] = byteflip(input[rnd_int+1],0);
                input[rnd_int+1] = byteflip(input[rnd_int+1],1);

                break;
            case 11:
                //set a random byte to zero
                rnd_int = rand() % input_size - 1;
                input[rnd_int] = 0;
                break;    
            }
            //Choose another random mutator to oo.
            mutation_pick = rand() % 12;

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

    int16_t * result;
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
    //If we have cycled through the seed corpus the aggression may need to go down.
	seed_head = 0;
    pool_loops++;
   }
//    if(pool_loops > 100){
//        mutation_degression = 1;
//        pool_loops = 0;
//        }
//    }
   if(pool_loops > 5){
       if(mutation_degression < 10){
           mutation_degression++;
       }
       if(mutation_degression == 10){
           mutation_degression = 1;
       }
   }
    result = memcpy(input, (int16_t *)local_pool[seed_head], WIDTH);

    if(result == NULL){
        printf("ERROR: Failed to copy seed to input buffer. \n");
    }

}


void bubble_coverage(){
    int16_t i = 0;
	return;
}


void main_harness_loop(){
/********************************************************
 * @brief main_harness_loop: harness for varrious functions
 * @param  none
 * @return void
 ********************************************************/
	retVal = 0;
    int16_t test_case_size ;
	uint16_t i;
    CSL_Handle timer_handle;
    test_case_size = 125;

    // setup(&test);
    setup(&sonar_test);

    setjmp(saved_context);

    
    while(1){
        
	iterations++;
	dequeue_seed(current_input);
    
	// mutator(current_input,WIDTH);
    mutator(current_input,test_case_size);
    
    //printf("\nLOG: Trying seed %d with Mutation Cycle %d \n", num_of_seeds, stage_cycles);

    
    //test(32,current_input);
    // communcation_test(current_input, sizeof(current_input));
    
    //filter_test(current_input,output_buffer,sizeof(current_input));
    
    //compress_and_decompress(current_input, sizeof(current_input));
    
    // jpeg_test(current_input, current_input[0]%30, current_input[1]%30);
    
    // test(test_case_size ,current_input);
    
    

    start_timer(&timer_handle);
    // pace_test(current_input,current_input[0]%test_case_size+1);
    // telecom_test(current_input, test_case_size);    
    sonar_test(current_input, test_case_size);
    // process_image(current_input,(current_input[0]%test_case_size+1));
    stop_timer(&timer_handle);

    if(cov_function_enter && (coverage_map[0] != -1)){

        bubble_coverage();

        /* Clear the coverage map*/
        for(i = 0; i < MAX_BLOCKS_PER_INPUT; i++){
            coverage_map[i] = 0;
        }
        coverage_map[0] = -1;
        coverage_map_head = &coverage_map[0];
        cov_function_enter = false;
        mutation_degression = 1;
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

