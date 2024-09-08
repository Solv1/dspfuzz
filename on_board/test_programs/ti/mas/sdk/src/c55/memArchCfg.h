#ifndef _MEMARCHCFG_C55_H
#define _MEMARCHCFG_C55_H

#define ST3 *((volatile int *)0x0004)

static inline void memarchcfg_cacheEnable(void)
{
    *((ioport volatile unsigned int *)0x1400) = 0xCBFF; /* GCR */
    *((ioport volatile unsigned int *)0x1403) = 0x000F; /* NWCR */ 
    *((ioport volatile unsigned int *)0x1405) = 0x0000; /* RCR1 */
    
    ST3 |= 0x2000;   /* Cache clear */
    ST3 &= 0xdfff;   
    ST3 |= 0x4000;   /* Cache Enable */
}

static inline void memarchcfg_cacheFlush(void)
{

  ST3 |= 0x2000;  /* Cache clear */
  
  while (ST3 & 0x2000);
}

#endif /* _MEMARCHCFG_C55_H */

/* Nothing past this point */
