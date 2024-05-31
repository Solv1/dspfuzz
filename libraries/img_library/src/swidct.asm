;****************************************************************
; Function:    IMG_sw_idct_8x8
; Version:     0.2
; Processor:   C5510
; Description: 2-D  Inverse Discrete Cosine Transform (DCT) 
;                   for 8*8 DCT coefficients.

;
; Usage:       void IMG_sw_idct_8x8(short * idct_data, short * inter_uffer)
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
            .sect  "idctcoef"		
r_coefs		.copy "m4idct.tab"
            .def    _IMG_sw_idct_8x8
            .text
;//---------------------------------------------------
;// Create local variables
;//----------------------------------------------------
ARG0      .set 0x0000
ARG1      .set 0x0001
p_interm  .set 0x0002
p_interm2 .set 0x0004
 
_IMG_sw_idct_8x8:
;//---------------------------------------------------
;// Context save 
;//----------------------------------------------------
    push(DR3,DR2)
    pshboth(XAR5)
    .if __large_model  
    pshboth(XAR6)
    pshboth(XAR7)
    .else
    push(AR6,AR7)
    .endif
       
;//---------------------------------------------------
;// Initialization code
;//----------------------------------------------------
    bit(ST1,#ST1_FRCT) = #1
    bit(ST1,#ST1_SXMD) = #1
    bit(ST2,#ST2_ARMS) = #0
	bit(ST2,#ST2_CDPLC) = #1		            ;set circular addressing with CDP
   	bit(ST2,#ST2_AR0LC) = #1		            ;set circular addressing with AR0
   	bit(ST2,#ST2_AR1LC) = #1		            ;set circular addressing with AR1
	bit(ST2,#ST2_AR7LC) = #1	                ;set circular addressing with AR7
  
     SP = SP + #-6
    @(ARG0) = AR0
    @(ARG1) = AR1
    @(p_interm)=AR1
      @(p_interm)=@(p_interm)+#64
    @(p_interm2)=AR1  
    @(p_interm2)=@(p_interm2)+#128
    XAR2=XAR1 ; cheng
    XAR6=XAR1 ; cheng
	BKC  = #(4)                                 ;set circular addressing length for coefs  3 bytes
	|| DR2 = #4	                                ;2 bytes
	BK03 = #(64)                                ;set circular addressing length for AR0 and AR1  3 bytes
	|| DR3 = #0                                 ;Shift between the two 1-D IDCT  2 bytes
	BK47 = #(64)                                ;set circular addressing length for AR7  3 bytes
	|| DR1 = #6                                 ;For addressing  2 bytes
    
    XAR7 = XAR1
    XCDP = #r_coefs
	BOFC = #((r_coefs) & 0x0ffff)               ;set coefs[] start address  3 bytes
	AR4 = #(8)
	BOF01 = @(ARG0)                             ;set p_buffer_in[] start address  3 bytes
	|| AR0 = #0                                 ;AR0-> X(0) (input)  2 bytes
	BOF67 = @(ARG1)                             ;set p_buffer_out[] start address  3 bytes

	|| DR0 = #2                                 ;For addressing  2 bytes
	AR1 = #4                                    ;AR1-> X(4) (input)  2 bytes
	|| CDP = #0                                 ;4 bytes
	AR7 = #(6*8)                                ;AR7-> x(6) (output)  4 bytes
                                                ;|dummy|interm8|interm5|interm7|interm6|interm8|...(all long words)
 
	AR6=@(p_interm)
	AR2=@(p_interm2)
 
	BRC1 = #7                                   ;Inner loop iteration number (8 raws of the matrix)
	|| AR5 = #8                                 ;For swap purpose with DR1 for addressing  2 bytes
	AR3 = #3                                    ;3 bytes

   	|| BRC0 = #1                                ;1st pass : 1-D IDCT on the raws of the input matrix
                                                ;2nd pass : 1-D IDCT on the raws of 1st 1-D IDCT output matrix
                                                ;(transposed during store phase)
	blockrepeat {                               ;*************************  3 bytes

	localrepeat {                               ; *** begin 1st stage (8 times)
	AC0 = *(AR0+DR0) * coef(*CDP+),             ; AC0=X(0)*C4
	AC2 = *(AR1+DR0) * coef(*CDP+)              ; AC1=X(4)*C4

	dbl(*AR6+) = AC1                            ;AC1=interm6
	|| AC0 = AC0 - AC2                          ;ACO=X(0)*C4-X(4)C(4)  ACO=interm2

	dbl(*AR2) = AC0                             ;dbl(*AR2)=a_interm2
	|| AC0 = AC0 + (AC2 << #1)                  ;ACO=X(0)*C4+X(4)C(4)  ACO=a_interm1

	AC1 = *AR0 *coef(*CDP+),                    ;AC1=X(2)*C6
	AC3 = *AR1 *coef(*CDP+)                     ;AC3=X(6)*C6

	AC1 = AC1 - (*(AR1+DR1) * coef(*(CDP+DR0))), ;AC1=X(2)C6-X(6)C2  AC1=interm3
	AC3 = AC3 + (*(AR0+DR1) * coef(*(CDP+DR0)))	 ;AC3=X(6)C6+X(2)C2  AC3=interm4

	AC2 = dbl(*AR2)                             ;AC2=interm2
	|| AC0 = AC0 - AC3                          ;AC0=interm1-interm4  AC0=interm8
	
	dbl(*AR6+) = AC0                            ;AC0=interm8
	|| AC0 = AC0 +(AC3 << #1)                   ;AC0=interm1+interm4  AC0=interm5

	dbl(*AR6+)= AC0                             ;AC0=interm5
	|| AC2 = AC2 - AC1                          ;AC2=interm2-interm3  AC2=interm7

        dbl(*AR6+)= AC2                         ;AC2=interm7
	AC1 = AC1 + dbl(*AR2)                       ;AC1=interm+interm3  AC1=interm6
	}                                           ; *** end 1st stage

	CDP = #0
	|| AR1 = AR1-AR3
	dbl(*AR6) = AC1                             ;AC1=interm6
	|| mar(AR0 + AR3)                           ;AR0->X(3)

                   
    AR6 = @(p_interm) ;AR6-> interm6
    
    AR6 = AR6 + #8
	mar(AR7 - #41)                              ;AR1-> X(1)
	BRC1 = #7
	|| swap(AR5,DR1)                            ;3 bytes

	BOFC = #((r_coefs+3) & 0x0ffff)             ; set coefs[] start address at C3 (CDP->C3)  3 bytes

	localrepeat{                                ; *** begin 2nd stage

	AC0 = *AR1 * coef(*CDP+),                   ;AC0 = X(1)*C3
	AC2 = *(AR0+DR0) * coef(*CDP+)              ;AC2 = X(3)*C3  4 bytes
	|| swap(AR5,DR1)

	AC0 = AC0 - (*AR0 * coef(*CDP+)),           ;AC0 = AC0-X(5)*C1
	AC2 = AC2 + (*(AR1+DR1) * coef(*CDP+))      ;AC2 = AC2+X(1)*C1  4 bytes
	|| swap(AR5,DR1)

	AC0 = AC0 - (*AR1 * coef(*CDP+)),           ;AC0 = AC0-X(7)*C5
	AC2 = AC2 + (*(AR0-DR0) * coef(*CDP+))      ;AC2 = AC2+X(5)*C5  4 bytes

	AC0 = AC0 - (*(AR0+DR1) * coef(*CDP+)),     ;AC0 = AC0-X(3)*C7  AC0=interm11
	AC2 = AC2 + (*(AR1+DR0) * coef(*CDP+))      ;AC2 = AC2+X(7)*C7  AC2=interm12
	|| swap(DR0,DR2)

	AC1 = dbl(*(AR6-DR0)) - AC0                 ;AC1=(interm6-interm11)  AC1=x(6)
	|| mar(AR7+ #41)

    *(AR7+DR1) = HI(saturate(rnd(AC1 << DR3))) ;x(6)

    AC3 = dbl(*AR6) - AC2                      ;AC3=(interm5-interm12)  AC3=x(7)

    *(AR7+DR1) = HI(saturate(rnd(AC3 << DR3))) ;x(7)
    AC1 = dbl(*(AR6+DR0)) + AC2                ;AC1=(interm5+interm12)  AC1=x(0)
    *(AR7+DR1) = HI(saturate(rnd(AC1 << DR3))) ;x(0)
    
    AC3 = dbl(*(AR6+DR1)) + AC0                 ;AC3=(interm6+interm11)  AC3=x(1)

    *AR7 = HI(saturate(rnd(AC3 << DR3)))        ;x(1)
    || swap(DR0,DR2)
    }                                           ; *** end 2nd stage

                         
    AR6=@(p_interm)                             ; AR6-> interm7
   
    AR6 = AR6 + #6
    AR1 = AR1+DR2                               ; AR1-> X(5)

    mar(AR7 + #24)
    || mar(AR0 - DR0)                           ; AR0-> X(1)
        
    BOFC = #((r_coefs+3) & 0x0ffff)             ; set coefs[] start address at C3
    CDP = #3

    localrepeat {                               ; *** begin 3rd stage
    AC0 = *AR0 * coef(*CDP-),                   ; AC0=X(1)*C7
    AC2 = *(AR1-DR0) * coef(*CDP-)              ; AC2=X(5)*C7
    || swap(DR1,AR5)

	AC0 = AC0 - (*AR1 * coef(*CDP-)),           ; AC0=AC0-X(3)*C5
	AC2 = AC2 + (*(AR0+DR1) * coef(*CDP-))      ; AC2=AC2+X(1)*C5
	AC0 = AC0 -(*AR0 * coef(*CDP-)),            ; AC0=AC0-X(7)*C1
	AC2 = AC2 -(*(AR1+DR0) * coef(*CDP-))       ; AC2=AC2-X(3)*C1
	|| swap(DR1,AR5)

	AC0 = AC0 +( *(AR1 + DR1) * coef (*CDP-)),  ; AC0=AC0+X(5)*C3  AC0=interm9
	AC2 = AC2 +( *(AR0 + DR0) * coef (*CDP-))   ; AC2=AC2+X(7)*C3  AC2=interm10
	|| swap(DR0,DR2)

	AC1 = AC2 + dbl(*(AR6-DR0))                 ;AC1=interm10+interm7  AC1=x(2)
	|| mar(AR7 + #41)                           ;AR7-> x(2) first column

	AC3 = dbl(*AR6) + AC0                       ;AC3=interm8+interm9  AC3=x(3)
	*(AR7+DR1) = HI(saturate(rnd(AC1 << DR3)))  ;x(2)

	AC1 = dbl(*(AR6+DR0)) - AC0                 ;AC1=interm8 - interm9  AC1=x(4)

	*(AR7+DR1) = HI(saturate(rnd(AC3 << DR3)))  ;x(3)

	AC3 = dbl(*(AR6+DR1)) - AC2                 ;AC3=interm7-interm10  AC3=x(5)
	*(AR7+DR1) = HI(saturate(rnd(AC1 << DR3)))  ;x(4)

	*AR7 = HI(saturate(rnd(AC3 << DR3)))        ;x(5)
	|| swap(DR0,DR2)
	}
                                                ; *** end 3rd stage
	BOF01 = @(ARG1)                             ; The output matrix becomes the input matrix
	|| swap(DR1,AR5)

	DR3 = #-5                                   ; The output results are
	|| mar(*AR1-)                               ; shifted by and DR3.

	mar(AR7 + #1)                               ; AR7->x6
	|| mar(*AR0-)

	BOF67 = @(ARG0)                             ; The input buffer becomes the output buffer

	BOFC = #((r_coefs) & 0x0ffff)               ; set coefs[] start address at C4

	 AR6=@(p_interm)                   ;AR6 -> dummy (first element of interm)
 
   
    CDP = #0
	}
    
 
     SP = SP + #6

;//---------------------------------------------------
;//  Context restoration
;//----------------------------------------------------
    bit(ST1,#ST1_FRCT) = #0
    bit(ST2,#ST2_ARMS) = #1
    bit(ST2,#ST2_CDPLC) = #0                    ;reset circular addressing with CDP
   	bit(ST2,#ST2_AR0LC) = #0                    ;reset circular addressing with AR0
   	bit(ST2,#ST2_AR1LC) = #0                    ;reset circular addressing with AR1
   	bit(ST2,#ST2_AR7LC) = #0                    ;reset circular addressing with AR7
   
;//---------------------------------------------------
;//  Context restoration
;//----------------------------------------------------

    .if __large_model
    XAR7 = popboth()
    XAR6 = popboth()
    .else
    AR6,AR7=pop()
    .endif
    XAR5 = popboth() ; 
    DR3,DR2 = pop() ;
   	return
  
    

