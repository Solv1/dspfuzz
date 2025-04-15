/******************************************************************************
 * FILE PURPOSE: SIU Management Routines.
 ******************************************************************************
 * FILE NAME:   siumgr.c
 *
 * DESCRIPTION: Contains management routines that create and open various
 *              modules in a DSP system architecture.
 *
 * TABS: NONE
 *
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

#include <stdlib.h>

#include <ti/mas/types/types.h>
#include <ti/mas/util/mua.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
/* SIU header files */
#include <ti/mas/ecu/test/src/siu.h>
#include <ti/mas/ecu/test/src/siuloc.h>
#include <ti/mas/ecu/test/src/siuport.h>
/* ECU files */
#include <ti/mas/ecu/ecu.h>


/******************************************************************************
 * FUNCTION PURPOSE: Create PIU module.
 ******************************************************************************
 * DESCRIPTION: Obtains info on PIU buffers, and creates one instance of PIU.
 *
 *              NOTE: Should save number of buffers and buffer descriptors
 *                    in order to make delete possible.
 *
 *  void siu_new_piu (
 *    tint chnum,             - channel number (1 to SIU_MAX_CHANNELS)
 *    tint max_frame_length)  - maximum # samples in the frame (must be
 *                              greater than or equal to maximum sub-segment
 *                              size)
 *
 *****************************************************************************/

void siu_new_piu (tint chnum, tint max_frame_length)
{
  int i;
  tint stat, piuNbufs;

  const ecomemBuffer_t *bufs;
  ecomemBuffer_t    *piuBufs;
  piuSizeConfig_t   piuCfgSize;
  piuNewConfig_t    piuCfgNew;

  siuInst_t *inst = &siuInst[chnum-1];

  piuCfgSize.max_samples_per_segment = max_frame_length;  /* x-ms at 8kHz */

  /* Default to triple buffering (delay is not added - just prevention from PIU
   * overflow/underflow) */
  piuCfgSize.rx_triple_buffering     = TRUE;

  /* PIU get sizes */
  stat = piuGetSizes (&piuNbufs, &bufs, &piuCfgSize);
  siu_exc_assert (stat == piu_NOERR, inst);

  piuBufs = (ecomemBuffer_t*)siuCAlloc (piuNbufs*sizeof(ecomemBuffer_t));
  inst->cheap_used += piuNbufs*sizeof(ecomemBuffer_t);
  siu_exc_assert (piuBufs != NULL, inst);

  /* assume all buffers are in external memory, no alignment requests */
  for (i = 0; i < piuNbufs; i++) {
    piuBufs[i]        = bufs[i];
    piuBufs[i].volat  = FALSE;
    piuBufs[i].base   = siuCAlloc (bufs[i].size);
    inst->cheap_used += bufs[i].size;
    siu_exc_assert (piuBufs[i].base != NULL, inst);
  }
  /* inst->piuBufs  =...
   * inst->piuNbufs =...  NOTE: needs it to delete VCU one day. */

  /* piuNew */
  piuCfgNew.ID                      = siuMakeID (SIU_MID_PIU, chnum);
  piuCfgNew.context.max_pcm_val     = mua_TBL_MAX_PCM_VAL;
  piuCfgNew.context.debugInfo       = (dbgInfo_t)(siuDebugInfoNew);
  piuCfgNew.context.sendOutProcFcn  = siuTxSendIn;
  piuCfgNew.context.sendOutIsrFcn   = siuTxRxSendIn;
  piuCfgNew.context.reportOutFcn    = siuPiuReport;
  piuCfgNew.context.pcmSampleTrace  = siuPcmSampleTrace;
  piuCfgNew.sizeCfg                 = piuCfgSize;
  stat = piuNew (&inst->piuInst, piuNbufs, piuBufs, &piuCfgNew);
  siu_exc_assert (stat == piu_NOERR, inst);
} /* siu_new_piu */

/******************************************************************************
 * FUNCTION PURPOSE: Open PIU module.
 ******************************************************************************
 * DESCRIPTION: Opens one instance of PIU module.
 *
 *              NOTE: Currently, the frame_size is constrained to be
 *                    a whole number of segments. However, this is not
 *                    checked here. We rely on PIU to check it.
 *
 *                    Receive-out buffer is part of ECU and related
 *                    parameters should be taken from there!!!
 *
 *  void siu_open_piu (
 *    tint chnum,                 - channel number (1 to SIU_MAX_CHANNELS)
 *    tint segment_size,          - # samples in one PIU sub-segment
 *    tint frame_size)            - # samples in the frame (must be
 *                                  greater than or equal to sub-segment size)
 *
 *****************************************************************************/

void siu_open_piu (tint chnum, tint frame_size)
{
  piuConfig_t piuCfg;
  siuInst_t *inst = &siuInst[chnum-1];

  piuCfg.transp_mode      = FALSE;
  piuCfg.use_recv_out_buf = TRUE;

  piuCfg.rx_delay                 = 0;    /* removes jitter in piuReceiveIn() */
  piuCfg.segment_size             = frame_size;
  piuCfg.sendOutProcTargetInst    = inst;
  piuCfg.sendOutIsrTargetInst     = inst;
  piuCfg.reportOutTargetInst      = inst;
  piuCfg.max_pcm_val              = mua_TBL_MAX_PCM_VAL;
  if (inst->companding_law == const_COMP_MULAW_8) {
    piuCfg.companding.law   = piu_COMP_ULAW;
    piuCfg.companding.pcm_expand_table = muaTblUlaw;
  }
  else if (inst->companding_law == const_COMP_ALAW_8) {
    piuCfg.companding.law   = piu_COMP_ALAW;
    piuCfg.companding.pcm_expand_table = muaTblAlaw;
  }
  else if (inst->companding_law == const_COMP_LINEAR) {
    piuCfg.companding.law   = piu_COMP_LINEAR;
    piuCfg.companding.pcm_expand_table = NULL;
  }

  piuOpen (inst->piuInst, &piuCfg);
} /* siu_open_piu */

/******************************************************************************
 * FUNCTION PURPOSE: Open Transmit Task for a channel of SIU.
 ******************************************************************************
 * DESCRIPTION: Opens transmit task for a channel of SIU.
 *
 *  void siu_open_tx (
 *    tint chnum,                 - channel number (1 to SIU_MAX_CHANNELS)
 *    tint frame_size)            - # samples in the frame
 *
 *****************************************************************************/

void siu_open_tx (tint chnum, tint frame_size)
{
  siuTxConfig_t siuTxCfg;
  siuInst_t *inst = &siuInst[chnum-1];

  siuTxCfg.send_frame_length    = frame_size;
  siuTxCfg.recv_frame_length    = frame_size;       /* same size for now */
#if SIU_TEC_ENABLE
  siuTxCfg.TxSendOut.fcn        = NULL;             /* Not used */
  siuTxCfg.TxSendOut.targetInst = NULL;
#else
  siuTxCfg.TxSendOut.fcn        = ecuSendIn;        /* send samples to ECU */
  siuTxCfg.TxSendOut.targetInst = inst->ecuInst;
#endif
  siuTxOpen (inst, &siuTxCfg);
} /* siu_open_tx */
/* nothing past this point */
