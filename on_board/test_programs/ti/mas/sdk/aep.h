#ifndef _AEP_H
#define _AEP_H
/******************************************************************************
 * FILE PURPOSE: Definitions for acoustic echo path simulator.
 ******************************************************************************
 * FILE NAME:   aep.h
 *
 * DESCRIPTION: Contains definitions for acoustic echo path simulator.
 *
 * TABS: NONE
 *
 * $Id: aep.h 1.10 2000/10/13 10:52:40 Meena Exp $
 *
 * REVISION HISTORY:
 *
 * $Log: aep.h $
 * Revision 1.10  2000/10/13 10:52:40  Meena
 *    AEP_CTL_VARY added
 * Revision 1.9  1998/05/28 11:59:40  BOGDANK
 *     - gain_l2 used in floating and fixed point, on/off control added
 *    acoustic echo path state control added.
 * Revision 1.8  1998/05/26 11:24:24  BOGDANK
 *     - gain replaced by gain_l2
 *    gain replaced by gain_l2.
 * Revision 1.7  1997/05/23 15:08:25  BOGDANK
 *     - new types added
 *    New types added.
 * Revision 1.6  1997/04/15 09:01:01  BOGDANK
 *     - comments improved
 * Revision 1.5  1997/04/11 15:31:28  BOGDANK
 *     - comments improved from receive-in length
 * Revision 1.4  1997/04/09 19:06:28  BOGDANK
 *     - Rx & Tx delay added to acoustic echo path
 *    Rx & Tx delay buffers added.
 * Revision 1.3  1996/12/11 15:53:57  BOGDANK
 *     - works for fixed point
 *    Filter coefficients' Q-format added.
 * Revision 1.2  1996/11/22 09:51:05  BOGDANK
 *     - aepControl() added
 *    Adding aepControl().
 * Revision 1.1  1996/11/20 11:22:36  BOGDANK
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

#define aep_FILTER_Q    14      /* Q14 for filter coefficients */

/* Control codes */
enum {
  aep_CTL_GAIN       = 0,      /* change the log2(acoustic echo path gain) */
  aep_CTL_ON         = 1,      /* set acoustic echo path on (add echo) */
  aep_CTL_OFF        = 2,      /* set acoustic echo path off (do not add echo) */
  aep_CTL_MORPH_ON   = 3,      /* Morph the echo path into a delayed inverted 
                                * version of orginal echo path slowly over time */
  aep_CTL_MORPH_OFF  = 4,      /* Stop echo path morphing */
  aep_CTL_RESET      = 5,      /* Set echo path with specified delay and ERL */
  aep_CTL_DELAY      = 6,      /* change the delay/location of echo path */
  aep_CTL_ALPHA      = 7,      /* change the non-linearity constant */
  aep_CTL_DECY_FCTR  = 8       /* change the non-linearity constant */
};

/* Control structure for varying echo path characteristics */
typedef struct {
  tint gain_l2;          /* log2(gain) */
  tint delay;            /* echo path delay in samples */
  tint aep_frame_M60dB;  /* # frame when aep decays to -60 dB */
} aepChar_t;

/* Control structure for aepControl() */
typedef struct {
  tint code;            /* control code AEP_CTL_xxx */
  union {
    aepChar_t aepath;     /* echo path characteristics */
    Fract gain_l2;        /* log2(gain) [-15,0] range, code == aep_CTL_GAIN */
    Fract alpha;          /* non-linearity constant */
    tint aep_frame_M60dB; /* # frame when aep decays to -60 dB */
  } u;
} aepControl_t;

/* Echo path parameters for AEC simulation */
typedef struct {
  tint delay;         
  tint gain_l2;
  tint aep_frame_M60dB;  /* # frame when aep decays to -60 dB */
} aepFilt_t;  

/* Configuration structure */
typedef struct {
  tint      samples_per_frame;  /* number of samples in the input frames
                                 *  (aepAddEcho()). */
  tint      h_seg1_length;      /* filter segment1 length in taps */
  tint      h_seg2_length;      /* filter segment2 length in taps */
  tint      rx_delay;           /* Rx delay in samples */
  tint      tx_delay;           /* Tx delay in samples */
  linSample *txd_buffer;        /* pointer to Tx delay buffer.
                                 *  Size: tx_delay */
  linSample *send_out;          /* pointer to send-out buffer.
                                 *  Size: samples_per_frame */
  Fract     gain_l2;            /* log2(gain) in [-15,0] range */
  Fract     thw_hf_micgain_init;/* handsfree mic gain initial value */
  Fract     delta_a;            /* Incremental value of morphing
                                 * coefficient */
  tint      sampling_rate;      /* 1 or 2 for 8 or 16 kHz sampling     */

  tint      morph_delay;        /* Fixed delay for morphed filter */ 
  Fract     *filter_iram;       /* Pointer to filter coefficient buffer.
                                 *  Coefficients are in Q14 format.
                                 *  Size: max_filter_length+max_delay. */
  const Fract *filter_temp;     /* work buffer to load the filter coefficients 
                                 * of echo path  (Q format is Q 14) 
                                 *  Size: max No of filter coefficeints*/
  const Fract *new_filter_temp; /* point to new AEP filter coefficients for morphing */
  tint      receive_in_length;  /* Length (in samples) of the following buf: */
  Fract     *aepbuf_start;      /* Start address of aep buffer */
  tint      aepbuf_length;      /* Length of echo bufffer */
  linSample *receive_in;        /* Receive-in signal buffer. Must keep samples
                                 *  long enough for aepAddEcho() to add echo
                                 *  using Rx path. Size according to ECU:
                                 *  ceil((tail+y2xd+2*frame)/frame)*frame.
                                 *    y2xd  - maximum y_to_x delay
                                 *    tail  - echo tail size, i.e. filter_length.
                                 *  MUST be aligned for circular addressing.
                                 *  MUST be integer multiple of frames and at
                                 *  least have 2 frames. */
  void  (*exception)(tuint id, char *str);  /* exception function (initialized
                                             *  in aepOpen()) */
  void  (*debug)(tuint id, char *str);      /* debug function (initialized
                                             *  in aepOpen()) */
} aepConfig_t;

/* Function prototypes */
void aepAddEcho (void *aepInst, void *vsend_in, void *vrecv_in);
void aepControl (void *aepInst, aepControl_t *ctl);
void aepOpen    (void *aepInst, aepConfig_t *cfg);

#endif  /* _AEP_H */
/* nothing past this point */
