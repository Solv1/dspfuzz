;*******************************************************************************
; Function:    IMG_ycbcr422_rgb565
; Version:     2.2
; Processor:   C5510
; Description:  Color conversion YCbCr422->RGB565
; 
;
; void IMG_ycbcr422_rgb565(short *coeff,short *y_data,short *cb_data,
;                        short *cr_data, short *rgb_data, short number_pixels); 
;
; Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         1.0    02/28/03       CHENG PENG          original creation
; Benchmark 12 x number_pixels+47 cycles
; code size 111 words
; Copyright Texas instruments Inc, 2003
;*******************************************************************************

             .mmregs
             .sect "offset_buffer"
offset_buffer .int 0, 0, 0
           .def _IMG_ycbcr422_rgb565
	       .text  

_IMG_ycbcr422_rgb565:
   
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
   
    bit(ST1,#ST1_CPL) = #0 
	bit(ST2, #ST2_RDM) = #1 	  
	|| CDP = #0

	bit(ST2, #ST2_CDPLC) = #1	  
	|| BK47 = #6			      	
	bit(ST2, #ST2_AR5LC) = #1	  
	|| BKC = #7	
	bit(ST1, #ST1_SXMD) = #1
				  
	BOFC= @AR0_L               
    ||mmap() 
 
	
	
 
    T2 = #0xFF
 	||AC0=T0 ; size
	AC0=AC0 >> #1
	||AR0=#offset_buffer
	BOF45=@AR0_L
	||mmap()
	AC0=AC0-#1
	||XAR7=XAR1

    AR5 = #0
    ||T0=AC0
    BRC0=T0
    ||AC0 = *CDP+ << #4    		 
	 AR7=AR7+#1                    
	 ||AC0 += *CDP+ <<#7 

	AC1 = *CDP+ <<#4
	
	AC1 += *CDP+ << #7 
 
	AC1 +=*CDP+ << #7 
	
	AC0=-AC0
	AC1=-AC1
	||dbl(*AR5+)=AC0 
    dbl(*AR5+)=AC1
    ||AC1=AC0
 	AC2 = *CDP+ << #4 
	AC2 += *CDP+ << #7
	AC2=-AC2
   
   	dbl(*AR5+)=AC2
	 AC0=dbl(*AR5+)  
     T0=#-5
   Blockrepeat{
   
      AC1=AC0
      AC0  = AC0 + (*AR1 * coef(*CDP+)),
      AC1 =  AC1 + (*AR7 * coef(*CDP+))
      AC0  = AC0 + (*AR3 * coef(*CDP+)),
      AC1 =  AC1 +  (*AR3 * coef(*CDP+))
      
     
      AC0= AC0 <<< T0 
      ||AC2= dbl(*AR5)   
      AC0= AC0 & 0xF800
      AC1= AC1 <<< T0 
      || AC3=dbl(*AR5+)  
      AC1= AC1 & 0xF800
       
      AC2 = AC2 + (*AR1 * coef(*CDP+)),
      AC3 = AC3 + (*AR7 * coef(*CDP+))
      AC2 = AC2 + (*AR2 * coef(*CDP+)),      
      AC3 = AC3 + (*AR2 * coef(*CDP+))
      AC2 = AC2 + (*AR3+ * coef(*CDP+)),
      AC3 = AC3 + (*AR3+ * coef(*CDP+))
      
       AC0= AC0 |(AC2 <<< #-10) ;-11
       ||AC2= dbl(*AR5) 
       AC1=AC1 |(AC3 <<< #-10) 
       ||AC3= dbl(*AR5+) 
       AC0=AC0 & 0xFFE0
       AC1=AC1 & 0xFFE0
       
     
	  AC2  = AC2 + (*AR1 * coef(*CDP+)),
      AC3 =  AC3 + (*AR7 * coef(*CDP+))
      AC2  = AC2 + (*AR2+ * coef(*CDP+)),
      AC3 =  AC3 +  (*AR2+ * coef(*CDP+))
      
      AC0 = AC0 | (AC2 <<< #-16) ;-17
      ||mar(AR1+#02)
	  AC1 = AC1 | (AC3 <<< #-16) 
	  ||mar(AR7+#02) 
	  *AR4+ =pair(lo(AC0))
	  ||AC0=dbl(*AR5+)
	}
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

