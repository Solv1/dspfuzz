#ifndef _EMUCOUNTERS_H
#define _EMUCOUNTERS_H

#include <ti/mas/sdk/src/c55/emureg.h>
#include <ti/mas/types/types.h>

#define EMU_CNT_LOGIC_NOT_AVAILABLE  0
#define EMU_CNT_LOGIC_CLAIMED        1

#define AU1_CNT0_RESET 1
#define AU1_CNT1_RESET 2
#define AU1_CNT2_RESET 4
#define AU1_CNT3_RESET 8

#define EMU_CNT_LOGIC_RELEASED     1
#define EMU_CNT_LOGIC_NOT_RELEASED 0

static inline tuint emuGet16bitCounter0(void)
{
  return(*AU1_CNT0_ADDR);  
}

static inline tuint emuGet16bitCounter1(void)
{
  return(*AU1_CNT1_ADDR);
}

static inline tulong emuGet32bitCounter0(void)
{
  tuint LSB, MSB, MSBagain;
  MSB = (tuint) (*AU1_CNT1_ADDR);
  LSB = (tuint) (*AU1_CNT0_ADDR);
  if ( (MSBagain = (tuint) (*AU1_CNT1_ADDR)) != MSB) {
    LSB = 0;
  }
  return( (tulong) LSB | ((tulong) MSBagain << 16) );
}

static inline int emuClaimCounterLogic(void)
{
	// Set EALLOW to get access to non-CPU MMR
           asm("  bit(ST2, #11) = #1  ");

   if ((*AU1_CNT_ID_ADDR & AU1_CNT_ID_OWN_MASK) == AU1_CNT_ID_DEBUGGER_OWNS) {
     return(EMU_CNT_LOGIC_NOT_AVAILABLE);
   }  
   
   /* claim counter logic */
   *AU1_CNT_CNTL_ADDR = (*AU1_CNT_CNTL_ADDR & AU1_CNT_CNTL_ACNT_STATE_MASK) | 
                        AU1_CNT_CNTL_CLAIM;
                        
   /* was the claim given? */
   if (! ((*AU1_CNT_ID_ADDR & AU1_CNT_ID_OWN_MASK) == AU1_CNT_ID_APP_OWNS)) {
     return(EMU_CNT_LOGIC_NOT_AVAILABLE);
   }
   
   /* set counter 0 to count cache misses and counter 1 to count instruction NULL */
   *AU1_CNT_CNTL_ADDR = /*AU1_CNT_CNTL_CEN1_CNT_ON_EXT_CNT1   |
                        AU1_CNT_CNTL_FREE1_STOP_ON_DBG      |
                        AU1_CNT_CNTL_STOP1_NO_HALT_ON_MATCH |*/

                        AU1_CNT_CNTL_CEN0_CNT_ON_EXT_CNT0   |
                        AU1_CNT_CNTL_FREE0_STOP_ON_DBG      |
                        AU1_CNT_CNTL_STOP0_NO_HALT_ON_MATCH |
                        
                        AU1_CNT_CNTL_CM_ONE_32BIT_CNTR     |
                        0x2;
                        
   *AU1_CNT_ESEL_ADDR = /*AU1_CNT_ESEL_EQUAL1_DISABLE |
                        AU1_CNT_ESEL_ESEL1_INSTRUCTIONS |*/
                        AU1_CNT_ESEL_EQUAL0_DISABLE |
                        /*AU1_CNT_ESEL_ESEL0_INSTRUCTION_FETCH_NULL;*/ AU1_CNT_ESEL_ESEL0_CYCLES;
 
   return(EMU_CNT_LOGIC_CLAIMED);
}

static inline void emuResetCounters(unsigned int resetMask)
{
  unsigned int temp;

  temp = *AU1_CNT_CNTL_ADDR;
  
  /* disable counting temporarily, this is required otherwise the operation of 
     reseting is not successful */
  *AU1_CNT_CNTL_ADDR = (*AU1_CNT_CNTL_ADDR & AU1_CNT_CNTL_CEN0_MASK) | AU1_CNT_CNTL_CEN0_DISABLE;
  *AU1_CNT_CNTL_ADDR = (*AU1_CNT_CNTL_ADDR & AU1_CNT_CNTL_CEN1_MASK) | AU1_CNT_CNTL_CEN1_DISABLE;  
      
  if (resetMask & AU1_CNT0_RESET) *AU1_CNT0_ADDR = 0;
  if (resetMask & AU1_CNT1_RESET) *AU1_CNT1_ADDR = 0; 
  if (resetMask & AU1_CNT2_RESET) *AU1_CNT2_ADDR = 0;
  if (resetMask & AU1_CNT3_RESET) *AU1_CNT3_ADDR = 0;   

  /* restore status */
  *AU1_CNT_CNTL_ADDR = temp;
}

static inline int emuReleaseCounterLogic(void)
{
   *AU1_CNT_CNTL_ADDR = (*AU1_CNT_CNTL_ADDR & AU1_CNT_CNTL_ACNT_STATE_MASK) | 
                        AU1_CNT_CNTL_RELEASE;

   /* was release done */
   if (! ((*AU1_CNT_ID_ADDR & AU1_CNT_ID_OWN_MASK) == AU1_CNT_ID_APP_OWNS)) {
     return(EMU_CNT_LOGIC_RELEASED);
   } else {
     return(EMU_CNT_LOGIC_NOT_RELEASED);
   }
}

static inline void emuRelease(void)
{
  /* Release access to non-CPU MMR */
  asm("  bit(ST2, #11) = #0  ");
}

#endif /* _EMUCOUNTERS_H */
/* Nothing past this point */
