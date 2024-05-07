;****************************************************************
; Function:     IMG_idct_8x8
; Version:     0.2
; Processor:   C5510
; Description: 2-D   Inverse Discrete Cosine Transform (DCT) 
;                   for 8*8 DCT coefficients using built-in hardware extensions.

;
; Usage:      void IMG_idct_8x8(short * idct_data, short * inter_buffer)
;
;Change history:
; 
;       VERSION   DATE     /    AUTHORS        COMMENT
;         0.2    03-Jul-01 /    CHENG          Modified to be a C-callable function, 
;                                              avoid the hard-coded memory setup
;         0.1    21-Jul-99 /    BALMELLE       modified for MPEG-4 implementation on C55xx
;         0.0    21-Jul-98 /    Guermeur       original created
 
; Copyright Texas instruments Inc, 2001
;****************************************************************

        .mmregs
	    .def	_IMG_idct_8x8
        .text
;//--------------------------------------------------
;//program section
;//--------------------------------------------------
_IMG_idct_8x8:
;//---------------------------------------------------
;// Context save 
;//----------------------------------------------------
    .if __large_model  
	pshboth(XAR5)
	pshboth(XAR6)
	.else 
	push(AR5,AR6)
	.endif
;//---------------------------------------------------
;// Initialization code
;//----------------------------------------------------

	bit(ST1, #ST1_CPL) = #0 
	;bit(ST1,#ST1_SXMD) = #1   
;//---------------------------------------------------
;// Get arguments
;//----------------------------------------------------
	XAR3=XAR1
	XAR4=XAR1
	XAR5=XAR1
	XAR1 = XAR0
	XAR2 = XAR0
	DR0 = #0x10
	AR2 = AR1 + #8
	DR1 = #0x2f
    XAR6 = XAR0
	AR4 = AR3 + #8
	AR5 = AR4 + #8
    
	BRC0 = #6                                   ; 7 iterations in the next localrepeat
                                                ; load column 0
	AC0 = copr(#0x2d,AC0,*(AR2+DR0),*(AR1+DR0)) ; begin 1
	AC1 = copr(#0x29,AC0,*(AR2+DR0),*(AR1+DR0)) ; begin 2
	AC0 = copr(#0x28,AC0,*(AR2+DR0),*(AR1+DR0)) ; begin 3
	AC1 = copr(#0x2c,AC0,*(AR2-DR1),*(AR1-DR1)) ; begin 4
	localrepeat {
	; load column i+1, exe column i
	AC0 = copr(#0x2d,AC0,*(AR2+DR0),*(AR1+DR0)) ; cycle 8
	AC1 = copr(#0x2f,AC0,AC1) , dbl(*AR3+)=AC0  ; cycle 7
	AC0 = copr(#0x2e,AC1,AC0) , dbl(*AR3+)=AC1  ; cycle 6
	AC1 = copr(#0x3a,AC0,AC1) , dbl(*AR3+)=AC0  ; cycle 5
	AC0 = copr(#0x3b,AC1,AC0) , dbl(*AR3+)=AC1  ; cycle 4
	AC1 = copr(#0x29,AC0,*(AR2+DR0),*(AR1+DR0)) ; cycle 3
	AC0 = copr(#0x28,AC0,*(AR2+DR0),*(AR1+DR0)) ; cycle 2
	AC1 = copr(#0x2c,AC0,*(AR2-DR1),*(AR1-DR1)) ; cycle 1
	}
	; load line 0, exe column 7, store column 6
	AC0 = copr(#0x2d,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 8
	AC1 = copr(#0x2f,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 7
	AC0 = copr(#0x2e,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 6
	AC1 = copr(#0x3a,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 5
	AC0 = copr(#0x3b,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 4
	AC1 = copr(#0x29,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 3
	BRC0 = #7
	AC0 = copr(#0x28,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 2
    AC1 = copr(#0x2c,AC0,*(AR5-DR1),*(AR4-DR1)) ; cycle 1
	; special IDCT mode
	AC1 = copr(#0x2b,AC0,AC1)
	; load line 1, exe line 0, store column 7
	AC0 = copr(#0x2d,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 8
	AC1 = copr(#0x2f,AC0,AC1), dbl(*AR3+)=AC0 ; cycle 7
	AC0 = copr(#0x2e,AC1,AC0), dbl(*AR3+)=AC1 ; cycle 6
	AC1 = copr(#0x3a,AC0,AC1), dbl(*AR3+)=AC0 ; cycle 5
	AC0 = copr(#0x3b,AC1,AC0), dbl(*AR3+)=AC1 ; cycle 4
	localrepeat {
	; load line i+1, exe line i, store line i-1 (i>0) or store column 7 (i=0)
	AC1 = copr(#0x29,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 3
	AC0 = copr(#0x28,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 2
	AC1 = copr(#0x2a,AC0,*(AR5-DR1),*(AR4-DR1)) ; cycle 1
	; load line i+2, exe line i+1, store line i
	AC0 = copr(#0x2d,AC0,*(AR5+DR0),*(AR4+DR0)) ; cycle 8
	AC1 = copr(#0x2f,AC0,AC1), dbl(*AR6+)=AC0 ; cycle 7
	AC0 = copr(#0x2e,AC1,AC0), dbl(*AR6+)=AC1 ; cycle 6
	AC1 = copr(#0x3a,AC0,AC1), dbl(*AR6+)=AC0 ; cycle 5
	AC0 = copr(#0x3b,AC1,AC0), dbl(*AR6+)=AC1 ; cycle 4
	}

;//-----------------------------------------------------------------------------
;// Context restore
;//-----------------------------------------------------------------------------
   	bit(ST1, #ST1_CPL) = #1  
    .if __large_model  
    XAR6 = popboth()
	XAR5 = popboth() 
    .else
    AR5,AR6=pop()
    .endif
    return
    
  
    


