;****************************************************************
; Function:    IMG_jpeg_quantize
; Version:     1.1
; Processor:   C5510
; Description: This function computes the quantization 
;              step using a reciprocal table of the 
;              quantization terms which is computed 
;              in IMG_jpeg_make_recip_tbl. 
; Usage:       IMG_jpeg_quantize(short * quantize_input,short * zigzag, short * recip_tbl,int * quantize_output);
; Arguments:	
;	  inputBlock: Input block of 8*8
;         zigzag: zigzag table
;      recip_tbl: reciprocal table of quantization terms
;        Qoutput: Quantization result of the input block
 ;Change history:
;        VERSION   DATE     /    AUTHORS        COMMENT
;         1.1    08/08/01   /    CHENG         Modified to C-callable function
;         1.0    02/23/01   /    PERESSE        Creation
;Copyright Texas instruments Inc, 2001
;****************************************************************
 

          .def _IMG_jpeg_quantize
p_interm  .set 0x0000
;*******
_IMG_jpeg_quantize:
;*******
; ARO holds input
; AR1 holds zigzag
; AR2 hold recip_tbl
; AR3 hold output
   
      .if __large_model 
         pshboth(XAR5)
         pshboth(XAR7)
      .else
         push(AR5,AR7)
      .endif
       
       SP =SP +#-1
       bit(ST1,#ST1_FRCT)= #1
       bit(ST1,#ST1_M40)= #1
       bit(ST1,#ST1_SATD) =#1
        
        AR4=@p_interm
       *AR4=#0
       
       BRC0 = #31
       AC0 = *AR4
       AR7 = AR3 + *AR1+
       T0 = *AR2+
       localrepeat {                            ; performs the quantization
       AR5 = AR3 + *AR1+                              
       AC0 = rnd(AC0 + (T0 * *AR0+)),
       AC1 = *AR4 << #16
       *AR7 = HI(AC0)
       || T0 = *AR2+ 
       AR7= AR3+*AR1+
       AC1 = rnd(AC1 + (T0 * *AR0+)),
       AC0 = *AR4 << #16
       *AR5 = HI(AC1)
       || T0 = *AR2+
       }
       bit(ST1,#ST1_FRCT)= #0
       bit(ST1,#ST1_M40)= #0
       bit(ST1,#ST1_SATD) =#0
       SP =SP +#1
      ; AR5,AR7 = pop()
        .if __large_model  
        XAR7=popboth()
        XAR5=popboth()
       .else  
        AR5,AR7=pop()
       .endif
       return
  
