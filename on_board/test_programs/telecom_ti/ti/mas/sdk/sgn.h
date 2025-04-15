#ifndef _SGN_H
#define _SGN_H
/******************************************************************************
 * FILE PURPOSE: Definitions for signal generator.
 ******************************************************************************
 * FILE NAME:   sgn.h
 *
 * DESCRIPTION: Contains definitions for signal generator.
 *
 * TABS: NONE
 *
 * $Id: sgn.h 1.16 1998/09/16 12:22:12 BOGDANK Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: sgn.h $
 * 1999/12/08 cfosgate
 *    Changed noise seeds in sgnConfig_t to tuints.
 * Revision 1.16  1998/09/16 12:22:12  BOGDANK
 *     - debugging Hoth noise
 *    Adding Hoth noise power level control.
 * Revision 1.15  1998/09/16 10:39:46  DLI
 *   - added Hoth noise constants
 * Revision 1.14  1998/08/21 15:55:22  BOGDANK
 *     - tint used for noise and power levels
 *    tint used for noise and power levels in control structure.
 * Revision 1.13  1998/07/08 14:59:51  bogdank
 *     - file I/O support added
 * Revision 1.12  1998/04/24 13:40:54  nkumar
 *    Added Composite Source Signal definitions
 * Revision 1.10  1997/12/11 19:02:33  BOGDANK
 *     - cosine table removed, CLEANUP needed! sawtooth works only
 *       if SGN_PHASE_Q is 9, i.e. if 2 in that Q-format is 1024.
 * Revision 1.9  1997/10/08 17:39:34  BOGDANK
 *     - phase reversal added
 *    Phase reversal added.
 * Revision 1.8  1997/05/23 15:17:30  BOGDANK
 *     - new types added
 *    New types added.
 * Revision 1.7  1997/04/07 13:58:30  bogdank
 *     - cosine table made constant
 *    Cosine table made constant.
 * Revision 1.6  1997/02/19 14:21:52  BOGDANK
 *     - gaussian white noise added
 *    noise_type added to configuration structure.
 * Revision 1.5  1997/02/14 13:56:34  BOGDANK
 *     - sgn_CTL_FSK_300
 *    sgn_CTL_FSK_300 added.
 * Revision 1.4  1997/02/10 13:36:08  BOGDANK
 *     - FSK 300bps added
 * Revision 1.3  1996/11/19 13:21:44  BOGDANK
 *     - Minor change in comments
 * Revision 1.2  1996/11/19 11:14:14  BOGDANK
 *     - sgnControl() added
 *    sgnControl() added.
 * Revision 1.1  1996/11/19 10:34:28  BOGDANK
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

#include <ti/mas/types/types.h>                      /* DSP types            */


/* SLM Function Return Value enumerations */
enum {
  sgn_NOERR    = 0,     /* Functions returned without error       */
  sgn_ERROR    = 1,     /* Functions returned with error          */
  sgn_BADPARAM = 2      /* Functions returned with bad parameters */  
};

/* Waveform types for tone generator (output in [-1,1] range, Q14 format) */
enum {
  sgn_WFT_SILENCE   = 0,
  sgn_WFT_COSINE    = 1,
  sgn_WFT_SAWTOOTH  = 2,
  sgn_WFT_FSK_300   = 3,      /* FSK with 300bps */
  sgn_WFT_CSS       = 4,      /* Composite Source Signal for G.168 */
  sgn_WFT_CSS_DTK   = 5,      /* Double Talk Signal for G.168 */
  sgn_WFT_FILE      = 6,      /* FILE input */
  sgn_WFT_HOTH      = 7,      /* Hoth noise */
  sgn_WFT_TONE_AM   = 8,      /* AM modulated signal */
  sgn_WFT_SDRAM     = 9       /* External memory input */
};

/* Noise types */
enum {
  sgn_NT_UNIFORM = 0,       /* uniform distribution */
  sgn_NT_GAUSS   = 1        /* gaussian distribution */
};

/* Control codes */
enum {
  sgn_CTL_DCOFFSET  = 0,
  sgn_CTL_TONE      = 1,
  sgn_CTL_NOISE     = 2,
  sgn_CTL_FSK_300   = 3,
  sgn_CTL_PRON      = 4,
  sgn_CTL_PROFF     = 5,
  sgn_CTL_CSS_POW   = 6,  /* Change the CSS power level */
  sgn_CTL_CSS_RESET = 7,  /* Reset the CSS generator state machine */
  sgn_CTL_HOTH_POW  = 8,  /* Change the Hoth noise power level */
  sgn_CTL_SDRAM_RST = 9   /* Reset the SDRAM state machine */
};

/* FILE I/O Structure */
typedef struct {
  linSample *frame;     /* a pointer to sample buffer */
  tint      cnt;        /* frame length in samples */
} sgnFileIo_t;

/* Control structure for sgnControl() */
typedef struct {
  tint code;      /* control code sgn_CTL_xxx */
  tint Fs;        /* Sampling Rate in Hz (8000 or 16000) */  
  union {
    linSample dc_offset;  /* code == sgn_CTL_DCOFFSET */
    tint      pr_period;  /* phase reversal period in samples */
    struct {              /* code == sgn_CTL_TONE */
      tint f1;
      tint f2;            /* same as in sgnConfig_t */
      linSample amp1;
      linSample amp2;
    } t;
    tint noise_level;     /* code == sgn_CTL_NOISE */
    struct {              /* code == sgn_CTL_FSK_300 */
      tlong duration;     /* same as in sgnConfig_t */
      tint  *dataptr;     /* same as in sgnConfig_t */
      tint  numword;      /* same as in sgnConfig_t */
    } fsk;
    tint power_level;     /* code == sgn_CTL_CSS_POW || sgn_CTL_HOTH_POW */
  } u;
} sgnControl_t;

/* Configuration structure */
typedef struct {
  tint      delay;        /* number of samples to delay signal generation */
  linSample dc_offset;    /* dc offset (Q0 format) */

  /* Tone Generator Parameters */
  tint          wf_type;    /* one of sgn_WFT_'s */
  tint          f1;         /* the first frequency in Hz */
  tint          f2;         /* the second frequency in Hz */
  tint          Fs;         /* Sampling Rate in Hz (8000 or 16000) */
  linSample     t_amp1;     /* amplitude of the first component (Q0) */
  linSample     t_amp2;     /* amplitude of the second component (Q0) */

  /* Phase Reversal Parameters */
  tint       pr_period;     /* # of samples between phase reversals */
  tbool      pr_enable;     /* TRUE: enable phase reversal
                             *  (COSINE & SAWTOOTH only)    */

  /* FSK Generator Parameters */
  /* f1 is used for '0', f2 is used for '1', t_amp1 is the amplitude */
  tlong     fsk_duration; /* total # of bits to generate */
  tint     *fsk_dataptr;  /* Pointer to buffer containing bits to send out 
                           *  repeatedly (MSB first) */
  tint      fsk_numword;  /* Number of words in data buffer */

  /* Noise Generator Parameters */
  tint      noise_level;  /* idle noise level in dBm0 */
  tuint     noise_seed;   /* idle noise seed */
  tint      noise_type;   /* SGN_NT_xxx */

  /* Composite Source Signal / Double talk Signal Generator Parameters */
  tint      power_level; /* Power level in dBm0 for Hoth noise and CSS */

  /* Hoth Noise Generator Paramenters */
  tuint     hoth_wng_seed;    /* Hoth noise seed */

  /* File Input */
  sgnFileIo_t* (*file_io_fcn)(sgnFileIo_t *dsc);    /* file io function */

  /* SDRAM input/output */
  tulong addr;        /* Address from which to retreive samples */
  tulong count;       /* Length, in samples, of data */
  const tint *pcmtbl; /* ulaw/alaw expansion table */

  void  (*exception)(tuint id, char *str);  /* exception function (initialized
                                             *  in sgnOpen()) */
  void  (*debug)(tuint id, char *str);      /* debug function (initialized
                                             *  in sgnOpen()) */
} sgnConfig_t;

/* Function prototypes */
tint sgnGetSizes      (tint *instsize);
void sgnControl       (void *sgnInst, sgnControl_t *ctl);
void sgnGenerateFrame (void *sgnInst, tint cnt, void *buf);
void sgnInit          (void *sgnInst, sgnConfig_t *cfg);

#endif  /* _SGN_H */
/* nothing past this point */
