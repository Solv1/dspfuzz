/******************************************************************************
 * FILE PURPOSE: Main program and supporting routines for the simulation of ECU.
 ******************************************************************************
 * FILE NAME:   ecusim.c
 *
 * DESCRIPTION: Contains main program and supporting routines for the
 *              simulation of ECU. Depends on SIU support module.
 *
 * TABS: NONE
 *
 * REVISION HISTORY:
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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* System level includes */
#include <ti/mas/util/ecomem.h>

/* Test include files */
#include <ti/mas/ecu/test/src/ecusim.h>     /* for simulation-specific defines */
#include <ti/mas/ecu/test/src/ecufio.h>     /* file I/O functions */
#include <ti/mas/ecu/test/src/ecuiram.h>    /* HW circular buffers in IRAM, etc. */
#include <ti/mas/ecu/test/src/vheap.h>      /* Voice heap */
#include <ti/mas/ecu/test/src/cheap.h>      /* Core heap */
#include <ti/mas/ecu/test/src/piu.h>        /* for piuPcmIo() */

/* Input streams */
tint  siuInStream[MAX_STREAM_SIZE];       /* input samples in Q0 */
tuint siuInUCmpStream[MAX_STREAM_SIZE];   /* u-law coded input samples */
tuint siuInACmpStream[MAX_STREAM_SIZE];   /* A-law coded input samples */
linSample siuRxInStream[MAX_STREAM_SIZE]; /* Rx input samples in Q0 */

/* Output streams */
linSample siuOutStream[MAX_STREAM_SIZE];      /* output samples in Q0 */
linSample siuOutErrStream[MAX_STREAM_SIZE];   /* output error in Q0   */

/* External arrays */
extern linSample *piu_segment_in;       /* PCM buffers for piuPcmIo() */

/* Signal Generator Instances */
void  *sgnTxInst= NULL;
void  *sgnRxInst= NULL;

/* Hybrid Instance and hybrid filter */
void  *hybTxInst = NULL;
Fract  hybUserFilter[MAX_HYBSEG_LENGTH];   /* user defined hybrid seg */

/* V.21 flags */
tint v21_flags = 0x7e7e;

/* GEL flag */
tint gelFlag = 0;

/* MIPS Agent Codes */
#define MIPS_AGENT_CTRL             0
#define MIPS_AGENT_EVENT_ECU        1
#define MIPS_AGENT_EVENT_CODEC      2
#define MIPS_AGENT_EVENT_CHSTATE    3

/* u-law/A-law stuff */
#define QUANT_MASK      (0xf)     /* Quantization field mask. */
#define SEG_SHIFT       (4)       /* Left shift for segment number. */
#define SEG_MASK        (0x70)    /* Segment field mask. */
#define BIAS            (0x84)    /* Bias for linear code. */

static tint seg_end[SEG_END_TBLSIZE] = {
  0xFF, 0x1FF, 0x3FF, 0x7FF, 0xFFF, 0x1FFF, 0x3FFF, 0x7FFF
};

/* simulation setup structure */
volatile siuSetup_t siuSetup;
volatile siuSetup_t *ecuSim = &siuSetup;

/* Global PCM data buffers */
tword rinBuffer [SIU_MAX_FRAME_LENGTH * sizeof(linSample)/sizeof(tword)];
tword sinBuffer [SIU_MAX_FRAME_LENGTH * sizeof(linSample)/sizeof(tword)];
tword routBuffer[SIU_MAX_FRAME_LENGTH * sizeof(linSample)/sizeof(tword)];
tword soutBuffer[SIU_MAX_FRAME_LENGTH * sizeof(linSample)/sizeof(tword)];

/******************************************************************************
 * FUNCTION PURPOSE: Set the clock speed for the processor (Prototype)
 ******************************************************************************
 * DESCRIPTION: This function is used to properly initialize the 
 *              processor's clock.  The user supplies a clock multipler value
 *              (1 - 16).
 *
 *              This routine sets the memory-map clock register as follows:
 * 
 *              PLLMUL    (bits 15-12)  - set to the user defined multipler - 1
 *              PLLDIV    (bit 11)      - set to 0
 *              PLLCOUNT  (bits 10-3)   - set to 150
 *              PLLON/OFF (bit 2)       - set to 1
 *              PLLNDIV   (bit 1)       - set to 1
 *              PLLSTATUS (bit 0)       - read-only bit
 *
 *              These setting will enable operation of the PLL with the user 
 *              specified clock multiplying factor.  Note if the user specifies
 *              a muliplier greater than 16, the PLL will operated but not at
 *              the selected rate.
 *              The PLLCOUNT determines the time allowed for the PLL to
 *              lock-up and the processor to begin operating from the PLL
 *              derived clock.  Note, the PLLCOUNT is fixed at 150.  The
 *              lock-up time is given by:
 *
 *              lock-up time = PLLCOUNT * 16 * (1/Fclkin)
 *
 *  void thwClockSet(clock multipler) The accumulator A is assumed to contains
 *                                    desired the clock multipler factor.
 *
 *****************************************************************************/
extern void thwClockSet (tuint clk_mult);

/*  */
static inline tint search (tint val, tint *table, tint size)
{
  int i;

  for (i = 0; i < size; i++) {
    if (val <= *table++)
      return (i);
  }
  return (size);
} /* search */

static inline tint acmpr (tint sample)
{
  tint mask, seg, pcm_val, pcm_code;
  tuint aval;

  pcm_val = sample;

  if (pcm_val >= 0) 
    mask = 0xD5;            /* sign (7th) bit = 1 */
  else {
    mask = 0x55;            /* sign bit = 0 */
    pcm_val = -pcm_val;
  }

  /* Convert the scaled magnitude to segment number. */
  seg = search (pcm_val, seg_end, SEG_END_TBLSIZE);

  /* Combine the sign, segment, and quantization bits. */
  if (seg >= SEG_END_TBLSIZE)     /* out of range, return maximum value. */
    pcm_code =  0x7F ^ mask;
  else {
    aval = seg << SEG_SHIFT;
    if (seg < 2)
      aval |= (pcm_val >> 4) & QUANT_MASK;
    else
      aval |= (pcm_val >> (seg + 3)) & QUANT_MASK;
    pcm_code = aval ^ mask;
  }
  return(pcm_code);
} /* acmpr */

static inline tint mucmpr (tint sample)
{
  tint mask, seg, pcm_val, pcm_code;
  tuint uval;

  pcm_val = sample;

  /* Get the sign and the magnitude of the value. */
  if (pcm_val < 0) {
    pcm_val = BIAS - pcm_val;
    mask = 0x7F;
  } 
  else {
    pcm_val += BIAS;
    mask = 0xFF;
  }

  /* Convert the scaled magnitude to segment number. */
  seg = search(pcm_val, seg_end, SEG_END_TBLSIZE);

  /* Combine the sign, segment, quantization bits; and complement the code word. */
  if (seg >= SEG_END_TBLSIZE)         /* out of range, return maximum value. */
    pcm_code = 0x7F ^ mask;
  else {
    uval = (seg << 4) | ((pcm_val >> (seg + 3)) & 0xF);
    pcm_code = uval ^ mask;
  }
  return(pcm_code);
} /* mucmpr */

extern void ecu_halt (volatile tbool *exec);

/* Tx and Rx file inputs */
sgnFileIo_t *siu_tx_file (sgnFileIo_t *dsc)
{
#ifndef _HWDSKT
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
#endif
  return (dsc);
} /* siu_tx_file */

sgnFileIo_t *siu_rx_file (sgnFileIo_t *dsc)
{
#ifndef _HWDKST
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
  asm (" nop");
#endif
  return (dsc);
} /* siu_rx_file */

void generate_tx_tone_frame (tint frame_size, linSample *frame)
{
  /* Generate one frame of linear samples */
  sgnGenerateFrame (sgnTxInst, frame_size, frame);

} /* generate_tx_tone_frame */

void convert_tx_tone_frame (tint frame_length, tint pcm_law, linSample *frame)
{
  int k;
  tint u_code;
  tint a_code;
  tint pcm_value;

  /* Convert Tx stream into u-law/A-law */
  for (k=0; k<frame_length; k++) {
    pcm_value = (int)frame[k];
    if (pcm_value > mua_TBL_MAX_PCM_VAL) {
      pcm_value = mua_TBL_MAX_PCM_VAL;
      frame[k] = (linSample)pcm_value;  /* make sure frame is saturated */
    }
    else if (pcm_value < -mua_TBL_MAX_PCM_VAL) {
      pcm_value = -mua_TBL_MAX_PCM_VAL;
      frame[k] = (linSample)pcm_value;
    }
    u_code = mucmpr (pcm_value);
    a_code = acmpr  (pcm_value);

    siuInStream[k]     = pcm_value;
    siuInUCmpStream[k] = u_code;
    siuInACmpStream[k] = a_code;
  
    /* convert segment_in to piu_segment_in */
    if (pcm_law == const_COMP_MULAW_8) {
      piu_segment_in[k] = u_code;
    }
    else if (pcm_law == const_COMP_ALAW_8) {
      piu_segment_in[k] = a_code;
    }
    else if (pcm_law == const_COMP_LINEAR) {
      piu_segment_in[k] = pcm_value;
    }
    else {
      piu_segment_in[k] = u_code;
    }
  }
} /* convert_tx_tone_frame */

tint generate_rx_tone_frame (tint frame_size, linSample *frame)
{
  tint k;
  tint value, data = 1;
  tlong smpidx = 0;

  /* Generate one frame of samples */
  if (ecuSim->sig_src == ecu_SIM_SIG_SRC_SGN){
    sgnGenerateFrame (sgnRxInst, frame_size, frame);
  }
  else{
    data = ecu_sim_fread (rinBuffer, ecuSim->frame_size, &ecuSim->rin);
    ecu_sim_input(rinBuffer, frame);
  }

  /* Clip Rx stream for later conversion to u-law/A-law */
  for (k = 0; k < frame_size; k++) {
    value = (int)frame[k];
    if (value > mua_TBL_MAX_PCM_VAL) {
      value = mua_TBL_MAX_PCM_VAL;
      frame[k] = (linSample)value;
    }
    else if (value < -mua_TBL_MAX_PCM_VAL) {
      value = -mua_TBL_MAX_PCM_VAL;
      frame[k] = (linSample)value;
    }

    siuRxInStream[smpidx] = value;
    smpidx++;
  }
  return data;
} /* generate_rx_tone_frame */

/* ecuSendOut function */
void ecu_send_out (void *ecuSoInst, void *samples_in)
{
  int k;
  siuInst_t *inst   = (siuInst_t*)ecuSoInst;
  linSample *insamp = (linSample*)samples_in;

  /* copy out resulting samples */
  for (k = 0; k < inst->TxInst.send_frame_length; k++) {
    siuOutErrStream[k] = insamp[k];
  }
} /* ecu_send_out */

/******************************************************************************
 * FUNCTION PURPOSE: Create ECU module.
 ******************************************************************************
 * DESCRIPTION: Obtains info on ECU buffers, and creates one instance of ECU.
 *
 *              NOTE: Should save number of buffers and buffer descriptors
 *                    in order to make delete possible.
 *
 *                    Allocates ECU receive-in buffer that is used in PIU.
 *                    Assumes receive-in buffer is offset 5.
 *
 *  void siu_new_ecu (
 *    tint chnum)              - channel number (1 to SIU_MAX_CHANNELS)
 *
 *****************************************************************************/

/* Buffer numbers.  Ensure that these coincide with #defines in ecuinit.c */
#define ecu_FG_FLTSEG             1
#define ecu_BG_FLTSEG             2
#define ecu_BG_E_BUF              3
#define ecu_RECEIVE_IN            4
#define ecu_EXPAND_DL_BUF         5
#define ecu_BG_UPDATE_BUF         6
#define ecu_SEARCH_FILTER_BUF     14

void siu_new_ecu (tint chnum)
{
  int i;
  tint stat, ecuNbufs;
#if !ecu_DELAY_LINE_COMPRESS
  tint length;
#endif

  const ecomemBuffer_t *bufs;
  ecomemBuffer_t       *ecuBufs;
  ecuNewConfig_t    ecuCfgNew;

  siuInst_t *inst = &siuInst[chnum-1];

  /* ECU get sizes */
  stat = ecuGetSizes (&ecuNbufs, &bufs, (void *)NULL);
  siu_exc_assert (stat == ecu_NOERR, inst);

  ecuBufs = (ecomemBuffer_t*)siuVAlloc (ecuNbufs*sizeof(ecomemBuffer_t));
  inst->vheap_used += ecuNbufs*sizeof(ecomemBuffer_t);
  siu_exc_assert (ecuBufs != NULL, inst);

  /* assume all buffers are in external memory, no alignment requests */
  /* NOTE: This is not true for target platform!!! */
  for (i = 0; i < ecuNbufs; i++) {
    ecuBufs[i] = bufs[i];
    if (i == ecu_FG_FLTSEG) {   /* FG Filter */
      ecuBufs[i].base = iramSeg.ecu_fg_filter_ptr;
      ecuBufs[i].size = IRAM_ECU_FG_FLTSEG_LENGTH*sizeof(Fract);
    }
    else if (i == ecu_BG_FLTSEG) {  /* BG Filter */
      ecuBufs[i].base = iramSeg.ecu_bg_filter_ptr;
      ecuBufs[i].size = IRAM_ECU_BG_FLTSEG_LENGTH*sizeof(Fract);
    }
    else if (i == ecu_BG_E_BUF) {  /* BG Error Buffer IRAM */
      ecuBufs[i].base = iramSeg.ecu_bg_e_ptr;
      ecuBufs[i].size = IRAM_ECU_BG_E_LENGTH*sizeof(linSample);
    }
#if ecu_DELAY_LINE_COMPRESS
    else if (i == ecu_RECEIVE_IN) {  /* ECU's recv-in buffer is aligned! */
      ecuBufs[i].volat  = FALSE;
      ecuBufs[i].base   = iramSeg.piu_ecu_receive_ptr;
      ecuBufs[i].size   = IRAM_PIU_ECU_RECEIVE_LENGTH*sizeof(linSample);
    }
    else if (i == ecu_EXPAND_DL_BUF) {  /* ECU's recv-in buffer is aligned! */
      ecuBufs[i].volat  = TRUE;
      ecuBufs[i].base   = iramSeg.ecu_pcm_expand_ptr;
      ecuBufs[i].size   = IRAM_ECU_EXPAND_LENGTH*sizeof(linSample);
    }
#else
    else if (i == ecu_RECEIVE_IN) {  /* ECU's recv-in buffer is aligned! */
      ecuBufs[i].volat  = FALSE;
      ecuBufs[i].base   = iramSeg.piu_ecu_receive_ptr;
      /* tempory fix to work arround size miscalculation */
      length = IRAM_PIU_ECU_RECEIVE_LENGTH;
      ecuBufs[i].size   = length * sizeof(linSample);
/*      ecuBufs[i].size   = IRAM_PIU_ECU_RECEIVE_LENGTH*sizeof(linSample);*/
    }
#endif
    else if (i == ecu_BG_UPDATE_BUF) {  /* BG Work Buffer IRAM */
      if (ecuBufs[i].size > 0) {
        ecuBufs[i].base = iramSeg.ecu_bg_work_ptr;
        ecuBufs[i].size = IRAM_ECU_BG_WORK_LENGTH*sizeof(Fract);
      }
      else {    /* Float version may not use this buffer */
        ecuBufs[i].base = NULL;
        ecuBufs[i].size = 0;
      }
    }
#if ecu_SEARCH_ENABLE
    else if (i == ecu_SEARCH_FILTER_BUF) {  /* Search filter buffer IRAM */
      ecuBufs[i].volat  = FALSE;
      ecuBufs[i].base   = iramSeg.ecu_srch_filter_ptr;
      ecuBufs[i].size   = IRAM_ECU_SRCH_FILTER_LENGTH*sizeof(Fract);
    }
#endif
    else {
      if (ecuBufs[i].size > 0) {
        ecuBufs[i].volat  = FALSE;
        ecuBufs[i].base   = siuVAlloc (bufs[i].size);
        inst->vheap_used += bufs[i].size;
        siu_exc_assert (ecuBufs[i].base != NULL, inst);
      }
      else {    /* no buffer allocated if size zero or less */
        ecuBufs[i].base = NULL;
        ecuBufs[i].size = 0;
      }
    }
  }
  /* inst->ecuBufs  =...
   * inst->ecuNbufs =...  NOTE: needs it to delete ECU one day. */

  /* ecuNew */
  ecuCfgNew.ID = siuMakeID (SIU_MID_ECU, chnum);
  stat = ecuNew (&inst->ecuInst, ecuNbufs, ecuBufs, &ecuCfgNew);
  siu_exc_assert (stat == ecu_NOERR, inst);

} /* siu_new_ecu */

/******************************************************************************
 * FUNCTION PURPOSE: Open ECU module.
 ******************************************************************************
 * DESCRIPTION: Opens one instance of ECU module.
 *
 *              NOTE: Receive-in buffer is sized here!
 *
 *  void siu_open_ecu (
 *    tint chnum,                 - channel number (1 to SIU_MAX_CHANNELS)
 *    tint frame_size)            - # samples in the frame
 *
 *****************************************************************************/

void siu_open_ecu (tint chnum, tint frame_size)
{
  ecuConfig_t      ecuCfg;
  ecuConfigParam_t cfgParam;
  siuInst_t        *inst = &siuInst[chnum-1];
  tint             pcm   = ecuSim->pcm_format;

  ecuCfg.cfgParam              = &cfgParam;
  ecuCfg.y2x_delay             = ecuSim->ecu_y2x_delay;
  ecuCfg.samples_per_frame     = frame_size;

#if ecu_DELAY_LINE_COMPRESS
  siu_exc_assert (pcm == const_COMP_MULAW_8 ||
                  pcm == const_COMP_ALAW_8, inst);
  if (pcm == const_COMP_MULAW_8) {
    ecuCfg.pcm_expand_tbl = &muaTblUlaw[0];
    ecuCfg.pcm_zero       = SIU_ULAW_ZERO;
  }
  else {
    ecuCfg.pcm_expand_tbl = &muaTblAlaw[0];
    ecuCfg.pcm_zero       = SIU_ALAW_ZERO;
  }
#endif
  cfgParam.filter_length       = ecuSim->ecu_filter_length;
  cfgParam.noise_level         = 0;   /* Use default (-70) if fixed */ 
  cfgParam.config_bitfield     = ecuSim->ecuCtl.u.ctl_mask[0];
  cfgParam.config_bitfield1    = ecuSim->ecuCtl.u.ctl_mask[1];
  cfgParam.nlp_aggress         = 0;   /* balance performance */
  cfgParam.cn_config           = 0;   /* pink noise */
  ecuOpen (inst->ecuInst, &ecuCfg);
} /* siu_open_ecu */

void siu_open_txhyb (tint chnum, tint frame_length,
                     tint filter_length)
{
  siuInst_t *inst = &siuInst[chnum-1];
  const ecomemBuffer_t *hybsizeBufs;
  ecomemBuffer_t  hybBufs[ecu_HYB_SIM_MAX_ECOBUFS];
  hybSizeConfig_t sizeCfg;
  tint      hybnbufs, retVal, i;
  hybNewConfig_t newcfg;
  hybConfig_t cfg;

  /* allocate memory for hyb instance */
  sizeCfg.max_filter_length = MAX_HYB_FILTER_LEN;
  sizeCfg.max_rx_delay = MAX_HYB_RX_DELAY;
  sizeCfg.max_samples_per_frame = MAX_HYB_SAMPLES_PER_FRAME;
  sizeCfg.max_tx_delay = MAX_HYB_TX_DELAY;

  retVal = hybGetSizes(&hybnbufs, &hybsizeBufs, &sizeCfg);
  if (retVal != hyb_NOERR){
    ecuSim->error_id = ecu_SIM_ERR_HYB;
    ecuSim->exec = FALSE;
    ecu_halt (&ecuSim->exec);
  }

  /* a new instance of hyb */
  newcfg.ID                    = chnum;
  newcfg.max_samples_per_frame = frame_length;
  newcfg.max_filter_length     = filter_length;
  newcfg.max_rx_delay          = 0;
  newcfg.max_tx_delay          = 0; 

  for (i=0; i<hybnbufs; i++) {
    hybBufs[i].mclass = hybsizeBufs[i].mclass;
    hybBufs[i].log2align = hybsizeBufs[i].log2align;
    hybBufs[i].size = hybsizeBufs[i].size;
    hybBufs[i].volat = hybsizeBufs[i].volat;
    hybBufs[i].base = malloc(hybBufs[i].size);
  }
  retVal = hybNew(&hybTxInst, hybnbufs, hybBufs, &newcfg);
  if (retVal != hyb_NOERR){
    ecuSim->error_id = ecu_SIM_ERR_HYB;
    ecuSim->exec = FALSE;
    ecu_halt (&ecuSim->exec);
  }
  /* active hyb */
  cfg.samples_per_frame = frame_length;
  cfg.filter_length     = filter_length;
  cfg.rx_delay          = 0;
  cfg.tx_delay          = 0;
  cfg.exception         = inst->exception;

  hybOpen (hybTxInst, &cfg);
} /* siu_open_txhyb */

void siu_open_rxsgn (tint chnum)
{
  siuInst_t *inst = &siuInst[chnum-1];
  sgnConfig_t cfg;
  tint sgnSize, retVal;

  /* init sgn */
  retVal = sgnGetSizes(&sgnSize);
  if (retVal != sgn_NOERR){
    ecuSim->error_id = ecu_SIM_ERR_SGN;
    ecuSim->exec = FALSE;
    ecu_halt (&ecuSim->exec);
  }

  sgnRxInst = malloc(sgnSize);

  cfg.delay         = ecuSim->rxSGN.delay;
  cfg.dc_offset     = ecuSim->rxSGN.dcoffset;
  cfg.wf_type       = ecuSim->rxSGN.wftype;
  cfg.f1            = ecuSim->rxSGN.f1;
  cfg.f2            = ecuSim->rxSGN.f2;
  cfg.t_amp1        = ecuSim->rxSGN.amp1;
  cfg.t_amp2        = ecuSim->rxSGN.amp2;
  cfg.pr_period     = 1000;      /* # of samples between phase reversals */
  cfg.pr_enable     = FALSE;     /* disable phase reversal */
  cfg.noise_level   = ecuSim->rxSGN.nlevel;
  cfg.noise_seed    = ecuSim->rxSGN.nseed;
  cfg.noise_type    = ecuSim->rxSGN.ntype;
  cfg.fsk_duration  = 90;           /* 90/300 = 300ms */
  cfg.fsk_dataptr   = &v21_flags;   /* V.21 flags */
  cfg.fsk_numword   = 1;
  cfg.power_level   = ecuSim->rxSGN.pow_level;
  cfg.hoth_wng_seed = ecuSim->rxSGN.hoth_seed;
  cfg.file_io_fcn   = siu_rx_file;
  cfg.addr          = ecuSim->rxSGN.sdram_addr;
  cfg.count         = ecuSim->rxSGN.num_sample;
  if (inst->companding_law == const_COMP_MULAW_8)
    cfg.pcmtbl      = &muaTblUlaw[0];
  else if (inst->companding_law == const_COMP_ALAW_8)
    cfg.pcmtbl      = &muaTblAlaw[0];
  cfg.exception     = inst->exception;
  cfg.debug         = inst->debug;
  cfg.Fs            = ecuSim->Fs;
  sgnInit (sgnRxInst, &cfg);
} /* siu_open_rxsgn */

void siu_open_txsgn (tint chnum)
{
  siuInst_t *inst = &siuInst[chnum-1];
  sgnConfig_t cfg;
  tint sgnSize, retVal;

  /* init sgn */
  retVal = sgnGetSizes(&sgnSize);
  if (retVal != sgn_NOERR){
    ecuSim->error_id = ecu_SIM_ERR_SGN;
    ecuSim->exec = FALSE;
    ecu_halt (&ecuSim->exec);
  }
  sgnTxInst = malloc(sgnSize);

  cfg.delay         = ecuSim->txSGN.delay;
  cfg.dc_offset     = ecuSim->txSGN.dcoffset;
  cfg.wf_type       = ecuSim->txSGN.wftype;
  cfg.f1            = ecuSim->txSGN.f1;
  cfg.f2            = ecuSim->txSGN.f2;
  cfg.t_amp1        = ecuSim->txSGN.amp1;
  cfg.t_amp2        = ecuSim->txSGN.amp2;
  cfg.pr_period     = 1000;      /* # of samples between phase reversals */
  cfg.pr_enable     = FALSE;     /* disable phase reversal */
  cfg.noise_level   = ecuSim->txSGN.nlevel;
  cfg.noise_seed    = ecuSim->txSGN.nseed;
  cfg.noise_type    = ecuSim->txSGN.ntype;
  cfg.fsk_duration  = 90;           /* 90/300 = 300ms */
  cfg.fsk_dataptr   = &v21_flags;   /* V.21 flags */
  cfg.fsk_numword   = 1;
  cfg.power_level   = ecuSim->txSGN.pow_level;
  cfg.hoth_wng_seed = ecuSim->txSGN.hoth_seed;
  cfg.file_io_fcn   = siu_tx_file;
  cfg.addr          = ecuSim->txSGN.sdram_addr;
  cfg.count         = ecuSim->txSGN.num_sample;
  if (inst->companding_law == const_COMP_MULAW_8)
    cfg.pcmtbl      = &muaTblUlaw[0];
  else if (inst->companding_law == const_COMP_ALAW_8)
    cfg.pcmtbl      = &muaTblAlaw[0];
  cfg.exception     = inst->exception;
  cfg.debug         = inst->debug;
  cfg.Fs            = ecuSim->Fs;
  sgnInit (sgnTxInst, &cfg);
} /* siu_open_txsgn */

void siu_set_sgn (void *inst, siuSGNPars_t *sgn)
{
  sgnControl_t  ctl;

  if (sgn->state) {
    if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {
      ctl.code          = sgn_CTL_CSS_POW;
      ctl.u.power_level = sgn->pow_level;
    }
    else if (sgn->wftype == sgn_WFT_HOTH) {
      ctl.code          = sgn_CTL_HOTH_POW;
      ctl.u.power_level = sgn->pow_level;
    }
    else {
      ctl.code      = sgn_CTL_TONE;
      ctl.u.t.f1    = sgn->f1;
      ctl.u.t.f2    = sgn->f2;
      ctl.u.t.amp1  = sgn->amp1;
      ctl.u.t.amp2  = sgn->amp2;
    }
    sgnControl (inst, &ctl);

    ctl.code           = sgn_CTL_NOISE;
    ctl.u.noise_level  = sgn->nlevel;
  }
  else {
    if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK) {
      ctl.code          = sgn_CTL_CSS_POW;
      ctl.u.power_level = -100;
    }
    else if (sgn->wftype == sgn_WFT_HOTH) {
      ctl.code          = sgn_CTL_HOTH_POW;
      ctl.u.power_level = -80;
    }
    else {
      ctl.code     = sgn_CTL_TONE;
      ctl.u.t.f1   = sgn->f1;
      ctl.u.t.f2   = sgn->f2;
      ctl.u.t.amp1 = 0;
      ctl.u.t.amp2 = 0;
    }
    sgnControl (inst, &ctl);

    ctl.code           = sgn_CTL_NOISE;
    ctl.u.noise_level  = -80;
  }
  sgnControl (inst, &ctl);

  ctl.code = sgn_CTL_DCOFFSET;
  ctl.u.dc_offset = sgn->dcoffset;
  sgnControl (inst, &ctl);

  /* Reset CSS generation */
  if (sgn->reset) {
    if (sgn->wftype == sgn_WFT_CSS || sgn->wftype == sgn_WFT_CSS_DTK )
      ctl.code = sgn_CTL_CSS_RESET;
    else if (sgn->wftype == sgn_WFT_SDRAM)
      ctl.code = sgn_CTL_SDRAM_RST;
    sgnControl (inst, &ctl);
    sgn->reset = FALSE;
  }
} /* siu_set_sgn */


void ecu_sim_init(void)
{ 
  ecuSim->exec        = FALSE;                                         
  ecuSim->sample_cnt  = 0;         
  ecuSim->clock_mul   = 0;                                /* default clock multiplier is 0 (bypass) */       
  ecuSim->pcm_format  = const_COMP_MULAW_8;               /* u-law is default companding law */                
  ecuSim->pcm_bits          = 8;                          /* u-law uses 8-bits */
  ecuSim->frame_size        = 5*8;                        /* 5ms default frame duration */
  ecuSim->ecu_y2x_delay     = 5*8;                        /* One frame default y2x delay */
  ecuSim->ecu_fltseg_length = SIU_MAX_ECU_FLTSEG_LENGTH;  /* 32ms default ECU segment duration */                 
  ecuSim->ecu_num_fltseg    = SIU_MAX_ECU_FLTSEG;                                 /* default 3 active filter segments max */
  ecuSim->ecu_filter_length = SIU_MAX_ECU_FILTER_LENGTH ; /* 128ms default ECU tail */
  ecuSim->hyb_filter_length = SIU_MAX_HYBRID_LENGTH;      /* 128ms default hybrid path */ 
  
  /* ecu initialization */
  ecuSim->toggle_ecu           = TRUE;                         /* toggle ECU mode */
  ecuSim->ecuCtl.ctl_code      = ecu_CTL_MASK;
  ecuSim->ecuCtl.u.ctl_mask[0] = ecu_ENABLE_ECHO_CANCELLER |   /* ENABLE ECU, ENABLE NLP, ENABLE UPDATE */
                                 ecu_ENABLE_UPDATE         |
                                // ecu_ENABLE_NLP            |
                                 ecu_ENABLE_AUTO_UPDATE    |
                                 ecu_ENABLE_SEARCH         |
                                 ecu_ENABLE_CNG_ADAPT      |
                                 ecu_ENABLE_OPNLP_DETECT;
  ecuSim->ecuCtl.u.ctl_mask[1] = ecu_ENABLE_NLP_PHASE_RND;   
                            
  /* hyb initialization */
  ecuSim->toggle_hyb                      = TRUE;                 /* toggle hybrid parameters */    
  ecuSim->hybCtl.code                     = hyb_CTL_FIRST_SEG;    /* Set the first segment */
  ecuSim->hybCtl.u.segment.type           = hyb_ST_G168_M1;       /* M1 */       
  ecuSim->hybCtl.u.segment.erl            = 12;                   /* 12dB*/
  ecuSim->hybCtl.u.segment.delay          = 10*8;                 /* 10ms delay*/
  ecuSim->hybCtl.u.segment.negative_phase = FALSE;                /* positive phase */  
               
  /* tx sgn initialization */
  ecuSim->toggle_tx_sg    = FALSE;           /* toggle Tx generator at the beginning */
  ecuSim->txSGN.state     = TRUE;            /* default state is on */   
  ecuSim->txSGN.reset     = FALSE;           /* default to no reset */
  ecuSim->txSGN.delay     = 0;               /* default is no delay */
  ecuSim->txSGN.dcoffset  = 0;               /* default dc-offset */
//  ecuSim->txSGN.wftype    = sgn_WFT_COSINE;  /* default waveform */
  ecuSim->txSGN.wftype    = sgn_WFT_SILENCE;
  ecuSim->txSGN.f1        = 500;             /* default frequencies for tone generator in Hz (Q0) */
  ecuSim->txSGN.f2        = 0;               
  ecuSim->txSGN.amp1      = 0;               /* default amplitudes of the two frequencies */
  ecuSim->txSGN.amp2      = 0;               
  ecuSim->txSGN.nlevel    = -80;             /* default noise generator level in dBm0 */
  ecuSim->txSGN.nseed     = 0;               /* initial noise generator seed */
  ecuSim->txSGN.ntype     = sgn_NT_GAUSS;    /* Gaussian white noise */
  ecuSim->txSGN.pow_level = -70;             /* default HOTH/CSS power level in dBm0 */             
  ecuSim->txSGN.hoth_seed = 8477;            /* initial HOTH generator seed */

  /* rx sgn initialization */     
  ecuSim->toggle_rx_sg    = FALSE;           /* do not toggle Rx generator */
  ecuSim->rxSGN.state     = TRUE;            /* default state is on */
  ecuSim->rxSGN.reset     = FALSE;           /* default to no reset */
  ecuSim->rxSGN.delay     = 0;               /* default is no delay */
  ecuSim->rxSGN.dcoffset  = 0;               /* default dc-offset */
//  ecuSim->rxSGN.wftype    =   sgn_WFT_COSINE;  /* default waveform */
  ecuSim->rxSGN.wftype    = sgn_WFT_CSS;
  ecuSim->rxSGN.f1        = 1000;            /* default frequencies for tone generator in Hz (Q0) */
  ecuSim->rxSGN.f2        = 0;                  
  ecuSim->rxSGN.amp1      = 0;               /* default amplitudes of the two frequencies */
  ecuSim->rxSGN.amp2      = 0,          
  ecuSim->rxSGN.nlevel    = -100;             /* default noise generator level in dBm0 */ 
  ecuSim->rxSGN.nseed     = 1531;            /* initial noise generator seed */  
  ecuSim->rxSGN.ntype     = sgn_NT_GAUSS;    /* Gaussian white noise */  
  ecuSim->rxSGN.pow_level = -10;             /* default HOTH/CSS power level in dBm0 */
  ecuSim->rxSGN.hoth_seed = 9184;            /* initial HOTH generator seed */
                
  /* piu initialization */  
  ecuSim->toggle_piu      = FALSE;           /* do not toggle PIU */       
 /* PIU control parameters */
  ecuSim->piuCtl.ctl_code                   = piu_DC_OFFSET_REMOVAL; 
  ecuSim->piuCtl.u.dc_offset_removal_select = piu_DC_OFFSET_MODE2; 
  
              
  ecuSim->toggle_getflt   = FALSE;  /* do not ask for filter coefficients */
  /* get filter */
  ecuSim->getflt.select   = 0;      /* FG */
  ecuSim->getflt.start    = 0;      /* start=0               */
  ecuSim->getflt.ncoeff   = 8;      /* get 8 coefficients    */
  ecuSim->getflt.retstat  = 0;      /* ecu_NOERR             */

  
#if ECUSIM_INCLUDE_MAG
  /* MA event */          
  ecuSim->toggle_mipsevt       = FALSE;         /* do not generate a MIPS Agent event */ 
  ecuSim->mipsEvt.event        = MIPS_AGENT_CTRL;  
  ecuSim->mipsEvt.u.channel.id = 0;
#endif  
           
  /* slm initialization */
#if ECU_SIM_USE_VPE
  ecuSim->toggle_slm        = FALSE;        /* do not change signal limiter mode */       
  ecuSim->slm_mode          = slm_DISABLE;  /* signal limiter disabled */
#endif
  
  /* freerun initialization */          
  ecuSim->toggle_freerun    = FALSE;        /* do not do free run */
  ecuSim->freerun_frame_cnt = 0; 
 
  /* Misc initialization */ 
  ecuSim->profile_enable = FALSE;
  ecuSim->Fs             = ecu_SIM_DEF_FS;        /* sampling rate 8kHz */                
  ecuSim->error_id       = 0;                     /* no error */         
  ecuSim->sig_src        = ecu_SIM_SIG_SRC_FILE;  /* signals from file */  
  ecuSim->save_to_file   = FALSE;                 /* if signal source is from SGN,
                                                     don't save the signals to files */
  ecuSim->ecu_y2x_delay  = 0;                     /* 0 y2x delay when reading from files */        
  ecuSim->num_channel    = 1;                     /* 1 channel active */
  ecuSim->output_chnum   = 0;                     /* channel 0 as output */

  /* rin file I/O init */
  ecuSim->rin.eof        = FALSE;                
  ecuSim->rin.fio        = TRUE;
  strcpy ((char *)ecuSim->rin.fname, ecu_SIM_DEF_BASE_INDIR);
  strcat ((char *)ecuSim->rin.fname, ecu_SIM_DEF_RIN_FNAME);
  ecuSim->rin.fptr       = (FILE *) NULL;

  /* sin file I/O init */
  ecuSim->sin.eof        = FALSE;                
  ecuSim->sin.fio        = TRUE;
  strcpy ((char *)ecuSim->sin.fname, ecu_SIM_DEF_BASE_INDIR);
  strcat ((char *)ecuSim->sin.fname, ecu_SIM_DEF_SIN_FNAME);
  ecuSim->sin.fptr       = (FILE *) NULL;

  /* rout file I/O init */
  ecuSim->rout.eof        = FALSE;                
  ecuSim->rout.fio        = TRUE;
  strcpy ((char *)ecuSim->rout.fname, ecu_SIM_DEF_BASE_OUTDIR);
  strcat ((char *)ecuSim->rout.fname, ecu_SIM_DEF_ROUT_FNAME);
  ecuSim->rout.fptr       = (FILE *) NULL;

  /* sout file I/O init */
  ecuSim->sout.eof        = FALSE;                
  ecuSim->sout.fio        = TRUE;
  strcpy ((char *)ecuSim->sout.fname, ecu_SIM_DEF_BASE_OUTDIR);
  strcat ((char *)ecuSim->sout.fname, ecu_SIM_DEF_SOUT_FNAME);
  ecuSim->sout.fptr       = (FILE *) NULL;
}
/* end of ecu_sim_init() */

#if ECUSIM_INCLUDE_MAG
void siu_gen_mag_evt(siuMaEvt_t *evt) 
{
  siuInst_t * inst = &siuInst[0];

  switch (evt->event) {
  /* Generate a MIPS Alarm */
  case MIPS_AGENT_CTRL:
    magControl (&evt->u.ctl); 
    break;
  
  /* Generate an ECU open/close event */
  case MIPS_AGENT_EVENT_ECU:
    magEvtEcuInst ((void *)inst->ecuInst, evt->u.ecu_event);
    break;

  /* Generate a codec open/close event */
  case MIPS_AGENT_EVENT_CODEC:
    magEvtCodecInst (evt->u.codec.id, evt->u.codec.codec, evt->u.codec.event, 
                       evt->u.codec.type);
    break;
  
  /* Generate a channel open/close event */
  case MIPS_AGENT_EVENT_CHSTATE:
    magEvtChanState (evt->u.channel.id, evt->u.channel.ostate, evt->u.channel.nstate);
    break;
  
  /* Unrecognized MIPS Agent event */
  default:
    break;
  }
} /* siu_gen_mag_evt */
#endif


#ifdef _HWDSKT
/* debug function */
void debug_fcn (tuint id, char *str)
{
  printf ("DBG-m:%d-ch:%d, %s\n", id >> 8, id & 0x00FF, str);
}

/* exception function */
void exception_fcn (tuint id, tuint type, tuint code, tuint length, tuint *data)
{
  printf ("EXC-m:%d-ch:%d, Type: %d, Code: %d\n", id >> 8, id & 0x00FF, type, code);
  exit(1);
}
#endif

/******************************************************************************
 * FUNCTION PURPOSE: This is a dummy function. Provides the same API as in the
 *                   G168 test programs. This function is called in siutx.c,
 *                   does nothing here in ecusim, updates power in G168 tests.
 *****************************************************************************/
void siuUpdateECUPowers (siuInst_t *siuInst, linSample *send_in, linSample *recv_in)
{}                       


#if ECUSIM_INCLUDE_MAG
/* MIPS Agent dummy data page function */
tuint mag_dummy_dp (tint code, tint action) {
  return ((tuint)0);
}
#endif

/******************************************************************************
 * FUNCTION PURPOSE: Debug info function
 ******************************************************************************
 * DESCRIPTION: Processes DebugInfo calls by software modules.  If the module
 *              indicate a FATAL ERROR, the SIU calls an exception and provides
 *              a debug string specifing the FATAL ERROR code.  If the module
 *              provides INFORMATION data, the SIU sends the data to the debug
 *              task.
 *             
 *****************************************************************************/
static inline void siu_tuint_to_hex (char *dest, tuint val)
{
  tint i;
  
  dest[4] = 0; /* Null terminate */
  
  for (i=3; i>=0; i--) {
    dest[i] = (val & 0xF);
    if (dest[i] > 9)
      dest[i] += 'A' - 10;
    else
      dest[i] += '0';
    val >>= 4;
  }
}
void siuDebugInfoNew (tuint moduleID, tuint msgType, tuint messageCode, 
                      tuint msgLength, tuint *messageData)
{
  char exc_string[25];

  switch (msgType)
  {
     case SIU_DEBUG_FATAL:
        /* Convert message code to a string -- call SIU exception handler */
        strcpy (exc_string, "Exception 0x");
        /* Tack exception code after previous string */
        siu_tuint_to_hex (exc_string+12, 
                          ((moduleID & 0xFF00) << 2) | (messageCode & 0x3FF)); 
        siuException (moduleID, exc_string); 

     default:
        break;  /* Ignore other message types */
  }
} /* siuDebugInfoNew() */

/******************************************************************************
 * FUNCTION PURPOSE: Report from PIU for Bidirectional Silence/Pattern detectin
 ******************************************************************************
 * DESCRIPTION: This function reports when Bidirectional Silence or
 *              Pattern is detected.
 *
 *  void siuPiuReport (
 *    void *siuInst,    - target instance
 *    tint report_code) - indication of Bidirectional Silence or pattern detected
 *
 *****************************************************************************/

tint siu_piu_report_code;   /* to keep piu reports */

void siuPiuReport (void *siuInst, tint report_code)
{
  siu_piu_report_code = report_code;
} /* siuPiuReport */

/******************************************************************************
 * FUNCTION PURPOSE: PCM Sample Trace Processing
 ******************************************************************************
 * DESCRIPTION: Collecting PCM samples from selected channel.
 *
 *****************************************************************************/
void siuPcmSampleTrace (tint chnum, tint pcm_size, void *pcm_in, tuint dir)
{
  /* no trace in simulation */
} /* siuPcmSampleTrace */

/******************************************************************************
 * FUNCTION PURPOSE: Accept send and receive samples for TxRx task.
 ******************************************************************************
 * DESCRIPTION: Accepts send and receive samples for TxRx task. Starts TxRx task
 *
 *****************************************************************************/

void siuTxRxSendIn (void *siuInst, void *send_frame, void *recv_frame, 
                  tint queue_id)
{
  siuInst_t *inst = (siuInst_t*)siuInst;

  piuTxRxProc (inst->piuInst, send_frame, recv_frame);
} /* siuTxRxSendIn */

/* end of ecusim.c*/


