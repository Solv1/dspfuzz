;****************************************************************
; Function:    	IMG_threshold
; Version:     	1.00
; Processor:   	C55xx
; Description: 	Performs thresholding oeration on an input image.
;           	Pixels that are above the threshold value are 
;				written to the output unmodified. Other pixels 
;				clamped to zero in the output image
;              
; Usage:  	   	IMG_threshold( short *in_data, short out_data, short cols, 
;						   short rows, short threshold_value );
; 
; Copyright Texas instruments Inc, 2001
;****************************************************************
 
      .global _IMG_threshold

      .text
_IMG_threshold:
	MOV		T0, HI(AC0)				;number of row of the image
	MPY		T1, AC0, AC1			;the size of the image
	SFTL	AC1, #-1				;half size of theimage
	SUB		#1, AC1, T0				
	MOV		T0, BRC0				;loop counter
	
	MOV		AR2, T1					;threshold value
    MOV		#2, T0					;index step size is 2
    MOV     XAR0, XAR2
    MOV     XAR1, XAR3
    ADD     #1, AR2, AR2			;odd index input pixel buffer
 	ADD		#1, AR3, AR3			;odd index output pixel buffer
 	
 	MOV		#0xFF, AC2				;AC2 = 0x0000FF
 	SFTL	AC2, #16				;AC2 = 0xFF0000
 	ADD		#0xFF, AC2				;AC2 = 0xFF00FF

 	||rptblocal loop_end-1
 	SUB 	dual(*AR0), T1, AC0		; threshold - input
    MOV		*(AR2+T0), *(AR0+T0), AC1	
    								;AC1 keeps the original input
 	||SFTL	AC0, #-8				;(threshold-input)>>8
 	AND		AC2, AC1				;input & 0xFF00FF
 	AND		AC1, AC0				;finial resuolt
 	MOV		AC0, *(AR3+T0), *(AR1+T0);output result
loop_end:
;
; Return to calling function
;----------------------------------------------------------------
	RET									;return to calling function

;----------------------------------------------------------------
;End of file
