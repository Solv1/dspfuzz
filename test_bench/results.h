/**
 *
 * Written by Santiago Garcia 2024
 *
 * results.h -- Helper file containing functions to report results.
 *
 */

#ifndef RESULTS_H
#define RESULTS_H

#define SUCCESS 42
#define FAILURE -1
#define FLOAT_SUPPORT 1
typedef struct THTestResults
   {
   int         iterations;
   unsigned long             duration;
   unsigned short             CRC;
   size_t            v1;
   size_t            v2;
   size_t            v3;
   size_t            v4;
   const char *bench_mark;
   }
THTestResults;

int report_results( const THTestResults *results, int Expected_CRC, int prog_iterations )
{
    int exit_code = SUCCESS;

/* Used to unload double from two vx results variables */
#if VERIFY_FLOAT && FLOAT_SUPPORT
    typedef union {
        double  d;
        size_t  v[2];
    } d_union;
    d_union dunion;
#endif
/* Initial Information Header */
    printf( ">>------------------------------------------------------------\n" );
    printf( ">> Target Processor         : C5515\n");
    printf( ">> Target Platform          : TMS320\n");
    printf( ">> Programmed Iterations    : %d\n", prog_iterations);
    printf( ">> Bench Mark               : %s\n", results->bench_mark);
/* Standard Results Section */

#if     CRC_CHECK
    printf(  "--  Intrusive CRC     = %4x\n",results->CRC);
#elif   NON_INTRUSIVE_CRC_CHECK
    printf(  "--  Non-Intrusive CRC = %4x\n",results->CRC);
#else
    printf(  "--  No CRC check      = 0000\n");
#endif
    printf(  "--  Iterations        = %5u\n", results->iterations );
    printf(  "--  Target Duration   = %5u\n", results->duration );
#if     VERIFY_INT
    printf(  "--  v1                = %d\n", results->v1);
    printf(  "--  v2                = %d\n", results->v2);
    printf(  "--  v3                = %d\n", results->v3);
    printf(  "--  v4                = %d\n", results->v4);
#endif
#if     VERIFY_FLOAT && FLOAT_SUPPORT
    dunion.v[0] = results->v1;
    dunion.v[1] = results->v2;
    printf(  "--  v1v2              = %f\n", dunion.d);
    dunion.v[0] = results->v3;
    dunion.v[1] = results->v4;
    printf(  "--  v3v4              = %f\n", dunion.d);
#endif

#if     FLOAT_SUPPORT
   if (results -> duration > 0)
      {
      double fduration;
      double fiterations;
      double ticks_per_sec;
      double its_per_sec;

      /* Ok, lets do this in floating point.... */

      fduration = results -> duration;
      fiterations = results->iterations;
      ticks_per_sec = 1000000;

      its_per_sec = fiterations / ( fduration / ticks_per_sec );

      printf( "--  Iterations/Sec  = %12.3f\n", its_per_sec );
      printf( "--  Total Run Time  = %12.3fsec\n", fduration / ticks_per_sec );
      printf( "--  Time / Iter     = %18.9fsec\n", 1.0 / its_per_sec );
      }
#endif

   /* Failure Section */
#if     CRC_CHECK || NON_INTRUSIVE_CRC_CHECK
    if( results->CRC != Expected_CRC ){
        printf("--  Failure: Actual CRC %x, Expected CRC %x\n",results->CRC,Expected_CRC);
        exit_code = FAILURE;
    }
#endif

    if (prog_iterations != results->iterations) {
        printf("--  Failure: Actual iterations %x, Expected iterations %x\n",results->iterations,prog_iterations);
        exit_code = FAILURE;
    }

    if (exit_code == FAILURE){
        printf("Failure: benchmark failed to complete. \n");
    }
    else{
        printf("Success: benchmark ran. \n");
    }

    return  exit_code;
}
#endif
