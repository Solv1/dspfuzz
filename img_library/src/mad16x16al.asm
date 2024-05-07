;****************************************************************
; Function:    IMG_mad_16x16_4step
; Version:     0.0
; Processor:   C5510
; Description:  Motion estimation by 4-step searching using the built-in
; hardware extension.
;
; Usage:    void IMG_mad_16x16_4step(short *src_data, short * search_window, 
;                                    unsigned int *match)
 
;Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         1.1    10/10/01       CHENG          original created based on video macros 
; Copyright Texas instruments Inc, 2001
;****************************************************************

    .include "macros_hwa_me.inc"
    .sect "index_block"
block_index	   .int -196,192,192,-98,96,96,-49,48,48,-25,24,24     
     
    
   .def _IMG_mad_16x16_4step
   .text


searchBase   .set 0x0000               ; local variable to store the address of search_window
_IMG_mad_16x16_4step:
     .if __large_model                
       pshboth(XAR7)
       pshboth(XAR6)
       pshboth(XAR5)
     .else
       push(AR6,AR7)
       push(AR5)
      .endif 
      push(@ST1_L) || mmap()
      push(@ST2_L) || mmap()	
       SP=SP + #-1
      

       bit(ST1,#ST1_CPL)= #0
       bit(ST2,#ST2_ARMS) = #0 
	   bit(ST1,#ST1_SXMD)=#0
       XAR7=XAR2
       @searchBase=AR1               ; keep the addresses of search_window and match
       XAR4=XAR1 ; cheng   
       XAR6=XAR0 
       AC3=#0xFFFF ; AR6 holds the address of src_data and AC3 hold mad and is initialized
       XAR3=XAR1 
       AR2=#block_index    ; AR3 holds the start address of search_window
	  ; searching distance = 8
	   BRC0=#2 || T1=#4  ; for given distance d, we need calculate upper, midle and low ADs (9 ADs)
                         ; T1=distance/2 because of pixel package.
       AR3=AR3+#392  ; the start address of the center 16x16 block in search_window    
 blockrepeat  {  
      ;init.
       T0 = #33 
       XCDP=XAR6 ; src_data address
       BRC1=#6  || AR3=AR3+*AR2+ ; the star address of upper, middle, low blocks.
       XAR0=XAR3 ; search_window address
      ; test 
      ;AR0=#0x80
      ;AR0=AR0+#0x184 ; test code for d=8
        XAR1=XAR0
        AR1=AR1+#24   
      _Hwa_ME_8 
      ; if ARO=search_window+0x184, AC0=1535 1C3B AC1=000017E9
      ;call _store
      
      @AC2_L = LO(AC0 <<#0)                 ;get first AD result from AC0
      ||mmap()
      AC2 = AC2 & #0x0000ffff ; validataion
       XAR4=XAR3
       ;XAR5=XAR4 
      AC3=min(AC2,AC3) ; update mad
      if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4  ; update the location of the best-match block
      @AC2_L = HI(AC0 <<#0)                 ;get second AD result from AC0
      ||mmap()
      AC2 = AC2 & #0x0000ffff 
      || AR4=AR4+T1 
      AC3=min(AC2,AC3)
     if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
     @AC2_L = LO(AC1 <<#0)                 ;get third AD result from AC0
     ||mmap()
     AC2 = AC2 & #0x0000ffff ; Validation
     || AR4=AR4+T1
     AC3=min(AC2,AC3)
     if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4                
     }
   ; searching distance 4 T=4/2=2
     BRC0=#2 || T1=#2 
     XAR3=XAR5 
     AC3=#0xFFFF 
 blockrepeat  {  
   ;init
    T0 = #33 
     XCDP=XAR6 
    BRC1=#6  || AR3=AR3+*AR2+
    XAR0=XAR3 
  ; test 
  ;AR0=#0x80
  ;AR0=AR0+#0x186 ; test code for d=4
  XAR1=XAR0
  AR1=AR1+#24 
  _HWa_ME_4 
 ; if ARO=search_window+0x186, AC0=1535 170C AC1=000017D3
   
  @AC2_L = LO(AC0 <<#0)                 ;get first AD
  ||mmap()
  AC2 = AC2 & #0x0000ffff 
   XAR4=XAR3
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  @AC2_L = HI(AC0 <<#0)                 ;get second AD
  ||mmap()
  AC2 = AC2 & #0x0000ffff 
  || AR4=AR4+T1 
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  @AC2_L = LO(AC1 <<#0)                 ;get third AD  ||mmap()
  AC2 = AC2 & #0x0000ffff 
  || AR4=AR4+T1
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4                
  }
   ; searching distance =2 T1=2/2=1
   BRC0=#2 || T1=#1  
   XAR3=XAR5  
   AC3=#0xFFFF   
 blockrepeat  {  
  ;init
  T0 = #33 
  XCDP=XAR6 
  BRC1=#6  || AR3=AR3+*AR2+
  XAR0=XAR3 
  ;AR0=#0x80
  ;AR0=AR0+#0x1E5 ; test code for d=2
  XAR1=XAR0
  AR1=AR1+#24 
  _HWa_ME_2
 ; if ARO=search_window+0x1E5, AC0=126A 0FE6 AC1=00001736
      
  @AC2_L = LO(AC0 <<#0)                 ;get first AD
  ||mmap()
  AC2 = AC2 & #0x0000ffff 
  XAR4=XAR3
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  @AC2_L = HI(AC0 <<#0)                 ;get second AD
  ||mmap()
  AC2 = AC2 & #0x0000ffff 
  || AR4=AR4+T1 
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  @AC2_L = LO(AC1 <<#0)                 ;get third AD ||mmap()
  AC2 = AC2 & #0x0000ffff 
  || AR4=AR4+T1
  AC3=min(AC2,AC3)
  if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4                
       
  }
  
  
  ;;;;;;; distance =1
    BRC0=#2 || T1=#1 
    XAR3=XAR5  
    AC3=#0xFFFF   
   
   
   blockrepeat  {  
  ; init
    T0 = #33 
    XCDP=XAR6 
    BRC1=#6  || AR3=AR3+*AR2+
    XAR0=XAR3  
    
    ;test  
    ;AR0=#0x80
    ;AR0=AR0+#0x1B4 ; test code for d=1
    XAR1=XAR0
    AR1=AR1+#24 
    
   _HWa_ME_1
    ; if ARO=search_window+0x1B4, AC0=0CF6 0CD2 170C AC1=00000D38
   
  
   @AC2_L = LO(AC0 <<#0)                 ;get first AD
   ||mmap()
   AC2 = AC2 & #0x0000ffff 
    XAR4=XAR3
   AR4=AR4-@searchBase  
   AR4=AR4<<#1 ; the location in the search window
   AC3=min(AC2,AC3) 
   ||AR4=AR4+#1
   if (!CARRY) execute(D_unit)
       ||XAR5 =XAR4
    
   @AC2_L = HI(AC0 <<#0)                 ;get second AD
   ||mmap()
   AC2 = AC2 & #0x0000ffff  ||AR4=AR4+T1
   AC3=min(AC2,AC3)
   if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  
   @AC2_L = LO(AC1 <<#0)                 ;get third AD
   AC2 = AC2 & #0x0000ffff ||AR4=AR4+T1
   AC3=min(AC2,AC3) 
   if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  }
  
   
  
 AC0=AR5 || AR4=#48 ; turn one-dime to two-dim by integer division
 
  bit(ST1,#ST1_SATD)= #1
 AC0=AR5
 || *AR7=#48
 repeat(#(16-1))
 subc(*AR7,AC0,AC0)
 

 @AC1_L = LO(AC0 <<#0) ; hold row positoin      
 ||mmap()
 @AC2_L = HI(AC0 <<#0)  ; hold column posion     
 ||mmap()
 AC1=AC1<<#8 
 AC1=AC1+AC2 ; package row and column positon together
 *AR7=AC1    ;store row position and column positon
 ||AR7=AR7+#1 
 *AR7=AC3 ; store corresponding mad
   SP=SP + #1
  @ST2_L = pop() || mmap()
  @ST1_L = pop() || mmap()
    .if __large_model 
       XAR5=popboth()
       XAR6=popboth()
       XAR7=popboth()
   .else
       AR5=pop()
       AR6,AR7=pop()
   .endif
   
  return
