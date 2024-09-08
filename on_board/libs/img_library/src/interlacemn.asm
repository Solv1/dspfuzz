;****************************************************************
; Function:    	interlace
; Version:     	1.00
; Processor:   	C55xx
; Description: 	interlace the wavelet filter bank outputs to an 
;   			buffer for reconstruction
;
; Note:			Call this function before calling recon_1D()
; Usage:  		interlace( int *input, int *output,
;			    		   int length, int filter_lh)
; Arguments:
;     input:    the signal from the output of the filter bank. 
;				the first half is the low-pass output while
;				the second half is the high-pass output
;    output:	output buffer
;    length:	size of input buffer
; filter_lh:    size of the wavelet filter
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


; Register usage                
; --------------                
      .asg    AR0, low          	;circular buffer
      .asg    AR4, high         	;circular buffer
      .asg    AR1, output       	;linear buffer
      
      .asg    XAR0, xlow            ;extended low
      .asg    XAR4, xhigh           ;extended high  
      .asg    BSA45, high_base  	;base addr for low_filter
      .asg    BSA01, low_base   	;base addr for high_filter
      
      .asg    BK03, low_sz      	;circ buffer size for filter_sz
      .asg    BK47, high_sz     	;circ buffer size for filter_sz 
    
ST2mask  .set  0000000000010001b   	;circular/linear pointers

      .global _interlace

      .text
_interlace:

;
; Configure the status registers as needed.
;----------------------------------------------------------------

	AND	#001FFh, mmap(ST0_55)		;clear all ACOVx,TC1, TC2, C
 
	OR	#04140h, mmap(ST1_55)		;set CPL, SXMD, FRCT

	AND	#0F9DFh, mmap(ST1_55)		;clear M40, SATD, 54CM    
    
	AND	#07A00h, mmap(ST2_55)		;clear ARMS, RDM, CDPLC, AR[0-7]LC

	AND	#0FFDDh, mmap(ST3_55)		;clear SATA, SMUL

;
; Setup loop counts
;----------------------------------------------------------------
	SFTL	T0, #-1         		;T0 = T0/2, input_length/2

	MOV		xlow, xhigh
	AMAR	*(high+T0)

; Set circular/linear ARx behavior

	MOV		#ST2mask, mmap(ST2_55)	;configure circular/linear pointers

	MOV     mmap(low), low_base    	;lower part address
	MOV		mmap(high), high_base	;higher part address
  
	MOV		mmap(T0), low_sz        ;lower part size
	MOV		mmap(T0), high_sz       ;higher part size
	
	SFTL    T1, #-1   				;Set the offset into T1
	SUB     #1, T1
    SUB	    T0, T1
    NEG     T1, T1
	MOV		T1, low
	MOV		T1, high	
	
	SUB		#1, T0
	MOV		T0, BRC0            	;outer loop executes nr times   

;
; Start of outer loop
;----------------------------------------------------------------
	RPTBLOCAL	loop1-1     		;start the outer loop
    
    MOV    *low+, *output+
    MOV    *high+, *output+
 	
loop1:					    		;end of outer loop

;
; Restore status regs to expected C-convention values as needed
;----------------------------------------------------------------
	BCLR	FRCT					;clear FRCT

	AND	#0FE00h, mmap(ST2_55)		;clear CDPLC and AR[7-0]LC

	BSET	ARMS					;set ARMS

;
; Return to calling function
;----------------------------------------------------------------
	||RET							;return to calling function

;----------------------------------------------------------------
;End of file
