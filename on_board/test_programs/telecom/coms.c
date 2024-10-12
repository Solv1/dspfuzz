/** coms.c
 * A surogate software for communcaiton.
 * Written by Santiago Garcia
 */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include <string.h> //For memcopy

#include <math.h>

#include <tms320.h>
#include <dsplib.h>
#include <dsplib_c.h>

#include "coms.h"

#include "lcdc_panel.h"
#include "csl_intc.h"
#include "cslr_sysctrl.h"
#include <csl_general.h>
#include "csl_sysctrl.h"

#define MAX_VALUE 255      /*8-bit resolution*/
#define REFERANCE_VOLTAGE 12.0
#define PI 3.14159265359

CSL_LcdcHandle          hLcdc;


void gen_sinc(int16_t * input, int16_t size){
    int16_t i;

    for (i = 0; i< size; i++){
        input[i] = sin(input[i])/input[i];
    }

}


int16_t analog_digital_conversion(float * analog_sig, int16_t * digital_out, int16_t size){
    int16_t i;
    
    for (i = 0; i < size; i++){
        if(analog_sig[i] > REFERANCE_VOLTAGE){
            analog_sig[i] = REFERANCE_VOLTAGE;
        }
        else if (analog_sig[i] < 0){
            analog_sig[i] = 0;
        }

        digital_out[i] = (analog_sig[i] / REFERANCE_VOLTAGE) * MAX_VALUE;
    }
    return 0;
}

int16_t noise_reduction(int16_t * in, int16_t * out, int16_t size){
    int16_t i;

    int16_t * buf = calloc(size, sizeof(int16_t));
    memcpy(buf, in, size);

    /*Figure out the sinc of our signal*/
    gen_sinc(buf, size);

    /*Lets do a FFT for the frequency domain.*/
    rfft((DATA *)in, (ushort)size, NOSCALE);

    convol((DATA *)in, (DATA *) buf, (DATA *)out, size, size); 


    return 0;
}
CSL_Status CSL_lcdcTextDisplayTest(unsigned char * input, int16_t size)
{
	unsigned char aucDisplayStr[128];
    unsigned char aucDisplayStr1[70];
    Int16                 retVal;
	CSL_Status			  status;
	CSL_LcdcObj 		  lcdcObj;
	CSL_LcdcHwSetup       lcdcLiddSetup;
	CSL_LcdcConfigLidd    configLIDD;
	CSL_LcdcLiddTiming    timingCs0LIDD;
	Uint16                lineCount;

    configLIDD.clkDiv      = 0x3;      /*clk div = 3*/
    configLIDD.fdoneIntEn  = CSL_LCDC_LIDD_FDONE_ENABLE;
    configLIDD.dmaCs0Cs1   = CSL_LCDC_LIDD_CS0;
    configLIDD.dmaEnable   = CSL_LCDC_LIDD_DMA_DISABLE;
    configLIDD.polControl  = 0x0000;
    configLIDD.modeSel     = CSL_LCDC_LIDD_ASYNC_MPU80;

    timingCs0LIDD.wSu      = 0x1F;
    timingCs0LIDD.wStrobe  = 0x3F;
    timingCs0LIDD.wHold    = 0x0F;
    timingCs0LIDD.rSu      = 0x1F;
    timingCs0LIDD.rStrobe  = 0x3F;
    timingCs0LIDD.rHold    = 0x0F;
    timingCs0LIDD.ta       = 0x01;

     /* Set up of LCDC LIDD control Register */
    lcdcLiddSetup.config    = configLIDD;
    /* Select DMA not to write to CS1 */
    lcdcLiddSetup.useCs1    = CSL_LCDC_LIDD_NOT_USE_CS1;
    /* LIDD timing control setting  */
    lcdcLiddSetup.timingCs0 = timingCs0LIDD;
    /* Currently no Extended setup is used. So initialiaze to NULL */
    lcdcLiddSetup.extendSetup = NULL;

	/* Initialize CSL LCD module */
    status = LCD_init();
	if (status != CSL_SOK)
	{
		// printf("LCD_init Failed\n");
		return(status);
	}
	// else
	// {
	// 	printf("LCD_init Successful\n");
	// }

	/* Configure GPIO for LCD */
	CSL_FINST(CSL_SYSCTRL_REGS->EBSR, SYS_EBSR_PPMODE, MODE2);
	CSL_FINST(CSL_SYSCTRL_REGS->EBSR, SYS_EBSR_SP1MODE, MODE2);

    status = SYS_setEBSR(CSL_EBSR_FIELD_PPMODE,
                         CSL_EBSR_PPMODE_0);
//    status = SYS_setEBSR(CSL_EBSR_FIELD_SP1MODE,
//                         CSL_EBSR_SP1MODE_2);
    if(CSL_SOK != status)
    {
        // printf("SYS_setEBSR failed\n");
        return(status);
    }
    CSL_GPIO_REGS->IODIR1     = CSL_LCD_GPIO_MASK;
    CSL_GPIO_REGS->IOOUTDATA1 = CSL_LCD_GPIO_MASK;

	/* Open the CSL LCD module */
	hLcdc = LCD_open(0, &lcdcObj, &status);
	if (hLcdc == NULL)
	{
		// printf("LCD_open Failed\n");
		return(CSL_ESYS_FAIL);
	}
	// else
	// {
	// 	printf("LCD_open Successful\n");
	// }

    /* LCD handled by for LIDD Controller */
	status = LCD_setup(hLcdc, &lcdcLiddSetup);
	if (status != CSL_SOK)
	{
		// printf("LCD_setup Failed\n");
		return(status);
	}
	else
	{
		// printf("LCD_setup Successful\n");
	}

    /* setup for the LCDC Panel */
	panelSetup(CSL_LCDC_LIDD_CS0);

	/* test for printing the text */
    // strcpy((char*)aucDisplayStr,"IMAGINATION IS BEGINNING OF CREATION.YOU IMAGINE WHAT YOU DESIRE");
	// strcpy((char*)aucDisplayStr1,"YOU WILL WHAT YOU IMAGINE AND AT LAST YOU CREATE WHAT YOU WILL");
	// strcat((char*)aucDisplayStr, (const char*)aucDisplayStr1);

	retVal = lcdTextPrintDMA(input, 0, CSL_LCDC_LIDD_CS0);
	if(retVal != LCDC_SOK)
	{
		// printf("lcdTextPrintDMA Failed\n");
		return(CSL_ESYS_FAIL);
	}
	// else
	// {
	// 	printf("lcdTextPrintDMA Successful\n");
	// }

	delay(100);

	for(lineCount = 0; lineCount < 8; lineCount++)
	{
		retVal = lcdClearLine(lineCount, CSL_LCDC_LIDD_CS0);
		if(retVal != LCDC_SOK)
		{
			// printf("lcdClearLine Failed\n");
			return(CSL_ESYS_FAIL);
		}

		delay(100);
	}

	/* clear complete panel */
	lcdClearPanel(CSL_LCDC_LIDD_CS0);

	// strcpy((char*)aucDisplayStr,"CSL FOR TEXAS INSTRUMENTS C5515 LCD MODULE");


	// draw_string(2,8,"TEXAS",0x0000003F,CSL_LCDC_LIDD_CS0); //RED
	// draw_string(2,32,"INSTRUMENTS",0x0000003F,CSL_LCDC_LIDD_CS0); //RED
	// draw_string(2,56,"C5515EVM",0x003F0000,CSL_LCDC_LIDD_CS0);	//BLUE
	// draw_string(2,80,"CSL2.0 Ex4",0x00003F00,CSL_LCDC_LIDD_CS0);	//GREEN
	/* clear complete panel */
    lcdClearPanel(CSL_LCDC_LIDD_CS0);

    status = LCD_close(hLcdc);
	if(status != CSL_SOK)
	{
		return(status);
    }

	return(CSL_SOK);
}


int16_t communcation_test(int16_t * input, int16_t size){
    
    int16_t real_size = size/2;

    /*Floats are 32-bits here*/
    float * real_buf = calloc((size), sizeof(int16_t));
    int16_t * out_buf = calloc(real_size, sizeof(int16_t));

    memcpy(real_buf,input,size);

    /*Need to take this analog signal and turn it into a digital one for processing*/
    analog_digital_conversion(real_buf, out_buf,real_size);
    free(real_buf);

    int16_t * in_buf = calloc(real_size, sizeof(int16_t));
    memcpy(in_buf, out_buf, real_size);
    noise_reduction(in_buf, out_buf, real_size);


    CSL_lcdcTextDisplayTest((unsigned char *)input, size);


    


    free(in_buf);
    free(out_buf);

    return 0;

}
