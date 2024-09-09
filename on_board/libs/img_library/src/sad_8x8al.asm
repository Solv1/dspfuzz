;*******************************************************************************
; Function:    IMG_sad_8x8
; Version:     2.2
; Processor:   C5510
; Description:  Calculate sum of the absolute difference for 8x8 blocks
; unsigned short IMG_sad_8x8(unsigned short *srcImg, unsigned 
;                            short *search_point, int pitch); 
;
; Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         2.2    02/28/03       CHENG PENG          original creation
; Benchmark 52 cycles
; code size 28 words
; Copyright Texas instruments Inc, 2003
;*******************************************************************************

   
    
   .def _IMG_sad_8x8
   .text
_IMG_sad_8x8:
  T0=T0>>#1
  T0=T0-#3
  XCDP=XAR0;
  XAR0=XAR1
  ||  BRC0 = #0x6 ;repeat 7 times
  	AC0,AC1 = copr(#0x5c,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
    repeat(#0x1); repeat 2 times
  	AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
  	AC0,AC1 = copr(#0x43,AC0,AC1,*(AR0+T0),*AR1,coef(*CDP+))
    localrepeat{
   repeat(#0x2) ; repeat 3 times
    AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+));1-7
    AC0,AC1 = copr(#0x43,AC0,AC1,*(AR0+T0),*AR1,coef(*CDP+));8
    } 
    AC0,AC1 = copr(#0x43,AC0,AC1,*AR0,*AR1,coef(*CDP))
    AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))            
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        
  
  T0=AC0
    
  return
