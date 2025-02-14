;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu Feb 13 14:33:44 2025                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./susan.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("sqrt")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_sqrt")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("exp")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$7

	.bss	_setbrightness,516,0,0
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("setbrightness")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_setbrightness")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _setbrightness]
	.bss	_g_r,11000,0,2
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("g_r")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_g_r")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _g_r]
;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/16952bqfWZH 
	.sect	".text"
	.ref _coverage_log;
	.global	_fgetc2

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("fgetc2")
	.dwattr $C$DW$11, DW_AT_low_pc(_fgetc2)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_fgetc2")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./susan.c",line 193,column 1,is_stmt,address _fgetc2

	.dwfde $C$DW$CIE, _fgetc2
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: fgetc2                                                       *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fgetc2:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 194,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV *AR3, AR1 ; |194| 
        MOV AR1, *SP(#2) ; |194| 
	.dwpsn	file "./susan.c",line 195,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*AR2), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 196,column 5,is_stmt
        MOV *SP(#2), T0 ; |196| 
	.dwpsn	file "./susan.c",line 197,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$11, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_getint

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("getint")
	.dwattr $C$DW$16, DW_AT_low_pc(_getint)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_getint")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0xc7)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./susan.c",line 200,column 1,is_stmt,address _getint

	.dwfde $C$DW$CIE, _getint
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: getint                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_getint:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 203,column 5,is_stmt
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_fgetc2")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #_fgetc2 ; |203| 
                                        ; call occurs [#_fgetc2] ; |203| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#2)) ; |203| 
	.dwpsn	file "./susan.c",line 204,column 12,is_stmt
$C$L1:    
$C$DW$L$_getint$2$B:
	.dwpsn	file "./susan.c",line 206,column 9,is_stmt
        MOV #35, AC0 ; |206| 
        MOV dbl(*SP(#2)), AC1 ; |206| 
        CMP AC1 != AC0, TC1 ; |206| 
        BCC $C$L3,TC1 ; |206| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |206| 
$C$DW$L$_getint$2$E:
$C$DW$L$_getint$3$B:
	.dwpsn	file "./susan.c",line 208,column 20,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |208| 
||      MOV #10, AC0 ; |208| 

        CMP AC1 == AC0, TC1 ; |208| 
        BCC $C$L3,TC1 ; |208| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |208| 
$C$DW$L$_getint$3$E:
$C$L2:    
	CALL #_coverage_log;
$C$DW$L$_getint$4$B:
	.dwpsn	file "./susan.c",line 210,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_fgetc2")
	.dwattr $C$DW$22, DW_AT_TI_call
        CALL #_fgetc2 ; |210| 
                                        ; call occurs [#_fgetc2] ; |210| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#2)) ; |210| 
	.dwpsn	file "./susan.c",line 208,column 20,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |208| 
||      MOV #10, AC0 ; |208| 

        CMP AC1 != AC0, TC1 ; |208| 
        BCC $C$L2,TC1 ; |208| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |208| 
$C$DW$L$_getint$4$E:
$C$L3:    
	CALL #_coverage_log;
$C$DW$L$_getint$5$B:
	.dwpsn	file "./susan.c",line 213,column 9,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |213| 
||      MOV #-1, AC0 ; |213| 

        CMP AC1 != AC0, TC1 ; |213| 
        BCC $C$L4,TC1 ; |213| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |213| 
$C$DW$L$_getint$5$E:
	.dwpsn	file "./susan.c",line 215,column 13,is_stmt
        MOV #-1, T0
        B $C$L10  ; |215| 
                                        ; branch occurs ; |215| 
$C$L4:    
	CALL #_coverage_log;
$C$DW$L$_getint$7$B:
	.dwpsn	file "./susan.c",line 217,column 9,is_stmt
        MOV #48, AC0 ; |217| 
        MOV dbl(*SP(#2)), AC1 ; |217| 
        CMP AC1 < AC0, TC1 ; |217| 
        BCC $C$L5,TC1 ; |217| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |217| 
$C$DW$L$_getint$7$E:
$C$DW$L$_getint$8$B:
        MOV #57, AC0 ; |217| 
        MOV dbl(*SP(#2)), AC1 ; |217| 
        CMP AC1 > AC0, TC1 ; |217| 
        BCC $C$L6,!TC1 ; |217| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |217| 
$C$DW$L$_getint$8$E:
$C$DW$L$_getint$9$B:
	.dwpsn	file "./susan.c",line 219,column 13,is_stmt
$C$DW$L$_getint$9$E:
$C$L5:    
	CALL #_coverage_log;
$C$DW$L$_getint$10$B:
	.dwpsn	file "./susan.c",line 221,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_fgetc2")
	.dwattr $C$DW$23, DW_AT_TI_call
        CALL #_fgetc2 ; |221| 
                                        ; call occurs [#_fgetc2] ; |221| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#2)) ; |221| 
	.dwpsn	file "./susan.c",line 204,column 12,is_stmt
        B $C$L1   ; |204| 
                                        ; branch occurs ; |204| 
$C$DW$L$_getint$10$E:
$C$L6:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 225,column 5,is_stmt
        MOV #0, AC0 ; |225| 
        MOV AC0, dbl(*SP(#4)) ; |225| 
	.dwpsn	file "./susan.c",line 226,column 12,is_stmt
$C$L7:    
	CALL #_coverage_log;
$C$DW$L$_getint$12$B:
	.dwpsn	file "./susan.c",line 228,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |228| 
        SFTS AC0, #1, AC1 ; |228| 
        ADD AC0 << #3, AC1 ; |228| 
        ADD dbl(*SP(#2)), AC1, AC0 ; |228| 
        SUB #48, AC0, AC0 ; |228| 
        MOV AC0, dbl(*SP(#4)) ; |228| 
	.dwpsn	file "./susan.c",line 229,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_fgetc2")
	.dwattr $C$DW$24, DW_AT_TI_call
        CALL #_fgetc2 ; |229| 
                                        ; call occurs [#_fgetc2] ; |229| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#2)) ; |229| 
	.dwpsn	file "./susan.c",line 230,column 9,is_stmt

        MOV dbl(*SP(#2)), AC1 ; |230| 
||      MOV #-1, AC0 ; |230| 

        CMP AC1 != AC0, TC1 ; |230| 
        BCC $C$L8,TC1 ; |230| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |230| 
$C$DW$L$_getint$12$E:
	.dwpsn	file "./susan.c",line 232,column 13,is_stmt
        MOV *SP(#5), T0 ; |232| 
        B $C$L10  ; |232| 
                                        ; branch occurs ; |232| 
$C$L8:    
	CALL #_coverage_log;
$C$DW$L$_getint$14$B:
	.dwpsn	file "./susan.c",line 234,column 9,is_stmt
        MOV #48, AC0 ; |234| 
        MOV dbl(*SP(#2)), AC1 ; |234| 
        CMP AC1 < AC0, TC1 ; |234| 
        BCC $C$L9,TC1 ; |234| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |234| 
$C$DW$L$_getint$14$E:
$C$DW$L$_getint$15$B:
        MOV #57, AC0 ; |234| 
        MOV dbl(*SP(#2)), AC1 ; |234| 
        CMP AC1 <= AC0, TC1 ; |234| 
        BCC $C$L7,TC1 ; |234| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |234| 
$C$DW$L$_getint$15$E:
        B $C$L9   ; |234| 
                                        ; branch occurs ; |234| 
$C$L9:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 240,column 5,is_stmt
        MOV *SP(#5), T0 ; |240| 
$C$L10:    
	.dwpsn	file "./susan.c",line 241,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L7:1:1739475224")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0xee)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_getint$12$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_getint$12$E)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_getint$14$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_getint$14$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_getint$15$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_getint$15$E)
	.dwendtag $C$DW$26


$C$DW$30	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$30, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L1:1:1739475224")
	.dwattr $C$DW$30, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0xcc)
	.dwattr $C$DW$30, DW_AT_TI_end_line(0xde)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_getint$2$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_getint$2$E)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_getint$8$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_getint$8$E)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_getint$3$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_getint$3$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_getint$5$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_getint$5$E)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_getint$7$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_getint$7$E)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_getint$9$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_getint$9$E)
$C$DW$37	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$37, DW_AT_low_pc($C$DW$L$_getint$10$B)
	.dwattr $C$DW$37, DW_AT_high_pc($C$DW$L$_getint$10$E)

$C$DW$38	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$38, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L2:2:1739475224")
	.dwattr $C$DW$38, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0xd0)
	.dwattr $C$DW$38, DW_AT_TI_end_line(0xd3)
$C$DW$39	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$39, DW_AT_low_pc($C$DW$L$_getint$4$B)
	.dwattr $C$DW$39, DW_AT_high_pc($C$DW$L$_getint$4$E)
	.dwendtag $C$DW$38

	.dwendtag $C$DW$30

	.dwattr $C$DW$16, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.global	_get_image

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("get_image")
	.dwattr $C$DW$40, DW_AT_low_pc(_get_image)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_get_image")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$40, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0xf3)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x6c)
	.dwpsn	file "./susan.c",line 244,column 1,is_stmt,address _get_image

	.dwfde $C$DW$CIE, _get_image
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fp")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg17]
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg19]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: get_image                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 108 words                                            *
;*                        (1 return address/alignment)                         *
;*                        (107 local values)                                   *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_get_image:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-107, SP
	.dwcfi	cfa_offset, 108
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("fp")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_fp")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("header")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 106]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 248,column 5,is_stmt
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_fgetc2")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_fgetc2 ; |248| 
                                        ; call occurs [#_fgetc2] ; |248| 
        MOV T0, *SP(#6) ; |248| 
	.dwpsn	file "./susan.c",line 249,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_fgetc2")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_fgetc2 ; |249| 
                                        ; call occurs [#_fgetc2] ; |249| 
        MOV T0, *SP(#7) ; |249| 
	.dwpsn	file "./susan.c",line 251,column 5,is_stmt
        CMP *SP(#6) == #80, TC1 ; |251| 
        BCC $C$L11,!TC1 ; |251| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |251| 
        CMP *SP(#7) == #53, TC1 ; |251| 
        BCC $C$L12,TC1 ; |251| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |251| 
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 253,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |253| 
                                        ; branch occurs ; |253| 
$C$L12:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 256,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_getint")
	.dwattr $C$DW$51, DW_AT_TI_call
        CALL #_getint ; |256| 
                                        ; call occurs [#_getint] ; |256| 
        MOV dbl(*SP(#2)), XAR3
        MOV T0, AC0
        MOV AC0, dbl(*AR3) ; |256| 
	.dwpsn	file "./susan.c",line 257,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3), AC1 ; |257| 
||      MOV #-1, AC0 ; |257| 

        CMP AC1 != AC0, TC1 ; |257| 
        BCC $C$L13,TC1 ; |257| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |257| 
	.dwpsn	file "./susan.c",line 258,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |258| 
                                        ; branch occurs ; |258| 
$C$L13:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 260,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_getint")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_getint ; |260| 
                                        ; call occurs [#_getint] ; |260| 
        MOV dbl(*SP(#4)), XAR3
        MOV T0, AC0
        MOV AC0, dbl(*AR3) ; |260| 
	.dwpsn	file "./susan.c",line 261,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*AR3), AC1 ; |261| 
||      MOV #-1, AC0 ; |261| 

        CMP AC1 != AC0, TC1 ; |261| 
        BCC $C$L14,TC1 ; |261| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |261| 
	.dwpsn	file "./susan.c",line 262,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |262| 
                                        ; branch occurs ; |262| 
$C$L14:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 264,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_getint")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_getint ; |264| 
                                        ; call occurs [#_getint] ; |264| 
        MOV T0, *SP(#106) ; |264| 
	.dwpsn	file "./susan.c",line 265,column 5,is_stmt
	.dwpsn	file "./susan.c",line 269,column 5,is_stmt
        MOV #0, T0
$C$L15:    
	.dwpsn	file "./susan.c",line 270,column 1,is_stmt
        AADD #107, SP
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$40, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x10e)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.global	_int_to_uchar

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("int_to_uchar")
	.dwattr $C$DW$55, DW_AT_low_pc(_int_to_uchar)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_int_to_uchar")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 321,column 1,is_stmt,address _int_to_uchar

	.dwfde $C$DW$CIE, _int_to_uchar
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg17]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg19]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: int_to_uchar                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_int_to_uchar:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("max_r")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_max_r")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("min_r")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_min_r")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#4)) ; |321| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 323,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |323| 
        MOV AC0, dbl(*SP(#8)) ; |323| 
	.dwpsn	file "./susan.c",line 324,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |324| 
        MOV AC0, dbl(*SP(#10)) ; |324| 
	.dwpsn	file "./susan.c",line 326,column 10,is_stmt
        MOV #0, AC0 ; |326| 
        MOV AC0, dbl(*SP(#6)) ; |326| 
	.dwpsn	file "./susan.c",line 326,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |326| 
        MOV dbl(*SP(#4)), AC0 ; |326| 
        CMP AC1 >= AC0, TC1 ; |326| 
        BCC $C$L19,TC1 ; |326| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |326| 
$C$L16:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$2$B:
	.dwpsn	file "./susan.c",line 328,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |328| 
        SFTL T0, #1 ; |328| 
        MOV dbl(*SP(#8)), AC0 ; |328| 
        MOV dbl(*AR3(T0)), AC1 ; |328| 
        CMP AC1 <= AC0, TC1 ; |328| 
        BCC $C$L17,TC1 ; |328| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |328| 
$C$DW$L$_int_to_uchar$2$E:
$C$DW$L$_int_to_uchar$3$B:
	.dwpsn	file "./susan.c",line 330,column 13,is_stmt
        MOV *SP(#7), T0 ; |330| 
        SFTL T0, #1 ; |330| 
        MOV dbl(*AR3(T0)), AC0 ; |330| 
        MOV AC0, dbl(*SP(#8)) ; |330| 
$C$DW$L$_int_to_uchar$3$E:
$C$L17:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$4$B:
	.dwpsn	file "./susan.c",line 332,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |332| 
        SFTL T0, #1 ; |332| 
        MOV dbl(*SP(#10)), AC0 ; |332| 
        MOV dbl(*AR3(T0)), AC1 ; |332| 
        CMP AC1 >= AC0, TC1 ; |332| 
        BCC $C$L18,TC1 ; |332| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |332| 
$C$DW$L$_int_to_uchar$4$E:
$C$DW$L$_int_to_uchar$5$B:
	.dwpsn	file "./susan.c",line 334,column 13,is_stmt
        MOV *SP(#7), T0 ; |334| 
        SFTL T0, #1 ; |334| 
        MOV dbl(*AR3(T0)), AC0 ; |334| 
        MOV AC0, dbl(*SP(#10)) ; |334| 
$C$DW$L$_int_to_uchar$5$E:
$C$L18:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$6$B:
	.dwpsn	file "./susan.c",line 326,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |326| 
        ADD #1, AC0 ; |326| 
        MOV AC0, dbl(*SP(#6)) ; |326| 
	.dwpsn	file "./susan.c",line 326,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |326| 
        MOV dbl(*SP(#4)), AC0 ; |326| 
        CMP AC1 < AC0, TC1 ; |326| 
        BCC $C$L16,TC1 ; |326| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |326| 
$C$DW$L$_int_to_uchar$6$E:
$C$L19:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 338,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |338| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |338| 
        MOV AC0, dbl(*SP(#8)) ; |338| 
	.dwpsn	file "./susan.c",line 340,column 10,is_stmt
        MOV #0, AC0 ; |340| 
        MOV AC0, dbl(*SP(#6)) ; |340| 
	.dwpsn	file "./susan.c",line 340,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |340| 
        MOV dbl(*SP(#4)), AC0 ; |340| 
        CMP AC1 >= AC0, TC1 ; |340| 
        BCC $C$L21,TC1 ; |340| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |340| 
$C$L20:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$8$B:
	.dwpsn	file "./susan.c",line 342,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |342| 
        SFTL T0, #1 ; |342| 
        MOV dbl(*SP(#10)), AC0 ; |342| 
        SUB AC0, dbl(*AR3(T0)), AC1 ; |342| 
        SFTS AC1, #8, AC0 ; |342| 

        MOV dbl(*SP(#8)), AC1 ; |342| 
||      SUB AC1, AC0 ; |342| 

$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__divli")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #__divli ; |342| 
                                        ; call occurs [#__divli] ; |342| 
        MOV *SP(#7), T0 ; |342| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |342| 
	.dwpsn	file "./susan.c",line 340,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |340| 
        ADD #1, AC0 ; |340| 
        MOV AC0, dbl(*SP(#6)) ; |340| 
	.dwpsn	file "./susan.c",line 340,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |340| 
        MOV dbl(*SP(#6)), AC1 ; |340| 
        CMP AC1 < AC0, TC1 ; |340| 
        BCC $C$L20,TC1 ; |340| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |340| 
$C$DW$L$_int_to_uchar$8$E:
	.dwpsn	file "./susan.c",line 344,column 1,is_stmt
$C$L21:    
	CALL #_coverage_log;
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L20:1:1739475224")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x154)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x157)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_int_to_uchar$8$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_int_to_uchar$8$E)
	.dwendtag $C$DW$67


$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L16:1:1739475224")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x146)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x150)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_int_to_uchar$2$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_int_to_uchar$2$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_int_to_uchar$3$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_int_to_uchar$3$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_int_to_uchar$4$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_int_to_uchar$4$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_int_to_uchar$5$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_int_to_uchar$5$E)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_int_to_uchar$6$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_int_to_uchar$6$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$55, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x158)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_setup_brightness_lut

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("setup_brightness_lut")
	.dwattr $C$DW$75, DW_AT_low_pc(_setup_brightness_lut)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_setup_brightness_lut")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x15a)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 347,column 1,is_stmt,address _setup_brightness_lut

	.dwfde $C$DW$CIE, _setup_brightness_lut
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg17]
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("thresh")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("form")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: setup_brightness_lut                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup_brightness_lut:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("thresh")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("form")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC1, dbl(*SP(#4)) ; |347| 
        MOV AC0, dbl(*SP(#2)) ; |347| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 351,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMOV #_setbrightness, XAR3 ; |351| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 352,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV dbl(*SP(#0)), XAR2
        AMAR *+AR3(#258) ; |352| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 354,column 10,is_stmt
        MOV #-256, AC0 ; |354| 
        MOV AC0, dbl(*SP(#6)) ; |354| 
	.dwpsn	file "./susan.c",line 354,column 20,is_stmt
        MOV #257, AC0 ; |354| 
        MOV dbl(*SP(#6)), AC1 ; |354| 
        CMP AC1 >= AC0, TC1 ; |354| 
        BCC $C$L24,TC1 ; |354| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |354| 
$C$L22:    
	CALL #_coverage_log;
$C$DW$L$_setup_brightness_lut$2$B:
	.dwpsn	file "./susan.c",line 356,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |356| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("__fltlid")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #__fltlid ; |356| 
                                        ; call occurs [#__fltlid] ; |356| 
        MOV AC0, dbl(*SP(#10)) ; |356| 
        MOV dbl(*SP(#2)), AC0 ; |356| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("__fltlid")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #__fltlid ; |356| 
                                        ; call occurs [#__fltlid] ; |356| 

        MOV dbl(*SP(#10)), AC0 ; |356| 
||      OR #0, AC0, AC1

$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("__divd")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #__divd ; |356| 
                                        ; call occurs [#__divd] ; |356| 
        MOV AC0, dbl(*SP(#8)) ; |356| 
	.dwpsn	file "./susan.c",line 357,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |357| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("__mpyd")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #__mpyd ; |357| 
                                        ; call occurs [#__mpyd] ; |357| 
        MOV AC0, dbl(*SP(#8)) ; |357| 
	.dwpsn	file "./susan.c",line 358,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |358| 
||      MOV #6, AC0 ; |358| 

        CMP AC1 != AC0, TC1 ; |358| 
        BCC $C$L23,TC1 ; |358| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |358| 
$C$DW$L$_setup_brightness_lut$2$E:
$C$DW$L$_setup_brightness_lut$3$B:
	.dwpsn	file "./susan.c",line 359,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |359| 
        MOV dbl(*SP(#8)), AC1 ; |359| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("__mpyd")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #__mpyd ; |359| 
                                        ; call occurs [#__mpyd] ; |359| 
        MOV dbl(*SP(#8)), AC1 ; |359| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("__mpyd")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #__mpyd ; |359| 
                                        ; call occurs [#__mpyd] ; |359| 
        MOV AC0, dbl(*SP(#8)) ; |359| 
$C$DW$L$_setup_brightness_lut$3$E:
$C$L23:    
	CALL #_coverage_log;
$C$DW$L$_setup_brightness_lut$4$B:
	.dwpsn	file "./susan.c",line 360,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |360| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("__negd")
	.dwattr $C$DW$90, DW_AT_TI_call
        CALL #__negd ; |360| 
                                        ; call occurs [#__negd] ; |360| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_exp")
	.dwattr $C$DW$91, DW_AT_TI_call
        CALL #_exp ; |360| 
                                        ; call occurs [#_exp] ; |360| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL1)), AC0 ; |360| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("__mpyd")
	.dwattr $C$DW$92, DW_AT_TI_call
        CALL #__mpyd ; |360| 
                                        ; call occurs [#__mpyd] ; |360| 
        MOV AC0, dbl(*SP(#8)) ; |360| 
	.dwpsn	file "./susan.c",line 361,column 9,is_stmt
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__fixdu")
	.dwattr $C$DW$93, DW_AT_TI_call
        CALL #__fixdu ; |361| 
                                        ; call occurs [#__fixdu] ; |361| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T0 ; |361| 
||      MOV T0, AR1 ; |361| 

        MOV dbl(*AR3), XAR3
        MOV AR1, *AR3(T0) ; |361| 
	.dwpsn	file "./susan.c",line 354,column 29,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |354| 
        ADD #1, AC0 ; |354| 
        MOV AC0, dbl(*SP(#6)) ; |354| 
	.dwpsn	file "./susan.c",line 354,column 20,is_stmt
        MOV #257, AC0 ; |354| 
        MOV dbl(*SP(#6)), AC1 ; |354| 
        CMP AC1 < AC0, TC1 ; |354| 
        BCC $C$L22,TC1 ; |354| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |354| 
$C$DW$L$_setup_brightness_lut$4$E:
	.dwpsn	file "./susan.c",line 363,column 1,is_stmt
$C$L24:    
	CALL #_coverage_log;
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$95	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$95, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L22:1:1739475224")
	.dwattr $C$DW$95, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x162)
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x16a)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$2$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$2$E)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$3$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$3$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$4$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$4$E)
	.dwendtag $C$DW$95

	.dwattr $C$DW$75, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x16b)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text"
	.global	_edge_draw

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("edge_draw")
	.dwattr $C$DW$99, DW_AT_low_pc(_edge_draw)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_edge_draw")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./susan.c",line 366,column 1,is_stmt,address _edge_draw

	.dwfde $C$DW$CIE, _edge_draw
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg17]
$C$DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg19]
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg3]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drawing_mode")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: edge_draw                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_edge_draw:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("mid")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("drawing_mode")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("inp")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_inp")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("midp")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_midp")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV AC2, dbl(*SP(#8)) ; |366| 
        MOV AC1, dbl(*SP(#6)) ; |366| 
        MOV AC0, dbl(*SP(#4)) ; |366| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 370,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |370| 
        BCC $C$L27,AC0 != #0 ; |370| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |370| 
	.dwpsn	file "./susan.c",line 373,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 374,column 14,is_stmt
        MOV #0, AC0 ; |374| 
        MOV AC0, dbl(*SP(#10)) ; |374| 
	.dwpsn	file "./susan.c",line 374,column 21,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |374| 
        MOV dbl(*SP(#4)), AC0 ; |374| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__mpyli")
	.dwattr $C$DW$113, DW_AT_TI_call
        CALL #__mpyli ; |374| 
                                        ; call occurs [#__mpyli] ; |374| 
        MOV dbl(*SP(#10)), AC1 ; |374| 
        CMP AC1 >= AC0, TC1 ; |374| 
        BCC $C$L27,TC1 ; |374| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |374| 
$C$L25:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$3$B:
	.dwpsn	file "./susan.c",line 376,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3

        MOV *AR3, AR1 ; |376| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |376| 
        BCC $C$L26,TC1 ; |376| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |376| 
$C$DW$L$_edge_draw$3$E:
$C$DW$L$_edge_draw$4$B:
	.dwpsn	file "./susan.c",line 378,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#14)), XAR2
        ASUB XAR3, XAR2 ; |378| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), AR1 ; |378| 
        AADD XAR2, XAR3 ; |378| 
        ASUB AR1, AR3 ; |378| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./susan.c",line 379,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |379| 
	.dwpsn	file "./susan.c",line 380,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |380| 
	.dwpsn	file "./susan.c",line 381,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |381| 
	.dwpsn	file "./susan.c",line 382,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |382| 
        SUB #2, AC0 ; |382| 
        MOV AC0, AR1 ; |382| 

        MOV XAR3, dbl(*SP(#12))
||      AADD AR1, AR3 ; |382| 

	.dwpsn	file "./susan.c",line 383,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |383| 
	.dwpsn	file "./susan.c",line 384,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |384| 
	.dwpsn	file "./susan.c",line 385,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |385| 
	.dwpsn	file "./susan.c",line 386,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |386| 
        SUB #2, AC0 ; |386| 
        MOV AC0, AR1 ; |386| 

        MOV XAR3, dbl(*SP(#12))
||      AADD AR1, AR3 ; |386| 

	.dwpsn	file "./susan.c",line 387,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |387| 
	.dwpsn	file "./susan.c",line 388,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |388| 
	.dwpsn	file "./susan.c",line 389,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |389| 
$C$DW$L$_edge_draw$4$E:
$C$L26:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$5$B:
	.dwpsn	file "./susan.c",line 391,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 374,column 42,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |374| 
        ADD #1, AC0 ; |374| 
        MOV AC0, dbl(*SP(#10)) ; |374| 
	.dwpsn	file "./susan.c",line 374,column 21,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |374| 
        MOV dbl(*SP(#4)), AC0 ; |374| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__mpyli")
	.dwattr $C$DW$114, DW_AT_TI_call
        CALL #__mpyli ; |374| 
                                        ; call occurs [#__mpyli] ; |374| 
        MOV dbl(*SP(#10)), AC1 ; |374| 
        CMP AC1 < AC0, TC1 ; |374| 
        BCC $C$L25,TC1 ; |374| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |374| 
$C$DW$L$_edge_draw$5$E:
$C$L27:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 396,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 397,column 10,is_stmt
        MOV #0, AC0 ; |397| 
        MOV AC0, dbl(*SP(#10)) ; |397| 
	.dwpsn	file "./susan.c",line 397,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |397| 
        MOV dbl(*SP(#4)), AC0 ; |397| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__mpyli")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #__mpyli ; |397| 
                                        ; call occurs [#__mpyli] ; |397| 
        MOV dbl(*SP(#10)), AC1 ; |397| 
        CMP AC1 >= AC0, TC1 ; |397| 
        BCC $C$L30,TC1 ; |397| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |397| 
$C$L28:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$7$B:
	.dwpsn	file "./susan.c",line 399,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR3

        MOV *AR3, AR1 ; |399| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |399| 
        BCC $C$L29,TC1 ; |399| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |399| 
$C$DW$L$_edge_draw$7$E:
$C$DW$L$_edge_draw$8$B:
	.dwpsn	file "./susan.c",line 400,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC1
        MOV dbl(*SP(#14)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        SUB AC1, AC0 ; |400| 
        MOV AC0, T0 ; |400| 
        MOV #0, *AR3(T0) ; |400| 
$C$DW$L$_edge_draw$8$E:
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$9$B:
	.dwpsn	file "./susan.c",line 401,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 397,column 38,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |397| 
        ADD #1, AC0 ; |397| 
        MOV AC0, dbl(*SP(#10)) ; |397| 
	.dwpsn	file "./susan.c",line 397,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |397| 
        MOV dbl(*SP(#4)), AC0 ; |397| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__mpyli")
	.dwattr $C$DW$116, DW_AT_TI_call
        CALL #__mpyli ; |397| 
                                        ; call occurs [#__mpyli] ; |397| 
        MOV dbl(*SP(#10)), AC1 ; |397| 
        CMP AC1 < AC0, TC1 ; |397| 
        BCC $C$L28,TC1 ; |397| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |397| 
$C$DW$L$_edge_draw$9$E:
	.dwpsn	file "./susan.c",line 403,column 1,is_stmt
$C$L30:    
	CALL #_coverage_log;
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$118	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$118, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L28:1:1739475224")
	.dwattr $C$DW$118, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x192)
$C$DW$119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$119, DW_AT_low_pc($C$DW$L$_edge_draw$7$B)
	.dwattr $C$DW$119, DW_AT_high_pc($C$DW$L$_edge_draw$7$E)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_edge_draw$8$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_edge_draw$8$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_edge_draw$9$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_edge_draw$9$E)
	.dwendtag $C$DW$118


$C$DW$122	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$122, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L25:1:1739475224")
	.dwattr $C$DW$122, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x176)
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x188)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_edge_draw$3$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_edge_draw$3$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_edge_draw$4$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_edge_draw$4$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_edge_draw$5$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_edge_draw$5$E)
	.dwendtag $C$DW$122

	.dwattr $C$DW$99, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x193)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.global	_susan_principle_small

$C$DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_principle_small")
	.dwattr $C$DW$126, DW_AT_low_pc(_susan_principle_small)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_susan_principle_small")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x195)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./susan.c",line 406,column 1,is_stmt,address _susan_principle_small

	.dwfde $C$DW$CIE, _susan_principle_small
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg19]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg21]
$C$DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_no")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]
$C$DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg3]
$C$DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: susan_principle_small                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_principle_small:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("max_no")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV AC2, dbl(*SP(#10)) ; |406| 
        MOV AC1, dbl(*SP(#8)) ; |406| 
        MOV AC0, dbl(*SP(#6)) ; |406| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 410,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |410| 
        MOV dbl(*SP(#10)), AC1 ; |410| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__mpyli")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #__mpyli ; |410| 
                                        ; call occurs [#__mpyli] ; |410| 
        MOV dbl(*SP(#4)), XAR0

        SFTS AC0, #1, AC0 ; |410| 
||      MOV #0, T0

$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_memset")
	.dwattr $C$DW$145, DW_AT_TI_call

        CALL #_memset ; |410| 
||      MOV AC0, T1 ; |410| 

                                        ; call occurs [#_memset] ; |410| 
	.dwpsn	file "./susan.c",line 412,column 5,is_stmt
        MOV #730, AC0 ; |412| 
        MOV AC0, dbl(*SP(#6)) ; |412| 
	.dwpsn	file "./susan.c",line 414,column 10,is_stmt
        MOV #1, AC0 ; |414| 
        MOV AC0, dbl(*SP(#12)) ; |414| 
	.dwpsn	file "./susan.c",line 414,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |414| 

        SUB #1, AC0 ; |414| 
||      MOV dbl(*SP(#12)), AC1 ; |414| 

        CMP AC1 >= AC0, TC1 ; |414| 
        BCC $C$L35,TC1 ; |414| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |414| 
$C$L31:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$2$B:
	.dwpsn	file "./susan.c",line 416,column 14,is_stmt
        MOV #1, AC0 ; |416| 
        MOV AC0, dbl(*SP(#14)) ; |416| 
	.dwpsn	file "./susan.c",line 416,column 21,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |416| 

        SUB #1, AC0 ; |416| 
||      MOV dbl(*SP(#14)), AC1 ; |416| 

        CMP AC1 >= AC0, TC1 ; |416| 
        BCC $C$L34,TC1 ; |416| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |416| 
$C$DW$L$_susan_principle_small$2$E:
$C$L32:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$3$B:
	.dwpsn	file "./susan.c",line 418,column 13,is_stmt
        MOV #100, AC0 ; |418| 
        MOV AC0, dbl(*SP(#16)) ; |418| 
	.dwpsn	file "./susan.c",line 419,column 13,is_stmt

        MOV #1, AC0 ; |419| 
||      MOV dbl(*SP(#8)), AC1 ; |419| 

        SUB AC0, dbl(*SP(#12)), AC0 ; |419| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__mpyli")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #__mpyli ; |419| 
                                        ; call occurs [#__mpyli] ; |419| 
        MOV AC0, AR1 ; |419| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#15), AR1 ; |419| 
||      AADD AR1, AR3 ; |419| 

        AADD AR1, AR3 ; |419| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#18))
	.dwpsn	file "./susan.c",line 420,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |420| 
        MOV dbl(*SP(#8)), AC1 ; |420| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__mpyli")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #__mpyli ; |420| 
                                        ; call occurs [#__mpyli] ; |420| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#14)), AC0, AC0 ; |420| 
        MOV AC0, T0 ; |420| 
        MOV *AR3(T0), AR1 ; |420| 
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#20))
||      AADD AR1, AR3 ; |420| 

	.dwpsn	file "./susan.c",line 422,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |422| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |422| 
        MOV uns(*AR3), AC0 ; |422| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |422| 
        MOV AC0, dbl(*SP(#16)) ; |422| 
	.dwpsn	file "./susan.c",line 423,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |423| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |423| 
        MOV uns(*AR3), AC0 ; |423| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |423| 
        MOV AC0, dbl(*SP(#16)) ; |423| 
	.dwpsn	file "./susan.c",line 424,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3, AR1 ; |424| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |424| 
        MOV uns(*AR3), AC0 ; |424| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |424| 
        MOV AC0, dbl(*SP(#16)) ; |424| 
	.dwpsn	file "./susan.c",line 425,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |425| 
        SUB #2, AC0 ; |425| 
        MOV AC0, AR1 ; |425| 

        MOV XAR3, dbl(*SP(#18))
||      AADD AR1, AR3 ; |425| 

	.dwpsn	file "./susan.c",line 427,column 13,is_stmt
        MOV *AR3, AR1 ; |427| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |427| 
        MOV uns(*AR3), AC0 ; |427| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |427| 
        MOV AC0, dbl(*SP(#16)) ; |427| 
	.dwpsn	file "./susan.c",line 428,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#18))
||      AADD #2, AR3 ; |428| 

	.dwpsn	file "./susan.c",line 429,column 13,is_stmt
        MOV *AR3, AR1 ; |429| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |429| 
        MOV uns(*AR3), AC0 ; |429| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |429| 
        MOV AC0, dbl(*SP(#16)) ; |429| 
	.dwpsn	file "./susan.c",line 430,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |430| 
        SUB #2, AC0 ; |430| 
        MOV AC0, AR1 ; |430| 

        MOV XAR3, dbl(*SP(#18))
||      AADD AR1, AR3 ; |430| 

	.dwpsn	file "./susan.c",line 432,column 13,is_stmt
        MOV *AR3+, AR1 ; |432| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |432| 
        MOV uns(*AR3), AC0 ; |432| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |432| 
        MOV AC0, dbl(*SP(#16)) ; |432| 
	.dwpsn	file "./susan.c",line 433,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |433| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |433| 
        MOV uns(*AR3), AC0 ; |433| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |433| 
        MOV AC0, dbl(*SP(#16)) ; |433| 
	.dwpsn	file "./susan.c",line 434,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3, AR1 ; |434| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |434| 
        MOV uns(*AR3), AC0 ; |434| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |434| 
        MOV AC0, dbl(*SP(#16)) ; |434| 
	.dwpsn	file "./susan.c",line 436,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |436| 
        MOV dbl(*SP(#16)), AC1 ; |436| 
        CMP AC1 > AC0, TC1 ; |436| 
        BCC $C$L33,TC1 ; |436| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |436| 
$C$DW$L$_susan_principle_small$3$E:
$C$DW$L$_susan_principle_small$4$B:
	.dwpsn	file "./susan.c",line 438,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |438| 
        MOV dbl(*SP(#8)), AC1 ; |438| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("__mpyli")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #__mpyli ; |438| 
                                        ; call occurs [#__mpyli] ; |438| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#14)), AC0, AC0 ; |438| 
        MOV AC0, T0 ; |438| 
        SFTL T0, #1 ; |438| 
        MOV dbl(*SP(#16)), AC0 ; |438| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |438| 
        MOV AC0, dbl(*AR3(T0)) ; |438| 
$C$DW$L$_susan_principle_small$4$E:
$C$L33:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$5$B:
	.dwpsn	file "./susan.c",line 416,column 37,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |416| 
        ADD #1, AC0 ; |416| 
        MOV AC0, dbl(*SP(#14)) ; |416| 
	.dwpsn	file "./susan.c",line 416,column 21,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |416| 

        SUB #1, AC0 ; |416| 
||      MOV dbl(*SP(#14)), AC1 ; |416| 

        CMP AC1 < AC0, TC1 ; |416| 
        BCC $C$L32,TC1 ; |416| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |416| 
$C$DW$L$_susan_principle_small$5$E:
$C$L34:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$6$B:
	.dwpsn	file "./susan.c",line 414,column 33,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |414| 
        ADD #1, AC0 ; |414| 
        MOV AC0, dbl(*SP(#12)) ; |414| 
	.dwpsn	file "./susan.c",line 414,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |414| 

        SUB #1, AC0 ; |414| 
||      MOV dbl(*SP(#12)), AC1 ; |414| 

        CMP AC1 < AC0, TC1 ; |414| 
        BCC $C$L31,TC1 ; |414| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |414| 
$C$DW$L$_susan_principle_small$6$E:
	.dwpsn	file "./susan.c",line 442,column 1,is_stmt
$C$L35:    
	CALL #_coverage_log;
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$150	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$150, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L31:1:1739475224")
	.dwattr $C$DW$150, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x19e)
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x1b9)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_susan_principle_small$2$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_susan_principle_small$2$E)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_susan_principle_small$6$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_susan_principle_small$6$E)

$C$DW$153	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$153, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L32:2:1739475224")
	.dwattr $C$DW$153, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x1a0)
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x1b8)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_susan_principle_small$3$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_susan_principle_small$3$E)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_susan_principle_small$4$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_susan_principle_small$4$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_susan_principle_small$5$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_susan_principle_small$5$E)
	.dwendtag $C$DW$153

	.dwendtag $C$DW$150

	.dwattr $C$DW$126, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x1ba)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.global	_susan_edges_small

$C$DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_edges_small")
	.dwattr $C$DW$157, DW_AT_low_pc(_susan_edges_small)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_susan_edges_small")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x1bd)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x2e)
	.dwpsn	file "./susan.c",line 446,column 1,is_stmt,address _susan_edges_small

	.dwfde $C$DW$CIE, _susan_edges_small
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg17]
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg19]
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg21]
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg23]
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_no")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg3]
$C$DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg6]
;*******************************************************************************
;* FUNCTION NAME: susan_edges_small                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2, *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 46 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (44 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_edges_small:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-45, SP
	.dwcfi	cfa_offset, 46
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("mid")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("max_no")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("z")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_z")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("do_symmetry")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_do_symmetry")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("m")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_m")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_b")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 40]
        MOV AC2, dbl(*SP(#12)) ; |446| 
        MOV AC1, dbl(*SP(#10)) ; |446| 
        MOV AC0, dbl(*SP(#8)) ; |446| 
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 451,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |451| 
        MOV dbl(*SP(#12)), AC1 ; |451| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("__mpyli")
	.dwattr $C$DW$186, DW_AT_TI_call
        CALL #__mpyli ; |451| 
                                        ; call occurs [#__mpyli] ; |451| 
        MOV dbl(*SP(#2)), XAR0

        SFTS AC0, #1, AC0 ; |451| 
||      MOV #0, T0

$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_memset")
	.dwattr $C$DW$187, DW_AT_TI_call

        CALL #_memset ; |451| 
||      MOV AC0, T1 ; |451| 

                                        ; call occurs [#_memset] ; |451| 
	.dwpsn	file "./susan.c",line 453,column 5,is_stmt
        MOV #730, AC0 ; |453| 
        MOV AC0, dbl(*SP(#8)) ; |453| 
	.dwpsn	file "./susan.c",line 455,column 10,is_stmt
        MOV #1, AC0 ; |455| 
        MOV AC0, dbl(*SP(#18)) ; |455| 
	.dwpsn	file "./susan.c",line 455,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |455| 

        SUB #1, AC0 ; |455| 
||      MOV dbl(*SP(#18)), AC1 ; |455| 

        CMP AC1 >= AC0, TC1 ; |455| 
        BCC $C$L40,TC1 ; |455| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |455| 
$C$L36:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$2$B:
	.dwpsn	file "./susan.c",line 456,column 14,is_stmt
        MOV #1, AC0 ; |456| 
        MOV AC0, dbl(*SP(#20)) ; |456| 
	.dwpsn	file "./susan.c",line 456,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |456| 

        SUB #1, AC0 ; |456| 
||      MOV dbl(*SP(#20)), AC1 ; |456| 

        CMP AC1 >= AC0, TC1 ; |456| 
        BCC $C$L39,TC1 ; |456| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |456| 
$C$DW$L$_susan_edges_small$2$E:
$C$L37:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$3$B:
	.dwpsn	file "./susan.c",line 458,column 13,is_stmt
        MOV #100, AC0 ; |458| 
        MOV AC0, dbl(*SP(#24)) ; |458| 
	.dwpsn	file "./susan.c",line 459,column 13,is_stmt

        MOV #1, AC0 ; |459| 
||      MOV dbl(*SP(#10)), AC1 ; |459| 

        SUB AC0, dbl(*SP(#18)), AC0 ; |459| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("__mpyli")
	.dwattr $C$DW$188, DW_AT_TI_call
        CALL #__mpyli ; |459| 
                                        ; call occurs [#__mpyli] ; |459| 
        MOV AC0, AR1 ; |459| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |459| 
||      AADD AR1, AR3 ; |459| 

        AADD AR1, AR3 ; |459| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 460,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |460| 
        MOV dbl(*SP(#10)), AC1 ; |460| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("__mpyli")
	.dwattr $C$DW$189, DW_AT_TI_call
        CALL #__mpyli ; |460| 
                                        ; call occurs [#__mpyli] ; |460| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |460| 
        MOV AC0, T0 ; |460| 
        MOV *AR3(T0), AR1 ; |460| 
        MOV dbl(*SP(#6)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |460| 

	.dwpsn	file "./susan.c",line 462,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |462| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |462| 
        MOV uns(*AR3), AC0 ; |462| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |462| 
        MOV AC0, dbl(*SP(#24)) ; |462| 
	.dwpsn	file "./susan.c",line 463,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |463| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |463| 
        MOV uns(*AR3), AC0 ; |463| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |463| 
        MOV AC0, dbl(*SP(#24)) ; |463| 
	.dwpsn	file "./susan.c",line 464,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |464| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |464| 
        MOV uns(*AR3), AC0 ; |464| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |464| 
        MOV AC0, dbl(*SP(#24)) ; |464| 
	.dwpsn	file "./susan.c",line 465,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |465| 
        SUB #2, AC0 ; |465| 
        MOV AC0, AR1 ; |465| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |465| 

	.dwpsn	file "./susan.c",line 467,column 13,is_stmt
        MOV *AR3, AR1 ; |467| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |467| 
        MOV uns(*AR3), AC0 ; |467| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |467| 
        MOV AC0, dbl(*SP(#24)) ; |467| 
	.dwpsn	file "./susan.c",line 468,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |468| 

	.dwpsn	file "./susan.c",line 469,column 13,is_stmt
        MOV *AR3, AR1 ; |469| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |469| 
        MOV uns(*AR3), AC0 ; |469| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |469| 
        MOV AC0, dbl(*SP(#24)) ; |469| 
	.dwpsn	file "./susan.c",line 470,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |470| 
        SUB #2, AC0 ; |470| 
        MOV AC0, AR1 ; |470| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |470| 

	.dwpsn	file "./susan.c",line 472,column 13,is_stmt
        MOV *AR3+, AR1 ; |472| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |472| 
        MOV uns(*AR3), AC0 ; |472| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |472| 
        MOV AC0, dbl(*SP(#24)) ; |472| 
	.dwpsn	file "./susan.c",line 473,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |473| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |473| 
        MOV uns(*AR3), AC0 ; |473| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |473| 
        MOV AC0, dbl(*SP(#24)) ; |473| 
	.dwpsn	file "./susan.c",line 474,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |474| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |474| 
        MOV uns(*AR3), AC0 ; |474| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |474| 
        MOV AC0, dbl(*SP(#24)) ; |474| 
	.dwpsn	file "./susan.c",line 476,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |476| 
        MOV dbl(*SP(#24)), AC1 ; |476| 
        CMP AC1 > AC0, TC1 ; |476| 
        BCC $C$L38,TC1 ; |476| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |476| 
$C$DW$L$_susan_edges_small$3$E:
$C$DW$L$_susan_edges_small$4$B:
	.dwpsn	file "./susan.c",line 477,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |477| 
        MOV dbl(*SP(#10)), AC1 ; |477| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__mpyli")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #__mpyli ; |477| 
                                        ; call occurs [#__mpyli] ; |477| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |477| 
        MOV AC0, T0 ; |477| 
        SFTL T0, #1 ; |477| 
        MOV dbl(*SP(#24)), AC0 ; |477| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |477| 
        MOV AC0, dbl(*AR3(T0)) ; |477| 
$C$DW$L$_susan_edges_small$4$E:
$C$L38:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$5$B:
	.dwpsn	file "./susan.c",line 456,column 37,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |456| 
        ADD #1, AC0 ; |456| 
        MOV AC0, dbl(*SP(#20)) ; |456| 
	.dwpsn	file "./susan.c",line 456,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |456| 

        SUB #1, AC0 ; |456| 
||      MOV dbl(*SP(#20)), AC1 ; |456| 

        CMP AC1 < AC0, TC1 ; |456| 
        BCC $C$L37,TC1 ; |456| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |456| 
$C$DW$L$_susan_edges_small$5$E:
$C$L39:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$6$B:
	.dwpsn	file "./susan.c",line 455,column 33,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |455| 
        ADD #1, AC0 ; |455| 
        MOV AC0, dbl(*SP(#18)) ; |455| 
	.dwpsn	file "./susan.c",line 455,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |455| 

        SUB #1, AC0 ; |455| 
||      MOV dbl(*SP(#18)), AC1 ; |455| 

        CMP AC1 < AC0, TC1 ; |455| 
        BCC $C$L36,TC1 ; |455| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |455| 
$C$DW$L$_susan_edges_small$6$E:
$C$L40:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 480,column 10,is_stmt
        MOV #2, AC0 ; |480| 
        MOV AC0, dbl(*SP(#18)) ; |480| 
	.dwpsn	file "./susan.c",line 480,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |480| 

        SUB #2, AC0 ; |480| 
||      MOV dbl(*SP(#18)), AC1 ; |480| 

        CMP AC1 >= AC0, TC1 ; |480| 
        BCC $C$L62,TC1 ; |480| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |480| 
$C$L41:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$8$B:
	.dwpsn	file "./susan.c",line 481,column 14,is_stmt
        MOV #2, AC0 ; |481| 
        MOV AC0, dbl(*SP(#20)) ; |481| 
	.dwpsn	file "./susan.c",line 481,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |481| 

        SUB #2, AC0 ; |481| 
||      MOV dbl(*SP(#20)), AC1 ; |481| 

        CMP AC1 >= AC0, TC1 ; |481| 
        BCC $C$L61,TC1 ; |481| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |481| 
$C$DW$L$_susan_edges_small$8$E:
$C$L42:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$9$B:
	.dwpsn	file "./susan.c",line 483,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |483| 
        MOV dbl(*SP(#10)), AC1 ; |483| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("__mpyli")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #__mpyli ; |483| 
                                        ; call occurs [#__mpyli] ; |483| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |483| 
        MOV AC0, T0 ; |483| 
        SFTL T0, #1 ; |483| 
        MOV dbl(*AR3(T0)), AC0 ; |483| 
        BCC $C$L60,AC0 <= #0 ; |483| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |483| 
$C$DW$L$_susan_edges_small$9$E:
$C$DW$L$_susan_edges_small$10$B:
	.dwpsn	file "./susan.c",line 485,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |485| 
        MOV dbl(*SP(#10)), AC1 ; |485| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__mpyli")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #__mpyli ; |485| 
                                        ; call occurs [#__mpyli] ; |485| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |485| 
        MOV AC0, T0 ; |485| 
        SFTL T0, #1 ; |485| 
        MOV dbl(*AR3(T0)), AC0 ; |485| 
        MOV AC0, dbl(*SP(#22)) ; |485| 
	.dwpsn	file "./susan.c",line 486,column 17,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |486| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |486| 
        MOV AC0, dbl(*SP(#24)) ; |486| 
	.dwpsn	file "./susan.c",line 487,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |487| 
        MOV dbl(*SP(#10)), AC1 ; |487| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("__mpyli")
	.dwattr $C$DW$193, DW_AT_TI_call
        CALL #__mpyli ; |487| 
                                        ; call occurs [#__mpyli] ; |487| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |487| 
        MOV AC0, T0 ; |487| 
        MOV *AR3(T0), AR1 ; |487| 
        MOV dbl(*SP(#6)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |487| 

	.dwpsn	file "./susan.c",line 489,column 17,is_stmt
        MOV #250, AC0 ; |489| 
        MOV dbl(*SP(#24)), AC1 ; |489| 
        CMP AC1 <= AC0, TC1 ; |489| 
        BCC $C$L52,TC1 ; |489| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |489| 
$C$DW$L$_susan_edges_small$10$E:
$C$DW$L$_susan_edges_small$11$B:
	.dwpsn	file "./susan.c",line 491,column 21,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |491| 
||      MOV #1, AC0 ; |491| 

        SUB AC0, dbl(*SP(#18)), AC0 ; |491| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__mpyli")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #__mpyli ; |491| 
                                        ; call occurs [#__mpyli] ; |491| 
        MOV AC0, AR1 ; |491| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |491| 
||      AADD AR1, AR3 ; |491| 

        AADD AR1, AR3 ; |491| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 492,column 21,is_stmt
        MOV #0, AC0 ; |492| 
        MOV AC0, dbl(*SP(#30)) ; |492| 
	.dwpsn	file "./susan.c",line 493,column 21,is_stmt
        MOV AC0, dbl(*SP(#32)) ; |493| 
	.dwpsn	file "./susan.c",line 495,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |495| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |495| 
        MOV *AR3, AR1 ; |495| 
        MOV AR1, *SP(#36) ; |495| 
	.dwpsn	file "./susan.c",line 496,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |496| 
        SUB AC0, dbl(*SP(#30)), AC0 ; |496| 
        MOV AC0, dbl(*SP(#30)) ; |496| 
	.dwpsn	file "./susan.c",line 497,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |497| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |497| 
        MOV AC0, dbl(*SP(#32)) ; |497| 
	.dwpsn	file "./susan.c",line 498,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |498| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |498| 
        MOV *AR3, AR1 ; |498| 
        MOV AR1, *SP(#36) ; |498| 
	.dwpsn	file "./susan.c",line 499,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |499| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |499| 
        MOV AC0, dbl(*SP(#32)) ; |499| 
	.dwpsn	file "./susan.c",line 500,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |500| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |500| 
        MOV *AR3, AR1 ; |500| 
        MOV AR1, *SP(#36) ; |500| 
	.dwpsn	file "./susan.c",line 501,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |501| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |501| 
        MOV AC0, dbl(*SP(#30)) ; |501| 
	.dwpsn	file "./susan.c",line 502,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |502| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |502| 
        MOV AC0, dbl(*SP(#32)) ; |502| 
	.dwpsn	file "./susan.c",line 503,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |503| 
        SUB #2, AC0 ; |503| 
        MOV AC0, AR1 ; |503| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |503| 

	.dwpsn	file "./susan.c",line 505,column 21,is_stmt
        MOV *AR3, AR1 ; |505| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |505| 
        MOV *AR3, AR1 ; |505| 
        MOV AR1, *SP(#36) ; |505| 
	.dwpsn	file "./susan.c",line 506,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |506| 
        SUB AC0, dbl(*SP(#30)), AC0 ; |506| 
        MOV AC0, dbl(*SP(#30)) ; |506| 
	.dwpsn	file "./susan.c",line 507,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |507| 

	.dwpsn	file "./susan.c",line 508,column 21,is_stmt
        MOV *AR3, AR1 ; |508| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |508| 
        MOV *AR3, AR1 ; |508| 
        MOV AR1, *SP(#36) ; |508| 
	.dwpsn	file "./susan.c",line 509,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |509| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |509| 
        MOV AC0, dbl(*SP(#30)) ; |509| 
	.dwpsn	file "./susan.c",line 510,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |510| 
        SUB #2, AC0 ; |510| 
        MOV AC0, AR1 ; |510| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |510| 

	.dwpsn	file "./susan.c",line 512,column 21,is_stmt
        MOV *AR3+, AR1 ; |512| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |512| 
        MOV *AR3, AR1 ; |512| 
        MOV AR1, *SP(#36) ; |512| 
	.dwpsn	file "./susan.c",line 513,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |513| 
        SUB AC0, dbl(*SP(#30)), AC0 ; |513| 
        MOV AC0, dbl(*SP(#30)) ; |513| 
	.dwpsn	file "./susan.c",line 514,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |514| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |514| 
        MOV AC0, dbl(*SP(#32)) ; |514| 
	.dwpsn	file "./susan.c",line 515,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |515| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |515| 
        MOV *AR3, AR1 ; |515| 
        MOV AR1, *SP(#36) ; |515| 
	.dwpsn	file "./susan.c",line 516,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |516| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |516| 
        MOV AC0, dbl(*SP(#32)) ; |516| 
	.dwpsn	file "./susan.c",line 517,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |517| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |517| 
        MOV *AR3, AR1 ; |517| 
        MOV AR1, *SP(#36) ; |517| 
	.dwpsn	file "./susan.c",line 518,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |518| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |518| 
        MOV AC0, dbl(*SP(#30)) ; |518| 
	.dwpsn	file "./susan.c",line 519,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |519| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |519| 
        MOV AC0, dbl(*SP(#32)) ; |519| 
	.dwpsn	file "./susan.c",line 521,column 21,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |521| 
        MOV dbl(*SP(#30)), AC1 ; |521| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("__mpyli")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #__mpyli ; |521| 
                                        ; call occurs [#__mpyli] ; |521| 
        MOV dbl(*SP(#32)), AC1 ; |521| 

        MOV dbl(*SP(#32)), AC0 ; |521| 
||      OR #0, AC0, AC2

$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__mpyli")
	.dwattr $C$DW$196, DW_AT_TI_call
        CALL #__mpyli ; |521| 
                                        ; call occurs [#__mpyli] ; |521| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("__fltlid")
	.dwattr $C$DW$197, DW_AT_TI_call

        CALL #__fltlid ; |521| 
||      ADD AC2, AC0 ; |521| 

                                        ; call occurs [#__fltlid] ; |521| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_sqrt")
	.dwattr $C$DW$198, DW_AT_TI_call
        CALL #_sqrt ; |521| 
                                        ; call occurs [#_sqrt] ; |521| 
        MOV AC0, dbl(*SP(#14)) ; |521| 
	.dwpsn	file "./susan.c",line 522,column 21,is_stmt
        MOV dbl(*SP(#24)), AC0 ; |522| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("__fltlid")
	.dwattr $C$DW$199, DW_AT_TI_call
        CALL #__fltlid ; |522| 
                                        ; call occurs [#__fltlid] ; |522| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL2)), AC0 ; |522| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("__mpyd")
	.dwattr $C$DW$200, DW_AT_TI_call
        CALL #__mpyd ; |522| 
                                        ; call occurs [#__mpyd] ; |522| 

        MOV dbl(*SP(#14)), AC0 ; |522| 
||      OR #0, AC0, AC1

$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("__cmpd")
	.dwattr $C$DW$201, DW_AT_TI_call
        CALL #__cmpd ; |522| 
                                        ; call occurs [#__cmpd] ; |522| 
        BCC $C$L51,T0 <= #0 ; |522| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |522| 
$C$DW$L$_susan_edges_small$11$E:
$C$DW$L$_susan_edges_small$12$B:
	.dwpsn	file "./susan.c",line 524,column 25,is_stmt
        MOV #0, AC0 ; |524| 
        MOV AC0, dbl(*SP(#16)) ; |524| 
	.dwpsn	file "./susan.c",line 525,column 25,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |525| 
        BCC $C$L43,AC0 != #0 ; |525| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |525| 
$C$DW$L$_susan_edges_small$12$E:
$C$DW$L$_susan_edges_small$13$B:
	.dwpsn	file "./susan.c",line 526,column 29,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |526| 
        MOV AC0, dbl(*SP(#14)) ; |526| 
        B $C$L44  ; |526| 
                                        ; branch occurs ; |526| 
$C$DW$L$_susan_edges_small$13$E:
$C$L43:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$14$B:
	.dwpsn	file "./susan.c",line 528,column 29,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |528| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("__fltlid")
	.dwattr $C$DW$202, DW_AT_TI_call
        CALL #__fltlid ; |528| 
                                        ; call occurs [#__fltlid] ; |528| 
        MOV AC0, dbl(*SP(#42)) ; |528| 
        MOV dbl(*SP(#30)), AC0 ; |528| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("__fltlid")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #__fltlid ; |528| 
                                        ; call occurs [#__fltlid] ; |528| 

        MOV dbl(*SP(#42)), AC0 ; |528| 
||      OR #0, AC0, AC1

$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("__divd")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #__divd ; |528| 
                                        ; call occurs [#__divd] ; |528| 
        MOV AC0, dbl(*SP(#14)) ; |528| 
$C$DW$L$_susan_edges_small$14$E:
$C$L44:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$15$B:
	.dwpsn	file "./susan.c",line 529,column 25,is_stmt
        MOV dbl(*($C$FL4)), AC1 ; |529| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__cmpd")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #__cmpd ; |529| 
                                        ; call occurs [#__cmpd] ; |529| 
        BCC $C$L45,T0 >= #0 ; |529| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |529| 
$C$DW$L$_susan_edges_small$15$E:
$C$DW$L$_susan_edges_small$16$B:
	.dwpsn	file "./susan.c",line 531,column 29,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |531| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("__negd")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #__negd ; |531| 
                                        ; call occurs [#__negd] ; |531| 
        MOV AC0, dbl(*SP(#14)) ; |531| 
	.dwpsn	file "./susan.c",line 532,column 29,is_stmt
        MOV #-1, AC0 ; |532| 
        MOV AC0, dbl(*SP(#34)) ; |532| 
	.dwpsn	file "./susan.c",line 533,column 25,is_stmt
        B $C$L46  ; |533| 
                                        ; branch occurs ; |533| 
$C$DW$L$_susan_edges_small$16$E:
$C$L45:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$17$B:
	.dwpsn	file "./susan.c",line 535,column 29,is_stmt
        MOV #1, AC0 ; |535| 
        MOV AC0, dbl(*SP(#34)) ; |535| 
$C$DW$L$_susan_edges_small$17$E:
$C$L46:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$18$B:
	.dwpsn	file "./susan.c",line 536,column 25,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |536| 
        MOV dbl(*($C$FL5)), AC1 ; |536| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("__cmpd")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #__cmpd ; |536| 
                                        ; call occurs [#__cmpd] ; |536| 
        BCC $C$L47,T0 >= #0 ; |536| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |536| 
$C$DW$L$_susan_edges_small$18$E:
$C$DW$L$_susan_edges_small$19$B:
	.dwpsn	file "./susan.c",line 538,column 29,is_stmt
        MOV #0, AC0 ; |538| 
        MOV AC0, dbl(*SP(#26)) ; |538| 
	.dwpsn	file "./susan.c",line 539,column 29,is_stmt
        MOV #1, AC0 ; |539| 
        MOV AC0, dbl(*SP(#28)) ; |539| 
	.dwpsn	file "./susan.c",line 540,column 25,is_stmt
        B $C$L50  ; |540| 
                                        ; branch occurs ; |540| 
$C$DW$L$_susan_edges_small$19$E:
$C$L47:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$20$B:
	.dwpsn	file "./susan.c",line 543,column 29,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |543| 
        MOV dbl(*($C$FL6)), AC1 ; |543| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__cmpd")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #__cmpd ; |543| 
                                        ; call occurs [#__cmpd] ; |543| 
        BCC $C$L48,T0 <= #0 ; |543| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |543| 
$C$DW$L$_susan_edges_small$20$E:
$C$DW$L$_susan_edges_small$21$B:
	.dwpsn	file "./susan.c",line 545,column 33,is_stmt
        MOV #1, AC0 ; |545| 
        MOV AC0, dbl(*SP(#26)) ; |545| 
	.dwpsn	file "./susan.c",line 546,column 33,is_stmt
        MOV #0, AC0 ; |546| 
        MOV AC0, dbl(*SP(#28)) ; |546| 
	.dwpsn	file "./susan.c",line 547,column 29,is_stmt
        B $C$L50  ; |547| 
                                        ; branch occurs ; |547| 
$C$DW$L$_susan_edges_small$21$E:
$C$L48:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$22$B:
	.dwpsn	file "./susan.c",line 550,column 33,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |550| 
        BCC $C$L49,AC0 <= #0 ; |550| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |550| 
$C$DW$L$_susan_edges_small$22$E:
$C$DW$L$_susan_edges_small$23$B:
	.dwpsn	file "./susan.c",line 552,column 37,is_stmt
        MOV #1, AC0 ; |552| 
        MOV AC0, dbl(*SP(#26)) ; |552| 
	.dwpsn	file "./susan.c",line 553,column 37,is_stmt
        MOV AC0, dbl(*SP(#28)) ; |553| 
	.dwpsn	file "./susan.c",line 554,column 33,is_stmt
        B $C$L50  ; |554| 
                                        ; branch occurs ; |554| 
$C$DW$L$_susan_edges_small$23$E:
$C$L49:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$24$B:
	.dwpsn	file "./susan.c",line 557,column 37,is_stmt
        MOV #-1, AC0 ; |557| 
        MOV AC0, dbl(*SP(#26)) ; |557| 
	.dwpsn	file "./susan.c",line 558,column 37,is_stmt
        MOV #1, AC0 ; |558| 
        MOV AC0, dbl(*SP(#28)) ; |558| 
$C$DW$L$_susan_edges_small$24$E:
$C$L50:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$25$B:
	.dwpsn	file "./susan.c",line 562,column 25,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |562| 
        MOV dbl(*SP(#10)), AC1 ; |562| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |562| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("__mpyli")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #__mpyli ; |562| 
                                        ; call occurs [#__mpyli] ; |562| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |562| 
        ADD dbl(*SP(#28)), AC0, AC0 ; |562| 
        MOV AC0, T0 ; |562| 
        SFTL T0, #1 ; |562| 
        MOV dbl(*SP(#22)), AC1 ; |562| 
        MOV dbl(*AR3(T0)), AC0 ; |562| 
        CMP AC1 <= AC0, TC1 ; |562| 
        BCC $C$L53,TC1 ; |562| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |562| 
$C$DW$L$_susan_edges_small$25$E:
$C$DW$L$_susan_edges_small$26$B:
        MOV dbl(*SP(#26)), AC0 ; |562| 
        MOV dbl(*SP(#10)), AC1 ; |562| 
        SUB AC0, dbl(*SP(#18)), AC0 ; |562| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__mpyli")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #__mpyli ; |562| 
                                        ; call occurs [#__mpyli] ; |562| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |562| 
        SUB dbl(*SP(#28)), AC0, AC0 ; |562| 
        MOV AC0, T0 ; |562| 
        SFTL T0, #1 ; |562| 
        MOV dbl(*SP(#22)), AC1 ; |562| 
        MOV dbl(*AR3(T0)), AC0 ; |562| 
        CMP AC1 < AC0, TC1 ; |562| 
        BCC $C$L53,TC1 ; |562| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |562| 
$C$DW$L$_susan_edges_small$26$E:
$C$DW$L$_susan_edges_small$27$B:
	.dwpsn	file "./susan.c",line 563,column 29,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |563| 
        MOV dbl(*SP(#10)), AC1 ; |563| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("__mpyli")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #__mpyli ; |563| 
                                        ; call occurs [#__mpyli] ; |563| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |563| 
        MOV AC0, T0 ; |563| 
        MOV #1, *AR3(T0) ; |563| 
	.dwpsn	file "./susan.c",line 564,column 21,is_stmt
        B $C$L53  ; |564| 
                                        ; branch occurs ; |564| 
$C$DW$L$_susan_edges_small$27$E:
$C$L51:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$28$B:
	.dwpsn	file "./susan.c",line 566,column 25,is_stmt
        MOV #1, AC0 ; |566| 
        MOV AC0, dbl(*SP(#16)) ; |566| 
	.dwpsn	file "./susan.c",line 567,column 17,is_stmt
        B $C$L53  ; |567| 
                                        ; branch occurs ; |567| 
$C$DW$L$_susan_edges_small$28$E:
$C$L52:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$29$B:
	.dwpsn	file "./susan.c",line 569,column 21,is_stmt
        MOV #1, AC0 ; |569| 
        MOV AC0, dbl(*SP(#16)) ; |569| 
$C$DW$L$_susan_edges_small$29$E:
$C$L53:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$30$B:
	.dwpsn	file "./susan.c",line 571,column 17,is_stmt

        MOV dbl(*SP(#16)), AC1 ; |571| 
||      MOV #1, AC0 ; |571| 

        CMP AC1 != AC0, TC1 ; |571| 
        BCC $C$L60,TC1 ; |571| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |571| 
$C$DW$L$_susan_edges_small$30$E:
$C$DW$L$_susan_edges_small$31$B:
	.dwpsn	file "./susan.c",line 573,column 21,is_stmt
        SUB AC0, dbl(*SP(#18)), AC0 ; |573| 
        MOV dbl(*SP(#10)), AC1 ; |573| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("__mpyli")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #__mpyli ; |573| 
                                        ; call occurs [#__mpyli] ; |573| 
        MOV AC0, AR1 ; |573| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |573| 
||      AADD AR1, AR3 ; |573| 

        AADD AR1, AR3 ; |573| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 574,column 21,is_stmt
        MOV #0, AC0 ; |574| 
        MOV AC0, dbl(*SP(#30)) ; |574| 
	.dwpsn	file "./susan.c",line 575,column 21,is_stmt
        MOV AC0, dbl(*SP(#32)) ; |575| 
	.dwpsn	file "./susan.c",line 576,column 21,is_stmt
        MOV AC0, dbl(*SP(#34)) ; |576| 
	.dwpsn	file "./susan.c",line 582,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |582| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |582| 
        MOV *AR3, AR1 ; |582| 
        MOV AR1, *SP(#36) ; |582| 
	.dwpsn	file "./susan.c",line 583,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |583| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |583| 
        MOV AC0, dbl(*SP(#30)) ; |583| 
	.dwpsn	file "./susan.c",line 584,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |584| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |584| 
        MOV AC0, dbl(*SP(#32)) ; |584| 
	.dwpsn	file "./susan.c",line 585,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |585| 
        ADD dbl(*SP(#34)), AC0, AC0 ; |585| 
        MOV AC0, dbl(*SP(#34)) ; |585| 
	.dwpsn	file "./susan.c",line 586,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |586| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |586| 
        MOV *AR3, AR1 ; |586| 
        MOV AR1, *SP(#36) ; |586| 
	.dwpsn	file "./susan.c",line 587,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |587| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |587| 
        MOV AC0, dbl(*SP(#32)) ; |587| 
	.dwpsn	file "./susan.c",line 588,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |588| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |588| 
        MOV *AR3, AR1 ; |588| 
        MOV AR1, *SP(#36) ; |588| 
	.dwpsn	file "./susan.c",line 589,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |589| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |589| 
        MOV AC0, dbl(*SP(#30)) ; |589| 
	.dwpsn	file "./susan.c",line 590,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |590| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |590| 
        MOV AC0, dbl(*SP(#32)) ; |590| 
	.dwpsn	file "./susan.c",line 591,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |591| 
        SUB AC0, dbl(*SP(#34)), AC0 ; |591| 
        MOV AC0, dbl(*SP(#34)) ; |591| 
	.dwpsn	file "./susan.c",line 592,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |592| 
        SUB #2, AC0 ; |592| 
        MOV AC0, AR1 ; |592| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |592| 

	.dwpsn	file "./susan.c",line 594,column 21,is_stmt
        MOV *AR3, AR1 ; |594| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |594| 
        MOV *AR3, AR1 ; |594| 
        MOV AR1, *SP(#36) ; |594| 
	.dwpsn	file "./susan.c",line 595,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |595| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |595| 
        MOV AC0, dbl(*SP(#30)) ; |595| 
	.dwpsn	file "./susan.c",line 596,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |596| 

	.dwpsn	file "./susan.c",line 597,column 21,is_stmt
        MOV *AR3, AR1 ; |597| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |597| 
        MOV *AR3, AR1 ; |597| 
        MOV AR1, *SP(#36) ; |597| 
	.dwpsn	file "./susan.c",line 598,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |598| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |598| 
        MOV AC0, dbl(*SP(#30)) ; |598| 
	.dwpsn	file "./susan.c",line 599,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |599| 
        SUB #2, AC0 ; |599| 
        MOV AC0, AR1 ; |599| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |599| 

	.dwpsn	file "./susan.c",line 601,column 21,is_stmt
        MOV *AR3+, AR1 ; |601| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |601| 
        MOV *AR3, AR1 ; |601| 
        MOV AR1, *SP(#36) ; |601| 
	.dwpsn	file "./susan.c",line 602,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |602| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |602| 
        MOV AC0, dbl(*SP(#30)) ; |602| 
	.dwpsn	file "./susan.c",line 603,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |603| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |603| 
        MOV AC0, dbl(*SP(#32)) ; |603| 
	.dwpsn	file "./susan.c",line 604,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |604| 
        SUB AC0, dbl(*SP(#34)), AC0 ; |604| 
        MOV AC0, dbl(*SP(#34)) ; |604| 
	.dwpsn	file "./susan.c",line 605,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |605| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |605| 
        MOV *AR3, AR1 ; |605| 
        MOV AR1, *SP(#36) ; |605| 
	.dwpsn	file "./susan.c",line 606,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |606| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |606| 
        MOV AC0, dbl(*SP(#32)) ; |606| 
	.dwpsn	file "./susan.c",line 607,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |607| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |607| 
        MOV *AR3, AR1 ; |607| 
        MOV AR1, *SP(#36) ; |607| 
	.dwpsn	file "./susan.c",line 608,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |608| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |608| 
        MOV AC0, dbl(*SP(#30)) ; |608| 
	.dwpsn	file "./susan.c",line 609,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |609| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |609| 
        MOV AC0, dbl(*SP(#32)) ; |609| 
	.dwpsn	file "./susan.c",line 610,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |610| 
        ADD dbl(*SP(#34)), AC0, AC0 ; |610| 
        MOV AC0, dbl(*SP(#34)) ; |610| 
	.dwpsn	file "./susan.c",line 612,column 21,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |612| 
        BCC $C$L54,AC0 != #0 ; |612| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |612| 
$C$DW$L$_susan_edges_small$31$E:
$C$DW$L$_susan_edges_small$32$B:
	.dwpsn	file "./susan.c",line 613,column 25,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |613| 
        MOV AC0, dbl(*SP(#14)) ; |613| 
        B $C$L55  ; |613| 
                                        ; branch occurs ; |613| 
$C$DW$L$_susan_edges_small$32$E:
$C$L54:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$33$B:
	.dwpsn	file "./susan.c",line 615,column 25,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |615| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__fltlid")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #__fltlid ; |615| 
                                        ; call occurs [#__fltlid] ; |615| 
        MOV AC0, dbl(*SP(#42)) ; |615| 
        MOV dbl(*SP(#32)), AC0 ; |615| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("__fltlid")
	.dwattr $C$DW$214, DW_AT_TI_call
        CALL #__fltlid ; |615| 
                                        ; call occurs [#__fltlid] ; |615| 

        MOV dbl(*SP(#42)), AC0 ; |615| 
||      OR #0, AC0, AC1

$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("__divd")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #__divd ; |615| 
                                        ; call occurs [#__divd] ; |615| 
        MOV AC0, dbl(*SP(#14)) ; |615| 
$C$DW$L$_susan_edges_small$33$E:
$C$L55:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$34$B:
	.dwpsn	file "./susan.c",line 616,column 21,is_stmt
        MOV dbl(*($C$FL5)), AC1 ; |616| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__cmpd")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__cmpd ; |616| 
                                        ; call occurs [#__cmpd] ; |616| 
        BCC $C$L56,T0 >= #0 ; |616| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |616| 
$C$DW$L$_susan_edges_small$34$E:
$C$DW$L$_susan_edges_small$35$B:
	.dwpsn	file "./susan.c",line 618,column 25,is_stmt
        MOV #0, AC0 ; |618| 
        MOV AC0, dbl(*SP(#26)) ; |618| 
	.dwpsn	file "./susan.c",line 619,column 25,is_stmt
        MOV #1, AC0 ; |619| 
        MOV AC0, dbl(*SP(#28)) ; |619| 
	.dwpsn	file "./susan.c",line 620,column 21,is_stmt
        B $C$L59  ; |620| 
                                        ; branch occurs ; |620| 
$C$DW$L$_susan_edges_small$35$E:
$C$L56:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$36$B:
	.dwpsn	file "./susan.c",line 623,column 25,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |623| 
        MOV dbl(*($C$FL6)), AC1 ; |623| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__cmpd")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__cmpd ; |623| 
                                        ; call occurs [#__cmpd] ; |623| 
        BCC $C$L57,T0 <= #0 ; |623| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |623| 
$C$DW$L$_susan_edges_small$36$E:
$C$DW$L$_susan_edges_small$37$B:
	.dwpsn	file "./susan.c",line 625,column 29,is_stmt
        MOV #1, AC0 ; |625| 
        MOV AC0, dbl(*SP(#26)) ; |625| 
	.dwpsn	file "./susan.c",line 626,column 29,is_stmt
        MOV #0, AC0 ; |626| 
        MOV AC0, dbl(*SP(#28)) ; |626| 
	.dwpsn	file "./susan.c",line 627,column 25,is_stmt
        B $C$L59  ; |627| 
                                        ; branch occurs ; |627| 
$C$DW$L$_susan_edges_small$37$E:
$C$L57:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$38$B:
	.dwpsn	file "./susan.c",line 630,column 29,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |630| 
        BCC $C$L58,AC0 <= #0 ; |630| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |630| 
$C$DW$L$_susan_edges_small$38$E:
$C$DW$L$_susan_edges_small$39$B:
	.dwpsn	file "./susan.c",line 632,column 33,is_stmt
        MOV #-1, AC0 ; |632| 
        MOV AC0, dbl(*SP(#26)) ; |632| 
	.dwpsn	file "./susan.c",line 633,column 33,is_stmt
        MOV #1, AC0 ; |633| 
        MOV AC0, dbl(*SP(#28)) ; |633| 
	.dwpsn	file "./susan.c",line 634,column 29,is_stmt
        B $C$L59  ; |634| 
                                        ; branch occurs ; |634| 
$C$DW$L$_susan_edges_small$39$E:
$C$L58:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$40$B:
	.dwpsn	file "./susan.c",line 637,column 33,is_stmt
        MOV #1, AC0 ; |637| 
        MOV AC0, dbl(*SP(#26)) ; |637| 
	.dwpsn	file "./susan.c",line 638,column 33,is_stmt
        MOV AC0, dbl(*SP(#28)) ; |638| 
$C$DW$L$_susan_edges_small$40$E:
$C$L59:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$41$B:
	.dwpsn	file "./susan.c",line 642,column 21,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |642| 
        MOV dbl(*SP(#10)), AC1 ; |642| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |642| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__mpyli")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__mpyli ; |642| 
                                        ; call occurs [#__mpyli] ; |642| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |642| 
        ADD dbl(*SP(#28)), AC0, AC0 ; |642| 
        MOV AC0, T0 ; |642| 
        SFTL T0, #1 ; |642| 
        MOV dbl(*SP(#22)), AC1 ; |642| 
        MOV dbl(*AR3(T0)), AC0 ; |642| 
        CMP AC1 <= AC0, TC1 ; |642| 
        BCC $C$L60,TC1 ; |642| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |642| 
$C$DW$L$_susan_edges_small$41$E:
$C$DW$L$_susan_edges_small$42$B:
        MOV dbl(*SP(#26)), AC0 ; |642| 
        MOV dbl(*SP(#10)), AC1 ; |642| 
        SUB AC0, dbl(*SP(#18)), AC0 ; |642| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__mpyli")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__mpyli ; |642| 
                                        ; call occurs [#__mpyli] ; |642| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |642| 
        SUB dbl(*SP(#28)), AC0, AC0 ; |642| 
        MOV AC0, T0 ; |642| 
        SFTL T0, #1 ; |642| 
        MOV dbl(*SP(#22)), AC1 ; |642| 
        MOV dbl(*AR3(T0)), AC0 ; |642| 
        CMP AC1 < AC0, TC1 ; |642| 
        BCC $C$L60,TC1 ; |642| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |642| 
$C$DW$L$_susan_edges_small$42$E:
$C$DW$L$_susan_edges_small$43$B:
	.dwpsn	file "./susan.c",line 643,column 25,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |643| 
        MOV dbl(*SP(#10)), AC1 ; |643| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("__mpyli")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #__mpyli ; |643| 
                                        ; call occurs [#__mpyli] ; |643| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |643| 
        MOV AC0, T0 ; |643| 
        MOV #2, *AR3(T0) ; |643| 
$C$DW$L$_susan_edges_small$43$E:
$C$L60:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$44$B:
	.dwpsn	file "./susan.c",line 481,column 37,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |481| 
        ADD #1, AC0 ; |481| 
        MOV AC0, dbl(*SP(#20)) ; |481| 
	.dwpsn	file "./susan.c",line 481,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |481| 

        SUB #2, AC0 ; |481| 
||      MOV dbl(*SP(#20)), AC1 ; |481| 

        CMP AC1 < AC0, TC1 ; |481| 
        BCC $C$L42,TC1 ; |481| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |481| 
$C$DW$L$_susan_edges_small$44$E:
$C$L61:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$45$B:
	.dwpsn	file "./susan.c",line 480,column 33,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |480| 
        ADD #1, AC0 ; |480| 
        MOV AC0, dbl(*SP(#18)) ; |480| 
	.dwpsn	file "./susan.c",line 480,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |480| 

        SUB #2, AC0 ; |480| 
||      MOV dbl(*SP(#18)), AC1 ; |480| 

        CMP AC1 < AC0, TC1 ; |480| 
        BCC $C$L41,TC1 ; |480| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |480| 
$C$DW$L$_susan_edges_small$45$E:
	.dwpsn	file "./susan.c",line 647,column 1,is_stmt
$C$L62:    
	CALL #_coverage_log;
        AADD #45, SP
	.dwcfi	cfa_offset, 1
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$222	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$222, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L41:1:1739475224")
	.dwattr $C$DW$222, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x1e0)
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x286)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_susan_edges_small$8$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_susan_edges_small$8$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_susan_edges_small$45$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_susan_edges_small$45$E)

$C$DW$225	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$225, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L42:2:1739475224")
	.dwattr $C$DW$225, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x1e1)
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x286)
$C$DW$226	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$226, DW_AT_low_pc($C$DW$L$_susan_edges_small$9$B)
	.dwattr $C$DW$226, DW_AT_high_pc($C$DW$L$_susan_edges_small$9$E)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_susan_edges_small$38$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_susan_edges_small$38$E)
$C$DW$228	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$228, DW_AT_low_pc($C$DW$L$_susan_edges_small$36$B)
	.dwattr $C$DW$228, DW_AT_high_pc($C$DW$L$_susan_edges_small$36$E)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_susan_edges_small$31$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_susan_edges_small$31$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_susan_edges_small$32$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_susan_edges_small$32$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_susan_edges_small$33$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_susan_edges_small$33$E)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_susan_edges_small$34$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_susan_edges_small$34$E)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_susan_edges_small$35$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_susan_edges_small$35$E)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$_susan_edges_small$37$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$_susan_edges_small$37$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_susan_edges_small$39$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_susan_edges_small$39$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$_susan_edges_small$40$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$_susan_edges_small$40$E)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_susan_edges_small$22$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_susan_edges_small$22$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_susan_edges_small$20$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_susan_edges_small$20$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_susan_edges_small$10$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_susan_edges_small$10$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_susan_edges_small$11$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_susan_edges_small$11$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_susan_edges_small$12$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_susan_edges_small$12$E)
$C$DW$242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$242, DW_AT_low_pc($C$DW$L$_susan_edges_small$13$B)
	.dwattr $C$DW$242, DW_AT_high_pc($C$DW$L$_susan_edges_small$13$E)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_susan_edges_small$14$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_susan_edges_small$14$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_susan_edges_small$15$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_susan_edges_small$15$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_susan_edges_small$16$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_susan_edges_small$16$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_susan_edges_small$17$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_susan_edges_small$17$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_susan_edges_small$18$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_susan_edges_small$18$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_susan_edges_small$19$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_susan_edges_small$19$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_susan_edges_small$21$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_susan_edges_small$21$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_susan_edges_small$23$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_susan_edges_small$23$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_susan_edges_small$24$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_susan_edges_small$24$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_susan_edges_small$25$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_susan_edges_small$25$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_susan_edges_small$26$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_susan_edges_small$26$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_susan_edges_small$27$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_susan_edges_small$27$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_susan_edges_small$28$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_susan_edges_small$28$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_susan_edges_small$29$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_susan_edges_small$29$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_susan_edges_small$30$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_susan_edges_small$30$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_susan_edges_small$41$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_susan_edges_small$41$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_susan_edges_small$42$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_susan_edges_small$42$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_susan_edges_small$43$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_susan_edges_small$43$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_susan_edges_small$44$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_susan_edges_small$44$E)
	.dwendtag $C$DW$225

	.dwendtag $C$DW$222


$C$DW$262	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$262, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L36:1:1739475224")
	.dwattr $C$DW$262, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x1c7)
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x1de)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_susan_edges_small$2$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_susan_edges_small$2$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_susan_edges_small$6$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_susan_edges_small$6$E)

$C$DW$265	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$265, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L37:2:1739475224")
	.dwattr $C$DW$265, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$265, DW_AT_TI_begin_line(0x1c8)
	.dwattr $C$DW$265, DW_AT_TI_end_line(0x1de)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_susan_edges_small$3$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_susan_edges_small$3$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_susan_edges_small$4$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_susan_edges_small$4$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_susan_edges_small$5$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_susan_edges_small$5$E)
	.dwendtag $C$DW$265

	.dwendtag $C$DW$262

	.dwattr $C$DW$157, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x287)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text"
	.global	_susan_edges

$C$DW$269	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_edges")
	.dwattr $C$DW$269, DW_AT_low_pc(_susan_edges)
	.dwattr $C$DW$269, DW_AT_high_pc(0x00)
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_susan_edges")
	.dwattr $C$DW$269, DW_AT_external
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$269, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$269, DW_AT_TI_begin_line(0x288)
	.dwattr $C$DW$269, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$269, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./susan.c",line 649,column 1,is_stmt,address _susan_edges

	.dwfde $C$DW$CIE, _susan_edges
$C$DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: susan_edges                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_edges:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("bt")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_bt")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("max_no_edges")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_max_no_edges")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("mid")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("choice")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_choice")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("noprint_output")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_noprint_output")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 651,column 13,is_stmt
        MOV #20, AC0 ; |651| 
        MOV AC0, dbl(*SP(#4)) ; |651| 
	.dwpsn	file "./susan.c",line 652,column 13,is_stmt
        MOV #2650, AC0 ; |652| 
        MOV AC0, dbl(*SP(#6)) ; |652| 
	.dwpsn	file "./susan.c",line 653,column 13,is_stmt
        MOV #-1, AC0 ; |653| 
        MOV AC0, dbl(*SP(#8)) ; |653| 
	.dwpsn	file "./susan.c",line 653,column 26,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |653| 
	.dwpsn	file "./susan.c",line 654,column 13,is_stmt
        MOV #0, *SP(#12) ; |654| 
	.dwpsn	file "./susan.c",line 657,column 5,is_stmt
        AMAR *SP(#8), XAR1
        AMAR *SP(#10), XAR2
        AMAR *SP(#0), XAR0
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_get_image")
	.dwattr $C$DW$283, DW_AT_TI_call
        CALL #_get_image ; |657| 
                                        ; call occurs [#_get_image] ; |657| 
        MOV T0, *SP(#12) ; |657| 
	.dwpsn	file "./susan.c",line 658,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L63,AR1 >= #0 ; |658| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |658| 
	.dwpsn	file "./susan.c",line 659,column 9,is_stmt
        MOV #-1, T0
        B $C$L69  ; |659| 
                                        ; branch occurs ; |659| 
$C$L63:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 661,column 14,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |661| 
        MOV AR1, *SP(#14) ; |661| 
	.dwpsn	file "./susan.c",line 662,column 5,is_stmt
        AMAR *SP(#2), XAR0
        MOV dbl(*SP(#4)), AC0 ; |662| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("_setup_brightness_lut")
	.dwattr $C$DW$284, DW_AT_TI_call

        CALL #_setup_brightness_lut ; |662| 
||      MOV #6, AC1 ; |662| 

                                        ; call occurs [#_setup_brightness_lut] ; |662| 
	.dwpsn	file "./susan.c",line 664,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |664| 
        ADD dbl(*SP(#8)), AC0, AC1 ; |664| 
        SFTL AC1, #-31, AC0 ; |664| 
        ADD AC1, AC0 ; |664| 
        SFTS AC0, #-1 ; |664| 
        MOV AC0, *SP(#13) ; |664| 
	.dwpsn	file "./susan.c",line 666,column 5,is_stmt
        MOV #85, AR2 ; |666| 
        MOV *SP(#14), AR1 ; |666| 
        CMPU AR1 >= AR2, TC1 ; |666| 
        BCC $C$L64,TC1 ; |666| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |666| 
	.dwpsn	file "./susan.c",line 667,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#6)), AC0 ; |667| 
        MOV dbl(*SP(#8)), AC1 ; |667| 
        MOV dbl(*SP(#10)), AC2 ; |667| 
        AMOV #_g_r, XAR2 ; |667| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("_susan_principle_small")
	.dwattr $C$DW$285, DW_AT_TI_call
        CALL #_susan_principle_small ; |667| 
                                        ; call occurs [#_susan_principle_small] ; |667| 
	.dwpsn	file "./susan.c",line 668,column 5,is_stmt
        B $C$L66  ; |668| 
                                        ; branch occurs ; |668| 
$C$L64:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 669,column 10,is_stmt
        MOV #170, AR2 ; |669| 
        CMPU AR1 >= AR2, TC1 ; |669| 
        BCC $C$L65,TC1 ; |669| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |669| 
	.dwpsn	file "./susan.c",line 671,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMAR *SP(#13), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |671| 
        MOV dbl(*SP(#8)), AC1 ; |671| 
        MOV dbl(*SP(#10)), AC2 ; |671| 
        AMOV #_g_r, XAR1 ; |671| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("_susan_edges_small")
	.dwattr $C$DW$286, DW_AT_TI_call
        CALL #_susan_edges_small ; |671| 
                                        ; call occurs [#_susan_edges_small] ; |671| 
	.dwpsn	file "./susan.c",line 672,column 5,is_stmt
        B $C$L66  ; |672| 
                                        ; branch occurs ; |672| 
$C$L65:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 674,column 9,is_stmt
        AND #0x0001, AR1, AC2 ; |674| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#8)), AC0 ; |674| 
        MOV dbl(*SP(#10)), AC1 ; |674| 
        AMAR *SP(#13), XAR1
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("_edge_draw")
	.dwattr $C$DW$287, DW_AT_TI_call
        CALL #_edge_draw ; |674| 
                                        ; call occurs [#_edge_draw] ; |674| 
$C$L66:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 676,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |676| 
        MOV dbl(*SP(#10)), AC1 ; |676| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("__mpyli")
	.dwattr $C$DW$288, DW_AT_TI_call
        CALL #__mpyli ; |676| 
                                        ; call occurs [#__mpyli] ; |676| 
        AMOV #_g_r, XAR0 ; |676| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("_int_to_uchar")
	.dwattr $C$DW$289, DW_AT_TI_call
        CALL #_int_to_uchar ; |676| 
                                        ; call occurs [#_int_to_uchar] ; |676| 
	.dwpsn	file "./susan.c",line 679,column 13,is_stmt
        MOV #0, AC0 ; |679| 
        MOV AC0, dbl(*SP(#18)) ; |679| 
	.dwpsn	file "./susan.c",line 681,column 10,is_stmt
        MOV AC0, dbl(*SP(#20)) ; |681| 
	.dwpsn	file "./susan.c",line 681,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |681| 
        MOV dbl(*SP(#10)), AC1 ; |681| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("__mpyli")
	.dwattr $C$DW$290, DW_AT_TI_call
        CALL #__mpyli ; |681| 
                                        ; call occurs [#__mpyli] ; |681| 
        MOV dbl(*SP(#20)), AC1 ; |681| 
        CMP AC1 >= AC0, TC1 ; |681| 
        BCC $C$L68,TC1 ; |681| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |681| 
$C$L67:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges$9$B:
	.dwpsn	file "./susan.c",line 683,column 9,is_stmt
        MOV *SP(#21), T0 ; |683| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |683| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |683| 
        MOV AC0, dbl(*SP(#18)) ; |683| 
	.dwpsn	file "./susan.c",line 681,column 38,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |681| 
        ADD #1, AC0 ; |681| 
        MOV AC0, dbl(*SP(#20)) ; |681| 
	.dwpsn	file "./susan.c",line 681,column 17,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |681| 
        MOV dbl(*SP(#8)), AC0 ; |681| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("__mpyli")
	.dwattr $C$DW$291, DW_AT_TI_call
        CALL #__mpyli ; |681| 
                                        ; call occurs [#__mpyli] ; |681| 
        MOV dbl(*SP(#20)), AC1 ; |681| 
        CMP AC1 < AC0, TC1 ; |681| 
        BCC $C$L67,TC1 ; |681| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |681| 
$C$DW$L$_susan_edges$9$E:
$C$L68:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 686,column 5,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |686| 
        MOV AC0, dbl(*SP(#16)) ; |686| 
        NOP
        NOP
        NOP
	.dwpsn	file "./susan.c",line 687,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |687| 
	.dwpsn	file "./susan.c",line 689,column 5,is_stmt
        MOV #0, T0
$C$L69:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 690,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$293	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$293, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L67:1:1739475224")
	.dwattr $C$DW$293, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$293, DW_AT_TI_begin_line(0x2a9)
	.dwattr $C$DW$293, DW_AT_TI_end_line(0x2ac)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_susan_edges$9$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_susan_edges$9$E)
	.dwendtag $C$DW$293

	.dwattr $C$DW$269, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$269, DW_AT_TI_end_line(0x2b2)
	.dwattr $C$DW$269, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$269

;*******************************************************************************
;* FLOATING-POINT CONSTANTS                                                    *
;*******************************************************************************
	.sect	".const"
	.align	2
$C$FL1:	.xlong	0x42c80000
	.align	2
$C$FL2:	.xlong	0x3ecccccd
	.align	2
$C$FL3:	.xlong	0x49742400
	.align	2
$C$FL4:	.xlong	0x00000000
	.align	2
$C$FL5:	.xlong	0x3f000000
	.align	2
$C$FL6:	.xlong	0x40000000
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_sqrt
	.global	_exp
	.global	__divli
	.global	__negd
	.global	__divd
	.global	__fltlid
	.global	__mpyd
	.global	__fixdu
	.global	__mpyli
	.global	__cmpd

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x17)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)

$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x204)
$C$DW$295	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$295, DW_AT_upper_bound(0x203)
	.dwendtag $C$DW$T$43

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x17)

$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x2af8)
$C$DW$296	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$296, DW_AT_upper_bound(0x157b)
	.dwendtag $C$DW$T$44

$C$DW$297	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$22)
$C$DW$T$45	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$297)
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
$C$DW$T$48	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$48, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$48, DW_AT_name("signed char")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x64)
$C$DW$298	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$298, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$51

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

$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg0]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg1]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg2]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg3]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg4]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg5]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg6]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg7]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg8]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg9]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg10]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg11]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg12]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg13]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg14]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg15]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg16]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg17]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg18]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg19]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg20]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg21]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg22]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg23]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg24]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg25]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg26]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg27]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg28]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg29]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg30]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg31]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x20]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x21]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x22]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x23]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x24]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x25]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x26]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x27]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x28]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x29]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x30]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x31]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x32]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x33]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x34]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x35]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x36]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x37]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x38]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x39]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x40]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x41]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x42]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x43]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x44]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x45]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x46]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x47]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x48]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x49]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x50]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x51]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x52]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x53]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x54]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x55]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x56]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0x57]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x58]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x59]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

