/**
 * fuzz.c
 */

#include "fuzz.h"
#include <stdio.h>
#include <string.h>
#include <setjmp.h>

/*#define NO_LOGGING*/                  /*For debugging messages.*/

#define TIMEOUT 100000                  /*Assuming a 100Mhz Clock*/
#define SEED_CAPACITY 5
#define MAX_BLOCKS_PER_INPUT 200
#define MAX_CYCLES 250                  /*250 Cycles for varrious mutation strats before getting a new seed.*/
// #define WIDTH 128 //Fixed size width for now.
#define WIDTH 500                       /*Changed for certian test programs.*/

enum Mutation{
        BITFLIP1_1,		//Walking 1 bit with 1 bit step over
        BITFLIP2_1,		//Walking 2 bit with 1 bit step over
        BITFLIP4_1,		//Walking 4 bit with 1 bit step over
        BYTEFLIP1_1,	        //Walking 1 byte with 1 byte step over
        BYTEFLIP2_1,	        //Walking 2 byte with 1 byte step over
        BYTEFLIP4_1,	        //Walking 4 byte with 1 byte step over
        ADDINTVALUE,	        //Add an interesting value 1-35
        SUBINTVALUE,	        //Subtract an interesting value 1-35
        RANDOM			//Do a random amount of stacked mutations
};

#pragma DATA_SECTION(g_localPool, ".program_sandbox") // Store the corpus in a sandbox away from program memory.

volatile int16_t g_localPool[SEED_CAPACITY][WIDTH]; // A bunch of inputs here
volatile int16_t g_currentSeed = 0; //Track which seeds are in use

#pragma DATA_SECTION(g_numIntersting,".program_sandbox")
volatile uint16_t g_numIntersting = 0;


// #pragma DATA_SECTION(g_inputBuffer, ".program_sandbox") // Store the current_seed in a
int16_t * g_inputBuffer;

// #pragma DATA_SECTION(output_buffer, ".data_sandbox") //Keep the output here too
// int16_t output_buffer[WIDTH] = {0};

volatile uint16_t g_coverageMap[MAX_BLOCKS_PER_INPUT] = {0}; //Fill the coverage map with NULL characters.
volatile uint16_t * g_coverageMapHead; //Head tracker of the coverage map.

uint16_t g_nSeeds = 0;

uint32_t * g_sutStartAddress = 0;


uint16_t g_seedHead = 0;
uint16_t g_seedTail = SEED_CAPACITY - 1;

bool g_covFunctionEnter = false;

static jmp_buf g_savedContext;

uint16_t g_stageCycles = 0;

uint16_t g_poolLoops = 0;

volatile uint16_t g_iterations = 0;
volatile uint16_t g_currentMutation = 0;
volatile uint16_t g_mutationDegression = 1;

Uint32    cpuCycleCount = 0;            /*Interrupt Variables*/
Uint32    sysClk;
uint32_t count = 0;


/* Preprocessor Defines */
//extern int16_t telecom_test(int16_t * input, int16_t size );
// extern int32_t jpeg_test(uint16_t * input, uint16_t w, uint16_t h);
// extern int16_t sonar_test(int16_t * input, int16_t size);
//extern int16_t test(uint16_t argc, int16_t args[]);
// extern int16_t pace_test(int16_t * raw_data, uint16_t size);
// extern int16_t process_image(int16_t * raw_sample, int16_t size);
//extern int32_t adpcm_encode(uint16_t * input, int16_t len);
//extern int32_t mp3_encode(int16_t * test_data, int16_t g_inputSize);
// extern int16_t susan_corner(uint16_t * in);
// extern int32_t susan_smooth(uint16_t * in);
extern int16_t susan_edges(uint16_t * in);
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
            //printf("\nLOG: Hit a software hang\n");
            //input_printf(g_inputBuffer);
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
__interrupt void data_log_isr(void)
{
    IRQ_clear(DLOG_EVENT);
    IRQ_clearAll(); // Set the Error condition and go into a while loop waiting for a reset from the debugger.
    //printf("LOG: Found a data log error \n");
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
    IRQ_enable(DLOG_EVENT);
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

    memset(&g_coverageMap,NULL,sizeof(g_coverageMap));
    g_coverageMap[0] = -1;
    memset(&g_localPool, 0, sizeof(g_localPool));
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



void mutator(){
/********************************************************
 * @brief Mutator: A input mutator
 * @param input: pointer to input 
 *        g_inputSize: size of the input
 * @return void
 ********************************************************/
         
    uint16_t i, j;
    uint16_t randTime;
    uint16_t rndByte;
    uint16_t rndBit;
    uint16_t rndValue;


    uint16_t start;
    uint16_t mutation_amount;
    randTime = time(NULL);         //Use time() call because the clock is being used elsewhere.
    srand(randTime);
    if(g_inputSize == 0){
        exit(-3);
    }

//Flips a random bit in the 16 bit value
#define bitflip(value, b) (value ^ (1 << b))
//Flips a random byte in the 16 bit value.
#define byteflip(value,h) (value ^ (0xFF << (h*8)))

        /*Mutation type calced here to increase readability. Readable from host*/
        if(g_stageCycles >= 192 || g_mutationDegression > 1){
                g_currentMutation = RANDOM;
        }
        else if(g_stageCycles < 2){
                g_currentMutation = BITFLIP1_1;
        }
        else if(g_stageCycles < 4){
                g_currentMutation = BITFLIP2_1;
        }
        else if(g_stageCycles < 6){
                g_currentMutation = BITFLIP4_1;
        }
        else if(g_stageCycles < 8){
                g_currentMutation = BYTEFLIP1_1;
        }
        else if(g_stageCycles < 10){
                g_currentMutation = BYTEFLIP2_1;
        }
        else if(g_stageCycles < 12){
                g_currentMutation = BYTEFLIP4_1;
        }
        else if(g_stageCycles < 82){
                g_currentMutation = ADDINTVALUE;
        }
        else if(g_stageCycles < 152){
                g_currentMutation = SUBINTVALUE;
        }
    
    if(g_mutationDegression > 2){
        //If there is mutation degression calc it here.
        mutation_amount = g_inputSize / (g_inputSize / g_mutationDegression);
        if(mutation_amount == 0){
            mutation_amount = 1;
            //Handle different input sizes here maybe a while loop counting up to adjust?
        }
    }
    else{
        mutation_amount = 1;
    }

    start = g_stageCycles % 2;

    if(g_currentMutation == BITFLIP1_1){
        for(i = 0; i < g_inputSize; i = i + mutation_amount){
            for(j = start; j < 16 - start; j++){
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j);
                j++;
            }
        }
    }

    else if(g_currentMutation == BITFLIP2_1){
        for(i = 0; i < g_inputSize; i = i + mutation_amount){
            for(j = start; j < 16 - start; j++){
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j);
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j+1);
                j = j + 2;
            }
        }
    }
    else if(g_currentMutation == BITFLIP4_1){
        for(i = start; i < g_inputSize; i = i + mutation_amount){
            for(j = start; j < 16 - start; j++){
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j);
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j+1);
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j+2);
                g_inputBuffer[i] = bitflip(g_inputBuffer[i], j+3);
                j = j + 4;
            }            
        }
    }
    else if(g_currentMutation == BYTEFLIP1_1){
        //reminder: bytes are 16-bits here
        for(i = 0; i < g_inputSize; i = i + mutation_amount){
                g_inputBuffer[i] = byteflip(g_inputBuffer[i], (g_stageCycles % 2));
        }
    }
    else if(g_currentMutation == BYTEFLIP2_1){
        for(i = 0; i < g_inputSize; i = i + mutation_amount){
            g_inputBuffer[i] = byteflip(g_inputBuffer[i], 0);
            g_inputBuffer[i] = byteflip(g_inputBuffer[i], 1);
        }
    }
    else if(g_currentMutation == BYTEFLIP4_1){
        for(i = 0; i < g_inputSize; i = i + mutation_amount + 2){
            if((i+1) >= start + mutation_amount){
                break;
            }
            g_inputBuffer[i] = byteflip(g_inputBuffer[i], 0);
            g_inputBuffer[i] = byteflip(g_inputBuffer[i], 1);
            g_inputBuffer[i+1] = byteflip(g_inputBuffer[i+1], 0);
            g_inputBuffer[i+1] = byteflip(g_inputBuffer[i+1], 1);
        }
    }
    
    else if(g_currentMutation == ADDINTVALUE){
        //Add a increasing value.
        for(i = start; i < g_inputSize - start; i = i + mutation_amount){
                g_inputBuffer[i] = g_inputBuffer[i] + (g_stageCycles % 35);
            i++;
        }
    }
    else if(g_currentMutation == SUBINTVALUE){
        //Subtract a increasing value.
        for(i = start; i < g_inputSize - start; i = i + mutation_amount){
                g_inputBuffer[i] = g_inputBuffer[i] - (g_stageCycles % 35);
                i++;
        }
    }
    else if(g_currentMutation == RANDOM){
        //Do a random amount of mutations
        int16_t mutation_pick = rand() % 12;

        if (g_mutationDegression < 1){
                g_mutationDegression = 1;
        }

        rndValue = (rand() % (100/g_mutationDegression));
        
        for(i = 0; i < rndValue; i++){
            rndByte = rand() % g_inputSize;
            switch (mutation_pick)
            {
            case 0:
                g_inputBuffer[rndByte] = rand() % 256;
                break;
            case 1:
                g_inputBuffer[rndByte] = g_inputBuffer[rndByte] + (g_stageCycles % 34);
                break;
            case 2:
                g_inputBuffer[rndByte] = g_inputBuffer[rndByte] + (g_stageCycles % 256);
                break;
            case 3:
                g_inputBuffer[rndByte] = g_inputBuffer[rndByte] - (g_stageCycles % 256);
                break;
            case 4:
                g_inputBuffer[rndByte] = g_inputBuffer[rndByte] - (g_stageCycles % 34);
                break;
            case 5:
                rndByte = rand() % g_inputSize - 1;
                rndBit = rand() % 16;
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit);
                break;
            case 6:
                rndByte = rand() % g_inputSize - 1;
                rndBit = rand() % 16;
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit);
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit + 1);
                break;
            case 7:
                rndByte = rand() % g_inputSize - 1;
                rndBit = rand() % 16;
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit);
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit + 1);
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit + 2);
                g_inputBuffer[rndByte] = bitflip(g_inputBuffer[rndByte],rndBit + 3);
                break;
            case 8:
                rndByte = rand() % g_inputSize - 1;
                g_inputBuffer[rndByte] = byteflip(g_inputBuffer[rndByte],g_stageCycles % 2);
                break;
            case 9:
                rndByte = rand() % g_inputSize;
                g_inputBuffer[rndByte] = byteflip(g_inputBuffer[rndByte],0);
                g_inputBuffer[rndByte] = byteflip(g_inputBuffer[rndByte],1);
                break;
            case 10:
                rndByte = rand() % g_inputSize - 1;
                g_inputBuffer[rndByte] = byteflip(g_inputBuffer[rndByte],0);
                g_inputBuffer[rndByte] = byteflip(g_inputBuffer[rndByte],1);
                g_inputBuffer[rndByte+1] = byteflip(g_inputBuffer[rndByte+1],0);
                g_inputBuffer[rndByte+1] = byteflip(g_inputBuffer[rndByte+1],1);

                break;
            case 11:
                //set a random byte to zero
                rndByte = rand() % g_inputSize - 1;
                g_inputBuffer[rndByte] = 0;
                break;    
            }
            //Choose another random mutator to oo.
            mutation_pick = rand() % 12;

            }
        
        }

    g_stageCycles++;
}


void dequeue_seed(){
/********************************************************
 * @brief dequeue_seed: handles need seeds being loaded into the input buffer 
 * @param input: pointer to the input buffer
 * @return void
 ********************************************************/

    int16_t * result;
    //At the end of queue set it back to the beggining
    //Corpus will loop continously.
    if(g_seedHead == g_seedTail){
        g_seedHead = 0;
    }

   if(g_stageCycles == MAX_CYCLES){
	g_stageCycles = 0;
	g_seedHead++;
   }
   if(g_seedHead >= g_currentSeed){
    //If we have cycled through the seed corpus the aggression may need to go down.
	g_seedHead = 0;
    g_poolLoops++;
   }
//    if(g_poolLoops > 100){
//        g_mutationDegression = 1;
//        g_poolLoops = 0;
//        }
//    }
   if(g_poolLoops > 5){
       if(g_mutationDegression < 10){
           g_mutationDegression++;
       }
       if(g_mutationDegression == 10){
           g_mutationDegression = 1;
       }
   }
    result = memcpy(g_inputBuffer, (int16_t *)g_localPool[g_seedHead], WIDTH);

    if(result == NULL){
        #ifdef NO_LOGGING
        printf("ERROR: Failed to copy seed to input buffer. \n");
        #endif
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
        CSL_Handle timerHandle;
        test_case_size = 500;

        setup(&susan_edges);

        setjmp(g_savedContext);

    
        while(1){
        
        g_iterations++;
        dequeue_seed(g_inputBuffer);

        mutator(g_inputBuffer,test_case_size);

        #ifdef NO_LOGGING
        printf("\nLOG: Trying seed %d with Mutation Cycle %d \n", g_seedHead, g_stageCycles);
        #endif

        start_timer(&timerHandle);
        //jpeg_test(g_inputBuffer, g_inputBuffer[0]%30, g_inputBuffer[1]%30);
        //pace_test(g_inputBuffer,g_inputBuffer[0]%test_case_size+1);
        //telecom_test(g_inputBuffer, test_case_size);    
        //adpcm_encode((uint16_t *)g_inputBuffer, test_case_size);
        //mp3_encode(g_inputBuffer, test_case_size);
        //susan_corner(g_inputBuffer);
        //susan_smooth(g_inputBuffer);    
        susan_edges(g_inputBuffer);
        //sonar_test(g_inputBuffer, g_inputBuffer[0]%test_case_size);
        //process_image(g_inputBuffer,(g_inputBuffer[0]%test_case_size+1));
        stop_timer(&timerHandle);

        if(g_covFunctionEnter && (g_coverageMap[0] != -1)){
                g_numIntersting++;
                bubble_coverage();

                /* Clear the coverage map*/
                for(i = 0; i < MAX_BLOCKS_PER_INPUT; i++){
                        g_coverageMap[i] = 0;
                }
                g_coverageMap[0] = -1;
                g_coverageMapHead = &g_coverageMap[0];
                g_covFunctionEnter = false;
                g_mutationDegression = 1;
        }
        else if(g_covFunctionEnter){
                #ifdef NO_LOGGING
                printf("ERROR: Coverage map is zeroed but flag is set. \n");
                #endif
        }

        longjmp(g_savedContext, true);

        }
}

int main(void){

        main_harness_loop();
}

