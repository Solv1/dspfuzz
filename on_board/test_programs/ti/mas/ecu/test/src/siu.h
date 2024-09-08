#ifndef _SIU_H
#define _SIU_H
/******************************************************************************
 * FILE PURPOSE: Software Integration Unit Definitions.
 ******************************************************************************
 * FILE NAME:   siu.h
 *
 * DESCRIPTION: Contains definitions for SIU.
 *
 * TABS: NONE
 *
 * $Id: siu.h 1.4.1.3 1997/07/14 15:30:11 BOGDANK Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: siu.h $
 * Revision 1.4.1.3  1997/07/14 15:30:11  BOGDANK
 *     - multiple heap manager used
 * Revision 1.4.1.2  1997/05/22 13:30:47  BOGDANK
 *     - new types added
 *    New types added.
 * Revision 1.4.1.1  1996/11/22 13:49:25  BOGDANK
 *     - ECU test bed created with hybrid and signal generators
 *    siuTxSendOut_t changed to map to ECU.
 *    This branch should not be followed.
 * Revision 1.4  1996/10/07 17:33:17  BOGDANK
 *     - Linear "companding" added
 *    Linear mode added.
 * Revision 1.3  1996/09/27 15:11:48  BOGDANK
 *     - PIU and VCU in loopback with generated saw-tooth.
 *    siuTxSendIn() API added.
 * Revision 1.2  1996/09/26 15:51:39  BOGDANK
 *     - PIU slowly getting in, SIU task added.
 *    SIU Tx task related parameters added.
 * Revision 1.1  1996/09/25 15:02:55  BOGDANK
 * Initial revision
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

#include <ti/mas/types/types.h>

/* SIU Error codes */
enum {
  SIU_NOERR = 0,
  SIU_ERROR = -1
};

/******************************************************************************
 * DATA DEFINITION: SIU Configuration Structure.
 ******************************************************************************
 * DESCRIPTION: Used when configuring SIU module.
 *
 *****************************************************************************/

typedef struct {
  tuint ID;                                 /* Module ID with chnum = 0 */
  void  (*exception)(tuint id, char *str);  /* master exception function */
  void  (*debug)(tuint id, char *str);      /* master debug function */
  tint  companding_law;   /* Provides information on which type of companding
                           *  is used before linear samples are obtained. Valid
                           *  values are CONST_COMP_ALAW_8, CONST_COMP_MULAW_8,
                           *  CONST_COMP_LINEAR (no companding). Invalid value
                           *  indicates 8-bit transparent mode. */
  tint  pcm_bits;         /* # bits in a PCM sample (8 for u-law, A-law, and
                           *  transparent mode, [1,16] range for linear). */
  void  *core_heap;       /* Core heap handle */
  void  *voice_heap;      /* Voice heap handle */
} siuConfig_t;

/******************************************************************************
 * DATA DEFINITION: SIU Tx Task Send Out Object.
 ******************************************************************************
 * DESCRIPTION: Transmit task send-out object description. Current
 *              implementation takes send-in and receive-in frame like in
 *              the case of ECU.
 *
 *****************************************************************************/

typedef struct {
  void (*fcn) (void *targetInst, void *send_frame, void *recv_frame, 
               void *send_out_frame);
  void *targetInst;   /* instance of the target object which owns the fcn */
} siuTxSendOut_t;

/******************************************************************************
 * DATA DEFINITION: SIU Tx Task Configuration Structure.
 ******************************************************************************
 * DESCRIPTION: Used when configuring SIU Tx Task with siuTxOpen().
 *
 *****************************************************************************/

typedef struct {
  tint            send_frame_length;    /* send frame length in samples */
  tint            recv_frame_length;    /* receive frame length in samples */
  siuTxSendOut_t  TxSendOut;            /* Tx Send-out object description */
} siuTxConfig_t;

/* External function prototypes */
/* siu.c */
tint siuInit (siuConfig_t *cfg);

/* siutx.c */
void siuTxOpen   (void *siuInst, siuTxConfig_t *cfg);
void siuTxSendIn (void *siuInst, void *send_frame, void *recv_frame, tint queue_id);

/* ecusim.c */
void siuPiuReport     (void *siuInst, tint report_code);
void siuPcmSampleTrace(tint chnum, tint pcm_size, void *pcm_in, tuint dir);
void siuTxRxSendIn    (void *siuInst, void *send_frame, void *recv_frame, tint queue_id);
void siuDebugInfoNew  (tuint moduleID, tuint msgType, tuint messageCode, 
                       tuint msgLength, tuint *messageData);
#endif /* _SIU_H */
/* nothing past this point */
