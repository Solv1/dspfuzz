;****************************************************************
; Function:     IMG_jpeg_make_recip_tbl
; Version:     1.1
; Processor:   C5510
; Description: This function computes the reciprocal table 
;              of the quantization terms which will be used 
;              in JPEG_Quant.   
; Usage:       IMG_jpeg_make_tbl(short * quantize_tbl);
;Arguments:     
;           reciproQtable: It contains input quantization table
;                          and also contains the reciprocal table
;                          at the end of the function.           	
; Change history:
; 
;       VERSION   DATE     /    AUTHORS        COMMENT
;         1.1    08/08/01  /    Cheng          Seperation of the reciprocal transform
;                                              of Quantization table from JPEG_init
;         1.0    02/23/01  /    PERESSE        migration and optimization on C5510
;         0.0    07/10/99  /    YOO            original created on C549
;
;Copyright Texas instruments Inc, 2001
;****************************************************************
 
          .def _IMG_jpeg_make_recip_tbl
;p_interm  .set 0x0000
_IMG_jpeg_make_recip_tbl:   
        bit(ST1, #ST1_SXMD) = #0
       BRC0 = #63
       localrepeat {
       AC0 = *AR0 * #16
       AC0 = AC0 + #8                           ; (YYOO)
       *AR1= LO(AC0 << #-4)
       AC0 = #0x8000                            ; 2^15
       repeat(#15)
       subc(*AR1, AC0, AC0)                ; 2^15/Q
       *AR0+ = AC0
       }
       bit(ST1, #ST1_SXMD) = #1
       return