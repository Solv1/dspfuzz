/**
 *
 * Copyright (C) EEMBC(R) All Rights Reserved
 *
 * This software is licensed with an Acceptable Use Agreement under Apache 2.0.
 * Please refer to the license file (LICENSE.md) included with this code.
 *
 */

#include "algo.h"
#include "stdio.h"
#include "time.h"
#include "results.h"
/*#include "therror.h"*/

#if		VERIFY_FLOAT && FLOAT_SUPPORT
#include "verify.h"		/* diffmeasure */
#endif

#include <stdlib.h> /* atoi */
#include <stdio.h>

#define SUCCESS 42
#define FAILURE -1

/*------------------------------------------------------------------------------
 * Clock Defines
 */
static clock_t start_time;
static clock_t stop_time;

/*------------------------------------------------------------------------------
 * Test Component Definition Structure
 */

int    t_run_test( size_t iterations, int argc, const char* argv[] );
/*int    test_main( struct TCDef** tcdef, int argc, const char* argv[] );*/

/* Define iterations */
#if !defined(ITERATIONS) || CRC_CHECK || ITERATIONS==DEFAULT
#undef ITERATIONS
#if CRC_CHECK
#define ITERATIONS 5000	/* required iterations for crc */
#else
#define ITERATIONS 5000	/* recommended iterations for benchmark */
#endif
#endif

#if CRC_CHECK
#define EXPECTED_CRC	0x0000
#elif NON_INTRUSIVE_CRC_CHECK

#if defined(DATA_1)
#define EXPECTED_CRC			0x5943
#elif defined(DATA_2)
#define EXPECTED_CRC			0x9e45
#else
#define EXPECTED_CRC			0x981b
#endif

#else
#define EXPECTED_CRC	0x0000
#endif




typedef struct TCDef{
   /*------------------------------------
    * This section is the same
    * for all versions of this structure
    */
   char             eembc_bm_id[ 16 ];/* id flag */
   char             member[ 16 ];     /* the member id */
   char             processor[ 16 ];  /* the processor id */
   char             platform[ 16 ];   /* the platform id */
   char             desc[ 64 ];       /* benchmark description */
   unsigned short            revision;         /* The revision of this structure. */

   /*------------------------------------*/

   struct TCDef*   next;  /* pointer to the next TCDef
                           * This is how multiple benchmarks in
                           * on image is supported. */

   /*------------------------------------*/

   int  th_vnum_required;  /* TH Version Required        */
   int  target_vnum_required;  /* Target Hardware Version Required */
   int  bm_vnum;  /* the version of this bench mark */
   int       rec_iterations;


}TCDef;

static TCDef the_tcdef = 
   {
    "TEL autcor00   ",
   "None",
   "TMS3205515",
   "USBStick",
   "Autocorrelation Bench Mark V1.0E0",
   
   0,
   
   NULL, /* pointer to the next TCDef */

   /* TH Version Number Required */
    4, 0, 0, 0,


   };


/*------------------------------------------------------------------------------
 * Local Data
*/

/* >> IMPORTANT NOTE << 
 *
 * Since benchmarks can be entered (run) multiple times, the benchmark
 * MUST NOT depend on global data being initialized.  E.g. it must
 * complelty initialize itself EVERY TIME its t_run_test() function
 * is called.
 * 
*/
#define FLOAT_SUPPORT 1
#define VERIFY_FLOAT 0
#define VERIFY_INT 1
#define DATA_1 0
#define DATA_2 1

/* encapsulated data */ 
#if	DATA_1
#define MAX_DATA_SIZE 16  /* this is the actual file size */ 
#define OUTFILENAME "xpulseiOutput.dat"
static  int input_buf[] = {
#include "xpulsei.dat"
};
static double test_buf[] = {
#include "vpulseai.dat"
}; 
#define NUMBER_OF_LAGS	8

#elif DATA_2

#define MAX_DATA_SIZE 1024  /* this is the actual file size */ 
#define OUTFILENAME "xsineiOutput.dat"
static  double input_buf[] = {
#include "xsinei.dat"
};
static double test_buf[] = {
#include "vsineai.dat"
};
#define NUMBER_OF_LAGS	16

#else /* default DATA_3 */  

#define MAX_DATA_SIZE 500  /* this is the actual file size */ 
#define OUTFILENAME "xspeechiOutput.dat"
static  short input_buf[] = {
#include "xspeechi.dat"
};
static long long test_buf[] = {
#include "vspeechai.dat"
};
#define NUMBER_OF_LAGS	32
#endif /* included data */ 

#define T_BSIZE   (MAX_DATA_SIZE*sizeof(short)) /* for results only */

static char* t_buf = NULL ;


/*------------------------------------------------------------------------------
 * FUNC   : t_run_test
 *
 * DESC   : called to run the test
 *
 *          This function is called to start the test.  It does not return
 *          until after the test is completed (finished).  Note, th_finished()
 *          and th_report_results() MUST be called before this function
 *          returns if results are to be report.  If these are not called
 *          then no results will be reported for the test.
 *         
 * NOTE   : after this function returns, no other functions in the test
 *          will be called.  EG, returning from this function is equivelent
 *          to returning from a main() or calling th_exit()
 *
 * RETURNS: Success if the test ran fine.  If th_finished() and
 *          th_report_results() were not called, then the test finished
 *          successfully, but there were no results and the host will
 *          not be able to measure the test's duration.
 * ---------------------------------------------------------------------------*/


int t_run_test( size_t iterations, int argc, const char* argv[] )

   {
	size_t			loop_cnt;
	THTestResults	results;
	results.bench_mark = "Autocorrelation Bench Mark V1.0E0 \n";

#if	VERIFY_FLOAT && FLOAT_SUPPORT
	e_f64			*golden_result; 
	d_union			dunion;
#endif

   /* this should accomodate a short + 2 symbols (\n) */ 
	const char		*outFilename;
	short			*InputData,*AutoCorrData;
	short			DataSize,NumberOfLags,Scale,TempVal;

#if	!CRC_CHECK && !NON_INTRUSIVE_CRC_CHECK
	short			i;
	unsigned char			*out_symbol_buffer;
	unsigned char			*stringHeadPtr;
	char			*tmp_buf;
#endif

	/*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    * First, initialize the data structures we need for the test
   */
	outFilename = OUTFILENAME;
	NumberOfLags = NUMBER_OF_LAGS;

   t_buf     = (char *) malloc( T_BSIZE );
   if( t_buf == NULL ){
       printf("Cannot Allocate Memory %s:%d",__FILE__,__LINE__);
       exit(-1);
   }
       /*th_exit( THE_OUT_OF_MEMORY, "Cannot Allocate Memory %s:%d", __FILE__, __LINE__ );*/

#if	VERIFY_FLOAT && FLOAT_SUPPORT
   	golden_result= (long long *)&test_buf;
#endif
   /* When this is defined no file uploading necesary
    * we have all the data in the executable
	* so initializing is simplier
	*/ 
    InputData	 = (short *)&input_buf;
    AutoCorrData = (short *)t_buf;
	DataSize     = MAX_DATA_SIZE;  

	if (argc < 0)
	{
		printf( "WARNING: Missing output filename  Using: %s\n",outFilename);
		NumberOfLags = NUMBER_OF_LAGS;
        printf( "WARNING: Cannot determine lags  Using: %d\n",NumberOfLags);
	}
	else {
   /* if ((argc <3) || ((NumberOfLags = atoi(argv[2])) == 0))
	{
	    outFilename = argv[1];
		NumberOfLags = NUMBER_OF_LAGS;
        printf( "WARNING: Cannot determine lags  Using: %d\n",NumberOfLags);
	}*/
	}
     
   
     /* Compute partial product scale factor based on size of data 
      * Scale = (e_s16) ceil(log10(DataSize)/log10(2.0));
      */
     TempVal = 1;
     Scale = 0;
     while(TempVal < DataSize)
       {
	 Scale++;
	 TempVal = TempVal << 1;
       }

   /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    * This is the actual benchmark
   */
   start_time = clock();  /* Tell the host that the test has begun */
   printf("Starting the benchmark!\n");

   for ( loop_cnt = 0; loop_cnt < iterations; loop_cnt++ )  /* no stopping! */
      {
   	fxpAutoCorrelation(InputData,AutoCorrData,DataSize,NumberOfLags,
	                   Scale
			   );
/* Bug 51 always true */
#if BMDEBUG
		if ( !th_harness_poll() )	break;
#endif
      }

   stop_time = clock();
   results.duration   = stop_time - start_time;  /* signal that we are finished */
   
   results.iterations = iterations;
#if		VERIFY_FLOAT && FLOAT_SUPPORT
   dunion.d          = diffmeasure (golden_result, NumberOfLags, COMPLEX, AutoCorrData, NumberOfLags, COMPLEX);
   results.v1         = dunion.v[0];
   results.v2         = dunion.v[1];
#else
   results.v1         = 0;
   results.v2         = 0;
#endif
   results.v3         = 0;
   results.v4         = 0;
   


#if		NON_INTRUSIVE_CRC_CHECK
	results.CRC = 0;
	for ( loop_cnt = 0; loop_cnt < (size_t) NumberOfLags;loop_cnt++)
		results.CRC = Calc_crc16((e_u16) AutoCorrData[loop_cnt],results.CRC);
#elif	CRC_CHECK
	results.CRC=0;
#else
	results.CRC=0;
   
   /* Calculate the size of the output buffer */ 
   TempVal   = 0;             /* reuse this variable as a counter */ 
   tmp_buf   = (char *)malloc(16); /* should acommodate largest single token */
   if( tmp_buf == NULL ){
            printf("Cannot Allocate Memory %s:%d", __FILE__, __LINE__ );
            exit(-1);
   }

   for( i=0; i<NumberOfLags; i++ ){
       TempVal += sprintf( tmp_buf, " %d\n", AutoCorrData[i]);
   }
   free(tmp_buf);

   /* Uploading is different as well,
    * Since we do not have input buffer, we need to 
	* use one of our own 
    */ 
    out_symbol_buffer  = (unsigned char *)malloc(TempVal+1);
	if( out_symbol_buffer == NULL ){
	    printf("Cannot Allocate Memory %s:%d", __FILE__, __LINE__ );
	    exit(-1);
	}

    stringHeadPtr = out_symbol_buffer; 
    for( i=0; i<NumberOfLags; i++ ){
       stringHeadPtr += sprintf((char *) stringHeadPtr, " %d\n", AutoCorrData[i]);
    }
#endif

   report_results( &results, EXPECTED_CRC, ITERATIONS );
   return SUCCESS;
 }

/*------------------------------------------------------------------------------
 * FUNC   : main
 *
 * DESC   : the test (or bench mark) main entry point
 *
 * RETURNS: Any error value.
 * ---------------------------------------------------------------------------*/

int main( struct TCDef** tcdef, int argc, const char* argv[] )

{
   argc=argc;
   argv=argv;
   /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -    
    * Point the test harness at our test defintion struction
    * Starts Benchmark.
   */
   t_run_test(ITERATIONS, (char )argc, argv);
   return 0;  
}
