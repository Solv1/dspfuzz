/**
 * fuzz.c
 */

#include "test.h"
#include "fuzz.h"
#include "fuzz_log.h"

//#define NO_LOGGING

#define TIMEOUT 5000 /*Timeout is in milliseconds*/

/*---------------------Fuzzer Defines---------------------*/

#define RANDOM 5
#define SEED_CAPACITY 10
#define MAX_COVERAGE 16411 /*14 bits 2 entries per function = 32822 entries*/
#define STORAGE_MAX 50
#define CRASH 0x01       /* Fuzzer */
#define HANG 0x02        /*        */
#define INCREASING 0x04  /* Flags */


seed seed_corpus[SEED_CAPACITY];

//writeover_pointers points[MAX_COVERAGE];


uint16_t coverage_map[MAX_COVERAGE] = {0};

uint16_t crash_buffer[STORAGE_MAX] = {0};
uint16_t  crash_iterator = 0;

uint16_t hang_buffer[STORAGE_MAX] = {0};
uint16_t hang_iterator = 0;

uint32_t sut_start_address = 0;

volatile bool    isHang = false;
volatile bool isIncreasing = false;
 bool isBufferFull = false;

jmp_buf saved_context;

/*------------------------------------------------------------*/


/*--------------------Interrupt Variables--------------------*/
Uint32    cpuCycleCount = 0;
Uint32    sysClk;
volatile uint32_t count = 0;
bool isTest = true;
/*-----------------------------------------------------------*/


interrupt void fuzzer_isr(void)
/********************************************************
 * @brief fuzzer_isr interrupt service reutine to track software stalls or hangs.
 * @param TIMEOUT: a define that sets the SUT timeout
 * @return VOID always
********************************************************/
{
    IRQ_clear(TINT_EVENT);
    CSL_SYSCTRL_REGS->TIAFR = 0x01;/* Clear Timer Interrupt Aggregation Flag Register (TIAFR) */
    count++;
    if (count % TIMEOUT == 0){
            isHang = true;
            count = 0;
            longjmp(saved_context, true);
    }
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

    IRQ_setVecs((Uint32)(&VECSTART));
    IRQ_plug(TINT_EVENT, &fuzzer_isr);
    IRQ_enable(TINT_EVENT);

    hwConfig.autoLoad    = GPT_AUTO_ENABLE;
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
        return (CSL_TEST_FAILED);
    }
    else
    {
        printf("LOG: Timer Stopped Successful\n");
#endif
    }

    status = GPT_reset(*timer_handle);

}


int16_t setup(){
/********************************************************
 * @brief Inits fuzzer, testing random number generatation, and sets the coverage map to zero.
 * @param None
 * @return 0 on success, -1 on failure
********************************************************/

    memset(coverage_map,0,sizeof(coverage_map));
    memset(hang_buffer, 0, sizeof(hang_buffer));
    memset(crash_buffer, 0, sizeof(crash_buffer));

    sut_start_address = (uint32_t)&intial_fuzz; /*Finds the offset in memory of the start of our sut */

    if (coverage_map == NULL || hang_buffer == NULL || crash_buffer == NULL){
#ifdef NO_LOGGING
        printf("ERROR: Coverage map init failed \n");
#endif
        return(-1);
    }


    return (int16_t)0;

}


int16_t mutator(uint8_t type){
/********************************************************
 * @brief Mutator: A input mutator
 * @param type: what type of mutation strategy to perform.
 * @return 0 if data successfully mutated, -1 on error
 ********************************************************/
    if(type == RANDOM){
        int i;
        uint16_t rand_time;
        for (i = 0; i < SEED_CAPACITY; i++){
             rand_time = clock();
             srand(rand_time);
             seed_corpus[i].seed_input = (uint16_t)rand();
        }
    }

    return 0;
}

void track_coverage(uint32_t raw_value)
/*************************************************************************
 * @brief coverage_hash: Takes a 24-bit address and indicates coverage in coverage map
 * @param raw_value: raw 24-bit value to be hashed
 * @return NONE
*************************************************************************/
{
    /* How the coverage map is in memory (uint16_t) (00000000|00000000) */
    /*                                               0x402    0x403     */
    uint16_t index = 0;
    uint16_t byte_index = 0;

    raw_value = raw_value - sut_start_address; /*Minus start address from the current address to hopefully reduce collisions. */

    index = (uint16_t)(raw_value % (MAX_COVERAGE*2)); /*Simple MOD hash * 2 because we are addressing in 2 byte chunks*/

    index = index >> 1; /* divide by 2 in order to get hash map index */

    byte_index = (raw_value >> 1) % 2; /*Which half of 2 byte we will use */

    if (byte_index){ /*Using high byte */
        coverage_map[index] |= 0x100;
    }
    else{ /* Using low byte */
        coverage_map[index] |= 0x1;
    }

}

void coverage_log(){
/*******************************************************
 * @brief coverage_log: logging function that is called from SUT instrumentation. Saves Register Context,
 * calculates where in memory the CALL _coverage_log is and then over writes it with four NOPs
 * @param None
 * @return None
 *******************************************************/
    uint32_t call_address = 0;
    uint32_t  return_address = 0;           /* Addresses are 24-bits */
    asm("\tMOV RETA, dbl(*SP(#02h)) ;");


    asm("\tPSH T2 ;" );                     /*Save register context here (Table 6-2 SPRU281F)*/
    asm("\tPSH T3 ;");
    asm("\tPSHBOTH XAR5 ;");
    asm("\tPSHBOTH XAR6 ;");
    asm("\tPSHBOTH XAR7 ;");
    asm("\tAADD #5, SP ;");                 /*Stack State Restored after pushing register context */

                                            /*Calculates where in memory the CALL is*/
    call_address = (return_address - 4);    /* 4 = Size of the CALL instruction*/
    call_address = call_address >> 1;       /*Because data memory is in 2 byte chunks and program memory is addressed in 1 byte chunks*/
    memset((uint32_t*)call_address,0x2020, 2);

#ifdef NO_LOGGING
    printf("LOG: Current Function Tracking: %d\n\0",current_function);
    printf("LOG: Coverage is at : %p\n\0", program_counter);
#endif

    track_coverage((uint32_t)return_address);

    asm("\tAADD #-5, SP ;");                /*Pops saved register state back before returning to the function*/
    asm("\tPOPBOTH XAR7 ;");
    asm("\tPOPBOTH XAR6 ;");
    asm("\tPOPBOTH XAR5 ;");
    asm("\tPOP T3 ;");
    asm("\tPOP T2 ;");

    isIncreasing = true; /*If we go into this function that means that this branch is undiscovered :)*/

}




void handle_results(uint16_t sid, uint16_t flag)
/*************************************************************************
 * @brief handle_results: Handles the results from the fuzzer changes the values of seeds in the
 * seed struct for storage later.
 * @param sid: 'seed id' what seed in the corpus we are acting on.
 * @return NONE
*************************************************************************/
{
    if((hang_iterator > STORAGE_MAX) || (crash_iterator > STORAGE_MAX)){
         isBufferFull = true;
    }

    if(flag == HANG){
        hang_buffer[hang_iterator] = seed_corpus[sid].seed_input;
        hang_iterator++;
    }
    else if(flag == CRASH){
        crash_buffer[crash_iterator] = seed_corpus[sid].seed_input;
        crash_iterator++;
    }
    else if(flag == INCREASING){
        seed_corpus[sid].isIncreasing = true;
    }
    /*Room for more flags here*/
}



void fuzz_loop()
/*************************************************************************
 * @brief fuzz_loop: The main fuzzing loop.
 * @param
 * @return 0 on success, -1 on failure
*************************************************************************/
{
    CSL_Handle timer_handle;
    uint16_t iterations = 0;
    uint16_t i;
    int16_t result;
    isBufferFull = false;


    setup();

    while(1)
    {
        mutator(RANDOM);


        for(i = 0; i < SEED_CAPACITY; i++){ /*Iterates through the seed corpus before seeing if there are interesting inputs that caused crashes or hangs*/
            if(isBufferFull){
                while(1);
            }

            printf("\nLOG: Trying %d, on loop interation %d \n", seed_corpus[i].seed_input, iterations);

            setjmp(saved_context); /*Saves context before entering the function to restore control in the case of a stall*/

            start_timer(&timer_handle);

            if (!isHang){

                result = intial_fuzz(1, &seed_corpus[i].seed_input);
                stop_timer(&timer_handle);

                if ( result == -1){ /* -1 is just a simple way to mimic a "crash" */
                    printf("LOG: Found a 'crash' with input %d \n", seed_corpus[i].seed_input);
                    handle_results(i, CRASH);
                }
            }
            else{

                stop_timer(&timer_handle);
                printf("LOG: Hang or Stall Detected with input %d \n", seed_corpus[i].seed_input);
                handle_results(i, HANG);
                isHang = false;
            }
            if(isIncreasing){

                printf("LOG: Interesting Input Increased Coverage %d \n", seed_corpus[i].seed_input);
                handle_results(i,INCREASING);
                isIncreasing = false;

                }

            iterations++;

            }
        if((iterations % 20) == 0){
            printf("LOG: Hanged inputs ");
            for(i = 0; i < STORAGE_MAX; i++){
                uint16_t input = hang_buffer[i];
                if (input == 0){
                    break;
                }
                else{
                    printf("%d ",input);
                }

            }
            printf("\nLOG: Crashed inputs ");
            for(i = 0; i < STORAGE_MAX; i++){
                uint16_t input = crash_buffer[i];
                if (input == 0){
                    break;
                }
                else{
                    printf("%d ",input);
                }
            }
         }

   }
}

int main(void){

    fuzz_loop();
}





