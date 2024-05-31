;****************************************************************
; Function:    	IMG_histogram
; Version:     	1.00
; Processor:   	C55xx
; Author:		Peng Xu
; Date:			08-03-2001
; Description: 	histogram analysis. The input image value should be
;				in the range of [0, 255]. 
;              
; Usage:  	   	IMG_histogram( short *in_data, short *out_data, int size );
;
; Copyright Texas instruments Inc, 2001
;****************************************************************
     .global _IMG_histogram

      .text
_IMG_histogram:
    .if __large_model 
      PSHBOTH  XAR5
      PSHBOTH  XAR6
      PSHBOTH  XAR7
     .else
      PSH  AR5
      PSH  AR6
      PSH  AR7
     .endif
 
	SFTL	T0, #-1					;half size of the image
	MOV     XAR0, XAR4				;initialize AR4
	ADD		T0, AR4					;AR4 points to the third quater of the image
	SFTL	T0, #-1					;quater size of the image
	MOV     XAR0, XAR2				;initialize AR2
	MOV		XAR4, XAR6				;initialize AR6
	ADD		T0, AR2					;AR2 points to the second quater of the image
	ADD		T0, AR6					;AR6 points to the fourth quater of the image
	SUB     #1, T0					;prepare loop counter
	MOV		T0, BRC0				;loop counter
	MOV     AR1, T2					;starting address of the output buffer
	
	||rptblocal loop_end-1 
	ADD		*AR0+, T2, AR1			;load pixel_0 and get the histogram index
	ADD		*AR2+, T2, AR3			;load pixel_1 and get the histogram index
	ADD		*AR4+, T2, AR5 			;load pixel_2 and get the histogram index
	ADD		*AR6+, T2, AR7			;load pixel_3 and get the histogram index
    ADD     #1, *AR1				;update histogram according to pixel_0
    ADD		#1, *AR3				;update histogram according to pixel_1
    ADD		#1, *AR5				;update histogram according to pixel_2
    ADD		#1, *AR7				;update histogram according to pixel_3
loop_end:
;
; Return to calling function
;----------------------------------------------------------------
    .if __large_model 
          POPBOTH XAR7
          POPBOTH XAR6
          POPBOTH XAR5
          .else 
          POP		AR7							;restore AR7 from stack
	      POP		AR6							;restore AR6 from stack
	      POP		AR5							;restore AR5 from stack
	      .endif
     RET								;return to calling function
;----------------------------------------------------------------
;End of file
