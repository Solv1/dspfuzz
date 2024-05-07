 ;****************************************************************
; Function:    IMG_scale_by_2
; Version:     0.0
; Processor:   C5510
; Description:  Image up-scale by a factor of 2
; hardware extension.
;
; Usage:    void IMG_scale_by_2(unsinged char *org_image, unsinged char *inter_image
; , int row, int column);
;Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         1.0    05/15/02       CHENG PENG          original creation
; Benchmark 0.27x(2xrow)x(2xcolumn)+23
; code size 216 words
; Copyright Texas instruments Inc, 2002
;****************************************************************
      
 
    .def _IMG_scale_by_2
 
  .text

_IMG_scale_by_2:
   
    bit(ST1,#ST1_CPL) = #0
    bit(ST1,#ST1_SATD) = #1   
    bit(ST2,#ST2_ARMS) = #0 
    push(T2,T3) 
  || XAR2=XAR0
   XAR3=XAR0
   AC0 = T1
   ||T2=#-1;
   AC0=AC0 << T2
   AC2=AC0 << T2    
   ||AR3=AR3+AC0
    ;Destination
	XAR0 = XAR1 
	XAR1=XAR0
	AC3=XAR0                
	AR1 = AR1 + T1               
    ||AC0 = #0x31 ;AC0 = #0x35      
    T1 = T1+#2
    
    BRC0 = #2
         AC1 = copr (#0x00 , AC0, dbl(*AR2));
kernel_begin:		
				localrepeat{
			AC1 = copr (#0x12, AC0, dbl(*AR2+));
			AC1 = copr (#0x14, AC0, dbl(*AR3+));
			AC1 = copr (#0x15, AC0, AC1);
			AC1 = copr (#0x13, AC0, AC1);
			}
			
            T2=T0 + #-2
            BRC0 = T2		; repeat 62 times
			T2=AC2+#-2
			localrepeat {
            
			;BRC1=T2
			 
			BRC1=T2
			localrepeat{
			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;
			}
			 
            AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*(AR0+T1))=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*(AR1+T1))=AC1;
            } 
            T2=AC2+#-4
            
            BRC0=T2
			localrepeat{
			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;
			}
			BRC0=#2
			localrepeat{
			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;
			 }
kernel_end:            
           XAR0=AC3
           T1=T1+#-4
           AR0=AR0+T1
           AR1=AR0+#-2
          T1=T1+#2 
          AC0=T1
          AC0=AC0 << #1
          T0=AC0
          CSR=T0
       
        repeat(CSR)
        dbl(*(AR0+T1))=dbl(*(AR1+T1))
           
           ;dbl(*(AR0+T0))=dbl(*(AR1+T0))
           
		
			 	 
    T2,T3=pop();
    ;;;;;;;;;;;;;;;;;
    bit(ST1,#ST1_CPL) = #1
    bit(ST1,#ST1_SATD) = #0   
    bit(ST2,#ST2_ARMS) = #1 
    return
