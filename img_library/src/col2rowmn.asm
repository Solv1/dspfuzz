;****************************************************************
; Function:    	col2row
; Version:     	1.00
; Processor:   	C55xx
; Description: 	copy a column of an image to a buffer
;              
; Usage:  	   	col2row(int *col, int *row, 
;						int IMAGE_WIDTH, int HEIGHT );
;                                     
; Note:		    The row buffer size should be the same as HEIGHT	
; Arguments:
;       col:    the starting address of the column
;		row:    the address of the buffer
;IMAGE_WIDTH:    the width of the image
;	 HEIGHT:    the size of the column need to be processed
;
; Copyright Texas instruments Inc, 2000
;****************************************************************

      .ARMS_off                     ;enable assembler for ARMS=0
      .cpl_on                       ;enable assembler for CPL=1
      .mmregs                       ;enable mem mapped register names

      .global _col2row
                           
      .text
_col2row:

	SUB		#1, T1
	MOV		T1, CSR
	
	RPT     CSR
	MOV	    *(AR0+T0), *AR1+

;
; Return to calling function
;----------------------------------------------------------------
	RET							;return to calling function

;----------------------------------------------------------------
;End of file
