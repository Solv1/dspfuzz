/****************************************************************************** 
* FILE PURPOSE: Contains the u_lam and a_law table look-up routines in assembly
*               (C54x) for speech codecs.                
******************************************************************************
* FILE NAME:   piuexpan.s
*
* DESCRIPTION: 
*        
*
* TABS: NONE
*
* $Id: 
* REVISION HISTORY:
*
* $Log: piuexpan.c $
* Revision 1.1  1998/09/21 09:20:35  qsu
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
******************************************************************************/
/* system level header files */
#include <ti/mas/types/types.h>

/* system utilities' API's */
#include <ti/mas/util/utl.h>
#include <ti/mas/util/mua.h>
#include <ti/mas/util/cb.h>
#include <ti/mas/util/wng.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
#include <ti/mas/ecu/test/src/piuloc.h>
#include <ti/mas/ecu/test/src/piuport.h>

 /*****************************************************************************
 * DESCRIPTION: U_law and A_law table look up
 * void UAExpand(
 *  tint         sub_segment_size,       - subsegment size          
 *  tint         *pcm_in,                - input data array
 *  linSample    **send_out_buf_ptr_ptr, - address of output buffer pointer
 *  const tint   *pcm_expand_table)      - pointer to the A_law or U_law table 
 *
 *****************************************************************************/
void UAExpand(tint sub_segment_size, tword *pcm_in, linSample **send_out_buf_ptr_ptr, 
              const tint *pcm_expand_table)
{
  int       i, ratio = sizeof(linSample)/sizeof(tword);
  tint      pcm_val;
  tword     *pcmptr = pcm_in;
  linSample *send_out_buf_ptr;
 
  send_out_buf_ptr = *send_out_buf_ptr_ptr;
  
#ifdef _BIG_ENDIAN
  pcmptr++;
#endif
  
  for (i=0; i<sub_segment_size; i++) {
    pcm_val = (tword)((tuint) *pcmptr & 0x00FF);
    pcmptr += ratio;
    *send_out_buf_ptr++ = pcm_expand_table[pcm_val];
  }

  *send_out_buf_ptr_ptr = send_out_buf_ptr;    /* store the new value! */
} /* UAExpand */
/* nothing past this point */
