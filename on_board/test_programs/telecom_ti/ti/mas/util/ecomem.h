#ifndef _ECOMEM_H
#define _ECOMEM_H

/* ========================================================================== */
/**
 *  @file   ecomem.h
 *
 *  @brief  ECO Memory definition
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
 */

/** @defgroup  ECOMEM
 *  This module contains definition of memory descriptor structure
 *  and memory classes for ECO (Embedded Communication Objects).
 *
 */

/** @ingroup ECOMEM */
/* @{ */

#include<ti/mas/types/types.h>

 /* Memory classes (max. 32767) */
enum {
  ecomem_CLASS_EXTERNAL = 0,   /**< generic (bulk) external memory */
  ecomem_CLASS_INTERNAL = 1,   /**< generic (bulk) internal memory */
  ecomem_CLASS_GMP      = 1    /**< Global Memory Pool (this may have to change
                                    once GMP starts to be supported again.) */
};
  
/*! @brief Memory Buffer Structure.
 *
 * This structure is used to request and/or supply the 
 * dynamic memory to the components.
 */
typedef struct {

  tint  mclass;    /**< Memory class. It is used to describe kind of 
                       memory that is requested or returned. For 
                       example: external, internal, or similar. One 
                       should use MEM_CLASS_xxx constants. On RETURN, 
                       class may be changed if original memory class 
                       is exhausted. */
  tuint log2align; /**< Alignment information (>= 0). If zero, no 
                       alignment is required nor provided. Otherwise, 
                       memory buffer is aligned on appropriate power 
                       of 2 (e.g. if log2align=3, buffer is aligned 
                       modulo-8). */
  tsize size;      /**< Number of twords that are requested or supplied. 
                       Word length depends on the platform, and 
                       corresponds to the shortest element that can be 
                       addressed by the CPU. Word storage length in bits 
                       is defined in types.h as TYP_TWORD_SIZE. The 
                       maximum size depends on the platform. */
  tbool  volat;    /**< TRUE: Memory buffer must be restored before and 
                       saved after it is used.
                       FALSE: Save/restore are not necessary.
                       On RETURN, volatile flag may be changed if 
                       original request could not be satisfied. */
  void  *base;     /**< Base address of the requested buffer. */
} ecomemBuffer_t;

/* @} */ /* ingroup */

#endif

/* nothing past this point */
