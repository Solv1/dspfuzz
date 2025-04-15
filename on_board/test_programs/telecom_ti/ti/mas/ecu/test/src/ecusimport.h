/******************************************************************************
 * FILE PURPOSE: Definitions specific to the 16-bit implementation of ECU.
 ******************************************************************************
 * FILE NAME:   ecusimport.h
 *
 * DESCRIPTION: Contains macros and definitions specific to implementation
 *              with or without MXP operating environment.
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
#ifndef _ECUSIMPORT_H
#define _ECUSIMPORT_H

/* buildfile command line options */

/* Command line search enable/disable (ECU_TAIL) */
#ifdef ENABLE_SEARCH
#define ecu_SEARCH_ENABLE        TRUE /* TRUE:  Use search algorithm, request
                                       *        memory for search. */
#else
#define ecu_SEARCH_ENABLE       FALSE /* FALSE: Full filter implementation. */
#endif

/* Command line WB enable/disable (WB=YES/NO) */
#ifdef ENABLE_WB
#define ecu_WIDE_BAND            TRUE /* TRUE:  Use wide band canceller */
#else
#define ecu_WIDE_BAND           FALSE /* FALSE: narrow band only */
#endif

/* Command line PCM delay line compression enable/disable (ecu_DLCOMP=YES/NO) */
#ifdef ENABLE_COMPRESS
#define ecu_DELAY_LINE_COMPRESS  TRUE /* TRUE:  Assume that we receive compressed
                                       *        and packed PCM samples for our delay 
                                       *        line from the PIU.  Perform expansion
                                       *        before usage.  */
#else
#define ecu_DELAY_LINE_COMPRESS FALSE /* FALSE: Assume that we DO NOT receive compressed
                                       *        and packed PCM samples for our delay 
                                       *        line from the PIU. */
#endif

/* Command line instance relocation enable/disable (ecu_RELOC=YES/NO) */
#ifdef ENABLE_RELOC
#define ecu_INST_RELOCATION      TRUE /* TRUE:  Assume that we DO support instance
                                                relocation.  */
#else
#define ecu_INST_RELOCATION     FALSE /* FALSE: Assume that we DO NOT support instance
                                                relocation. */
#endif

/* Command line 5.5ms frame handling enable/disable (ecu_5P5MS=YES/NO) */
#ifdef ENABLE_5P5MS
#define ecu_5P5MS_FRAME_ENABLE   TRUE /* TRUE:  Allow multiple of 5.5ms AND 5ms frame 
                                       *        sizes. */
#else
#define ecu_5P5MS_FRAME_ENABLE  FALSE /* FALSE: Allow multiple of 5ms frame sizes 
                                       *        only. */
#endif

/* Command line debug streaming enable/disable (ecu_DEBUG=YES/NO) */
#ifdef ENABLE_DEBUG
#define ecu_DBGSTRM_ENABLE       TRUE /* TRUE:  Compile in debug streaming messages
                                       *        through DS0's defined in siudbgstrm.h. */
#else
#define ecu_DBGSTRM_ENABLE      FALSE /* FALSE: No debug streaming messages. */
#endif

/* Command line 0/3dB configuration enable/disable (ecu_03DB=YES/NO) */
#ifdef ENABLE_03DB
#define ecu_03DB_ENABLE          TRUE /* TRUE:  Enable 0/3dB ERL support */
#else
#define ecu_03DB_ENABLE         FALSE /* FALSE: Disable 0/3dB ERL support */
#endif

/* Command line constant PCM pattern detection enable/disable (ecu_CPD=YES/NO) */
#ifdef ENABLE_CPD
#define ecu_CPD_ENABLE           TRUE /* TRUE:  Enable const PCM detection */
#else
#define ecu_CPD_ENABLE          FALSE /* FALSE: Disable const PCM detection */
#endif

/* Command line RERL estimation enable/disable (ecu_RERL=YES/NO) */
#ifdef ENABLE_RERL
#define ecu_RERL_ENABLE          TRUE /* TRUE:  Enable RERL estimation  */
#else
#define ecu_RERL_ENABLE         FALSE /* FALSE: Disable RERL estimation */
#endif

#ifdef ti_targets_C54
#define _ECUSIMPORT_C54 1
#else
#define _ECUSIMPORT_C54 0
#endif

#ifdef ti_targets_C54_far
#define _ECUSIMPORT_C54F 1
#else
#define _ECUSIMPORT_C54F 0
#endif

#ifdef ti_targets_C55 
#define _ECUSIMPORT_C55 1
#else
#define _ECUSIMPORT_C55 0
#endif

#ifdef ti_targets_C55_large
#define _ECUSIMPORT_C55L 1
#else
#define _ECUSIMPORT_C55L 0
#endif

#ifdef ti_targets_C64
#define _ECUSIMPORT_C64 1
#else
#define _ECUSIMPORT_C64 0
#endif

#ifdef ti_targets_C64_big_endian
#define _ECUSIMPORT_C64_BIG_ENDIAN 1
#else
#define _ECUSIMPORT_C64_BIG_ENDIAN 0
#endif

#ifdef ti_targets_C64P
#define _ECUSIMPORT_C64P 1
#else
#define _ECUSIMPORT_C64P 0
#endif

#ifdef ti_targets_C64P_big_endian
#define _ECUSIMPORT_C64P_BIG_ENDIAN 1
#else
#define _ECUSIMPORT_C64P_BIG_ENDIAN 0
#endif

#ifdef ti_targets_elf_C64P 
#define _ECUSIMPORT_ELF_C64P 1
#else
#define _ECUSIMPORT_ELF_C64P 0
#endif

#ifdef ti_targets_elf_C64P_big_endian
#define _ECUSIMPORT_ELF_C64P_BIG_ENDIAN 1
#else
#define _ECUSIMPORT_ELF_C64P_BIG_ENDIAN 0
#endif

#ifdef ti_targets_C66
#define _ECUSIMPORT_C66 1
#else
#define _ECUSIMPORT_C66 0
#endif

#ifdef ti_targets_elf_C66
#define _ECUSIMPORT_ELF_C66 1
#else
#define _ECUSIMPORT_ELF_C66 0
#endif

#ifdef ti_targets_C66_big_endian
#define _ECUSIMPORT_C66_BIG_ENDIAN 1
#else
#define _ECUSIMPORT_C66_BIG_ENDIAN 0
#endif

#ifdef ti_targets_elf_C66_big_endian
#define _ECUSIMPORT_ELF_C66_BIG_ENDIAN 1
#else
#define _ECUSIMPORT_ELF_C66_BIG_ENDIAN 0
#endif


#if   (_ECUSIMPORT_C54 || _ECUSIMPORT_C54F)
#include <ti/mas/ecu/test/src/c54/ecusimport.h>
#elif (_ECUSIMPORT_C55 || _ECUSIMPORT_C55L)
#include <ti/mas/ecu/test/src/c55/ecusimport.h>
#elif (_ECUSIMPORT_C64       || _ECUSIMPORT_C64_BIG_ENDIAN      || \
       _ECUSIMPORT_C64P      || _ECUSIMPORT_C64P_BIG_ENDIAN     || \
       _ECUSIMPORT_ELF_C64P  || _ECUSIMPORT_ELF_C64P_BIG_ENDIAN || \
       _ECUSIMPORT_C66       || _ECUSIMPORT_C66_BIG_ENDIAN      || \
       _ECUSIMPORT_ELF_C66   || _ECUSIMPORT_ELF_C66_BIG_ENDIAN)
#include <ti/mas/ecu/test/src/c64/ecusimport.h>
#else
#error invalid target
#endif

#endif /* _ECUSIMPORT_H */
/* nothing after this point */
