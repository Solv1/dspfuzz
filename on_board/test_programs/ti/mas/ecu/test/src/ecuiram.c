/******************************************************************************
 * FILE PURPOSE: Reserve space for special ECU IRAM buffers that need alignment.
 ******************************************************************************
 * FILE NAME:   ecuiram.c
 *
 * DESCRIPTION: Reserves space for ECU IRAM buffers that need alignment.
 *
 * TABS: NONE
 *
 * $Id: ecuiram.c 1.1 1997/01/16 12:47:58 BOGDANK Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: ecuiram.c $
 * Revision 1.1  1997/01/16 12:47:58  BOGDANK
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

#include <ti/mas/ecu/test/src/ecuiram.h>

#if ecu_DELAY_LINE_COMPRESS
  linSample ecu_pcm_expand[IRAM_ECU_EXPAND_LENGTH];
  tword     piu_ecu_receive[IRAM_PIU_ECU_RECEIVE_LENGTH];
#else
  linSample piu_ecu_receive[IRAM_PIU_ECU_RECEIVE_LENGTH];
#endif
#if ecu_SEARCH_ENABLE
  Fract     ecu_srch_filter[IRAM_ECU_SRCH_FILTER_LENGTH];
#endif
  Fract     ecu_bg_work[IRAM_ECU_BG_WORK_LENGTH];
  linSample ecu_bg_e[IRAM_ECU_BG_E_LENGTH];
  Fract     ecu_bg_filter[IRAM_ECU_BG_FLTSEG_LENGTH];
  Fract     ecu_fg_filter[IRAM_ECU_FG_FLTSEG_LENGTH];

  iramSeg_t iramSeg = {
#if ecu_DELAY_LINE_COMPRESS
    &ecu_pcm_expand[0],
    &piu_ecu_receive[0],
#else
    &piu_ecu_receive[0],
#endif
#if ecu_SEARCH_ENABLE
    &ecu_srch_filter[0],
#endif
    &ecu_bg_work[0],
    &ecu_bg_e[0],
    &ecu_bg_filter[0],
    &ecu_fg_filter[0]
  };

/* nothing past this point */
