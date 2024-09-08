;****************************************************************
; Function:    IMG_fdct_8x8
; Version:     1.1
; Processor:   C5510
; Description: 2-D Forward Discrete Cosine Transform (DCT) 
;                   for 8*8 image block using built-in hardware extensions.

;
; Usage:      void IMG_fdct_8x8(short * fdct_data, short * inter_buffer)
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
  .def _IMG_fdct_8x8
  .dp 0
;-----------     
_IMG_fdct_8x8:
;-----------
;//---------------------------------------------------
;// Context save 
;//----------------------------------------------------
     .if __large_model 
      pshboth(XAR5)
      pshboth(XAR6)
     .else
      push(AR5,AR6)
     .endif
      push(T3)
;//---------------------------------------------------
;// Get arguments and Initialization code
;//----------------------------------------------------
     XAR2=XAR0
      T3 = #3
      XAR3=XAR0
      
      AR3 = AR3 + #1
      T0 = #0x10
       XAR6=XAR0
       AC0 = *AR2 << T3
       T1 = #0x2f
       || repeat(#63)
       AC0 = *AR3+ << T3
       || *AR2+ = AC0
       XAR2 =XAR0
       AR2 = AR2 + #8   
       XAR3 =XAR1                      ; adress of column operation results
       XAR4 =XAR1
       AR4 = AR4 + #8
       XAR5 = XAR1
       AR5 = AR5 + #16
       
       AR1 = AR0
       
       BRC0 = #6                                ; 7 iterations in the next localrepeat
                                                ; DCT N=8
                                                ; load column 0
       AC0 = copr(#0x24,AC0,*(AR2+T0),*(AR1+T0)); begin 1
       AC1 = copr(#0x26,AC0,*(AR2+T0),*(AR1+T0)); begin 2
       AC0 = copr(#0x27,AC0,*(AR2+T0),*(AR1+T0)); begin 3
       AC1 = copr(#0x25,AC0,*(AR2-T1),*(AR1-T1)); begin 4
       localrepeat {
                                                ; load column i+1, exe column i
       AC0 = copr(#0x24,AC0,*(AR2+T0),*(AR1+T0)); cycle 1
       AC1 = copr(#0x20,AC0,AC1) , dbl(*AR3+)=AC0  ; cycle 2
       AC0 = copr(#0x21,AC1,AC0) , dbl(*AR3+)=AC1  ; cycle 3
       AC1 = copr(#0x33,AC0,AC1) , dbl(*AR3+)=AC0  ; cycle 4
       AC0 = copr(#0x32,AC1,AC0) , dbl(*AR3+)=AC1  ; cycle 5
       AC1 = copr(#0x26,AC0,*(AR2+T0),*(AR1+T0)); cycle 6
       AC0 = copr(#0x27,AC0,*(AR2+T0),*(AR1+T0)); cycle 7
       AC1 = copr(#0x25,AC0,*(AR2-T1),*(AR1-T1)); cycle 8
       }
                                                ; load line 0, exe column 7, store column 6
       AC0 = copr(#0x24,AC0,*(AR5+T0),*(AR4+T0)); cycle 1
       AC1 = copr(#0x20,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 2
       AC0 = copr(#0x21,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 3
       AC1 = copr(#0x33,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 4
       AC0 = copr(#0x32,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 5
       AC1 = copr(#0x26,AC0,*(AR5+T0),*(AR4+T0))  ; cycle 6
       BRC0 = #7                                ; 8 iterations of the following localrepeat
       AC0 = copr(#0x27,AC0,*(AR5+T0),*(AR4+T0))  ; cycle 7
       AC1 = copr(#0x25,AC0,*(AR5-T1),*(AR4-T1))  ; cycle 8
                                                ; special DCT mode
       AC1 = copr(#0x23,AC0,AC1)
                                                ; load line 1, exe line 0, store column 7
       AC0 = copr(#0x24,AC0,*(AR5+T0),*(AR4+T0)); cycle 1
       AC1 = copr(#0x20,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 2
       AC0 = copr(#0x21,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 3
       AC1 = copr(#0x33,AC0,AC1), dbl(*AR3+)=AC0  ; cycle 4
       AC0 = copr(#0x32,AC1,AC0), dbl(*AR3+)=AC1  ; cycle 5
       localrepeat {
                                                ; load line i+1, exe line i, store line i-1
                                                ; (i>0) or store
                                                ; column 7 (i=0)
       AC1 = copr(#0x26,AC0,*(AR5+T0),*(AR4+T0)); cycle 6
       AC0 = copr(#0x27,AC0,*(AR5+T0),*(AR4+T0)); cycle 7
       AC1 = copr(#0x22,AC0,*(AR5-T1),*(AR4-T1)); cycle 8
                                                ; load line i+2, exe line i+1, store line i
       AC0 = copr(#0x24,AC0,*(AR5+T0),*(AR4+T0)); cycle 1
       AC1 = copr(#0x20,AC0,AC1), dbl(*AR6+)=AC0   ; cycle 2
       AC0 = copr(#0x21,AC1,AC0), dbl(*AR6+)=AC1   ; cycle 3
       AC1 = copr(#0x33,AC0,AC1), dbl(*AR6+)=AC0   ; cycle 4
       AC0 = copr(#0x32,AC1,AC0), dbl(*AR6+)=AC1   ; cycle 5
       }
;//-----------------------------------------------------------------------------
;// Context restore
;//-----------------------------------------------------------------------------
        T3 = pop() 
       .if __large_model  
        XAR6=popboth()
        XAR5=popboth()
       .else  
        AR5,AR6=pop()
       .endif
       return
       

