#ifndef __PKT_M_C55_H
#define __PKT_M_C55_H
/******************************************************************************
 * FILE PURPOSE: C55X platform specific macros and definitions
 ******************************************************************************
 * FILE NAME: pkt_m.h  
 *
 * DESCRIPTION: This contains 8 bit byte in 16 bit word manipulation via
 *              macros.  It is important to check size-optimization quality
 *              of compiler, and tune these macros to minimize size given
 *              existing alignments.  It might be smaller to test proper
 *              alignment with an if, and directly assign it than have
 *              optimizer optimize shifting and masking.
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

/******************************************************************************
 * FUNCTION PURPOSE: Read n bit value from 8 bit word (macro version)
 ******************************************************************************
 * DESCRIPTION: copies n bit value from an word. Assumes nothing
 * tuint pktReadnbits_m (
 *    tword *base,      - Base of byte array
 *    tuint byteOffset, - Byte offset to read
 *    tuint nbits);     - Number of bits to read
 * 
 *****************************************************************************/
static inline tword pktReadnbits_m (tword *base, tuint byteOffset, tint nbits) 
{
  char wvalue = *(base + (byteOffset>>1));
  tuint readByte;
  tword temp_bit;
  
  if (byteOffset & 1)
    wvalue &= 0xff;
  else
    wvalue >>= 8;

  readByte = (tuint)(wvalue & 0xFF);

  if (nbits > 0)
	temp_bit = readByte >> nbits; 
  else
	temp_bit = readByte << (-nbits); 
  return (temp_bit);
} /* pktReadnbits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Read 8 bit value from 16 bit word (macro version)
 ******************************************************************************
 * DESCRIPTION: Returns 8 bit value from 16 bit word.  Assumes nothing.
 * 
 * tuint pktRead8bits_m (
 *    tword *base,       - Base of byte array
 *    tuint byteOffset); - Byte offset to read
 * 
 *****************************************************************************/
static inline tuint pktRead8bits_m (tword *base, tuint byteOffset)
{
  tuint wvalue = *(base + (byteOffset>>1));

  if (byteOffset & 1)
    return wvalue & 0xff;
  else
    return wvalue >> 8;
} /* pktRead8bits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Write 8 bit value into 16 bit word (macro version)
 ******************************************************************************
 * DESCRIPTION: Writes 8 bit value into 16 bit word; nothing assumed.
 * 
 * void pktWrite8bits_m (
 *    tword *base,      - Base of byte array
 *    tuint byteOffset, - byte offset to write
 *    tuint val)        - Byte in low 8 bits of val
 * 
 *****************************************************************************/
static inline void pktWrite8bits_m (tword *base, tuint byteOffset, tuint val)
{
  tword *wptr = (base + (byteOffset>>1));

  if (byteOffset & 1) {
    *wptr = (*wptr & 0xff00) | (val & 0xff);
  } else {
    *wptr = (*wptr & 0x00ff) | (val << 8);
  }
} /* pktWrite8bits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Write 16 bit value into 16 bit word (macro version)
 ******************************************************************************
 * DESCRIPTION: Writes 16 bit value into 16 bit word.  No assumptions
 * 
 * void pktWrite16bits_m (
 *    tword *base,      - Base of byte array
 *    tuint byteOffset, - byte offset to write; assumed to be even
 *    tuint val)        - 16 bit val
 * 
 *****************************************************************************/
static inline void pktWrite16bits_m (tword *base, tuint byteOffset, tuint val) 
{
  if ((byteOffset & 1)==0) {
    /* Aligned */
    *(base+(byteOffset>>1)) = val;
  } else {
    pktWrite8bits_m (base, byteOffset    , (val>>8));
    pktWrite8bits_m (base, byteOffset + 1, (val&0xFF));
  }
} /* pktWrite16bits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Read 16 bit value from 16 bit word (macro version)
 ******************************************************************************
 * DESCRIPTION: Returns 16 bit value from 16 bit word.  No assumptions.
 * 
 * tuint pktRead16bits_m (
 *    tword *base,       - Base of byte array
 *    tuint byteOffset); - Byte offset to read, assumed to be even
 * 
 *****************************************************************************/
static inline tuint pktRead16bits_m (tword *base, tuint byteOffset)
{
  if ((byteOffset & 1) == 0) {
    /* Aligned */
    return *(base+(byteOffset>>1));
  } else {
    return (pktRead8bits_m (base, byteOffset) << 8) | (pktRead8bits_m (base, byteOffset+1));
  }
} /* pktRead16bits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Write 32 bit value into 16 bit words (macro version)
 ******************************************************************************
 * DESCRIPTION: Writes 32 bit value into 16 bit word; No
 *              alignment assumed
 * 
 * void pktWrite32bits_m (
 *    tword  *base,      - Base of byte array
 *    tuint  byteOffset, - byte offset to write; assumed to be even.
 *    tulong val)        - 32 bit val
 * 
 *****************************************************************************/
static inline void pktWrite32bits_m (tword *base, tuint byteOffset, tulong val) 
{
  pktWrite16bits_m (base, byteOffset, (tuint)(val>>16));
  pktWrite16bits_m (base, byteOffset+2, (tuint)(val&0xffff));
} /* pktWrite32bits_m */

/******************************************************************************
 * FUNCTION PURPOSE: Read 32 bit value from 16 bit words (macro version)
 ******************************************************************************
 * DESCRIPTION: Read 32 bit value from 16 bit words; No
 *              alignment assumed
 * 
 * tulong pktRead32bits_m (
 *    tword *base,      - Base of byte array
 *    tuint byteOffset) - byte offset to write; assumed to be even.
 * 
 *****************************************************************************/
static inline tulong pktRead32bits_m (tword *base, tuint byteOffset)
{
  tulong dummy;
  
  dummy = (((tulong)pktRead16bits_m (base, byteOffset)) << 16);
  dummy |= (tulong)pktRead16bits_m (base, byteOffset + 2);
         
  return dummy;
} /* pktRead32bits_m */

/*********************************************************************************
 * FUNCTION PURPOSE: OR operation in a endian portable form
 *********************************************************************************
 * DESCRIPTION: Performs OR operation in an endian protable way.The value to be 
 *              ORed is specified assuming big endian archtecture.The function will 
 *              take care byte swapping for little endian architectures 
 * 
 * void pktOR16bits(
 *    tword *src,     - Base of byte array 
 *    tint byteOffset - byte offset to for OR operation
 *    tint val        - value to be ORed 
 * 
 *********************************************************************************/
static inline void pktOR16bits_m (tword *src, tuint byteOffset, tuint val)
{
  tuint existing_val = pktRead16bits_m (src, byteOffset);
  existing_val |= val;
  pktWrite16bits_m (src, byteOffset, existing_val);
} /* pktOR16bits_m */

/*********************************************************************************
 * FUNCTION PURPOSE: AND operation in a endian portable form
 *********************************************************************************
 * DESCRIPTION: Performs AND operation in an endian protable way.The value to be 
 *              ANDed is specified assuming big endian archtecture.The function will 
 *              take care byte swapping for little endian architectures 
 * 
 * void pktAND16bits(
 *    linSample *src,      - Base of byte array 
 *    tint      byteOffset - byte offset to for AND operation
 *    tint      val        - value to be ANDed 
 * 
 *********************************************************************************/
static inline void pktAND16bits_m (tword *src, tuint byteOffset, tuint val)
{
  tuint existing_val = pktRead16bits_m (src, byteOffset);
  existing_val &= val;
  pktWrite16bits_m (src, byteOffset, existing_val);
} /* pktAND16bits_m */

#endif /* __PKT_M_C55_H */

/* nothing past this point */
