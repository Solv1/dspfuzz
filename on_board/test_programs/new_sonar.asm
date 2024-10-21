;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Mon Oct 14 21:33:12 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./sonar/sonar.c")
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


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$11


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("convol")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_convol")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$32)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$32)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$32)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$35)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$15


$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("fir")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_fir")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$32)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$32)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$32)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$32)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$35)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$21


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("maxidx")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_maxidx")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$32)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$35)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$28

	.sect	".const:_$P$T0$1"
	.clink
	.align	1
_$P$T0$1:
	CALL #_coverage_log;
	.field	-131,16			; _$P$T0$1[0] @ 0
	.field	-294,16			; _$P$T0$1[1] @ 16
	.field	491,16			; _$P$T0$1[2] @ 32
	.field	1376,16			; _$P$T0$1[3] @ 48
	.field	1503,16			; _$P$T0$1[4] @ 64
	.field	0,16			; _$P$T0$1[5] @ 80

$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_$P$T0$1")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr _$P$T0$1]
	.sect	".const:_$P$T1$2"
	.clink
	.align	1
_$P$T1$2:
	CALL #_coverage_log;
	.field	-16384,16			; _$P$T1$2[0] @ 0
	.field	-16381,16			; _$P$T1$2[1] @ 16
	.field	-16374,16			; _$P$T1$2[2] @ 32
	.field	-16361,16			; _$P$T1$2[3] @ 48
	.field	-16344,16			; _$P$T1$2[4] @ 64
	.field	-16321,16			; _$P$T1$2[5] @ 80

$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("$P$T1$2")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_$P$T1$2")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr _$P$T1$2]
	.sect	".const:_$P$T2$3"
	.clink
	.align	1
_$P$T2$3:
	CALL #_coverage_log;
	.field	-131,16			; _$P$T2$3[0] @ 0
	.field	-294,16			; _$P$T2$3[1] @ 16
	.field	491,16			; _$P$T2$3[2] @ 32
	.field	1376,16			; _$P$T2$3[3] @ 48
	.field	1503,16			; _$P$T2$3[4] @ 64
	.field	0,16			; _$P$T2$3[5] @ 80

$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("$P$T2$3")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_$P$T2$3")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _$P$T2$3]
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/82720EteeIf 
	.sect	".text"
	.ref _coverage_log;
	.global	_sonar_test

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("sonar_test")
	.dwattr $C$DW$35, DW_AT_low_pc(_sonar_test)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_sonar_test")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x22)
	.dwpsn	file "./sonar/sonar.c",line 21,column 50,is_stmt,address _sonar_test

	.dwfde $C$DW$CIE, _sonar_test
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg17]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: sonar_test                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 34 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (32 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_sonar_test:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-33, SP
	.dwcfi	cfa_offset, 34
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("average")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_average")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("overflow")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_overflow")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("delay_index")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_delay_index")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("object_speed")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_object_speed")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("FIR_BANDPASS_TAPS")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_FIR_BANDPASS_TAPS")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_PULSE_REFERENCE_FLIPPED")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 30]
        MOV T0, *SP(#2) ; |21| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar/sonar.c",line 23,column 13,is_stmt
        MOV #0, AC0 ; |23| 
        MOV AC0, dbl(*SP(#4)) ; |23| 
	.dwpsn	file "./sonar/sonar.c",line 24,column 13,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |24| 
	.dwpsn	file "./sonar/sonar.c",line 26,column 10,is_stmt
        MOV #0, *SP(#9) ; |26| 
	.dwpsn	file "./sonar/sonar.c",line 29,column 13,is_stmt
        MOV #0, *SP(#11) ; |29| 
	.dwpsn	file "./sonar/sonar.c",line 30,column 11,is_stmt
        MOV #0, *SP(#12) ; |30| 
	.dwpsn	file "./sonar/sonar.c",line 32,column 10,is_stmt
        AMOV #_$P$T0$1, XAR3 ; |32| 

        RPT #5    ; |32| 
||      AMAR *SP(#13), XAR2

                                            ; loop starts ; |32| 
$C$L1:    
$C$DW$L$_sonar_test$2$B:
            MOV *AR3+, *AR2+ ; |32| 
                                        ; loop ends ; |32| 
$C$DW$L$_sonar_test$2$E:
$C$L2:    
	.dwpsn	file "./sonar/sonar.c",line 37,column 10,is_stmt
        AMOV #_$P$T1$2, XAR3 ; |37| 

        RPT #5    ; |37| 
||      AMAR *SP(#19), XAR2

                                            ; loop starts ; |37| 
$C$L3:    
$C$DW$L$_sonar_test$4$B:
            MOV *AR3+, *AR2+ ; |37| 
                                        ; loop ends ; |37| 
$C$DW$L$_sonar_test$4$E:
$C$L4:    
	.dwpsn	file "./sonar/sonar.c",line 41,column 9,is_stmt
        MOV #0, *SP(#8) ; |41| 
	.dwpsn	file "./sonar/sonar.c",line 41,column 16,is_stmt
        MOV *SP(#2), AR1 ; |41| 
        MOV *SP(#8), AR2 ; |41| 
        CMP AR2 >= AR1, TC1 ; |41| 
        BCC $C$L7,TC1 ; |41| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |41| 
$C$L5:    
	CALL #_coverage_log;
$C$DW$L$_sonar_test$6$B:
	.dwpsn	file "./sonar/sonar.c",line 42,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV #32767, AR2 ; |42| 
        MOV *AR3(T0), AR1 ; |42| 
        CMP AR1 < AR2, TC1 ; |42| 
        BCC $C$L6,TC1 ; |42| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |42| 
$C$DW$L$_sonar_test$6$E:
	.dwpsn	file "./sonar/sonar.c",line 43,column 13,is_stmt
        MOV #-1, T0
        B $C$L23  ; |43| 
                                        ; branch occurs ; |43| 
$C$L6:    
	CALL #_coverage_log;
$C$DW$L$_sonar_test$8$B:
	.dwpsn	file "./sonar/sonar.c",line 41,column 26,is_stmt
        ADD #1, *SP(#8) ; |41| 
	.dwpsn	file "./sonar/sonar.c",line 41,column 16,is_stmt
        MOV *SP(#2), AR1 ; |41| 
        MOV *SP(#8), AR2 ; |41| 
        CMP AR2 < AR1, TC1 ; |41| 
        BCC $C$L5,TC1 ; |41| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |41| 
$C$DW$L$_sonar_test$8$E:
$C$L7:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 46,column 5,is_stmt
        MOV #70, AR2 ; |46| 
        CMP AR1 >= AR2, TC1 ; |46| 
        BCC $C$L8,TC1 ; |46| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |46| 
	.dwpsn	file "./sonar/sonar.c",line 47,column 9,is_stmt
        MOV #-1, T0
        B $C$L23  ; |47| 
                                        ; branch occurs ; |47| 
$C$L8:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 54,column 12,is_stmt
        MOV #68, T0 ; |54| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_calloc")
	.dwattr $C$DW$52, DW_AT_TI_call

        CALL #_calloc ; |54| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |54| 
        MOV XAR0, dbl(*SP(#26))
	.dwpsn	file "./sonar/sonar.c",line 55,column 12,is_stmt
        MOV #64, T0 ; |55| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_calloc")
	.dwattr $C$DW$53, DW_AT_TI_call

        CALL #_calloc ; |55| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |55| 
        MOV XAR0, dbl(*SP(#28))
	.dwpsn	file "./sonar/sonar.c",line 56,column 12,is_stmt
        MOV #8, T0
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_calloc")
	.dwattr $C$DW$54, DW_AT_TI_call

        CALL #_calloc ; |56| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |56| 
        MOV XAR0, dbl(*SP(#30))
	.dwpsn	file "./sonar/sonar.c",line 58,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#26)), XAR2
        RPT #63   ; |58| 
                                            ; loop starts ; |58| 
$C$L9:    
$C$DW$L$_sonar_test$12$B:
            MOV *AR3+, *AR2+ ; |58| 
                                        ; loop ends ; |58| 
$C$DW$L$_sonar_test$12$E:
$C$L10:    
	.dwpsn	file "./sonar/sonar.c",line 59,column 5,is_stmt
        MOV dbl(*SP(#30)), XAR0
        MOV #0, T0
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_memset")
	.dwattr $C$DW$55, DW_AT_TI_call

        CALL #_memset ; |59| 
||      MOV #8, T1

                                        ; call occurs [#_memset] ; |59| 
	.dwpsn	file "./sonar/sonar.c",line 63,column 5,is_stmt
        AMAR *SP(#13), XAR1
        MOV #64, T0 ; |63| 
        MOV dbl(*SP(#28)), XAR2
        MOV dbl(*SP(#30)), XAR3
        MOV dbl(*SP(#26)), XAR0
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_fir")
	.dwattr $C$DW$56, DW_AT_TI_call

        CALL #_fir ; |63| 
||      MOV #6, T1

                                        ; call occurs [#_fir] ; |63| 
        MOV T0, *SP(#12) ; |63| 
	.dwpsn	file "./sonar/sonar.c",line 64,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L11,AR1 == #0 ; |64| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |64| 
	.dwpsn	file "./sonar/sonar.c",line 66,column 9,is_stmt
        MOV dbl(*SP(#26)), XAR0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_free")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_free ; |66| 
                                        ; call occurs [#_free] ; |66| 
	.dwpsn	file "./sonar/sonar.c",line 67,column 9,is_stmt
        MOV dbl(*SP(#28)), XAR0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_free")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_free ; |67| 
                                        ; call occurs [#_free] ; |67| 
	.dwpsn	file "./sonar/sonar.c",line 68,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_free")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_free ; |68| 
                                        ; call occurs [#_free] ; |68| 
	.dwpsn	file "./sonar/sonar.c",line 69,column 9,is_stmt
        MOV #1, T0
        B $C$L23  ; |69| 
                                        ; branch occurs ; |69| 
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 72,column 5,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#26)), XAR2
        RPT #63   ; |72| 
                                            ; loop starts ; |72| 
$C$L12:    
$C$DW$L$_sonar_test$16$B:
            MOV *AR3+, *AR2+ ; |72| 
                                        ; loop ends ; |72| 
$C$DW$L$_sonar_test$16$E:
$C$L13:    
	.dwpsn	file "./sonar/sonar.c",line 74,column 5,is_stmt
        MOV dbl(*SP(#26)), XAR0
        AMAR *SP(#19), XAR1
        MOV dbl(*SP(#28)), XAR2
        MOV #58, T1 ; |74| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_convol")
	.dwattr $C$DW$60, DW_AT_TI_call

        CALL #_convol ; |74| 
||      MOV #6, T0

                                        ; call occurs [#_convol] ; |74| 
        MOV T0, *SP(#12) ; |74| 
	.dwpsn	file "./sonar/sonar.c",line 77,column 10,is_stmt
        MOV #0, *SP(#8) ; |77| 
	.dwpsn	file "./sonar/sonar.c",line 77,column 17,is_stmt
        MOV #58, AR2 ; |77| 
        MOV *SP(#8), AR1 ; |77| 
        CMP AR1 >= AR2, TC1 ; |77| 
        BCC $C$L15,TC1 ; |77| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |77| 
$C$L14:    
	CALL #_coverage_log;
$C$DW$L$_sonar_test$18$B:
	.dwpsn	file "./sonar/sonar.c",line 78,column 9,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#28)), XAR3
        MOV *AR3(T0), AC0 ; |78| 
        ADD dbl(*SP(#4)), AC0, AC0 ; |78| 
        MOV AC0, dbl(*SP(#4)) ; |78| 
	.dwpsn	file "./sonar/sonar.c",line 77,column 27,is_stmt
        ADD #1, *SP(#8) ; |77| 
	.dwpsn	file "./sonar/sonar.c",line 77,column 17,is_stmt
        MOV *SP(#8), AR1 ; |77| 
        CMP AR1 < AR2, TC1 ; |77| 
        BCC $C$L14,TC1 ; |77| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |77| 
$C$DW$L$_sonar_test$18$E:
$C$L15:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 80,column 5,is_stmt
        MOV *SP(#2), AC1 ; |80| 
        MOV dbl(*SP(#4)), AC0 ; |80| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__divli")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #__divli ; |80| 
                                        ; call occurs [#__divli] ; |80| 
        MOV AC0, dbl(*SP(#6)) ; |80| 
	.dwpsn	file "./sonar/sonar.c",line 81,column 5,is_stmt
        MOV #500, AC0 ; |81| 
        MOV dbl(*SP(#6)), AC1 ; |81| 
        CMP AC1 >= AC0, TC1 ; |81| 
        BCC $C$L16,TC1 ; |81| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |81| 
	.dwpsn	file "./sonar/sonar.c",line 83,column 9,is_stmt
        MOV dbl(*SP(#26)), XAR0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_free")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_free ; |83| 
                                        ; call occurs [#_free] ; |83| 
	.dwpsn	file "./sonar/sonar.c",line 84,column 9,is_stmt
        MOV dbl(*SP(#28)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_free")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_free ; |84| 
                                        ; call occurs [#_free] ; |84| 
	.dwpsn	file "./sonar/sonar.c",line 85,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_free ; |85| 
                                        ; call occurs [#_free] ; |85| 
	.dwpsn	file "./sonar/sonar.c",line 86,column 9,is_stmt
        MOV #1, T0
        B $C$L23  ; |86| 
                                        ; branch occurs ; |86| 
$C$L16:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 103,column 5,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#26)), XAR2
        RPT #63   ; |103| 
                                            ; loop starts ; |103| 
$C$L17:    
$C$DW$L$_sonar_test$22$B:
            MOV *AR3+, *AR2+ ; |103| 
                                        ; loop ends ; |103| 
$C$DW$L$_sonar_test$22$E:
$C$L18:    
	.dwpsn	file "./sonar/sonar.c",line 104,column 5,is_stmt
        MOV dbl(*SP(#26)), XAR0
        MOV #30, T1 ; |104| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_maxidx")
	.dwattr $C$DW$65, DW_AT_TI_call

        CALL #_maxidx ; |104| 
||      MOV #2, T0

                                        ; call occurs [#_maxidx] ; |104| 
        MOV T0, *SP(#10) ; |104| 
	.dwpsn	file "./sonar/sonar.c",line 106,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L19,AR1 >= #0 ; |106| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |106| 
	.dwpsn	file "./sonar/sonar.c",line 108,column 9,is_stmt
        MOV dbl(*SP(#26)), XAR0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_free")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_free ; |108| 
                                        ; call occurs [#_free] ; |108| 
	.dwpsn	file "./sonar/sonar.c",line 109,column 9,is_stmt
        MOV dbl(*SP(#28)), XAR0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_free")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_free ; |109| 
                                        ; call occurs [#_free] ; |109| 
	.dwpsn	file "./sonar/sonar.c",line 110,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_free")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_free ; |110| 
                                        ; call occurs [#_free] ; |110| 
	.dwpsn	file "./sonar/sonar.c",line 111,column 9,is_stmt
        MOV #1, T0
        B $C$L23  ; |111| 
                                        ; branch occurs ; |111| 
$C$L19:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 114,column 5,is_stmt
        MOV dbl(*SP(#28)), XAR3
        MOV dbl(*SP(#26)), XAR2
        RPT #63   ; |114| 
                                            ; loop starts ; |114| 
$C$L20:    
$C$DW$L$_sonar_test$26$B:
            MOV *AR3+, *AR2+ ; |114| 
                                        ; loop ends ; |114| 
$C$DW$L$_sonar_test$26$E:
$C$L21:    
	.dwpsn	file "./sonar/sonar.c",line 115,column 5,is_stmt
        MOV dbl(*SP(#26)), XAR0
        MOV #64, T0 ; |115| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_calculate_velocity")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_calculate_velocity ; |115| 
                                        ; call occurs [#_calculate_velocity] ; |115| 
        MOV T0, *SP(#11) ; |115| 
	.dwpsn	file "./sonar/sonar.c",line 116,column 5,is_stmt
        CMP *SP(#11) == #-1, TC1 ; |116| 
        BCC $C$L22,!TC1 ; |116| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |116| 
	.dwpsn	file "./sonar/sonar.c",line 117,column 9,is_stmt
        MOV dbl(*SP(#26)), XAR0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_free")
	.dwattr $C$DW$70, DW_AT_TI_call
        CALL #_free ; |117| 
                                        ; call occurs [#_free] ; |117| 
	.dwpsn	file "./sonar/sonar.c",line 118,column 9,is_stmt
        MOV dbl(*SP(#28)), XAR0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_free")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #_free ; |118| 
                                        ; call occurs [#_free] ; |118| 
	.dwpsn	file "./sonar/sonar.c",line 119,column 9,is_stmt
        MOV dbl(*SP(#30)), XAR0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_free")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #_free ; |119| 
                                        ; call occurs [#_free] ; |119| 
	.dwpsn	file "./sonar/sonar.c",line 120,column 9,is_stmt
        MOV #1, T0
        B $C$L23  ; |120| 
                                        ; branch occurs ; |120| 
$C$L22:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 124,column 5,is_stmt
        MOV dbl(*SP(#26)), XAR0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_free")
	.dwattr $C$DW$73, DW_AT_TI_call
        CALL #_free ; |124| 
                                        ; call occurs [#_free] ; |124| 
	.dwpsn	file "./sonar/sonar.c",line 125,column 5,is_stmt
        MOV dbl(*SP(#28)), XAR0
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_free")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_free ; |125| 
                                        ; call occurs [#_free] ; |125| 
	.dwpsn	file "./sonar/sonar.c",line 126,column 5,is_stmt
        MOV dbl(*SP(#30)), XAR0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_free")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_free ; |126| 
                                        ; call occurs [#_free] ; |126| 
	.dwpsn	file "./sonar/sonar.c",line 128,column 5,is_stmt
        MOV #0, T0
$C$L23:    
	.dwpsn	file "./sonar/sonar.c",line 129,column 1,is_stmt
        AADD #33, SP
	.dwcfi	cfa_offset, 1
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$77	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$77, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L20:1:1728955992")
	.dwattr $C$DW$77, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x72)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_sonar_test$26$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_sonar_test$26$E)
	.dwendtag $C$DW$77


$C$DW$79	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$79, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L17:1:1728955992")
	.dwattr $C$DW$79, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x67)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_sonar_test$22$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_sonar_test$22$E)
	.dwendtag $C$DW$79


$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L14:1:1728955992")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x4d)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x4f)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_sonar_test$18$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_sonar_test$18$E)
	.dwendtag $C$DW$81


$C$DW$83	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$83, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L12:1:1728955992")
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x48)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_sonar_test$16$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_sonar_test$16$E)
	.dwendtag $C$DW$83


$C$DW$85	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$85, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L9:1:1728955992")
	.dwattr $C$DW$85, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0x3a)
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x3a)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_sonar_test$12$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_sonar_test$12$E)
	.dwendtag $C$DW$85


$C$DW$87	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$87, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L5:1:1728955992")
	.dwattr $C$DW$87, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x29)
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x2d)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_sonar_test$6$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_sonar_test$6$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_sonar_test$8$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_sonar_test$8$E)
	.dwendtag $C$DW$87


$C$DW$90	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$90, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L3:1:1728955992")
	.dwattr $C$DW$90, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x25)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_sonar_test$4$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_sonar_test$4$E)
	.dwendtag $C$DW$90


$C$DW$92	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$92, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L1:1:1728955992")
	.dwattr $C$DW$92, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x20)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_sonar_test$2$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_sonar_test$2$E)
	.dwendtag $C$DW$92

	.dwattr $C$DW$35, DW_AT_TI_end_file("./sonar/sonar.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x81)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_calculate_velocity

$C$DW$94	.dwtag  DW_TAG_subprogram, DW_AT_name("calculate_velocity")
	.dwattr $C$DW$94, DW_AT_low_pc(_calculate_velocity)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_calculate_velocity")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$94, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./sonar/sonar.c",line 132,column 55,is_stmt,address _calculate_velocity

	.dwfde $C$DW$CIE, _calculate_velocity
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg17]
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: calculate_velocity                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_calculate_velocity:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("data_buf")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_data_buf")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("source_movement")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_source_movement")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("velocity")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_velocity")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("average_f")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_average_f")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("doppler_f")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_doppler_f")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("FIR_BANDPASS_TAPS")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_FIR_BANDPASS_TAPS")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV T0, *SP(#2) ; |132| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./sonar/sonar.c",line 135,column 12,is_stmt
        MOV #64, T0 ; |135| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_calloc")
	.dwattr $C$DW$109, DW_AT_TI_call

        CALL #_calloc ; |135| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |135| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./sonar/sonar.c",line 136,column 12,is_stmt
        MOV #64, T0 ; |136| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_calloc")
	.dwattr $C$DW$110, DW_AT_TI_call

        CALL #_calloc ; |136| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |136| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./sonar/sonar.c",line 137,column 13,is_stmt
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_rand")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #_rand ; |137| 
                                        ; call occurs [#_rand] ; |137| 
        MOV #1, AR2

        NOT AR2, AR2 ; |137| 
||      MOV T0, AC0 ; |137| 

        BFXTR #0x8000, AC0, AR1 ; |137| 
        ADD AC0, AR1 ; |137| 
        AND AR1, AR2 ; |137| 
        SUB AR2, AC0 ; |137| 
        MOV AC0, *SP(#8) ; |137| 
	.dwpsn	file "./sonar/sonar.c",line 138,column 13,is_stmt
        MOV #0, *SP(#9) ; |138| 
	.dwpsn	file "./sonar/sonar.c",line 139,column 11,is_stmt
        MOV #0, *SP(#10) ; |139| 
	.dwpsn	file "./sonar/sonar.c",line 140,column 13,is_stmt
        MOV #0, AC0 ; |140| 
        MOV AC0, dbl(*SP(#12)) ; |140| 
	.dwpsn	file "./sonar/sonar.c",line 141,column 13,is_stmt
        MOV #0, *SP(#14) ; |141| 
	.dwpsn	file "./sonar/sonar.c",line 142,column 13,is_stmt
        MOV #0, *SP(#15) ; |142| 
	.dwpsn	file "./sonar/sonar.c",line 144,column 10,is_stmt
        AMOV #_$P$T2$3, XAR3 ; |144| 

        RPT #5    ; |144| 
||      AMAR *SP(#16), XAR2

                                            ; loop starts ; |144| 
$C$L24:    
$C$DW$L$_calculate_velocity$2$B:
            MOV *AR3+, *AR2+ ; |144| 
                                        ; loop ends ; |144| 
$C$DW$L$_calculate_velocity$2$E:
$C$L25:    
	.dwpsn	file "./sonar/sonar.c",line 150,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMAR *SP(#16), XAR1
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#6)), XAR3
        MOV #64, T0 ; |150| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_fir")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALL #_fir ; |150| 
||      MOV #6, T1

                                        ; call occurs [#_fir] ; |150| 
        MOV T0, *SP(#10) ; |150| 
	.dwpsn	file "./sonar/sonar.c",line 151,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L26,AR1 == #0 ; |151| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |151| 
	.dwpsn	file "./sonar/sonar.c",line 153,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_free")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #_free ; |153| 
                                        ; call occurs [#_free] ; |153| 
	.dwpsn	file "./sonar/sonar.c",line 154,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_free")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #_free ; |154| 
                                        ; call occurs [#_free] ; |154| 
	.dwpsn	file "./sonar/sonar.c",line 155,column 9,is_stmt
        MOV #-1, T0
        B $C$L33  ; |155| 
                                        ; branch occurs ; |155| 
$C$L26:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 157,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#0)), XAR2
        RPT #63   ; |157| 
                                            ; loop starts ; |157| 
$C$L27:    
$C$DW$L$_calculate_velocity$6$B:
            MOV *AR3+, *AR2+ ; |157| 
                                        ; loop ends ; |157| 
$C$DW$L$_calculate_velocity$6$E:
$C$L28:    
	.dwpsn	file "./sonar/sonar.c",line 161,column 10,is_stmt
        MOV #0, *SP(#3) ; |161| 
	.dwpsn	file "./sonar/sonar.c",line 161,column 17,is_stmt
        MOV #64, AR2 ; |161| 
        MOV *SP(#3), AR1 ; |161| 
        CMP AR1 >= AR2, TC1 ; |161| 
        BCC $C$L30,TC1 ; |161| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |161| 
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_calculate_velocity$8$B:
	.dwpsn	file "./sonar/sonar.c",line 162,column 9,is_stmt
        MOV AR1, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AC0 ; |162| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |162| 
        MOV AC0, dbl(*SP(#12)) ; |162| 
	.dwpsn	file "./sonar/sonar.c",line 161,column 24,is_stmt
        ADD #1, *SP(#3) ; |161| 
	.dwpsn	file "./sonar/sonar.c",line 161,column 17,is_stmt
        MOV *SP(#3), AR1 ; |161| 
        CMP AR1 < AR2, TC1 ; |161| 
        BCC $C$L29,TC1 ; |161| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |161| 
$C$DW$L$_calculate_velocity$8$E:
$C$L30:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 164,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |164| 
        SFTS AC0, #-5, AC1 ; |164| 
        SFTL AC1, #-26, AC1 ; |164| 
        ADD AC0, AC1 ; |164| 
        SFTS AC1, #-6, AC0 ; |164| 
        SFTL AC0, #1 ; |164| 
        MOV AC0, *SP(#14) ; |164| 
	.dwpsn	file "./sonar/sonar.c",line 167,column 5,is_stmt

        MOV *SP(#14), AC1 ; |167| 
||      MOV #0, AC0 ; |167| 

        OR #0xc350, AC0, AC0 ; |167| 
        CMP AC1 <= AC0, TC1 ; |167| 
        BCC $C$L31,TC1 ; |167| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |167| 
	.dwpsn	file "./sonar/sonar.c",line 169,column 9,is_stmt
        MOV #0, AC0 ; |169| 
        OR #0xc350, AC0, AC0 ; |169| 
        ADD *SP(#14), AC0, AC0 ; |169| 
        MOV AC0, *SP(#15) ; |169| 
	.dwpsn	file "./sonar/sonar.c",line 170,column 9,is_stmt
        AMOV #100000, XAR3 ; |170| 
        MOV *SP(#15) << #16, AC0
        MPYK #343, AC0, AC0 ; |170| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |170| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__divli")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #__divli ; |170| 
                                        ; call occurs [#__divli] ; |170| 
        MOV AC0, *SP(#9) ; |170| 
	.dwpsn	file "./sonar/sonar.c",line 171,column 5,is_stmt
        B $C$L32  ; |171| 
                                        ; branch occurs ; |171| 
$C$L31:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 172,column 10,is_stmt

        MOV *SP(#14), AC1 ; |172| 
||      MOV #0, AC0 ; |172| 

        OR #0xc350, AC0, AC0 ; |172| 
        CMP AC1 > AC0, TC1 ; |172| 
        BCC $C$L32,TC1 ; |172| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |172| 
	.dwpsn	file "./sonar/sonar.c",line 174,column 9,is_stmt
        MOV #0, AC0 ; |174| 
        OR #0xc350, AC0, AC0 ; |174| 
        SUB AC0, *SP(#14), AC0 ; |174| 
        MOV AC0, *SP(#15) ; |174| 
	.dwpsn	file "./sonar/sonar.c",line 175,column 9,is_stmt
        AMOV #100000, XAR3 ; |175| 
        MOV *SP(#15) << #16, AC0
        MPYK #343, AC0, AC0 ; |175| 
        MOV XAR3, AC1
        MOV mmap(AC0L), AC0 ; |175| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__divli")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #__divli ; |175| 
                                        ; call occurs [#__divli] ; |175| 
        MOV AC0, *SP(#9) ; |175| 
$C$L32:    
	CALL #_coverage_log;
	.dwpsn	file "./sonar/sonar.c",line 178,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_free")
	.dwattr $C$DW$117, DW_AT_TI_call
        CALL #_free ; |178| 
                                        ; call occurs [#_free] ; |178| 
	.dwpsn	file "./sonar/sonar.c",line 179,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_free")
	.dwattr $C$DW$118, DW_AT_TI_call
        CALL #_free ; |179| 
                                        ; call occurs [#_free] ; |179| 
	.dwpsn	file "./sonar/sonar.c",line 180,column 5,is_stmt
        MOV *SP(#9), T0 ; |180| 
$C$L33:    
	.dwpsn	file "./sonar/sonar.c",line 181,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$120	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$120, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L29:1:1728955992")
	.dwattr $C$DW$120, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0xa1)
	.dwattr $C$DW$120, DW_AT_TI_end_line(0xa3)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_calculate_velocity$8$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_calculate_velocity$8$E)
	.dwendtag $C$DW$120


$C$DW$122	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$122, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L27:1:1728955992")
	.dwattr $C$DW$122, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x9d)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_calculate_velocity$6$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_calculate_velocity$6$E)
	.dwendtag $C$DW$122


$C$DW$124	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$124, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/sonar.asm:$C$L24:1:1728955992")
	.dwattr $C$DW$124, DW_AT_TI_begin_file("./sonar/sonar.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x90)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_calculate_velocity$2$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_calculate_velocity$2$E)
	.dwendtag $C$DW$124

	.dwattr $C$DW$94, DW_AT_TI_end_file("./sonar/sonar.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0xb5)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_calloc
	.global	_free
	.global	_memset
	.global	_convol
	.global	_fir
	.global	_maxidx
	.global	__divli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$126	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$126)
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
$C$DW$127	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$29)
$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$127)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x06)
$C$DW$128	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$128, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x17)

$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$129	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$129, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$33

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("ushort")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
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

$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg1]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg2]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg3]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg4]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg5]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg6]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg7]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg8]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg9]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg10]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg11]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg12]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg13]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg14]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg15]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg16]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg17]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg18]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg19]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg20]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg21]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg22]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg23]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg24]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg25]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg26]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg27]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg28]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg29]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg30]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg31]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x20]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x21]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x22]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x23]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x24]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x25]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x26]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x27]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x28]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x29]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x30]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x31]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x32]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x33]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x34]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x35]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x36]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x37]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x38]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x39]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x40]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x41]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x42]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x43]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x44]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x45]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x46]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x47]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x48]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x49]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x50]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x51]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x52]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x53]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x54]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x55]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x56]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x57]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x58]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x59]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

