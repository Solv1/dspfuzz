/*
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
#ifndef _HYB_H
#define _HYB_H
/******************************************************************************
 * FILE PURPOSE: Definitions for hybrid simulator.
 ******************************************************************************
 * FILE NAME:   hyb.h
 *
 * DESCRIPTION: Contains definitions for hybrid simulator.
 *
 * TABS: NONE
 *
 *****************************************************************************/

#include <ti/mas/types/types.h>                      /* DSP types            */
#include <ti/mas/util/ecomem.h>


/* Hybrid Return Codes */
enum {
  hyb_NOERR,                /* Success  */
  hyb_ERROR,                /* Failure  */
  hyb_NOMEMORY,             /* Memory allocation failure */
  hyb_BADPARAM,             /* Invalid parameters        */
  hyb_ERR_MEMBUF            /* Not enough ecomom bufs    */
};


/* Hybrid Segment Types */
enum {
  hyb_ST_SIMPLE     = 0,    /* Simple delay hybrid */
  hyb_ST_G168_M1    = 1,    /* G.168 M1-M7 hybrids */
  hyb_ST_G168_M2    = 2,
  hyb_ST_G168_M3    = 3,
  hyb_ST_G168_M4    = 4,
  hyb_ST_G168_M5    = 5,
  hyb_ST_G168_M6    = 6,
  hyb_ST_G168_M7    = 7,
  hyb_ST_G168_M8    = 8,
  hyb_ST_USER       = 64    /* User defined hybrid */
};


/* Control codes */
enum {
  hyb_CTL_GAIN      = 0,    /* change the log2(hybrid gain) */
  hyb_CTL_ON        = 1,    /* set hybrid on (add echo) */
  hyb_CTL_OFF       = 2,    /* set hybrid off (do not add echo) */
  hyb_CTL_FIRST_SEG = 3,    /* clear filter and put the first segment */
  hyb_CTL_ADD_SEG   = 4,    /* add another segment */
  hyb_CTL_FILE_ECHO = 5     /* get echo from wave file and do not add echo */
};


/* Hybrid segment specification */
typedef struct {
  tint type;        /* HYB_ST_xxx, hybrid segment type */
  tint erl;         /* desired ERL in dB */
  tint delay;       /* delay in samples */
  tbool negative_phase; /* TRUE: negative phase, FALSE: positive phase */
  union {
    struct {        /* Additional info for HYB_ST_USER */
      tint  length; /* Segment length in samples */
      Fract *h;     /* A pointer to filter coefficients (Q15) */
      tint  exp;    /* Exponent/gain for the segment */
      tint  erl0;   /* Native ERL of the segment (dB) */
    } uhseg;
    struct {                /* Additional info for HYB_ST_G168_xxx */
      tbool tone_scaling;   /* TRUE: use tone scaling for G.168 hybrids */
    } g168hseg;
  } u;
} hybSegment_t;


/* Control structure for hybControl() */
typedef struct {
  tint code;                /* control code HYB_CTL_xxx */
  union {
    hybSegment_t  segment;  /* hybrid segment specification,
                             *  code == HYB_CTL_{FIRST_SEG|ADD_SEG} */
    tint          dgain_l2; /* log2 of gain change, gain is in [-15,0] range,
                             *  code == HYB_CTL_GAIN */
  } u;
} hybControl_t;


/* Hybrid size configuration structure */
typedef struct {
  tint max_samples_per_frame;   /* Maximum samples in input frames */
  tint max_filter_length;       /* Maximum filter length in taps */
  tint max_rx_delay;            /* Maximum Rx delay in samples */
  tint max_tx_delay;            /* Maximum Tx delay in samples */
} hybSizeConfig_t;


/* Hybrid new configuration structure */
typedef struct {
  tuint ID;                     /* Instance identifier */
  tint max_samples_per_frame;   /* Maximum samples in input frames */
  tint max_filter_length;       /* Maximum filter length in taps */
  tint max_rx_delay;            /* Maximum Rx delay in samples */
  tint max_tx_delay;            /* Maximum Tx delay in samples */
} hybNewConfig_t;


/* Hybrid configuration structure */
typedef struct {
  tint  samples_per_frame;      /* Samples in the input frames */
  tint  filter_length;          /* filter length in taps */
  tint  rx_delay;               /* Rx delay in samples */
  tint  tx_delay;               /* Tx delay in samples */
  void  (*exception)(tuint id, char *str);  /* exception function */
} hybConfig_t;


/* Function prototypes */
tint hybAddEcho  (void *hybInst,  void *vsend_in, void *vrecv_in);
tint hybControl  (void *hybInst,  hybControl_t *ctl);
tint hybOpen     (void *hybInst,  hybConfig_t *cfg);
tint hybNew      (void **hybInst, tint nbufs, ecomemBuffer_t *bufs, hybNewConfig_t *cfg);
tint hybDelete   (void **hybInst, tint nbufs, ecomemBuffer_t *bufs);
tint hybGetSizes (tint *nbufs, const ecomemBuffer_t **bufs, hybSizeConfig_t *cfg);

#endif  /* _HYB_H */
/* nothing past this point */
