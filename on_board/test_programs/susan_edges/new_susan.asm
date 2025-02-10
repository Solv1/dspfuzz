;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Feb  7 09:14:49 2025                                 *
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
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _setbrightness]
	.bss	_g_r,11000,0,2
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("g_r")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_g_r")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _g_r]
	.ref _coverage_log;
	.global	_fakeFile
	.bss	_fakeFile,2,0,2
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("fakeFile")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_fakeFile")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _fakeFile]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$11, DW_AT_external
;	/home/santiago/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/acp55 -@/tmp/17650VhIifH 
	.sect	".text"
	.global	_fgetc2

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("fgetc2")
	.dwattr $C$DW$12, DW_AT_low_pc(_fgetc2)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_fgetc2")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./susan.c",line 194,column 1,is_stmt,address _fgetc2

	.dwfde $C$DW$CIE, _fgetc2
;*******************************************************************************
;* FUNCTION NAME: fgetc2                                                       *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fgetc2:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./susan.c",line 195,column 10,is_stmt
        MOV dbl(*(#_fakeFile)), XAR3
        MOV *AR3, AR1 ; |195| 
        MOV AR1, *SP(#0) ; |195| 
	.dwpsn	file "./susan.c",line 196,column 5,is_stmt
        AMAR *AR3+
        MOV XAR3, dbl(*(#_fakeFile))
	.dwpsn	file "./susan.c",line 197,column 5,is_stmt
        MOV AR1, T0
	.dwpsn	file "./susan.c",line 198,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0xc6)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_getint

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("getint")
	.dwattr $C$DW$15, DW_AT_low_pc(_getint)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_getint")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./susan.c",line 201,column 1,is_stmt,address _getint

	.dwfde $C$DW$CIE, _getint
;*******************************************************************************
;* FUNCTION NAME: getint                                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,SP,CARRY,TC1,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_getint:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "./susan.c",line 204,column 5,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_fgetc2")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #_fgetc2 ; |204| 
                                        ; call occurs [#_fgetc2] ; |204| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |204| 
	.dwpsn	file "./susan.c",line 205,column 12,is_stmt
$C$L1:    
$C$DW$L$_getint$2$B:
	.dwpsn	file "./susan.c",line 207,column 9,is_stmt
        MOV #35, AC0 ; |207| 
        MOV dbl(*SP(#0)), AC1 ; |207| 
        CMP AC1 != AC0, TC1 ; |207| 
        BCC $C$L3,TC1 ; |207| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |207| 
$C$DW$L$_getint$2$E:
$C$DW$L$_getint$3$B:
	.dwpsn	file "./susan.c",line 209,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |209| 
||      MOV #10, AC0 ; |209| 

        CMP AC1 == AC0, TC1 ; |209| 
        BCC $C$L3,TC1 ; |209| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |209| 
$C$DW$L$_getint$3$E:
$C$L2:    
	CALL #_coverage_log;
$C$DW$L$_getint$4$B:
	.dwpsn	file "./susan.c",line 211,column 17,is_stmt
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_fgetc2")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #_fgetc2 ; |211| 
                                        ; call occurs [#_fgetc2] ; |211| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |211| 
	.dwpsn	file "./susan.c",line 209,column 20,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |209| 
||      MOV #10, AC0 ; |209| 

        CMP AC1 != AC0, TC1 ; |209| 
        BCC $C$L2,TC1 ; |209| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |209| 
$C$DW$L$_getint$4$E:
$C$L3:    
	CALL #_coverage_log;
$C$DW$L$_getint$5$B:
	.dwpsn	file "./susan.c",line 214,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |214| 
||      MOV #-1, AC0 ; |214| 

        CMP AC1 != AC0, TC1 ; |214| 
        BCC $C$L4,TC1 ; |214| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |214| 
$C$DW$L$_getint$5$E:
	.dwpsn	file "./susan.c",line 216,column 13,is_stmt
        MOV #-1, T0
        B $C$L10  ; |216| 
                                        ; branch occurs ; |216| 
$C$L4:    
	CALL #_coverage_log;
$C$DW$L$_getint$7$B:
	.dwpsn	file "./susan.c",line 218,column 9,is_stmt
        MOV #48, AC0 ; |218| 
        MOV dbl(*SP(#0)), AC1 ; |218| 
        CMP AC1 < AC0, TC1 ; |218| 
        BCC $C$L5,TC1 ; |218| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |218| 
$C$DW$L$_getint$7$E:
$C$DW$L$_getint$8$B:
        MOV #57, AC0 ; |218| 
        MOV dbl(*SP(#0)), AC1 ; |218| 
        CMP AC1 > AC0, TC1 ; |218| 
        BCC $C$L6,!TC1 ; |218| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |218| 
$C$DW$L$_getint$8$E:
$C$DW$L$_getint$9$B:
	.dwpsn	file "./susan.c",line 220,column 13,is_stmt
$C$DW$L$_getint$9$E:
$C$L5:    
	CALL #_coverage_log;
$C$DW$L$_getint$10$B:
	.dwpsn	file "./susan.c",line 222,column 9,is_stmt
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_fgetc2")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #_fgetc2 ; |222| 
                                        ; call occurs [#_fgetc2] ; |222| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |222| 
	.dwpsn	file "./susan.c",line 205,column 12,is_stmt
        B $C$L1   ; |205| 
                                        ; branch occurs ; |205| 
$C$DW$L$_getint$10$E:
$C$L6:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 226,column 5,is_stmt
        MOV #0, AC0 ; |226| 
        MOV AC0, dbl(*SP(#2)) ; |226| 
	.dwpsn	file "./susan.c",line 227,column 12,is_stmt
$C$L7:    
	CALL #_coverage_log;
$C$DW$L$_getint$12$B:
	.dwpsn	file "./susan.c",line 229,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |229| 
        SFTS AC0, #1, AC1 ; |229| 
        ADD AC0 << #3, AC1 ; |229| 
        ADD dbl(*SP(#0)), AC1, AC0 ; |229| 
        SUB #48, AC0, AC0 ; |229| 
        MOV AC0, dbl(*SP(#2)) ; |229| 
	.dwpsn	file "./susan.c",line 230,column 9,is_stmt
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_fgetc2")
	.dwattr $C$DW$21, DW_AT_TI_call
        CALL #_fgetc2 ; |230| 
                                        ; call occurs [#_fgetc2] ; |230| 
        MOV T0, AC0
        MOV AC0, dbl(*SP(#0)) ; |230| 
	.dwpsn	file "./susan.c",line 231,column 9,is_stmt

        MOV dbl(*SP(#0)), AC1 ; |231| 
||      MOV #-1, AC0 ; |231| 

        CMP AC1 != AC0, TC1 ; |231| 
        BCC $C$L8,TC1 ; |231| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |231| 
$C$DW$L$_getint$12$E:
	.dwpsn	file "./susan.c",line 233,column 13,is_stmt
        MOV *SP(#3), T0 ; |233| 
        B $C$L10  ; |233| 
                                        ; branch occurs ; |233| 
$C$L8:    
	CALL #_coverage_log;
$C$DW$L$_getint$14$B:
	.dwpsn	file "./susan.c",line 235,column 9,is_stmt
        MOV #48, AC0 ; |235| 
        MOV dbl(*SP(#0)), AC1 ; |235| 
        CMP AC1 < AC0, TC1 ; |235| 
        BCC $C$L9,TC1 ; |235| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |235| 
$C$DW$L$_getint$14$E:
$C$DW$L$_getint$15$B:
        MOV #57, AC0 ; |235| 
        MOV dbl(*SP(#0)), AC1 ; |235| 
        CMP AC1 <= AC0, TC1 ; |235| 
        BCC $C$L7,TC1 ; |235| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |235| 
$C$DW$L$_getint$15$E:
        B $C$L9   ; |235| 
                                        ; branch occurs ; |235| 
$C$L9:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 241,column 5,is_stmt
        MOV *SP(#3), T0 ; |241| 
$C$L10:    
	.dwpsn	file "./susan.c",line 242,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$23	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$23, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L7:1:1738937689")
	.dwattr $C$DW$23, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0xe3)
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xef)
$C$DW$24	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$24, DW_AT_low_pc($C$DW$L$_getint$12$B)
	.dwattr $C$DW$24, DW_AT_high_pc($C$DW$L$_getint$12$E)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_getint$14$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_getint$14$E)
$C$DW$26	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$26, DW_AT_low_pc($C$DW$L$_getint$15$B)
	.dwattr $C$DW$26, DW_AT_high_pc($C$DW$L$_getint$15$E)
	.dwendtag $C$DW$23


$C$DW$27	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$27, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L1:1:1738937689")
	.dwattr $C$DW$27, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0xcd)
	.dwattr $C$DW$27, DW_AT_TI_end_line(0xdf)
$C$DW$28	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$28, DW_AT_low_pc($C$DW$L$_getint$2$B)
	.dwattr $C$DW$28, DW_AT_high_pc($C$DW$L$_getint$2$E)
$C$DW$29	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$29, DW_AT_low_pc($C$DW$L$_getint$8$B)
	.dwattr $C$DW$29, DW_AT_high_pc($C$DW$L$_getint$8$E)
$C$DW$30	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$30, DW_AT_low_pc($C$DW$L$_getint$3$B)
	.dwattr $C$DW$30, DW_AT_high_pc($C$DW$L$_getint$3$E)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_getint$5$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_getint$5$E)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_getint$7$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_getint$7$E)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_getint$9$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_getint$9$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_getint$10$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_getint$10$E)

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L2:2:1738937689")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0xd4)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_getint$4$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_getint$4$E)
	.dwendtag $C$DW$35

	.dwendtag $C$DW$27

	.dwattr $C$DW$15, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0xf2)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.global	_get_image

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("get_image")
	.dwattr $C$DW$37, DW_AT_low_pc(_get_image)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_get_image")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$37, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x6c)
	.dwpsn	file "./susan.c",line 245,column 1,is_stmt,address _get_image

	.dwfde $C$DW$CIE, _get_image
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg17]
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg19]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg21]
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
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("header")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 106]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 249,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*(#_fakeFile))
	.dwpsn	file "./susan.c",line 251,column 5,is_stmt
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_fgetc2")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_fgetc2 ; |251| 
                                        ; call occurs [#_fgetc2] ; |251| 
        MOV T0, *SP(#6) ; |251| 
	.dwpsn	file "./susan.c",line 252,column 5,is_stmt
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_fgetc2")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_fgetc2 ; |252| 
                                        ; call occurs [#_fgetc2] ; |252| 
        MOV T0, *SP(#7) ; |252| 
	.dwpsn	file "./susan.c",line 254,column 5,is_stmt
        CMP *SP(#6) == #80, TC1 ; |254| 
        BCC $C$L11,!TC1 ; |254| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |254| 
        CMP *SP(#7) == #53, TC1 ; |254| 
        BCC $C$L12,TC1 ; |254| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |254| 
$C$L11:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 256,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |256| 
                                        ; branch occurs ; |256| 
$C$L12:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 259,column 5,is_stmt
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_getint")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_getint ; |259| 
                                        ; call occurs [#_getint] ; |259| 
        MOV dbl(*SP(#2)), XAR3
        MOV T0, AC0
        MOV AC0, dbl(*AR3) ; |259| 
	.dwpsn	file "./susan.c",line 260,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV dbl(*AR3), AC1 ; |260| 
||      MOV #-1, AC0 ; |260| 

        CMP AC1 != AC0, TC1 ; |260| 
        BCC $C$L13,TC1 ; |260| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |260| 
	.dwpsn	file "./susan.c",line 261,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |261| 
                                        ; branch occurs ; |261| 
$C$L13:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 263,column 5,is_stmt
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_getint")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_getint ; |263| 
                                        ; call occurs [#_getint] ; |263| 
        MOV dbl(*SP(#4)), XAR3
        MOV T0, AC0
        MOV AC0, dbl(*AR3) ; |263| 
	.dwpsn	file "./susan.c",line 264,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV dbl(*AR3), AC1 ; |264| 
||      MOV #-1, AC0 ; |264| 

        CMP AC1 != AC0, TC1 ; |264| 
        BCC $C$L14,TC1 ; |264| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |264| 
	.dwpsn	file "./susan.c",line 265,column 9,is_stmt
        MOV #-1, T0
        B $C$L15  ; |265| 
                                        ; branch occurs ; |265| 
$C$L14:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 267,column 5,is_stmt
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_getint")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_getint ; |267| 
                                        ; call occurs [#_getint] ; |267| 
        MOV T0, *SP(#106) ; |267| 
	.dwpsn	file "./susan.c",line 268,column 5,is_stmt
	.dwpsn	file "./susan.c",line 270,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*(#_fakeFile)), XAR3
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 272,column 5,is_stmt
        MOV #0, T0
$C$L15:    
	.dwpsn	file "./susan.c",line 273,column 1,is_stmt
        AADD #107, SP
	.dwcfi	cfa_offset, 1
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$37, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text"
	.global	_int_to_uint16_t

$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("int_to_uint16_t")
	.dwattr $C$DW$52, DW_AT_low_pc(_int_to_uint16_t)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_int_to_uint16_t")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 296,column 1,is_stmt,address _int_to_uint16_t

	.dwfde $C$DW$CIE, _int_to_uint16_t
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg17]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg19]
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: int_to_uint16_t                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_int_to_uint16_t:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("max_r")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_max_r")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("min_r")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_min_r")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#4)) ; |296| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 298,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |298| 
        MOV AC0, dbl(*SP(#8)) ; |298| 
	.dwpsn	file "./susan.c",line 299,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |299| 
        MOV AC0, dbl(*SP(#10)) ; |299| 
	.dwpsn	file "./susan.c",line 301,column 10,is_stmt
        MOV #0, AC0 ; |301| 
        MOV AC0, dbl(*SP(#6)) ; |301| 
	.dwpsn	file "./susan.c",line 301,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |301| 
        MOV dbl(*SP(#4)), AC0 ; |301| 
        CMP AC1 >= AC0, TC1 ; |301| 
        BCC $C$L19,TC1 ; |301| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |301| 
$C$L16:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uint16_t$2$B:
	.dwpsn	file "./susan.c",line 303,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |303| 
        SFTL T0, #1 ; |303| 
        MOV dbl(*SP(#8)), AC0 ; |303| 
        MOV dbl(*AR3(T0)), AC1 ; |303| 
        CMP AC1 <= AC0, TC1 ; |303| 
        BCC $C$L17,TC1 ; |303| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |303| 
$C$DW$L$_int_to_uint16_t$2$E:
$C$DW$L$_int_to_uint16_t$3$B:
	.dwpsn	file "./susan.c",line 305,column 13,is_stmt
        MOV *SP(#7), T0 ; |305| 
        SFTL T0, #1 ; |305| 
        MOV dbl(*AR3(T0)), AC0 ; |305| 
        MOV AC0, dbl(*SP(#8)) ; |305| 
$C$DW$L$_int_to_uint16_t$3$E:
$C$L17:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uint16_t$4$B:
	.dwpsn	file "./susan.c",line 307,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |307| 
        SFTL T0, #1 ; |307| 
        MOV dbl(*SP(#10)), AC0 ; |307| 
        MOV dbl(*AR3(T0)), AC1 ; |307| 
        CMP AC1 >= AC0, TC1 ; |307| 
        BCC $C$L18,TC1 ; |307| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |307| 
$C$DW$L$_int_to_uint16_t$4$E:
$C$DW$L$_int_to_uint16_t$5$B:
	.dwpsn	file "./susan.c",line 309,column 13,is_stmt
        MOV *SP(#7), T0 ; |309| 
        SFTL T0, #1 ; |309| 
        MOV dbl(*AR3(T0)), AC0 ; |309| 
        MOV AC0, dbl(*SP(#10)) ; |309| 
$C$DW$L$_int_to_uint16_t$5$E:
$C$L18:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uint16_t$6$B:
	.dwpsn	file "./susan.c",line 301,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |301| 
        ADD #1, AC0 ; |301| 
        MOV AC0, dbl(*SP(#6)) ; |301| 
	.dwpsn	file "./susan.c",line 301,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |301| 
        MOV dbl(*SP(#4)), AC0 ; |301| 
        CMP AC1 < AC0, TC1 ; |301| 
        BCC $C$L16,TC1 ; |301| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |301| 
$C$DW$L$_int_to_uint16_t$6$E:
$C$L19:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 315,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |315| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |315| 
        MOV AC0, dbl(*SP(#8)) ; |315| 
	.dwpsn	file "./susan.c",line 317,column 10,is_stmt
        MOV #0, AC0 ; |317| 
        MOV AC0, dbl(*SP(#6)) ; |317| 
	.dwpsn	file "./susan.c",line 317,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |317| 
        MOV dbl(*SP(#4)), AC0 ; |317| 
        CMP AC1 >= AC0, TC1 ; |317| 
        BCC $C$L21,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$L20:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uint16_t$8$B:
	.dwpsn	file "./susan.c",line 319,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |319| 
        SFTL T0, #1 ; |319| 
        MOV dbl(*SP(#10)), AC0 ; |319| 
        SUB AC0, dbl(*AR3(T0)), AC1 ; |319| 
        SFTS AC1, #8, AC0 ; |319| 

        MOV dbl(*SP(#8)), AC1 ; |319| 
||      SUB AC1, AC0 ; |319| 

$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("__divli")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #__divli ; |319| 
                                        ; call occurs [#__divli] ; |319| 
        MOV *SP(#7), T0 ; |319| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |319| 
	.dwpsn	file "./susan.c",line 317,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |317| 
        ADD #1, AC0 ; |317| 
        MOV AC0, dbl(*SP(#6)) ; |317| 
	.dwpsn	file "./susan.c",line 317,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |317| 
        MOV dbl(*SP(#6)), AC1 ; |317| 
        CMP AC1 < AC0, TC1 ; |317| 
        BCC $C$L20,TC1 ; |317| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |317| 
$C$DW$L$_int_to_uint16_t$8$E:
	.dwpsn	file "./susan.c",line 321,column 1,is_stmt
$C$L21:    
	CALL #_coverage_log;
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$64	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$64, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L20:1:1738937689")
	.dwattr $C$DW$64, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x13d)
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x140)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$8$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$8$E)
	.dwendtag $C$DW$64


$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L16:1:1738937689")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x137)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$2$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$2$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$3$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$3$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$4$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$4$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$5$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$5$E)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_int_to_uint16_t$6$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_int_to_uint16_t$6$E)
	.dwendtag $C$DW$66

	.dwattr $C$DW$52, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x141)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text"
	.global	_int_to_uchar

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("int_to_uchar")
	.dwattr $C$DW$72, DW_AT_low_pc(_int_to_uchar)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_int_to_uchar")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x143)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 324,column 1,is_stmt,address _int_to_uchar

	.dwfde $C$DW$CIE, _int_to_uchar
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg17]
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg19]
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]
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
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("max_r")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_max_r")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("min_r")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_min_r")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AC0, dbl(*SP(#4)) ; |324| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 326,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |326| 
        MOV AC0, dbl(*SP(#8)) ; |326| 
	.dwpsn	file "./susan.c",line 327,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), AC0 ; |327| 
        MOV AC0, dbl(*SP(#10)) ; |327| 
	.dwpsn	file "./susan.c",line 329,column 10,is_stmt
        MOV #0, AC0 ; |329| 
        MOV AC0, dbl(*SP(#6)) ; |329| 
	.dwpsn	file "./susan.c",line 329,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |329| 
        MOV dbl(*SP(#4)), AC0 ; |329| 
        CMP AC1 >= AC0, TC1 ; |329| 
        BCC $C$L25,TC1 ; |329| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |329| 
$C$L22:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$2$B:
	.dwpsn	file "./susan.c",line 331,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |331| 
        SFTL T0, #1 ; |331| 
        MOV dbl(*SP(#8)), AC0 ; |331| 
        MOV dbl(*AR3(T0)), AC1 ; |331| 
        CMP AC1 <= AC0, TC1 ; |331| 
        BCC $C$L23,TC1 ; |331| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |331| 
$C$DW$L$_int_to_uchar$2$E:
$C$DW$L$_int_to_uchar$3$B:
	.dwpsn	file "./susan.c",line 333,column 13,is_stmt
        MOV *SP(#7), T0 ; |333| 
        SFTL T0, #1 ; |333| 
        MOV dbl(*AR3(T0)), AC0 ; |333| 
        MOV AC0, dbl(*SP(#8)) ; |333| 
$C$DW$L$_int_to_uchar$3$E:
$C$L23:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$4$B:
	.dwpsn	file "./susan.c",line 335,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |335| 
        SFTL T0, #1 ; |335| 
        MOV dbl(*SP(#10)), AC0 ; |335| 
        MOV dbl(*AR3(T0)), AC1 ; |335| 
        CMP AC1 >= AC0, TC1 ; |335| 
        BCC $C$L24,TC1 ; |335| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |335| 
$C$DW$L$_int_to_uchar$4$E:
$C$DW$L$_int_to_uchar$5$B:
	.dwpsn	file "./susan.c",line 337,column 13,is_stmt
        MOV *SP(#7), T0 ; |337| 
        SFTL T0, #1 ; |337| 
        MOV dbl(*AR3(T0)), AC0 ; |337| 
        MOV AC0, dbl(*SP(#10)) ; |337| 
$C$DW$L$_int_to_uchar$5$E:
$C$L24:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$6$B:
	.dwpsn	file "./susan.c",line 329,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |329| 
        ADD #1, AC0 ; |329| 
        MOV AC0, dbl(*SP(#6)) ; |329| 
	.dwpsn	file "./susan.c",line 329,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |329| 
        MOV dbl(*SP(#4)), AC0 ; |329| 
        CMP AC1 < AC0, TC1 ; |329| 
        BCC $C$L22,TC1 ; |329| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |329| 
$C$DW$L$_int_to_uchar$6$E:
$C$L25:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 341,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |341| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |341| 
        MOV AC0, dbl(*SP(#8)) ; |341| 
	.dwpsn	file "./susan.c",line 343,column 10,is_stmt
        MOV #0, AC0 ; |343| 
        MOV AC0, dbl(*SP(#6)) ; |343| 
	.dwpsn	file "./susan.c",line 343,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |343| 
        MOV dbl(*SP(#4)), AC0 ; |343| 
        CMP AC1 >= AC0, TC1 ; |343| 
        BCC $C$L27,TC1 ; |343| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |343| 
$C$L26:    
	CALL #_coverage_log;
$C$DW$L$_int_to_uchar$8$B:
	.dwpsn	file "./susan.c",line 345,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |345| 
        SFTL T0, #1 ; |345| 
        MOV dbl(*SP(#10)), AC0 ; |345| 
        SUB AC0, dbl(*AR3(T0)), AC1 ; |345| 
        SFTS AC1, #8, AC0 ; |345| 

        MOV dbl(*SP(#8)), AC1 ; |345| 
||      SUB AC1, AC0 ; |345| 

$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__divli")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #__divli ; |345| 
                                        ; call occurs [#__divli] ; |345| 
        MOV *SP(#7), T0 ; |345| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, *AR3(T0) ; |345| 
	.dwpsn	file "./susan.c",line 343,column 27,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |343| 
        ADD #1, AC0 ; |343| 
        MOV AC0, dbl(*SP(#6)) ; |343| 
	.dwpsn	file "./susan.c",line 343,column 17,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |343| 
        MOV dbl(*SP(#6)), AC1 ; |343| 
        CMP AC1 < AC0, TC1 ; |343| 
        BCC $C$L26,TC1 ; |343| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |343| 
$C$DW$L$_int_to_uchar$8$E:
	.dwpsn	file "./susan.c",line 347,column 1,is_stmt
$C$L27:    
	CALL #_coverage_log;
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$84	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$84, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L26:1:1738937689")
	.dwattr $C$DW$84, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x157)
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x15a)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_int_to_uchar$8$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_int_to_uchar$8$E)
	.dwendtag $C$DW$84


$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L22:1:1738937689")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x149)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x153)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_int_to_uchar$2$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_int_to_uchar$2$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_int_to_uchar$3$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_int_to_uchar$3$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_int_to_uchar$4$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_int_to_uchar$4$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_int_to_uchar$5$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_int_to_uchar$5$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_int_to_uchar$6$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_int_to_uchar$6$E)
	.dwendtag $C$DW$86

	.dwattr $C$DW$72, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.global	_setup_brightness_lut

$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("setup_brightness_lut")
	.dwattr $C$DW$92, DW_AT_low_pc(_setup_brightness_lut)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_setup_brightness_lut")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x15d)
	.dwattr $C$DW$92, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./susan.c",line 350,column 1,is_stmt,address _setup_brightness_lut

	.dwfde $C$DW$CIE, _setup_brightness_lut
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg17]
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("thresh")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg0]
$C$DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("form")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg3]
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
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("thresh")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_thresh")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("form")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_form")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("temp")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC1, dbl(*SP(#4)) ; |350| 
        MOV AC0, dbl(*SP(#2)) ; |350| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 354,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMOV #_setbrightness, XAR3 ; |354| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 355,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV dbl(*SP(#0)), XAR2
        AMAR *+AR3(#258) ; |355| 
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "./susan.c",line 357,column 10,is_stmt
        MOV #-256, AC0 ; |357| 
        MOV AC0, dbl(*SP(#6)) ; |357| 
	.dwpsn	file "./susan.c",line 357,column 20,is_stmt
        MOV #257, AC0 ; |357| 
        MOV dbl(*SP(#6)), AC1 ; |357| 
        CMP AC1 >= AC0, TC1 ; |357| 
        BCC $C$L30,TC1 ; |357| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |357| 
$C$L28:    
	CALL #_coverage_log;
$C$DW$L$_setup_brightness_lut$2$B:
	.dwpsn	file "./susan.c",line 359,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |359| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("__fltlid")
	.dwattr $C$DW$101, DW_AT_TI_call
        CALL #__fltlid ; |359| 
                                        ; call occurs [#__fltlid] ; |359| 
        MOV AC0, dbl(*SP(#10)) ; |359| 
        MOV dbl(*SP(#2)), AC0 ; |359| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("__fltlid")
	.dwattr $C$DW$102, DW_AT_TI_call
        CALL #__fltlid ; |359| 
                                        ; call occurs [#__fltlid] ; |359| 

        MOV dbl(*SP(#10)), AC0 ; |359| 
||      OR #0, AC0, AC1

$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("__divd")
	.dwattr $C$DW$103, DW_AT_TI_call
        CALL #__divd ; |359| 
                                        ; call occurs [#__divd] ; |359| 
        MOV AC0, dbl(*SP(#8)) ; |359| 
	.dwpsn	file "./susan.c",line 360,column 9,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |360| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("__mpyd")
	.dwattr $C$DW$104, DW_AT_TI_call
        CALL #__mpyd ; |360| 
                                        ; call occurs [#__mpyd] ; |360| 
        MOV AC0, dbl(*SP(#8)) ; |360| 
	.dwpsn	file "./susan.c",line 361,column 9,is_stmt

        MOV dbl(*SP(#4)), AC1 ; |361| 
||      MOV #6, AC0 ; |361| 

        CMP AC1 != AC0, TC1 ; |361| 
        BCC $C$L29,TC1 ; |361| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |361| 
$C$DW$L$_setup_brightness_lut$2$E:
$C$DW$L$_setup_brightness_lut$3$B:
	.dwpsn	file "./susan.c",line 362,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |362| 
        MOV dbl(*SP(#8)), AC1 ; |362| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("__mpyd")
	.dwattr $C$DW$105, DW_AT_TI_call
        CALL #__mpyd ; |362| 
                                        ; call occurs [#__mpyd] ; |362| 
        MOV dbl(*SP(#8)), AC1 ; |362| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("__mpyd")
	.dwattr $C$DW$106, DW_AT_TI_call
        CALL #__mpyd ; |362| 
                                        ; call occurs [#__mpyd] ; |362| 
        MOV AC0, dbl(*SP(#8)) ; |362| 
$C$DW$L$_setup_brightness_lut$3$E:
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_setup_brightness_lut$4$B:
	.dwpsn	file "./susan.c",line 363,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |363| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("__negd")
	.dwattr $C$DW$107, DW_AT_TI_call
        CALL #__negd ; |363| 
                                        ; call occurs [#__negd] ; |363| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_exp")
	.dwattr $C$DW$108, DW_AT_TI_call
        CALL #_exp ; |363| 
                                        ; call occurs [#_exp] ; |363| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL1)), AC0 ; |363| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__mpyd")
	.dwattr $C$DW$109, DW_AT_TI_call
        CALL #__mpyd ; |363| 
                                        ; call occurs [#__mpyd] ; |363| 
        MOV AC0, dbl(*SP(#8)) ; |363| 
	.dwpsn	file "./susan.c",line 364,column 9,is_stmt
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__fixdu")
	.dwattr $C$DW$110, DW_AT_TI_call
        CALL #__fixdu ; |364| 
                                        ; call occurs [#__fixdu] ; |364| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#7), T0 ; |364| 
||      MOV T0, AR1 ; |364| 

        MOV dbl(*AR3), XAR3
        MOV AR1, *AR3(T0) ; |364| 
	.dwpsn	file "./susan.c",line 357,column 29,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |357| 
        ADD #1, AC0 ; |357| 
        MOV AC0, dbl(*SP(#6)) ; |357| 
	.dwpsn	file "./susan.c",line 357,column 20,is_stmt
        MOV #257, AC0 ; |357| 
        MOV dbl(*SP(#6)), AC1 ; |357| 
        CMP AC1 < AC0, TC1 ; |357| 
        BCC $C$L28,TC1 ; |357| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |357| 
$C$DW$L$_setup_brightness_lut$4$E:
	.dwpsn	file "./susan.c",line 366,column 1,is_stmt
$C$L30:    
	CALL #_coverage_log;
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$112	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$112, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L28:1:1738937689")
	.dwattr $C$DW$112, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0x165)
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x16d)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$2$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$2$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$3$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$3$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_setup_brightness_lut$4$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_setup_brightness_lut$4$E)
	.dwendtag $C$DW$112

	.dwattr $C$DW$92, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text"
	.global	_edge_draw

$C$DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("edge_draw")
	.dwattr $C$DW$116, DW_AT_low_pc(_edge_draw)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_edge_draw")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x170)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./susan.c",line 369,column 1,is_stmt,address _edge_draw

	.dwfde $C$DW$CIE, _edge_draw
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg17]
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg19]
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg0]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg3]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("drawing_mode")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg6]
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
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("mid")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("drawing_mode")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_drawing_mode")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("inp")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_inp")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("midp")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_midp")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV AC2, dbl(*SP(#8)) ; |369| 
        MOV AC1, dbl(*SP(#6)) ; |369| 
        MOV AC0, dbl(*SP(#4)) ; |369| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 373,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |373| 
        BCC $C$L33,AC0 != #0 ; |373| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |373| 
	.dwpsn	file "./susan.c",line 376,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 377,column 14,is_stmt
        MOV #0, AC0 ; |377| 
        MOV AC0, dbl(*SP(#10)) ; |377| 
	.dwpsn	file "./susan.c",line 377,column 21,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |377| 
        MOV dbl(*SP(#4)), AC0 ; |377| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__mpyli")
	.dwattr $C$DW$130, DW_AT_TI_call
        CALL #__mpyli ; |377| 
                                        ; call occurs [#__mpyli] ; |377| 
        MOV dbl(*SP(#10)), AC1 ; |377| 
        CMP AC1 >= AC0, TC1 ; |377| 
        BCC $C$L33,TC1 ; |377| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |377| 
$C$L31:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$3$B:
	.dwpsn	file "./susan.c",line 379,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3

        MOV *AR3, AR1 ; |379| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |379| 
        BCC $C$L32,TC1 ; |379| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |379| 
$C$DW$L$_edge_draw$3$E:
$C$DW$L$_edge_draw$4$B:
	.dwpsn	file "./susan.c",line 381,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#14)), XAR2
        ASUB XAR3, XAR2 ; |381| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), AR1 ; |381| 
        AADD XAR2, XAR3 ; |381| 
        ASUB AR1, AR3 ; |381| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "./susan.c",line 382,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |382| 
	.dwpsn	file "./susan.c",line 383,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |383| 
	.dwpsn	file "./susan.c",line 384,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |384| 
	.dwpsn	file "./susan.c",line 385,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |385| 
        SUB #2, AC0 ; |385| 
        MOV AC0, AR1 ; |385| 

        MOV XAR3, dbl(*SP(#12))
||      AADD AR1, AR3 ; |385| 

	.dwpsn	file "./susan.c",line 386,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |386| 
	.dwpsn	file "./susan.c",line 387,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |387| 
	.dwpsn	file "./susan.c",line 388,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |388| 
	.dwpsn	file "./susan.c",line 389,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |389| 
        SUB #2, AC0 ; |389| 
        MOV AC0, AR1 ; |389| 

        MOV XAR3, dbl(*SP(#12))
||      AADD AR1, AR3 ; |389| 

	.dwpsn	file "./susan.c",line 390,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |390| 
	.dwpsn	file "./susan.c",line 391,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV #255, *AR2 ; |391| 
	.dwpsn	file "./susan.c",line 392,column 17,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #255, *AR3 ; |392| 
$C$DW$L$_edge_draw$4$E:
$C$L32:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$5$B:
	.dwpsn	file "./susan.c",line 394,column 13,is_stmt
        MOV dbl(*SP(#14)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 377,column 42,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |377| 
        ADD #1, AC0 ; |377| 
        MOV AC0, dbl(*SP(#10)) ; |377| 
	.dwpsn	file "./susan.c",line 377,column 21,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |377| 
        MOV dbl(*SP(#4)), AC0 ; |377| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("__mpyli")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #__mpyli ; |377| 
                                        ; call occurs [#__mpyli] ; |377| 
        MOV dbl(*SP(#10)), AC1 ; |377| 
        CMP AC1 < AC0, TC1 ; |377| 
        BCC $C$L31,TC1 ; |377| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |377| 
$C$DW$L$_edge_draw$5$E:
$C$L33:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 399,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 400,column 10,is_stmt
        MOV #0, AC0 ; |400| 
        MOV AC0, dbl(*SP(#10)) ; |400| 
	.dwpsn	file "./susan.c",line 400,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |400| 
        MOV dbl(*SP(#4)), AC0 ; |400| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("__mpyli")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #__mpyli ; |400| 
                                        ; call occurs [#__mpyli] ; |400| 
        MOV dbl(*SP(#10)), AC1 ; |400| 
        CMP AC1 >= AC0, TC1 ; |400| 
        BCC $C$L36,TC1 ; |400| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |400| 
$C$L34:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$7$B:
	.dwpsn	file "./susan.c",line 402,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR3

        MOV *AR3, AR1 ; |402| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |402| 
        BCC $C$L35,TC1 ; |402| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |402| 
$C$DW$L$_edge_draw$7$E:
$C$DW$L$_edge_draw$8$B:
	.dwpsn	file "./susan.c",line 403,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC1
        MOV dbl(*SP(#14)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        SUB AC1, AC0 ; |403| 
        MOV AC0, T0 ; |403| 
        MOV #0, *AR3(T0) ; |403| 
$C$DW$L$_edge_draw$8$E:
$C$L35:    
	CALL #_coverage_log;
$C$DW$L$_edge_draw$9$B:
	.dwpsn	file "./susan.c",line 404,column 9,is_stmt
        MOV dbl(*SP(#14)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "./susan.c",line 400,column 38,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |400| 
        ADD #1, AC0 ; |400| 
        MOV AC0, dbl(*SP(#10)) ; |400| 
	.dwpsn	file "./susan.c",line 400,column 17,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |400| 
        MOV dbl(*SP(#4)), AC0 ; |400| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("__mpyli")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #__mpyli ; |400| 
                                        ; call occurs [#__mpyli] ; |400| 
        MOV dbl(*SP(#10)), AC1 ; |400| 
        CMP AC1 < AC0, TC1 ; |400| 
        BCC $C$L34,TC1 ; |400| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |400| 
$C$DW$L$_edge_draw$9$E:
	.dwpsn	file "./susan.c",line 406,column 1,is_stmt
$C$L36:    
	CALL #_coverage_log;
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$135	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$135, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L34:1:1738937689")
	.dwattr $C$DW$135, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$135, DW_AT_TI_begin_line(0x190)
	.dwattr $C$DW$135, DW_AT_TI_end_line(0x195)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$_edge_draw$7$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$_edge_draw$7$E)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_edge_draw$8$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_edge_draw$8$E)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_edge_draw$9$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_edge_draw$9$E)
	.dwendtag $C$DW$135


$C$DW$139	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$139, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L31:1:1738937689")
	.dwattr $C$DW$139, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x179)
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x18b)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_edge_draw$3$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_edge_draw$3$E)
$C$DW$141	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$141, DW_AT_low_pc($C$DW$L$_edge_draw$4$B)
	.dwattr $C$DW$141, DW_AT_high_pc($C$DW$L$_edge_draw$4$E)
$C$DW$142	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$142, DW_AT_low_pc($C$DW$L$_edge_draw$5$B)
	.dwattr $C$DW$142, DW_AT_high_pc($C$DW$L$_edge_draw$5$E)
	.dwendtag $C$DW$139

	.dwattr $C$DW$116, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x196)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.global	_susan_principle_small

$C$DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_principle_small")
	.dwattr $C$DW$143, DW_AT_low_pc(_susan_principle_small)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_susan_principle_small")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x198)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./susan.c",line 409,column 1,is_stmt,address _susan_principle_small

	.dwfde $C$DW$CIE, _susan_principle_small
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg17]
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg19]
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg21]
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_no")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg0]
$C$DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg3]
$C$DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg6]
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
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("max_no")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV AC2, dbl(*SP(#10)) ; |409| 
        MOV AC1, dbl(*SP(#8)) ; |409| 
        MOV AC0, dbl(*SP(#6)) ; |409| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 413,column 5,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |413| 
        MOV dbl(*SP(#10)), AC1 ; |413| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__mpyli")
	.dwattr $C$DW$161, DW_AT_TI_call
        CALL #__mpyli ; |413| 
                                        ; call occurs [#__mpyli] ; |413| 
        MOV dbl(*SP(#4)), XAR0

        SFTS AC0, #1, AC0 ; |413| 
||      MOV #0, T0

$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_memset")
	.dwattr $C$DW$162, DW_AT_TI_call

        CALL #_memset ; |413| 
||      MOV AC0, T1 ; |413| 

                                        ; call occurs [#_memset] ; |413| 
	.dwpsn	file "./susan.c",line 415,column 5,is_stmt
        MOV #730, AC0 ; |415| 
        MOV AC0, dbl(*SP(#6)) ; |415| 
	.dwpsn	file "./susan.c",line 417,column 10,is_stmt
        MOV #1, AC0 ; |417| 
        MOV AC0, dbl(*SP(#12)) ; |417| 
	.dwpsn	file "./susan.c",line 417,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |417| 

        SUB #1, AC0 ; |417| 
||      MOV dbl(*SP(#12)), AC1 ; |417| 

        CMP AC1 >= AC0, TC1 ; |417| 
        BCC $C$L41,TC1 ; |417| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |417| 
$C$L37:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$2$B:
	.dwpsn	file "./susan.c",line 419,column 14,is_stmt
        MOV #1, AC0 ; |419| 
        MOV AC0, dbl(*SP(#14)) ; |419| 
	.dwpsn	file "./susan.c",line 419,column 21,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |419| 

        SUB #1, AC0 ; |419| 
||      MOV dbl(*SP(#14)), AC1 ; |419| 

        CMP AC1 >= AC0, TC1 ; |419| 
        BCC $C$L40,TC1 ; |419| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |419| 
$C$DW$L$_susan_principle_small$2$E:
$C$L38:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$3$B:
	.dwpsn	file "./susan.c",line 421,column 13,is_stmt
        MOV #100, AC0 ; |421| 
        MOV AC0, dbl(*SP(#16)) ; |421| 
	.dwpsn	file "./susan.c",line 422,column 13,is_stmt

        MOV #1, AC0 ; |422| 
||      MOV dbl(*SP(#8)), AC1 ; |422| 

        SUB AC0, dbl(*SP(#12)), AC0 ; |422| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__mpyli")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #__mpyli ; |422| 
                                        ; call occurs [#__mpyli] ; |422| 
        MOV AC0, AR1 ; |422| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#15), AR1 ; |422| 
||      AADD AR1, AR3 ; |422| 

        AADD AR1, AR3 ; |422| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#18))
	.dwpsn	file "./susan.c",line 423,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |423| 
        MOV dbl(*SP(#8)), AC1 ; |423| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("__mpyli")
	.dwattr $C$DW$164, DW_AT_TI_call
        CALL #__mpyli ; |423| 
                                        ; call occurs [#__mpyli] ; |423| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#14)), AC0, AC0 ; |423| 
        MOV AC0, T0 ; |423| 
        MOV *AR3(T0), AR1 ; |423| 
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, dbl(*SP(#20))
||      AADD AR1, AR3 ; |423| 

	.dwpsn	file "./susan.c",line 425,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |425| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |425| 
        MOV uns(*AR3), AC0 ; |425| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |425| 
        MOV AC0, dbl(*SP(#16)) ; |425| 
	.dwpsn	file "./susan.c",line 426,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |426| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |426| 
        MOV uns(*AR3), AC0 ; |426| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |426| 
        MOV AC0, dbl(*SP(#16)) ; |426| 
	.dwpsn	file "./susan.c",line 427,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3, AR1 ; |427| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |427| 
        MOV uns(*AR3), AC0 ; |427| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |427| 
        MOV AC0, dbl(*SP(#16)) ; |427| 
	.dwpsn	file "./susan.c",line 428,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |428| 
        SUB #2, AC0 ; |428| 
        MOV AC0, AR1 ; |428| 

        MOV XAR3, dbl(*SP(#18))
||      AADD AR1, AR3 ; |428| 

	.dwpsn	file "./susan.c",line 430,column 13,is_stmt
        MOV *AR3, AR1 ; |430| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |430| 
        MOV uns(*AR3), AC0 ; |430| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |430| 
        MOV AC0, dbl(*SP(#16)) ; |430| 
	.dwpsn	file "./susan.c",line 431,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3

        MOV XAR3, dbl(*SP(#18))
||      AADD #2, AR3 ; |431| 

	.dwpsn	file "./susan.c",line 432,column 13,is_stmt
        MOV *AR3, AR1 ; |432| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |432| 
        MOV uns(*AR3), AC0 ; |432| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |432| 
        MOV AC0, dbl(*SP(#16)) ; |432| 
	.dwpsn	file "./susan.c",line 433,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |433| 
        SUB #2, AC0 ; |433| 
        MOV AC0, AR1 ; |433| 

        MOV XAR3, dbl(*SP(#18))
||      AADD AR1, AR3 ; |433| 

	.dwpsn	file "./susan.c",line 435,column 13,is_stmt
        MOV *AR3+, AR1 ; |435| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |435| 
        MOV uns(*AR3), AC0 ; |435| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |435| 
        MOV AC0, dbl(*SP(#16)) ; |435| 
	.dwpsn	file "./susan.c",line 436,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3+, AR1 ; |436| 
        MOV XAR3, dbl(*SP(#18))
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |436| 
        MOV uns(*AR3), AC0 ; |436| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |436| 
        MOV AC0, dbl(*SP(#16)) ; |436| 
	.dwpsn	file "./susan.c",line 437,column 13,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV *AR3, AR1 ; |437| 
        MOV dbl(*SP(#20)), XAR3
        ASUB AR1, AR3 ; |437| 
        MOV uns(*AR3), AC0 ; |437| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |437| 
        MOV AC0, dbl(*SP(#16)) ; |437| 
	.dwpsn	file "./susan.c",line 439,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |439| 
        MOV dbl(*SP(#16)), AC1 ; |439| 
        CMP AC1 > AC0, TC1 ; |439| 
        BCC $C$L39,TC1 ; |439| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |439| 
$C$DW$L$_susan_principle_small$3$E:
$C$DW$L$_susan_principle_small$4$B:
	.dwpsn	file "./susan.c",line 441,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |441| 
        MOV dbl(*SP(#8)), AC1 ; |441| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("__mpyli")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #__mpyli ; |441| 
                                        ; call occurs [#__mpyli] ; |441| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#14)), AC0, AC0 ; |441| 
        MOV AC0, T0 ; |441| 
        SFTL T0, #1 ; |441| 
        MOV dbl(*SP(#16)), AC0 ; |441| 
        SUB AC0, dbl(*SP(#6)), AC0 ; |441| 
        MOV AC0, dbl(*AR3(T0)) ; |441| 
$C$DW$L$_susan_principle_small$4$E:
$C$L39:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$5$B:
	.dwpsn	file "./susan.c",line 419,column 37,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |419| 
        ADD #1, AC0 ; |419| 
        MOV AC0, dbl(*SP(#14)) ; |419| 
	.dwpsn	file "./susan.c",line 419,column 21,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |419| 

        SUB #1, AC0 ; |419| 
||      MOV dbl(*SP(#14)), AC1 ; |419| 

        CMP AC1 < AC0, TC1 ; |419| 
        BCC $C$L38,TC1 ; |419| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |419| 
$C$DW$L$_susan_principle_small$5$E:
$C$L40:    
	CALL #_coverage_log;
$C$DW$L$_susan_principle_small$6$B:
	.dwpsn	file "./susan.c",line 417,column 33,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |417| 
        ADD #1, AC0 ; |417| 
        MOV AC0, dbl(*SP(#12)) ; |417| 
	.dwpsn	file "./susan.c",line 417,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |417| 

        SUB #1, AC0 ; |417| 
||      MOV dbl(*SP(#12)), AC1 ; |417| 

        CMP AC1 < AC0, TC1 ; |417| 
        BCC $C$L37,TC1 ; |417| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |417| 
$C$DW$L$_susan_principle_small$6$E:
	.dwpsn	file "./susan.c",line 445,column 1,is_stmt
$C$L41:    
	CALL #_coverage_log;
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$167	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$167, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L37:1:1738937689")
	.dwattr $C$DW$167, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x1bc)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_susan_principle_small$2$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_susan_principle_small$2$E)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_susan_principle_small$6$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_susan_principle_small$6$E)

$C$DW$170	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$170, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L38:2:1738937689")
	.dwattr $C$DW$170, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x1a3)
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x1bb)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_susan_principle_small$3$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_susan_principle_small$3$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_susan_principle_small$4$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_susan_principle_small$4$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_susan_principle_small$5$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_susan_principle_small$5$E)
	.dwendtag $C$DW$170

	.dwendtag $C$DW$167

	.dwattr $C$DW$143, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.global	_susan_edges_small

$C$DW$174	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_edges_small")
	.dwattr $C$DW$174, DW_AT_low_pc(_susan_edges_small)
	.dwattr $C$DW$174, DW_AT_high_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_susan_edges_small")
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0x1c0)
	.dwattr $C$DW$174, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$174, DW_AT_TI_max_frame_size(0x2e)
	.dwpsn	file "./susan.c",line 449,column 1,is_stmt,address _susan_edges_small

	.dwfde $C$DW$CIE, _susan_edges_small
$C$DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg17]
$C$DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg19]
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mid")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg21]
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bp")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg23]
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_no")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg0]
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x_size")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg3]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y_size")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg6]
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
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("mid")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_mid")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("max_no")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_max_no")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("z")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_z")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("do_symmetry")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_do_symmetry")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("m")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_m")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_bregx 0x24 24]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("a")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_a")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_bregx 0x24 26]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_b")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_bregx 0x24 28]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_bregx 0x24 30]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 32]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("w")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_w")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 34]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("c")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_c")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 36]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("p")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 38]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("cp")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_cp")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 40]
        MOV AC2, dbl(*SP(#12)) ; |449| 
        MOV AC1, dbl(*SP(#10)) ; |449| 
        MOV AC0, dbl(*SP(#8)) ; |449| 
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 454,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |454| 
        MOV dbl(*SP(#12)), AC1 ; |454| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("__mpyli")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #__mpyli ; |454| 
                                        ; call occurs [#__mpyli] ; |454| 
        MOV dbl(*SP(#2)), XAR0

        SFTS AC0, #1, AC0 ; |454| 
||      MOV #0, T0

$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_memset")
	.dwattr $C$DW$204, DW_AT_TI_call

        CALL #_memset ; |454| 
||      MOV AC0, T1 ; |454| 

                                        ; call occurs [#_memset] ; |454| 
	.dwpsn	file "./susan.c",line 456,column 5,is_stmt
        MOV #730, AC0 ; |456| 
        MOV AC0, dbl(*SP(#8)) ; |456| 
	.dwpsn	file "./susan.c",line 458,column 10,is_stmt
        MOV #1, AC0 ; |458| 
        MOV AC0, dbl(*SP(#18)) ; |458| 
	.dwpsn	file "./susan.c",line 458,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |458| 

        SUB #1, AC0 ; |458| 
||      MOV dbl(*SP(#18)), AC1 ; |458| 

        CMP AC1 >= AC0, TC1 ; |458| 
        BCC $C$L46,TC1 ; |458| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |458| 
$C$L42:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$2$B:
	.dwpsn	file "./susan.c",line 459,column 14,is_stmt
        MOV #1, AC0 ; |459| 
        MOV AC0, dbl(*SP(#20)) ; |459| 
	.dwpsn	file "./susan.c",line 459,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |459| 

        SUB #1, AC0 ; |459| 
||      MOV dbl(*SP(#20)), AC1 ; |459| 

        CMP AC1 >= AC0, TC1 ; |459| 
        BCC $C$L45,TC1 ; |459| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |459| 
$C$DW$L$_susan_edges_small$2$E:
$C$L43:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$3$B:
	.dwpsn	file "./susan.c",line 461,column 13,is_stmt
        MOV #100, AC0 ; |461| 
        MOV AC0, dbl(*SP(#24)) ; |461| 
	.dwpsn	file "./susan.c",line 462,column 13,is_stmt

        MOV #1, AC0 ; |462| 
||      MOV dbl(*SP(#10)), AC1 ; |462| 

        SUB AC0, dbl(*SP(#18)), AC0 ; |462| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__mpyli")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #__mpyli ; |462| 
                                        ; call occurs [#__mpyli] ; |462| 
        MOV AC0, AR1 ; |462| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |462| 
||      AADD AR1, AR3 ; |462| 

        AADD AR1, AR3 ; |462| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 463,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |463| 
        MOV dbl(*SP(#10)), AC1 ; |463| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("__mpyli")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #__mpyli ; |463| 
                                        ; call occurs [#__mpyli] ; |463| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |463| 
        MOV AC0, T0 ; |463| 
        MOV *AR3(T0), AR1 ; |463| 
        MOV dbl(*SP(#6)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |463| 

	.dwpsn	file "./susan.c",line 465,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |465| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |465| 
        MOV uns(*AR3), AC0 ; |465| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |465| 
        MOV AC0, dbl(*SP(#24)) ; |465| 
	.dwpsn	file "./susan.c",line 466,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |466| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |466| 
        MOV uns(*AR3), AC0 ; |466| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |466| 
        MOV AC0, dbl(*SP(#24)) ; |466| 
	.dwpsn	file "./susan.c",line 467,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |467| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |467| 
        MOV uns(*AR3), AC0 ; |467| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |467| 
        MOV AC0, dbl(*SP(#24)) ; |467| 
	.dwpsn	file "./susan.c",line 468,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |468| 
        SUB #2, AC0 ; |468| 
        MOV AC0, AR1 ; |468| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |468| 

	.dwpsn	file "./susan.c",line 470,column 13,is_stmt
        MOV *AR3, AR1 ; |470| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |470| 
        MOV uns(*AR3), AC0 ; |470| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |470| 
        MOV AC0, dbl(*SP(#24)) ; |470| 
	.dwpsn	file "./susan.c",line 471,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |471| 

	.dwpsn	file "./susan.c",line 472,column 13,is_stmt
        MOV *AR3, AR1 ; |472| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |472| 
        MOV uns(*AR3), AC0 ; |472| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |472| 
        MOV AC0, dbl(*SP(#24)) ; |472| 
	.dwpsn	file "./susan.c",line 473,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |473| 
        SUB #2, AC0 ; |473| 
        MOV AC0, AR1 ; |473| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |473| 

	.dwpsn	file "./susan.c",line 475,column 13,is_stmt
        MOV *AR3+, AR1 ; |475| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |475| 
        MOV uns(*AR3), AC0 ; |475| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |475| 
        MOV AC0, dbl(*SP(#24)) ; |475| 
	.dwpsn	file "./susan.c",line 476,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |476| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |476| 
        MOV uns(*AR3), AC0 ; |476| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |476| 
        MOV AC0, dbl(*SP(#24)) ; |476| 
	.dwpsn	file "./susan.c",line 477,column 13,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |477| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |477| 
        MOV uns(*AR3), AC0 ; |477| 
        ADD dbl(*SP(#24)), AC0, AC0 ; |477| 
        MOV AC0, dbl(*SP(#24)) ; |477| 
	.dwpsn	file "./susan.c",line 479,column 13,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |479| 
        MOV dbl(*SP(#24)), AC1 ; |479| 
        CMP AC1 > AC0, TC1 ; |479| 
        BCC $C$L44,TC1 ; |479| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |479| 
$C$DW$L$_susan_edges_small$3$E:
$C$DW$L$_susan_edges_small$4$B:
	.dwpsn	file "./susan.c",line 480,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |480| 
        MOV dbl(*SP(#10)), AC1 ; |480| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("__mpyli")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #__mpyli ; |480| 
                                        ; call occurs [#__mpyli] ; |480| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |480| 
        MOV AC0, T0 ; |480| 
        SFTL T0, #1 ; |480| 
        MOV dbl(*SP(#24)), AC0 ; |480| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |480| 
        MOV AC0, dbl(*AR3(T0)) ; |480| 
$C$DW$L$_susan_edges_small$4$E:
$C$L44:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$5$B:
	.dwpsn	file "./susan.c",line 459,column 37,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |459| 
        ADD #1, AC0 ; |459| 
        MOV AC0, dbl(*SP(#20)) ; |459| 
	.dwpsn	file "./susan.c",line 459,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |459| 

        SUB #1, AC0 ; |459| 
||      MOV dbl(*SP(#20)), AC1 ; |459| 

        CMP AC1 < AC0, TC1 ; |459| 
        BCC $C$L43,TC1 ; |459| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |459| 
$C$DW$L$_susan_edges_small$5$E:
$C$L45:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$6$B:
	.dwpsn	file "./susan.c",line 458,column 33,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |458| 
        ADD #1, AC0 ; |458| 
        MOV AC0, dbl(*SP(#18)) ; |458| 
	.dwpsn	file "./susan.c",line 458,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |458| 

        SUB #1, AC0 ; |458| 
||      MOV dbl(*SP(#18)), AC1 ; |458| 

        CMP AC1 < AC0, TC1 ; |458| 
        BCC $C$L42,TC1 ; |458| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |458| 
$C$DW$L$_susan_edges_small$6$E:
$C$L46:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 483,column 10,is_stmt
        MOV #2, AC0 ; |483| 
        MOV AC0, dbl(*SP(#18)) ; |483| 
	.dwpsn	file "./susan.c",line 483,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |483| 

        SUB #2, AC0 ; |483| 
||      MOV dbl(*SP(#18)), AC1 ; |483| 

        CMP AC1 >= AC0, TC1 ; |483| 
        BCC $C$L68,TC1 ; |483| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |483| 
$C$L47:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$8$B:
	.dwpsn	file "./susan.c",line 484,column 14,is_stmt
        MOV #2, AC0 ; |484| 
        MOV AC0, dbl(*SP(#20)) ; |484| 
	.dwpsn	file "./susan.c",line 484,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |484| 

        SUB #2, AC0 ; |484| 
||      MOV dbl(*SP(#20)), AC1 ; |484| 

        CMP AC1 >= AC0, TC1 ; |484| 
        BCC $C$L67,TC1 ; |484| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |484| 
$C$DW$L$_susan_edges_small$8$E:
$C$L48:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$9$B:
	.dwpsn	file "./susan.c",line 486,column 13,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |486| 
        MOV dbl(*SP(#10)), AC1 ; |486| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__mpyli")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #__mpyli ; |486| 
                                        ; call occurs [#__mpyli] ; |486| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |486| 
        MOV AC0, T0 ; |486| 
        SFTL T0, #1 ; |486| 
        MOV dbl(*AR3(T0)), AC0 ; |486| 
        BCC $C$L66,AC0 <= #0 ; |486| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |486| 
$C$DW$L$_susan_edges_small$9$E:
$C$DW$L$_susan_edges_small$10$B:
	.dwpsn	file "./susan.c",line 488,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |488| 
        MOV dbl(*SP(#10)), AC1 ; |488| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("__mpyli")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #__mpyli ; |488| 
                                        ; call occurs [#__mpyli] ; |488| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |488| 
        MOV AC0, T0 ; |488| 
        SFTL T0, #1 ; |488| 
        MOV dbl(*AR3(T0)), AC0 ; |488| 
        MOV AC0, dbl(*SP(#22)) ; |488| 
	.dwpsn	file "./susan.c",line 489,column 17,is_stmt
        MOV dbl(*SP(#22)), AC0 ; |489| 
        SUB AC0, dbl(*SP(#8)), AC0 ; |489| 
        MOV AC0, dbl(*SP(#24)) ; |489| 
	.dwpsn	file "./susan.c",line 490,column 17,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |490| 
        MOV dbl(*SP(#10)), AC1 ; |490| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__mpyli")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #__mpyli ; |490| 
                                        ; call occurs [#__mpyli] ; |490| 
        MOV dbl(*SP(#0)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |490| 
        MOV AC0, T0 ; |490| 
        MOV *AR3(T0), AR1 ; |490| 
        MOV dbl(*SP(#6)), XAR3

        MOV XAR3, dbl(*SP(#40))
||      AADD AR1, AR3 ; |490| 

	.dwpsn	file "./susan.c",line 492,column 17,is_stmt
        MOV #250, AC0 ; |492| 
        MOV dbl(*SP(#24)), AC1 ; |492| 
        CMP AC1 <= AC0, TC1 ; |492| 
        BCC $C$L58,TC1 ; |492| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |492| 
$C$DW$L$_susan_edges_small$10$E:
$C$DW$L$_susan_edges_small$11$B:
	.dwpsn	file "./susan.c",line 494,column 21,is_stmt

        MOV dbl(*SP(#10)), AC1 ; |494| 
||      MOV #1, AC0 ; |494| 

        SUB AC0, dbl(*SP(#18)), AC0 ; |494| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("__mpyli")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #__mpyli ; |494| 
                                        ; call occurs [#__mpyli] ; |494| 
        MOV AC0, AR1 ; |494| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |494| 
||      AADD AR1, AR3 ; |494| 

        AADD AR1, AR3 ; |494| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 495,column 21,is_stmt
        MOV #0, AC0 ; |495| 
        MOV AC0, dbl(*SP(#30)) ; |495| 
	.dwpsn	file "./susan.c",line 496,column 21,is_stmt
        MOV AC0, dbl(*SP(#32)) ; |496| 
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
        SUB AC0, dbl(*SP(#30)), AC0 ; |499| 
        MOV AC0, dbl(*SP(#30)) ; |499| 
	.dwpsn	file "./susan.c",line 500,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |500| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |500| 
        MOV AC0, dbl(*SP(#32)) ; |500| 
	.dwpsn	file "./susan.c",line 501,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |501| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |501| 
        MOV *AR3, AR1 ; |501| 
        MOV AR1, *SP(#36) ; |501| 
	.dwpsn	file "./susan.c",line 502,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |502| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |502| 
        MOV AC0, dbl(*SP(#32)) ; |502| 
	.dwpsn	file "./susan.c",line 503,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |503| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |503| 
        MOV *AR3, AR1 ; |503| 
        MOV AR1, *SP(#36) ; |503| 
	.dwpsn	file "./susan.c",line 504,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |504| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |504| 
        MOV AC0, dbl(*SP(#30)) ; |504| 
	.dwpsn	file "./susan.c",line 505,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |505| 
        SUB AC0, dbl(*SP(#32)), AC0 ; |505| 
        MOV AC0, dbl(*SP(#32)) ; |505| 
	.dwpsn	file "./susan.c",line 506,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |506| 
        SUB #2, AC0 ; |506| 
        MOV AC0, AR1 ; |506| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |506| 

	.dwpsn	file "./susan.c",line 508,column 21,is_stmt
        MOV *AR3, AR1 ; |508| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |508| 
        MOV *AR3, AR1 ; |508| 
        MOV AR1, *SP(#36) ; |508| 
	.dwpsn	file "./susan.c",line 509,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |509| 
        SUB AC0, dbl(*SP(#30)), AC0 ; |509| 
        MOV AC0, dbl(*SP(#30)) ; |509| 
	.dwpsn	file "./susan.c",line 510,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |510| 

	.dwpsn	file "./susan.c",line 511,column 21,is_stmt
        MOV *AR3, AR1 ; |511| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |511| 
        MOV *AR3, AR1 ; |511| 
        MOV AR1, *SP(#36) ; |511| 
	.dwpsn	file "./susan.c",line 512,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |512| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |512| 
        MOV AC0, dbl(*SP(#30)) ; |512| 
	.dwpsn	file "./susan.c",line 513,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |513| 
        SUB #2, AC0 ; |513| 
        MOV AC0, AR1 ; |513| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |513| 

	.dwpsn	file "./susan.c",line 515,column 21,is_stmt
        MOV *AR3+, AR1 ; |515| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |515| 
        MOV *AR3, AR1 ; |515| 
        MOV AR1, *SP(#36) ; |515| 
	.dwpsn	file "./susan.c",line 516,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |516| 
        SUB AC0, dbl(*SP(#30)), AC0 ; |516| 
        MOV AC0, dbl(*SP(#30)) ; |516| 
	.dwpsn	file "./susan.c",line 517,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |517| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |517| 
        MOV AC0, dbl(*SP(#32)) ; |517| 
	.dwpsn	file "./susan.c",line 518,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |518| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |518| 
        MOV *AR3, AR1 ; |518| 
        MOV AR1, *SP(#36) ; |518| 
	.dwpsn	file "./susan.c",line 519,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |519| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |519| 
        MOV AC0, dbl(*SP(#32)) ; |519| 
	.dwpsn	file "./susan.c",line 520,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |520| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |520| 
        MOV *AR3, AR1 ; |520| 
        MOV AR1, *SP(#36) ; |520| 
	.dwpsn	file "./susan.c",line 521,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |521| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |521| 
        MOV AC0, dbl(*SP(#30)) ; |521| 
	.dwpsn	file "./susan.c",line 522,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |522| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |522| 
        MOV AC0, dbl(*SP(#32)) ; |522| 
	.dwpsn	file "./susan.c",line 524,column 21,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |524| 
        MOV dbl(*SP(#30)), AC1 ; |524| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("__mpyli")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #__mpyli ; |524| 
                                        ; call occurs [#__mpyli] ; |524| 
        MOV dbl(*SP(#32)), AC1 ; |524| 

        MOV dbl(*SP(#32)), AC0 ; |524| 
||      OR #0, AC0, AC2

$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__mpyli")
	.dwattr $C$DW$213, DW_AT_TI_call
        CALL #__mpyli ; |524| 
                                        ; call occurs [#__mpyli] ; |524| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("__fltlid")
	.dwattr $C$DW$214, DW_AT_TI_call

        CALL #__fltlid ; |524| 
||      ADD AC2, AC0 ; |524| 

                                        ; call occurs [#__fltlid] ; |524| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_sqrt")
	.dwattr $C$DW$215, DW_AT_TI_call
        CALL #_sqrt ; |524| 
                                        ; call occurs [#_sqrt] ; |524| 
        MOV AC0, dbl(*SP(#14)) ; |524| 
	.dwpsn	file "./susan.c",line 525,column 21,is_stmt
        MOV dbl(*SP(#24)), AC0 ; |525| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__fltlid")
	.dwattr $C$DW$216, DW_AT_TI_call
        CALL #__fltlid ; |525| 
                                        ; call occurs [#__fltlid] ; |525| 
        OR #0, AC0, AC1
        MOV dbl(*($C$FL2)), AC0 ; |525| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("__mpyd")
	.dwattr $C$DW$217, DW_AT_TI_call
        CALL #__mpyd ; |525| 
                                        ; call occurs [#__mpyd] ; |525| 

        MOV dbl(*SP(#14)), AC0 ; |525| 
||      OR #0, AC0, AC1

$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__cmpd")
	.dwattr $C$DW$218, DW_AT_TI_call
        CALL #__cmpd ; |525| 
                                        ; call occurs [#__cmpd] ; |525| 
        BCC $C$L57,T0 <= #0 ; |525| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |525| 
$C$DW$L$_susan_edges_small$11$E:
$C$DW$L$_susan_edges_small$12$B:
	.dwpsn	file "./susan.c",line 527,column 25,is_stmt
        MOV #0, AC0 ; |527| 
        MOV AC0, dbl(*SP(#16)) ; |527| 
	.dwpsn	file "./susan.c",line 528,column 25,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |528| 
        BCC $C$L49,AC0 != #0 ; |528| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |528| 
$C$DW$L$_susan_edges_small$12$E:
$C$DW$L$_susan_edges_small$13$B:
	.dwpsn	file "./susan.c",line 529,column 29,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |529| 
        MOV AC0, dbl(*SP(#14)) ; |529| 
        B $C$L50  ; |529| 
                                        ; branch occurs ; |529| 
$C$DW$L$_susan_edges_small$13$E:
$C$L49:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$14$B:
	.dwpsn	file "./susan.c",line 531,column 29,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |531| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__fltlid")
	.dwattr $C$DW$219, DW_AT_TI_call
        CALL #__fltlid ; |531| 
                                        ; call occurs [#__fltlid] ; |531| 
        MOV AC0, dbl(*SP(#42)) ; |531| 
        MOV dbl(*SP(#30)), AC0 ; |531| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("__fltlid")
	.dwattr $C$DW$220, DW_AT_TI_call
        CALL #__fltlid ; |531| 
                                        ; call occurs [#__fltlid] ; |531| 

        MOV dbl(*SP(#42)), AC0 ; |531| 
||      OR #0, AC0, AC1

$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("__divd")
	.dwattr $C$DW$221, DW_AT_TI_call
        CALL #__divd ; |531| 
                                        ; call occurs [#__divd] ; |531| 
        MOV AC0, dbl(*SP(#14)) ; |531| 
$C$DW$L$_susan_edges_small$14$E:
$C$L50:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$15$B:
	.dwpsn	file "./susan.c",line 532,column 25,is_stmt
        MOV dbl(*($C$FL4)), AC1 ; |532| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__cmpd")
	.dwattr $C$DW$222, DW_AT_TI_call
        CALL #__cmpd ; |532| 
                                        ; call occurs [#__cmpd] ; |532| 
        BCC $C$L51,T0 >= #0 ; |532| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |532| 
$C$DW$L$_susan_edges_small$15$E:
$C$DW$L$_susan_edges_small$16$B:
	.dwpsn	file "./susan.c",line 534,column 29,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |534| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("__negd")
	.dwattr $C$DW$223, DW_AT_TI_call
        CALL #__negd ; |534| 
                                        ; call occurs [#__negd] ; |534| 
        MOV AC0, dbl(*SP(#14)) ; |534| 
	.dwpsn	file "./susan.c",line 535,column 29,is_stmt
        MOV #-1, AC0 ; |535| 
        MOV AC0, dbl(*SP(#34)) ; |535| 
	.dwpsn	file "./susan.c",line 536,column 25,is_stmt
        B $C$L52  ; |536| 
                                        ; branch occurs ; |536| 
$C$DW$L$_susan_edges_small$16$E:
$C$L51:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$17$B:
	.dwpsn	file "./susan.c",line 538,column 29,is_stmt
        MOV #1, AC0 ; |538| 
        MOV AC0, dbl(*SP(#34)) ; |538| 
$C$DW$L$_susan_edges_small$17$E:
$C$L52:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$18$B:
	.dwpsn	file "./susan.c",line 539,column 25,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |539| 
        MOV dbl(*($C$FL5)), AC1 ; |539| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("__cmpd")
	.dwattr $C$DW$224, DW_AT_TI_call
        CALL #__cmpd ; |539| 
                                        ; call occurs [#__cmpd] ; |539| 
        BCC $C$L53,T0 >= #0 ; |539| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |539| 
$C$DW$L$_susan_edges_small$18$E:
$C$DW$L$_susan_edges_small$19$B:
	.dwpsn	file "./susan.c",line 541,column 29,is_stmt
        MOV #0, AC0 ; |541| 
        MOV AC0, dbl(*SP(#26)) ; |541| 
	.dwpsn	file "./susan.c",line 542,column 29,is_stmt
        MOV #1, AC0 ; |542| 
        MOV AC0, dbl(*SP(#28)) ; |542| 
	.dwpsn	file "./susan.c",line 543,column 25,is_stmt
        B $C$L56  ; |543| 
                                        ; branch occurs ; |543| 
$C$DW$L$_susan_edges_small$19$E:
$C$L53:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$20$B:
	.dwpsn	file "./susan.c",line 546,column 29,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |546| 
        MOV dbl(*($C$FL6)), AC1 ; |546| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("__cmpd")
	.dwattr $C$DW$225, DW_AT_TI_call
        CALL #__cmpd ; |546| 
                                        ; call occurs [#__cmpd] ; |546| 
        BCC $C$L54,T0 <= #0 ; |546| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |546| 
$C$DW$L$_susan_edges_small$20$E:
$C$DW$L$_susan_edges_small$21$B:
	.dwpsn	file "./susan.c",line 548,column 33,is_stmt
        MOV #1, AC0 ; |548| 
        MOV AC0, dbl(*SP(#26)) ; |548| 
	.dwpsn	file "./susan.c",line 549,column 33,is_stmt
        MOV #0, AC0 ; |549| 
        MOV AC0, dbl(*SP(#28)) ; |549| 
	.dwpsn	file "./susan.c",line 550,column 29,is_stmt
        B $C$L56  ; |550| 
                                        ; branch occurs ; |550| 
$C$DW$L$_susan_edges_small$21$E:
$C$L54:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$22$B:
	.dwpsn	file "./susan.c",line 553,column 33,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |553| 
        BCC $C$L55,AC0 <= #0 ; |553| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |553| 
$C$DW$L$_susan_edges_small$22$E:
$C$DW$L$_susan_edges_small$23$B:
	.dwpsn	file "./susan.c",line 555,column 37,is_stmt
        MOV #1, AC0 ; |555| 
        MOV AC0, dbl(*SP(#26)) ; |555| 
	.dwpsn	file "./susan.c",line 556,column 37,is_stmt
        MOV AC0, dbl(*SP(#28)) ; |556| 
	.dwpsn	file "./susan.c",line 557,column 33,is_stmt
        B $C$L56  ; |557| 
                                        ; branch occurs ; |557| 
$C$DW$L$_susan_edges_small$23$E:
$C$L55:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$24$B:
	.dwpsn	file "./susan.c",line 560,column 37,is_stmt
        MOV #-1, AC0 ; |560| 
        MOV AC0, dbl(*SP(#26)) ; |560| 
	.dwpsn	file "./susan.c",line 561,column 37,is_stmt
        MOV #1, AC0 ; |561| 
        MOV AC0, dbl(*SP(#28)) ; |561| 
$C$DW$L$_susan_edges_small$24$E:
$C$L56:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$25$B:
	.dwpsn	file "./susan.c",line 565,column 25,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |565| 
        MOV dbl(*SP(#10)), AC1 ; |565| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |565| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("__mpyli")
	.dwattr $C$DW$226, DW_AT_TI_call
        CALL #__mpyli ; |565| 
                                        ; call occurs [#__mpyli] ; |565| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |565| 
        ADD dbl(*SP(#28)), AC0, AC0 ; |565| 
        MOV AC0, T0 ; |565| 
        SFTL T0, #1 ; |565| 
        MOV dbl(*SP(#22)), AC1 ; |565| 
        MOV dbl(*AR3(T0)), AC0 ; |565| 
        CMP AC1 <= AC0, TC1 ; |565| 
        BCC $C$L59,TC1 ; |565| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |565| 
$C$DW$L$_susan_edges_small$25$E:
$C$DW$L$_susan_edges_small$26$B:
        MOV dbl(*SP(#26)), AC0 ; |565| 
        MOV dbl(*SP(#10)), AC1 ; |565| 
        SUB AC0, dbl(*SP(#18)), AC0 ; |565| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("__mpyli")
	.dwattr $C$DW$227, DW_AT_TI_call
        CALL #__mpyli ; |565| 
                                        ; call occurs [#__mpyli] ; |565| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |565| 
        SUB dbl(*SP(#28)), AC0, AC0 ; |565| 
        MOV AC0, T0 ; |565| 
        SFTL T0, #1 ; |565| 
        MOV dbl(*SP(#22)), AC1 ; |565| 
        MOV dbl(*AR3(T0)), AC0 ; |565| 
        CMP AC1 < AC0, TC1 ; |565| 
        BCC $C$L59,TC1 ; |565| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |565| 
$C$DW$L$_susan_edges_small$26$E:
$C$DW$L$_susan_edges_small$27$B:
	.dwpsn	file "./susan.c",line 566,column 29,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |566| 
        MOV dbl(*SP(#10)), AC1 ; |566| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("__mpyli")
	.dwattr $C$DW$228, DW_AT_TI_call
        CALL #__mpyli ; |566| 
                                        ; call occurs [#__mpyli] ; |566| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |566| 
        MOV AC0, T0 ; |566| 
        MOV #1, *AR3(T0) ; |566| 
	.dwpsn	file "./susan.c",line 567,column 21,is_stmt
        B $C$L59  ; |567| 
                                        ; branch occurs ; |567| 
$C$DW$L$_susan_edges_small$27$E:
$C$L57:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$28$B:
	.dwpsn	file "./susan.c",line 569,column 25,is_stmt
        MOV #1, AC0 ; |569| 
        MOV AC0, dbl(*SP(#16)) ; |569| 
	.dwpsn	file "./susan.c",line 570,column 17,is_stmt
        B $C$L59  ; |570| 
                                        ; branch occurs ; |570| 
$C$DW$L$_susan_edges_small$28$E:
$C$L58:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$29$B:
	.dwpsn	file "./susan.c",line 572,column 21,is_stmt
        MOV #1, AC0 ; |572| 
        MOV AC0, dbl(*SP(#16)) ; |572| 
$C$DW$L$_susan_edges_small$29$E:
$C$L59:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$30$B:
	.dwpsn	file "./susan.c",line 574,column 17,is_stmt

        MOV dbl(*SP(#16)), AC1 ; |574| 
||      MOV #1, AC0 ; |574| 

        CMP AC1 != AC0, TC1 ; |574| 
        BCC $C$L66,TC1 ; |574| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |574| 
$C$DW$L$_susan_edges_small$30$E:
$C$DW$L$_susan_edges_small$31$B:
	.dwpsn	file "./susan.c",line 576,column 21,is_stmt
        SUB AC0, dbl(*SP(#18)), AC0 ; |576| 
        MOV dbl(*SP(#10)), AC1 ; |576| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("__mpyli")
	.dwattr $C$DW$229, DW_AT_TI_call
        CALL #__mpyli ; |576| 
                                        ; call occurs [#__mpyli] ; |576| 
        MOV AC0, AR1 ; |576| 
        MOV dbl(*SP(#0)), XAR3

        MOV *SP(#21), AR1 ; |576| 
||      AADD AR1, AR3 ; |576| 

        AADD AR1, AR3 ; |576| 
        AMAR *AR3-
        MOV XAR3, dbl(*SP(#38))
	.dwpsn	file "./susan.c",line 577,column 21,is_stmt
        MOV #0, AC0 ; |577| 
        MOV AC0, dbl(*SP(#30)) ; |577| 
	.dwpsn	file "./susan.c",line 578,column 21,is_stmt
        MOV AC0, dbl(*SP(#32)) ; |578| 
	.dwpsn	file "./susan.c",line 579,column 21,is_stmt
        MOV AC0, dbl(*SP(#34)) ; |579| 
	.dwpsn	file "./susan.c",line 585,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |585| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |585| 
        MOV *AR3, AR1 ; |585| 
        MOV AR1, *SP(#36) ; |585| 
	.dwpsn	file "./susan.c",line 586,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |586| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |586| 
        MOV AC0, dbl(*SP(#30)) ; |586| 
	.dwpsn	file "./susan.c",line 587,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |587| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |587| 
        MOV AC0, dbl(*SP(#32)) ; |587| 
	.dwpsn	file "./susan.c",line 588,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |588| 
        ADD dbl(*SP(#34)), AC0, AC0 ; |588| 
        MOV AC0, dbl(*SP(#34)) ; |588| 
	.dwpsn	file "./susan.c",line 589,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |589| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |589| 
        MOV *AR3, AR1 ; |589| 
        MOV AR1, *SP(#36) ; |589| 
	.dwpsn	file "./susan.c",line 590,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |590| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |590| 
        MOV AC0, dbl(*SP(#32)) ; |590| 
	.dwpsn	file "./susan.c",line 591,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |591| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |591| 
        MOV *AR3, AR1 ; |591| 
        MOV AR1, *SP(#36) ; |591| 
	.dwpsn	file "./susan.c",line 592,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |592| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |592| 
        MOV AC0, dbl(*SP(#30)) ; |592| 
	.dwpsn	file "./susan.c",line 593,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |593| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |593| 
        MOV AC0, dbl(*SP(#32)) ; |593| 
	.dwpsn	file "./susan.c",line 594,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |594| 
        SUB AC0, dbl(*SP(#34)), AC0 ; |594| 
        MOV AC0, dbl(*SP(#34)) ; |594| 
	.dwpsn	file "./susan.c",line 595,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |595| 
        SUB #2, AC0 ; |595| 
        MOV AC0, AR1 ; |595| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |595| 

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

        MOV XAR3, dbl(*SP(#38))
||      AADD #2, AR3 ; |599| 

	.dwpsn	file "./susan.c",line 600,column 21,is_stmt
        MOV *AR3, AR1 ; |600| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |600| 
        MOV *AR3, AR1 ; |600| 
        MOV AR1, *SP(#36) ; |600| 
	.dwpsn	file "./susan.c",line 601,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |601| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |601| 
        MOV AC0, dbl(*SP(#30)) ; |601| 
	.dwpsn	file "./susan.c",line 602,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |602| 
        SUB #2, AC0 ; |602| 
        MOV AC0, AR1 ; |602| 

        MOV XAR3, dbl(*SP(#38))
||      AADD AR1, AR3 ; |602| 

	.dwpsn	file "./susan.c",line 604,column 21,is_stmt
        MOV *AR3+, AR1 ; |604| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |604| 
        MOV *AR3, AR1 ; |604| 
        MOV AR1, *SP(#36) ; |604| 
	.dwpsn	file "./susan.c",line 605,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |605| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |605| 
        MOV AC0, dbl(*SP(#30)) ; |605| 
	.dwpsn	file "./susan.c",line 606,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |606| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |606| 
        MOV AC0, dbl(*SP(#32)) ; |606| 
	.dwpsn	file "./susan.c",line 607,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |607| 
        SUB AC0, dbl(*SP(#34)), AC0 ; |607| 
        MOV AC0, dbl(*SP(#34)) ; |607| 
	.dwpsn	file "./susan.c",line 608,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3+, AR1 ; |608| 
        MOV XAR3, dbl(*SP(#38))
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |608| 
        MOV *AR3, AR1 ; |608| 
        MOV AR1, *SP(#36) ; |608| 
	.dwpsn	file "./susan.c",line 609,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |609| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |609| 
        MOV AC0, dbl(*SP(#32)) ; |609| 
	.dwpsn	file "./susan.c",line 610,column 21,is_stmt
        MOV dbl(*SP(#38)), XAR3
        MOV *AR3, AR1 ; |610| 
        MOV dbl(*SP(#40)), XAR3
        ASUB AR1, AR3 ; |610| 
        MOV *AR3, AR1 ; |610| 
        MOV AR1, *SP(#36) ; |610| 
	.dwpsn	file "./susan.c",line 611,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |611| 
        ADD dbl(*SP(#30)), AC0, AC0 ; |611| 
        MOV AC0, dbl(*SP(#30)) ; |611| 
	.dwpsn	file "./susan.c",line 612,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |612| 
        ADD dbl(*SP(#32)), AC0, AC0 ; |612| 
        MOV AC0, dbl(*SP(#32)) ; |612| 
	.dwpsn	file "./susan.c",line 613,column 21,is_stmt
        MOV uns(*SP(#36)), AC0 ; |613| 
        ADD dbl(*SP(#34)), AC0, AC0 ; |613| 
        MOV AC0, dbl(*SP(#34)) ; |613| 
	.dwpsn	file "./susan.c",line 615,column 21,is_stmt
        MOV dbl(*SP(#32)), AC0 ; |615| 
        BCC $C$L60,AC0 != #0 ; |615| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |615| 
$C$DW$L$_susan_edges_small$31$E:
$C$DW$L$_susan_edges_small$32$B:
	.dwpsn	file "./susan.c",line 616,column 25,is_stmt
        MOV dbl(*($C$FL3)), AC0 ; |616| 
        MOV AC0, dbl(*SP(#14)) ; |616| 
        B $C$L61  ; |616| 
                                        ; branch occurs ; |616| 
$C$DW$L$_susan_edges_small$32$E:
$C$L60:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$33$B:
	.dwpsn	file "./susan.c",line 618,column 25,is_stmt
        MOV dbl(*SP(#30)), AC0 ; |618| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("__fltlid")
	.dwattr $C$DW$230, DW_AT_TI_call
        CALL #__fltlid ; |618| 
                                        ; call occurs [#__fltlid] ; |618| 
        MOV AC0, dbl(*SP(#42)) ; |618| 
        MOV dbl(*SP(#32)), AC0 ; |618| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("__fltlid")
	.dwattr $C$DW$231, DW_AT_TI_call
        CALL #__fltlid ; |618| 
                                        ; call occurs [#__fltlid] ; |618| 

        MOV dbl(*SP(#42)), AC0 ; |618| 
||      OR #0, AC0, AC1

$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("__divd")
	.dwattr $C$DW$232, DW_AT_TI_call
        CALL #__divd ; |618| 
                                        ; call occurs [#__divd] ; |618| 
        MOV AC0, dbl(*SP(#14)) ; |618| 
$C$DW$L$_susan_edges_small$33$E:
$C$L61:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$34$B:
	.dwpsn	file "./susan.c",line 619,column 21,is_stmt
        MOV dbl(*($C$FL5)), AC1 ; |619| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("__cmpd")
	.dwattr $C$DW$233, DW_AT_TI_call
        CALL #__cmpd ; |619| 
                                        ; call occurs [#__cmpd] ; |619| 
        BCC $C$L62,T0 >= #0 ; |619| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |619| 
$C$DW$L$_susan_edges_small$34$E:
$C$DW$L$_susan_edges_small$35$B:
	.dwpsn	file "./susan.c",line 621,column 25,is_stmt
        MOV #0, AC0 ; |621| 
        MOV AC0, dbl(*SP(#26)) ; |621| 
	.dwpsn	file "./susan.c",line 622,column 25,is_stmt
        MOV #1, AC0 ; |622| 
        MOV AC0, dbl(*SP(#28)) ; |622| 
	.dwpsn	file "./susan.c",line 623,column 21,is_stmt
        B $C$L65  ; |623| 
                                        ; branch occurs ; |623| 
$C$DW$L$_susan_edges_small$35$E:
$C$L62:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$36$B:
	.dwpsn	file "./susan.c",line 626,column 25,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |626| 
        MOV dbl(*($C$FL6)), AC1 ; |626| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("__cmpd")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #__cmpd ; |626| 
                                        ; call occurs [#__cmpd] ; |626| 
        BCC $C$L63,T0 <= #0 ; |626| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |626| 
$C$DW$L$_susan_edges_small$36$E:
$C$DW$L$_susan_edges_small$37$B:
	.dwpsn	file "./susan.c",line 628,column 29,is_stmt
        MOV #1, AC0 ; |628| 
        MOV AC0, dbl(*SP(#26)) ; |628| 
	.dwpsn	file "./susan.c",line 629,column 29,is_stmt
        MOV #0, AC0 ; |629| 
        MOV AC0, dbl(*SP(#28)) ; |629| 
	.dwpsn	file "./susan.c",line 630,column 25,is_stmt
        B $C$L65  ; |630| 
                                        ; branch occurs ; |630| 
$C$DW$L$_susan_edges_small$37$E:
$C$L63:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$38$B:
	.dwpsn	file "./susan.c",line 633,column 29,is_stmt
        MOV dbl(*SP(#34)), AC0 ; |633| 
        BCC $C$L64,AC0 <= #0 ; |633| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |633| 
$C$DW$L$_susan_edges_small$38$E:
$C$DW$L$_susan_edges_small$39$B:
	.dwpsn	file "./susan.c",line 635,column 33,is_stmt
        MOV #-1, AC0 ; |635| 
        MOV AC0, dbl(*SP(#26)) ; |635| 
	.dwpsn	file "./susan.c",line 636,column 33,is_stmt
        MOV #1, AC0 ; |636| 
        MOV AC0, dbl(*SP(#28)) ; |636| 
	.dwpsn	file "./susan.c",line 637,column 29,is_stmt
        B $C$L65  ; |637| 
                                        ; branch occurs ; |637| 
$C$DW$L$_susan_edges_small$39$E:
$C$L64:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$40$B:
	.dwpsn	file "./susan.c",line 640,column 33,is_stmt
        MOV #1, AC0 ; |640| 
        MOV AC0, dbl(*SP(#26)) ; |640| 
	.dwpsn	file "./susan.c",line 641,column 33,is_stmt
        MOV AC0, dbl(*SP(#28)) ; |641| 
$C$DW$L$_susan_edges_small$40$E:
$C$L65:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$41$B:
	.dwpsn	file "./susan.c",line 645,column 21,is_stmt
        MOV dbl(*SP(#26)), AC0 ; |645| 
        MOV dbl(*SP(#10)), AC1 ; |645| 
        ADD dbl(*SP(#18)), AC0, AC0 ; |645| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("__mpyli")
	.dwattr $C$DW$235, DW_AT_TI_call
        CALL #__mpyli ; |645| 
                                        ; call occurs [#__mpyli] ; |645| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |645| 
        ADD dbl(*SP(#28)), AC0, AC0 ; |645| 
        MOV AC0, T0 ; |645| 
        SFTL T0, #1 ; |645| 
        MOV dbl(*SP(#22)), AC1 ; |645| 
        MOV dbl(*AR3(T0)), AC0 ; |645| 
        CMP AC1 <= AC0, TC1 ; |645| 
        BCC $C$L66,TC1 ; |645| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |645| 
$C$DW$L$_susan_edges_small$41$E:
$C$DW$L$_susan_edges_small$42$B:
        MOV dbl(*SP(#26)), AC0 ; |645| 
        MOV dbl(*SP(#10)), AC1 ; |645| 
        SUB AC0, dbl(*SP(#18)), AC0 ; |645| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("__mpyli")
	.dwattr $C$DW$236, DW_AT_TI_call
        CALL #__mpyli ; |645| 
                                        ; call occurs [#__mpyli] ; |645| 
        MOV dbl(*SP(#2)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |645| 
        SUB dbl(*SP(#28)), AC0, AC0 ; |645| 
        MOV AC0, T0 ; |645| 
        SFTL T0, #1 ; |645| 
        MOV dbl(*SP(#22)), AC1 ; |645| 
        MOV dbl(*AR3(T0)), AC0 ; |645| 
        CMP AC1 < AC0, TC1 ; |645| 
        BCC $C$L66,TC1 ; |645| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |645| 
$C$DW$L$_susan_edges_small$42$E:
$C$DW$L$_susan_edges_small$43$B:
	.dwpsn	file "./susan.c",line 646,column 25,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |646| 
        MOV dbl(*SP(#10)), AC1 ; |646| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__mpyli")
	.dwattr $C$DW$237, DW_AT_TI_call
        CALL #__mpyli ; |646| 
                                        ; call occurs [#__mpyli] ; |646| 
        MOV dbl(*SP(#4)), XAR3
        ADD dbl(*SP(#20)), AC0, AC0 ; |646| 
        MOV AC0, T0 ; |646| 
        MOV #2, *AR3(T0) ; |646| 
$C$DW$L$_susan_edges_small$43$E:
$C$L66:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$44$B:
	.dwpsn	file "./susan.c",line 484,column 37,is_stmt
        MOV dbl(*SP(#20)), AC0 ; |484| 
        ADD #1, AC0 ; |484| 
        MOV AC0, dbl(*SP(#20)) ; |484| 
	.dwpsn	file "./susan.c",line 484,column 21,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |484| 

        SUB #2, AC0 ; |484| 
||      MOV dbl(*SP(#20)), AC1 ; |484| 

        CMP AC1 < AC0, TC1 ; |484| 
        BCC $C$L48,TC1 ; |484| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |484| 
$C$DW$L$_susan_edges_small$44$E:
$C$L67:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges_small$45$B:
	.dwpsn	file "./susan.c",line 483,column 33,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |483| 
        ADD #1, AC0 ; |483| 
        MOV AC0, dbl(*SP(#18)) ; |483| 
	.dwpsn	file "./susan.c",line 483,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |483| 

        SUB #2, AC0 ; |483| 
||      MOV dbl(*SP(#18)), AC1 ; |483| 

        CMP AC1 < AC0, TC1 ; |483| 
        BCC $C$L47,TC1 ; |483| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |483| 
$C$DW$L$_susan_edges_small$45$E:
	.dwpsn	file "./susan.c",line 650,column 1,is_stmt
$C$L68:    
	CALL #_coverage_log;
        AADD #45, SP
	.dwcfi	cfa_offset, 1
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$239	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$239, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L47:1:1738937689")
	.dwattr $C$DW$239, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$239, DW_AT_TI_begin_line(0x1e3)
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x289)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$_susan_edges_small$8$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$_susan_edges_small$8$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_susan_edges_small$45$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_susan_edges_small$45$E)

$C$DW$242	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$242, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L48:2:1738937689")
	.dwattr $C$DW$242, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0x1e4)
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x289)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_susan_edges_small$9$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_susan_edges_small$9$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_susan_edges_small$38$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_susan_edges_small$38$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_susan_edges_small$36$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_susan_edges_small$36$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_susan_edges_small$31$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_susan_edges_small$31$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_susan_edges_small$32$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_susan_edges_small$32$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_susan_edges_small$33$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_susan_edges_small$33$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_susan_edges_small$34$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_susan_edges_small$34$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_susan_edges_small$35$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_susan_edges_small$35$E)
$C$DW$251	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$251, DW_AT_low_pc($C$DW$L$_susan_edges_small$37$B)
	.dwattr $C$DW$251, DW_AT_high_pc($C$DW$L$_susan_edges_small$37$E)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_susan_edges_small$39$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_susan_edges_small$39$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_susan_edges_small$40$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_susan_edges_small$40$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_susan_edges_small$22$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_susan_edges_small$22$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_susan_edges_small$20$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_susan_edges_small$20$E)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_susan_edges_small$10$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_susan_edges_small$10$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_susan_edges_small$11$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_susan_edges_small$11$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_susan_edges_small$12$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_susan_edges_small$12$E)
$C$DW$259	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$259, DW_AT_low_pc($C$DW$L$_susan_edges_small$13$B)
	.dwattr $C$DW$259, DW_AT_high_pc($C$DW$L$_susan_edges_small$13$E)
$C$DW$260	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$260, DW_AT_low_pc($C$DW$L$_susan_edges_small$14$B)
	.dwattr $C$DW$260, DW_AT_high_pc($C$DW$L$_susan_edges_small$14$E)
$C$DW$261	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$261, DW_AT_low_pc($C$DW$L$_susan_edges_small$15$B)
	.dwattr $C$DW$261, DW_AT_high_pc($C$DW$L$_susan_edges_small$15$E)
$C$DW$262	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$262, DW_AT_low_pc($C$DW$L$_susan_edges_small$16$B)
	.dwattr $C$DW$262, DW_AT_high_pc($C$DW$L$_susan_edges_small$16$E)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_susan_edges_small$17$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_susan_edges_small$17$E)
$C$DW$264	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$264, DW_AT_low_pc($C$DW$L$_susan_edges_small$18$B)
	.dwattr $C$DW$264, DW_AT_high_pc($C$DW$L$_susan_edges_small$18$E)
$C$DW$265	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$265, DW_AT_low_pc($C$DW$L$_susan_edges_small$19$B)
	.dwattr $C$DW$265, DW_AT_high_pc($C$DW$L$_susan_edges_small$19$E)
$C$DW$266	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$266, DW_AT_low_pc($C$DW$L$_susan_edges_small$21$B)
	.dwattr $C$DW$266, DW_AT_high_pc($C$DW$L$_susan_edges_small$21$E)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_susan_edges_small$23$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_susan_edges_small$23$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_susan_edges_small$24$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_susan_edges_small$24$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_susan_edges_small$25$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_susan_edges_small$25$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_susan_edges_small$26$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_susan_edges_small$26$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_susan_edges_small$27$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_susan_edges_small$27$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_susan_edges_small$28$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_susan_edges_small$28$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_susan_edges_small$29$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_susan_edges_small$29$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_susan_edges_small$30$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_susan_edges_small$30$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_susan_edges_small$41$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_susan_edges_small$41$E)
$C$DW$276	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$276, DW_AT_low_pc($C$DW$L$_susan_edges_small$42$B)
	.dwattr $C$DW$276, DW_AT_high_pc($C$DW$L$_susan_edges_small$42$E)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_susan_edges_small$43$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_susan_edges_small$43$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_susan_edges_small$44$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_susan_edges_small$44$E)
	.dwendtag $C$DW$242

	.dwendtag $C$DW$239


$C$DW$279	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$279, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L42:1:1738937689")
	.dwattr $C$DW$279, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$279, DW_AT_TI_begin_line(0x1ca)
	.dwattr $C$DW$279, DW_AT_TI_end_line(0x1e1)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_susan_edges_small$2$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_susan_edges_small$2$E)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_susan_edges_small$6$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_susan_edges_small$6$E)

$C$DW$282	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$282, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L43:2:1738937689")
	.dwattr $C$DW$282, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$282, DW_AT_TI_begin_line(0x1cb)
	.dwattr $C$DW$282, DW_AT_TI_end_line(0x1e1)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_susan_edges_small$3$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_susan_edges_small$3$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_susan_edges_small$4$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_susan_edges_small$4$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_susan_edges_small$5$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_susan_edges_small$5$E)
	.dwendtag $C$DW$282

	.dwendtag $C$DW$279

	.dwattr $C$DW$174, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x28a)
	.dwattr $C$DW$174, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$174

	.sect	".text"
	.global	_susan_edges

$C$DW$286	.dwtag  DW_TAG_subprogram, DW_AT_name("susan_edges")
	.dwattr $C$DW$286, DW_AT_low_pc(_susan_edges)
	.dwattr $C$DW$286, DW_AT_high_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_susan_edges")
	.dwattr $C$DW$286, DW_AT_external
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$286, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$286, DW_AT_TI_begin_line(0x28b)
	.dwattr $C$DW$286, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$286, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "./susan.c",line 652,column 1,is_stmt,address _susan_edges

	.dwfde $C$DW$CIE, _susan_edges
$C$DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: susan_edges                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,XAR1,AR2,    *
;*                        XAR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_susan_edges:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("bp")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_bp")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("bt")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_bt")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("max_no_edges")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_max_no_edges")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("x_size")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_x_size")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("y_size")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_y_size")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("noprint_output")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_noprint_output")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("checksum")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 18]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./susan.c",line 654,column 13,is_stmt
        MOV #20, AC0 ; |654| 
        MOV AC0, dbl(*SP(#4)) ; |654| 
	.dwpsn	file "./susan.c",line 655,column 13,is_stmt
        MOV #2650, AC0 ; |655| 
        MOV AC0, dbl(*SP(#6)) ; |655| 
	.dwpsn	file "./susan.c",line 656,column 13,is_stmt
        MOV #-1, AC0 ; |656| 
        MOV AC0, dbl(*SP(#8)) ; |656| 
	.dwpsn	file "./susan.c",line 656,column 26,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |656| 
	.dwpsn	file "./susan.c",line 657,column 13,is_stmt
        MOV #0, *SP(#12) ; |657| 
	.dwpsn	file "./susan.c",line 659,column 5,is_stmt
        AMAR *SP(#8), XAR1
        AMAR *SP(#10), XAR2
        AMAR *SP(#0), XAR0
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_get_image")
	.dwattr $C$DW$298, DW_AT_TI_call
        CALL #_get_image ; |659| 
                                        ; call occurs [#_get_image] ; |659| 
        MOV T0, *SP(#12) ; |659| 
	.dwpsn	file "./susan.c",line 660,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L69,AR1 >= #0 ; |660| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |660| 
	.dwpsn	file "./susan.c",line 661,column 9,is_stmt
        MOV #-1, T0
        B $C$L72  ; |661| 
                                        ; branch occurs ; |661| 
$C$L69:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 664,column 5,is_stmt
        AMAR *SP(#2), XAR0
        MOV dbl(*SP(#4)), AC0 ; |664| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_setup_brightness_lut")
	.dwattr $C$DW$299, DW_AT_TI_call

        CALL #_setup_brightness_lut ; |664| 
||      MOV #6, AC1 ; |664| 

                                        ; call occurs [#_setup_brightness_lut] ; |664| 
	.dwpsn	file "./susan.c",line 666,column 5,is_stmt
        AMOV #_g_r, XAR2 ; |666| 
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#10)), AC2 ; |666| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC0 ; |666| 
        MOV dbl(*SP(#8)), AC1 ; |666| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_susan_principle_small")
	.dwattr $C$DW$300, DW_AT_TI_call
        CALL #_susan_principle_small ; |666| 
                                        ; call occurs [#_susan_principle_small] ; |666| 
	.dwpsn	file "./susan.c",line 667,column 5,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |667| 
        MOV dbl(*SP(#8)), AC0 ; |667| 
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("__mpyli")
	.dwattr $C$DW$301, DW_AT_TI_call
        CALL #__mpyli ; |667| 
                                        ; call occurs [#__mpyli] ; |667| 
        AMOV #_g_r, XAR0 ; |667| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_int_to_uchar")
	.dwattr $C$DW$302, DW_AT_TI_call
        CALL #_int_to_uchar ; |667| 
                                        ; call occurs [#_int_to_uchar] ; |667| 
	.dwpsn	file "./susan.c",line 670,column 13,is_stmt
        MOV #0, AC0 ; |670| 
        MOV AC0, dbl(*SP(#16)) ; |670| 
	.dwpsn	file "./susan.c",line 672,column 10,is_stmt
        MOV AC0, dbl(*SP(#18)) ; |672| 
	.dwpsn	file "./susan.c",line 672,column 17,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |672| 
        MOV dbl(*SP(#10)), AC1 ; |672| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("__mpyli")
	.dwattr $C$DW$303, DW_AT_TI_call
        CALL #__mpyli ; |672| 
                                        ; call occurs [#__mpyli] ; |672| 
        MOV dbl(*SP(#18)), AC1 ; |672| 
        CMP AC1 >= AC0, TC1 ; |672| 
        BCC $C$L71,TC1 ; |672| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |672| 
$C$L70:    
	CALL #_coverage_log;
$C$DW$L$_susan_edges$4$B:
	.dwpsn	file "./susan.c",line 674,column 9,is_stmt
        MOV *SP(#19), T0 ; |674| 
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3(T0)), AC0 ; |674| 
        ADD dbl(*SP(#16)), AC0, AC0 ; |674| 
        MOV AC0, dbl(*SP(#16)) ; |674| 
	.dwpsn	file "./susan.c",line 672,column 38,is_stmt
        MOV dbl(*SP(#18)), AC0 ; |672| 
        ADD #1, AC0 ; |672| 
        MOV AC0, dbl(*SP(#18)) ; |672| 
	.dwpsn	file "./susan.c",line 672,column 17,is_stmt
        MOV dbl(*SP(#10)), AC1 ; |672| 
        MOV dbl(*SP(#8)), AC0 ; |672| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("__mpyli")
	.dwattr $C$DW$304, DW_AT_TI_call
        CALL #__mpyli ; |672| 
                                        ; call occurs [#__mpyli] ; |672| 
        MOV dbl(*SP(#18)), AC1 ; |672| 
        CMP AC1 < AC0, TC1 ; |672| 
        BCC $C$L70,TC1 ; |672| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |672| 
$C$DW$L$_susan_edges$4$E:
$C$L71:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 677,column 5,is_stmt
        MOV dbl(*SP(#16)), AC0 ; |677| 
        MOV AC0, dbl(*SP(#14)) ; |677| 
        NOP
        NOP
        NOP
	.dwpsn	file "./susan.c",line 678,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |678| 
	.dwpsn	file "./susan.c",line 680,column 5,is_stmt
        MOV #0, T0
$C$L72:    
	CALL #_coverage_log;
	.dwpsn	file "./susan.c",line 681,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$306	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$306, DW_AT_name("/home/santiago/Research/dspfuzz/on_board/test_programs/susan_edges/susan.asm:$C$L70:1:1738937689")
	.dwattr $C$DW$306, DW_AT_TI_begin_file("./susan.c")
	.dwattr $C$DW$306, DW_AT_TI_begin_line(0x2a0)
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x2a3)
$C$DW$307	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$307, DW_AT_low_pc($C$DW$L$_susan_edges$4$B)
	.dwattr $C$DW$307, DW_AT_high_pc($C$DW$L$_susan_edges$4$E)
	.dwendtag $C$DW$306

	.dwattr $C$DW$286, DW_AT_TI_end_file("./susan.c")
	.dwattr $C$DW$286, DW_AT_TI_end_line(0x2a9)
	.dwattr $C$DW$286, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$286

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
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
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

$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x204)
$C$DW$308	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$308, DW_AT_upper_bound(0x203)
	.dwendtag $C$DW$T$41

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

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x2af8)
$C$DW$309	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$309, DW_AT_upper_bound(0x157b)
	.dwendtag $C$DW$T$42

$C$DW$310	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$22)
$C$DW$T$43	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$310)
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
$C$DW$T$46	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$46, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$46, DW_AT_name("signed char")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)

$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x64)
$C$DW$311	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$311, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$49

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

$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg0]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg1]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg2]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg3]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg4]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg5]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg6]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg7]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg8]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg9]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg10]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg11]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg12]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg13]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg14]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg15]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg16]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg17]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg18]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg19]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg20]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg21]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg22]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg23]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg24]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg25]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg26]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg27]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg28]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg29]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg30]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg31]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x20]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x21]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x22]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x23]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x24]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x25]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x26]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x27]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x28]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x29]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x30]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x31]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x32]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x33]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x34]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x35]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x36]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x37]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x38]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x39]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x40]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x41]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x42]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x43]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x44]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x45]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x46]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x47]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x48]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x49]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_regx 0x50]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x51]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x52]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x53]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x54]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x55]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x56]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x57]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x58]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x59]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

