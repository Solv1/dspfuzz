/******************************************************************************
 * PURPOSE : Main source file for the PCM Interface Unit (PIU).
 ******************************************************************************
 * FILE NAME:   piu.c
 *
 * DESCRIPTION: Contains main PIU functions.
 *
 * $Id: piu.c 1.29.1.5 1999/06/03 17:18:47 BONAL Exp $
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
/* Ansi C header files */
#include <stdlib.h>

/* System Level header files */
#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>

/* System Utilities' API's */
#include <ti/mas/util/utl.h>
#include <ti/mas/util/debug.h>
#include <ti/mas/util/wng.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
#include <ti/mas/ecu/test/src/piuloc.h>
#include <ti/mas/ecu/test/src/piuport.h>

/* Allocate the global ecu Context */
piuContext_t piuContext;

/******************************************************************************
 * FUNCTION PURPOSE: Exception function
 ******************************************************************************
 * DESCRIPTION: Relays a fatal exception through the global exception
 *              pointer.
 *****************************************************************************/
void piu_exception(tuint ID, tuint code)
{
   piuContext.debugInfo ((void *)&ID, dbg_EXCEPTION_FATAL, code, 0, NULL);
}
/*****************************************************************************
 * FUNCTION PURPOSE: Delete a PIU instance 
 *****************************************************************************
 * DESCRIPTION: Deletes an instance of PIU. Deallocates any memory allocated
 *              in piuNew() including PIU instance structure.  
 *
 *   void piuDelete (
 *     void        **piuInst, - an address of memory location that contains 
 *                              a pointer to instance structure
 *     tint        nbufs,     - number of memory buffers
 *     memBuffer_t *bufs)     - a vector of buffer descriptors 
 *
 ****************************************************************************/
void piuDelete (void **piuInst, tint nbufs, ecomemBuffer_t *bufs)
{
  piuInst_t    *inst    = (piuInst_t *) *piuInst;

  piu_exc_assert ((inst->state == piu_CLOSED), piu_EXC_DELETE, inst);
     
  /* Mark the instance as free */
  *piuInst = NULL;
} /* piuDelete */

/*****************************************************************************
 * FUNCTION PURPOSE: reset piu receive in buffer
 ****************************************************************************/
void piu_reset_receive_in_buf (piuInst_t *inst)
{
  inst->receive_in_buf.in_ptr  = inst->receive_in_buf.out_ptr =
  inst->receive_in_buf.end_ptr = inst->receive_in_buf.start_ptr;
  while ((inst->receive_in_buf.top_ptr - inst->receive_in_buf.end_ptr)
          >= inst->segment_size) {
    inst->receive_in_buf.end_ptr += inst->segment_size;
  }; 
  inst->receive_in_buf.segment_count = 0;
} /* piu_reset_receive_in_buf */
/*****************************************************************************
 * FUNCTION PURPOSE: 
 *****************************************************************************
 * DESCRIPTION: 
 *			 	
 *****************************************************************************/
void piuSetCompanding (piuInst_t *inst, piuCompandingCfg_t *cfg)
{
  inst->pcm_expand_table  = cfg->pcm_expand_table;
  inst->pcm_format        = cfg->law;
  if (inst->pcm_format == piu_COMP_ULAW)
    inst->silence_pattern = piu_MULAW_SILENCE;
  else if (inst->pcm_format == piu_COMP_ALAW)
    inst->silence_pattern = piu_ALAW_SILENCE;
  else
    inst->silence_pattern = piu_LINEAR_SILENCE;
}

/*****************************************************************************
 * FUNCTION PURPOSE: Open and configure a specific instance of a PIU
 *****************************************************************************
 * DESCRIPTION: This routine initializes and configures a specific instance 
 * of a PIU. Instance structure is assumed to be allocated by piuNew(). In 
 * case of error, generates an exception. 
 *
 *   void piuOpen (
 *     void        *piuInst, - A pointer to PIU instance
 *     piuConfig_t *cfg)     - A pointer to PIU configuration structure
 *   
  ****************************************************************************/
void piuOpen (void *piuInst, piuConfig_t *cfg)
{
  piuInst_t    *inst    = (piuInst_t *) piuInst;
  piu_exc_assert ((inst->state == piu_CLOSED), piu_EXC_OPEN, inst); 

  /* The TRIPLE_RX_BUF mode is controlled by piuNew(), so don't wipe it here */
  inst->mode_bitfield &= piu_CTRL_BIT_TRIPLE_RX_BUF;
  inst->mode_bitfield |= piu_CTRL_BIT_RECV_IN_BUF_EMPTY; 

  if (cfg->transp_mode) { /* Set transparent mode flag */
    inst->mode_bitfield    |= piu_CTRL_BIT_TRANSPARENT_MODE;
  } 
  /* set compression mode - u-law or A-law */
  piuSetCompanding(inst, &cfg->companding);

  /* segment_size is not more than what is assigned in piuNew and must be
   *  a multiple of sub_segment_size! */
  piu_exc_assert (cfg->segment_size > 0, piu_EXC_SUBFRAMESIZE, inst);

  inst->segment_size      = cfg->segment_size;
  inst->rx_underflow_cnt  = inst->rx_overflow_cnt  = 0;
  inst->rx_delay          = cfg->rx_delay;

  /* Initialize energy and DC level */
  inst->energy_DClevel.txEnergy  = inst->energy_DClevel.rxEnergy
  = inst->energy_DClevel.txDClevel = inst->energy_DClevel.rxDClevel = 0;

  /* Initialize bi-directional silence detedtion parameters */
  inst->bidSilence.txSilDetEnergy = inst->bidSilence.rxSilDetEnergy = 0;
  /* Initialize target instances of report and sendout functions */
  inst->reportOutTargetInst    = cfg->reportOutTargetInst;
  inst->sendOutProcTargetInst  = cfg->sendOutProcTargetInst;
  inst->sendOutIsrTargetInst   = cfg->sendOutIsrTargetInst;

  /* By default pattern generation is diabled */
  inst->generatePattern = 0;             /* Default pattern */

  /* use receive out buf or not; if not allocated in new, do not use it */
  inst->receive_out_buf_ptr = inst->receive_out_buf;
  if (cfg->use_recv_out_buf) {
    tuint loc_segment_size;      
    
    loc_segment_size =
      (inst->mode_bitfield & piu_CTRL_BIT_TRIPLE_RX_BUF ? piu_NUMSEGM_RX3 : piu_NUMSEGM_RX2);    
#if PIUDLCOMP_ENABLE
    loc_segment_size *= (inst->segment_size>>1);
#else
    loc_segment_size *= inst->segment_size;
#endif
    utlLsMemSet (inst->receive_out_buf, (linSample) 0, loc_segment_size);
    inst->mode_bitfield |= piu_CTRL_BIT_USE_RECV_OUT_BUF;    
  }

  /* initialize send-out buffer */
  inst->send_out_buf_ptr = inst->send_out_buf;
  utlLsMemSet ( inst->send_out_buf, (linSample) 0, 
                piu_NUMSEGM_TX * inst->segment_size );

  /* initialize receive_in buffer */
  piu_reset_receive_in_buf(inst);
  inst->state = piu_OPEN;     /* set state to open */

} /* piuOpen */

/*****************************************************************************
 * FUNCTION PURPOSE: Close an instance of a PIU 
 *****************************************************************************
 * DESCRIPTION: Closes a PIU instance.
 * 
 *   void piuClose ( void *piuInst ) - A pointer to PIU instance
 * 
 ****************************************************************************/
void piuClose ( void *piuInst )
{
  piuInst_t *inst = (piuInst_t *) piuInst ;

  /* set state to closed */
  inst->state = piu_CLOSED ;
} /* piuClose */

/*****************************************************************************
 * FUNCTION PURPOSE: Bidirectional Silence Detection Enable/Disable
 *****************************************************************************
 * DESCRIPTION: The signal power level calculation for both directions is
 *              running all the time. This function enables or disables
 *              Bidirectional Silence Detection.
 *
 * void piuBidSilenceDetect (
 *   void *piuInst,  - instance structure
 *   tbool enable,    - enable/disable
 *   tint threshold, - power level under which the signal absence is declared
 *   tint hangover)  - in [ms], during which continuous absence is necessary
 *
 ****************************************************************************/
void piuBidSilenceDetect (void *piuInst, bidSilenceDet_t *ctrl)
{
  LFract    lin_thres;
  piuInst_t *inst = (piuInst_t *) piuInst;
  LFract    linpwr;

  if (ctrl->enable) {
    linpwr = utldB2LinPower(frctAdjustQ (ctrl->threshold, 0, 4));
    inst->bidSilence.threshold = frctAdjustQ(linpwr,0,piu_ENERGY_Q);
    inst->bidSilence.initCnt   = (ctrl->hangover)<< piu_BIDIR_SILENCE_RESOLUTION_LOG2_FACTOR;
    inst->bidSilence.cnt       = inst->bidSilence.initCnt;
    inst->bidSilence.txSilDetEnergy = inst->energy_DClevel.txDClevel;
    inst->bidSilence.rxSilDetEnergy = inst->energy_DClevel.rxDClevel;
    lin_thres                       = inst->bidSilence.threshold*8;
    if (inst->energy_DClevel.txDClevel > lin_thres)
      inst->bidSilence.txSilDetEnergy = lin_thres;
    if (inst->energy_DClevel.rxDClevel > lin_thres)
      inst->bidSilence.rxSilDetEnergy = lin_thres;

    /* sequence is important, this command has to be the last */
    inst->mode_bitfield |= piu_CTRL_BIT_BID_SILENCE_DET; 
  }
  else
    inst->mode_bitfield &= (~piu_CTRL_BIT_BID_SILENCE_DET); 
} /* piuBidSilenceDetect */

/*****************************************************************************
 * FUNCTION PURPOSE: Detect presence/absence of specified pattern.
 *****************************************************************************
 * DESCRIPTION: If the specified pattern is present on the PCM interface, for
 *              specified duration of time, the detection message will be sent.
 *
 * void piuPatternDetect (
 *   void *piuInst,   - instance structure
 *   tbool enable,     - enable/disable
 *   tint type,       - custom, T1 or E1
 *   tint time,       - in [ms]
 *   tint custom)     - custom pattern to be detected.
 *
 ****************************************************************************/
void piuPatternDetect (void *piuInst, pcmPatternDet_t *pattern_detect)
{
  piuInst_t             *inst       = (piuInst_t *) piuInst;
  piuPcmPatternDetect_t *pcmPattern = &inst->pcmPattern;

  if (pattern_detect->enable)
  {
    /* initialization */
    pcmPattern->type    = pattern_detect->type;
    pcmPattern->initCnt = pattern_detect->time;
    pcmPattern->cnt     = (pcmPattern->initCnt * 8); /* [ms] to [samples] */
    pcmPattern->custom  = pattern_detect->custom;

    inst->mode_bitfield |= piu_CTRL_BIT_PATTERN_DETECT; 
  }
  else
    inst->mode_bitfield &= (~piu_CTRL_BIT_PATTERN_DETECT); 
} /* piuPatternDetect */

/*****************************************************************************
 * FUNCTION PURPOSE: SIU passing pattern generation info to PIU
 *****************************************************************************
 * DESCRIPTION: This function passes the patterngeneration info from MIC
 *			 	message to PIU instance
 * void piuPatternGeneration(
 *   void *piuInst, 			- Pointer to PIU instance
 *   tuint patternGenControl,	- Pattern generation enable/disable flag 
 *   tint pattern)				- Pattern to be generated
 *****************************************************************************/
void piuPatternGeneration(void *piuInst, pcmPatternGen_t *ctrl)
{
  piuInst_t *inst   = (piuInst_t *) piuInst;
  tuint     pattern = ctrl->pattern;

  if(ctrl->enable)
  {
    inst->mode_bitfield  |= piu_CTRL_BIT_PATTERN_GENERATE; 
	  inst->generatePattern = pattern;
  }
  else {
    inst->mode_bitfield  &= (~piu_CTRL_BIT_PATTERN_GENERATE); 
	  inst->generatePattern = 0;
  }
} /* piuPatternGeneration */

/*****************************************************************************
 * FUNCTION PURPOSE: Control voice samples loopback mode on a PIU
 *****************************************************************************
 * DESCRIPTION: Starts voice samples loopback if the loopback_on parameter is 
 *              TRUE, stops loopback otherwise. Ignores the calls that come
 *              within improper state.
 *
 *   void piu_loopback_config (
 *     void *piuInst,    - A pointer to PIU instance
 *     tint selection)   - Loopback on if nonzero
 * 
 ****************************************************************************/
void piu_loopback_config (void *piuInst, tint selection)
{
  piuInst_t *inst = (piuInst_t *) piuInst;

  inst->mode_bitfield &= (~piu_CTRL_BIT_DO_PCM_LOOPBACK);
  inst->mode_bitfield &= (~piu_CTRL_BIT_DO_LIN_LOOPBACK);
  inst->mode_bitfield &= (~piu_CTRL_BIT_LOOPBACK_NOPASS); /* enable */
  if (selection & PCM_LOOPBACK_ON) { /* PCM loopback */
    inst->mode_bitfield |= piu_CTRL_BIT_DO_PCM_LOOPBACK; 
    inst->receive_in_buf.in_ptr  = inst->receive_in_buf.start_ptr;
    inst->receive_in_buf.out_ptr = inst->receive_in_buf.start_ptr
                                    + inst->segment_size;                /* Why is this so ? */
    inst->receive_in_buf.segment_count = -1;
  }
  if (selection & LIN_LOOPBACK_ON) { /* linear loopback */
    inst->mode_bitfield |= piu_CTRL_BIT_DO_LIN_LOOPBACK;
  }
  if (selection & DATA_FLOW_DISABLE) { /* linear loopback */
    inst->mode_bitfield |= piu_CTRL_BIT_LOOPBACK_NOPASS;
  }
} /* piu_loopback_config */


/*****************************************************************************
 * FUNCTION PURPOSE: SIU passing Dc offset removal information to PIU
 *****************************************************************************
 * DESCRIPTION: This function passes the Dc offset removal information from MIC
 *			 	message to PIU instance
 * void piuDcOffsetRemoval(
 *   void *piuInst, 			- Pointer to PIU instance
 *   tint mode,                 - Selects whether Dc offset removal is diabled
 *                                or if enabled then the mode of operation
 ******************************************************************************/
void piuDcOffsetRemoval(void *piuInst, tint mode)
{
  piuInst_t *inst   = (piuInst_t *) piuInst;
  
  if(mode == piu_DC_OFFSET_DISABLE)
  {
    inst->mode_bitfield  &= (~piu_CTRL_BIT_REMOVE_DC_COMP); 
  }
  else 
  { /* DC offset is enabled select mode */
    inst->mode_bitfield  |= piu_CTRL_BIT_REMOVE_DC_COMP; 
    if (mode == piu_DC_OFFSET_MODE1) 
    {
       inst->mode_bitfield |= piu_CTRL_BIT_DC_FILTR_SELECT_MODE1; 
    }
    else
    {
        inst->mode_bitfield &= (~piu_CTRL_BIT_DC_FILTR_SELECT_MODE1);
    }
  }
} /* piuDcoffsetRemoval */


/******************************************************************************
 * FUNCTION PURPOSE: Enable/disable the processes in PIU 
 ******************************************************************************
 * DESCRIPTION: Enable/disable the processes in PIU.  
 *
 *  tint piuControl (void         *piuInst, - pointer to instance information 
 *                   piuControl_t *ctl)     - pointer to code/mode information
 *
 *  return value: piu_NOERR  - success
 *                piu_ERROR  - invalid control code or ecu not open
 *
 *****************************************************************************/
tint piuControl (void *piuInst, piuControl_t *ctl) 
{
  piuInst_t  *inst = (piuInst_t *) piuInst;
  tint        ret_val = piu_NOERR;
  tint        code = ctl->ctl_code;

  /* make sure the PIU is open */
  if (inst->state != piu_OPEN)
    return (piu_ERROR);

  switch (code) {
  case piu_SET_LOOPBACK:
    piu_loopback_config (piuInst, ctl->u.loopback_select);
    break;
  case piu_SET_FRAME_SIZE:
    PIU_BEGIN_CRITICAL_SECTION();
      inst->segment_size = ctl->u.set_frame.frame_size;
      piu_reset_receive_in_buf(inst);
      inst->send_out_buf_ptr          = inst->send_out_buf;
      inst->receive_out_buf_ptr       = inst->receive_out_buf;
      ctl->u.set_frame.send_out_buf   = (tuint *)inst->send_out_buf;
      ctl->u.set_frame.receive_in_buf = (tuint *)inst->receive_in_buf.start_ptr;
    PIU_END_CRITICAL_SECTION();
    break;
  case piu_ENABLE_UNDERRUN_REPORT:
    inst->mode_bitfield |= piu_CTRL_BIT_UNDERRUN_REPORT;
    break;
  case piu_DISABLE_UNDERRUN_REPORT:
    inst->mode_bitfield &= (~piu_CTRL_BIT_UNDERRUN_REPORT);
    break;
  case piu_GET_LEVELS:
    piu_get_stats (piuInst, (piuStats_t *)&ctl->u.stats);
    break;
  case piu_PATTERN_GENERATION:
    piuPatternGeneration(piuInst, (pcmPatternGen_t *)&ctl->u.pattern_generate);
    break;
  case piu_PATTERN_DETECTION:
    piuPatternDetect (piuInst, (pcmPatternDet_t *)&ctl->u.pattern_detect);
    break;
  case piu_BID_SILENCE_DETECTION:
    piuBidSilenceDetect (piuInst, (bidSilenceDet_t *)&ctl->u.bid_silence_detect);
    break;
  case piu_SET_COMPANDING:
    piuSetCompanding (piuInst, &ctl->u.companding);
    break;
  case  piu_DC_OFFSET_REMOVAL:
    piuDcOffsetRemoval (piuInst, ctl->u.dc_offset_removal_select);
    break;   
  
  default:  /* invalid control code */
    ret_val = piu_ERROR;
    break;
  }
  return (ret_val);
} /* piuControl */
/* nothing past this point */
