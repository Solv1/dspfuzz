;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:10 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("src/csl_rtc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17523d8M00P 
	.sect	".text"

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("rtcDivFun")
	.dwattr $C$DW$1, DW_AT_low_pc(_rtcDivFun)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_rtcDivFun")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x143)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_rtc.h",line 326,column 1,is_stmt,address _rtcDivFun

	.dwfde $C$DW$CIE, _rtcDivFun
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dividend")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_dividend")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("divisor")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_divisor")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: rtcDivFun                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtcDivFun:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("dividend")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_dividend")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("divisor")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_divisor")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("quoitient")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_quoitient")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T1, *SP(#1) ; |326| 
        MOV T0, *SP(#0) ; |326| 
	.dwpsn	file "./inc/csl_rtc.h",line 329,column 5,is_stmt
        MOV #0, *SP(#2) ; |329| 
	.dwpsn	file "./inc/csl_rtc.h",line 330,column 12,is_stmt
        MOV *SP(#1), AR1 ; |330| 
        MOV *SP(#0), AR2 ; |330| 
        CMPU AR2 < AR1, TC1 ; |330| 
        BCC $C$L2,TC1 ; |330| 
                                        ; branchcc occurs ; |330| 
$C$L1:    
$C$DW$L$_rtcDivFun$2$B:
	.dwpsn	file "./inc/csl_rtc.h",line 332,column 9,is_stmt
        ADD #1, *SP(#2) ; |332| 
	.dwpsn	file "./inc/csl_rtc.h",line 333,column 9,is_stmt
        MOV *SP(#0), AC0 ; |333| 
        SUB uns(*SP(#1)), AC0, AC0 ; |333| 
        MOV AC0, *SP(#0) ; |333| 
	.dwpsn	file "./inc/csl_rtc.h",line 330,column 12,is_stmt

        MOV *SP(#1), AR1 ; |330| 
||      MOV AC0, AR2 ; |330| 

        CMPU AR2 >= AR1, TC1 ; |330| 
        BCC $C$L1,TC1 ; |330| 
                                        ; branchcc occurs ; |330| 
$C$DW$L$_rtcDivFun$2$E:
$C$L2:    
	.dwpsn	file "./inc/csl_rtc.h",line 335,column 5,is_stmt
        MOV *SP(#2), T0 ; |335| 
	.dwpsn	file "./inc/csl_rtc.h",line 336,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$8	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$8, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L1:1:1714639450")
	.dwattr $C$DW$8, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x14a)
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x14e)
$C$DW$9	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$9, DW_AT_low_pc($C$DW$L$_rtcDivFun$2$B)
	.dwattr $C$DW$9, DW_AT_high_pc($C$DW$L$_rtcDivFun$2$E)
	.dwendtag $C$DW$8

	.dwattr $C$DW$1, DW_AT_TI_end_file("./inc/csl_rtc.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x150)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("rtcModuloDivFun")
	.dwattr $C$DW$10, DW_AT_low_pc(_rtcModuloDivFun)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_rtcModuloDivFun")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./inc/csl_rtc.h",line 368,column 1,is_stmt,address _rtcModuloDivFun

	.dwfde $C$DW$CIE, _rtcModuloDivFun
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dividend")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_dividend")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("divisor")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_divisor")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: rtcModuloDivFun                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtcModuloDivFun:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("dividend")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_dividend")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("divisor")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_divisor")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T1, *SP(#1) ; |368| 
        MOV T0, *SP(#0) ; |368| 
	.dwpsn	file "./inc/csl_rtc.h",line 369,column 12,is_stmt

        MOV *SP(#1), AR1 ; |369| 
||      MOV T0, AR2 ; |369| 

        CMPU AR2 < AR1, TC1 ; |369| 
        BCC $C$L4,TC1 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$L3:    
$C$DW$L$_rtcModuloDivFun$2$B:
	.dwpsn	file "./inc/csl_rtc.h",line 371,column 9,is_stmt
        MOV AR2, AC0
        SUB uns(*SP(#1)), AC0, AC0 ; |371| 
        MOV AC0, *SP(#0) ; |371| 
	.dwpsn	file "./inc/csl_rtc.h",line 369,column 12,is_stmt

        MOV AC0, AR2 ; |369| 
||      MOV *SP(#1), AR1 ; |369| 

        CMPU AR2 >= AR1, TC1 ; |369| 
        BCC $C$L3,TC1 ; |369| 
                                        ; branchcc occurs ; |369| 
$C$DW$L$_rtcModuloDivFun$2$E:
$C$L4:    
	.dwpsn	file "./inc/csl_rtc.h",line 373,column 5,is_stmt
        MOV AR2, T0
	.dwpsn	file "./inc/csl_rtc.h",line 374,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$16	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$16, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L3:1:1714639450")
	.dwattr $C$DW$16, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x171)
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x174)
$C$DW$17	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$17, DW_AT_low_pc($C$DW$L$_rtcModuloDivFun$2$B)
	.dwattr $C$DW$17, DW_AT_high_pc($C$DW$L$_rtcModuloDivFun$2$E)
	.dwendtag $C$DW$16

	.dwattr $C$DW$10, DW_AT_TI_end_file("./inc/csl_rtc.h")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x176)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("rtc_pow")
	.dwattr $C$DW$18, DW_AT_low_pc(_rtc_pow)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_rtc_pow")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x199)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_rtc.h",line 412,column 1,is_stmt,address _rtc_pow

	.dwfde $C$DW$CIE, _rtc_pow
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("var")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_var")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg12]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pow")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_pow")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: rtc_pow                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_rtc_pow:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("var")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_var")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("pow")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_pow")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#1) ; |412| 
        MOV T0, *SP(#0) ; |412| 
	.dwpsn	file "./inc/csl_rtc.h",line 416,column 5,is_stmt
        MOV #1, *SP(#2) ; |416| 
	.dwpsn	file "./inc/csl_rtc.h",line 417,column 10,is_stmt
        MOV #0, *SP(#3) ; |417| 
	.dwpsn	file "./inc/csl_rtc.h",line 417,column 23,is_stmt
        MOV *SP(#1), AR1 ; |417| 
        MOV *SP(#3), AR2 ; |417| 
        CMPU AR2 >= AR1, TC1 ; |417| 
        BCC $C$L6,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$L5:    
$C$DW$L$_rtc_pow$2$B:
	.dwpsn	file "./inc/csl_rtc.h",line 419,column 9,is_stmt
        MOV *SP(#0), T1 ; |419| 
        MPYM *SP(#2), T1, AC0 ; |419| 
        MOV AC0, *SP(#2) ; |419| 
	.dwpsn	file "./inc/csl_rtc.h",line 417,column 37,is_stmt
        ADD #1, *SP(#3) ; |417| 
	.dwpsn	file "./inc/csl_rtc.h",line 417,column 23,is_stmt
        MOV *SP(#1), AR1 ; |417| 
        MOV *SP(#3), AR2 ; |417| 
        CMPU AR2 < AR1, TC1 ; |417| 
        BCC $C$L5,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$DW$L$_rtc_pow$2$E:
$C$L6:    
	.dwpsn	file "./inc/csl_rtc.h",line 421,column 5,is_stmt
        MOV *SP(#2), T0 ; |421| 
	.dwpsn	file "./inc/csl_rtc.h",line 422,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L5:1:1714639450")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./inc/csl_rtc.h")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x1a4)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_rtc_pow$2$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_rtc_pow$2$E)
	.dwendtag $C$DW$26

	.dwattr $C$DW$18, DW_AT_TI_end_file("./inc/csl_rtc.h")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x1a6)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_RTC_reset

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_reset")
	.dwattr $C$DW$28, DW_AT_low_pc(_RTC_reset)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_RTC_reset")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_rtc.c",line 87,column 1,is_stmt,address _RTC_reset

	.dwfde $C$DW$CIE, _RTC_reset
;*******************************************************************************
;* FUNCTION NAME: RTC_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_rtc.c",line 88,column 2,is_stmt
        MOV *port(#6444), AR1 ; |88| 
        BCLR @#15, AR1 ; |88| 
        BSET @#15, AR1 ; |88| 
        MOV AR1, *port(#6444) ; |88| 
	.dwpsn	file "src/csl_rtc.c",line 89,column 1,is_stmt
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_RTC_start

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_start")
	.dwattr $C$DW$30, DW_AT_low_pc(_RTC_start)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_RTC_start")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_rtc.c",line 121,column 1,is_stmt,address _RTC_start

	.dwfde $C$DW$CIE, _RTC_start
;*******************************************************************************
;* FUNCTION NAME: RTC_start                                                    *
;*                                                                             *
;*   Function Uses Regs : AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_rtc.c",line 123,column 5,is_stmt
        OR #0x803f, *port(#6432) ; |123| 
	.dwpsn	file "src/csl_rtc.c",line 125,column 2,is_stmt
        MOV *port(#6400), AR1 ; |125| 
        BCLR @#0, AR1 ; |125| 
        BSET @#0, AR1 ; |125| 
        MOV AR1, *port(#6400) ; |125| 
	.dwpsn	file "src/csl_rtc.c",line 127,column 2,is_stmt
        MOV *port(#6448), AR1 ; |127| 
        BCLR @#0, AR1 ; |127| 
        BSET @#0, AR1 ; |127| 
        MOV AR1, *port(#6448) ; |127| 
	.dwpsn	file "src/csl_rtc.c",line 128,column 1,is_stmt
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$30, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.global	_RTC_stop

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_stop")
	.dwattr $C$DW$32, DW_AT_low_pc(_RTC_stop)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_RTC_stop")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_rtc.c",line 160,column 1,is_stmt,address _RTC_stop

	.dwfde $C$DW$CIE, _RTC_stop
;*******************************************************************************
;* FUNCTION NAME: RTC_stop                                                     *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_rtc.c",line 162,column 2,is_stmt
        AND #0xfffe, *port(#6400) ; |162| 
	.dwpsn	file "src/csl_rtc.c",line 163,column 1,is_stmt
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$32, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0xa3)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.global	_RTC_config

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_config")
	.dwattr $C$DW$34, DW_AT_low_pc(_RTC_config)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_RTC_config")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0xdb)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 221,column 1,is_stmt,address _RTC_config

	.dwfde $C$DW$CIE, _RTC_config
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pConfig")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("pConfig")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 224,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |224| 

        CMPU AC1 != AC0, TC1 ; |224| 
        BCC $C$L7,TC1 ; |224| 
                                        ; branchcc occurs ; |224| 
	.dwpsn	file "src/csl_rtc.c",line 226,column 3,is_stmt
        MOV #-6, T0
        B $C$L12  ; |226| 
                                        ; branch occurs ; |226| 
$C$L7:    
	.dwpsn	file "src/csl_rtc.c",line 230,column 3,is_stmt
        MOV #50, *SP(#2) ; |230| 
	.dwpsn	file "src/csl_rtc.c",line 232,column 9,is_stmt
        AND #0x7fff, *port(#6401) ; |232| 
	.dwpsn	file "src/csl_rtc.c",line 235,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |235| 
        MOV AR1, *port(#6404) ; |235| 
	.dwpsn	file "src/csl_rtc.c",line 236,column 9,is_stmt
        MOV *AR3(short(#1)), AR1 ; |236| 
        MOV AR1, *port(#6408) ; |236| 
	.dwpsn	file "src/csl_rtc.c",line 237,column 9,is_stmt
        MOV *AR3(short(#2)), AR1 ; |237| 
        MOV AR1, *port(#6412) ; |237| 
	.dwpsn	file "src/csl_rtc.c",line 238,column 9,is_stmt
        MOV *AR3(short(#3)), AR1 ; |238| 
        MOV AR1, *port(#6416) ; |238| 
	.dwpsn	file "src/csl_rtc.c",line 239,column 9,is_stmt
        MOV *AR3(short(#4)), AR1 ; |239| 
        MOV AR1, *port(#6420) ; |239| 
	.dwpsn	file "src/csl_rtc.c",line 240,column 9,is_stmt
        MOV *AR3(short(#5)), AR1 ; |240| 
        MOV AR1, *port(#6424) ; |240| 
	.dwpsn	file "src/csl_rtc.c",line 241,column 9,is_stmt
        MOV *AR3(short(#6)), AR1 ; |241| 
        MOV AR1, *port(#6428) ; |241| 
	.dwpsn	file "src/csl_rtc.c",line 243,column 9,is_stmt
        MOV *port(#6401), AR1 ; |243| 
        BCLR @#15, AR1 ; |243| 
        BSET @#15, AR1 ; |243| 
        MOV AR1, *port(#6401) ; |243| 
	.dwpsn	file "src/csl_rtc.c",line 244,column 9,is_stmt
$C$L8:    
$C$DW$L$_RTC_config$5$B:
	.dwpsn	file "src/csl_rtc.c",line 244,column 15,is_stmt
        MOV *port(#6401), AR1 ; |244| 
        AND #0x8000, AR1, AC0 ; |244| 
        BFXTR #0x8000, AC0, AR1 ; |244| 
        BCC $C$L9,AR1 == #0 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_RTC_config$5$E:
$C$DW$L$_RTC_config$6$B:
        MOV *SP(#2), AR1 ; |244| 
        SUB #1, AR1, AR1 ; |244| 
        MOV AR1, *SP(#2) ; |244| 
        BCC $C$L8,AR1 != #0 ; |244| 
                                        ; branchcc occurs ; |244| 
$C$DW$L$_RTC_config$6$E:
$C$L9:    
	.dwpsn	file "src/csl_rtc.c",line 247,column 3,is_stmt
        MOV #50, *SP(#2) ; |247| 
	.dwpsn	file "src/csl_rtc.c",line 249,column 9,is_stmt
        AND #0xbfff, *port(#6401) ; |249| 
	.dwpsn	file "src/csl_rtc.c",line 252,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#7)), AR1 ; |252| 
        MOV AR1, *port(#6405) ; |252| 
	.dwpsn	file "src/csl_rtc.c",line 253,column 9,is_stmt
        MOV *AR3(#8), AR1 ; |253| 
        MOV AR1, *port(#6409) ; |253| 
	.dwpsn	file "src/csl_rtc.c",line 254,column 9,is_stmt
        MOV *AR3(#9), AR1 ; |254| 
        MOV AR1, *port(#6413) ; |254| 
	.dwpsn	file "src/csl_rtc.c",line 255,column 9,is_stmt
        MOV *AR3(#10), AR1 ; |255| 
        MOV AR1, *port(#6417) ; |255| 
	.dwpsn	file "src/csl_rtc.c",line 256,column 9,is_stmt
        MOV *AR3(#11), AR1 ; |256| 
        MOV AR1, *port(#6421) ; |256| 
	.dwpsn	file "src/csl_rtc.c",line 257,column 9,is_stmt
        MOV *AR3(#12), AR1 ; |257| 
        MOV AR1, *port(#6425) ; |257| 
	.dwpsn	file "src/csl_rtc.c",line 258,column 9,is_stmt
        MOV *AR3(#13), AR1 ; |258| 
        MOV AR1, *port(#6429) ; |258| 
	.dwpsn	file "src/csl_rtc.c",line 260,column 9,is_stmt
        MOV *port(#6401), AR1 ; |260| 
        BCLR @#14, AR1 ; |260| 
        BSET @#14, AR1 ; |260| 
        MOV AR1, *port(#6401) ; |260| 
	.dwpsn	file "src/csl_rtc.c",line 261,column 9,is_stmt
$C$L10:    
$C$DW$L$_RTC_config$8$B:
	.dwpsn	file "src/csl_rtc.c",line 261,column 15,is_stmt
        MOV *port(#6401), AR1 ; |261| 
        AND #0x4000, AR1, AC0 ; |261| 
        BFXTR #0xc000, AC0, AR1 ; |261| 
        BCC $C$L11,AR1 == #0 ; |261| 
                                        ; branchcc occurs ; |261| 
$C$DW$L$_RTC_config$8$E:
$C$DW$L$_RTC_config$9$B:
        MOV *SP(#2), AR1 ; |261| 
        SUB #1, AR1, AR1 ; |261| 
        MOV AR1, *SP(#2) ; |261| 
        BCC $C$L10,AR1 != #0 ; |261| 
                                        ; branchcc occurs ; |261| 
$C$DW$L$_RTC_config$9$E:
$C$L11:    
	.dwpsn	file "src/csl_rtc.c",line 264,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#14), AR1 ; |264| 
        MOV AR1, *port(#6436) ; |264| 
	.dwpsn	file "src/csl_rtc.c",line 266,column 3,is_stmt
        MOV #0, T0
$C$L12:    
	.dwpsn	file "src/csl_rtc.c",line 268,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$39	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$39, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L10:1:1714639450")
	.dwattr $C$DW$39, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x105)
$C$DW$40	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$40, DW_AT_low_pc($C$DW$L$_RTC_config$8$B)
	.dwattr $C$DW$40, DW_AT_high_pc($C$DW$L$_RTC_config$8$E)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_RTC_config$9$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_RTC_config$9$E)
	.dwendtag $C$DW$39


$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L8:1:1714639450")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0xf4)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$_RTC_config$5$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$_RTC_config$5$E)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_RTC_config$6$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_RTC_config$6$E)
	.dwendtag $C$DW$42

	.dwattr $C$DW$34, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x10c)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.global	_RTC_getConfig

$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_getConfig")
	.dwattr $C$DW$45, DW_AT_low_pc(_RTC_getConfig)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_RTC_getConfig")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$45, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 308,column 1,is_stmt,address _RTC_getConfig

	.dwfde $C$DW$CIE, _RTC_getConfig
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pGetConfig")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_pGetConfig")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("pGetConfig")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_pGetConfig")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 309,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |309| 

        CMPU AC1 != AC0, TC1 ; |309| 
        BCC $C$L13,TC1 ; |309| 
                                        ; branchcc occurs ; |309| 
	.dwpsn	file "src/csl_rtc.c",line 311,column 3,is_stmt
        MOV #-6, T0
        B $C$L14  ; |311| 
                                        ; branch occurs ; |311| 
$C$L13:    
	.dwpsn	file "src/csl_rtc.c",line 316,column 9,is_stmt
        MOV *port(#6404), AR1 ; |316| 
        MOV AR1, *AR3 ; |316| 
	.dwpsn	file "src/csl_rtc.c",line 317,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6408), AR1 ; |317| 
        MOV AR1, *AR3(short(#1)) ; |317| 
	.dwpsn	file "src/csl_rtc.c",line 318,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6412), AR1 ; |318| 
        MOV AR1, *AR3(short(#2)) ; |318| 
	.dwpsn	file "src/csl_rtc.c",line 319,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6416), AR1 ; |319| 
        MOV AR1, *AR3(short(#3)) ; |319| 
	.dwpsn	file "src/csl_rtc.c",line 320,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6420), AR1 ; |320| 
        MOV AR1, *AR3(short(#4)) ; |320| 
	.dwpsn	file "src/csl_rtc.c",line 321,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6424), AR1 ; |321| 
        MOV AR1, *AR3(short(#5)) ; |321| 
	.dwpsn	file "src/csl_rtc.c",line 322,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6428), AR1 ; |322| 
        MOV AR1, *AR3(short(#6)) ; |322| 
	.dwpsn	file "src/csl_rtc.c",line 325,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6405), AR1 ; |325| 
        MOV AR1, *AR3(short(#7)) ; |325| 
	.dwpsn	file "src/csl_rtc.c",line 326,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6409), AR1 ; |326| 
        MOV AR1, *AR3(#8) ; |326| 
	.dwpsn	file "src/csl_rtc.c",line 327,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6413), AR1 ; |327| 
        MOV AR1, *AR3(#9) ; |327| 
	.dwpsn	file "src/csl_rtc.c",line 328,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6417), AR1 ; |328| 
        MOV AR1, *AR3(#10) ; |328| 
	.dwpsn	file "src/csl_rtc.c",line 329,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6421), AR1 ; |329| 
        MOV AR1, *AR3(#11) ; |329| 
	.dwpsn	file "src/csl_rtc.c",line 330,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6425), AR1 ; |330| 
        MOV AR1, *AR3(#12) ; |330| 
	.dwpsn	file "src/csl_rtc.c",line 331,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6429), AR1 ; |331| 
        MOV AR1, *AR3(#13) ; |331| 
	.dwpsn	file "src/csl_rtc.c",line 334,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *port(#6436), AR1 ; |334| 
        MOV AR1, *AR3(#14) ; |334| 
	.dwpsn	file "src/csl_rtc.c",line 336,column 3,is_stmt
        MOV #0, T0
$C$L14:    
	.dwpsn	file "src/csl_rtc.c",line 338,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$45, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.global	_RTC_setTime

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setTime")
	.dwattr $C$DW$49, DW_AT_low_pc(_RTC_setTime)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_RTC_setTime")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x17e)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 384,column 1,is_stmt,address _RTC_setTime

	.dwfde $C$DW$CIE, _RTC_setTime
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRtcTime")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_pRtcTime")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_setTime                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setTime:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("pRtcTime")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_pRtcTime")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 387,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |387| 

        CMPU AC1 != AC0, TC1 ; |387| 
        BCC $C$L15,TC1 ; |387| 
                                        ; branchcc occurs ; |387| 
	.dwpsn	file "src/csl_rtc.c",line 389,column 3,is_stmt
        MOV #-6, T0
        B $C$L18  ; |389| 
                                        ; branch occurs ; |389| 
$C$L15:    
	.dwpsn	file "src/csl_rtc.c",line 393,column 3,is_stmt
        MOV #50, *SP(#2) ; |393| 
	.dwpsn	file "src/csl_rtc.c",line 395,column 9,is_stmt
        AND #0x7fff, *port(#6401) ; |395| 
	.dwpsn	file "src/csl_rtc.c",line 397,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), T0 ; |397| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |397| 
                                        ; call occurs [#_RTC_decToBcd] ; |397| 
        MOV T0, *port(#6404) ; |397| 
	.dwpsn	file "src/csl_rtc.c",line 398,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), T0 ; |398| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |398| 
                                        ; call occurs [#_RTC_decToBcd] ; |398| 
        MOV T0, *port(#6408) ; |398| 
	.dwpsn	file "src/csl_rtc.c",line 399,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), T0 ; |399| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |399| 
                                        ; call occurs [#_RTC_decToBcd] ; |399| 
        MOV T0, *port(#6412) ; |399| 
	.dwpsn	file "src/csl_rtc.c",line 400,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, T0 ; |400| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$56, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |400| 
                                        ; call occurs [#_RTC_decToBcd] ; |400| 
        MOV T0, *port(#6416) ; |400| 
	.dwpsn	file "src/csl_rtc.c",line 403,column 9,is_stmt
        MOV *port(#6401), AR1 ; |403| 
        BCLR @#15, AR1 ; |403| 
        BSET @#15, AR1 ; |403| 
        MOV AR1, *port(#6401) ; |403| 
	.dwpsn	file "src/csl_rtc.c",line 404,column 9,is_stmt
$C$L16:    
$C$DW$L$_RTC_setTime$5$B:
	.dwpsn	file "src/csl_rtc.c",line 404,column 15,is_stmt
        MOV *port(#6401), AR1 ; |404| 
        AND #0x8000, AR1, AC0 ; |404| 
        BFXTR #0x8000, AC0, AR1 ; |404| 
        BCC $C$L17,AR1 == #0 ; |404| 
                                        ; branchcc occurs ; |404| 
$C$DW$L$_RTC_setTime$5$E:
$C$DW$L$_RTC_setTime$6$B:
        MOV *SP(#2), AR1 ; |404| 
        SUB #1, AR1, AR1 ; |404| 
        MOV AR1, *SP(#2) ; |404| 
        BCC $C$L16,AR1 != #0 ; |404| 
                                        ; branchcc occurs ; |404| 
$C$DW$L$_RTC_setTime$6$E:
$C$L17:    
	.dwpsn	file "src/csl_rtc.c",line 406,column 3,is_stmt
        MOV #0, T0
$C$L18:    
	.dwpsn	file "src/csl_rtc.c",line 408,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$58	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$58, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L16:1:1714639450")
	.dwattr $C$DW$58, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x194)
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x194)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_RTC_setTime$5$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_RTC_setTime$5$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_RTC_setTime$6$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_RTC_setTime$6$E)
	.dwendtag $C$DW$58

	.dwattr $C$DW$49, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x198)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_RTC_getTime

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_getTime")
	.dwattr $C$DW$61, DW_AT_low_pc(_RTC_getTime)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_RTC_getTime")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x1be)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 448,column 1,is_stmt,address _RTC_getTime

	.dwfde $C$DW$CIE, _RTC_getTime
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pGetRtcTime")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_pGetRtcTime")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_getTime                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_getTime:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("pGetRtcTime")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_pGetRtcTime")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 449,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |449| 

        CMPU AC1 != AC0, TC1 ; |449| 
        BCC $C$L19,TC1 ; |449| 
                                        ; branchcc occurs ; |449| 
	.dwpsn	file "src/csl_rtc.c",line 451,column 3,is_stmt
        MOV #-6, T0
        B $C$L20  ; |451| 
                                        ; branch occurs ; |451| 
$C$L19:    
	.dwpsn	file "src/csl_rtc.c",line 455,column 3,is_stmt
        MOV *port(#6404), T0 ; |455| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |455| 
                                        ; call occurs [#_RTC_bcdToDec] ; |455| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3(short(#3)) ; |455| 
	.dwpsn	file "src/csl_rtc.c",line 456,column 3,is_stmt
        MOV *port(#6408), T0 ; |456| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |456| 
                                        ; call occurs [#_RTC_bcdToDec] ; |456| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3(short(#2)) ; |456| 
	.dwpsn	file "src/csl_rtc.c",line 457,column 3,is_stmt
        MOV *port(#6412), T0 ; |457| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |457| 
                                        ; call occurs [#_RTC_bcdToDec] ; |457| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3(short(#1)) ; |457| 
	.dwpsn	file "src/csl_rtc.c",line 458,column 3,is_stmt
        MOV *port(#6416), T0 ; |458| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |458| 
                                        ; call occurs [#_RTC_bcdToDec] ; |458| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3 ; |458| 
	.dwpsn	file "src/csl_rtc.c",line 460,column 3,is_stmt
        MOV #0, T0
$C$L20:    
	.dwpsn	file "src/csl_rtc.c",line 462,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$61, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x1ce)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.global	_RTC_setDate

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setDate")
	.dwattr $C$DW$69, DW_AT_low_pc(_RTC_setDate)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_RTC_setDate")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x1f9)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 507,column 1,is_stmt,address _RTC_setDate

	.dwfde $C$DW$CIE, _RTC_setDate
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRtcDate")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_pRtcDate")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_setDate                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setDate:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("pRtcDate")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_pRtcDate")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 510,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |510| 

        CMPU AC1 != AC0, TC1 ; |510| 
        BCC $C$L21,TC1 ; |510| 
                                        ; branchcc occurs ; |510| 
	.dwpsn	file "src/csl_rtc.c",line 512,column 3,is_stmt
        MOV #-6, T0
        B $C$L24  ; |512| 
                                        ; branch occurs ; |512| 
$C$L21:    
	.dwpsn	file "src/csl_rtc.c",line 516,column 3,is_stmt
        MOV #50, *SP(#2) ; |516| 
	.dwpsn	file "src/csl_rtc.c",line 518,column 9,is_stmt
        AND #0x7fff, *port(#6401) ; |518| 
	.dwpsn	file "src/csl_rtc.c",line 520,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), T0 ; |520| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$73, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |520| 
                                        ; call occurs [#_RTC_decToBcd] ; |520| 
        MOV T0, *port(#6420) ; |520| 
	.dwpsn	file "src/csl_rtc.c",line 521,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), T0 ; |521| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |521| 
                                        ; call occurs [#_RTC_decToBcd] ; |521| 
        MOV T0, *port(#6424) ; |521| 
	.dwpsn	file "src/csl_rtc.c",line 522,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, T0 ; |522| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |522| 
                                        ; call occurs [#_RTC_decToBcd] ; |522| 
        MOV T0, *port(#6428) ; |522| 
	.dwpsn	file "src/csl_rtc.c",line 525,column 9,is_stmt
        MOV *port(#6401), AR1 ; |525| 
        BCLR @#15, AR1 ; |525| 
        BSET @#15, AR1 ; |525| 
        MOV AR1, *port(#6401) ; |525| 
	.dwpsn	file "src/csl_rtc.c",line 526,column 9,is_stmt
$C$L22:    
$C$DW$L$_RTC_setDate$5$B:
	.dwpsn	file "src/csl_rtc.c",line 526,column 15,is_stmt
        MOV *port(#6401), AR1 ; |526| 
        AND #0x8000, AR1, AC0 ; |526| 
        BFXTR #0x8000, AC0, AR1 ; |526| 
        BCC $C$L23,AR1 == #0 ; |526| 
                                        ; branchcc occurs ; |526| 
$C$DW$L$_RTC_setDate$5$E:
$C$DW$L$_RTC_setDate$6$B:
        MOV *SP(#2), AR1 ; |526| 
        SUB #1, AR1, AR1 ; |526| 
        MOV AR1, *SP(#2) ; |526| 
        BCC $C$L22,AR1 != #0 ; |526| 
                                        ; branchcc occurs ; |526| 
$C$DW$L$_RTC_setDate$6$E:
$C$L23:    
	.dwpsn	file "src/csl_rtc.c",line 528,column 3,is_stmt
        MOV #0, T0
$C$L24:    
	.dwpsn	file "src/csl_rtc.c",line 530,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$77	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$77, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L22:1:1714639450")
	.dwattr $C$DW$77, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x20e)
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x20e)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_RTC_setDate$5$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_RTC_setDate$5$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_RTC_setDate$6$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_RTC_setDate$6$E)
	.dwendtag $C$DW$77

	.dwattr $C$DW$69, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x212)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_RTC_getDate

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_getDate")
	.dwattr $C$DW$80, DW_AT_low_pc(_RTC_getDate)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_RTC_getDate")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$80, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x238)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 570,column 1,is_stmt,address _RTC_getDate

	.dwfde $C$DW$CIE, _RTC_getDate
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pGetRtcDate")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_pGetRtcDate")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_getDate                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_getDate:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("pGetRtcDate")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_pGetRtcDate")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 571,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |571| 

        CMPU AC1 != AC0, TC1 ; |571| 
        BCC $C$L25,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
	.dwpsn	file "src/csl_rtc.c",line 573,column 3,is_stmt
        MOV #-6, T0
        B $C$L26  ; |573| 
                                        ; branch occurs ; |573| 
$C$L25:    
	.dwpsn	file "src/csl_rtc.c",line 577,column 3,is_stmt
        MOV *port(#6420), T0 ; |577| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |577| 
                                        ; call occurs [#_RTC_bcdToDec] ; |577| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3(short(#2)) ; |577| 
	.dwpsn	file "src/csl_rtc.c",line 578,column 3,is_stmt
        MOV *port(#6424), T0 ; |578| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |578| 
                                        ; call occurs [#_RTC_bcdToDec] ; |578| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3(short(#1)) ; |578| 
	.dwpsn	file "src/csl_rtc.c",line 579,column 3,is_stmt
        MOV *port(#6428), T0 ; |579| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_RTC_bcdToDec")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_RTC_bcdToDec ; |579| 
                                        ; call occurs [#_RTC_bcdToDec] ; |579| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3 ; |579| 
	.dwpsn	file "src/csl_rtc.c",line 581,column 3,is_stmt
        MOV #0, T0
$C$L26:    
	.dwpsn	file "src/csl_rtc.c",line 583,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$80, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x247)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text"
	.global	_RTC_setAlarm

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setAlarm")
	.dwattr $C$DW$87, DW_AT_low_pc(_RTC_setAlarm)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_RTC_setAlarm")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$87, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x275)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 631,column 1,is_stmt,address _RTC_setAlarm

	.dwfde $C$DW$CIE, _RTC_setAlarm
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRtcAlarm")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_pRtcAlarm")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: RTC_setAlarm                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setAlarm:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("pRtcAlarm")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_pRtcAlarm")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 634,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |634| 

        CMPU AC1 != AC0, TC1 ; |634| 
        BCC $C$L27,TC1 ; |634| 
                                        ; branchcc occurs ; |634| 
	.dwpsn	file "src/csl_rtc.c",line 636,column 3,is_stmt
        MOV #-6, T0
        B $C$L32  ; |636| 
                                        ; branch occurs ; |636| 
$C$L27:    
	.dwpsn	file "src/csl_rtc.c",line 640,column 3,is_stmt
        MOV #50, *SP(#2) ; |640| 
	.dwpsn	file "src/csl_rtc.c",line 643,column 9,is_stmt
        AND #0xbfff, *port(#6401) ; |643| 
	.dwpsn	file "src/csl_rtc.c",line 645,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), T0 ; |645| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |645| 
                                        ; call occurs [#_RTC_decToBcd] ; |645| 
        MOV T0, *port(#6405) ; |645| 
	.dwpsn	file "src/csl_rtc.c",line 646,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)), T0 ; |646| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |646| 
                                        ; call occurs [#_RTC_decToBcd] ; |646| 
        MOV T0, *port(#6409) ; |646| 
	.dwpsn	file "src/csl_rtc.c",line 647,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), T0 ; |647| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |647| 
                                        ; call occurs [#_RTC_decToBcd] ; |647| 
        MOV T0, *port(#6413) ; |647| 
	.dwpsn	file "src/csl_rtc.c",line 648,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), T0 ; |648| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$94, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |648| 
                                        ; call occurs [#_RTC_decToBcd] ; |648| 
        MOV T0, *port(#6417) ; |648| 
	.dwpsn	file "src/csl_rtc.c",line 649,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), T0 ; |649| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$95, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |649| 
                                        ; call occurs [#_RTC_decToBcd] ; |649| 
        MOV T0, *port(#6421) ; |649| 
	.dwpsn	file "src/csl_rtc.c",line 650,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), T0 ; |650| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |650| 
                                        ; call occurs [#_RTC_decToBcd] ; |650| 
        MOV T0, *port(#6425) ; |650| 
	.dwpsn	file "src/csl_rtc.c",line 651,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, T0 ; |651| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |651| 
                                        ; call occurs [#_RTC_decToBcd] ; |651| 
        MOV T0, *port(#6429) ; |651| 
	.dwpsn	file "src/csl_rtc.c",line 654,column 9,is_stmt
        MOV *port(#6401), AR1 ; |654| 
        BCLR @#14, AR1 ; |654| 
        BSET @#14, AR1 ; |654| 
        MOV AR1, *port(#6401) ; |654| 
	.dwpsn	file "src/csl_rtc.c",line 655,column 9,is_stmt
$C$L28:    
$C$DW$L$_RTC_setAlarm$5$B:
	.dwpsn	file "src/csl_rtc.c",line 655,column 15,is_stmt
        MOV *port(#6401), AR1 ; |655| 
        AND #0x4000, AR1, AC0 ; |655| 
        BFXTR #0xc000, AC0, AR1 ; |655| 
        BCC $C$L29,AR1 == #0 ; |655| 
                                        ; branchcc occurs ; |655| 
$C$DW$L$_RTC_setAlarm$5$E:
$C$DW$L$_RTC_setAlarm$6$B:
        MOV *SP(#2), AR1 ; |655| 
        SUB #1, AR1, AR1 ; |655| 
        MOV AR1, *SP(#2) ; |655| 
        BCC $C$L28,AR1 != #0 ; |655| 
                                        ; branchcc occurs ; |655| 
$C$DW$L$_RTC_setAlarm$6$E:
$C$L29:    
	.dwpsn	file "src/csl_rtc.c",line 658,column 9,is_stmt
        MOV *port(#6436), AR1 ; |658| 
        BCLR @#15, AR1 ; |658| 
        BSET @#15, AR1 ; |658| 
        MOV AR1, *port(#6436) ; |658| 
	.dwpsn	file "src/csl_rtc.c",line 661,column 8,is_stmt
        MOV #0, *SP(#2) ; |661| 
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 661,column 21,is_stmt
        MOV #50, AR2 ; |661| 
        MOV *SP(#2), AR1 ; |661| 
        CMPU AR1 >= AR2, TC1 ; |661| 
        BCC $C$L31,TC1 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$L30:    
$C$DW$L$_RTC_setAlarm$8$B:
	.dwpsn	file "src/csl_rtc.c",line 661,column 51,is_stmt
        ADD #1, *SP(#2) ; |661| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 661,column 21,is_stmt
        MOV *SP(#2), AR1 ; |661| 
        CMPU AR1 < AR2, TC1 ; |661| 
        BCC $C$L30,TC1 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$DW$L$_RTC_setAlarm$8$E:
$C$L31:    
	.dwpsn	file "src/csl_rtc.c",line 664,column 9,is_stmt
        AND #0xfff7, *port(#6448) ; |664| 
	.dwpsn	file "src/csl_rtc.c",line 666,column 3,is_stmt
        MOV #0, T0
$C$L32:    
	.dwpsn	file "src/csl_rtc.c",line 668,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L30:1:1714639450")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x295)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x295)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_RTC_setAlarm$8$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_RTC_setAlarm$8$E)
	.dwendtag $C$DW$99


$C$DW$101	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$101, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L28:1:1714639450")
	.dwattr $C$DW$101, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x28f)
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x28f)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_RTC_setAlarm$5$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_RTC_setAlarm$5$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_RTC_setAlarm$6$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_RTC_setAlarm$6$E)
	.dwendtag $C$DW$101

	.dwattr $C$DW$87, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x29c)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.global	_RTC_setPeriodicInterval

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setPeriodicInterval")
	.dwattr $C$DW$104, DW_AT_low_pc(_RTC_setPeriodicInterval)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_RTC_setPeriodicInterval")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x2c4)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 710,column 1,is_stmt,address _RTC_setPeriodicInterval

	.dwfde $C$DW$CIE, _RTC_setPeriodicInterval
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("periodicInterruptType")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_periodicInterruptType")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: RTC_setPeriodicInterval                                      *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setPeriodicInterval:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("periodicInterruptType")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_periodicInterruptType")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |710| 
	.dwpsn	file "src/csl_rtc.c",line 713,column 5,is_stmt
        B $C$L39  ; |713| 
                                        ; branch occurs ; |713| 
$C$L33:    
	.dwpsn	file "src/csl_rtc.c",line 717,column 13,is_stmt
        MOV *port(#6436), AR1 ; |717| 
        BCLR @#4, AR1 ; |717| 
        BSET @#4, AR1 ; |717| 
        MOV AR1, *port(#6436) ; |717| 
	.dwpsn	file "src/csl_rtc.c",line 718,column 13,is_stmt
        B $C$L41  ; |718| 
                                        ; branch occurs ; |718| 
$C$L34:    
	.dwpsn	file "src/csl_rtc.c",line 723,column 13,is_stmt
        MOV *port(#6436), AR1 ; |723| 
        BCLR @#3, AR1 ; |723| 
        BSET @#3, AR1 ; |723| 
        MOV AR1, *port(#6436) ; |723| 
	.dwpsn	file "src/csl_rtc.c",line 724,column 13,is_stmt
        B $C$L41  ; |724| 
                                        ; branch occurs ; |724| 
$C$L35:    
	.dwpsn	file "src/csl_rtc.c",line 729,column 13,is_stmt
        MOV *port(#6436), AR1 ; |729| 
        BCLR @#2, AR1 ; |729| 
        BSET @#2, AR1 ; |729| 
        MOV AR1, *port(#6436) ; |729| 
	.dwpsn	file "src/csl_rtc.c",line 730,column 13,is_stmt
        B $C$L41  ; |730| 
                                        ; branch occurs ; |730| 
$C$L36:    
	.dwpsn	file "src/csl_rtc.c",line 735,column 13,is_stmt
        MOV *port(#6436), AR1 ; |735| 
        BCLR @#1, AR1 ; |735| 
        BSET @#1, AR1 ; |735| 
        MOV AR1, *port(#6436) ; |735| 
	.dwpsn	file "src/csl_rtc.c",line 736,column 13,is_stmt
        B $C$L41  ; |736| 
                                        ; branch occurs ; |736| 
$C$L37:    
	.dwpsn	file "src/csl_rtc.c",line 741,column 13,is_stmt
        MOV *port(#6436), AR1 ; |741| 
        BCLR @#0, AR1 ; |741| 
        BSET @#0, AR1 ; |741| 
        MOV AR1, *port(#6436) ; |741| 
	.dwpsn	file "src/csl_rtc.c",line 742,column 13,is_stmt
        B $C$L41  ; |742| 
                                        ; branch occurs ; |742| 
$C$L38:    
	.dwpsn	file "src/csl_rtc.c",line 747,column 13,is_stmt
        MOV #-6, T0
        B $C$L44  ; |747| 
                                        ; branch occurs ; |747| 
$C$L39:    
	.dwpsn	file "src/csl_rtc.c",line 713,column 5,is_stmt

        MOV T0, AR1
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |713| 
        BCC $C$L40,TC1 ; |713| 
                                        ; branchcc occurs ; |713| 
        CMP AR1 == AR2, TC1 ; |713| 
        BCC $C$L35,TC1 ; |713| 
                                        ; branchcc occurs ; |713| 
        BCC $C$L33,AR1 == #0 ; |713| 
                                        ; branchcc occurs ; |713| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |713| 
        BCC $C$L34,TC1 ; |713| 
                                        ; branchcc occurs ; |713| 
        B $C$L38  ; |713| 
                                        ; branch occurs ; |713| 
$C$L40:    
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |713| 
        BCC $C$L36,TC1 ; |713| 
                                        ; branchcc occurs ; |713| 
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |713| 
        BCC $C$L37,TC1 ; |713| 
                                        ; branchcc occurs ; |713| 
        B $C$L38  ; |713| 
                                        ; branch occurs ; |713| 
$C$L41:    
	.dwpsn	file "src/csl_rtc.c",line 751,column 7,is_stmt
        MOV #0, *SP(#1) ; |751| 
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 751,column 18,is_stmt
        MOV #50, AR2 ; |751| 
        MOV *SP(#1), AR1 ; |751| 
        CMPU AR1 >= AR2, TC1 ; |751| 
        BCC $C$L43,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
$C$L42:    
$C$DW$L$_RTC_setPeriodicInterval$19$B:
	.dwpsn	file "src/csl_rtc.c",line 751,column 46,is_stmt
        ADD #1, *SP(#1) ; |751| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 751,column 18,is_stmt
        MOV *SP(#1), AR1 ; |751| 
        CMPU AR1 < AR2, TC1 ; |751| 
        BCC $C$L42,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
$C$DW$L$_RTC_setPeriodicInterval$19$E:
$C$L43:    
	.dwpsn	file "src/csl_rtc.c",line 752,column 2,is_stmt
        MOV #0, T0
$C$L44:    
	.dwpsn	file "src/csl_rtc.c",line 753,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$109	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$109, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L42:1:1714639450")
	.dwattr $C$DW$109, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x2ef)
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x2ef)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_RTC_setPeriodicInterval$19$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_RTC_setPeriodicInterval$19$E)
	.dwendtag $C$DW$109

	.dwattr $C$DW$104, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x2f1)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.global	_RTC_eventEnable

$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_eventEnable")
	.dwattr $C$DW$111, DW_AT_low_pc(_RTC_eventEnable)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_RTC_eventEnable")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$111, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x319)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 795,column 1,is_stmt,address _RTC_eventEnable

	.dwfde $C$DW$CIE, _RTC_eventEnable
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rtcEvent")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_rtcEvent")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: RTC_eventEnable                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_eventEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("rtcEvent")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_rtcEvent")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |795| 
	.dwpsn	file "src/csl_rtc.c",line 798,column 5,is_stmt
        B $C$L53  ; |798| 
                                        ; branch occurs ; |798| 
$C$L45:    
	.dwpsn	file "src/csl_rtc.c",line 802,column 13,is_stmt
        MOV *port(#6436), AR1 ; |802| 
        BCLR @#15, AR1 ; |802| 
        BSET @#15, AR1 ; |802| 
        MOV AR1, *port(#6436) ; |802| 
	.dwpsn	file "src/csl_rtc.c",line 803,column 13,is_stmt
        B $C$L55  ; |803| 
                                        ; branch occurs ; |803| 
$C$L46:    
	.dwpsn	file "src/csl_rtc.c",line 808,column 13,is_stmt
        MOV *port(#6436), AR1 ; |808| 
        BCLR @#5, AR1 ; |808| 
        BSET @#5, AR1 ; |808| 
        MOV AR1, *port(#6436) ; |808| 
	.dwpsn	file "src/csl_rtc.c",line 809,column 13,is_stmt
        B $C$L55  ; |809| 
                                        ; branch occurs ; |809| 
$C$L47:    
	.dwpsn	file "src/csl_rtc.c",line 814,column 13,is_stmt
        MOV *port(#6436), AR1 ; |814| 
        BCLR @#4, AR1 ; |814| 
        BSET @#4, AR1 ; |814| 
        MOV AR1, *port(#6436) ; |814| 
	.dwpsn	file "src/csl_rtc.c",line 815,column 13,is_stmt
        B $C$L55  ; |815| 
                                        ; branch occurs ; |815| 
$C$L48:    
	.dwpsn	file "src/csl_rtc.c",line 820,column 13,is_stmt
        MOV *port(#6436), AR1 ; |820| 
        BCLR @#3, AR1 ; |820| 
        BSET @#3, AR1 ; |820| 
        MOV AR1, *port(#6436) ; |820| 
	.dwpsn	file "src/csl_rtc.c",line 821,column 13,is_stmt
        B $C$L55  ; |821| 
                                        ; branch occurs ; |821| 
$C$L49:    
	.dwpsn	file "src/csl_rtc.c",line 826,column 13,is_stmt
        MOV *port(#6436), AR1 ; |826| 
        BCLR @#2, AR1 ; |826| 
        BSET @#2, AR1 ; |826| 
        MOV AR1, *port(#6436) ; |826| 
	.dwpsn	file "src/csl_rtc.c",line 827,column 13,is_stmt
        B $C$L55  ; |827| 
                                        ; branch occurs ; |827| 
$C$L50:    
	.dwpsn	file "src/csl_rtc.c",line 832,column 13,is_stmt
        MOV *port(#6436), AR1 ; |832| 
        BCLR @#1, AR1 ; |832| 
        BSET @#1, AR1 ; |832| 
        MOV AR1, *port(#6436) ; |832| 
	.dwpsn	file "src/csl_rtc.c",line 833,column 13,is_stmt
        B $C$L55  ; |833| 
                                        ; branch occurs ; |833| 
$C$L51:    
	.dwpsn	file "src/csl_rtc.c",line 838,column 13,is_stmt
        MOV *port(#6436), AR1 ; |838| 
        BCLR @#0, AR1 ; |838| 
        BSET @#0, AR1 ; |838| 
        MOV AR1, *port(#6436) ; |838| 
	.dwpsn	file "src/csl_rtc.c",line 839,column 13,is_stmt
        B $C$L55  ; |839| 
                                        ; branch occurs ; |839| 
$C$L52:    
	.dwpsn	file "src/csl_rtc.c",line 844,column 13,is_stmt
        MOV #-6, T0
        B $C$L58  ; |844| 
                                        ; branch occurs ; |844| 
$C$L53:    
	.dwpsn	file "src/csl_rtc.c",line 798,column 5,is_stmt

        MOV T0, AR1
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |798| 
        BCC $C$L54,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L48,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        BCC $C$L51,AR1 == #0 ; |798| 
                                        ; branchcc occurs ; |798| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L50,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L49,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        B $C$L52  ; |798| 
                                        ; branch occurs ; |798| 
$C$L54:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L47,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L46,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |798| 
        BCC $C$L45,TC1 ; |798| 
                                        ; branchcc occurs ; |798| 
        B $C$L52  ; |798| 
                                        ; branch occurs ; |798| 
$C$L55:    
	.dwpsn	file "src/csl_rtc.c",line 848,column 7,is_stmt
        MOV #0, *SP(#1) ; |848| 
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 848,column 18,is_stmt
        MOV #50, AR2 ; |848| 
        MOV *SP(#1), AR1 ; |848| 
        CMPU AR1 >= AR2, TC1 ; |848| 
        BCC $C$L57,TC1 ; |848| 
                                        ; branchcc occurs ; |848| 
$C$L56:    
$C$DW$L$_RTC_eventEnable$23$B:
	.dwpsn	file "src/csl_rtc.c",line 848,column 46,is_stmt
        ADD #1, *SP(#1) ; |848| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 848,column 18,is_stmt
        MOV *SP(#1), AR1 ; |848| 
        CMPU AR1 < AR2, TC1 ; |848| 
        BCC $C$L56,TC1 ; |848| 
                                        ; branchcc occurs ; |848| 
$C$DW$L$_RTC_eventEnable$23$E:
$C$L57:    
	.dwpsn	file "src/csl_rtc.c",line 849,column 2,is_stmt
        MOV #0, T0
$C$L58:    
	.dwpsn	file "src/csl_rtc.c",line 850,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$116	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$116, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L56:1:1714639450")
	.dwattr $C$DW$116, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x350)
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x350)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_RTC_eventEnable$23$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_RTC_eventEnable$23$E)
	.dwendtag $C$DW$116

	.dwattr $C$DW$111, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x352)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.global	_RTC_eventDisable

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_eventDisable")
	.dwattr $C$DW$118, DW_AT_low_pc(_RTC_eventDisable)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_RTC_eventDisable")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$118, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x37a)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_rtc.c",line 892,column 1,is_stmt,address _RTC_eventDisable

	.dwfde $C$DW$CIE, _RTC_eventDisable
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rtcEvent")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_rtcEvent")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: RTC_eventDisable                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_eventDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("rtcEvent")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_rtcEvent")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("delay")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |892| 
	.dwpsn	file "src/csl_rtc.c",line 895,column 5,is_stmt
        B $C$L67  ; |895| 
                                        ; branch occurs ; |895| 
$C$L59:    
	.dwpsn	file "src/csl_rtc.c",line 899,column 13,is_stmt
        AND #0x7fff, *port(#6436) ; |899| 
	.dwpsn	file "src/csl_rtc.c",line 900,column 13,is_stmt
        B $C$L69  ; |900| 
                                        ; branch occurs ; |900| 
$C$L60:    
	.dwpsn	file "src/csl_rtc.c",line 905,column 13,is_stmt
        AND #0xffdf, *port(#6436) ; |905| 
	.dwpsn	file "src/csl_rtc.c",line 906,column 13,is_stmt
        B $C$L69  ; |906| 
                                        ; branch occurs ; |906| 
$C$L61:    
	.dwpsn	file "src/csl_rtc.c",line 911,column 13,is_stmt
        AND #0xffef, *port(#6436) ; |911| 
	.dwpsn	file "src/csl_rtc.c",line 912,column 13,is_stmt
        B $C$L69  ; |912| 
                                        ; branch occurs ; |912| 
$C$L62:    
	.dwpsn	file "src/csl_rtc.c",line 917,column 13,is_stmt
        AND #0xfff7, *port(#6436) ; |917| 
	.dwpsn	file "src/csl_rtc.c",line 918,column 13,is_stmt
        B $C$L69  ; |918| 
                                        ; branch occurs ; |918| 
$C$L63:    
	.dwpsn	file "src/csl_rtc.c",line 923,column 13,is_stmt
        AND #0xfffb, *port(#6436) ; |923| 
	.dwpsn	file "src/csl_rtc.c",line 924,column 13,is_stmt
        B $C$L69  ; |924| 
                                        ; branch occurs ; |924| 
$C$L64:    
	.dwpsn	file "src/csl_rtc.c",line 929,column 13,is_stmt
        AND #0xfffd, *port(#6436) ; |929| 
	.dwpsn	file "src/csl_rtc.c",line 930,column 13,is_stmt
        B $C$L69  ; |930| 
                                        ; branch occurs ; |930| 
$C$L65:    
	.dwpsn	file "src/csl_rtc.c",line 935,column 13,is_stmt
        AND #0xfffe, *port(#6436) ; |935| 
	.dwpsn	file "src/csl_rtc.c",line 936,column 13,is_stmt
        B $C$L69  ; |936| 
                                        ; branch occurs ; |936| 
$C$L66:    
	.dwpsn	file "src/csl_rtc.c",line 941,column 13,is_stmt
        MOV #-6, T0
        B $C$L72  ; |941| 
                                        ; branch occurs ; |941| 
$C$L67:    
	.dwpsn	file "src/csl_rtc.c",line 895,column 5,is_stmt

        MOV T0, AR1
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |895| 
        BCC $C$L68,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L62,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        BCC $C$L65,AR1 == #0 ; |895| 
                                        ; branchcc occurs ; |895| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L64,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L63,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        B $C$L66  ; |895| 
                                        ; branch occurs ; |895| 
$C$L68:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L61,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L60,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |895| 
        BCC $C$L59,TC1 ; |895| 
                                        ; branchcc occurs ; |895| 
        B $C$L66  ; |895| 
                                        ; branch occurs ; |895| 
$C$L69:    
	.dwpsn	file "src/csl_rtc.c",line 945,column 7,is_stmt
        MOV #0, *SP(#1) ; |945| 
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 945,column 18,is_stmt
        MOV #50, AR2 ; |945| 
        MOV *SP(#1), AR1 ; |945| 
        CMPU AR1 >= AR2, TC1 ; |945| 
        BCC $C$L71,TC1 ; |945| 
                                        ; branchcc occurs ; |945| 
$C$L70:    
$C$DW$L$_RTC_eventDisable$23$B:
	.dwpsn	file "src/csl_rtc.c",line 945,column 46,is_stmt
        ADD #1, *SP(#1) ; |945| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_rtc.c",line 945,column 18,is_stmt
        MOV *SP(#1), AR1 ; |945| 
        CMPU AR1 < AR2, TC1 ; |945| 
        BCC $C$L70,TC1 ; |945| 
                                        ; branchcc occurs ; |945| 
$C$DW$L$_RTC_eventDisable$23$E:
$C$L71:    
	.dwpsn	file "src/csl_rtc.c",line 946,column 2,is_stmt
        MOV #0, T0
$C$L72:    
	.dwpsn	file "src/csl_rtc.c",line 947,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$123	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$123, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L70:1:1714639450")
	.dwattr $C$DW$123, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x3b1)
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x3b1)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_RTC_eventDisable$23$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_RTC_eventDisable$23$E)
	.dwendtag $C$DW$123

	.dwattr $C$DW$118, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x3b3)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.global	_RTC_getEventId

$C$DW$125	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_getEventId")
	.dwattr $C$DW$125, DW_AT_low_pc(_RTC_getEventId)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_RTC_getEventId")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x3d4)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_rtc.c",line 981,column 1,is_stmt,address _RTC_getEventId

	.dwfde $C$DW$CIE, _RTC_getEventId
;*******************************************************************************
;* FUNCTION NAME: RTC_getEventId                                               *
;*                                                                             *
;*   Function Uses Regs : T0,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_getEventId:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_rtc.c",line 983,column 5,is_stmt
        BTST #15, *port(#6432), TC1 ; |983| 
        BCC $C$L73,!TC1 ; |983| 
                                        ; branchcc occurs ; |983| 
	.dwpsn	file "src/csl_rtc.c",line 984,column 9,is_stmt
        MOV #6, T0
        B $C$L80  ; |984| 
                                        ; branch occurs ; |984| 
$C$L73:    
	.dwpsn	file "src/csl_rtc.c",line 985,column 5,is_stmt
        BTST #5, *port(#6432), TC1 ; |985| 
        BCC $C$L74,!TC1 ; |985| 
                                        ; branchcc occurs ; |985| 
	.dwpsn	file "src/csl_rtc.c",line 986,column 9,is_stmt
        MOV #5, T0
        B $C$L80  ; |986| 
                                        ; branch occurs ; |986| 
$C$L74:    
	.dwpsn	file "src/csl_rtc.c",line 987,column 5,is_stmt
        BTST #4, *port(#6432), TC1 ; |987| 
        BCC $C$L75,!TC1 ; |987| 
                                        ; branchcc occurs ; |987| 
	.dwpsn	file "src/csl_rtc.c",line 988,column 9,is_stmt
        MOV #4, T0
        B $C$L80  ; |988| 
                                        ; branch occurs ; |988| 
$C$L75:    
	.dwpsn	file "src/csl_rtc.c",line 989,column 5,is_stmt
        BTST #3, *port(#6432), TC1 ; |989| 
        BCC $C$L76,!TC1 ; |989| 
                                        ; branchcc occurs ; |989| 
	.dwpsn	file "src/csl_rtc.c",line 990,column 9,is_stmt
        MOV #3, T0
        B $C$L80  ; |990| 
                                        ; branch occurs ; |990| 
$C$L76:    
	.dwpsn	file "src/csl_rtc.c",line 991,column 5,is_stmt
        BTST #2, *port(#6432), TC1 ; |991| 
        BCC $C$L77,!TC1 ; |991| 
                                        ; branchcc occurs ; |991| 
	.dwpsn	file "src/csl_rtc.c",line 992,column 9,is_stmt
        MOV #2, T0
        B $C$L80  ; |992| 
                                        ; branch occurs ; |992| 
$C$L77:    
	.dwpsn	file "src/csl_rtc.c",line 993,column 5,is_stmt
        BTST #1, *port(#6432), TC1 ; |993| 
        BCC $C$L78,!TC1 ; |993| 
                                        ; branchcc occurs ; |993| 
	.dwpsn	file "src/csl_rtc.c",line 994,column 9,is_stmt
        MOV #1, T0
        B $C$L80  ; |994| 
                                        ; branch occurs ; |994| 
$C$L78:    
	.dwpsn	file "src/csl_rtc.c",line 995,column 5,is_stmt
        BTST #0, *port(#6432), TC1 ; |995| 
        BCC $C$L79,!TC1 ; |995| 
                                        ; branchcc occurs ; |995| 
	.dwpsn	file "src/csl_rtc.c",line 996,column 9,is_stmt
        MOV #0, T0
        B $C$L80  ; |996| 
                                        ; branch occurs ; |996| 
$C$L79:    
	.dwpsn	file "src/csl_rtc.c",line 998,column 5,is_stmt
        MOV #7, T0
$C$L80:    
	.dwpsn	file "src/csl_rtc.c",line 999,column 1,is_stmt
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$125, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x3e7)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.global	_RTC_decToBcd

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_decToBcd")
	.dwattr $C$DW$127, DW_AT_low_pc(_RTC_decToBcd)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_RTC_decToBcd")
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x40d)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_rtc.c",line 1039,column 1,is_stmt,address _RTC_decToBcd

	.dwfde $C$DW$CIE, _RTC_decToBcd
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("decVal")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_decVal")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: RTC_decToBcd                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_decToBcd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("decVal")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_decVal")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("hexVal")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_hexVal")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("tempMod")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_tempMod")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#0) ; |1039| 
	.dwpsn	file "src/csl_rtc.c",line 1044,column 5,is_stmt
        MOV #0, *SP(#1) ; |1044| 
	.dwpsn	file "src/csl_rtc.c",line 1045,column 10,is_stmt
        MOV #0, *SP(#3) ; |1045| 
        MOV *SP(#0), AR1 ; |1045| 
        BCC $C$L82,AR1 == #0 ; |1045| 
                                        ; branchcc occurs ; |1045| 
$C$L81:    
$C$DW$L$_RTC_decToBcd$2$B:
	.dwpsn	file "src/csl_rtc.c",line 1047,column 4,is_stmt
        MOV #10, T1
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_rtcModuloDivFun")
	.dwattr $C$DW$133, DW_AT_TI_call

        CALL #_rtcModuloDivFun ; |1047| 
||      MOV AR1, T0

                                        ; call occurs [#_rtcModuloDivFun] ; |1047| 
        MOV T0, *SP(#2) ; |1047| 
	.dwpsn	file "src/csl_rtc.c",line 1048,column 3,is_stmt
        MOV *SP(#0), T0 ; |1048| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_rtcDivFun")
	.dwattr $C$DW$134, DW_AT_TI_call
        CALL #_rtcDivFun ; |1048| 
                                        ; call occurs [#_rtcDivFun] ; |1048| 
        MOV T0, *SP(#0) ; |1048| 
	.dwpsn	file "src/csl_rtc.c",line 1049,column 3,is_stmt
        MOV #16, T0 ; |1049| 
        MOV *SP(#3), T1 ; |1049| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_rtc_pow")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_rtc_pow ; |1049| 
                                        ; call occurs [#_rtc_pow] ; |1049| 
        MOV *SP(#1), AC0 ; |1049| 
        MACM *SP(#2), T0, AC0, AC0 ; |1049| 
        MOV AC0, *SP(#1) ; |1049| 
	.dwpsn	file "src/csl_rtc.c",line 1045,column 25,is_stmt
        ADD #1, *SP(#3) ; |1045| 
        MOV *SP(#0), AR1 ; |1045| 
        BCC $C$L81,AR1 != #0 ; |1045| 
                                        ; branchcc occurs ; |1045| 
$C$DW$L$_RTC_decToBcd$2$E:
$C$L82:    
	.dwpsn	file "src/csl_rtc.c",line 1051,column 5,is_stmt
        MOV *SP(#1), T0 ; |1051| 
	.dwpsn	file "src/csl_rtc.c",line 1052,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$137	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$137, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L81:1:1714639450")
	.dwattr $C$DW$137, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x415)
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x41a)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_RTC_decToBcd$2$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_RTC_decToBcd$2$E)
	.dwendtag $C$DW$137

	.dwattr $C$DW$127, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x41c)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.global	_RTC_bcdToDec

$C$DW$139	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_bcdToDec")
	.dwattr $C$DW$139, DW_AT_low_pc(_RTC_bcdToDec)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_RTC_bcdToDec")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x443)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_rtc.c",line 1093,column 1,is_stmt,address _RTC_bcdToDec

	.dwfde $C$DW$CIE, _RTC_bcdToDec
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hexVal")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_hexVal")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: RTC_bcdToDec                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,SP,CARRY,M40,SATA,SATD,RDM,FRCT,SMUL   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_bcdToDec:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("hexVal")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_hexVal")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("decVal")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_decVal")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("tempMod")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_tempMod")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#0) ; |1093| 
	.dwpsn	file "src/csl_rtc.c",line 1098,column 5,is_stmt
        MOV #0, *SP(#1) ; |1098| 
	.dwpsn	file "src/csl_rtc.c",line 1099,column 11,is_stmt
        MOV #0, *SP(#3) ; |1099| 
        MOV *SP(#0), AR1 ; |1099| 
        BCC $C$L84,AR1 == #0 ; |1099| 
                                        ; branchcc occurs ; |1099| 
$C$L83:    
$C$DW$L$_RTC_bcdToDec$2$B:
	.dwpsn	file "src/csl_rtc.c",line 1101,column 4,is_stmt
        MOV #16, T1 ; |1101| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_rtcModuloDivFun")
	.dwattr $C$DW$145, DW_AT_TI_call

        CALL #_rtcModuloDivFun ; |1101| 
||      MOV AR1, T0

                                        ; call occurs [#_rtcModuloDivFun] ; |1101| 
        MOV T0, *SP(#2) ; |1101| 
	.dwpsn	file "src/csl_rtc.c",line 1102,column 3,is_stmt
        MOV *SP(#0), T0 ; |1102| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_rtcDivFun")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #_rtcDivFun ; |1102| 
                                        ; call occurs [#_rtcDivFun] ; |1102| 
        MOV T0, *SP(#0) ; |1102| 
	.dwpsn	file "src/csl_rtc.c",line 1103,column 3,is_stmt
        MOV *SP(#3), T1 ; |1103| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_rtc_pow")
	.dwattr $C$DW$147, DW_AT_TI_call

        CALL #_rtc_pow ; |1103| 
||      MOV #10, T0

                                        ; call occurs [#_rtc_pow] ; |1103| 
        MOV *SP(#1), AC0 ; |1103| 
        MACM *SP(#2), T0, AC0, AC0 ; |1103| 
        MOV AC0, *SP(#1) ; |1103| 
	.dwpsn	file "src/csl_rtc.c",line 1099,column 26,is_stmt
        ADD #1, *SP(#3) ; |1099| 
        MOV *SP(#0), AR1 ; |1099| 
        BCC $C$L83,AR1 != #0 ; |1099| 
                                        ; branchcc occurs ; |1099| 
$C$DW$L$_RTC_bcdToDec$2$E:
$C$L84:    
	.dwpsn	file "src/csl_rtc.c",line 1105,column 5,is_stmt
        MOV *SP(#1), T0 ; |1105| 
	.dwpsn	file "src/csl_rtc.c",line 1106,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$149	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$149, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_rtc.asm:$C$L83:1:1714639450")
	.dwattr $C$DW$149, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x44b)
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x450)
$C$DW$150	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$150, DW_AT_low_pc($C$DW$L$_RTC_bcdToDec$2$B)
	.dwattr $C$DW$150, DW_AT_high_pc($C$DW$L$_RTC_bcdToDec$2$E)
	.dwendtag $C$DW$149

	.dwattr $C$DW$139, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x452)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"
	.global	_RTC_setCallback

$C$DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setCallback")
	.dwattr $C$DW$151, DW_AT_low_pc(_RTC_setCallback)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_RTC_setCallback")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$151, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x477)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_rtc.c",line 1146,column 1,is_stmt,address _RTC_setCallback

	.dwfde $C$DW$CIE, _RTC_setCallback
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rtcDispatchTable")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_rtcDispatchTable")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg17]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("isrAddr")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_isrAddr")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: RTC_setCallback                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setCallback:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("rtcDispatchTable")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_rtcDispatchTable")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("isrAddr")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_isrAddr")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_rtc.c",line 1147,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1147| 

        CMPU AC1 == AC0, TC1 ; |1147| 
        BCC $C$L85,TC1 ; |1147| 
                                        ; branchcc occurs ; |1147| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1147| 
        BCC $C$L85,TC1 ; |1147| 
                                        ; branchcc occurs ; |1147| 
	.dwpsn	file "src/csl_rtc.c",line 1149,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*AR3), dbl(*AR2) ; |1149| 
	.dwpsn	file "src/csl_rtc.c",line 1150,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |1150| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#2))) ; |1150| 
	.dwpsn	file "src/csl_rtc.c",line 1151,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |1151| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |1151| 
	.dwpsn	file "src/csl_rtc.c",line 1152,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |1152| 
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(short(#6))) ; |1152| 
	.dwpsn	file "src/csl_rtc.c",line 1153,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR2

        AADD #8, AR2 ; |1153| 
||      AADD #8, AR3 ; |1153| 

        MOV dbl(*AR3), dbl(*AR2) ; |1153| 
	.dwpsn	file "src/csl_rtc.c",line 1154,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR2

        AADD #10, AR2 ; |1154| 
||      AADD #10, AR3 ; |1154| 

        MOV dbl(*AR3), dbl(*AR2) ; |1154| 
	.dwpsn	file "src/csl_rtc.c",line 1155,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#0)), XAR2

        AADD #12, AR2 ; |1155| 
||      AADD #12, AR3 ; |1155| 

        MOV dbl(*AR3), dbl(*AR2) ; |1155| 
	.dwpsn	file "src/csl_rtc.c",line 1156,column 3,is_stmt
        MOV #0, T0
        B $C$L87  ; |1156| 
                                        ; branch occurs ; |1156| 
$C$L85:    
	.dwpsn	file "src/csl_rtc.c",line 1160,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1160| 
        BCC $C$L86,TC1 ; |1160| 
                                        ; branchcc occurs ; |1160| 
	.dwpsn	file "src/csl_rtc.c",line 1162,column 13,is_stmt
        MOV #-5, T0
        B $C$L87  ; |1162| 
                                        ; branch occurs ; |1162| 
$C$L86:    
	.dwpsn	file "src/csl_rtc.c",line 1166,column 13,is_stmt
        MOV #-6, T0
$C$L87:    
	.dwpsn	file "src/csl_rtc.c",line 1169,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$151, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x491)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.global	_RTC_setCompensation

$C$DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("RTC_setCompensation")
	.dwattr $C$DW$157, DW_AT_low_pc(_RTC_setCompensation)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_RTC_setCompensation")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$157, DW_AT_TI_begin_file("src/csl_rtc.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x4c4)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_rtc.c",line 1222,column 1,is_stmt,address _RTC_setCompensation

	.dwfde $C$DW$CIE, _RTC_setCompensation
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("compType")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_compType")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("compVal")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_compVal")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: RTC_setCompensation                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,TC1,M40,SATA,SATD,RDM,FRCT, *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_RTC_setCompensation:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("compType")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_compType")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("compVal")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_compVal")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("regVal")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_regVal")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#1) ; |1222| 
        MOV T0, *SP(#0) ; |1222| 
	.dwpsn	file "src/csl_rtc.c",line 1226,column 2,is_stmt
        MOV #0, *SP(#2) ; |1226| 
	.dwpsn	file "src/csl_rtc.c",line 1227,column 2,is_stmt
        MOV #0, *SP(#3) ; |1227| 
	.dwpsn	file "src/csl_rtc.c",line 1240,column 2,is_stmt
        MOV #1024, AR2 ; |1240| 
        MOV *SP(#1), AR1 ; |1240| 
        CMPU AR1 > AR2, TC1 ; |1240| 
        BCC $C$L89,TC1 ; |1240| 
                                        ; branchcc occurs ; |1240| 

        MOV #0, AR2
||      MOV *SP(#0), AR1 ; |1240| 

        CMP AR2 == AR1, TC1 ; |1240| 
        BCC $C$L88,TC1 ; |1240| 
                                        ; branchcc occurs ; |1240| 
        MOV #1, AR2
        CMP AR2 != AR1, TC1 ; |1240| 
        BCC $C$L89,TC1 ; |1240| 
                                        ; branchcc occurs ; |1240| 
$C$L88:    
	.dwpsn	file "src/csl_rtc.c",line 1253,column 3,is_stmt
        MOV *SP(#0) << #15, AC0 ; |1253| 
        AND #0x8000, AC0, AC0 ; |1253| 
        MOV AC0, *SP(#3) ; |1253| 
	.dwpsn	file "src/csl_rtc.c",line 1255,column 3,is_stmt
        MOV *SP(#1), T0 ; |1255| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_RTC_decToBcd")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #_RTC_decToBcd ; |1255| 
                                        ; call occurs [#_RTC_decToBcd] ; |1255| 
        OR *SP(#3), T0, AR1 ; |1255| 
        MOV AR1, *SP(#3) ; |1255| 
	.dwpsn	file "src/csl_rtc.c",line 1258,column 3,is_stmt
        MOV AR1, *port(#6440) ; |1258| 
	.dwpsn	file "src/csl_rtc.c",line 1259,column 2,is_stmt
        B $C$L90  ; |1259| 
                                        ; branch occurs ; |1259| 
$C$L89:    
	.dwpsn	file "src/csl_rtc.c",line 1262,column 3,is_stmt
        MOV #-6, *SP(#2) ; |1262| 
$C$L90:    
	.dwpsn	file "src/csl_rtc.c",line 1265,column 2,is_stmt
        MOV *SP(#2), T0 ; |1265| 
	.dwpsn	file "src/csl_rtc.c",line 1266,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$157, DW_AT_TI_end_file("src/csl_rtc.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x4f2)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$166	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_DAY_PERIODIC_INTERRUPT"), DW_AT_const_value(0x00)
$C$DW$167	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_HR_PERIODIC_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$168	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_MINS_PERIODIC_INTERRUPT"), DW_AT_const_value(0x02)
$C$DW$169	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_SEC_PERIODIC_INTERRUPT"), DW_AT_const_value(0x03)
$C$DW$170	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_MS_PERIODIC_INTERRUPT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RTCPeriodicInterruptType")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$171	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_MSEVENT_INTERRUPT"), DW_AT_const_value(0x00)
$C$DW$172	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_SECEVENT_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$173	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_MINSEVENT_INTERRUPT"), DW_AT_const_value(0x02)
$C$DW$174	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_HREVENT_INTERRUPT"), DW_AT_const_value(0x03)
$C$DW$175	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_DAYEVENT_INTERRUPT"), DW_AT_const_value(0x04)
$C$DW$176	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_EXTEVENT_INTERRUPT"), DW_AT_const_value(0x05)
$C$DW$177	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_ALARM_INTERRUPT"), DW_AT_const_value(0x06)
$C$DW$178	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_INTERRUPT_NONE"), DW_AT_const_value(0x07)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RTCEventType")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$179	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_COMPENSATION_NEGATIVE"), DW_AT_const_value(0x00)
$C$DW$180	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_COMPENSATION_POSITIVE"), DW_AT_const_value(0x01)
$C$DW$181	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_RTC_COMPENSATION_INVALID"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RTCCompType")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0f)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("rtcmSec")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_rtcmSec")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("rtcsec")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_rtcsec")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("rtcmin")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_rtcmin")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("rtchour")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_rtchour")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("rtcday")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_rtcday")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("rtcmonth")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_rtcmonth")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("rtcyear")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_rtcyear")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("rtcmSeca")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_rtcmSeca")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("rtcseca")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_rtcseca")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("rtcmina")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_rtcmina")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("rtchoura")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_rtchoura")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("rtcdaya")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_rtcdaya")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("rtcmontha")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_rtcmontha")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("rtcyeara")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_rtcyeara")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("rtcintcr")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_rtcintcr")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcConfig")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x04)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("hours")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_hours")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("mins")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_mins")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("secs")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_secs")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("mSecs")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_mSecs")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcTime")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x03)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("year")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_year")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("month")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_month")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("day")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_day")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcDate")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x07)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("year")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_year")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("month")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_month")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("day")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_day")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("hours")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_hours")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("mins")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_mins")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("secs")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_secs")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("mSecs")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_mSecs")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcAlarm")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0e)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$211, DW_AT_name("isr")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_isr")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcIsrDispatchTable")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x17)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0e)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$212, DW_AT_name("MilEvtAddr")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_MilEvtAddr")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$213, DW_AT_name("SecEvtAddr")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_SecEvtAddr")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$214, DW_AT_name("MinEvtAddr")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_MinEvtAddr")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$215, DW_AT_name("HourEvtAddr")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_HourEvtAddr")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$216, DW_AT_name("DayEvtAddr")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_DayEvtAddr")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$217, DW_AT_name("ExtEvtAddr")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_ExtEvtAddr")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$218, DW_AT_name("AlarmEvtAddr")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_AlarmEvtAddr")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcIsrAddr")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x17)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x66)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$219, DW_AT_name("RTCINTEN")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_RTCINTEN")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$220, DW_AT_name("RTCUPDATE")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_RTCUPDATE")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$221, DW_AT_name("RSVD0")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$222, DW_AT_name("RTCMIL")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_RTCMIL")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$223, DW_AT_name("RTCMILA")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_RTCMILA")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$224, DW_AT_name("RSVD1")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$225, DW_AT_name("RTCSEC")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_RTCSEC")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$226, DW_AT_name("RTCSECA")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_RTCSECA")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$227, DW_AT_name("RSVD2")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$228, DW_AT_name("RTCMIN")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_RTCMIN")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$229, DW_AT_name("RTCMINA")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_RTCMINA")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$230, DW_AT_name("RSVD3")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$231, DW_AT_name("RTCHOUR")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_RTCHOUR")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$232, DW_AT_name("RTCHOURA")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_RTCHOURA")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$233, DW_AT_name("RSVD4")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$234, DW_AT_name("RTCDAY")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_RTCDAY")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$235, DW_AT_name("RTCDAYA")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_RTCDAYA")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$236, DW_AT_name("RSVD5")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$237, DW_AT_name("RTCMONTH")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_RTCMONTH")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$238, DW_AT_name("RTCMONTHA")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_RTCMONTHA")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$239, DW_AT_name("RSVD6")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$240, DW_AT_name("RTCYEAR")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_RTCYEAR")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$241, DW_AT_name("RTCYEARA")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_RTCYEARA")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$242, DW_AT_name("RSVD7")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$243, DW_AT_name("RTCINTFL")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_RTCINTFL")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$244, DW_AT_name("RTCNOPWR")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_RTCNOPWR")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$245, DW_AT_name("RSVD8")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$246, DW_AT_name("RTCINTREG")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_RTCINTREG")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$247, DW_AT_name("RSVD9")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$248, DW_AT_name("RTCDRIFT")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_RTCDRIFT")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$249, DW_AT_name("RSVD10")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$250, DW_AT_name("RTCOSC")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_RTCOSC")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$251, DW_AT_name("RSVD11")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$252, DW_AT_name("RTCPMGT")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_RTCPMGT")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$253, DW_AT_name("RSVD12")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$254, DW_AT_name("RTCSCR1")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_RTCSCR1")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$255, DW_AT_name("RTCSCR2")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_RTCSCR2")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$256, DW_AT_name("RSVD13")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$257, DW_AT_name("RTCSCR3")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_RTCSCR3")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$258, DW_AT_name("RTCSCR4")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_RTCSCR4")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcRegs")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$259	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$54)
$C$DW$260	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$259)
$C$DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$260)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x10)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RtcRegsOvly")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_RTCCallBackPtr")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x0e)
$C$DW$261	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$261, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$27

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$262	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
$C$DW$T$30	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$262)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$263	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$263, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x03)
$C$DW$264	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$264, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x2f)
$C$DW$265	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$265, DW_AT_upper_bound(0x2e)
	.dwendtag $C$DW$T$33

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$14, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$14, DW_AT_bit_offset(0x18)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$15, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$15, DW_AT_bit_offset(0x18)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 91
	.dwcfi	cfa_register, 36
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg0]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg1]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg2]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg3]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg4]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg5]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg6]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg7]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg8]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg9]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg10]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg11]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg12]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg13]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg14]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg15]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg16]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg17]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg18]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg19]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg20]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg21]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg22]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg23]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg24]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg25]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg26]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg27]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg28]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg29]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg30]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg31]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x20]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x21]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x22]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x23]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x24]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x25]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x26]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x27]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x28]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x29]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x30]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x31]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x32]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x33]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x34]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x35]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x36]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x37]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x38]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x39]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x40]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x41]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x42]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x43]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x44]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x45]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x46]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x47]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x48]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x49]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x50]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x51]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x52]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x53]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x54]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x55]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x56]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x57]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x58]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x59]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

