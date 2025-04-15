#ifndef _AEPLOC_H
#define _AEPLOC_H
/******************************************************************************
 * FILE PURPOSE: Common local definitions for signal generator.
 ******************************************************************************
 * FILE NAME:   aeploc.h
 *
 * DESCRIPTION: Contains common local definitions for signal generator.
 *
 * TABS: NONE
 *
 * $Id: aeploc.h 1.10 1998/05/28 11:59:40 BOGDANK Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: aeploc.h $
 * Revision 1.11   2000/10/20 15:13:00  Meena
 *     -Added transition to aepInst_t
 * Revision 1.10  1998/05/28 11:59:40  BOGDANK
 *     - gain_l2 used in floating and fixed point, on/off control added
 *    acoustic echo pathrid state control added.
 * Revision 1.9  1998/05/26 11:24:24  BOGDANK
 *     - gain replaced by gain_l2
 *    gain replaced by gain_l2.
 * Revision 1.8  1998/05/26 09:18:44  BOGDANK
 *     - minor improvements in comments
 * Revision 1.7  1998/05/22 09:59:09  BOGDANK
 *     - aep_add_echo() moved to aepnum.c/.s
 *    aep_add_echo() prototype added.
 * Revision 1.6  1997/05/23 15:08:25  BOGDANK
 *     - new types added
 * Revision 1.5  1997/04/15 09:01:01  BOGDANK
 *     - comments improved
 *    Comments improved.
 * Revision 1.4  1997/04/11 15:31:28  BOGDANK
 *     - comments improved from receive-in length
 * Revision 1.3  1997/04/09 19:06:28  BOGDANK
 *     - Rx & Tx delay added to acoustic echo path
 *    Rx & Tx extra delay added.
 * Revision 1.2  1996/12/11 15:53:58  BOGDANK
 *     - works for fixed point
 *    log2(filter_length) added to aepInst_t.
 * Revision 1.1  1996/11/20 11:22:37  BOGDANK
 * Initial revision
 *
 * (C) Copyright 1996, 1997, TELOGY Networks, Inc.
 *****************************************************************************/

#include <ti/mas/types/types.h>                      /* DSP types            */
#include <ti/mas/sdk/aep.h>

#define AEP_NONLNR_TERMS        5    /* number of non-linear terms */ 
#define ALPHA_Q                15    /* Q format of alpha */
#define AEP_NONLNR_COEF_Q      15    /* Q format of coefficinets of a */
#define MIC_GAIN_Q             11    /* Use Q11 format for mic gain values */
#define SPK_GAIN_Q             11    /* use Q11 format for speaker gain values */
#define MAX_AEP_PERIOD_LENGTH 320    /* 40ms @ 16KHz */
#define AEP_PARTIAL_ECHO_SIZ    3    /* size of partial echo results (buffer)
                                        in words */
#define AEP_DECY_M60dB       (-60)   /* decay of -60dB desired after # frames */

typedef enum {
  AEP_ST_OFF = 0,
  AEP_ST_ON  = 1
} aepState_t;

typedef struct aepMorph_s {
 Fract a;       /* current value of a */
 Fract delta_a; /* Incremental value of morphing coefficient */
 tint delay; 
}aepMorph_t;

typedef struct aepInst_s {
  aepState_t  state;              /* AEP_ST_ON or AEP_ST_OFF. In off state,
                                   *  acoustic echo path is in open loop, i.e. does not
                                   *  add echo. */
  tint        samples_per_frame;  /* number of samples in the input frames
                                   *  (aepAddEcho()). */
  tint      sampling_rate_div_8k; /* 1/2 for 8/16 kHz */

  tint        rx_delay;           /* extra Rx delay in samples */
  tint        tx_delay;           /* extra Tx delay in samples */
  linSample   *txd_buffer;        /* pointer to Tx delay buffer.
                                   *  Size: tx_delay */
  linSample   *send_out;          /* pointer to send-out buffer.
                                   *  Size: samples_per_frame */
  tint        h_seg1_length;      /* h segment1 length in taps */
  tint        h_seg2_length;      /* h segment2 length in taps */
  tint        hseg1_length_l2;    /* the first higher log2(hseg1_length) */
  tint        hseg2_length_l2;    /* the first higher log2(hseg2_length) */
  Fract       gain_l2;            /* log2(gain) [-15,0] range */
  tint        delay;              /* Location (delay) of acoustic echo path in samples*/
  Fract       *filter_iram;       /* Filter coefficients of a acoustic echo path filter
                                   *  that are used in echo generation. Q-format
                                   *  for the coefficients is Q14.
                                   *  Size: max_filter_length+max_delay. */
  const Fract *filter_temp;       /* work buffer to load the filter coefficients 
                                   * of echo path  (Q format is Q 14) 
                                   *  Size: max No of filter coefficeints*/
  const Fract *new_filter_temp;   /* point to new AEP filter coefficients for morphing */
  tbool        transition;         /* True : when echopath will be morphed */
  aepMorph_t  aep_morph;          /* Incremental value of morphing coefficient*/
  tint        receive_in_length;  /* Length (in samples) of the following buf: */
  Fract       *aepbuf_start;      /* start address of echo buffer */
  Fract       *aepbuffer_ptr;     /* pointer to echo buffer */
  tint        aepbuf_length;      /* length of echo buffer */
  Fract       aep_decy_fctr;      /* acoustic echo decay rate */
  linSample   *receive_in;        /* Receive-in signal buffer. Must keep samples
                                   *  long enough for background processing to
                                   *  update filter coefficients, or for
                                   *  foreground processing to remove echo.
                                   *  Size:
                                   *   ceil((tail+(Q+1)*B+frame+S+R+T)/frame)*frame.
                                   *    Q     - number of "extra" blocks that
                                   *            bg-process can be late for,
                                   *    S     - segment length (2.5ms),
                                   *    R     - extra rx_delay
                                   *    T     - extra tx_delay
                                   *    B     - block length (5 or 20ms),
                                   *    tail  - echo tail size, i.e. filter_length.
                                   *  MUST be aligned for circular addressing.
                                   *  MUST be integer multiple of frames and at
                                   *  least have 2 frames. */
  Fract alpha;                    /* non-linearity constant */
  Fract analog_micgainlin;        /*  analog MIC gain - Linear value  */
  Fract digital_micgainlin;       /*  digital MIC gain - Linear Value */       
  Fract spklin_gain;              /*  Speaker gain */
  Fract thw_hf_micgain_init;      /*  replacing THW_HF_MICGAIN_INIT */
  void  (*exception)(tuint id, char *str);   /* exception function (initialized
                                              *  in aepOpen()) */
  void  (*debug)(tuint id, char *str);       /* debug function (initialized
                                              *  in aepOpen()) */
} aepInst_t;

/*----------------------------*/
/* Exception and Debug Macros */
/*----------------------------*/

#define _AEPSTR(x)   __AEPSTR(x)
#define __AEPSTR(x)  #x
/* Assert macro for the exceptions */
#define aep_exc_assert(expr,inst) {                 \
  ((expr) ? ((void)0) :                             \
            (*(inst)->exception)(0xFFFF,            \
              __FILE__ "(" _AEPSTR(__LINE__) ")")); \
}

/* Debug macro  */
#define aep_dbg_out(s,inst)   {  (*(inst)->debug)(0xFFFF,(s));  }

/* Local functions */
/* aepnum.c/.s */
void aep_add_echo (linSample *x, linSample *x_start, tint x_length,
                   linSample *y, linSample *e, tint gain_l2, Fract *h,
                   tint h_seg1_length, tint h_seg2_length, tint hseg1_length_l2, 
                   tint hseg2_length_l2, tint block_length, tint h_peak_idx, 
                   const Fract *a, Fract alpha, Fract *aepbuf_start, 
                   Fract **aepbuffer_ptr, tint aepbuf_length, Fract aep_decy_fctr,
                   Fract analog_micgainlin,  Fract digital_micgainlin,
                   Fract spklin_gain, tint );                   

/* Local funtions in aep.c, not used externally */
void aep_combine(void *aepInst);
Fract aep_comp_dcyfctr(tint aep_frame_decyM60dB);
void aepMakeFilt(void *aepInst, aepControl_t *ctl);

#endif  /* _AEPLOC_H */
/* nothing past this point */


