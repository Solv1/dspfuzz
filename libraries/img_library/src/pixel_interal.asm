;****************************************************************
; Function:    IMG_pix_inter_16x16
; Version:     0.2
; Processor:   C5510
; Description:  Half-pixel interpolation  
;
; Usage:      void IMG_pix_inter_16x16(short *reference_window, short *pixel_inter_block,  
;                                       int offset, short *align_variable);

;Change history:
; 
;       VERSION   DATE     /    AUTHORS        COMMENT
;         0.2    09-30-01 /    CHENG          original created based on video macros 
; Copyright Texas instruments Inc, 2001
;****************************************************************
    
    .include "macros_hwa_pi.inc" ; Pixel_interpolation macros
  
    .def _IMG_pix_inter_16x16
 
  .text

_IMG_pix_inter_16x16:
   
    push(T3,T2)
    bit(ST1,#ST1_CPL) = #0
    bit(ST1,#ST1_SATD) = #1   
    bit(ST2,#ST2_ARMS) = #0 
    
    ;source
    XAR2=XAR0
	AR2=AR2+T0
	|| DR0 = #16
	XAR3=XAR2
    AR3 = AR3 + #(48/2)          ; second line src address    
 
    ;Destination
	XAR0 = XAR1                   ; first line stored value array addr
	AR1 = AR0 + #18              ; second line stored value addr 
    T2 = T1 ; hold algin_variable
    || T1 = #0x14                  ; jump between two line of stored values
    T3 = T2 - #1
    if ( T3 == #0) goto #_PIalign1
    T3 = T2 - #2
    if ( T3 == #0) goto #_PIalign2
     T3 = T2 - #3
    if ( T3 == #0) goto #_PIalign3
_PIalign0: 
    AC0 = #0x34                  ; set alignment controller    
    _HWA_PI_16x16_0
    bit(ST1,#ST1_CPL) = #1
    bit(ST1,#ST1_SATD) = #0   
    bit(ST2,#ST2_ARMS) = #1 
    T3,T2 = pop()    
    return
_PIalign1: 
  	AC0 = #0x35                   ; set alignment controller        
    _HWA_PI_16x16_1
    bit(ST1,#ST1_CPL) = #1
    bit(ST1,#ST1_SATD) = #0   
    bit(ST2,#ST2_ARMS) = #1 
    T3,T2 = pop()    
    return
_PIalign2: 
    AC0 = #0x36                   ; set alignment controller      
    _HWA_PI_16x16_2
     bit(ST1,#ST1_CPL) = #1
    bit(ST1,#ST1_SATD) = #0   
    bit(ST2,#ST2_ARMS) = #1 
    T3,T2 = pop()  
    return
_PIalign3: 
    T0=#14
  	AC0 = #0x37                 ; set alignment controller      
    _HWA_PI_16x16_3              
     bit(ST1,#ST1_CPL) = #1
    bit(ST1,#ST1_SATD) = #0   
    bit(ST2,#ST2_ARMS) = #1 
    T3,T2 = pop()  
    return 
      

 
    
  
  
  