;****************************************************************
; Function:    IMG_dequantize_8x8
; Version:     0.1
; Processor:   C5510
; Description: 	dequantization without zigzag source addressing,
;	            i.e., simply pointwise multiplication of two arrays at
;	            qtab_p and src_p. (NOTE) it assumes that source data is
;               already unzigzag'd at src_p!!! 
; Usage:         IMG_dequantize_8x8(int * quantize_tbl,int * deq_data);
; Arguments:
;	      Qtable: Quantization table
; reconstruction: It contains the input quantized block
;                 and contains the dequantized block at
;                 the end of function.
;Change history:
;        VERSION   DATE     /    AUTHORS        COMMENT
;         0.1     08/08/01  /    Cheng         Optimization    
;         0.0     ?/?/00    /      Yoo           Creation
;Copyright Texas instruments Inc, 2001
;****************************************************************
  

     .def _IMG_dequantize_8x8
 
;**********
_IMG_dequantize_8x8:
;**********

    XAR2 = XAR1
	BRC0 = #63
	mar(T0 = #16)
	|| localrepeat {
	AC0 = *AR0+ * *AR2+
	*AR1+ = HI(AC0 << T0)
	}
	return
