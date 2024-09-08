/******************************************************************************
 * PURPOSE : Main source file for the PCM Interface Unit (PIU).
 ******************************************************************************
 * FILE NAME:   piutxrx.c
 *
 * DESCRIPTION: Contains main PIU functions.
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
/* Ansi C header files */
#include <stdlib.h>
#include <string.h>

/* System Level header files */
#include <ti/mas/types/types.h>

/* System Utilities' API's */
#include <ti/mas/util/utl.h>
#include <ti/mas/util/mua.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
#include <ti/mas/ecu/test/src/piuloc.h>
#include <ti/mas/ecu/test/src/piuport.h>

/*****************************************************************************
 * FUNCTION PURPOSE: Perform linear samples to PCM samples conversion.
 *****************************************************************************  
 * DESCRIPTION: Performs 16-bit to n-bit PCM compression
 *
 *  void piu_pcm_compressing (
 *    piuInst_t *inst,        - a pointer to PIU instance
 *    tint      *linear_in,   - a pointer to input buffer
 *    tint      *pcm_out,     - a pointer to output buffer
 *    tint      length)       - number of samples to compress
 * 
 *****************************************************************************/
void piu_pcm_compressing (piuInst_t *inst, tint *linear_in, 
                          tint *pcm_out, tint length)
{
  linSample *in_ptr, *out_ptr;
  
  /* Initialize common variable(s) */
  in_ptr  = linear_in;
  out_ptr = pcm_out;
  if ((inst->mode_bitfield&piu_CTRL_BIT_TRANSPARENT_MODE)) { 
    utlCopy((tword *)in_ptr, (tword *)out_ptr, length);
  }
  else {
    /* Perform 16-bit to 8-bit compression or linear compression */
    if (inst->pcm_format == piu_COMP_ULAW)        /* u-law + saturation */
      muaTblUlawCmpr (length, in_ptr, out_ptr);
    else if (inst->pcm_format == piu_COMP_ALAW)   /* A-law + saturation */
      muaTblAlawCmpr (length, in_ptr, out_ptr);
    else                         /* linear 16 bit data, out = in */
      utlCopy((tword *)in_ptr, (tword *)out_ptr, length);
  }  
} /* piu_pcm_compressing */

/*****************************************************************************
 * FUNCTION PURPOSE: Perform PCM samples to linear samples conversion
 *****************************************************************************  
 * DESCRIPTION: PCM samples to linear samples conversion.
 *
 *  void piu_pcm_companding (
 *    piuInst_t *inst,        - a pointer to PIU instance
 *    tint      *pcm_in,      - a pointer to input buffer
 *    tint      *linear_out,  - a pointer to output buffer
 *    tint      length)       - number of samples to compand
 * 
 ****************************************************************************/
void piu_pcm_companding (piuInst_t *inst, tint *pcm_in, 
                         tint *linear_out, tint length)
{
  tint  *linear_out_ptr;
  const tint *pcm_expand_table;

  linear_out_ptr = linear_out;
  /* Perform n-bit to 16-bit PCM expansion */
  if ((!(inst->mode_bitfield&piu_CTRL_BIT_TRANSPARENT_MODE)) &&
    (inst->pcm_expand_table != NULL)) {
    pcm_expand_table = inst->pcm_expand_table;
    UAExpand(length, (tword *)pcm_in, &linear_out_ptr, pcm_expand_table);
  }
  else {    /* no processing in transparent mode or linear expansion */
    utlCopy((tword *)pcm_in, (tword *)linear_out_ptr, length);
  }
} /* piu_pcm_companding */

/******************************************************************************
 * FUNCTION PURPOSE: Update (boundary check) the receive_in buffer in_index
 ******************************************************************************
 * DESCRIPTION: Update (boundary check) the receive_in buffer in_index.
 * 
 *   void piu_update_buf_ptr ( 
 *     void *piuInst, - A pointer to PIU instance
 *     tbool dir,      - direction: 0-input, 1-output
 *     tint **inptr)  - Adress of receive_in buf in_ptr address
 *
 *
 *****************************************************************************/

void piu_update_buf_ptr (piuInst_t *inst, tbool dir, linSample **in_ptr)
{
  *in_ptr += inst->segment_size;
  if (*in_ptr == inst->receive_in_buf.end_ptr) {
    *in_ptr = inst->receive_in_buf.start_ptr;
  }
  if (dir)
    inst->receive_in_buf.segment_count--;
  else    
    inst->receive_in_buf.segment_count++;
} /* piu_update_buf_ptr */

/******************************************************************************
 * FUNCTION PURPOSE: Measure signal levels
 ******************************************************************************
 * DESCRIPTION: This function reports the PIU send-out and receive-out signal
 *              levels. It is executed in the context of the calling task.
 *              The signal level reported in dBm0.
 * 
 *   void piu_get_stats ( 
 *     void        *piuInst, - A pointer to PIU instance
 *     piuLevels_t *levels)  - Pointer to signal level structure
 *
 * NOTE: Vmax = 32768 for +3dBm0
 *
 *****************************************************************************/
void piu_get_stats (void *piuInst, piuStats_t *stats)
{
  tint db;
  LFract lin;
  piuInst_t          *inst       = (piuInst_t *)piuInst;
  piuEnergyDCLevel_t *lin_levels = (piuEnergyDCLevel_t *)&inst->energy_DClevel;

  /* mean is reported in 16bits signed linear integer format */
  stats->send_out_mean     = frctLF2F(lin_levels->txDClevel, piu_MEAN_Q, 0);
  stats->receive_out_mean  = frctLF2F(lin_levels->rxDClevel, piu_MEAN_Q, 0);

  /* energy is reported in 16bits signed dBm0 format */
  lin = frctAdjustQ (lin_levels->txEnergy, piu_ENERGY_Q, 0);
  if (lin <= 0) /* input to utlLin2dBPower must be > 0 */
    lin = 1;    /* -84 dBm0 */
  db = utlLin2dBPower (lin);
  stats->send_out = frctAdjustQ (db, piu_POWER_DB_Q, 0);

  lin = frctAdjustQ (lin_levels->rxEnergy, piu_ENERGY_Q, 0);
  if (lin <= 0) /* input to utlLin2dBPower must be > 0 */
    lin = 1;    /* -84 dBm0 */
  db = utlLin2dBPower (lin);
  stats->receive_out = frctAdjustQ (db, piu_POWER_DB_Q, 0);
  stats->underrun    = inst->rx_underflow_cnt;
} /* piu_get_stats */

/*****************************************************************************
 * FUNCTION PURPOSE: Bidirectional Silence Detection
 *****************************************************************************
 * DESCRIPTION: Bidirectional Silence Detection .
 *
 * void piu_bid_silence_detect (
 *    piuInst_t *inst) - a pointer to PIU instance
 *
 ****************************************************************************/
void piu_bid_silence_detect (piuInst_t *inst)
{
  LFract lin_thres;
  piuContext_t *context = &piuContext;

  lin_thres = inst->bidSilence.threshold*8;
  if (inst->bidSilence.txSilDetEnergy > lin_thres)
    inst->bidSilence.txSilDetEnergy = lin_thres;
  if (inst->bidSilence.rxSilDetEnergy > lin_thres)
    inst->bidSilence.rxSilDetEnergy = lin_thres;

  if ((inst->bidSilence.txSilDetEnergy < inst->bidSilence.threshold) && 
      (inst->bidSilence.rxSilDetEnergy < inst->bidSilence.threshold))
  {
    inst->bidSilence.cnt -= (inst->segment_size) >> piu_BIDIR_SILENCE_LOG2_FRAME_DECIMATION;  /* Since the 
                                                          counter is decremented once every 4 samples */

    if (inst->bidSilence.cnt <= 0)
    {
      /* disable the detection */
      inst->mode_bitfield &= (~piu_CTRL_BIT_BID_SILENCE_DET);

      /* report detection */
      (*context->reportOutFcn) (inst->reportOutTargetInst,
                                piu_BIDIR_SILENCE_DETECTED);
    }
  }
  else
    inst->bidSilence.cnt = inst->bidSilence.initCnt; /* re-initialize cntr */
} /* piu_bid_silence_detect */

/*****************************************************************************
 * FUNCTION PURPOSE: Detect presence of specified pattern
 *****************************************************************************
 * DESCRIPTION: If the specified pattern is present on the PCM interface, for
 *              specified duration of time, the detection message will be sent.
 *
 * void piu_pcm_pattern_detect (
 *   piuInst_t *inst,   - instance structure
 *   tint *pcm_in)      - subsegment of input samples
 *
 ****************************************************************************/

void piu_pcm_pattern_detect (piuInst_t *inst, tint *pcm_in)
{
  piuPcmPatternDetect_t *pcmPattern    = &inst->pcmPattern;
  piuContext_t          *context       = &piuContext;
  tbool                  patternPresent = TRUE;
  tuint                 pattern1, pattern2,pattern3;
  tint                  i, sample;

  if (pcmPattern->type == piu_PCM_PATTERN_E1) {
    /* E1 patterns */
    pattern1 = 0x54; pattern2 = 0xD4; pattern3 = 0xD5;
  }
  else {
    if (pcmPattern->type == piu_PCM_PATTERN_CUSTOM){
      /* patterns defined by user */
      pattern1 = pattern2 = pattern3 = pcmPattern->custom;
    }
    else if (pcmPattern->type == piu_PCM_PATTERN_T1) {
      /* T1 patterns */
      pattern1 = pattern2 = pattern3 = 0x7f;
    }
    else patternPresent = FALSE;
    for (i = 0; i < inst->segment_size; i++) {
      sample = pcm_in[i] & 0xFF;
      if ((sample != pattern1) && (sample != pattern2) && (sample != pattern3))
        patternPresent = FALSE;
    }
  }
  if (patternPresent) {
    pcmPattern->cnt -= inst->segment_size;
    if (pcmPattern->cnt <= 0)
    {
      inst->mode_bitfield &= (~piu_CTRL_BIT_PATTERN_DETECT);
      /* report detection if the pattern appears consecutively for 
         the configured length */
      (*context->reportOutFcn) (inst->reportOutTargetInst, piu_PATTERN_DETECTED);
    }
  }
  else /* pattern is not present consecutively, re-initialize cntr */
    pcmPattern->cnt = (pcmPattern->initCnt*8); 
} /* piu_pcm_pattern_detect */

/*****************************************************************************
 * FUNCTION PURPOSE: Generate specified pattern
 *****************************************************************************
 * DESCRIPTION: Generate specified pattern.
 *
 * void piu_pcm_pattern_generate (
 *   piuInst_t *inst)   - instance structure
 *
 ****************************************************************************/

void piu_pcm_pattern_generate (piuInst_t *inst)
{
  int i;

  if ((inst->pcm_format == piu_COMP_ULAW)||(inst->pcm_format == piu_COMP_ALAW)){
    /* generate 8 bit patterns and pack them to 16 bit */
    for(i=0; i < inst->segment_size; i+=2) {
      inst->receive_in_buf.in_ptr[i]  =(tint)((inst->generatePattern>>8)&0x00ff);
      inst->receive_in_buf.in_ptr[i+1]=(tint)(inst->generatePattern & 0x00ff);
    }
  }
  else {
    /* generate 16 bit patterns */
    utlLsMemSet (inst->receive_in_buf.in_ptr, (tint) (inst->generatePattern), 
                 inst->segment_size );
  }
  piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);
} /* piu_pcm_pattern_generate */

/******************************************************************************
 * FUNCTION PURPOSE : Write speech samples to PIU receive-in buffer for playout
 ******************************************************************************
 * DESCRIPTION : This function writes a segment of voice samples into the
 * PIU receive-in buffer.
 * 
 *   void piuReceiveIn ( 
 *     void      *piuInst,        - A pointer to PIU instance
 *     linSample *speech_samples) - A pointer to a segment of voice samples 
 *
 *****************************************************************************/
void piuReceiveIn ( void *piuInst, void *speech_samples )
{  
  piuInst_t *inst          = (piuInst_t *) piuInst;
  linSample *voice_samples = (linSample *) speech_samples;
  tuint segment_rxcount;

  if (inst->state != piu_OPEN)
    return;
  /* bypass if it is PCM loopback or do pattern generation */
  if(inst->mode_bitfield & (piu_CTRL_BIT_DO_PCM_LOOPBACK| 
     piu_CTRL_BIT_PATTERN_GENERATE)) 
    return;

  PIU_BEGIN_CRITICAL_SECTION();

  /* Triple or double buffering ? */
  segment_rxcount = 
    (inst->mode_bitfield & piu_CTRL_BIT_TRIPLE_RX_BUF ? piu_NUMSEGM_RX3 : piu_NUMSEGM_RX2);
                        
  /* check for overflow into buffers by RxIn */
  if (inst->receive_in_buf.segment_count >= segment_rxcount - 1)
  {
    inst->rx_overflow_cnt++;
    goto EXIT;    
  }
  /* energy and DC level measurement for samples toward TDM */
  piu_frame_energy (inst->segment_size, voice_samples, &inst->energy_DClevel.rxEnergy);               
  piu_frame_DClevel(inst->segment_size, voice_samples, &inst->energy_DClevel.rxDClevel);
  if (inst->mode_bitfield & piu_CTRL_BIT_BID_SILENCE_DET) {
    piu_frame_energy (inst->segment_size, voice_samples, 
                      &inst->bidSilence.rxSilDetEnergy);
  }
  /* compress the voice samples and store them in the receive_in buffer */ 
  piu_pcm_compressing(inst, voice_samples, inst->receive_in_buf.in_ptr,
                      inst->segment_size); 

  /* buffer in-index update */
  piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);

EXIT:
  PIU_END_CRITICAL_SECTION();
} /* piuReceiveIn */ 


/*****************************************************************************
 * FUNCTION PURPOSE: PIU Processes
 *****************************************************************************
 * DESCRIPTION: PIU Processes.
 *
 * void piuTxRxProc (
 *    piuInst_t *inst,     - a pointer to PIU instance
 *    tint      *tx_ptr,   - a pointer to PIU send_out Buffer
 *    tint      *rx_ptr)   - a pointer to PIU receive_out Buffer
 *
 ****************************************************************************/
void piuTxRxProc (void *piuInst, linSample *tx_ptr, linSample *rx_ptr)
{ 
  piuInst_t    *inst    = (piuInst_t *) piuInst;
  piuContext_t *context = &piuContext;
  tint         *send_out_ptr, *linear_loopback_ptr;
  tuint ratio = sizeof(linSample)/sizeof(tword);

#if !PIUDLCOMP_ENABLE
  tint         *receive_out_ptr;
#endif

  if (inst->state != piu_OPEN) return ;

  send_out_ptr    = (tint *)tx_ptr;
#if !PIUDLCOMP_ENABLE
  receive_out_ptr = (tint *)rx_ptr;
#endif

  /* pattern generation if enabled */
  if(inst->mode_bitfield & piu_CTRL_BIT_PATTERN_GENERATE)
    piu_pcm_pattern_generate (inst);

  /* PCM loopback processing */
  if (inst->mode_bitfield & piu_CTRL_BIT_DO_PCM_LOOPBACK) {
    /* tx PCM samples looped back to rx */
    utlCopy((tword *)send_out_ptr, (tword *)inst->receive_in_buf.in_ptr, ratio*inst->segment_size);
    piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);
    if (inst->mode_bitfield & piu_CTRL_BIT_LOOPBACK_NOPASS) {
      memset (send_out_ptr, inst->silence_pattern, inst->segment_size);
    }
  }
  else if (inst->mode_bitfield & piu_CTRL_BIT_DO_LIN_LOOPBACK) {
    /* rx Linear samples looped back to tx */
    if (inst->receive_in_buf.in_ptr == inst->receive_in_buf.start_ptr)
      linear_loopback_ptr = inst->receive_in_buf.end_ptr - inst->segment_size;
    else
      linear_loopback_ptr = inst->receive_in_buf.in_ptr - inst->segment_size;
    utlCopy((tword *)linear_loopback_ptr, (tword *)send_out_ptr, ratio*inst->segment_size);
    if (inst->mode_bitfield & piu_CTRL_BIT_LOOPBACK_NOPASS) {
      memset (linear_loopback_ptr, inst->silence_pattern, inst->segment_size);
    }
  }

  /* PCM Pattern Detection */
  if (inst->mode_bitfield&piu_CTRL_BIT_PATTERN_DETECT)
    piu_pcm_pattern_detect (inst, tx_ptr);
  /* 8 bit to 16 bit conversion */
  piu_pcm_companding(inst, send_out_ptr, send_out_ptr, inst->segment_size);
#if !PIUDLCOMP_ENABLE
  if (inst->mode_bitfield & piu_CTRL_BIT_USE_RECV_OUT_BUF){
      piu_pcm_companding(inst, receive_out_ptr, receive_out_ptr,
                         inst->segment_size);
  }
#endif
  /* energy and DC level measurement for samples from TDM */
  piu_frame_energy (inst->segment_size, tx_ptr, &inst->energy_DClevel.txEnergy);

  if(!(inst->mode_bitfield & piu_CTRL_BIT_REMOVE_DC_COMP)) 
  {
    /* Measure DC level for Statistics */
    piu_frame_DClevel(inst->segment_size, tx_ptr, &inst->energy_DClevel.txDClevel);
  }
  else
  { /* Measure and remove DC component */
    if (inst->mode_bitfield & piu_CTRL_BIT_DC_FILTR_SELECT_MODE1)
    {
        /* Select Mode 1 alpha = 1/64 */
        piu_remove_dc_component(inst->segment_size, tx_ptr, &inst->energy_DClevel.txDClevel, 
        piu_DC_FILTER_MODE1_MINUS_ALPHA_SHIFT);
    }
    else
    {
        /* Mode 2 for echo canceller alpha = 1/4 */
        piu_remove_dc_component(inst->segment_size, tx_ptr, &inst->energy_DClevel.txDClevel,
        piu_DC_FILTER_MODE2_MINUS_ALPHA_SHIFT);
    }
    
  }

 /* bid Silence Detection */
  if (inst->mode_bitfield&piu_CTRL_BIT_BID_SILENCE_DET) {
    piu_frame_energy (inst->segment_size, tx_ptr, &inst->bidSilence.txSilDetEnergy);               
    piu_bid_silence_detect (inst);
  }

#if 0 /* remove the underrun report for now */
  /* report underrun as error indication */
  if ((inst->mode_bitfield&piu_CTRL_BIT_RECV_IN_BUF_EMPTY)&&
      (inst->mode_bitfield&piu_CTRL_BIT_UNDERRUN_REPORT))
    (*context->reportOutFcn)(inst->reportOutTargetInst, piu_UNDERRUN);
#endif

  /* call send-out function */
  (*context->sendOutProcFcn)(inst->sendOutProcTargetInst, (void *)tx_ptr, (void *) rx_ptr, 
                             piu_TX_TASK_ID);
} /* piuTxRxProc */
/* nothing past this point */
