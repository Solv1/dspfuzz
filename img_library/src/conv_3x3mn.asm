;****************************************************************
; Function:    IMG_conv_3x3
; Version:     0.0
; Processor:   C5510
; Description:  3x3 convolution
; hardware extension.
;
; void IMG_conv_3x3(unsigned char *input, unsigned char *output,
;                   unsigned char *mask, int column, int shift); 
 ;Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         1.0    05/15/02       CHENG PENG          original creation
; Benchmark 6x(column-2)+16
; code size 89 words
; Copyright Texas instruments Inc, 2002
;****************************************************************
         
     
          .ARMS_off               ; 
          .CPL_on     
          .mmregs                 ;
          .global _IMG_conv_3x3
          .text 
         
         
_IMG_conv_3x3
       ;AR0: input AR1: output   AR2: mask, T0: column
       BSET CDPLC
       MOV		mmap(AR2), BSAC
       MOV      #9, BKC
       MOV      #0,CDP
       || MOV T1, T2
       MOV AR0, AR2
       ADD #1,AR2 ;AR0 and AR2 hold input pointers
      || MOV T0, AC0   ; T0=column   
       SFTL AC0,#-1,AC0            ;      (3/1)
       SUB #1,AC0,T1
       MOV T1,BRC0  
       ||MOV T0, AC0
       SFTL AC0,#1,AC0
       || SUB #2,T0 
       MOV AC0,T1
                    ;      (2/1)
       RPTBLOCAL loop0              ;      (2/1)
       MPY *AR0+, *CDP+, AC0
        ::MPY *AR2+, *CDP+, AC1
       MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1
       MAC *(AR0+T0), *CDP+, AC0
         ::MAC *(AR2+T0), *CDP+, AC1 
       MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1
       MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1
       MAC *(AR0+T0), *CDP+, AC0
         ::MAC *(AR2+T0), *CDP+, AC1 
      MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1
      MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1  
       MAC *(AR0-T1), *CDP+, AC0
         ::MAC *(AR2-T1), *CDP+, AC1     
        SFTL AC0,T2,AC0
         MOV AC0, *AR1+
        ||SFTL AC1,T2,AC1    
loop0   MOV AC1, *AR1+

       BCLR CDPLC
       BSET	ARMS			        ;set ARMS              
       RETURN                       ;      (2/5)
      