#ifndef _PIULOC_H
#define _PIULOC_H
/******************************************************************************
 * FILE PURPOSE: Definitions local to the PCM Interface Unit (PIU)
 ******************************************************************************
 * FILE NAME:   piuloc.h
 *
 * DESCRIPTION: This file contains API and definitions that are local to
 *              the PIU module.
 *
 * REQUIRES:    types.h   (generic DSP ECO types)
 *              const.h   (sampling rate)
 *              circbuf.h (software circular buffer defition)
 *              piu.h     (PIU configuration types)
 *              piuport.h (piu_MAX_SUBSEGLENGTH)
 *
 * TABS: NONE
 * 
 *        Copyright (c) 2007 – 2013 Texas Instruments Incorporated                
 *                                                                                
 *              All rights reserved not granted herein.                           
 *                                                                                
 *                         Limited License.                                       
 *                                                                                
 *  Texas Instruments Incorporated grants a world-wide, royalty-free,             
 *  non-exclusive license under copyrights and patents it now or hereafter owns   
 *  or controls to make, have made, use, import, offer to sell and sell           
 *  ("Utilize") this software subject to the terms herein.  With respect to the   
 *  foregoing patent license, such license is granted solely to the extent that   
 *  any such patent is necessary to Utilize the software alone.  The patent       
 *  license shall not apply to any combinations which include this software,      
 *  other than combinations with devices manufactured by or for TI (“TI           
 *  Devices”).  No hardware patent is licensed hereunder.                         
 *                                                                                
 *  Redistributions must preserve existing copyright notices and reproduce this   
 *  license (including the above copyright notice and the disclaimer and (if      
 *  applicable) source code license limitations below) in the documentation       
 *  and/or other materials provided with the distribution                         
 *                                                                                
 *  Redistribution and use in binary form, without modification, are permitted    
 *  provided that the following conditions are met:                               
 *                                                                                
 *    *  No reverse engineering, decompilation, or disassembly of this software   
 *  is permitted with respect to any software provided in binary form.            
 *                                                                                
 *    *  any redistribution and use are licensed by TI for use only with TI       
 *  Devices.                                                                      
 *                                                                                
 *    *  Nothing shall obligate TI to provide you with source code for the        
 *  software licensed and provided to you in object code.                         
 *                                                                                
 *  If software source code is provided to you, modification and redistribution   
 *  of the source code are permitted provided that the following conditions are   
 *  met:                                                                          
 *                                                                                
 *    *  any redistribution and use of the source code, including any resulting   
 *  derivative works, are licensed by TI for use only with TI Devices.            
 *                                                                                
 *    *  any redistribution and use of any object code compiled from the source   
 *  code and any resulting derivative works, are licensed by TI for use only      
 *  with TI Devices.                                                              
 *                                                                                
 *  Neither the name of Texas Instruments Incorporated nor the names of its       
 *  suppliers may be used to endorse or promote products derived from this        
 *  software without specific prior written permission.                           
 *                                                                                
 *  DISCLAIMER.                                                                   
 *                                                                                
 *  THIS SOFTWARE IS PROVIDED BY TI AND TI’S LICENSORS "AS IS" AND ANY EXPRESS    
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED             
 *  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE        
 *  DISCLAIMED. IN NO EVENT SHALL TI AND TI’S LICENSORS BE LIABLE FOR ANY         
 *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    
 *  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR            
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER    
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT            
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY     
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   
 *  DAMAGE.                                                                       
 *****************************************************************************/

/* System level header files */
#include <ti/mas/types/const.h>
#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>

/* System utilities' API's */
#include <ti/mas/util/cb.h>

/* PIU high level header files */
#include <ti/mas/ecu/test/src/piu.h>
/* PIU low level header files */
#include <ti/mas/ecu/test/src/piuport.h>

/* Triple buffering in Rx direction (VOICE application) */
#define piu_NUMSEGM_RX3            3
/* Double buffering in Rx direction                   *
 * (used only if receiveout buffer is not allocated,  *
 *  like for FAX application)                         */
#define piu_NUMSEGM_RX2            2
#define piu_NUMSEGM_TX             2

/* Sampling Frequency */
#define piu_TX_TASK_ID   2 /* same as SIU_TX_QUEUE_ID */
#define piu_TXRX_TASK_ID 0 /* same as SIU_TXRX_QUEUE_ID */

/* Parameters for DC offset removal */
#define piu_DC_FILTER_MODE1_MINUS_ALPHA_SHIFT -6
#define piu_DC_FILTER_MODE2_MINUS_ALPHA_SHIFT -2

#ifndef GG_MULTSAMPVC

/* Defines for Bidirectional Silence detection */
/* Decrement the counter once every 2^2 = 4 sample Decreases precision to 0.5ms*/
#define piu_BIDIR_SILENCE_LOG2_FRAME_DECIMATION  2 

#else /* 16 KHz sampling rate */

/* Defines for Bidirectional Silence detection */
/* Decrement the counter once every 2^3 = 8 sample Decreases precision to 0.5ms*/
#define piu_BIDIR_SILENCE_LOG2_FRAME_DECIMATION  3 

#endif

#define piu_BIDIR_SILENCE_RESOLUTION_LOG2_FACTOR 1 /* log2(65536 (max tuint) / 32768 (max time in ms)) */


/* PIU global states */
enum {
  piu_CLOSED = 0,
  piu_OPEN   = 1
};

/* PCM Pattern Detection Types */
enum {
  piu_PCM_PATTERN_CUSTOM,
  piu_PCM_PATTERN_T1,
  piu_PCM_PATTERN_E1
};

typedef struct {
  tint type;       /* custom, T1 or E1 */
  tint custom;     /* custom pattern to be detected */
  tlong cnt;       /* Counts successive matching samples */
  tint initCnt;    /* Required number of matching samples */
} piuPcmPatternDetect_t;

/* Geometric mean values */
typedef struct {
  LFract txEnergy;
  LFract rxEnergy;      
  LFract txDClevel;
  LFract rxDClevel;
} piuEnergyDCLevel_t;  

/* bi-directional silence detection */
typedef struct {
  LFract txSilDetEnergy;  /* saturated energy */
  LFract rxSilDetEnergy;      
  LFract threshold;       /* Below this power level the absence of
                           * signal is declared */
  tuint  cnt;             /* Hangover Timer; counts time while both,
                           * tx & rx, energies are below threshold */
  tuint   initCnt;         /* Initial value for Hangover Timer */
} bidSilenceCtrl_t;  

/* receive_in buf parameters */
typedef struct {
  linSample *in_ptr;
  linSample *out_ptr;
  linSample *start_ptr;
  linSample *end_ptr;
  linSample *top_ptr;
  tint      segment_count;
} receive_in_buf_t;  


/******************************************************************************
 * DATA DEFINITION: PIU instance data structure
 ******************************************************************************
 * DESCRIPTION: This structure specifies the state of an instance of a PIU.
 *
 ******************************************************************************/
typedef struct piuInst_s { 
  tuint ID;                       /* user-defined ID field */
  tint  state;                    /* indicates if PIU is open or closed */
  tuint mode_bitfield;            /* bit field of different mode */
  const tint *pcm_expand_table;   /* lookup table for PCM expansion */
  tint pcm_format;                /* PCM conversion format (u-law, A-law,
                                   *  linear) */
  tint segment_size;              /* # of samples in a PIU voice segment */
  tuint rx_delay;                 /* delay length in samples */
  tuint rx_underflow_cnt;         /* # of Rx underflows in receive-out fcn's */
  tuint rx_overflow_cnt;          /* # of Rx overflows in receive-out fcn's */
  linSample *receive_out_buf;     /* address of receive-out buffer */
  linSample *receive_out_buf_ptr; /* current receive-out buffer pointer    */
  linSample *send_out_buf;        /* address of send-in buffer             */
  linSample *send_out_buf_ptr;    /* current send-in buffer pointer     */
                                
  void *reportOutTargetInst;      /* report instance              */
  void *sendOutProcTargetInst;    /* foreground sendOut instance  */
  void *sendOutIsrTargetInst;     /* background sendOut instance  */

  piuEnergyDCLevel_t    energy_DClevel; /* enery/DC levels of Tx/Rx */
  tuint                 generatePattern;/* pattern to be generated */
  receive_in_buf_t      receive_in_buf; /* receive in buffer parameters */
  bidSilenceCtrl_t      bidSilence;     /* bidSilence parameters */
  piuPcmPatternDetect_t pcmPattern;     /* PCM Pattern Detection parameters */
  linSample             silence_pattern;/* silence pattern */
} piuInst_t;

/*----------------------------*/
/* Exception and Debug Macros */
/*----------------------------*/

/* Assert macro for the exceptions */
#define piu_exc_assert(expr,code,inst) { \
  (expr) ? ((void)0) : piu_exception((inst)->ID, code); }

/* Function prototypes */
/* piu.c */
void piu_exception(tuint id, tuint code);
/* piufutil.s */
void piu_frame_energy   (tint frameLen, Fract *frame, LFract *energy);
void piu_frame_DClevel  (tint frameLen, Fract *frame, LFract *DClevel);
void piu_remove_dc_component (tint frameLen, Fract *frame, LFract *DClevel, tint alpha);
/* piutxrx.c */
void piu_get_stats             (void *piuInst, piuStats_t *levels);
void piu_pcm_pattern_detect    (piuInst_t *inst, tint *pcm_in);
void piu_pcm_pattern_generate  (piuInst_t *inst);
void piu_bid_silence_detect    (piuInst_t *inst);
void piu_energy_dc_measurement (piuInst_t *inst, tint *lin_samples);
void piu_update_buf_ptr        (piuInst_t *inst, tbool dir, linSample **in_ptr);
void piu_pcm_companding        (piuInst_t *inst, tint *pcm_in, tint *linear_out,
                                tint length);
void piu_pcm_compressing       (piuInst_t *inst, tint *linear_in, tint *pcm_out,
                                tint length);


#endif /* _PIULOC_H */
/* nothing past this point */
