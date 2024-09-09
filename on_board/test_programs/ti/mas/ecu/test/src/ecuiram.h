#ifndef _ECUIRAM_H
#define _ECUIRAM_H
/******************************************************************************
 * FILE PURPOSE: Allocate IRAM buffers satisfying circular/bit reversed 
 *               addressing constraints. (16-bit C54x version)
 ******************************************************************************
 * FILE NAME:   ecuiram.h
 *
 * DESCRIPTION: This file defines a segment of memory containing ECU IRAM
 *              buffers which are accessed using circular or bit-reversed
 *              addressing modes. The segment is partitioned using a C data
 *              structure which assigns each buffer in the partition to a
 *              corresponding DSP software unit.
 *
 * TABS: None
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

#include <ti/mas/ecu/ecu.h>

#include <ti/mas/ecu/test/src/ecusim.h>     /* for simulation-specific defines */

/*****************************************************************************
 * DATA DEFINITION: Partition definition for special addressing mode 
 *                  segment. piu_ecu_receive[] buffer must be aligned to
 *                  the nearest larger power of 2 for the sake of circular
 *                  addressing. This is necessary only when the circular
 *                  buffer is accessed usign circular addressing mode in
 *                  either ECU module or PCM interface module (e.g. PIU) which
 *                  syncronizes far end samples after the optional resampling.
 *
 *                  Actual piu_ecu_receive[] length must always be whole number
 *                  of frames as required by PCM interface module.
 *****************************************************************************/
   
#define IRAM_ECU_MAX_FLTSEG_LENGTH    256
#define IRAM_ECU_BLOCK_LENGTH         40
#if ecu_5P5MS_FRAME_ENABLE
#undef  IRAM_ECU_BLOCK_LENGTH
#define IRAM_ECU_BLOCK_LENGTH         44
#endif

#if ecu_SEARCH_ENABLE
#define IRAM_ECU_SRCH_FILTER_LENGTH   1024
#else
#define IRAM_ECU_SRCH_FILTER_LENGTH   IRAM_ECU_MAX_FLTSEG_LENGTH 
#endif
/* NOTE:  The following limits the maximum frame size to 2 ECU blocks, */
/*        (i.e., 10ms or 11ms)                                         */
#define ecu_DELAY_LINE_LENGTH         (IRAM_ECU_SRCH_FILTER_LENGTH + 2*IRAM_ECU_BLOCK_LENGTH + SIU_MAX_SYSTEM_DELAY + SIU_MAX_FRAME_LENGTH)
#if ecu_DELAY_LINE_COMPRESS
#define IRAM_ECU_EXPAND_LENGTH        (ecu_DELAY_LINE_LENGTH - IRAM_ECU_BLOCK_LENGTH)
#define IRAM_PIU_ECU_RECEIVE_LENGTH   (ecu_DELAY_LINE_LENGTH/ecu_SIM_DLINE_SAMPLES_PER_WORD)
#else
#define IRAM_PIU_ECU_RECEIVE_LENGTH   ecu_DELAY_LINE_LENGTH /* linSample, for 128ms hybrid */
#endif
#define IRAM_ECU_BG_WORK_LENGTH       IRAM_ECU_SRCH_FILTER_LENGTH  /* changed from 8*/
                                            /* 1024 for search filter length */
                                            /* Fract (see ecuport.h, eculms.s) */
#define IRAM_ECU_BG_E_LENGTH          IRAM_ECU_BLOCK_LENGTH   /* linSample */
#define IRAM_ECU_BG_FLTSEG_LENGTH     IRAM_ECU_MAX_FLTSEG_LENGTH  /* Fract */
#define IRAM_ECU_FG_FLTSEG_LENGTH     IRAM_ECU_MAX_FLTSEG_LENGTH  /* Fract */

typedef struct {
#if ecu_DELAY_LINE_COMPRESS
  linSample *ecu_pcm_expand_ptr;
  tword     *piu_ecu_receive_ptr;
#else
  linSample *piu_ecu_receive_ptr;
#endif
#if ecu_SEARCH_ENABLE
  Fract     *ecu_srch_filter_ptr;
#endif
  Fract     *ecu_bg_work_ptr;
  linSample *ecu_bg_e_ptr;
  Fract     *ecu_bg_filter_ptr;
  Fract     *ecu_fg_filter_ptr;
} iramSeg_t;

extern iramSeg_t iramSeg;

#endif /* _ecuiram_h */
/* nothing past this point */
