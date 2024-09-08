/******************************************************************************
 * FILE PURPOSE: Software Integration Unit Transmit Task.
 ******************************************************************************
 * FILE NAME:   siutx.c
 *
 * DESCRIPTION: Contains routines that implement SIU Transmit Task.
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

#include <stdlib.h>

#include <ti/mas/types/types.h>

/* SIU header files */
#include <ti/mas/ecu/test/src/siu.h>
#include <ti/mas/ecu/test/src/siuloc.h>
#include <ti/mas/ecu/test/src/siuport.h>

/* Nice way for doing endless loop */
#define loop      for(;;)

#include <ti/mas/sdk/hyb.h>

static inline void siu_tx_execute (siuInst_t *inst)
{
  if (inst->TxInst.enabled) {
    int k;
    extern linSample  siuOutStream[];
    extern void siuUpdateECUPowers (siuInst_t *inst, linSample *send_in, 
                                    linSample *recv_in);

    /* For test purposes, call Hybrid here and copy out samples with
     *  added echo! */
    /* hybAddEcho (&hybTxInst, inst->TxInst.send_frame_ptr,
                            inst->TxInst.recv_frame_ptr); */

    /* Create a shadow copy of send frame */
    for (k = 0; k < inst->TxInst.send_frame_length; k++) {
      siuOutStream[k] = inst->TxInst.send_frame_ptr[k];
    }
  }
} /* siu_tx_execute */

static inline void siu_tx_sleep (siuInst_t *inst)
{
  /* currently not used. will be used when ISR is done. */
} /* siu_tx_sleep */

static inline void siu_tx_wake_up (siuInst_t *inst)
{
  siu_tx_execute (inst);    /* currently we directly execute Tx task here */
} /* siu_tx_wake_up */

/******************************************************************************
 * FUNCTION PURPOSE: Main Routine for SIU Transmit Task.
 ******************************************************************************
 * DESCRIPTION: Waits to be waken up by ISR (or another task) in order to
 *              process input samples.
 *
 *****************************************************************************/

void siuTxMain (void *siuInst)
{
  siuInst_t *inst = (siuInst_t*)siuInst;

  loop {
    siu_tx_sleep (inst);
    siu_tx_execute (inst);
  }
} /* siuTxMain */

/******************************************************************************
 * FUNCTION PURPOSE: SIU Tx Task configuration.
 ******************************************************************************
 * DESCRIPTION: Configures and enables SIU Tx task.
 *
 *****************************************************************************/

void siuTxOpen (void *siuInst, siuTxConfig_t *cfg)
{
  siuInst_t *inst = (siuInst_t *)siuInst;

  inst->TxInst.send_frame_length  = cfg->send_frame_length;
  inst->TxInst.recv_frame_length  = cfg->recv_frame_length;
  inst->TxInst.send_frame_ptr     = NULL;
  inst->TxInst.recv_frame_ptr     = NULL;
  inst->TxInst.TxSendOut          = cfg->TxSendOut;
  inst->TxInst.enabled            = TRUE;
} /* siuTxOpen */

/******************************************************************************
 * FUNCTION PURPOSE: Accept send and receive samples for Tx task.
 ******************************************************************************
 * DESCRIPTION: Accepts send and receive samples for Tx task. Starts Tx task
 *              if necessary.
 *
 *****************************************************************************/

void siuTxSendIn (void *siuInst, void *send_frame, void *recv_frame, 
                  tint queue_id)
{
  siuInst_t *inst = (siuInst_t*)siuInst;

  /* NOTE: this may result in race condition if siuTxSendIn is called again
   *       before siu_tx_execute() completed. */
  inst->TxInst.send_frame_ptr = (linSample *) send_frame;
  inst->TxInst.recv_frame_ptr = (linSample *) recv_frame;     /* store frame pointers */

  siu_tx_wake_up (inst);                    /* wake up Tx task */
} /* siuTxSendIn */
/* nothing past this point */
