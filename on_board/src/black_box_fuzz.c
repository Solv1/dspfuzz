/**
 * fuzz.c
 */

#include "fuzz.h"
#include <stdio.h>
#include <string.h>
#include <setjmp.h>

/*#define NO_LOGGING*/                  /*For debugging messages.*/

#define TIMEOUT 100000             /*Assuming a 100Mhz Clock*/
#define SEED_CAPACITY 10
#define MAX_BLOCKS_PER_INPUT 200
#define MAX_CYCLES 250                  /*250 Cycles for varrious mutation strats before getting a new seed.*/
// #define WIDTH 128 //Fixed size width for now.
#define WIDTH 500                       /*Changed for certian test programs.*/




int16_t * g_inputBuffer;

uint16_t g_isTimeout = 0;

volatile uint32_t g_coverageMap[MAX_BLOCKS_PER_INPUT] = {0}; //Fill with 0's.
volatile uint32_t * g_coverageMapHead; //Head tracker of the coverage map.


uint32_t * g_sutStartAddress = 0;


bool g_covFunctionEnter = false;

static jmp_buf g_savedContext;

volatile uint16_t g_iterations = 0;

volatile uint16_t g_inputSize = WIDTH; /*Test cases needs a variable size */

Uint32    cpuCycleCount = 0;            /*Interrupt Variables*/
Uint32    sysClk;
uint32_t count = 0;

/*Fuzzing Target is External*/
//extern int16_t sonar_test(int16_t * input, int16_t size);
extern int16_t telecom_test(int16_t * input, int16_t size);
/* Preprocessor Defines */
void crash_void();


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
            g_isTimeout = 1;
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
    //printf("LOG: Found a bus error \n");
    crash_void();

}

void crash_void(){ //The place where all bad errors go
    while(1);
}

void start_timer(CSL_Handle * timerHandle){
/*************************************************************************
 * @brief start_timer: Starts the timer to attempt to detect timeouts or program stalls.
 * @param
 * @return 0 on success, -1 on failure
*************************************************************************/
    int16_t    status;
    CSL_Config    hwConfig;
    CSL_GptObj    gptObj;
    *timerHandle = GPT_open (GPT_0, &gptObj, (CSL_Status *)&status); /* Open the CSL GPT module */
    if((NULL == *timerHandle) || (CSL_SOK != status))
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Open Failed\n");
    }
    else
    {
        printf("LOG: GPT Open Successful\n");
#endif
    }

    status = GPT_reset(*timerHandle); /* Reset the GPT module */
    if(CSL_SOK != status)
    {
#ifdef NO_LOGGING
        printf("LOG: GPT Reset Failed\n");
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
    //IRQ_enable(DLOG_EVENT);
    IRQ_enable(BERR_EVENT);
    IRQ_enable(TINT_EVENT);

    hwConfig.autoLoad    = GPT_AUTO_ENABLE;         // Some clock config
    hwConfig.ctrlTim     = GPT_TIMER_ENABLE;
    hwConfig.preScaleDiv = GPT_PRE_SC_DIV_0;
    hwConfig.prdLow      = (sysClk)/4;
    hwConfig.prdHigh     = 0x0000;

    status =  GPT_config(*timerHandle, &hwConfig); /* Configure the GPT module */
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

    GPT_start(*timerHandle); /* Start the Timer */

}


void stop_timer(CSL_Handle * timerHandle){
/*************************************************************************
 * @brief stop_timer: Stops the timer and does stuff.
 * @param
 * @return 0 on success, -1 on failure
*************************************************************************/

    uint16_t status;

    IRQ_globalDisable(); /* Disable the CPU interrupts */

    IRQ_clearAll(); /* Clear any pending interrupts */

    IRQ_disableAll(); /* Disable all the interrupts */

    status = GPT_stop(*timerHandle); /* Stop the Timer */
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
    status = GPT_reset(*timerHandle);

}


int16_t setup(void * function_pointer){
/********************************************************
 * @brief Inits fuzzer, testing random number generatation, and sets the coverage map to zero.
 * @param None
 * @return 0 on success, -1 on failure
********************************************************/

    //Get the input buffer.
    g_inputBuffer = calloc(WIDTH, sizeof(int16_t));
    if(g_inputBuffer == NULL){
        #ifdef NO_LOGGING
        printf("Failed to get memory for input buffer.\n");
        #endif
        exit(-1);
    }

    memset(&g_coverageMap,0,sizeof(g_coverageMap));
    //g_coverageMap[0] = -1;
    g_coverageMapHead =  &g_coverageMap[0];
    g_sutStartAddress = ((uint32_t *)function_pointer); /*Finds the offset in memory of the start of our sut */

        if (g_coverageMap == NULL ){
    #ifdef NO_LOGGING
            printf("ERROR: Coverage map init failed \n");
    #endif
            return -1;
        }



    return 0;

}


void obtain_seed(){
    /*Wait for host to load a new seed.*/
    int16_t i = 0;
    return;

}


void finshed_execution(){
    /*Wait to bubble coverage list to host*/
    if(g_covFunctionEnter){
        uint16_t i;
        /* Clear the coverage map*/
        for(i = 0; i < MAX_BLOCKS_PER_INPUT; i++){
                g_coverageMap[i] = 0;
        }
        g_coverageMapHead = &g_coverageMap[0];
        g_covFunctionEnter = false;
    }

	return;
}


void main_harness_loop(){
/********************************************************
 * @brief main_harness_loop: harness for varrious functions
 * @param  none
 * @return void
 ********************************************************/
        CSL_Handle timerHandle;
	
        setup(&telecom_test);
	    //g_numInteresting = 0;

        //setjmp(g_savedContext);

        while(1){
        
        g_iterations++;
        count = 0;
        obtain_seed();
	unsigned int rand_num = rand();
        #ifdef NO_LOGGING
        printf("\nLOG: Trying seed %d with Mutation Cycle %d \n", g_seedHead, g_stageCycles);
        #endif

        start_timer(&timerHandle);
        telecom_test(g_inputBuffer, 35);
        stop_timer(&timerHandle);

        finshed_execution();

        /*Reset the register context*/
        //longjmp(g_savedContext, true);

        }
}

int main(void){

        main_harness_loop();
}

