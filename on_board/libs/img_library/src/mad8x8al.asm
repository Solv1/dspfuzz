;*******************************************************************************
; Function:    IMG_mad_8x8
; Version:     2.2
; Processor:   C5510
; Description:  Calculate 8x8 Minimum Absolute Difference
; void IMG_mad_8x8(unsigned short *ref_data, unsigned short* src_data, 
;                  int pitch, int sx, int sy, unsigned int *match);
; Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         2.2    02/28/03       CHENG PENG          original creation
; Benchmark 38.5 x sx x sy + 95 cycles
; code size 270 words
; Copyright Texas instruments Inc, 2003
;*******************************************************************************

    
   .def _IMG_mad_8x8
   .text


step_c             .set 0x0000   ; local variable to store the address of search_window
image_pitch        .set 0x0001
image_double_pitch .set 0x0002
jump               .set 0x0003
base               .set 0x0004
d1_loop            .set 0x0005
start_point_odd    .set 0x0006
start_point_even   .set 0x0007


_IMG_mad_8x8:
     .if __large_model                
       pshboth(XAR7)
       pshboth(XAR6)
       pshboth(XAR5)
     .else
       push(AR6,AR7)
       push(AR5)
      .endif 
       push(T3,T2)
       push(@ST1_L) || mmap()
       push(@ST2_L) || mmap()
       SP=SP + #-8 
	   bit(ST1,#ST1_SXMD)=#0
	   @base=AR0
	   @image_double_pitch=T0
	   @step_c=#0xc
    || AC0=T0
       AC0=AC0-#0x7
    || T0=T0>>1
       @jump=AC0
       
       XAR6=XAR1 ; AR6 holds the address of src_data
       XAR7=XAR3
       @image_pitch=T0
       XAR3=XAR0 ; AR3 holds the address of ref_data  
       AC0=AR2 ; AC0=sy
    || AC3=#0xFFFF;AC3 hold mad and is initialized
   
       repeat(#(16-1))
       subc(@step_c,AC0,AC0)
       
       T3=AC0; T3 is how many 12 set per row
    || @step_c=#0x6
       AC0=AC0 <<#16
       AC1=AC0*T1
       T1=AC1+#-1
       BRC0=T1
       T1=#3
    || AC1=AC1 << #16
       AC1=AC1*T1
       AC1=AC1+#-1
       T1=0 ; T1 is row index  
       @d1_loop=LO(AC1 <<#0) 
    || T2=0; T2 is column index 
  
  blockrepeat  {  
     XCDP=XAR6 ; src_data address
  || BRC1=#6 
     AC0=@step_c*T2
     AC1=T1*@image_pitch  
     AC1=AC1+AC0
  || T0=@jump  
     AR0=AC1+@base   
     AR1=AR0+@image_pitch ; + PITCH
     XAR3=XAR0   
     BRC1 = #2		; repeat 3 times			
			AC0,AC1 = copr(#0x5a,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x43,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
            AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
       		localrepeat {
			repeat(#0x1)		; repeat 2 times
            AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*(AR0+DR0),*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x1)		; repeat 2 times
            AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*(AR1+DR0),coef(*CDP+))
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
            repeat(#0x3)		; repeat 4 times
            AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			repeat(#0x1)		; repeat 2 times
            AC0,AC1 = copr(#0x4d,AC0,AC1,*AR0,*AR1+,coef(*CDP))
            AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
            AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
         	AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))    
		    AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))    
      T0=#4
      @AC2_L = LO(AC0 <<#0)      ;get first AD result from AC0
      ||mmap()
      AC2 = AC2 & #0x0000ffff 
      XAR4=XAR3
      AR4=AR4-@base 
      AR4=AR4<<#1   
     
     
      AC3=min(AC2,AC3) ; update mad
      if (!CARRY) execute(D_unit)
      || XAR5 =XAR4  ; update the location of the best-match block
      @AC2_L = HI(AC0 <<#0)                 ;get second AD result from AC0
      ||mmap()
      AC2 = AC2 & #0x0000ffff 
      || AR4=AR4+T0 
      AC3=min(AC2,AC3)
     if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4
     @AC2_L = LO(AC1 <<#0)                 ;get third AD result from AC0
     ||mmap()
     AC2 = AC2 & #0x0000ffff ; Validation
     || AR4=AR4+T0
     AC3=min(AC2,AC3)
     if (!CARRY) execute(D_unit)
          ||XAR5 =XAR4                
     T2=T2+#1
     AC0=T2
     AC0=AC0-T3
     
     if (AC0 == 0) execute(AD_unit)
      T2=#0
     if (AC0 ==0) execute(AD_unit)
     T1=T1+1
    }
    AC0=T3
   AC0=AC0 << #16
   AC0=AC0*#3 
   T3=AC0
    BRC0=@d1_loop
 || T1=0; T1 is row index
   @step_c=#0x2
  T2=0 ; T2 is colulmn index 
  T0=#1
 blockrepeat  {  
      XCDP=XAR6 ; src_data address
       BRC1=#2 
   || AC0=@step_c*T2
      AC1=T1*@image_pitch  
      AC1=AC1+AC0
      AR0=AC1+@base   
      XAR3=XAR0   
      @start_point_odd=AR0
      XAR1=XAR0
      
      AR1=AR0
     AR1=AR1+@image_pitch 
     
      @start_point_even=AR1    
       AC0,AC1 = copr(#0x54,AC0,AC1,*AR0+,*AR1,coef(*CDP))
                        AC0,AC1 = copr(#0x40,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x47,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
                        AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			blockrepeat {
			repeat(#0x1)		; repeat 5 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AR0=@start_point_odd
			AR0=AR0+@image_double_pitch
		
			@start_point_odd=AR0
			repeat(#01)
			AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
		
			repeat(#0x1)		; repeat 5 times
              AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			AR1=@start_point_even
			AR1=AR1+@image_double_pitch
			@start_point_even=AR1
	
			repeat(#01)
			AC0,AC1 = copr(#0x4f,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
			}
                        repeat(#0x3)		; repeat 8 times
                        AC0,AC1 = copr(#0x4e,AC0,AC1,*AR0+,*AR1+,coef(*CDP+))
                        AC0,AC1 = copr(#0x49,AC0,AC1,*AR0,*AR1+,coef(*CDP))
			AC0,AC1 = copr(#0x40,AC0,AC1,*AR0,*AR1,coef(*CDP))
                
            @AC2_L = LO(AC0 <<#0)                 ;get first AD
            ||mmap()
            AC2 = AC2 & #0x0000ffff 
            XAR4=XAR3
            AR4=AR4-@base 
            AR4=AR4<<#1 ; the location in the search window
            AC3=min(AC2,AC3) 
          ||AR4=AR4+#1
            if (!CARRY) execute(D_unit)
            ||XAR5 =XAR4
    
            @AC2_L = HI(AC0 <<#0)                 ;get second AD
            ||mmap()
            AC2 = AC2 & #0x0000ffff  ||AR4=AR4+T0
            AC3=min(AC2,AC3)
            if (!CARRY) execute(D_unit)
            ||XAR5 =XAR4
  
            @AC2_L = LO(AC1 <<#0)                 ;get third AD
            AC2 = AC2 & #0x0000ffff ||AR4=AR4+T0
            AC3=min(AC2,AC3) 
            if (!CARRY) execute(D_unit)
            ||XAR5 =XAR4
            T2=T2+#1
            AC0=T2
            AC0=AC0-T3
            if (AC0 == 0) execute(AD_unit)
             T2=#0
            if (AC0 ==0) execute(AD_unit)
             T1=T1+1
   }

  AC0=AR5 ;turn one-dime to two-dim by integer division
 
  bit(ST1,#ST1_SATD)= #1
 
 repeat(#(16-1))
 subc(@image_double_pitch,AC0,AC0)
 

 @AC1_L = LO(AC0 <<#0) ; hold row positoin      
 ||mmap()
 @AC2_L = HI(AC0 <<#0)  ; hold column posion     
 ||mmap()
 AC1=AC1<<#8 
 AC1=AC1+AC2 ; package row and column positon together
 *AR7=AC1    ;store row position and column positon
 ||AR7=AR7+#1 
 *AR7=AC3 ; store corresponding mad
   SP=SP + #8
  @ST2_L = pop() || mmap()
  @ST1_L = pop() || mmap()
     T3,T2=pop()
    .if __large_model 
       XAR5=popboth()
       XAR6=popboth()
       XAR7=popboth()
   .else
       AR5=pop()
       AR6,AR7=pop()
   .endif
   
  return
