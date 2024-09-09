#ifndef _SIULOC_H
#define _SIULOC_H
/******************************************************************************
 * FILE PURPOSE: Local definitions and API for SIU.
 ******************************************************************************
 * FILE NAME:   siuloc.h
 *
 * DESCRIPTION: Contains local SIU definitions and API.
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

#include <ti/mas/types/types.h>
#include <ti/mas/mhm/mhm.h>          /* required for siuXAlloc() */
#include <ti/mas/ecu/test/src/siu.h> /* required for siuTxSendOut_t */
#include <ti/mas/ecu/test/src/siuport.h>    /* required for SIU_TEC_ENABLE */

/* Useful macros */
#define siuMakeID(mid,chnum)    ((tuint)(mid)<<8|(tuint)(chnum))

/*----------------------------*/
/* Exception and Debug Macros */
/*----------------------------*/

#define _SIUSTR(x)   __SIUSTR(x)
#define __SIUSTR(x)  #x
/* Assert macro for the exceptions */
#define siu_exc_assert(expr,inst) {                     \
  ((expr) ? ((void)0) :                             \
            (*(inst)->exception)((inst)->ID,        \
              __FILE__ "(" _SIUSTR(__LINE__) ")")); \
}

/* Debug macro  */
#define siu_dbg_out(inst,s) {  (*(inst)->debug)((inst)->ID,(s));  }

/******************************************************************************
 * DATA DEFINITION: SIU Global Context.
 ******************************************************************************
 * DESCRIPTION: Contains state information for SIU module.
 *
 *****************************************************************************/

typedef struct {
  tuint   ID;                                 /* SIU Module ID (initialized in
                                               *  siuInit() */
  void    (*exception)(tuint id, char *str);  /* master exception function
                                               *  (initialized in siuInit() */
  void    (*debug)(tuint id, char *str);      /* master debug function
                                               *  (initialized in siuInit() */
  tuint    cheap_used;   /* # words of core heap used outside siuInst_t */
  void    *cheap;       /* core heap handle */
  tuint    vheap_used;   /* # words of voice heap used outside siuInst_t */
  void    *vheap;       /* voice heap handle */
} siuContext_t;

/******************************************************************************
 * DATA DEFINITION: SIU Tx Task Instance.
 ******************************************************************************
 * DESCRIPTION: Transmit task instance.
 *
 *****************************************************************************/

typedef struct {
  tbool           enabled;              /* TRUE: task works, FALSE: doesn't */
  tint            send_frame_length;    /* # samples in send frame */
  tint            recv_frame_length;    /* # samples in receive frame */
  linSample       *send_frame_ptr;      /* a pointer to send frame */
  linSample       *recv_frame_ptr;      /* a pointer to receive frame */
  siuTxSendOut_t  TxSendOut;            /* send-out object */
} siuTxInst_t;

/******************************************************************************
 * DATA DEFINITION: SIU Signal Limiter Instance.
 ******************************************************************************
 * DESCRIPTION: Signal Limiter instance.
 *
 *****************************************************************************/

typedef struct {
  tint              mode;           /* SPAD operation mode, see siuspad.c */
  tint              thresh_idx;     /* current limiter threshold index */
  tint              sign;           /* the sign of limiter threshold */
} siuSlimInst_t;

/******************************************************************************
 * DATA DEFINITION: SIU Instance.
 ******************************************************************************
 * DESCRIPTION: Contains state information for one SIU channel.
 *
 *****************************************************************************/

typedef struct {
  tuint ID;                                 /* instance ID (initialized in
                                             *  siuInit() */
  void  (*exception)(tuint id, char *str);  /* exception function (initialized
                                             *  in siuInit() */
  void  (*debug)(tuint id, char *str);      /* debug function (initialized
                                             *  in siuInit() */
  /* Channel information */
  siuTxInst_t   TxInst;   /* Tx Task Instance */
  void         *slmInst;  /* Signal limiter Instance */
  tuint  cheap_used;      /* # words allocated from core heap on this channel */
  tuint  vheap_used;      /* # words allocated from voice heap on this channel */
  tint  companding_law;   /* Provides information on which type of companding
                           *  is used before linear samples are obtained. Valid
                           *  values are CONST_COMP_ALAW_8, CONST_COMP_MULAW_8,
                           *  CONST_COMP_LINEAR (no companding, the number of
                           *  bits in a linear sample has to be provided
                           *  somewhere.) Refers to physical I/O used. */
  tint  pcm_bits;         /* # of bits in a PCM sample. (8 for u-law, A-law,
                           *  and transparent mode, [1,16] range for linear) */
  void  *piuInst;         /* a pointer to PIU instance */
#if SIU_TEC_ENABLE
  void  *tecInst;         /* a pointer to the TEC instance */
#else
  void  *ecuInst;         /* a pointer to the ECU instance */
#endif
} siuInst_t;

/* External references local to SIU */
extern siuContext_t siuContext;         /* SIU Global Context (siu.c) */
extern siuInst_t    siuInst[];          /* SIU instances (siu.c) */

/* External functions local to SIU (siu.c) */
void siuDebug      (tuint id, char *s);
void siuException  (tuint id, char *s);
void siuDebugInfo  (tuint id, tuint type, tuint code, tuint len, tuint *data);

/* siumgr.c */
void siu_new_piu  (tint chnum, tint max_frame_length);
void siu_open_piu (tint chnum, tint frame_size);
void siu_open_tx  (tint chnum, tint frame_size);

/* siuslimnum.c/.s */
void siu_spad_process (linSample *speech_samples, tint *thresh_idx_p, tint *sign_p, 
                       tint frame_length, const linSample *siu_spad_tbl);

/* Debug report levels */
#define SIU_DEBUG_INFO         0    /* Passing debug information */
#define SIU_DEBUG_WARNING      1    /* Warning message */
#define SIU_DEBUG_FATAL        2    /* Fatal message. Report to MICRO and                                     * go to infinite loop. */

/* A few memory allocation static inline functions */

/******************************************************************************
 * FUNCTION PURPOSE: Allocate memory block from the core heap.
 ******************************************************************************
 * DESCRIPTION: Allocates a memory block from the core heap.
 *
 *    static inline void *siuCAlloc (
 *      tuint size)      - number of words to allocate
 *
 *    Return value: memory block base address of NULL upon error.
 *
 *****************************************************************************/

static inline void *siuCAlloc (tuint size)
{
  return (mhmAlloc (siuContext.cheap, size));
} /* siuCAlloc */

/******************************************************************************
 * FUNCTION PURPOSE: Allocate memory block from the voice heap.
 ******************************************************************************
 * DESCRIPTION: Allocates a memory block from the voice heap.
 *
 *    static inline void *siuVAlloc (
 *      tuint size)      - number of words to allocate
 *
 *    Return value: memory block base address of NULL upon error.
 *
 *****************************************************************************/

static inline void *siuVAlloc (tuint size)
{
  return (mhmAlloc (siuContext.vheap, size));
} /* siuVAlloc */
#endif  /* _SIULOC_H */
/* nothing past this point */
