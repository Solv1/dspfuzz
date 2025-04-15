/******************************************************************************
 * PURPOSE : Main source file for the PCM Interface Unit (PIU).
 ******************************************************************************
 * FILE NAME:   piuinit.c
 *
 * DESCRIPTION: Contains main PIU initialization functions.
 *
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

/* Ansi C header files */
#include <stdlib.h>

/* System Level header files */
#include <ti/mas/types/types.h>

/* System Utilities' API's */
#include <ti/mas/util/ecomem.h>

/* PIU related header files */
#include <ti/mas/ecu/test/src/piu.h>
#include <ti/mas/ecu/test/src/piuloc.h>
#include <ti/mas/ecu/test/src/piuport.h>

/*****************************************************************
 *                  Static Variable declarations                 *
 *****************************************************************/

/* PIU dynamic memory buffers */ 
#define piu_NBUFS         4
#define piu_INSTANCE_BUFN 0
#define piu_SENDOUT_BUFN  1
#define piu_RECVIN_BUFN   2 
#define piu_RECVOUT_BUFN  3 

/* Memory buffers initialization */
static ecomemBuffer_t piuBufs[piu_NBUFS] = {
/* class,           log2align, size, volat, base */
  ecomem_CLASS_EXTERNAL,         0,    0, FALSE, NULL, /* instance structure */
  ecomem_CLASS_EXTERNAL,         0,    0, FALSE, NULL, /* send in buffer */
  ecomem_CLASS_EXTERNAL,         0,    0, FALSE, NULL, /* receive in buffer */
  ecomem_CLASS_EXTERNAL,         0,    0, FALSE, NULL  /* receive out buffer */
}; 

/******************************************************************************
 * FUNCTION PURPOSE: Obtain memory requirements for an instance of PIU
 ******************************************************************************
 * DESCRIPTION: Memory buffer description as defined in memory.h is used for 
 *              buffer description. Vector of memory buffer descriptions that
 *              is returned in bufs must not be changed by external software.
 *              Memory requirements are determined based on the size
 *              configuration structure.
 *
 *  tint piuGetSizes (
 *    tint               *nbufs, - number of buffers used
 *    const memBuffer_t  **bufs, - memory buffer description structure
 *    piuSizeConfig_t    *cfg)   - size configuration structure
 *
 *****************************************************************************/

tint piuGetSizes (tint *nbufs, const ecomemBuffer_t **bufs, piuSizeConfig_t *cfg)
{
  *nbufs = piu_NBUFS;
  
  piuBufs[piu_INSTANCE_BUFN].size = sizeof(piuInst_t);
  piuBufs[piu_SENDOUT_BUFN].size  = piu_NUMSEGM_TX * 
                                    cfg->max_samples_per_segment * 
                                    sizeof(linSample); 

  if (cfg->rx_triple_buffering) {
     /* Triple buffering case in Rx direction (VOICE app) */
     piuBufs[piu_RECVIN_BUFN].size   = piu_NUMSEGM_RX3 * 
                                       cfg->max_samples_per_segment * 
                                       sizeof(linSample);  
#if PIUDLCOMP_ENABLE
      piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX3 * 
                                      (cfg->max_samples_per_segment>>1) * 
                                       sizeof(linSample);
#else
      piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX3 * 
                                      cfg->max_samples_per_segment * 
                                       sizeof(linSample);
#endif
  }
  else {
     /* Double buffering case in Rx direction (e.g. FAX app) */  
    piuBufs[piu_RECVIN_BUFN].size   = piu_NUMSEGM_RX2 * 
                                       cfg->max_samples_per_segment * 
                                       sizeof(linSample);    
#if PIUDLCOMP_ENABLE
      piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX2 * 
                                      (cfg->max_samples_per_segment>>1) * 
                                       sizeof(linSample);
#else
      piuBufs[piu_RECVOUT_BUFN].size= piu_NUMSEGM_RX2 * 
                                      cfg->max_samples_per_segment * 
                                       sizeof(linSample);
#endif
  }

  *bufs = piuBufs ;      /* Return pointer to instance */
 
  return (piu_NOERR);
} /* piuGetSizes */

/*****************************************************************************
 * FUNCTION PURPOSE: Create a PIU object and assign PIU globals
 *****************************************************************************
 * DESCRIPTION: Creates an instance of PIU and initializes its memory.
 *
 * int piuNew (
 *   void           **piuInst, - an address of memory location that will 
 *                               receive a pointer to instance structure
 *   tint           nbufs,     - number of buffers used 
 *   memBuffer_t    *bufs,     - a vector of buffer descriptors
 *   piuNewConfig_t *cfg)      - a pointer to configuration structure    
 *
 * RETURN VALUE: piu_NOMEMORY  - heap exhausted
 *               piu_NOERR     - success
 *               piu_ERROR     - invalid input parameters 
 ****************************************************************************/
tint piuNew (void **piuInst, tint nbufs, ecomemBuffer_t *bufs, piuNewConfig_t *cfg)
{
  int   i;
  tbool  failed;
  piuInst_t   *inst;
  ecomemBuffer_t *bufp;
  
  /* Test instance pointer (Must be NULL) */
  if (*piuInst != NULL || nbufs != piu_NBUFS) return (piu_ERROR) ;
   
  /* Allocate all dynamic buffers (base address != NULL ?)*/
  failed = FALSE;
  for (i = 0, bufp = &bufs[0]; i<nbufs; i++, bufp++) {
    /* ignore NULL pointer on receive_out_buf when it is not allocated */
    failed = failed || (bufp->base == NULL);
  }
  if (failed)
    return (piu_NOMEMORY);

  /* Identify the instance structure */
  bufp = &bufs[piu_INSTANCE_BUFN];
  if (bufp->size < sizeof(piuInst_t)) return (piu_ERROR);
  inst = (piuInst_t *)bufp->base;
  
  /* Identify the send-out buffer */
  bufp = &bufs[piu_SENDOUT_BUFN];
  inst->send_out_buf = (linSample *)bufp->base;

  /* Identify the receive-in buffer */
  bufp = &bufs[piu_RECVIN_BUFN];
  inst->receive_in_buf.start_ptr = (linSample *)bufp->base;
  
  /* Identify the receive-out buffer */
  bufp = &bufs[piu_RECVOUT_BUFN];
  inst->receive_out_buf = (linSample *)bufp->base;

  inst->mode_bitfield          = 0;                              
  inst->receive_in_buf.end_ptr = inst->receive_in_buf.start_ptr;
  if (cfg->sizeCfg.rx_triple_buffering) {
    /* This is implicit indication of VOICE (or Modem) application. 
     * It requires triple buffering scheme */
    inst->receive_in_buf.end_ptr += (piu_NUMSEGM_RX3 * cfg->sizeCfg.max_samples_per_segment);
    inst->mode_bitfield |= piu_CTRL_BIT_TRIPLE_RX_BUF;
  } else {
    /* It requires double buffering scheme */  
    inst->receive_in_buf.end_ptr += (piu_NUMSEGM_RX2 * cfg->sizeCfg.max_samples_per_segment);        
  }
  inst->receive_in_buf.top_ptr   = inst->receive_in_buf.end_ptr;                    

  /* Save some configuration parameters */
  inst->ID      = cfg->ID; 
  piuContext    = cfg->context;
  inst->state   = piu_CLOSED;     /* state is set to closed */

  *piuInst = (void *)inst;          /* return the instance pointer */
  
  return (piu_NOERR);
} /* piuNew */


/* nothing past this point */
