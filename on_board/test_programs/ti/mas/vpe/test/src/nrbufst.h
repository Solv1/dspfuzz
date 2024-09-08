/*-----------------------------------------------------------------
 * Filename:  nrbufs.h
 *                            
 * Description: Definitions for NR buffers
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
#ifndef _NRBUFS_H
#define _NRBUFS_H

#ifdef ti_targets_C55_large
#define VPETEST_C55L 1
#else
#define VPETEST_C55L 0
#endif

#ifdef ti_targets_C55_small
#define VPETEST_C55S 1
#else
#define VPETEST_C55S 0
#endif

#ifdef ti_targets_C64P
#define VPETEST_C64P 1
#else
#define VPETEST_C64P 0
#endif

#ifdef ti_targets_elf_C64P
#define VPETEST_C64P_ELF 1
#else
#define VPETEST_C64P_ELF 0
#endif

#ifdef ti_targets_C64P_big_endian
#define VPETEST_C64P_BIG_ENDIAN 1
#else
#define VPETEST_C64P_BIG_ENDIAN 0
#endif

#ifdef ti_targets_elf_C64P_big_endian
#define VPETEST_C64P_BIG_ENDIAN_ELF 1
#else
#define VPETEST_C64P_BIG_ENDIAN_ELF 0
#endif

#ifdef ti_targets_C66
#define VPETEST_C66 1
#else
#define VPETEST_C66 0
#endif

#ifdef ti_targets_elf_C66
#define VPETEST_C66_ELF 1
#else
#define VPETEST_C66_ELF 0
#endif

#ifdef ti_targets_C66_big_endian
#define VPETEST_C66_BIG_ENDIAN 1
#else
#define VPETEST_C66_BIG_ENDIAN 0
#endif

#ifdef ti_targets_elf_C66_big_endian
#define VPETEST_C66_BIG_ENDIAN_ELF 1
#else
#define VPETEST_C66_BIG_ENDIAN_ELF 0
#endif

#ifdef ti_targets_C674
#define VPETEST_C674 1
#else
#define VPETEST_C674 0
#endif

#ifdef ti_targets_elf_C674
#define VPETEST_C674_ELF 1
#else
#define VPETEST_C674_ELF 0
#endif

/* C674 devices do not support big endian */

#ifdef gnu_targets_arm_GCArmv7A
#define VPETEST_ARM_GCARMV7A 1
#else
#define VPETEST_ARM_GCARMV7A 0
#endif

#if VPETEST_C55L || VPETEST_C55S
#include <ti/mas/vpe/test/src/c55/nrbufst.h>
#elif VPETEST_C64P || VPETEST_C64P_BIG_ENDIAN || VPETEST_C674 || VPETEST_C64P_ELF || VPETEST_C64P_BIG_ENDIAN_ELF || VPETEST_C674_ELF || VPETEST_C66 || VPETEST_C66_BIG_ENDIAN || VPETEST_C66_ELF || VPETEST_C66_BIG_ENDIAN_ELF
#include <ti/mas/vpe/test/src/c64/nrbufst.h>
#elif VPETEST_ARM_GCARMV7A
#include <ti/mas/vpe/test/src/arm/nrbufst.h>
#else
#error invalid target
#endif
 
/* common to all targets */ 
#define VPE_NR_NUM_BUFS   7

#define NR_SIM_BUF0_ALGN  (1<<NR_SIM_BUF0_ALGN_LOG2)
#define NR_SIM_BUF1_ALGN  (1<<NR_SIM_BUF1_ALGN_LOG2)
#define NR_SIM_BUF2_ALGN  (1<<NR_SIM_BUF2_ALGN_LOG2)
#define NR_SIM_BUF3_ALGN  (1<<NR_SIM_BUF3_ALGN_LOG2)
#define NR_SIM_BUF4_ALGN  (1<<NR_SIM_BUF4_ALGN_LOG2)
#define NR_SIM_BUF5_ALGN  (1<<NR_SIM_BUF5_ALGN_LOG2)
#define NR_SIM_BUF6_ALGN  (1<<NR_SIM_BUF6_ALGN_LOG2)

extern tword nr_buff0[];
extern tword nr_buff1[];
extern tword nr_buff2[];
extern tword nr_buff3[];
extern tword nr_buff4[];
extern tword nr_buff5[];
extern tword nr_buff6[];

#endif  /* _NRBUFS_H */

