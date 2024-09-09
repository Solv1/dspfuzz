/******************************************************************************
 * FILE PURPOSE: Software Integration Unit.
 ******************************************************************************
 * FILE NAME:   siu.c
 *
 * DESCRIPTION: Contains routines necessary for integrating DSP software.
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

/* #include <math.h> */     /* used for cosine initialization only */
#include <stdlib.h>
#include <string.h>

#include <ti/mas/types/types.h>
#include <ti/mas/fract/fract.h>
#include <ti/mas/util/debug.h>

/* SIU header files */
#include <ti/mas/ecu/test/src/siu.h>
#include <ti/mas/ecu/test/src/siuloc.h>
#include <ti/mas/ecu/test/src/siuport.h>

/* Endless loop */
#define loop      for(;;)

siuContext_t  siuContext;                 /* SIU Global Context */
siuInst_t     siuInst[SIU_MAX_CHANNELS];  /* SIU instance structures */

tuint siu_dbg_id;     /* debug ID used in debug and exception functions */
char siu_dbg_message[SIU_DBGMSG_SIZE];    /* debug message */

/******************************************************************************
 * FUNCTION PURPOSE: Debug & exception functions.
 ******************************************************************************
 * DESCRIPTION: Debug & exception functions.
 *
 *****************************************************************************/

static inline void siu_tuint_to_hex (char *dest, tuint val)
{
  tint i;
  
  dest[4] = 0; /* Null terminate */
  
  for (i=3; i>=0; i--) {
    dest[i] = (val & 0xF);
    if (dest[i] > 9)
      dest[i] += 'A' - 10;
    else
      dest[i] += '0';
    val >>= 4;
  }
}

static inline void siuDebugInternal (tuint id, char *str)
{
  int i;
  char *src, *dst;

  /* Copy id and message in a safe place */
  siu_dbg_id = id;
  src = str; dst = (char*)&siu_dbg_message[0];
  for (i = 0; i < SIU_DBGMSG_SIZE; i++)
    *dst++ = *src++;
} /* siuDebugInternal */

void siuDebug (tuint id, char *s)
{
  siuDebugInternal (id, s);
} /* siuDebug */

void siuException (tuint id, char *s)
{
  siuDebugInternal (id, s);

  loop;     /* loop forever */
} /* siuException */

void siuDebugInfo (tuint id, tuint type, tuint code, tuint len, tuint *data)
{
  char exc_string[25];

  /* Convert message code to a string -- call SIU exception handler */
  strcpy (exc_string, "Exception 0x");

  /* Tack exception code after previous string */
  siu_tuint_to_hex (exc_string+12, ((id & 0xFF00) << 2) | (code & 0x3FF)); 
  
  switch (type)
  {
    case dbg_EXCEPTION_FATAL:
      siuException (id, exc_string);
      break;
    case dbg_TRACE_INFO:
      /* Post debug trace to debug task */
      siuDebug (id, exc_string);
      break;
    default:
      break;  /* Ignore invalid message types */
  }
}

/******************************************************************************
 * FUNCTION PURPOSE: SIU Initialization Function.
 ******************************************************************************
 * DESCRIPTION: Initializes SIU Global Context and all SIU channel instances.
 *
 *****************************************************************************/

tint siuInit (siuConfig_t *cfg)
{
  int i;

  /* Initialize global context */
  siuContext.ID           = cfg->ID;        /* has SIU MID and 0 for chnum */
  siuContext.exception    = cfg->exception;
  siuContext.debug        = cfg->debug;
  siuContext.cheap        = cfg->core_heap;
  siuContext.cheap_used   = 0;
  siuContext.vheap        = cfg->voice_heap;
  siuContext.vheap_used   = 0;
  /* here we could place some siuContext.magic = SIU_CONFIGURED as
   * magic number to verify SIU is configured when necessary. */

  /* Initialize instances for all channels and "make" them "closed" */
  for (i = 0; i < SIU_MAX_CHANNELS; i++) {
    siuInst[i].ID                 = siuMakeID (SIU_MID_SIU, i+1);
    siuInst[i].exception          = siuContext.exception;
    siuInst[i].debug              = siuContext.debug;
    siuInst[i].cheap_used         = 0;
    siuInst[i].vheap_used         = 0;
    siuInst[i].companding_law     = cfg->companding_law;  /* default companding */
    siuInst[i].pcm_bits           = cfg->pcm_bits;
    siuInst[i].piuInst            = NULL;
    siuInst[i].ecuInst            = NULL;
	siuInst[i].slmInst            = NULL;

    /* Tx Task Part */
    siuInst[i].TxInst.enabled               = FALSE;
    siuInst[i].TxInst.send_frame_length     = 0;
    siuInst[i].TxInst.recv_frame_length     = 0;
    siuInst[i].TxInst.send_frame_ptr        = NULL;
    siuInst[i].TxInst.recv_frame_ptr        = NULL;
    siuInst[i].TxInst.TxSendOut.fcn         = NULL;
    siuInst[i].TxInst.TxSendOut.targetInst  = NULL;
  }
  return(SIU_NOERR);
} /* siuInit */
/* nothing past this point */
