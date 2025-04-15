/******************************************************************************
 * FILE PURPOSE: PIU ISR Functions
 ******************************************************************************
 * FILE NAME:   piuisr.c
 *
 * DESCRIPTION: Contains some PIU functions that require fast execution.
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
/* system level header files */
#include <ti/mas/types/types.h>

/* system utilities' API's */
#include <ti/mas/util/wng.h>
#include <ti/mas/util/utl.h>
#include <ti/mas/util/pkt.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
#include <ti/mas/ecu/test/src/piuloc.h>
#include <ti/mas/ecu/test/src/piuport.h>


#define piuABS(x) (((x)<0)?(-(x)):(x))  /* Absolute value definition */

/*****************************************************************************
 * FUNCTION PURPOSE: Perform receive-out processing for piuPcmIo().
 *****************************************************************************  
 * DESCRIPTION: Performs PIU receive-out processing to send speech
 *              data from the PIU to the PCM interface. 
 *
 *  static void piuReceiveOut (
 *    piuInst_t *inst,        - a pointer to PIU instance
 *    tword     **toTdm       - On entry this points to the frame size buffer
 *                              that HAL has just finished processing. On exit
 *                              it must point to the buffer that will be used
 *                              by hal on the next frame.
 *    tuint      timestamp    - A sample counter provided by HAL
 *    tuint      frameLength  - The frame size used by HAL. This size is not
 *                              checked for a match with piu
 *****************************************************************************/
void piuReceiveOut (void *piuInst, tword **toTdm , tuint timestamp, tuint frameLength)
{
  piuInst_t *inst = (piuInst_t *)piuInst;
  piuContext_t *context = &piuContext;
  linSample *s_ptr,*r_ptr;
#if !PIUDLCOMP_ENABLE
  tuint ratio = sizeof(linSample)/sizeof(tword);
#endif
  
  if (inst->state != piu_OPEN)
    return;

  /* If underflow, there is now no data
   * to send to the HAL for output on the TDM line. 
   * One frame of silence will be introduced here. */
  if (inst->receive_in_buf.segment_count <= 0)  {
    utlLsMemSet (inst->receive_in_buf.in_ptr, inst->silence_pattern,
                 inst->segment_size);
    piu_update_buf_ptr (inst, 0, &inst->receive_in_buf.in_ptr);
    inst->rx_underflow_cnt++;
  }

  /* Provide to HAL where to get the next data to send out the TDM interface */
  *toTdm = (tword *)inst->receive_in_buf.out_ptr;
  piu_update_buf_ptr (inst, 1, &inst->receive_in_buf.out_ptr);

  /* we have compressed linear samples, expand it for ECU delay line! 
   * Provide to the ECU the samples that HAL is about to transmit on the
   * PCM interface */
  r_ptr = inst->receive_out_buf_ptr;  /* Store send out value before update */
  if (inst->mode_bitfield & piu_CTRL_BIT_USE_RECV_OUT_BUF) {

#if PIUDLCOMP_ENABLE
    ecuSim_packLSBof16bitsIntoWords ((linSample *) *toTdm, (tword *)inst->receive_out_buf_ptr,
                                     inst->segment_size);
    inst->receive_out_buf_ptr += inst->segment_size >> 1; /* store the new value! */ 
#else
    utlCopy((tword *)*toTdm, (tword *)inst->receive_out_buf_ptr, ratio*inst->segment_size);
    inst->receive_out_buf_ptr += inst->segment_size;    /* store the new value! */
#endif
  }

  /* The send out buffer pointer is updated in the HAL call to piu_send_in.
   * By convention piu_send_in has been called prior to this function. 
   * Therefore on entry to this function the send_out_buf_ptr points to the
   * location of data that has just been received by HAL */
  s_ptr = inst->send_out_buf_ptr;

  /* Receive Out is a ping-pong buffer */
  if (r_ptr != inst->receive_out_buf) {
    inst->receive_out_buf_ptr = inst->receive_out_buf;
  }

  /* call send-out function */
  /* pcm trace */
  (*context->pcmSampleTrace)(((inst->ID&0xFF)-1), inst->segment_size, 
                             *toTdm, 1); 


  (*context->sendOutIsrFcn)(inst->sendOutIsrTargetInst, s_ptr, r_ptr,
                            piu_TXRX_TASK_ID);

} /* piuReceiveOut */

/*****************************************************************************
 * FUNCTION PURPOSE: Perform send_in processing for piuPcmIo().
 *****************************************************************************  
 * DESCRIPTION: Performs PIU send-in processing to send 
 *              data from the PCM to PIU. 
 *
 *   void piuSendIn (
 *    piuInst_t *inst,        - a pointer to PIU instance
 *    word       **fromTdm    - A pointer to the frame of data that HAL has
 *                              completed. On return it will tell HAL where
 *                              to put data in the next frame.
 *    tuint      timeStamp    - A sample counter provided by HAL
 *    tuint      frameLength  - The frame size HAL is using. There is no
 *                              check that this is the piu frame size.
 * 
 *****************************************************************************/
void piuSendIn (void *piuInst, tword **fromTdm, tuint timeStamp, tuint frameLength)
{
  piuInst_t    *inst = (piuInst_t *)piuInst;
  piuContext_t *context = &piuContext;

  if (inst->state != piu_OPEN)
    return;

  /* On entry, fromTdm contains a pointer to the frame of data that has
   * just been received by the TDM port */
  inst->send_out_buf_ptr = (linSample *)*fromTdm;

  /* call pcmTrace function */
  (*context->pcmSampleTrace)(((inst->ID&0xFF)-1), inst->segment_size, 
                             inst->send_out_buf_ptr, 0);

  /* Return to HAL the buffer to place the next frame of data. The send
   * out buffer is stricly double buffered, so a simple check of the
   * just finished buffer is enough to find the location of the next
   * buffer half */
  if (inst->send_out_buf_ptr == inst->send_out_buf)
    *fromTdm = (tword *)&(inst->send_out_buf_ptr[inst->segment_size]);
  else
    *fromTdm = (tword *)inst->send_out_buf;

} /* piuSendIn */
