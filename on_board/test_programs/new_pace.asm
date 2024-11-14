;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sun Oct 13 20:42:27 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./pace/pace.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$5


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$30)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$30)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$30)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$40)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$14

	.sect	".const:_$P$T0$1"
	.clink
	.align	1
_$P$T0$1:
	CALL #_coverage_log;
	.field	0,16			; _$P$T0$1[0] @ 0
	.field	0,16			; _$P$T0$1[1] @ 16
	.field	0,16			; _$P$T0$1[2] @ 32
	.field	0,16			; _$P$T0$1[3] @ 48
	.field	0,16			; _$P$T0$1[4] @ 64
	.field	0,16			; _$P$T0$1[5] @ 80
	.field	255,16			; _$P$T0$1[6] @ 96
	.field	0,16			; _$P$T0$1[7] @ 112
	.field	0,16			; _$P$T0$1[8] @ 128
	.field	0,16			; _$P$T0$1[9] @ 144
	.field	0,16			; _$P$T0$1[10] @ 160
	.field	0,16			; _$P$T0$1[11] @ 176
	.field	0,16			; _$P$T0$1[12] @ 192
	.field	0,16			; _$P$T0$1[13] @ 208
	.field	0,16			; _$P$T0$1[14] @ 224
	.field	0,16			; _$P$T0$1[15] @ 240

$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_$P$T0$1")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _$P$T0$1]
	.sect	".const:_$P$T1$2"
	.clink
	.align	1
_$P$T1$2:
	CALL #_coverage_log;
	.field	-10,16			; _$P$T1$2[0] @ 0
	.field	-10,16			; _$P$T1$2[1] @ 16
	.field	-10,16			; _$P$T1$2[2] @ 32
	.field	-10,16			; _$P$T1$2[3] @ 48
	.field	-10,16			; _$P$T1$2[4] @ 64
	.field	-10,16			; _$P$T1$2[5] @ 80
	.field	255,16			; _$P$T1$2[6] @ 96
	.field	-10,16			; _$P$T1$2[7] @ 112
	.field	-10,16			; _$P$T1$2[8] @ 128
	.field	-10,16			; _$P$T1$2[9] @ 144
	.field	-10,16			; _$P$T1$2[10] @ 160
	.field	-10,16			; _$P$T1$2[11] @ 176
	.field	-10,16			; _$P$T1$2[12] @ 192
	.field	-10,16			; _$P$T1$2[13] @ 208
	.field	-10,16			; _$P$T1$2[14] @ 224
	.field	-10,16			; _$P$T1$2[15] @ 240

$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("$P$T1$2")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_$P$T1$2")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _$P$T1$2]
	.sect	".const:_$P$T2$3"
	.clink
	.align	1
_$P$T2$3:
	CALL #_coverage_log;
	.field	25,16			; _$P$T2$3[0] @ 0
	.field	43,16			; _$P$T2$3[1] @ 16
	.field	76,16			; _$P$T2$3[2] @ 32
	.field	43,16			; _$P$T2$3[3] @ 48
	.field	52,16			; _$P$T2$3[4] @ 64
	.field	12,16			; _$P$T2$3[5] @ 80
	.field	90,16			; _$P$T2$3[6] @ 96
	.field	1,16			; _$P$T2$3[7] @ 112
	.field	42,16			; _$P$T2$3[8] @ 128
	.field	36,16			; _$P$T2$3[9] @ 144
	.field	100,16			; _$P$T2$3[10] @ 160
	.field	23,16			; _$P$T2$3[11] @ 176
	.field	43,16			; _$P$T2$3[12] @ 192
	.field	123,16			; _$P$T2$3[13] @ 208
	.field	54,16			; _$P$T2$3[14] @ 224
	.space	16

$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("$P$T2$3")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_$P$T2$3")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _$P$T2$3]
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/57605dhilMW 
	.sect	".text"
	.ref _coverage_log;
	.global	_pace_test

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("pace_test")
	.dwattr $C$DW$23, DW_AT_low_pc(_pace_test)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_pace_test")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$23, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x40)
	.dwpsn	file "./pace/pace.c",line 65,column 53,is_stmt,address _pace_test

	.dwfde $C$DW$CIE, _pace_test
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_data")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_raw_data")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg17]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: pace_test                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CSR,*
;*                        RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 64 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (62 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_pace_test:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-63, SP
	.dwcfi	cfa_offset, 64
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("raw_data")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_raw_data")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("numPeaks")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_numPeaks")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("lowPassImpulse")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_lowPassImpulse")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("highPassImpulse")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_highPassImpulse")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("filterCoefficient")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_filterCoefficient")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("inputBuf")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_inputBuf")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 54]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 56]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("dataBuf")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 58]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("des")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_des")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 60]
        MOV T0, *SP(#2) ; |65| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 69,column 13,is_stmt
        MOV #0, *SP(#4) ; |69| 
	.dwpsn	file "./pace/pace.c",line 70,column 11,is_stmt
        MOV #0, *SP(#5) ; |70| 
	.dwpsn	file "./pace/pace.c",line 76,column 10,is_stmt
        AMOV #_$P$T0$1, XAR3 ; |76| 

        RPT #15   ; |76| 
||      AMAR *SP(#6), XAR2

                                            ; loop starts ; |76| 
$C$L1:    
$C$DW$L$_pace_test$2$B:
            MOV *AR3+, *AR2+ ; |76| 
                                        ; loop ends ; |76| 
$C$DW$L$_pace_test$2$E:
$C$L2:    
	.dwpsn	file "./pace/pace.c",line 79,column 10,is_stmt
        AMOV #_$P$T1$2, XAR3 ; |79| 

        RPT #15   ; |79| 
||      AMAR *SP(#22), XAR2

                                            ; loop starts ; |79| 
$C$L3:    
$C$DW$L$_pace_test$4$B:
            MOV *AR3+, *AR2+ ; |79| 
                                        ; loop ends ; |79| 
$C$DW$L$_pace_test$4$E:
$C$L4:    
	.dwpsn	file "./pace/pace.c",line 82,column 10,is_stmt
        AMOV #_$P$T2$3, XAR3 ; |82| 

        RPT #15   ; |82| 
||      AMAR *SP(#38), XAR2

                                            ; loop starts ; |82| 
$C$L5:    
$C$DW$L$_pace_test$6$B:
            MOV *AR3+, *AR2+ ; |82| 
                                        ; loop ends ; |82| 
$C$DW$L$_pace_test$6$E:
$C$L6:    
	.dwpsn	file "./pace/pace.c",line 85,column 5,is_stmt
        MOV #48, AR2 ; |85| 
        MOV *SP(#2), AR1 ; |85| 
        CMPU AR1 >= AR2, TC1 ; |85| 
        BCC $C$L7,TC1 ; |85| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |85| 
	.dwpsn	file "./pace/pace.c",line 86,column 9,is_stmt
        MOV #-1, T0
        B $C$L26  ; |86| 
                                        ; branch occurs ; |86| 
$C$L7:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 89,column 9,is_stmt
        MOV #0, *SP(#3) ; |89| 
	.dwpsn	file "./pace/pace.c",line 89,column 16,is_stmt
        MOV *SP(#2), AR1 ; |89| 
        MOV *SP(#3), AR2 ; |89| 
        CMPU AR2 >= AR1, TC1 ; |89| 
        BCC $C$L11,TC1 ; |89| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |89| 
$C$L8:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$10$B:
	.dwpsn	file "./pace/pace.c",line 90,column 9,is_stmt
        MOV *SP(#3), T0 ; |90| 
        MOV dbl(*SP(#0)), XAR3
        MOV #32767, AR2 ; |90| 
        MOV *AR3(T0), AR1 ; |90| 
        CMP AR1 < AR2, TC1 ; |90| 
        BCC $C$L9,TC1 ; |90| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |90| 
$C$DW$L$_pace_test$10$E:
	.dwpsn	file "./pace/pace.c",line 91,column 13,is_stmt
        MOV #-1, T0
        B $C$L26  ; |91| 
                                        ; branch occurs ; |91| 
$C$L9:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$13$B:
	.dwpsn	file "./pace/pace.c",line 93,column 14,is_stmt
        MOV *AR3(T0), AR1 ; |93| 
        BCC $C$L10,AR1 > #0 ; |93| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |93| 
$C$DW$L$_pace_test$13$E:
	.dwpsn	file "./pace/pace.c",line 94,column 13,is_stmt
        MOV #-1, T0
        B $C$L26  ; |94| 
                                        ; branch occurs ; |94| 
$C$L10:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$15$B:
	.dwpsn	file "./pace/pace.c",line 89,column 26,is_stmt
        ADD #1, *SP(#3) ; |89| 
	.dwpsn	file "./pace/pace.c",line 89,column 16,is_stmt
        MOV *SP(#2), AR1 ; |89| 
        MOV *SP(#3), AR2 ; |89| 
        CMPU AR2 < AR1, TC1 ; |89| 
        BCC $C$L8,TC1 ; |89| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |89| 
$C$DW$L$_pace_test$15$E:
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 97,column 12,is_stmt
        MOV #48, T0 ; |97| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_calloc")
	.dwattr $C$DW$38, DW_AT_TI_call

        CALL #_calloc ; |97| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |97| 
        MOV XAR0, dbl(*SP(#54))
	.dwpsn	file "./pace/pace.c",line 98,column 12,is_stmt
        MOV #32, T0 ; |98| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_calloc")
	.dwattr $C$DW$39, DW_AT_TI_call

        CALL #_calloc ; |98| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |98| 
        MOV XAR0, dbl(*SP(#56))
	.dwpsn	file "./pace/pace.c",line 99,column 12,is_stmt
        MOV #32, T0 ; |99| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_calloc")
	.dwattr $C$DW$40, DW_AT_TI_call

        CALL #_calloc ; |99| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |99| 
        MOV XAR0, dbl(*SP(#58))
	.dwpsn	file "./pace/pace.c",line 100,column 12,is_stmt
        MOV #32, T0 ; |100| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_calloc")
	.dwattr $C$DW$41, DW_AT_TI_call

        CALL #_calloc ; |100| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |100| 
        MOV XAR0, dbl(*SP(#60))
	.dwpsn	file "./pace/pace.c",line 101,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#54)), XAR2
        RPT #47   ; |101| 
                                            ; loop starts ; |101| 
$C$L12:    
$C$DW$L$_pace_test$17$B:
            MOV *AR3+, *AR2+ ; |101| 
                                        ; loop ends ; |101| 
$C$DW$L$_pace_test$17$E:
$C$L13:    
	.dwpsn	file "./pace/pace.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#56)), XAR0
        MOV #32, T1 ; |102| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_memset")
	.dwattr $C$DW$42, DW_AT_TI_call

        CALL #_memset ; |102| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |102| 
	.dwpsn	file "./pace/pace.c",line 103,column 5,is_stmt
        MOV *SP(#2), AR1 ; |103| 
        MOV dbl(*SP(#58)), XAR0
        ADD #16, AR1, T1 ; |103| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_memset")
	.dwattr $C$DW$43, DW_AT_TI_call

        CALL #_memset ; |103| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |103| 
	.dwpsn	file "./pace/pace.c",line 104,column 5,is_stmt
        MOV *SP(#2), T1 ; |104| 
        MOV dbl(*SP(#60)), XAR0
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_memset")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL #_memset ; |104| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |104| 
	.dwpsn	file "./pace/pace.c",line 109,column 5,is_stmt
        MOV #16, T1 ; |109| 
        MOV #32, T0 ; |109| 
        MOV dbl(*SP(#54)), XAR0
        MOV dbl(*SP(#58)), XAR2
        AMAR *SP(#6), XAR1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_convol")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_convol ; |109| 
                                        ; call occurs [#_convol] ; |109| 
        MOV T0, *SP(#5) ; |109| 
	.dwpsn	file "./pace/pace.c",line 110,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L14,AR1 == #0 ; |110| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |110| 
	.dwpsn	file "./pace/pace.c",line 111,column 9,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_free")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_free ; |111| 
                                        ; call occurs [#_free] ; |111| 
	.dwpsn	file "./pace/pace.c",line 112,column 9,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_free")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_free ; |112| 
                                        ; call occurs [#_free] ; |112| 
	.dwpsn	file "./pace/pace.c",line 113,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_free")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_free ; |113| 
                                        ; call occurs [#_free] ; |113| 
	.dwpsn	file "./pace/pace.c",line 114,column 9,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_free")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_free ; |114| 
                                        ; call occurs [#_free] ; |114| 
	.dwpsn	file "./pace/pace.c",line 115,column 9,is_stmt
        MOV #-1, T0
        B $C$L26  ; |115| 
                                        ; branch occurs ; |115| 
$C$L14:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 117,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#54)), XAR2
        RPT #47   ; |117| 
                                            ; loop starts ; |117| 
$C$L15:    
$C$DW$L$_pace_test$21$B:
            MOV *AR3+, *AR2+ ; |117| 
                                        ; loop ends ; |117| 
$C$DW$L$_pace_test$21$E:
$C$L16:    
	.dwpsn	file "./pace/pace.c",line 119,column 5,is_stmt
        MOV dbl(*SP(#54)), XAR0
        AMAR *SP(#22), XAR1
        MOV dbl(*SP(#56)), XAR2
        MOV #16, T1 ; |119| 
        MOV #32, T0 ; |119| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_convol")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_convol ; |119| 
                                        ; call occurs [#_convol] ; |119| 
        MOV T0, *SP(#5) ; |119| 
	.dwpsn	file "./pace/pace.c",line 120,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L17,AR1 == #0 ; |120| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |120| 
	.dwpsn	file "./pace/pace.c",line 121,column 9,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_free")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #_free ; |121| 
                                        ; call occurs [#_free] ; |121| 
	.dwpsn	file "./pace/pace.c",line 122,column 9,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_free")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_free ; |122| 
                                        ; call occurs [#_free] ; |122| 
	.dwpsn	file "./pace/pace.c",line 123,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_free")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_free ; |123| 
                                        ; call occurs [#_free] ; |123| 
	.dwpsn	file "./pace/pace.c",line 124,column 9,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_free")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_free ; |124| 
                                        ; call occurs [#_free] ; |124| 
	.dwpsn	file "./pace/pace.c",line 125,column 9,is_stmt
        MOV #-1, T0
        B $C$L26  ; |125| 
                                        ; branch occurs ; |125| 
$C$L17:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 129,column 9,is_stmt
        MOV #0, *SP(#3) ; |129| 
	.dwpsn	file "./pace/pace.c",line 129,column 14,is_stmt
        MOV #32, AR2 ; |129| 
        MOV *SP(#3), AR1 ; |129| 
        CMP AR1 >= AR2, TC1 ; |129| 
        BCC $C$L19,TC1 ; |129| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |129| 
$C$L18:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$25$B:
	.dwpsn	file "./pace/pace.c",line 130,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR3
        MOV AR1, T0
        MOV dbl(*SP(#56)), XAR2
        AADD AR1, AR3 ; |130| 
        ADD *AR2(T0), *AR3, AC0 ; |130| 
        MOV dbl(*SP(#56)), XAR3
        MOV HI(AC0), *AR3(T0)
	.dwpsn	file "./pace/pace.c",line 131,column 9,is_stmt
        MOV *SP(#3), T0 ; |131| 
        MOV dbl(*SP(#58)), XAR3
        MOV #0, *AR3(T0) ; |131| 
	.dwpsn	file "./pace/pace.c",line 129,column 21,is_stmt
        ADD #1, *SP(#3) ; |129| 
	.dwpsn	file "./pace/pace.c",line 129,column 14,is_stmt
        MOV #32, AR2 ; |129| 
        MOV *SP(#3), AR1 ; |129| 
        CMP AR1 < AR2, TC1 ; |129| 
        BCC $C$L18,TC1 ; |129| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |129| 
$C$DW$L$_pace_test$25$E:
$C$L19:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 142,column 5,is_stmt
        MOV dbl(*SP(#56)), XAR0
        MOV dbl(*SP(#60)), XAR1
        MOV #32, T0 ; |142| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_pan_tomkins")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_pan_tomkins ; |142| 
                                        ; call occurs [#_pan_tomkins] ; |142| 
	.dwpsn	file "./pace/pace.c",line 144,column 9,is_stmt
        MOV #0, *SP(#3) ; |144| 
	.dwpsn	file "./pace/pace.c",line 144,column 16,is_stmt
        MOV #32, AR2 ; |144| 
        MOV *SP(#3), AR1 ; |144| 
        CMP AR1 >= AR2, TC1 ; |144| 
        BCC $C$L22,TC1 ; |144| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |144| 
$C$L20:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$27$B:
	.dwpsn	file "./pace/pace.c",line 145,column 9,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#60)), XAR3
        MOV *AR3(T0), AR1 ; |145| 
        BCC $C$L21,AR1 <= #0 ; |145| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |145| 
$C$DW$L$_pace_test$27$E:
$C$DW$L$_pace_test$28$B:
	.dwpsn	file "./pace/pace.c",line 146,column 13,is_stmt
        ADD #1, *SP(#4) ; |146| 
$C$DW$L$_pace_test$28$E:
$C$L21:    
	CALL #_coverage_log;
$C$DW$L$_pace_test$29$B:
	.dwpsn	file "./pace/pace.c",line 144,column 24,is_stmt
        ADD #1, *SP(#3) ; |144| 
	.dwpsn	file "./pace/pace.c",line 144,column 16,is_stmt
        MOV *SP(#3), AR1 ; |144| 
        CMP AR1 < AR2, TC1 ; |144| 
        BCC $C$L20,TC1 ; |144| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |144| 
$C$DW$L$_pace_test$29$E:
$C$L22:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 149,column 5,is_stmt
        MOV *SP(#4), AR1 ; |149| 
        BCC $C$L23,AR1 != #0 ; |149| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |149| 
	.dwpsn	file "./pace/pace.c",line 150,column 9,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_free")
	.dwattr $C$DW$56, DW_AT_TI_call
        CALL #_free ; |150| 
                                        ; call occurs [#_free] ; |150| 
	.dwpsn	file "./pace/pace.c",line 151,column 9,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_free")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_free ; |151| 
                                        ; call occurs [#_free] ; |151| 
	.dwpsn	file "./pace/pace.c",line 152,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_free")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_free ; |152| 
                                        ; call occurs [#_free] ; |152| 
	.dwpsn	file "./pace/pace.c",line 153,column 9,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_free")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_free ; |153| 
                                        ; call occurs [#_free] ; |153| 
	.dwpsn	file "./pace/pace.c",line 155,column 9,is_stmt
        MOV #-1, T0
        B $C$L26  ; |155| 
                                        ; branch occurs ; |155| 
$C$L23:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 158,column 5,is_stmt
        MOV #5, AR2
        CMP AR1 >= AR2, TC1 ; |158| 
        BCC $C$L24,TC1 ; |158| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |158| 
	.dwpsn	file "./pace/pace.c",line 160,column 9,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_free")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #_free ; |160| 
                                        ; call occurs [#_free] ; |160| 
	.dwpsn	file "./pace/pace.c",line 161,column 9,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_free")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_free ; |161| 
                                        ; call occurs [#_free] ; |161| 
	.dwpsn	file "./pace/pace.c",line 162,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_free")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_free ; |162| 
                                        ; call occurs [#_free] ; |162| 
	.dwpsn	file "./pace/pace.c",line 163,column 9,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_free")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_free ; |163| 
                                        ; call occurs [#_free] ; |163| 
	.dwpsn	file "./pace/pace.c",line 164,column 9,is_stmt
        MOV #1, T0
        B $C$L26  ; |164| 
                                        ; branch occurs ; |164| 
$C$L24:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 169,column 10,is_stmt
        CMP AR1 <= AR2, TC1 ; |169| 
        BCC $C$L25,TC1 ; |169| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |169| 
	.dwpsn	file "./pace/pace.c",line 171,column 9,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_free ; |171| 
                                        ; call occurs [#_free] ; |171| 
	.dwpsn	file "./pace/pace.c",line 172,column 9,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_free")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_free ; |172| 
                                        ; call occurs [#_free] ; |172| 
	.dwpsn	file "./pace/pace.c",line 173,column 9,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_free")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_free ; |173| 
                                        ; call occurs [#_free] ; |173| 
	.dwpsn	file "./pace/pace.c",line 174,column 9,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_free")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_free ; |174| 
                                        ; call occurs [#_free] ; |174| 
	.dwpsn	file "./pace/pace.c",line 175,column 9,is_stmt
        MOV #0, T0
        B $C$L26  ; |175| 
                                        ; branch occurs ; |175| 
$C$L25:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 181,column 5,is_stmt
        MOV dbl(*SP(#54)), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_free")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_free ; |181| 
                                        ; call occurs [#_free] ; |181| 
	.dwpsn	file "./pace/pace.c",line 182,column 5,is_stmt
        MOV dbl(*SP(#56)), XAR0
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_free")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_free ; |182| 
                                        ; call occurs [#_free] ; |182| 
	.dwpsn	file "./pace/pace.c",line 183,column 5,is_stmt
        MOV dbl(*SP(#58)), XAR0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_free")
	.dwattr $C$DW$70, DW_AT_TI_call
        CALL #_free ; |183| 
                                        ; call occurs [#_free] ; |183| 
	.dwpsn	file "./pace/pace.c",line 184,column 5,is_stmt
        MOV dbl(*SP(#60)), XAR0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_free")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #_free ; |184| 
                                        ; call occurs [#_free] ; |184| 
	.dwpsn	file "./pace/pace.c",line 186,column 5,is_stmt
        MOV #0, T0
$C$L26:    
	.dwpsn	file "./pace/pace.c",line 187,column 1,is_stmt
        AADD #63, SP
	.dwcfi	cfa_offset, 1
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L20:1:1728866547")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x94)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_pace_test$27$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_pace_test$27$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_pace_test$28$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_pace_test$28$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_pace_test$29$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_pace_test$29$E)
	.dwendtag $C$DW$73


$C$DW$77	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$77, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L18:1:1728866547")
	.dwattr $C$DW$77, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x84)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_pace_test$25$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_pace_test$25$E)
	.dwendtag $C$DW$77


$C$DW$79	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$79, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L15:1:1728866547")
	.dwattr $C$DW$79, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x75)
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x75)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_pace_test$21$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_pace_test$21$E)
	.dwendtag $C$DW$79


$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L12:1:1728866547")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x65)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_pace_test$17$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_pace_test$17$E)
	.dwendtag $C$DW$81


$C$DW$83	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$83, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L8:1:1728866547")
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x59)
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x60)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_pace_test$10$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_pace_test$10$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_pace_test$13$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_pace_test$13$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_pace_test$15$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_pace_test$15$E)
	.dwendtag $C$DW$83


$C$DW$87	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$87, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L5:1:1728866547")
	.dwattr $C$DW$87, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x52)
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x52)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_pace_test$6$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_pace_test$6$E)
	.dwendtag $C$DW$87


$C$DW$89	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$89, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L3:1:1728866547")
	.dwattr $C$DW$89, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x4f)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_pace_test$4$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_pace_test$4$E)
	.dwendtag $C$DW$89


$C$DW$91	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$91, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L1:1:1728866547")
	.dwattr $C$DW$91, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x4c)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_pace_test$2$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_pace_test$2$E)
	.dwendtag $C$DW$91

	.dwattr $C$DW$23, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xbb)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.global	_derivative

$C$DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("derivative")
	.dwattr $C$DW$93, DW_AT_low_pc(_derivative)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_derivative")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$93, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./pace/pace.c",line 220,column 63,is_stmt,address _derivative

	.dwfde $C$DW$CIE, _derivative
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg17]
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg19]
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: derivative                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_derivative:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |220| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 224,column 10,is_stmt
        MOV #4, *SP(#5) ; |224| 
	.dwpsn	file "./pace/pace.c",line 224,column 17,is_stmt
        MOV *SP(#5), AR2 ; |224| 
        MOV *SP(#4), AR1 ; |224| 
        CMPU AR2 >= AR1, TC1 ; |224| 
        BCC $C$L28,TC1 ; |224| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |224| 
$C$L27:    
	CALL #_coverage_log;
$C$DW$L$_derivative$2$B:
	.dwpsn	file "./pace/pace.c",line 225,column 9,is_stmt
        MOV *SP(#5), T0 ; |225| 
        MOV AR2, AR1
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AR1 ; |225| 

        MOV AR1, T0 ; |225| 
||      MOV *AR2(T0), AR2 ; |225| 

        SFTL AR2, #1 ; |225| 
        ADD *AR3(T0), AR2, AR1 ; |225| 
        MOV *SP(#5), T0 ; |225| 
        SUB #3, T0 ; |225| 
        SUB *AR3(T0), AR1, AR1 ; |225| 
        MOV *SP(#5), T0 ; |225| 
        SUB #4, T0 ; |225| 
        MOV *AR3(T0), AR2 ; |225| 
        SFTL AR2, #1 ; |225| 
        SUB AR2, AR1 ; |225| 
        MOV AR1, AC0
        MOV AC0, dbl(*SP(#6)) ; |225| 
	.dwpsn	file "./pace/pace.c",line 226,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |226| 
        MOV *SP(#5), T0 ; |226| 
        MOV dbl(*SP(#2)), XAR3
        SFTS AC0, #-2, AC1 ; |226| 
        SFTL AC1, #-29, AC1 ; |226| 
        ADD AC0, AC1 ; |226| 
        SFTS AC1, #-3, AC0 ; |226| 
        MOV AC0, *AR3(T0) ; |226| 
	.dwpsn	file "./pace/pace.c",line 224,column 29,is_stmt
        ADD #1, *SP(#5) ; |224| 
	.dwpsn	file "./pace/pace.c",line 224,column 17,is_stmt
        MOV *SP(#4), AR1 ; |224| 
        MOV *SP(#5), AR2 ; |224| 
        CMPU AR2 < AR1, TC1 ; |224| 
        BCC $C$L27,TC1 ; |224| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |224| 
$C$DW$L$_derivative$2$E:
$C$L28:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 229,column 10,is_stmt
        MOV #0, *SP(#5) ; |229| 
	.dwpsn	file "./pace/pace.c",line 229,column 17,is_stmt

        MOV *SP(#5), AR1 ; |229| 
||      MOV #4, AR2

        CMPU AR1 >= AR2, TC1 ; |229| 
        BCC $C$L30,TC1 ; |229| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |229| 
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_derivative$4$B:
	.dwpsn	file "./pace/pace.c",line 230,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), T0 ; |230| 
        MOV #0, *AR3(T0) ; |230| 
	.dwpsn	file "./pace/pace.c",line 229,column 24,is_stmt
        ADD #1, *SP(#5) ; |229| 
	.dwpsn	file "./pace/pace.c",line 229,column 17,is_stmt
        MOV *SP(#5), AR1 ; |229| 
        CMPU AR1 < AR2, TC1 ; |229| 
        BCC $C$L29,TC1 ; |229| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |229| 
$C$DW$L$_derivative$4$E:
	.dwpsn	file "./pace/pace.c",line 232,column 1,is_stmt
$C$L30:    
	CALL #_coverage_log;
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$103	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$103, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L29:1:1728866547")
	.dwattr $C$DW$103, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0xe5)
	.dwattr $C$DW$103, DW_AT_TI_end_line(0xe7)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_derivative$4$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_derivative$4$E)
	.dwendtag $C$DW$103


$C$DW$105	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$105, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L27:1:1728866547")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0xe0)
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xe3)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_derivative$2$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_derivative$2$E)
	.dwendtag $C$DW$105

	.dwattr $C$DW$93, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0xe8)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text"
	.global	_squaring

$C$DW$107	.dwtag  DW_TAG_subprogram, DW_AT_name("squaring")
	.dwattr $C$DW$107, DW_AT_low_pc(_squaring)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_squaring")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./pace/pace.c",line 233,column 60,is_stmt,address _squaring

	.dwfde $C$DW$CIE, _squaring
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg17]
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg19]
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: squaring                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_squaring:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |233| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 236,column 10,is_stmt
        MOV #0, *SP(#5) ; |236| 
	.dwpsn	file "./pace/pace.c",line 236,column 17,is_stmt
        MOV *SP(#5), AR2 ; |236| 
        MOV *SP(#4), AR1 ; |236| 
        CMPU AR2 >= AR1, TC1 ; |236| 
        BCC $C$L32,TC1 ; |236| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |236| 
$C$L31:    
	CALL #_coverage_log;
$C$DW$L$_squaring$2$B:
	.dwpsn	file "./pace/pace.c",line 237,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), T0 ; |237| 
        MOV T0, AR1
        MOV dbl(*SP(#0)), XAR2
        AADD AR1, AR3 ; |237| 
        MPYM *AR3, *AR2(T0), AC0 ; |237| 
        MOV mmap(AC0L), AC0 ; |237| 
        MOV AC0, dbl(*SP(#6)) ; |237| 
	.dwpsn	file "./pace/pace.c",line 238,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), T0 ; |238| 
        MOV *SP(#7), AR1 ; |238| 
        MOV AR1, *AR3(T0) ; |238| 
	.dwpsn	file "./pace/pace.c",line 236,column 29,is_stmt
        ADD #1, *SP(#5) ; |236| 
	.dwpsn	file "./pace/pace.c",line 236,column 17,is_stmt
        MOV *SP(#4), AR1 ; |236| 
        MOV *SP(#5), AR2 ; |236| 
        CMPU AR2 < AR1, TC1 ; |236| 
        BCC $C$L31,TC1 ; |236| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |236| 
$C$DW$L$_squaring$2$E:
	.dwpsn	file "./pace/pace.c",line 240,column 1,is_stmt
$C$L32:    
	CALL #_coverage_log;
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$117	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$117, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L31:1:1728866547")
	.dwattr $C$DW$117, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0xec)
	.dwattr $C$DW$117, DW_AT_TI_end_line(0xef)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_squaring$2$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_squaring$2$E)
	.dwendtag $C$DW$117

	.dwattr $C$DW$107, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.global	_moving_window_integration

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("moving_window_integration")
	.dwattr $C$DW$119, DW_AT_low_pc(_moving_window_integration)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_moving_window_integration")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0xf1)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./pace/pace.c",line 241,column 99,is_stmt,address _moving_window_integration

	.dwfde $C$DW$CIE, _moving_window_integration
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg17]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg19]
$C$DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]
$C$DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("window_size")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_window_size")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: moving_window_integration                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_moving_window_integration:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("window_size")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_window_size")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T1, *SP(#5) ; |241| 
        MOV T0, *SP(#4) ; |241| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 242,column 13,is_stmt
        MOV #0, *SP(#6) ; |242| 
	.dwpsn	file "./pace/pace.c",line 243,column 13,is_stmt
        MOV #0, AC0 ; |243| 
        MOV AC0, dbl(*SP(#8)) ; |243| 
	.dwpsn	file "./pace/pace.c",line 244,column 10,is_stmt
        MOV #0, *SP(#6) ; |244| 
	.dwpsn	file "./pace/pace.c",line 244,column 17,is_stmt
        MOV *SP(#6), AR2 ; |244| 
        MOV *SP(#4), AR1 ; |244| 
        CMPU AR2 >= AR1, TC1 ; |244| 
        BCC $C$L35,TC1 ; |244| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |244| 
$C$L33:    
	CALL #_coverage_log;
$C$DW$L$_moving_window_integration$2$B:
	.dwpsn	file "./pace/pace.c",line 245,column 9,is_stmt
        MOV *SP(#6), T0 ; |245| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AC0 ; |245| 
        ADD dbl(*SP(#8)), AC0, AC0 ; |245| 
        MOV AC0, dbl(*SP(#8)) ; |245| 
	.dwpsn	file "./pace/pace.c",line 246,column 9,is_stmt
        MOV *SP(#5), AR1 ; |246| 
        MOV *SP(#6), AR2 ; |246| 
        CMPU AR2 < AR1, TC1 ; |246| 
        BCC $C$L34,TC1 ; |246| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |246| 
$C$DW$L$_moving_window_integration$2$E:
$C$DW$L$_moving_window_integration$3$B:
	.dwpsn	file "./pace/pace.c",line 247,column 13,is_stmt
        SUB AR1, *SP(#6), T0 ; |247| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AC0 ; |247| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |247| 
        MOV AC0, dbl(*SP(#8)) ; |247| 
$C$DW$L$_moving_window_integration$3$E:
$C$L34:    
	CALL #_coverage_log;
$C$DW$L$_moving_window_integration$4$B:
	.dwpsn	file "./pace/pace.c",line 249,column 9,is_stmt
        MOV uns(*SP(#5)), AC1 ; |249| 
        MOV dbl(*SP(#8)), AC0 ; |249| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__divli")
	.dwattr $C$DW$130, DW_AT_TI_call
        CALL #__divli ; |249| 
                                        ; call occurs [#__divli] ; |249| 
        MOV *SP(#6), T0 ; |249| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |249| 
	.dwpsn	file "./pace/pace.c",line 244,column 29,is_stmt
        ADD #1, *SP(#6) ; |244| 
	.dwpsn	file "./pace/pace.c",line 244,column 17,is_stmt
        MOV *SP(#4), AR1 ; |244| 
        MOV *SP(#6), AR2 ; |244| 
        CMPU AR2 < AR1, TC1 ; |244| 
        BCC $C$L33,TC1 ; |244| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |244| 
$C$DW$L$_moving_window_integration$4$E:
$C$L35:    
	CALL #_coverage_log;
	.dwpsn	file "./pace/pace.c",line 252,column 10,is_stmt
        MOV #0, *SP(#6) ; |252| 
	.dwpsn	file "./pace/pace.c",line 252,column 17,is_stmt
        MOV *SP(#5), AR1 ; |252| 
        MOV *SP(#6), AR2 ; |252| 
        CMPU AR2 >= AR1, TC1 ; |252| 
        BCC $C$L37,TC1 ; |252| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |252| 
$C$L36:    
	CALL #_coverage_log;
$C$DW$L$_moving_window_integration$6$B:
	.dwpsn	file "./pace/pace.c",line 253,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), T0 ; |253| 
        MOV #0, *AR3(T0) ; |253| 
	.dwpsn	file "./pace/pace.c",line 252,column 34,is_stmt
        ADD #1, *SP(#6) ; |252| 
	.dwpsn	file "./pace/pace.c",line 252,column 17,is_stmt
        MOV *SP(#5), AR1 ; |252| 
        MOV *SP(#6), AR2 ; |252| 
        CMPU AR2 < AR1, TC1 ; |252| 
        BCC $C$L36,TC1 ; |252| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |252| 
$C$DW$L$_moving_window_integration$6$E:
	.dwpsn	file "./pace/pace.c",line 255,column 1,is_stmt
$C$L37:    
	CALL #_coverage_log;
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$132	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$132, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L36:1:1728866547")
	.dwattr $C$DW$132, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$132, DW_AT_TI_end_line(0xfe)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_moving_window_integration$6$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_moving_window_integration$6$E)
	.dwendtag $C$DW$132


$C$DW$134	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$134, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L33:1:1728866547")
	.dwattr $C$DW$134, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$134, DW_AT_TI_end_line(0xfa)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_moving_window_integration$2$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_moving_window_integration$2$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_moving_window_integration$3$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_moving_window_integration$3$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_moving_window_integration$4$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_moving_window_integration$4$E)
	.dwendtag $C$DW$134

	.dwattr $C$DW$119, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.global	_detect_peaks

$C$DW$138	.dwtag  DW_TAG_subprogram, DW_AT_name("detect_peaks")
	.dwattr $C$DW$138, DW_AT_low_pc(_detect_peaks)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_detect_peaks")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x100)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./pace/pace.c",line 256,column 91,is_stmt,address _detect_peaks

	.dwfde $C$DW$CIE, _detect_peaks
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg17]
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg19]
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("intial_threshold")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_intial_threshold")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: detect_peaks                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_detect_peaks:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("intial_threshold")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_intial_threshold")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("threshold")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("peak")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_peak")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T1, *SP(#5) ; |256| 
        MOV T0, *SP(#4) ; |256| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 258,column 13,is_stmt
        MOV *SP(#5), AR1 ; |258| 
        MOV AR1, *SP(#7) ; |258| 
	.dwpsn	file "./pace/pace.c",line 259,column 13,is_stmt
        MOV #0, *SP(#8) ; |259| 
	.dwpsn	file "./pace/pace.c",line 261,column 10,is_stmt
        MOV #0, *SP(#6) ; |261| 
	.dwpsn	file "./pace/pace.c",line 261,column 17,is_stmt
        MOV *SP(#6), AR2 ; |261| 
        MOV *SP(#4), AR1 ; |261| 
        CMPU AR2 >= AR1, TC1 ; |261| 
        BCC $C$L42,TC1 ; |261| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |261| 
$C$L38:    
	CALL #_coverage_log;
$C$DW$L$_detect_peaks$2$B:
	.dwpsn	file "./pace/pace.c",line 262,column 9,is_stmt
        MOV *SP(#6), T0 ; |262| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#8), AR1 ; |262| 
        MOV *AR3(T0), AR2 ; |262| 
        CMP AR2 <= AR1, TC1 ; |262| 
        BCC $C$L39,TC1 ; |262| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |262| 
$C$DW$L$_detect_peaks$2$E:
$C$DW$L$_detect_peaks$3$B:
	.dwpsn	file "./pace/pace.c",line 263,column 13,is_stmt
        MOV *AR3(T0), AR1 ; |263| 
        MOV AR1, *SP(#8) ; |263| 
$C$DW$L$_detect_peaks$3$E:
$C$L39:    
	CALL #_coverage_log;
$C$DW$L$_detect_peaks$4$B:
	.dwpsn	file "./pace/pace.c",line 267,column 9,is_stmt
        MOV *SP(#6), T0 ; |267| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), AR1 ; |267| 
        MOV *AR3(T0), AR2 ; |267| 
        CMP AR2 <= AR1, TC1 ; |267| 
        BCC $C$L40,TC1 ; |267| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |267| 
$C$DW$L$_detect_peaks$4$E:
$C$DW$L$_detect_peaks$5$B:
	.dwpsn	file "./pace/pace.c",line 268,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(T0) ; |268| 
	.dwpsn	file "./pace/pace.c",line 269,column 13,is_stmt
        MOV *SP(#7), AR1 ; |269| 
        ADD *SP(#8), AR1, AC0 ; |269| 
        BFXTR #0x8000, AC0, AR1 ; |269| 
        ADD AC0, AR1 ; |269| 
        SFTS AR1, #-1 ; |269| 
        MOV AR1, *SP(#7) ; |269| 
	.dwpsn	file "./pace/pace.c",line 270,column 9,is_stmt
        B $C$L41  ; |270| 
                                        ; branch occurs ; |270| 
$C$DW$L$_detect_peaks$5$E:
$C$L40:    
	CALL #_coverage_log;
$C$DW$L$_detect_peaks$6$B:
	.dwpsn	file "./pace/pace.c",line 271,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(T0) ; |271| 
$C$DW$L$_detect_peaks$6$E:
$C$L41:    
$C$DW$L$_detect_peaks$7$B:
	.dwpsn	file "./pace/pace.c",line 261,column 29,is_stmt
        ADD #1, *SP(#6) ; |261| 
	.dwpsn	file "./pace/pace.c",line 261,column 17,is_stmt
        MOV *SP(#4), AR1 ; |261| 
        MOV *SP(#6), AR2 ; |261| 
        CMPU AR2 < AR1, TC1 ; |261| 
        BCC $C$L38,TC1 ; |261| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |261| 
$C$DW$L$_detect_peaks$7$E:
	.dwpsn	file "./pace/pace.c",line 274,column 1,is_stmt
$C$L42:    
	CALL #_coverage_log;
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$151	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$151, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/pace.asm:$C$L38:1:1728866547")
	.dwattr $C$DW$151, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x111)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_detect_peaks$2$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_detect_peaks$2$E)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_detect_peaks$3$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_detect_peaks$3$E)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_detect_peaks$4$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_detect_peaks$4$E)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_detect_peaks$5$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_detect_peaks$5$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_detect_peaks$6$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_detect_peaks$6$E)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$_detect_peaks$7$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$_detect_peaks$7$E)
	.dwendtag $C$DW$151

	.dwattr $C$DW$138, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x112)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	".text"
	.global	_pan_tomkins

$C$DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("pan_tomkins")
	.dwattr $C$DW$158, DW_AT_low_pc(_pan_tomkins)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_pan_tomkins")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_TI_begin_file("./pace/pace.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x117)
	.dwattr $C$DW$158, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./pace/pace.c",line 279,column 61,is_stmt,address _pan_tomkins

	.dwfde $C$DW$CIE, _pan_tomkins
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg17]
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg19]
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: pan_tomkins                                                  *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_pan_tomkins:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#4) ; |279| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./pace/pace.c",line 280,column 5,is_stmt
        MOV *SP(#4), T0 ; |280| 
        MOV dbl(*SP(#2)), XAR1
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_derivative")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_derivative ; |280| 
                                        ; call occurs [#_derivative] ; |280| 
	.dwpsn	file "./pace/pace.c",line 281,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#4), T0 ; |281| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_squaring")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_squaring ; |281| 
                                        ; call occurs [#_squaring] ; |281| 
	.dwpsn	file "./pace/pace.c",line 282,column 5,is_stmt
        MOV #30, T1 ; |282| 
        MOV *SP(#4), T0 ; |282| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_moving_window_integration")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #_moving_window_integration ; |282| 
                                        ; call occurs [#_moving_window_integration] ; |282| 
	.dwpsn	file "./pace/pace.c",line 283,column 5,is_stmt
        MOV #200, T1 ; |283| 
        MOV *SP(#4), T0 ; |283| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_detect_peaks")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #_detect_peaks ; |283| 
                                        ; call occurs [#_detect_peaks] ; |283| 
	.dwpsn	file "./pace/pace.c",line 284,column 5,is_stmt
        MOV *SP(#4), T0 ; |284| 
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_memcpy")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #_memcpy ; |284| 
                                        ; call occurs [#_memcpy] ; |284| 
	.dwpsn	file "./pace/pace.c",line 285,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$158, DW_AT_TI_end_file("./pace/pace.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x11d)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_free
	.global	_memset
	.global	_convol
	.global	__divli
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$171	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$171)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
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
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("DATA")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$172	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$29)
$C$DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$172)

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x10)
$C$DW$173	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$173, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$37

$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x17)

$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x10)
$C$DW$174	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$174, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$38

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
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

$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg0]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg1]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg2]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg3]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg4]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg5]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg6]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg7]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg8]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg9]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg10]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg11]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg12]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg13]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg14]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg15]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg16]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg17]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg18]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg19]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg20]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg21]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg22]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg23]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg24]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg25]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg26]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg27]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg28]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg29]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg30]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg31]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x20]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x21]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x22]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x23]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x24]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x25]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x26]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x27]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x28]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x29]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x30]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x31]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x32]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x33]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x34]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x35]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x36]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x37]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x38]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x39]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x40]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x41]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x42]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x43]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x44]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x45]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x46]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x47]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x48]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x49]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x50]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x51]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x52]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x53]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x54]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x55]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x56]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x57]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x58]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x59]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

