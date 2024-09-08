#ifndef _PIUPORT55_H
#define _PIUPORT55_H
/******************************************************************************
 * FILE PURPOSE: Definitions specific to the C54x implementation of PIU.
 ******************************************************************************
 * FILE NAME:   piuport.h
 *
 * DESCRIPTION: Contains macros and definitions specific to C54x implementation
 *              with or without MXP operating environment.
 *
 * NOTE:        If this file needs any changes, they should be reflected
 *              in ALL piuport.h files that exist for other projects if
 *              necessary. For example, if new symbol is added (removed), it
 *              should be added (removed) in all piuport.h files, otherwise the
 *              symbol has no place in this file. If an existing symbol changes
 *              its value, some, none, or all other piuport.h files may need a
 *              similar, not necessarily the same change.
 *
 * REQUIRES:    
 *
 * TABS: NONE
 *
 * $Id: piuport.h 1.4 1998/09/16 14:27:36 qsu Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: piuport.h $
 * Revision 1.4  1998/09/16 14:27:36  qsu
 * - piu_MAX_SUBSEGLENGTH  is moved to piu.h.
 * Revision 1.3  1997/03/21 13:58:45  BOGDANK
 *     - optimizing for subsegments larger than 1 sample
 *       piu_MAX_SUBSEGLENGTH added
 *    Adding piu_MAX_SUBSEGLENGTH.
 * Revision 1.2  1996/10/07 10:51:04  BOGDANK
 *     - some constants removed since not used
 *    Some constants removed since not used in PIU.
 * Revision 1.1  1996/10/02 09:34:58  BONAL
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
#include <ti/mas/util/pkt.h>

/* Q-format for power level measurement (utlLin2dBPower function) */
#define piu_POWER_DB_Q         4
/* Q-format for mean level measurement */
#define piu_MEAN_Q             13
#define piu_ENERGY_Q            2

#define piu_MAX_SUBSEGLENGTH   40   /* maximum 40 samples in a sub-segment */


#if PIUDLCOMP_ENABLE
static inline void ecuSim_packLSBof16bitsIntoWords (linSample *src, tword *dst, tint nbyte)
{
  pktPackBytesIntoWords ((tword *) src, dst, nbyte, 0);
}
#endif

#endif /* _PIUPORT55_H */
/* nothing past this point */
