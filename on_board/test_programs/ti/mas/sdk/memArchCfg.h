/******************************************************************************
 * FILE PURPOSE: APIs for purpose of configuring memory architecture associated
 *               with a processor such as caches. This can vary even if
 *               processor is same, depending on SoCs that are created using
 *               a processor and different memory architectures.
 ******************************************************************************
 * FILE NAME:   memArchCfg.h
 *
 * DESCRIPTION: Based on compiler switch, include platform specific profile file
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

#ifndef _MEMARCHCFG_H
#define _MEMARCHCFG_H

#ifdef ti_targets_C54
#define _MEMARCHCFG_C54 1
#else
#define _MEMARCHCFG_C54 0
#endif

#ifdef ti_targets_C55 
#define _MEMARCHCFG_C55 1
#else
#define _MEMARCHCFG_C55 0
#endif

#ifdef ti_targets_C55_large
#define _MEMARCHCFG_C55L 1
#else
#define _MEMARCHCFG_C55L 0
#endif

#ifdef ti_targets_C64
#define _MEMARCHCFG_C64 1
#else
#define _MEMARCHCFG_C64 0
#endif

#ifdef ti_targets_C64_big_endian
#define _MEMARCHCFG_C64_BIG_ENDIAN 1
#else
#define _MEMARCHCFG_C64_BIG_ENDIAN 0
#endif

#if defined(ti_targets_C674) || defined(ti_targets_elf_C674)
#define _MEMARCHCFG_C674 1
#else
#define _MEMARCHCFG_C674 0
#endif

#if defined(ti_targets_C674_big_endian) || defined(ti_targets_elf_C674_big_endian)
#define _MEMARCHCFG_C674_BIG_ENDIAN 1
#else
#define _MEMARCHCFG_C674_BIG_ENDIAN 0
#endif

#if defined(ti_targets_C64P) || defined(ti_targets_elf_C64P)
#define _MEMARCHCFG_C64P 1
#else
#define _MEMARCHCFG_C64P 0
#endif

#if defined(ti_targets_C64P_big_endian) || defined(ti_targets_elf_C64P_big_endian)
#define _MEMARCHCFG_C64P_BIG_ENDIAN 1
#else
#define _MEMARCHCFG_C64P_BIG_ENDIAN 0
#endif

#if defined(ti_targets_C66) || defined(ti_targets_elf_C66)
#define _MEMARCHCFG_C66 1
#else
#define _MEMARCHCFG_C66 0
#endif

#if defined(ti_targets_C66_big_endian) || defined(ti_targets_elf_C66_big_endian)
#define _MEMARCHCFG_C66_BIG_ENDIAN 1
#else
#define _MEMARCHCFG_C66_BIG_ENDIAN 0
#endif

#ifdef gnu_targets_MVArm9
#define _MEMARCHCFG_MVARM9 1
#else
#define _MEMARCHCFG_MVARM9 0
#endif

#ifdef gnu_targets_arm_GCArmv6
#define _MEMARCHCFG_ARM_GCARMV6 1
#else
#define _MEMARCHCFG_ARM_GCARMV6 0
#endif

#ifdef ti_targets_arm_Arm11
#define _MEMARCHCFG_ARM_ARM11 1
#else
#define _MEMARCHCFG_ARM_ARM11 0
#endif

#ifdef ti_targets_arm_Arm11_big_endian
#define _MEMARCHCFG_ARM_ARM11_BIG_ENDIAN 1
#else
#define _MEMARCHCFG_ARM_ARM11_BIG_ENDIAN 0
#endif

#if _MEMARCHCFG_C54
#error C54 target not yet supported for profiling
#elif _MEMARCHCFG_C55 || _MEMARCHCFG_C55L
#include <ti/mas/sdk/src/c55/memArchCfg.h>
#elif _MEMARCHCFG_C64 || _MEMARCHCFG_C64_BIG_ENDIAN 
#include <ti/mas/sdk/src/c64/memArchCfg.h>
#elif _MEMARCHCFG_C64P || _MEMARCHCFG_C64P_BIG_ENDIAN || _MEMARCHCFG_C674 || _MEMARCHCFG_C674_BIG_ENDIAN 
#include <ti/mas/sdk/src/c64P/memArchCfg.h>
#elif _MEMARCHCFG_C66 || _MEMARCHCFG_C66_BIG_ENDIAN
#include <ti/mas/sdk/src/c64P/memArchCfg.h>
#elif _MEMARCHCFG_MVARM9 || _MEMARCHCFG_ARM_GCARMV6 || _MEMARCHCFG_ARM_ARM11 || _MEMARCHCFG_ARM_ARM11_BIG_ENDIAN
#error ARM targets not yet supported for profiling
#else
#error invalid target
#endif

#endif /* _MEMARCHCFG_H */

/* Nothing past this point */
