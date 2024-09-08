;****************************************************************
; Function:    	row2row
; Version:     	1.00
; Processor:   	C55xx
; Description: 	copy elements of one buffer to another buffer
;              
; Usage:  	   	col2row(row1, row2, LENGTH );
;                                     
; Arguments:	
;      row1:	starting address of buffer 1, the source buffer
;      row2:	starting address of buffer 2, the destination
;    LENGTH:	size of the buffers
; Copyright Texas instruments Inc, 2000
;****************************************************************

      .ARMS_off                     ;enable assembler for ARMS=0
      .CPL_on                       ;enable assembler for CPL=1
      .mmregs                       ;enable mem mapped register names

      .global _row2row
                           
      .text
_row2row:

	SFTL	T0, #-1
	SUB		#1, T0
	MOV		T0, CSR
	
	RPT		CSR
	MOV	    dbl(*AR0+), dbl(*AR1+)

; Return to calling function
;----------------------------------------------------------------
	RET							;return to calling function

;----------------------------------------------------------------
;End of file
