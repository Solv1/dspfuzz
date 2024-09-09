/*-----------------------------------------------------------------
 * Filename:  arm\nrbufst.h
 *                            
 * Description: Definitions for NR buffers for Cortex-A8 targets.
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
 *-----------------------------------------------------------------*/

#ifndef _NRBUFSTCORTEXA8_H
#define _NRBUFSTCORTEXA8_H
 
/* Buffer sizes for NR - returned by nrGetSizes().
   Buffer size is in unit of tword. For Cortex-A8 , tword is 8-bit. */
#define NR_SIM_BUF0_SIZE   88
#define NR_SIM_BUF1_SIZE   1548
#define NR_SIM_BUF2_SIZE   1032
#define NR_SIM_BUF3_SIZE   774
#define NR_SIM_BUF4_SIZE   384
#define NR_SIM_BUF5_SIZE   1032
#define NR_SIM_BUF6_SIZE   28

/* Buffer alignment for NR - returned by nrGetSizes().
   Buffers must be aligned on boundary of 2^(NR_SIM_BUFx_ALGN_LOG2) twords. 
   Also used to define macros used by #pragma DATA_ALIGN in nrbufs.c.
   The pragma DATA_ALIGN (symbol, constant) aligns the symbol to an alignment 
   boundary. For Cortex-A8, the boundary is the value of the constant in bytes. 
   For example, a constant of 4 specifies a 4-byte or 32-bit alignment. */ 
#define NR_SIM_BUF0_ALGN_LOG2  3
#define NR_SIM_BUF1_ALGN_LOG2  5
#define NR_SIM_BUF2_ALGN_LOG2  5
#define NR_SIM_BUF3_ALGN_LOG2  2
#define NR_SIM_BUF4_ALGN_LOG2  2
#define NR_SIM_BUF5_ALGN_LOG2  2
#define NR_SIM_BUF6_ALGN_LOG2  3


#endif   /* _NRBUFSTCORTEXA8_H */

/* nothing past this point */
