#ifndef _PROFILE_C55_H
#define _PROFILE_C55_H

#include <ti/mas/types/types.h>

/* Define profIOPort type for reading/writing timer registers */
typedef ioport volatile unsigned int* profIOPort; 


/* ---- Timer Register Addresses ---- */
#define C55X__TIM_ADDR      0x1000
#define C55X__TIM     		  *(profIOPort)C55X__TIM_ADDR

#define C55X__PRD_ADDR      0x1001
#define C55X__PRD     		  *(profIOPort)C55X__PRD_ADDR

#define C55X__TCR_ADDR      0x1002
#define C55X__TCR     		  *(profIOPort)C55X__TCR_ADDR

#define C55X__PRSC_ADDR     0x1003
#define C55X__PRSC    	    *(profIOPort)C55X__PRSC_ADDR

/* ---- Data bitfields for Timer Registers ---- */
/* TCR bits */
#define C55X__TDDR			    0
#define C55X__TDDR_SZ		    4

#define C55X__TSS				    4
#define C55X__TSS_SZ		    1

#define C55X__ARB				    5
#define C55X__ARB_SZ		    1

#define C55X__PSC				    6
#define C55X__PSC_SZ		    4

#define C55X__TLB		        10
#define C55X__TLB_SZ	      1

#define C55X__TMSOFT			  11
#define C55X__TMSOFT_SZ		  1

/* TSCR bits */
#define C55X__PREMD			    12
#define C55X__PREMD_SZ 		  1


/* Define TDDR and PRD for maximum period */
#define sdk_PROFILE_TDDR    16
#define sdk_PROFILE_PRD     65536

/* Define maximum count for wrap handling */
#define sdk_PROFILE_MAXCNT  (sdk_PROFILE_TDDR * sdk_PROFILE_PRD)


static inline tbool profile_initCycleProfiling(void)
{
  C55X__TCR   =  (1<<C55X__TSS) | (1<<C55X__TLB) | (1<<C55X__ARB);
  C55X__PRSC  =  (sdk_PROFILE_TDDR - 1);
  C55X__PRD   =  (sdk_PROFILE_PRD  - 1);
  C55X__TCR  &= ~(1<<C55X__TLB);
  C55X__TCR  &= ~(1<<C55X__TSS);

  return TRUE;
}

static inline tlong profile_getCPUcycleCount(void) 
{
  return ((tlong) sdk_PROFILE_TDDR * (sdk_PROFILE_PRD - C55X__TIM));
}

static inline void profile_closeCycleProfiling(void)
{
  C55X__TCR |=  (1<<C55X__TSS);
}

#endif /* _PROFILE_C55_H */
/* Nothing past this point */

