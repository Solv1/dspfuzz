/******************************************************************************
 * FILE PURPOSE: Fast utilities for the PIU.
 ******************************************************************************
 * FILE NAME:   piufutil.c
 *
 * DESCRIPTION: Contains fast utilities for the PIU (desktop version)
 *
 * TABS: NONE
 *
 * $Id: piufutil.c 1.3 1998/06/11 17:06:55 abura Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: piufutil.c $
 * Revision 1.3  1998/06/11 17:06:55  abura
 * - Bidirectional Silence Detection added.
 * Revision 1.2  1998/01/29 11:56:45  BOGDANK
 *     - phase Q-format changed
 *    16-bit arithmetic used when calculating tone.
 * Revision 1.1  1998/01/28 15:29:16  BOGDANK
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
#include <ti/mas/fract/fract.h>
#include <ti/mas/util/utl.h>

#include <ti/mas/ecu/test/src/piuloc.h>

/*****************************************************************************
 * FUNCTION PURPOSE: Signal energy level
 *****************************************************************************
 * DESCRIPTION: This function calculates signal energy using geometric average.
 *              E(n) = E(n-1) + dE = E(n-1) + alpha * [e - E(n-1)]
 *
 * void piu_frame_energy (
 *   tint frameLen,  - number of samples in input frame
 *   Fract *frame,   - pointer to a data frame
 *   LFract *energy) - current mean value
 * 
 * NOTE: alpha = 2^(-8), corresponding to time constant T=36ms.
 *
 ****************************************************************************/
void piu_frame_energy (tint frameLen, Fract *frame, LFract *energy)
{
  LFract x, e, dE;
  int    i;

  *energy = frctAdjustQ(*energy,2,0);
  for (i = 0; i < frameLen; i++)
  {
    x = frctF2LF(frame[i], 0, 0);
    e = frctMulLFbyLF (x, 0, x, 0, 0);/* e */
    dE = e - *energy;                 /* e - E(n-1) */
    dE = frctDivLFbyP2 (dE, 0, 8, 0); /* alpha * [e - E(n-1)] */
    *energy += dE;
  }
  *energy = frctAdjustQ(*energy,0,2);
}

/*****************************************************************************
 * FUNCTION PURPOSE: Signal DC level
 *****************************************************************************
 * DESCRIPTION: This function calculates signal energy using geometric average.
 *              DC(n) = DC(n-1) + dDC = DC(n-1) + alpha * [x - DC(n-1)]
 *
 * void piu_frame_DClevel (
 *   tint frameLen,  - number of samples in input frame
 *   Fract *frame,   - pointer to a data frame
 *   LFract *DC_level) - current mean value
 * 
 * NOTE: alpha = 2^(-13), corresponding to time constant T=36ms.
 *
 ****************************************************************************/
void piu_frame_DClevel (tint frameLen, Fract *frame, LFract *DC_level)
{
  LFract dLevel;
  int    i;

  for (i = 0; i < frameLen; i++)
  {
    dLevel = frame[i] - *DC_level;    /* dLevel = x - DC_level */
    dLevel = frctDivLFbyP2 (dLevel, 0, 13, 0); /* alpha(13)*(x-dc) */
    *DC_level += dLevel;                       /* dc+alpha*(x-dc)  */
  }
}

/* C version of assembly -- Not tested */
void piu_remove_dc_component (tint frameLen, Fract *frame, LFract *DC_level, tint alpha)
/* alpha parameter is log2 of the multiplying factor
   y[n] = (1-beta)*y[n-1] + beta*x[n]
   beta = 2^alpha */
{
  int   i;
  LFract dLevel;

  for (i = 0; i < frameLen; i++)
  {
     dLevel = *DC_level - frame[i];
     dLevel = dLevel<<alpha;
     *DC_level -= dLevel;
     frame[i] -= *DC_level;
        
  }
}
/* nothing past this point */
