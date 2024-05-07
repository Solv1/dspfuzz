;****************************************************************
; Function:    IMG_corr_3x3
; Version:     0.0
; Processor:   C5510
; Description:  3x3 correlation
; hardware extension.
;
; Usage:    void IMG_corr_3x3(unsigned char *input, unsinged char *output,
;                             unsigned char *mask, int row, int column, int shift, int roundval); 
;Change history:
; 
;       VERSION   DATE      /    AUTHORS        COMMENT
;         1.0    05/15/02       CHENG PENG          original creation
; Benchmark 8.2x(row-2)x(column-2)+25 
; equivalent to c62 algorithm 6.2
; code size 165 words
; Copyright Texas instruments Inc, 2002
;****************************************************************
         
          .ARMS_off               ; 
          .CPL_on     
          .mmregs                 ;
          .global _IMG_corr_3x3
          .text 
         
         
_IMG_corr_3x3
       ;AR0: input AR1: output   AR2: mask, T0: row T1: column AR3: shift
       PSH T2,T3
       PSHBOTH XAR4
       MOV AR3,T3
       BSET CDPLC
       MOV		mmap(AR2), BSAC
       MOV      #9, BKC
       MOV      #0, CDP
        
      || SUB #3, T0, T0	
       MOV T0, BRC0 ; loop0 row-2
       SUB #2, T1, T0 ; T0=8
      
       MOV T1, AC0   ; T0=column   
       SFTL AC0,#1,AC2 ; AC2=20            ;      (3/1)
       SUB #2,AC2, AC3 ; AR3= #18
       
       MOV T1, AC0
       SFTL AC0,#-1,AC0
       SUB #3, AC0, T2 ; loop1 (column/2)-2
       
       MOV AR0, AR2
       ADD #1,AR2 ;AR0 and AR2 hold input pointers
       
       RPTB loop0
       MOV T2, BRC1
       MOV AC2, T1
       RPTBLOCAL loop1
       MOV AR4,AC0
       MOV AR4,AC1              
       MAC *AR0+, *CDP+, AC0
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
        SFTL AC0,T3,AC0
         MOV AC0, *AR1+
        ||SFTL AC1,T3,AC1    
loop1   MOV AC1, *AR1+
          MOV AC3, T1
          ||MOV AR4,AC0
          MOV AR4,AC1  
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
       MAC *(AR0+T0), *CDP+, AC0
         ::MAC *(AR2+T0), *CDP+, AC1 
       MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1
       MAC *AR0+, *CDP+, AC0
         ::MAC *AR2+, *CDP+, AC1  
       MAC *(AR0-T1), *CDP+, AC0
         ::MAC *(AR2-T1), *CDP+, AC1  
        SFTL AC0,T3,AC0
         MOV AC0, *AR1+
        ||SFTL AC1,T3,AC1    
loop0   MOV AC1, *AR1+  
       
       POPBOTH XAR4
       POP T2,T3
       BCLR CDPLC
       BSET	ARMS			        ;set ARMS              
       RETURN                       ;      (2/5)
      