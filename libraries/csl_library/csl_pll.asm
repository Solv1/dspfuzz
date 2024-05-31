;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:09 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_pll.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17512fnoLkH 
	.sect	".text"
	.global	_PLL_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_PLL_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_PLL_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x5f)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_pll.c",line 98,column 1,is_stmt,address _PLL_init

	.dwfde $C$DW$CIE, _PLL_init
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pllObj")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_pllObj")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg17]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pllInstId")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_pllInstId")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: PLL_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_PLL_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("pllObj")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_pllObj")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("pllInstId")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_pllInstId")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |98| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_pll.c",line 101,column 5,is_stmt
        MOV #-6, *SP(#4) ; |101| 
	.dwpsn	file "src/csl_pll.c",line 103,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |103| 

        CMPU AC1 == AC0, TC1 ; |103| 
        BCC $C$L3,TC1 ; |103| 
                                        ; branchcc occurs ; |103| 
	.dwpsn	file "src/csl_pll.c",line 105,column 9,is_stmt
        B $C$L2   ; |105| 
                                        ; branch occurs ; |105| 
$C$L1:    
	.dwpsn	file "src/csl_pll.c",line 108,column 17,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |108| 
        MOV AC0, dbl(*AR3(short(#2))) ; |108| 
	.dwpsn	file "src/csl_pll.c",line 109,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #7168, *AR3(short(#4)) ; |109| 
	.dwpsn	file "src/csl_pll.c",line 110,column 5,is_stmt
        MOV #0, *SP(#4) ; |110| 
	.dwpsn	file "src/csl_pll.c",line 111,column 22,is_stmt
        B $C$L3   ; |111| 
                                        ; branch occurs ; |111| 
$C$L2:    
	.dwpsn	file "src/csl_pll.c",line 105,column 9,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |105| 
        BCC $C$L1,AC0 == #0 ; |105| 
                                        ; branchcc occurs ; |105| 
$C$L3:    
	.dwpsn	file "src/csl_pll.c",line 118,column 2,is_stmt
        MOV *SP(#4), T0 ; |118| 
	.dwpsn	file "src/csl_pll.c",line 119,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_PLL_config

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_config")
	.dwattr $C$DW$8, DW_AT_low_pc(_PLL_config)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_PLL_config")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_pll.c",line 172,column 1,is_stmt,address _PLL_config

	.dwfde $C$DW$CIE, _PLL_config
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hPll")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pconfigInfo")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_pconfigInfo")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: PLL_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_PLL_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("hPll")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("pconfigInfo")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_pconfigInfo")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_pll.c",line 173,column 21,is_stmt
        MOV #4800, *SP(#4) ; |173| 
	.dwpsn	file "src/csl_pll.c",line 174,column 13,is_stmt
        MOV #0, *SP(#5) ; |174| 
	.dwpsn	file "src/csl_pll.c",line 179,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |179| 

        CMPU AC1 != AC0, TC1 ; |179| 
        BCC $C$L4,TC1 ; |179| 
                                        ; branchcc occurs ; |179| 
	.dwpsn	file "src/csl_pll.c",line 181,column 3,is_stmt
        MOV #-5, *SP(#5) ; |181| 
	.dwpsn	file "src/csl_pll.c",line 182,column 3,is_stmt
        MOV *SP(#5), T0 ; |182| 
        B $C$L10  ; |182| 
                                        ; branch occurs ; |182| 
$C$L4:    
	.dwpsn	file "src/csl_pll.c",line 185,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |185| 
        BCC $C$L5,TC1 ; |185| 
                                        ; branchcc occurs ; |185| 
	.dwpsn	file "src/csl_pll.c",line 187,column 3,is_stmt
        MOV #-6, *SP(#5) ; |187| 
	.dwpsn	file "src/csl_pll.c",line 188,column 3,is_stmt
        MOV *SP(#5), T0 ; |188| 
        B $C$L10  ; |188| 
                                        ; branch occurs ; |188| 
$C$L5:    
	.dwpsn	file "src/csl_pll.c",line 191,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV XAR3, dbl(*AR2)
	.dwpsn	file "src/csl_pll.c",line 194,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #31, T0 ; |194| 
        MOV *AR3(short(#4)), AR3 ; |194| 
        MOV port(*AR3(T0)), AR1 ; |194| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |194| 
        BCLR @#0, AR1 ; |194| 
        MOV AR1, port(*AR3(T0)) ; |194| 
	.dwpsn	file "src/csl_pll.c",line 216,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |216| 
        MOV *AR3(short(#4)), AR3 ; |216| 
        MOV port(*AR3(T0)), AR1 ; |216| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |216| 
        BCLR @#15, AR1 ; |216| 
        MOV AR1, port(*AR3(T0)) ; |216| 
	.dwpsn	file "src/csl_pll.c",line 218,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |218| 
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |218| 
        MOV *AR3(short(#4)), AR3 ; |218| 
        MOV AR1, port(*AR3(T0)) ; |218| 
	.dwpsn	file "src/csl_pll.c",line 219,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |219| 
        MOV *AR3(short(#4)), AR3 ; |219| 
        MOV port(*AR3(T0)), AR1 ; |219| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xf000, AR1, AR2 ; |219| 
        MOV *AR3, AR1 ; |219| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |219| 
        AND #0x0fff, AR1, AR1 ; |219| 
        OR AR2, AR1 ; |219| 
        MOV AR1, port(*AR3(T0)) ; |219| 
	.dwpsn	file "src/csl_pll.c",line 221,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |221| 
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |221| 
        MOV *AR3(short(#4)), AR3 ; |221| 
        MOV AR1, port(*AR3(T0)) ; |221| 
	.dwpsn	file "src/csl_pll.c",line 223,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |223| 
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |223| 
        MOV *AR3(short(#4)), AR3 ; |223| 
        MOV AR1, port(*AR3(T0)) ; |223| 
	.dwpsn	file "src/csl_pll.c",line 225,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |225| 
        MOV *AR3(short(#4)), AR3 ; |225| 
        MOV port(*AR3(T0)), AR1 ; |225| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR2 ; |225| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x1000, AR2, AC0 ; |225| 
        MOV *AR3(short(#4)), AR3 ; |225| 
        BFXTR #0xf000, AC0, AC0 ; |225| 

        BCLR @#12, AR1 ; |225| 
||      SFTL AC0, #12, AC0 ; |225| 

        AND #0x1000, AC0, AR2 ; |225| 
        OR AR1, AR2 ; |225| 
        MOV AR2, port(*AR3(T0)) ; |225| 
	.dwpsn	file "src/csl_pll.c",line 228,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |228| 
        MOV port(*AR3(T0)), AR1 ; |228| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |228| 
        BCLR @#15, AR1 ; |228| 
        BSET @#15, AR1 ; |228| 
        MOV AR1, port(*AR3(T0)) ; |228| 
	.dwpsn	file "src/csl_pll.c",line 231,column 1,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #31, T0 ; |231| 
        MOV *AR3(short(#4)), AR3 ; |231| 
        MOV port(*AR3(T0)), AR1 ; |231| 
        AND #0x0004, AR1, AC0 ; |231| 
        BFXTR #0xfffc, AC0, AR1 ; |231| 
        BCC $C$L6,AR1 == #0 ; |231| 
                                        ; branchcc occurs ; |231| 
	.dwpsn	file "src/csl_pll.c",line 236,column 5,is_stmt
        MOV #4800, *SP(#4) ; |236| 
        B $C$L7   ; |236| 
                                        ; branch occurs ; |236| 
$C$L6:    
	.dwpsn	file "src/csl_pll.c",line 242,column 5,is_stmt
        MOV #4, *SP(#4) ; |242| 
$C$L7:    
	.dwpsn	file "src/csl_pll.c",line 245,column 2,is_stmt
        MOV *SP(#4), AR1 ; |245| 
        SUB #1, AR1, AR2 ; |245| 
        MOV AR2, *SP(#4) ; |245| 
        BCC $C$L9,AR1 == #0 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$L8:    
$C$DW$L$_PLL_config$9$B:
        MOV *SP(#4), AR1 ; |245| 
        SUB #1, AR1, AR2 ; |245| 
        MOV AR2, *SP(#4) ; |245| 
        BCC $C$L8,AR1 != #0 ; |245| 
                                        ; branchcc occurs ; |245| 
$C$DW$L$_PLL_config$9$E:
$C$L9:    
	.dwpsn	file "src/csl_pll.c",line 247,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |247| 
        MOV port(*AR3(T0)), AR1 ; |247| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |247| 
        BCLR @#0, AR1 ; |247| 
        BSET @#0, AR1 ; |247| 
        MOV AR1, port(*AR3(T0)) ; |247| 
	.dwpsn	file "src/csl_pll.c",line 249,column 2,is_stmt
        MOV *SP(#5), T0 ; |249| 
$C$L10:    
	.dwpsn	file "src/csl_pll.c",line 250,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$16	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$16, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_pll.asm:$C$L8:1:1714639449")
	.dwattr $C$DW$16, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0xf5)
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xf5)
$C$DW$17	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$17, DW_AT_low_pc($C$DW$L$_PLL_config$9$B)
	.dwattr $C$DW$17, DW_AT_high_pc($C$DW$L$_PLL_config$9$E)
	.dwendtag $C$DW$16

	.dwattr $C$DW$8, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xfa)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_PLL_enable

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_enable")
	.dwattr $C$DW$18, DW_AT_low_pc(_PLL_enable)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_PLL_enable")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x12c)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_pll.c",line 301,column 1,is_stmt,address _PLL_enable

	.dwfde $C$DW$CIE, _PLL_enable
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hPll")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: PLL_enable                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_PLL_enable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("hPll")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_pll.c",line 305,column 2,is_stmt
        MOV #0, *SP(#2) ; |305| 
	.dwpsn	file "src/csl_pll.c",line 306,column 5,is_stmt
        MOV #4800, *SP(#3) ; |306| 
	.dwpsn	file "src/csl_pll.c",line 308,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |308| 

        CMPU AC1 != AC0, TC1 ; |308| 
        BCC $C$L11,TC1 ; |308| 
                                        ; branchcc occurs ; |308| 
	.dwpsn	file "src/csl_pll.c",line 310,column 3,is_stmt
        MOV #-5, *SP(#2) ; |310| 
	.dwpsn	file "src/csl_pll.c",line 311,column 3,is_stmt
        MOV *SP(#2), T0 ; |311| 
        B $C$L16  ; |311| 
                                        ; branch occurs ; |311| 
$C$L11:    
	.dwpsn	file "src/csl_pll.c",line 318,column 5,is_stmt
        MOV #32, T0 ; |318| 
        MOV *AR3(short(#4)), AR3 ; |318| 
        MOV port(*AR3(T0)), AR1 ; |318| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |318| 
        BCLR @#12, AR1 ; |318| 
        MOV AR1, port(*AR3(T0)) ; |318| 
	.dwpsn	file "src/csl_pll.c",line 321,column 1,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #31, T0 ; |321| 
        MOV *AR3(short(#4)), AR3 ; |321| 
        MOV port(*AR3(T0)), AR1 ; |321| 
        AND #0x0004, AR1, AC0 ; |321| 
        BFXTR #0xfffc, AC0, AR1 ; |321| 
        BCC $C$L12,AR1 == #0 ; |321| 
                                        ; branchcc occurs ; |321| 
	.dwpsn	file "src/csl_pll.c",line 326,column 5,is_stmt
        MOV #4800, *SP(#3) ; |326| 
        B $C$L13  ; |326| 
                                        ; branch occurs ; |326| 
$C$L12:    
	.dwpsn	file "src/csl_pll.c",line 333,column 5,is_stmt
        MOV #4, *SP(#3) ; |333| 
$C$L13:    
	.dwpsn	file "src/csl_pll.c",line 336,column 5,is_stmt
        MOV *SP(#3), AR1 ; |336| 
        SUB #1, AR1, AR2 ; |336| 
        MOV AR2, *SP(#3) ; |336| 
        BCC $C$L15,AR1 == #0 ; |336| 
                                        ; branchcc occurs ; |336| 
$C$L14:    
$C$DW$L$_PLL_enable$7$B:
        MOV *SP(#3), AR1 ; |336| 
        SUB #1, AR1, AR2 ; |336| 
        MOV AR2, *SP(#3) ; |336| 
        BCC $C$L14,AR1 != #0 ; |336| 
                                        ; branchcc occurs ; |336| 
$C$DW$L$_PLL_enable$7$E:
$C$L15:    
	.dwpsn	file "src/csl_pll.c",line 339,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |339| 
        MOV port(*AR3(T0)), AR1 ; |339| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |339| 
        BCLR @#0, AR1 ; |339| 
        BSET @#0, AR1 ; |339| 
        MOV AR1, port(*AR3(T0)) ; |339| 
	.dwpsn	file "src/csl_pll.c",line 341,column 2,is_stmt
        MOV *SP(#2), T0 ; |341| 
$C$L16:    
	.dwpsn	file "src/csl_pll.c",line 342,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_pll.asm:$C$L14:1:1714639449")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x150)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x150)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_PLL_enable$7$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_PLL_enable$7$E)
	.dwendtag $C$DW$24

	.dwattr $C$DW$18, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_PLL_bypass

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_bypass")
	.dwattr $C$DW$26, DW_AT_low_pc(_PLL_bypass)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_PLL_bypass")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$26, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x186)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_pll.c",line 391,column 1,is_stmt,address _PLL_bypass

	.dwfde $C$DW$CIE, _PLL_bypass
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hPll")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: PLL_bypass                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_PLL_bypass:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("hPll")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_pll.c",line 395,column 5,is_stmt
        MOV #0, *SP(#2) ; |395| 
	.dwpsn	file "src/csl_pll.c",line 397,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |397| 

        CMPU AC1 != AC0, TC1 ; |397| 
        BCC $C$L17,TC1 ; |397| 
                                        ; branchcc occurs ; |397| 
	.dwpsn	file "src/csl_pll.c",line 399,column 3,is_stmt
        MOV #-5, *SP(#2) ; |399| 
	.dwpsn	file "src/csl_pll.c",line 400,column 3,is_stmt
        MOV *SP(#2), T0 ; |400| 
        B $C$L18  ; |400| 
                                        ; branch occurs ; |400| 
$C$L17:    
	.dwpsn	file "src/csl_pll.c",line 404,column 5,is_stmt
        MOV #31, T0 ; |404| 
        MOV *AR3(short(#4)), AR3 ; |404| 
        MOV port(*AR3(T0)), AR1 ; |404| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |404| 
        BCLR @#0, AR1 ; |404| 
        MOV AR1, port(*AR3(T0)) ; |404| 
	.dwpsn	file "src/csl_pll.c",line 414,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |414| 
        MOV *AR3(short(#4)), AR3 ; |414| 
        MOV port(*AR3(T0)), AR1 ; |414| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |414| 
        BCLR @#12, AR1 ; |414| 
        BSET @#12, AR1 ; |414| 
        MOV AR1, port(*AR3(T0)) ; |414| 
	.dwpsn	file "src/csl_pll.c",line 416,column 2,is_stmt
        MOV *SP(#2), T0 ; |416| 
$C$L18:    
	.dwpsn	file "src/csl_pll.c",line 417,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$26, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x1a1)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.global	_PLL_reset

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_reset")
	.dwattr $C$DW$31, DW_AT_low_pc(_PLL_reset)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_PLL_reset")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x1cb)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_pll.c",line 460,column 1,is_stmt,address _PLL_reset

	.dwfde $C$DW$CIE, _PLL_reset
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hPll")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: PLL_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_PLL_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("hPll")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_hPll")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_pll.c",line 463,column 2,is_stmt
        MOV #0, *SP(#2) ; |463| 
	.dwpsn	file "src/csl_pll.c",line 465,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |465| 

        CMPU AC1 != AC0, TC1 ; |465| 
        BCC $C$L19,TC1 ; |465| 
                                        ; branchcc occurs ; |465| 
	.dwpsn	file "src/csl_pll.c",line 467,column 3,is_stmt
        MOV #-5, *SP(#2) ; |467| 
	.dwpsn	file "src/csl_pll.c",line 468,column 3,is_stmt
        MOV *SP(#2), T0 ; |468| 
        B $C$L20  ; |468| 
                                        ; branch occurs ; |468| 
$C$L19:    
	.dwpsn	file "src/csl_pll.c",line 472,column 5,is_stmt
        MOV #31, T0 ; |472| 
        MOV *AR3(short(#4)), AR3 ; |472| 
        MOV port(*AR3(T0)), AR1 ; |472| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR3 ; |472| 
        BCLR @#0, AR1 ; |472| 
        MOV AR1, port(*AR3(T0)) ; |472| 
	.dwpsn	file "src/csl_pll.c",line 481,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |481| 
        MOV *AR3(short(#4)), AR3 ; |481| 
        MOV #4096, port(*AR3(T0)) ; |481| 
	.dwpsn	file "src/csl_pll.c",line 482,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |482| 
        MOV *AR3(short(#4)), AR3 ; |482| 
        MOV #0, port(*AR3(T0)) ; |482| 
	.dwpsn	file "src/csl_pll.c",line 483,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |483| 
        MOV *AR3(short(#4)), AR3 ; |483| 
        MOV #0, port(*AR3(T0)) ; |483| 
	.dwpsn	file "src/csl_pll.c",line 484,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |484| 
        MOV *AR3(short(#4)), AR3 ; |484| 
        MOV #2054, port(*AR3(T0)) ; |484| 
	.dwpsn	file "src/csl_pll.c",line 486,column 2,is_stmt
        MOV *SP(#2), T0 ; |486| 
$C$L20:    
	.dwpsn	file "src/csl_pll.c",line 487,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$31, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x1e7)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.global	_getSysClk

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("getSysClk")
	.dwattr $C$DW$36, DW_AT_low_pc(_getSysClk)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_getSysClk")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$36, DW_AT_TI_begin_file("src/csl_pll.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x1f2)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_pll.c",line 499,column 1,is_stmt,address _getSysClk

	.dwfde $C$DW$CIE, _getSysClk
;*******************************************************************************
;* FUNCTION NAME: getSysClk                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,  *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_getSysClk:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("pllRDBypass")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_pllRDBypass")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("pllOutDiv")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_pllOutDiv")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("sysClk")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_sysClk")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("pllM")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_pllM")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("pllRD")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_pllRD")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("pllOD")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_pllOD")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 6]
	.dwpsn	file "src/csl_pll.c",line 507,column 2,is_stmt
        MOV *port(#7200), AR1 ; |507| 
        AND #0x0fff, AR1, AC0 ; |507| 
        MOV AC0, *SP(#4) ; |507| 
	.dwpsn	file "src/csl_pll.c",line 509,column 2,is_stmt
        MOV *port(#7201), AR1 ; |509| 
        AND #0x0fff, AR1, AC0 ; |509| 
        MOV AC0, *SP(#5) ; |509| 
	.dwpsn	file "src/csl_pll.c",line 510,column 2,is_stmt
        MOV uns(low_byte(*port(#7203))), AR1 ; |510| 
        MOV AR1, *SP(#6) ; |510| 
	.dwpsn	file "src/csl_pll.c",line 512,column 2,is_stmt
        MOV *port(#7201), AR1 ; |512| 
        AND #0x8000, AR1, AC0 ; |512| 
        SFTS AC0, #-15, AC0 ; |512| 
        MOV AC0, *SP(#0) ; |512| 
	.dwpsn	file "src/csl_pll.c",line 513,column 2,is_stmt
        MOV *port(#7203), AR1 ; |513| 
        AND #0x0200, AR1, AC0 ; |513| 
        SFTS AC0, #-9, AC0 ; |513| 
        MOV AC0, *SP(#1) ; |513| 
	.dwpsn	file "src/csl_pll.c",line 515,column 2,is_stmt
        MOV #0, AC0 ; |515| 
        OR #0x8000, AC0, AC0 ; |515| 
        MOV AC0, dbl(*SP(#2)) ; |515| 
	.dwpsn	file "src/csl_pll.c",line 517,column 2,is_stmt

        MOV *SP(#0), AR1 ; |517| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |517| 
        BCC $C$L21,TC1 ; |517| 
                                        ; branchcc occurs ; |517| 
	.dwpsn	file "src/csl_pll.c",line 519,column 3,is_stmt
        MOV *SP(#5), AR1 ; |519| 

        ADD #4, AR1 ; |519| 
||      MOV dbl(*SP(#2)), AC0 ; |519| 

        AND #0xffff, AR1, AC1 ; |519| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("__divul")
	.dwattr $C$DW$43, DW_AT_TI_call
        CALL #__divul ; |519| 
                                        ; call occurs [#__divul] ; |519| 
        MOV AC0, dbl(*SP(#2)) ; |519| 
$C$L21:    
	.dwpsn	file "src/csl_pll.c",line 522,column 2,is_stmt
        MOV *SP(#4), AR1 ; |522| 

        ADD #4, AR1 ; |522| 
||      MOV dbl(*SP(#2)), AC0 ; |522| 

        AND #0xffff, AR1, AC1 ; |522| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__mpyli")
	.dwattr $C$DW$44, DW_AT_TI_call
        CALL #__mpyli ; |522| 
                                        ; call occurs [#__mpyli] ; |522| 
        MOV AC0, dbl(*SP(#2)) ; |522| 
	.dwpsn	file "src/csl_pll.c",line 524,column 2,is_stmt

        MOV *SP(#1), AR1 ; |524| 
||      MOV #1, AR2

        CMPU AR2 != AR1, TC1 ; |524| 
        BCC $C$L22,TC1 ; |524| 
                                        ; branchcc occurs ; |524| 
	.dwpsn	file "src/csl_pll.c",line 526,column 3,is_stmt
        MOV *SP(#6), AR1 ; |526| 

        ADD #1, AR1 ; |526| 
||      MOV dbl(*SP(#2)), AC0 ; |526| 

        AND #0xffff, AR1, AC1 ; |526| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("__divul")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #__divul ; |526| 
                                        ; call occurs [#__divul] ; |526| 
        MOV AC0, dbl(*SP(#2)) ; |526| 
$C$L22:    
	.dwpsn	file "src/csl_pll.c",line 530,column 2,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |530| 
        MOV #1000, AC1 ; |530| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("__divul")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #__divul ; |530| 
                                        ; call occurs [#__divul] ; |530| 
	.dwpsn	file "src/csl_pll.c",line 531,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$36, DW_AT_TI_end_file("src/csl_pll.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x213)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__divul
	.global	__mpyli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("PLLCNTL1")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_PLLCNTL1")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("PLLINCNTL")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_PLLINCNTL")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("PLLCNTL2")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_PLLCNTL2")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("PLLOUTCNTL")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_PLLOUTCNTL")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("PLL_Config")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x17)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x48)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$52, DW_AT_name("EBSR")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$53, DW_AT_name("RSVD0")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$54, DW_AT_name("PCGCR1")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$55, DW_AT_name("PCGCR2")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$56, DW_AT_name("PSRCR")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$57, DW_AT_name("PRCR")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_name("RSVD1")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$59, DW_AT_name("TIAFR")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$60, DW_AT_name("RSVD2")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_name("ODSCR")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$62, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$63, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$65, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$66, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$67, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$68, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$69, DW_AT_name("CCR1")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$70, DW_AT_name("CCR2")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$71, DW_AT_name("CGCR1")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$72, DW_AT_name("CGCR2")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$73, DW_AT_name("CGCR3")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$74, DW_AT_name("CGCR4")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$75, DW_AT_name("CCSSR")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$76, DW_AT_name("RSVD3")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$77, DW_AT_name("ECDR")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$78, DW_AT_name("RSVD4")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$79, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$80, DW_AT_name("RSVD5")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$81, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$82, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$83, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$84, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_name("RSVD6")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$86, DW_AT_name("DMAIFR")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$87, DW_AT_name("DMAIER")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$88, DW_AT_name("USBSCR")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_name("ESCR")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$90, DW_AT_name("RSVD7")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$91, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$92, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$93, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$94, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$95, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$96, DW_AT_name("RSVD8")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$97, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$99, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$100, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$101, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$102, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$104, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$105	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$29)
$C$DW$106	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$105)
$C$DW$T$30	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$106)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x10)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("PLL_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$107, DW_AT_name("pllConfig")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_pllConfig")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$108, DW_AT_name("instId")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_instId")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$109, DW_AT_name("sysAddr")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_sysAddr")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("PLL_Obj")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("PLL_Handle")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
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
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$110	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
$C$DW$T$21	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$110)

$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0e)
$C$DW$111	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$111, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$112	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$112, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x05)
$C$DW$113	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$113, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$24

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
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
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

$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg1]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg2]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg3]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg4]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg5]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg6]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg7]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg8]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg9]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg10]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg11]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg12]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg13]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg14]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg15]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg16]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg17]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg18]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg19]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg20]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg21]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg22]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg23]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg24]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg25]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg26]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg27]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg28]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg29]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg30]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg31]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x20]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x21]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x22]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x23]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x24]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x25]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x26]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x27]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x28]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x29]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x30]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x31]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x32]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x33]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x34]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x35]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x36]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x37]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x38]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x39]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x40]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x41]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x42]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x43]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x44]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x45]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x46]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x47]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x48]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x49]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x50]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x51]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x52]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x53]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x54]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x55]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x56]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x57]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x58]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x59]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

