#ifndef _PCM_H
#define _PCM_H

/** 
 *  @file  pcm.h
 *  @brief Contains external API for PCM (G.711) encoder/decoder module.
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

#include <ti/mas/types/types.h>               /* DSP types                   */

/**
 *  @brief PCM mu-law encoder.
 *
 *  @param[in]  lin_in       Input frame of 16-bit linear samples. 
 *                           For each linear sample, the 14 MSBs are taken to
 *                           generate the mu-law codeword according to ITU-T 
 *                           G.711. The 2 LSBs are ignored.
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[out] ulaw_out     Output frame of G.711 mu-law codewords. 
 *                           The codewords will be stored in an array of type 
 *                           "tword". The total number of elements in this array
 *                           is frame_len. For CPUs with 16-bit machine word,
 *                           each codeword will occupy the lower byte, as 
 *                           illustrated below (L = frame_len):
 *  @verbatim
 *                           output buffer  upper byte      lower byte
 *                            ulaw_out[0]:      0         ulaw(lin_in[0])
 *                            ulaw_out[1]:      0         ulaw(lin_in[1])
 *                            ulaw_out[2]:      0         ulaw(lin_in[2])
 *                            ulaw_out[L-1]:    0         ulaw(lin_in[L-1])
 *  \endverbatim
 *                           For CPUs with 8-bit machine word, each
 *                           codeword occupies one byte, as illustrated below:
 *  @verbatim 
 *                            ulaw_out[0]:     ulaw(lin_in[0])
 *                            ulaw_out[1]:     ulaw(lin_in[1])
 *                            ulaw_out[2]:     ulaw(lin_in[2])
 *                            ulaw_out[L-1]:   ulaw(lin_in[L-1])
 *  \endverbatim
 */ 
void pcmUlawEncoder(linSample *lin_in, tword *ulaw_out, tint frame_len);

/** 
 *  @brief PCM A-law encoder.
 *  @param[in]  lin_in       Input frame of 16-bit linear samples. 
 *                           For each linear sample, the 13 MSBs are taken to
 *                           generate the A-law codeword according to ITU-T 
 *                           G.711. The 3 LSBs are ignored.
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[out] alaw_out     Output frame of G.711 A-law codewords. Refer to
 *                           pcmUlawEncoder() for output format.  
 */
void pcmAlawEncoder(linSample *lin_in, tword *alaw_out, tint frame_len);


/**
 *  @brief PCM mu-law decoder.
 *
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  ulaw_in      Input frame of G.711 mu-law codewords. 
 *                           The codewords must be provided in an array of type 
 *                           "tword". The total number of elements in this array
 *                           is frame_len. For CPUs with 16-bit machine word,
 *                           each codeword occupies the lower byte, as 
 *                           illustrated below (L = frame_len):
 *  @verbatim
 *                            input buffer  upper byte      lower byte
 *                            ulaw_in[0]:      0         ulaw codeword 0
 *                            ulaw_in[1]:      0         ulaw codeword 1
 *                            ulaw_in[2]:      0         ulaw codeword 2
 *                            ulaw_in[L-1]:    0         ulaw codeword L-1
 *  \endverbatim
 *                           For CPUs with 8-bit machine word, each
 *                           codeword occupies one byte, as illustrated below:
 *  @verbatim 
 *                            ulaw_in[0]:      ulaw codeword 0
 *                            ulaw_in[1]:      ulaw codeword 1
 *                            ulaw_in[2]:      ulaw codeword 2
 *                            ulaw_in[L-1]:    ulaw codeword L-1
 *  \endverbatim
 *  @param[out] lin_out      Output frame of 16-bit linear samples. 
 *                           Each u-law codeword will be decoded according to 
 *                           ITU-T G.711 and the decoded value will be placed 
 *                           into the 14 MSBs of each linear sample. The 2 LSBs 
 *                           will be filled with 0's. 
 */ 
void pcmUlawDecoder(tword *ulaw_in, linSample *lin_out, tint frame_len);

/**
 *  @brief PCM A-law decoder.
 *
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  alaw_in      Input frame of G.711 A-law codewords. 
 *                           The codewords must be provided in an array of type 
 *                           "tword". The total number of elements in this array
 *                           is frame_len. For input format, refer to 
 *                           pcmUlawDecoder().
 *  @param[out] lin_out      Output frame of 16-bit linear samples. 
 *                           Each A-law codeword will be decoded according to 
 *                           ITU-T G.711 and the decoded value will be placed 
 *                           into the 13 MSBs of each linear sample. The 3 LSBs 
 *                           will be filled with 0's. 
 */ 
void pcmAlawDecoder(tword *alaw_in, linSample *lin_out, tint frame_len);

/**
 *  @brief PCM mu-law encoder with packed output codewords.
 *
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  lin_in       Input frame of 16-bit linear samples. 
 *                           Refer to pcmUlawEncoder() for input format.
 *  @param[out] ulaw_out     Output frame of G.711 mu-law codewords. 
 *                           The codewords will be packed and stored in an array
 *                           of type "tuint" in big endian format, as 
 *                           illustrated below (L = frame_len):
 *  @verbatim
 *                  output buffer         upper byte           lower byte
 *                   ulaw_out[0]:       ulaw(lin_in[0])      ulaw(lin_in[1])
 *                   ulaw_out[1]:       ulaw(lin_in[2])      ulaw(lin_in[3])
 *                   ulaw_out[2]:       ulaw(lin_in[4])      ulaw(lin_in[5])
 *                   ulaw_out[L/2-1]:   ulaw(lin_in[L-2])    ulaw(lin_in[L-1])
 *  \endverbatim
 */ 
void pcmUlawEncoderP(linSample *lin_in, tuint *ulaw_out, tint frame_len);

/** 
 *  @brief PCM A-law encoder with packed output codewords.
 *
 *  @param[in]  frame_len    Length of the input frame. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  lin_in       Input frame of 16-bit linear samples. 
 *                           Refer to pcmAlawEncoder() for input format.
 *  @param[out] alaw_out     Output frame of G.711 A-law codewords. Refer to
 *                           pcmUlawEncoderP() for output format.  
 */
void pcmAlawEncoderP(linSample *lin_in, tuint *alaw_out, tint frame_len);

/**
 *  @brief PCM mu-law decoder with packed input codewords.
 *
 *  @param[in]  frame_len    Length of the input frame, ie. the number of mu-law 
 *                           codewords to be decoded. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  ulaw_in      Input frame of G.711 mu-law codewords. 
 *                           The codewords must be packed and stored in an array
 *                           of type "tuint" in big endian format,
 *                           as illustrated below (L = frame_len):
 *  @verbatim 
 *                  input buffer        upper byte           lower byte
 *                   ulaw_in[0]:      ulaw codeword 0      ulaw codeword 1
 *                   ulaw_in[1]:      ulaw codeword 2      ulaw codeword 3
 *                   ulaw_in[2]:      ulaw codeword 4      ulaw codeword 5
 *                   ulaw_in[L/2-1]:  ulaw codeword L-2    ulaw codeword L-1
 *  \endverbatim
 *  @param[out] lin_out      Output frame of 16-bit linear samples. 
 *                           Refer to pcmUlawDecoder() for output format.
 */ 
void pcmUlawDecoderP(tuint *ulaw_in, linSample *lin_out, tint frame_len);

/**
 *  @brief PCM A-law decoder with packed input codewords.
 *
 *  @param[in]  frame_len    Length of the input frame, ie. the number of A-law 
 *                           codewords to be decoded. It MUST be an integer
 *                           multiple of 4. 
 *  @param[in]  alaw_in      Input frame of G.711 A-law codewords. 
 *                           The codewords must be packed and stored in an array
 *                           of type "tuint" in big endian format. Refer to 
 *                           pcmUlawDecoderP() for format. 
 *  @param[out] lin_out      Output frame of 16-bit linear samples. Linear sample
 *                           value of 32767 corresponds to load capacity of 
 *                           3.17dBm0 according to ITU-T G.711. 
 */ 
void pcmAlawDecoderP(tuint *alaw_in, linSample *lin_out, tint frame_len);

#endif
/* Nothing past this point */
