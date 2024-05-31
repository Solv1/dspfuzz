;****************************************************************
; Function:    	IMG_perimeter
; Version:     	1.00
; Processor:   	C55xx
; Date:			08-13-2001
; Description: 	procudex the boundary of an object in a binary image. 
;				It echoes the boundary pixels with a value of 0xFF
;				and sets the other pixels to 0x00.
;              
; Usage:  	   	IMG_perimeter( short *in_data, int cols, short *out_data );
;
; Copyright Texas instruments Inc, 2001
;****************************************************************
 

      .global _IMG_perimeter

      .text
_IMG_perimeter:
;
; Configure the status registers as needed.
;----------------------------------------------------------------
     .if __large_model 
      pshboth  XAR5
      pshboth  XAR6
      pshboth  XAR7
     .else
      psh  AR5
      psh  AR6
      psh  AR7
     .endif
     
	;PSH		AR5							;push AR5 into stack
	;PSH		AR6							;push AR6 into stack
	;PSH		AR7							;push AR7 into stack
	MOV		XAR0, XAR2					;AR2 holds pixel_left
 	ADD     #1, AR0                     ;starting from input[1]
 	MOV     XAR0, XAR3
 	ADD     #1, AR3, AR3
 	;ADD		#1, AR0, AR3				;AR3 holds pixel_right
 	MOV		XAR0, XAR4					
 	SUB		T0, AR4						;AR4 holds pixel_up
 	MOV		XAR0, XAR5
 	ADD     T0, AR5						;AR5 holds pixel_down
 	
	SUB		#4, T0						;loop number
    MOV		T0, BRC0					;setup loop number

	MOV		#0, *AR1+					;the first output pixel, 
	MOV		#-2, AC0					;reset AC0
	MAC		*AR2+, *AR3+, AC0			;AC0 = pixel_left * pixel_right +
	MAC		*AR4+, *AR5+, AC0			;pixel_up * pixel_down 	
 	MOV		*AR0+, AC1            	  	;center pixel	
	||XCCPART AC0 != #0					;possible to be boundary
	ADD     #-1, AC1					;AC1 = AC1 - 1
	MOV		#0x00, T1					;if it's not boundary, output 0xFF
	||XCCPART AC1 == #0					;it is the boundary
	MOV		#0xFF, T1					
	
 	rptblocal loop_end-1
	MOV		#-2, AC0					;reset AC0
	||MOV  	T1, *AR1+                  	;update output
	MAC		*AR2+, *AR3+, AC0			;AC0 = pixel_left * pixel_right +
	MAC		*AR4+, *AR5+, AC0			;pixel_up * pixel_down 	
 	MOV		*AR0+, AC1            	  	;center pixel	
	||XCCPART AC0 != #0					;possible to be boundary
	ADD     #-1, AC1					;AC1 = AC1 - 1
	MOV		#0x00, T1					;if it's not boundary, output 0xFF
	||XCCPART AC1 == #0					;it is the boundary
	MOV		#0xFF, T1					
loop_end:	

	MOV		T1, *AR1+
	MOV		#0, *AR1+					;the last output pixel
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
	RET									;return to calling function

;----------------------------------------------------------------
;End of file
