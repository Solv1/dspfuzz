;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Mar 15 10:56:54 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./fuzz.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_isIncreasing+0,24
	.field  	0,8
	.field	0,16			; _isIncreasing @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$36)
$C$DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("rand")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_rand")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("srand")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_srand")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$9


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("clock")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_clock")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("intial_fuzz")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_intial_fuzz")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$14

	.global	_seed_corpus
	.bss	_seed_corpus,10,0,0
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("seed_corpus")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_seed_corpus")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _seed_corpus]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$17, DW_AT_external
	.global	_coverage_map
	.bss	_coverage_map,200,0,2
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("coverage_map")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_coverage_map")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _coverage_map]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$18, DW_AT_external
	.global	_isIncreasing
	.bss	_isIncreasing,1,0,0
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("isIncreasing")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_isIncreasing")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _isIncreasing]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_external
;	../../ti/55x_Tools/bin/acp55 -@/tmp/01456gG4NLa 
	.sect	".text"
	.global	_talkf

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("talkf")
	.dwattr $C$DW$20, DW_AT_low_pc(_talkf)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_talkf")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "./fuzz.c",line 36,column 26,is_stmt,address _talkf

	.dwfde $C$DW$CIE, _talkf
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("string")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_string")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: talkf                                                        *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_talkf:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("string")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_string")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./fuzz.c",line 39,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$20, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x27)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.global	_setup

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("setup")
	.dwattr $C$DW$24, DW_AT_low_pc(_setup)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_setup")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$24, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./fuzz.c",line 43,column 16,is_stmt,address _setup

	.dwfde $C$DW$CIE, _setup
;*******************************************************************************
;* FUNCTION NAME: setup                                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("test")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_test")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 5]
	.dwpsn	file "./fuzz.c",line 52,column 9,is_stmt
        MOV #0, *SP(#5) ; |52| 
	.dwpsn	file "./fuzz.c",line 52,column 16,is_stmt

        MOV *SP(#5), AR1 ; |52| 
||      MOV #3, AR2

        CMPU AR1 >= AR2, TC1 ; |52| 
        BCC $C$L2,TC1 ; |52| 
                                        ; branchcc occurs ; |52| 
$C$L1:    
$C$DW$L$_setup$2$B:
	.dwpsn	file "./fuzz.c",line 53,column 8,is_stmt
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_rand")
	.dwattr $C$DW$27, DW_AT_TI_call
        CALL #_rand ; |53| 
                                        ; call occurs [#_rand] ; |53| 

        MOV *SP(#5), T0 ; |53| 
||      MOV T0, AR1 ; |53| 

        AMAR *SP(#2), XAR3
        MOV AR1, *AR3(T0) ; |53| 
	.dwpsn	file "./fuzz.c",line 52,column 34,is_stmt
        ADD #1, *SP(#5) ; |52| 
	.dwpsn	file "./fuzz.c",line 52,column 16,is_stmt

        MOV *SP(#5), AR1 ; |52| 
||      MOV #3, AR2

        CMPU AR1 < AR2, TC1 ; |52| 
        BCC $C$L1,TC1 ; |52| 
                                        ; branchcc occurs ; |52| 
$C$DW$L$_setup$2$E:
$C$L2:    
	.dwpsn	file "./fuzz.c",line 56,column 5,is_stmt
        MOV *SP(#2), AR1 ; |56| 
        BCC $C$L3,AR1 == #0 ; |56| 
                                        ; branchcc occurs ; |56| 
	.dwpsn	file "./fuzz.c",line 58,column 9,is_stmt
        AMOV #$C$FSL1, XAR3 ; |58| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_printf")
	.dwattr $C$DW$28, DW_AT_TI_call
        CALL #_printf ; |58| 
                                        ; call occurs [#_printf] ; |58| 
	.dwpsn	file "./fuzz.c",line 60,column 5,is_stmt
        B $C$L4   ; |60| 
                                        ; branch occurs ; |60| 
$C$L3:    
	.dwpsn	file "./fuzz.c",line 63,column 9,is_stmt
        AMOV #$C$FSL2, XAR3 ; |63| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_printf")
	.dwattr $C$DW$29, DW_AT_TI_call
        CALL #_printf ; |63| 
                                        ; call occurs [#_printf] ; |63| 
	.dwpsn	file "./fuzz.c",line 65,column 9,is_stmt
        MOV #-1, T0
        B $C$L6   ; |65| 
                                        ; branch occurs ; |65| 
$C$L4:    
	.dwpsn	file "./fuzz.c",line 68,column 5,is_stmt
        AMOV #_coverage_map, XAR0 ; |68| 
        MOV #200, T1 ; |68| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_memset")
	.dwattr $C$DW$30, DW_AT_TI_call

        CALL #_memset ; |68| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |68| 
	.dwpsn	file "./fuzz.c",line 70,column 5,is_stmt
        MOV #(_coverage_map >> 16) << #16, AC0 ; |70| 
        OR #(_coverage_map & 0xffff), AC0, AC0 ; |70| 
        BCC $C$L5,AC0 != #0 ; |70| 
                                        ; branchcc occurs ; |70| 
	.dwpsn	file "./fuzz.c",line 72,column 9,is_stmt
        AMOV #$C$FSL3, XAR3 ; |72| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_printf")
	.dwattr $C$DW$31, DW_AT_TI_call
        CALL #_printf ; |72| 
                                        ; call occurs [#_printf] ; |72| 
	.dwpsn	file "./fuzz.c",line 74,column 9,is_stmt
        MOV #-1, T0
        B $C$L6   ; |74| 
                                        ; branch occurs ; |74| 
$C$L5:    
	.dwpsn	file "./fuzz.c",line 77,column 5,is_stmt
        MOV #0, T0
$C$L6:    
	.dwpsn	file "./fuzz.c",line 79,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$33	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$33, DW_AT_name("/home/santiago/dspfuzz/on_board/fuzz.asm:$C$L1:1:1710514614")
	.dwattr $C$DW$33, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x36)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_setup$2$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_setup$2$E)
	.dwendtag $C$DW$33

	.dwattr $C$DW$24, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x4f)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.global	_mutator

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("mutator")
	.dwattr $C$DW$35, DW_AT_low_pc(_mutator)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_mutator")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x51)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./fuzz.c",line 81,column 46,is_stmt,address _mutator

	.dwfde $C$DW$CIE, _mutator
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("result")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg17]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("type")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: mutator                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_mutator:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("type")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |81| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./fuzz.c",line 89,column 5,is_stmt
        CMP *SP(#2) == #5, TC1 ; |89| 
        BCC $C$L7,!TC1 ; |89| 
                                        ; branchcc occurs ; |89| 

$C$DW$40	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("rand_time")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_rand_time")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 3]
	.dwpsn	file "./fuzz.c",line 90,column 18,is_stmt
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_clock")
	.dwattr $C$DW$42, DW_AT_TI_call
        CALL #_clock ; |90| 
                                        ; call occurs [#_clock] ; |90| 
        MOV AC0, *SP(#3) ; |90| 
	.dwpsn	file "./fuzz.c",line 91,column 9,is_stmt
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_srand")
	.dwattr $C$DW$43, DW_AT_TI_call

        CALL #_srand ; |91| 
||      MOV AC0, T0

                                        ; call occurs [#_srand] ; |91| 
	.dwpsn	file "./fuzz.c",line 92,column 9,is_stmt
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_rand")
	.dwattr $C$DW$44, DW_AT_TI_call
        CALL #_rand ; |92| 
                                        ; call occurs [#_rand] ; |92| 
        MOV dbl(*SP(#0)), XAR3
        MOV T0, *AR3 ; |92| 
	.dwendtag $C$DW$40

$C$L7:    
	.dwpsn	file "./fuzz.c",line 101,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./fuzz.c",line 102,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$35, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_coverage_log

$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("coverage_log")
	.dwattr $C$DW$46, DW_AT_low_pc(_coverage_log)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_coverage_log")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./fuzz.c",line 104,column 20,is_stmt,address _coverage_log

	.dwfde $C$DW$CIE, _coverage_log
;*******************************************************************************
;* FUNCTION NAME: coverage_log                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR2,XAR2,AR3,XAR3,SP,CARRY,M40,SATA,SATD, *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_coverage_log:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("current_function")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_current_function")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("program_counter")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_program_counter")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 2]
	.dwpsn	file "./fuzz.c",line 111,column 15,is_stmt
        MOV #0, *SP(#0) ; |111| 
	.dwpsn	file "./fuzz.c",line 112,column 15,is_stmt
        MOV #0, AC0 ; |112| 
        MOV AC0, dbl(*SP(#2)) ; |112| 
	.dwpsn	file "./fuzz.c",line 114,column 5,is_stmt
	MOV RETA, dbl(*SP(#02h)) ;
	.dwpsn	file "./fuzz.c",line 115,column 5,is_stmt
	MOV T3, *SP(#00h) ;
	.dwpsn	file "./fuzz.c",line 117,column 5,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |117| 
        SUB #10, AC0 ; |117| 
        SFTL AC0, #-1 ; |117| 
        MOV AC0, dbl(*SP(#2)) ; |117| 
	.dwpsn	file "./fuzz.c",line 123,column 5,is_stmt
        MOV *SP(#0) << #2, AC0 ; |123| 
        MOV AC0, T0 ; |123| 
        AMOV #_coverage_map, XAR3 ; |123| 
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(T0))
	.dwpsn	file "./fuzz.c",line 125,column 5,is_stmt
        MOV #1, *(#_isIncreasing) ; |125| 
	.dwpsn	file "./fuzz.c",line 128,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$46, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text"
	.global	_insturmentor

$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("insturmentor")
	.dwattr $C$DW$50, DW_AT_low_pc(_insturmentor)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_insturmentor")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$50, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$50, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./fuzz.c",line 130,column 23,is_stmt,address _insturmentor

	.dwfde $C$DW$CIE, _insturmentor
;*******************************************************************************
;* FUNCTION NAME: insturmentor                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_insturmentor:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "./fuzz.c",line 139,column 10,is_stmt
        MOV #0, *SP(#0) ; |139| 
	.dwpsn	file "./fuzz.c",line 139,column 17,is_stmt
        MOV #50, AR2 ; |139| 
        MOV *SP(#0), AR1 ; |139| 
        CMP AR1 >= AR2, TC1 ; |139| 
        BCC $C$L10,TC1 ; |139| 
                                        ; branchcc occurs ; |139| 
$C$L8:    
$C$DW$L$_insturmentor$2$B:
	.dwpsn	file "./fuzz.c",line 140,column 9,is_stmt
        MOV *SP(#0) << #2, AC0 ; |140| 
        MOV AC0, T0 ; |140| 
        AMOV #(_coverage_map+2), XAR3 ; |140| 
        MOV *AR3(T0), AR1 ; |140| 
        BCC $C$L9,AR1 != #0 ; |140| 
                                        ; branchcc occurs ; |140| 
$C$DW$L$_insturmentor$2$E:
$C$DW$L$_insturmentor$3$B:
        MOV *SP(#0) << #2, AC0 ; |140| 
        MOV AC0, T0 ; |140| 
        AMOV #_coverage_map, XAR3 ; |140| 
        MOV dbl(*AR3(T0)), XAR3
        MOV XAR3, AC0
        BCC $C$L9,AC0 == #0 ; |140| 
                                        ; branchcc occurs ; |140| 
$C$DW$L$_insturmentor$3$E:
$C$DW$L$_insturmentor$4$B:
	.dwpsn	file "./fuzz.c",line 141,column 13,is_stmt
        MOV *SP(#0) << #2, AC0 ; |141| 
        MOV AC0, T0 ; |141| 
        AMOV #_coverage_map, XAR3 ; |141| 
        MOV dbl(*AR3(T0)), XAR0
        MOV #8224, T0 ; |141| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_memset")
	.dwattr $C$DW$52, DW_AT_TI_call

        CALL #_memset ; |141| 
||      MOV #7, T1

                                        ; call occurs [#_memset] ; |141| 
	.dwpsn	file "./fuzz.c",line 142,column 13,is_stmt
        MOV *SP(#0) << #2, AC0 ; |142| 
        MOV AC0, T0 ; |142| 
        AMOV #(_coverage_map+2), XAR3 ; |142| 
        MOV #1, *AR3(T0) ; |142| 
$C$DW$L$_insturmentor$4$E:
$C$L9:    
$C$DW$L$_insturmentor$5$B:
	.dwpsn	file "./fuzz.c",line 139,column 35,is_stmt
        ADD #1, *SP(#0) ; |139| 
	.dwpsn	file "./fuzz.c",line 139,column 17,is_stmt
        MOV #50, AR2 ; |139| 
        MOV *SP(#0), AR1 ; |139| 
        CMP AR1 < AR2, TC1 ; |139| 
        BCC $C$L8,TC1 ; |139| 
                                        ; branchcc occurs ; |139| 
$C$DW$L$_insturmentor$5$E:
$C$L10:    
	.dwpsn	file "./fuzz.c",line 146,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./fuzz.c",line 147,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("/home/santiago/dspfuzz/on_board/fuzz.asm:$C$L8:1:1710514614")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x90)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_insturmentor$2$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_insturmentor$2$E)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_insturmentor$3$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_insturmentor$3$E)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_insturmentor$4$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_insturmentor$4$E)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_insturmentor$5$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_insturmentor$5$E)
	.dwendtag $C$DW$54

	.dwattr $C$DW$50, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text"
	.global	_fuzz_loop

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("fuzz_loop")
	.dwattr $C$DW$59, DW_AT_low_pc(_fuzz_loop)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_fuzz_loop")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./fuzz.c",line 151,column 1,is_stmt,address _fuzz_loop

	.dwfde $C$DW$CIE, _fuzz_loop
;*******************************************************************************
;* FUNCTION NAME: fuzz_loop                                                    *
;*                                                                             *
;*   Function Uses Regs : T0,T2,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Save On Entry Regs : T2                                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (4 local values)                                     *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_fuzz_loop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        AADD #-8, SP
	.dwcfi	cfa_offset, 10
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("iterations")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_iterations")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 6]
	.dwpsn	file "./fuzz.c",line 152,column 14,is_stmt
        MOV #0, *SP(#4) ; |152| 
	.dwpsn	file "./fuzz.c",line 153,column 14,is_stmt
        MOV #0, *SP(#5) ; |153| 
	.dwpsn	file "./fuzz.c",line 156,column 5,is_stmt
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_setup")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_setup ; |156| 
                                        ; call occurs [#_setup] ; |156| 
        MOV #10, T2
	.dwpsn	file "./fuzz.c",line 157,column 11,is_stmt
$C$L11:    
$C$DW$L$_fuzz_loop$2$B:

$C$DW$64	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 7]
	.dwpsn	file "./fuzz.c",line 159,column 9,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_mutator")
	.dwattr $C$DW$66, DW_AT_TI_call

        CALL #_mutator ; |159| 
||      MOV #5, T0

                                        ; call occurs [#_mutator] ; |159| 
	.dwpsn	file "./fuzz.c",line 160,column 9,is_stmt
        AMOV #$C$FSL4, XAR3 ; |160| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#4), AR1 ; |160| 
        MOV AR1, *SP(#2) ; |160| 
        MOV *SP(#5), AR1 ; |160| 
        MOV AR1, *SP(#3) ; |160| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_printf")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_printf ; |160| 
                                        ; call occurs [#_printf] ; |160| 
	.dwpsn	file "./fuzz.c",line 162,column 17,is_stmt
        AMAR *SP(#4), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_intial_fuzz")
	.dwattr $C$DW$68, DW_AT_TI_call

        CALL #_intial_fuzz ; |162| 
||      MOV #1, T0

                                        ; call occurs [#_intial_fuzz] ; |162| 
        MOV T0, *SP(#7) ; |162| 
	.dwpsn	file "./fuzz.c",line 163,column 9,is_stmt
        CMP *SP(#7) == #-1, TC1 ; |163| 
        BCC $C$L12,!TC1 ; |163| 
                                        ; branchcc occurs ; |163| 
$C$DW$L$_fuzz_loop$2$E:
$C$DW$L$_fuzz_loop$3$B:
	.dwpsn	file "./fuzz.c",line 164,column 13,is_stmt
        AMOV #$C$FSL5, XAR3 ; |164| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#4), AR1 ; |164| 
        MOV AR1, *SP(#2) ; |164| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_printf")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_printf ; |164| 
                                        ; call occurs [#_printf] ; |164| 
	.dwpsn	file "./fuzz.c",line 165,column 13,is_stmt
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_exit")
	.dwattr $C$DW$70, DW_AT_TI_call

        CALL #_exit ; |165| 
||      MOV #0, T0

                                        ; call occurs [#_exit] ; |165| 
$C$DW$L$_fuzz_loop$3$E:
$C$L12:    
$C$DW$L$_fuzz_loop$4$B:
	.dwpsn	file "./fuzz.c",line 167,column 9,is_stmt
        MOV *(#_isIncreasing), AR1 ; |167| 
        BCC $C$L15,AR1 == #0 ; |167| 
                                        ; branchcc occurs ; |167| 
$C$DW$L$_fuzz_loop$4$E:
$C$DW$L$_fuzz_loop$5$B:
	.dwpsn	file "./fuzz.c",line 168,column 13,is_stmt
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_insturmentor")
	.dwattr $C$DW$71, DW_AT_TI_call
        CALL #_insturmentor ; |168| 
                                        ; call occurs [#_insturmentor] ; |168| 
	.dwpsn	file "./fuzz.c",line 169,column 13,is_stmt
        MOV #0, *(#_isIncreasing) ; |169| 
	.dwpsn	file "./fuzz.c",line 170,column 13,is_stmt
        AMOV #$C$FSL6, XAR3 ; |170| 
        MOV XAR3, dbl(*SP(#0))
        MOV *SP(#4), AR1 ; |170| 
        MOV AR1, *SP(#2) ; |170| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_printf")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #_printf ; |170| 
                                        ; call occurs [#_printf] ; |170| 
	.dwpsn	file "./fuzz.c",line 171,column 18,is_stmt
        MOV #0, *SP(#6) ; |171| 
	.dwpsn	file "./fuzz.c",line 171,column 25,is_stmt
        MOV *SP(#6), AR1 ; |171| 
        CMPU AR1 >= T2, TC1 ; |171| 
        BCC $C$L15,TC1 ; |171| 
                                        ; branchcc occurs ; |171| 
$C$DW$L$_fuzz_loop$5$E:
$C$L13:    
$C$DW$L$_fuzz_loop$6$B:
	.dwpsn	file "./fuzz.c",line 172,column 17,is_stmt
        MOV *SP(#6), T0 ; |172| 
        AMOV #_seed_corpus, XAR3 ; |172| 
        MOV *AR3(T0), AR1 ; |172| 
        BCC $C$L14,AR1 != #0 ; |172| 
                                        ; branchcc occurs ; |172| 
$C$DW$L$_fuzz_loop$6$E:
$C$DW$L$_fuzz_loop$7$B:
	.dwpsn	file "./fuzz.c",line 173,column 21,is_stmt
        MOV *SP(#4), AR1 ; |173| 
        MOV AR1, *AR3(T0) ; |173| 
	.dwpsn	file "./fuzz.c",line 174,column 21,is_stmt
        B $C$L15  ; |174| 
                                        ; branch occurs ; |174| 
$C$DW$L$_fuzz_loop$7$E:
$C$L14:    
$C$DW$L$_fuzz_loop$8$B:
	.dwpsn	file "./fuzz.c",line 171,column 44,is_stmt
        ADD #1, *SP(#6) ; |171| 
	.dwpsn	file "./fuzz.c",line 171,column 25,is_stmt

        MOV *SP(#6), AR1 ; |171| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |171| 
        BCC $C$L13,TC1 ; |171| 
                                        ; branchcc occurs ; |171| 
$C$DW$L$_fuzz_loop$8$E:
$C$L15:    
$C$DW$L$_fuzz_loop$9$B:
	.dwpsn	file "./fuzz.c",line 181,column 9,is_stmt
        ADD #1, *SP(#5) ; |181| 
	.dwendtag $C$DW$64

	.dwpsn	file "./fuzz.c",line 157,column 11,is_stmt
        B $C$L11  ; |157| 
                                        ; branch occurs ; |157| 
$C$DW$L$_fuzz_loop$9$E:
	.dwcfi	cfa_offset, 2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1

$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/dspfuzz/on_board/fuzz.asm:$C$L11:1:1710514614")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0xbf)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_fuzz_loop$2$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_fuzz_loop$2$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_fuzz_loop$3$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_fuzz_loop$3$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_fuzz_loop$4$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_fuzz_loop$4$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_fuzz_loop$5$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_fuzz_loop$5$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_fuzz_loop$7$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_fuzz_loop$7$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_fuzz_loop$9$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_fuzz_loop$9$E)

$C$DW$80	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$80, DW_AT_name("/home/santiago/dspfuzz/on_board/fuzz.asm:$C$L13:2:1710514614")
	.dwattr $C$DW$80, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$80, DW_AT_TI_end_line(0xb0)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_fuzz_loop$6$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_fuzz_loop$6$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_fuzz_loop$8$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_fuzz_loop$8$E)
	.dwendtag $C$DW$80

	.dwendtag $C$DW$73

	.dwattr $C$DW$59, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.global	_main

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$83, DW_AT_low_pc(_main)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./fuzz.c",line 195,column 15,is_stmt,address _main

	.dwfde $C$DW$CIE, _main
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "./fuzz.c",line 196,column 11,is_stmt
$C$L16:    
$C$DW$L$_main$2$B:
	.dwpsn	file "./fuzz.c",line 198,column 9,is_stmt
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_fuzz_loop")
	.dwattr $C$DW$84, DW_AT_TI_call
        CALL #_fuzz_loop ; |198| 
                                        ; call occurs [#_fuzz_loop] ; |198| 
	.dwpsn	file "./fuzz.c",line 196,column 11,is_stmt
        B $C$L16  ; |196| 
                                        ; branch occurs ; |196| 
$C$DW$L$_main$2$E:
	.dwcfi	cfa_offset, 1

$C$DW$85	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$85, DW_AT_name("/home/santiago/dspfuzz/on_board/fuzz.asm:$C$L16:1:1710514614")
	.dwattr $C$DW$85, DW_AT_TI_begin_file("./fuzz.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0xc4)
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xc7)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_main$2$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_main$2$E)
	.dwendtag $C$DW$85

	.dwattr $C$DW$83, DW_AT_TI_end_file("./fuzz.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0xc8)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"LOG: Random number init passed ",10,0
	.align	2
$C$FSL2:	.string	"ERROR: Random number init failed ",10,0
	.align	2
$C$FSL3:	.string	"ERROR: Coverage map init failed ",10,0
	.align	2
$C$FSL4:	.string	"Trying %d, on loop interation %d ",10,0
	.align	2
$C$FSL5:	.string	"Found a 'crash' with input %d ",10,0
	.align	2
$C$FSL6:	.string	"Noting Increased Coverage Input %d ",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_printf
	.global	_rand
	.global	_srand
	.global	_exit
	.global	_memset
	.global	_clock
	.global	_intial_fuzz

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
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x03)
$C$DW$87	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$87, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$51

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x0a)
$C$DW$88	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$88, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$54

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("clock_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
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
$C$DW$T$30	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x17)
$C$DW$89	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$30)
$C$DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$89)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("coverage")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("function_pointer")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_function_pointer")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$91, DW_AT_name("isWriten")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_isWriten")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("coverage")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_byte_size(0xc8)
$C$DW$92	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$92, DW_AT_upper_bound(0x31)
	.dwendtag $C$DW$T$69

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

$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg0]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg1]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg2]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg3]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg4]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg5]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg6]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg7]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg8]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg9]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg10]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg11]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg12]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg13]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg14]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg15]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg16]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg17]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg18]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg19]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg20]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg21]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg22]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg23]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg24]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg25]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg26]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg27]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg28]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg29]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg30]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg31]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x20]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x21]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x22]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x23]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x24]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x25]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x26]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x27]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x28]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x29]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x30]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x31]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x32]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x33]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x34]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x35]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x36]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x37]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x38]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x39]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x40]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x41]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x42]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x43]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x44]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x45]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x46]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x47]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x48]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x49]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x50]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x51]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x52]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x53]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x54]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x55]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x56]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x57]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x58]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x59]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

