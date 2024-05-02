; Function:    	IMG_boundary
; Version:     	2.00
; Processor:   	C55xx
; Author:		Peng Xu
; Date:			08-09-2001
; Description: 	Get the boundary of an image whos background pixel
;				value is zero. If a boundary pixel is detected, the 
;               function will output its coordinates into buffer XY and
;               the pixel value into buffer output.
;              
; Usage:  	   	IMG_boundary( short *in_data, int rows, int cols  
;						  int *out_coord, int *out_gray );
;                                  
;  
;
; Copyright Texas instruments Inc, 2001
;****************************************************************

      .global _IMG_boundary
	.ref _coverage_log;
      .text
_IMG_boundary:
	CALL #_coverage_log;
	PSH		T2						;store T2 into stack
	PSH		T3						;store T3 into stack
	AND		#001FFh, mmap(ST0_55)	;clear all ACOVx,TC1, TC2, C
	
	SUB		#1, T0					;outer loop counter
    MOV		T0, BRC0				;set the outer loop counter
    
   	MOV		#2, T0					;input index step, load 2 
    								;pixels each instruction
    								
    MOV		#0, T2					;initialize row_index
    				
    SFTL	T1, #-1					;T1 holds the cols
    SFTL	T1, #-1					;divided cols by 4
    SUB		#1, T1					;inner loop counter
	
	||rptblocal outer - 1
	
	MOV		#-1, T3					;reset col_index
	|| rptblocal inner - 1				;outer loop counter
	
	MOV dbl(*(AR0+T0)), pair (LO(AC0))	
									;load pixel_0 and pixel_1
	MOV dbl(*(AR0+T0)), pair (LO(AC2))
									;load pixel_2 and pixel_3

	||ADD    #1, T3					;update col_index
	BCC		br1, AC0==#0			;if pixel_0 is non-zero
	MOV		AC0, *AR2+				;output pixel value
	MOV 	pair(T2), dbl(*(AR1+T0));output pixel coordinates
	
br1:	
	ADD		#1, T3					;update col_index
	XCC		AC1!=#0					;if pixel_1 is non-zero
	MOV 	AC1, *AR2+				;output pixel value
	XCC		AC1!=#0					;then 
	MOV 	pair(T2), dbl(*(AR1+t0));output pixel coordinates
	
	||ADD   #1, T3					;update col_index
	XCC		AC2!=#0					;if pixel_2 is non-zero
	MOV 	AC2, *AR2+				;output pixel value
	XCC		AC2!=#0					;then
	MOV 	pair(T2), dbl(*(AR1+T0));output pixel coordinates
	
	||ADD	#1, T3					;update col_index
	XCC		AC3!=#0					;if pixel_3 is non-zero
	MOV 	AC3, *AR2+				;output pixel value
	XCC		AC3!=#0					;then
	MOV 	pair(T2), dbl(*(AR1+T0));output pixel coordinates
inner:	
	MOV		T1, BRC1				;re_initialize inner loop counter
	ADD     #1, T2					;update row_index	
outer:	
	CALL #_coverage_log;

;
; Return to calling function
;----------------------------------------------------------------
	POP		T3						;restore T3
	POP		T2						;restore T2
	RET								;return to calling function

;----------------------------------------------------------------
;End of file


