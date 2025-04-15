#ifndef _EMUREG_H
#define _EMUREG_H

#define AU1_EVT_CNTL	0x42e
#define AU1_EVT_ID		0x42f
#define AU1_MASKL		0x428
#define AU1_MASKH		0x429
#define AU1_REFL		0x42A
#define AU1_REFH		0x42B

/* Begin of Definitions for counter logic */

#define AU1_CNT0_ADDR   ((volatile ioport unsigned int *)0x430)
#define AU1_CNT1_ADDR   ((volatile ioport unsigned int *)0x431)
#define AU1_CNT2_ADDR   ((volatile ioport unsigned int *)0x432)
#define AU1_CNT3_ADDR   ((volatile ioport unsigned int *)0x433)

/* Begin of definitions for AU1_CNT_CNTL */
#define AU1_CNT_CNTL_ADDR ((volatile ioport unsigned int *)0x436)

#define AU1_CNT_CNTL_CEN1_MASK           (~0x7000)
#define AU1_CNT_CNTL_CEN1_SHIFT          12
#define AU1_CNT_CNTL_CEN1_DISABLE                      (0x0 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CONT_CNT                     (0x1 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_ON_AU2                   (0x2 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_ON_EXT_CNT1              (0x3 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_CONT_CNT_CLR_ON_EXT_CNT1 (0x4 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_CONT_CNT_CLR_ON_AU2      (0x5 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_ON_AU2_CLR_ON_EXT_CNT1   (0x6 << AU1_CNT_CNTL_CEN1_SHIFT)
#define AU1_CNT_CNTL_CEN1_CNT_ON_EXT_CNT1_CLR_ON_AU2   (0x7 << AU1_CNT_CNTL_CEN1_SHIFT)

#define AU1_CNT_CNTL_FREE1_MASK          (~0x0800)
#define AU1_CNT_CNTL_FREE1_SHIFT         11
#define AU1_CNT_CNTL_FREE1_STOP_ON_DBG   (0x0 << AU1_CNT_CNTL_FREE1_SHIFT)
#define AU1_CNT_CNTL_FREE1_IGNORE_DBG    (0x1 << AU1_CNT_CNTL_FREE1_SHIFT)

#define AU1_CNT_CNTL_STOP1_MASK             (~0x0400)
#define AU1_CNT_CNTL_STOP1_SHIFT            10
#define AU1_CNT_CNTL_STOP1_NO_HALT_ON_MATCH    (0x0 << AU1_CNT_CNTL_STOP1_SHIFT)
#define AU1_CNT_CNTL_STOP1_HALT_ON_MATCH       (0x1 << AU1_CNT_CNTL_STOP1_SHIFT)

#define AU1_CNT_CNTL_CEN0_MASK           (~0x0380)
#define AU1_CNT_CNTL_CEN0_SHIFT          7
#define AU1_CNT_CNTL_CEN0_DISABLE                      (0x0 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CONT_CNT                     (0x1 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_ON_AU2                   (0x2 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_ON_EXT_CNT0              (0x3 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_CONT_CNT_CLR_ON_EXT_CNT0 (0x4 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_CONT_CNT_CLR_ON_AU2      (0x5 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_ON_AU2_CLR_ON_EXT_CNT0   (0x6 << AU1_CNT_CNTL_CEN0_SHIFT)
#define AU1_CNT_CNTL_CEN0_CNT_ON_EXT_CNT0_CLR_ON_AU2   (0x7 << AU1_CNT_CNTL_CEN0_SHIFT)

#define AU1_CNT_CNTL_FREE0_MASK          (~0x0040)
#define AU1_CNT_CNTL_FREE0_SHIFT         6
#define AU1_CNT_CNTL_FREE0_STOP_ON_DBG   (0x0 << AU1_CNT_CNTL_FREE0_SHIFT)
#define AU1_CNT_CNTL_FREE0_IGNORE_DBG    (0x1 << AU1_CNT_CNTL_FREE0_SHIFT)

#define AU1_CNT_CNTL_STOP0_MASK          (~0x0020)
#define AU1_CNT_CNTL_STOP0_SHIFT         5
#define AU1_CNT_CNTL_STOP0_NO_HALT_ON_MATCH (0x0 << AU1_CNT_CNTL_STOP0_SHIFT)
#define AU1_CNT_CNTL_STOP0_HALT_ON_MATCH    (0x1 << AU1_CNT_CNTL_STOP0_SHIFT)

#define AU1_CNT_CNTL_CM_MASK             (~0x0018)
#define AU1_CNT_CNTL_CM_SHIFT            3
#define AU1_CNT_CNTL_CM_TWO_16BIT_CNTRS  (0x0 << AU1_CNT_CNTL_CM_SHIFT)
#define AU1_CNT_CNTL_CM_ONE_32BIT_CNTR   (0x2 << AU1_CNT_CNTL_CM_SHIFT)
#define AU1_CNT_CNTL_CM_ONE_40BIT_CNTR   (0x3 << AU1_CNT_CNTL_CM_SHIFT)

#define AU1_CNT_CNTL_ACNT_STATE_MASK     (~0x0007)
#define AU1_CNT_CNTL_ACNT_STATE_SHIFT    0
#define AU1_CNT_CNTL_RELEASE             (0x0 << AU1_CNT_CNTL_ACNT_STATE_SHIFT)
#define AU1_CNT_CNTL_CLAIM               (0x1 << AU1_CNT_CNTL_ACNT_STATE_SHIFT)
/* end of definitions for AU1_CNT_CNTL */

/* begin definitions of ESEL */
#define AU1_CNT_ESEL_ADDR    ((volatile ioport unsigned int *)0x434)

#define AU1_CNT_ESEL_EQUAL1_MASK         (~0x8000)
#define AU1_CNT_ESEL_EQUAL1_SHIFT        15
#define AU1_CNT_ESEL_EQUAL1_DISABLE      (0x0 << AU1_CNT_ESEL_EQUAL1_SHIFT)
#define AU1_CNT_ESEL_EQUAL1_ENABLE       (0x1 << AU1_CNT_ESEL_EQUAL1_SHIFT)

#define AU1_CNT_ESEL_ESEL1_MASK          (~0x0F00)
#define AU1_CNT_ESEL_ESEL1_SHIFT         8
#define AU1_CNT_ESEL_ESEL1_CACHE_MISSES           (0x0 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_INSTRUCTIONS           (0x1 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_PARALLEL_INSTRUCTIONS  (0x2 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_INTERRUPTS             (0x3 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_PIPE_PROTECT_NULLS     (0x4 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_INSTRUCTION_FETCH_NULL (0x5 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_DATA_FETCH_NULL        (0x6 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_IDLE_CYCLES            (0x7 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_EXT_BP_AU3_MATCH       (0x8 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_EXT_BP_AU4_MATCH       (0x9 << AU1_CNT_ESEL_ESEL1_SHIFT)
#define AU1_CNT_ESEL_ESEL1_CYCLES                 (0xA << AU1_CNT_ESEL_ESEL1_SHIFT)

#define AU1_CNT_ESEL_EQUAL0_MASK         (~0x0080)
#define AU1_CNT_ESEL_EQUAL0_SHIFT        7
#define AU1_CNT_ESEL_EQUAL0_DISABLE      (0x0 << AU1_CNT_ESEL_EQUAL0_SHIFT)
#define AU1_CNT_ESEL_EQUAL0_ENABLE       (0x1 << AU1_CNT_ESEL_EQUAL0_SHIFT)

#define AU1_CNT_ESEL_ESEL0_MASK          (~0x000F)
#define AU1_CNT_ESEL_ESEL0_SHIFT         0
#define AU1_CNT_ESEL_ESEL0_CACHE_MISSES           (0x0 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_INSTRUCTIONS           (0x1 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_PARALLEL_INSTRUCTIONS  (0x2 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_INTERRUPTS             (0x3 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_PIPE_PROTECT_NULLS     (0x4 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_INSTRUCTION_FETCH_NULL (0x5 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_DATA_FETCH_NULL        (0x6 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_IDLE_CYCLES            (0x7 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_EXT_BP_AU3_MATCH       (0x8 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_EXT_BP_AU4_MATCH       (0x9 << AU1_CNT_ESEL_ESEL0_SHIFT)
#define AU1_CNT_ESEL_ESEL0_CYCLES                 (0xA << AU1_CNT_ESEL_ESEL0_SHIFT)

/* end definitions of ESEL */

#define AU1_CNT_ID_ADDR ((volatile ioport unsigned int *)0x437)
#define AU1_CNT_ID_OWN_MASK       0xc000
#define AU1_CNT_ID_DEBUGGER_OWNS  0x8000
#define AU1_CNT_ID_NOBODY_OWNS    0x0000
#define AU1_CNT_ID_APP_OWNS       0x4000

/* End of definitions for counter logic */

#define AU2_EVT_CNTL	0x44E
#define AU2_EVT_ID		0x44F
#define AU2_MASKL		0x448
#define AU2_MASKH		0x449
#define AU2_REFL		0x44A
#define AU2_REFH		0x44B

#define AU3_EVT_CNTL	0x61E
#define AU3_EVT_ID		0x61F
#define AU3_MASKL		0x608
#define AU3_MASKH		0x609
#define AU3_REFL		0x60A
#define AU3_REFH		0x60B

#define AU4_EVT_CNTL	0x63E
#define AU4_EVT_ID		0x63F
#define AU4_MASKL		0x628
#define AU4_MASKH		0x629
#define AU4_REFL		0x62A
#define AU4_REFH		0x62B

#define EMU_TASK_ID_MARK_END  0 /* Mark end of block, no output */
#define EMU_TASK_ID_TXRX      1 /* must match internal task id's */
#define EMU_TASK_ID_RX        2 /* must match internal task id's */
#define EMU_TASK_ID_TX        3 /* must match internal task id's */
#define EMU_TASK_ID_TDURX     4
#define EMU_TASK_ID_VCURX     5
#define EMU_TASK_ID_MMCU      6
#define EMU_TASK_ID_TDUTX     7
#define EMU_TASK_ID_VCUTX     8
#define EMU_TASK_ID_MCBSP1    9
#define EMU_TASK_ID_MCBSP2   10
#define EMU_TASK_ID_UTRX     11
#define EMU_TASK_ID_UTRXPOLL 12
#define EMU_TASK_ID_UTTX     13
#define EMU_TASK_ID_DSIG     14
#define EMU_TASK_ID_ECUMA    15
#define EMU_TASK_ID_PRD      16
#define EMU_TASK_ID_TXRXSWI  17
#define EMU_TASK_ID_MAIN     18

#define EMU_PROF_NOPUSHPOP 0
#define EMU_PROF_PUSH      1
#define EMU_PROF_POP       2
#define EMU_PROFILE_MAX 128
void            emu_profile_change_mode(void);
void            emu_profile_flush(void);

#endif  /* _EMUREG_H */
/* Nothing past this point */

