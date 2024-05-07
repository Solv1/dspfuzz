;****************************************************************
; Function:    	row2col
; Version:     	1.00
; Processor:   	C55xx
; Description: 	copy a buffer to a column of an image
;              
; Usage:  	   	row2col( row, col, HEIGHT );
; Arguments:	
;       row:	the address of the buffer
;       col:	the starting address of the column
;    HEIGHT:    the size of the column
;                                     
; Copyright Texas instruments Inc, 2000
;****************************************************************

      .ARMS_off                     ;enable assembler for ARMS=0
      .CPL_on                       ;enable assembler for CPL=1
      .mmregs                       ;enable mem mapped register names

; Stack frame
; -----------
RET_ADDR_SZ       .set 1            ;return address
REG_SAVE_SZ       .set 0            ;save-on-entry registers saved
FRAME_SZ          .set 0            ;local variables
ARG_BLK_SZ        .set 0            ;argument block

PARAM_OFFSET      .set ARG_BLK_SZ + FRAME_SZ + REG_SAVE_SZ + RET_ADDR_SZ


ST2mask  .set  0000000000000000b   	;circular/linear pointers


      .global _row2col
                           
      .text
_row2col:

	SUB		#1, T1
	MOV		T1, BRC0
	                
	RPTBLOCAL	loop1-1 	                
	
	MOV	    *AR0+, *(AR1+T0)
	
loop1:
;
; Return to calling function
;----------------------------------------------------------------
	RET							;return to calling function

;----------------------------------------------------------------
;End of file
