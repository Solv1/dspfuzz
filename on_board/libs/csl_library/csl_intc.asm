;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:00 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_intc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
	.bss	_CSL_IRQ_DATA,132,0,2
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("CSL_IRQ_DATA")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_CSL_IRQ_DATA")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _CSL_IRQ_DATA]
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17388mkJssp 
	.sect	".text"
	.global	_IRQ_init

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_init")
	.dwattr $C$DW$2, DW_AT_low_pc(_IRQ_init)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_IRQ_init")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$2, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x5f)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 99,column 1,is_stmt,address _IRQ_init

	.dwfde $C$DW$CIE, _IRQ_init
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dispatchTable")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_dispatchTable")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg17]
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("biosPresent")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_biosPresent")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("dispatchTable")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_dispatchTable")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("biosPresent")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_biosPresent")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |99| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_intc.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        AMOV #8388607, XAR3 ; |102| 
        MOV XAR3, AC1
        CMPU AC1 != AC0, TC1 ; |102| 
        BCC $C$L1,TC1 ; |102| 
                                        ; branchcc occurs ; |102| 
	.dwpsn	file "src/csl_intc.c",line 104,column 9,is_stmt
        MOV #-6, T0
        B $C$L6   ; |104| 
                                        ; branch occurs ; |104| 
$C$L1:    
	.dwpsn	file "src/csl_intc.c",line 107,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*(#_CSL_IRQ_DATA))
	.dwpsn	file "src/csl_intc.c",line 109,column 10,is_stmt
        MOV #0, *SP(#3) ; |109| 
	.dwpsn	file "src/csl_intc.c",line 109,column 15,is_stmt
        MOV #31, AR2 ; |109| 
        MOV *SP(#3), AR1 ; |109| 
        CMPU AR1 > AR2, TC1 ; |109| 
        BCC $C$L3,TC1 ; |109| 
                                        ; branchcc occurs ; |109| 
$C$L2:    
$C$DW$L$_IRQ_init$4$B:
	.dwpsn	file "src/csl_intc.c",line 110,column 9,is_stmt
        MOV *SP(#3), T0 ; |110| 
        SFTL T0, #1 ; |110| 
        MOV *SP(#3), AC0 ; |110| 
        AMOV #(_CSL_IRQ_DATA+2), XAR3 ; |110| 
        MOV AC0, dbl(*AR3(T0)) ; |110| 
	.dwpsn	file "src/csl_intc.c",line 109,column 35,is_stmt
        ADD #1, *SP(#3) ; |109| 
	.dwpsn	file "src/csl_intc.c",line 109,column 15,is_stmt
        MOV *SP(#3), AR1 ; |109| 
        CMPU AR1 <= AR2, TC1 ; |109| 
        BCC $C$L2,TC1 ; |109| 
                                        ; branchcc occurs ; |109| 
$C$DW$L$_IRQ_init$4$E:
$C$L3:    
	.dwpsn	file "src/csl_intc.c",line 112,column 9,is_stmt
        MOV #0, *SP(#3) ; |112| 
	.dwpsn	file "src/csl_intc.c",line 112,column 14,is_stmt
        MOV *SP(#3), AR1 ; |112| 
        CMPU AR1 > AR2, TC1 ; |112| 
        BCC $C$L5,TC1 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$L4:    
$C$DW$L$_IRQ_init$6$B:
	.dwpsn	file "src/csl_intc.c",line 113,column 9,is_stmt
        MOV *SP(#3), T1 ; |113| 
        MOV T1, T0 ; |113| 
        SFTL T0, #1 ; |113| 
        MOV #1, AC0 ; |113| 
        AMOV #(_CSL_IRQ_DATA+66), XAR3 ; |113| 
        SFTS AC0, T1, AC0 ; |113| 
        MOV AC0, dbl(*AR3(T0)) ; |113| 
	.dwpsn	file "src/csl_intc.c",line 112,column 35,is_stmt
        ADD #1, *SP(#3) ; |112| 
	.dwpsn	file "src/csl_intc.c",line 112,column 14,is_stmt
        MOV *SP(#3), AR1 ; |112| 
        CMPU AR1 <= AR2, TC1 ; |112| 
        BCC $C$L4,TC1 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$DW$L$_IRQ_init$6$E:
$C$L5:    
	.dwpsn	file "src/csl_intc.c",line 115,column 5,is_stmt
        MOV *SP(#2), AR1 ; |115| 
        MOV AR1, *(#(_CSL_IRQ_DATA+130)) ; |115| 
	.dwpsn	file "src/csl_intc.c",line 116,column 5,is_stmt
        MOV #0, T0
$C$L6:    
	.dwpsn	file "src/csl_intc.c",line 117,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$9	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$9, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_intc.asm:$C$L4:1:1714639440")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x71)
$C$DW$10	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$10, DW_AT_low_pc($C$DW$L$_IRQ_init$6$B)
	.dwattr $C$DW$10, DW_AT_high_pc($C$DW$L$_IRQ_init$6$E)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$11, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_intc.asm:$C$L2:1:1714639440")
	.dwattr $C$DW$11, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x6d)
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x6e)
$C$DW$12	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$12, DW_AT_low_pc($C$DW$L$_IRQ_init$4$B)
	.dwattr $C$DW$12, DW_AT_high_pc($C$DW$L$_IRQ_init$4$E)
	.dwendtag $C$DW$11

	.dwattr $C$DW$2, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"
	.global	_IRQ_clear

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clear")
	.dwattr $C$DW$13, DW_AT_low_pc(_IRQ_clear)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_IRQ_clear")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_intc.c",line 160,column 1,is_stmt,address _IRQ_clear

	.dwfde $C$DW$CIE, _IRQ_clear
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_clear                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_clear:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#0) ; |160| 
	.dwpsn	file "src/csl_intc.c",line 165,column 5,is_stmt

        MOV #31, AR2 ; |165| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |165| 
        BCC $C$L7,TC1 ; |165| 
                                        ; branchcc occurs ; |165| 
	.dwpsn	file "src/csl_intc.c",line 167,column 9,is_stmt
        MOV #-6, T0
        B $C$L10  ; |167| 
                                        ; branch occurs ; |167| 
$C$L7:    
	.dwpsn	file "src/csl_intc.c",line 170,column 5,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$18, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |170| 
                                        ; call occurs [#_IRQ_globalDisable] ; |170| 
        MOV T0, *SP(#2) ; |170| 
	.dwpsn	file "src/csl_intc.c",line 172,column 5,is_stmt
        MOV *SP(#0), AR1 ; |172| 
        MOV AR1, *SP(#1) ; |172| 
	.dwpsn	file "src/csl_intc.c",line 174,column 5,is_stmt

        MOV *SP(#0), AR1 ; |174| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |174| 
        BCC $C$L8,TC1 ; |174| 
                                        ; branchcc occurs ; |174| 
	.dwpsn	file "src/csl_intc.c",line 177,column 9,is_stmt

        MOV #1, AC0
||      SUB #16, AR1, T1 ; |177| 

        SFTS AC0, T1, AC0 ; |177| 
        MOV AC0, *SP(#1) ; |177| 
	.dwpsn	file "src/csl_intc.c",line 178,column 2,is_stmt
        MOV AC0, AR1
        MOV AR1, *(#70) ; |178| 
	.dwpsn	file "src/csl_intc.c",line 179,column 5,is_stmt
        B $C$L9   ; |179| 
                                        ; branch occurs ; |179| 
$C$L8:    
	.dwpsn	file "src/csl_intc.c",line 183,column 2,is_stmt

        MOV #1, AC0
||      MOV *SP(#0), T1 ; |183| 

        SFTS AC0, T1, AC0 ; |183| 
        MOV AC0, *SP(#1) ; |183| 
	.dwpsn	file "src/csl_intc.c",line 184,column 9,is_stmt
        MOV AC0, AR1
        MOV AR1, *(#1) ; |184| 
$C$L9:    
	.dwpsn	file "src/csl_intc.c",line 187,column 5,is_stmt
        MOV *SP(#2), T0 ; |187| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$19, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |187| 
                                        ; call occurs [#_IRQ_globalRestore] ; |187| 
	.dwpsn	file "src/csl_intc.c",line 188,column 5,is_stmt
        MOV #0, T0
$C$L10:    
	.dwpsn	file "src/csl_intc.c",line 189,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0xbd)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_IRQ_clearAll

$C$DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_clearAll")
	.dwattr $C$DW$21, DW_AT_low_pc(_IRQ_clearAll)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_IRQ_clearAll")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0xdc)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_intc.c",line 221,column 1,is_stmt,address _IRQ_clearAll

	.dwfde $C$DW$CIE, _IRQ_clearAll
;*******************************************************************************
;* FUNCTION NAME: IRQ_clearAll                                                 *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_clearAll:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_intc.c",line 223,column 5,is_stmt
        MOV #65535, *(#1) ; |223| 
	.dwpsn	file "src/csl_intc.c",line 226,column 2,is_stmt
        MOV #65535, *(#70) ; |226| 
	.dwpsn	file "src/csl_intc.c",line 227,column 1,is_stmt
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$21, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"
	.global	_IRQ_config

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_config")
	.dwattr $C$DW$23, DW_AT_low_pc(_IRQ_config)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_IRQ_config")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$23, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 282,column 1,is_stmt,address _IRQ_config

	.dwfde $C$DW$CIE, _IRQ_config
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: IRQ_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |282| 
	.dwpsn	file "src/csl_intc.c",line 283,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |283| 

        CMPU AC1 != AC0, TC1 ; |283| 
        BCC $C$L11,TC1 ; |283| 
                                        ; branchcc occurs ; |283| 
	.dwpsn	file "src/csl_intc.c",line 285,column 9,is_stmt
        MOV #-6, T0
        B $C$L13  ; |285| 
                                        ; branch occurs ; |285| 
$C$L11:    
	.dwpsn	file "src/csl_intc.c",line 289,column 5,is_stmt

        MOV #31, AR2 ; |289| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |289| 
        BCC $C$L12,TC1 ; |289| 
                                        ; branchcc occurs ; |289| 
	.dwpsn	file "src/csl_intc.c",line 291,column 9,is_stmt
        MOV #-6, T0
        B $C$L13  ; |291| 
                                        ; branch occurs ; |291| 
$C$L12:    
	.dwpsn	file "src/csl_intc.c",line 294,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR2
        MOV *SP(#0) << #3, AC0 ; |294| 
        MOV AC0, T0 ; |294| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |294| 
	.dwpsn	file "src/csl_intc.c",line 297,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV *SP(#0) << #3, AC0 ; |297| 
        MOV AC0, AR1 ; |297| 

        MOV dbl(*AR2(short(#2))), AC0 ; |297| 
||      AADD AR1, AR3 ; |297| 

        MOV AC0, dbl(*AR3(short(#2))) ; |297| 
	.dwpsn	file "src/csl_intc.c",line 300,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV *SP(#0) << #3, AC0 ; |300| 
        MOV AC0, AR1 ; |300| 

        MOV dbl(*AR2(short(#4))), AC0 ; |300| 
||      AADD AR1, AR3 ; |300| 

        MOV AC0, dbl(*AR3(short(#4))) ; |300| 
	.dwpsn	file "src/csl_intc.c",line 302,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV *SP(#0) << #3, AC0 ; |302| 
        MOV AC0, AR1 ; |302| 

        MOV dbl(*AR2(short(#6))), AC0 ; |302| 
||      AADD AR1, AR3 ; |302| 

        MOV AC0, dbl(*AR3(short(#6))) ; |302| 
	.dwpsn	file "src/csl_intc.c",line 304,column 5,is_stmt
        MOV #0, T0
$C$L13:    
	.dwpsn	file "src/csl_intc.c",line 305,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$23, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x131)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.global	_IRQ_getConfig

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_getConfig")
	.dwattr $C$DW$29, DW_AT_low_pc(_IRQ_getConfig)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_IRQ_getConfig")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x161)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 357,column 1,is_stmt,address _IRQ_getConfig

	.dwfde $C$DW$CIE, _IRQ_getConfig
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: IRQ_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |357| 
	.dwpsn	file "src/csl_intc.c",line 358,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |358| 

        CMPU AC1 != AC0, TC1 ; |358| 
        BCC $C$L14,TC1 ; |358| 
                                        ; branchcc occurs ; |358| 
	.dwpsn	file "src/csl_intc.c",line 360,column 9,is_stmt
        MOV #-6, T0
        B $C$L16  ; |360| 
                                        ; branch occurs ; |360| 
$C$L14:    
	.dwpsn	file "src/csl_intc.c",line 363,column 5,is_stmt

        MOV #31, AR2 ; |363| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |363| 
        BCC $C$L15,TC1 ; |363| 
                                        ; branchcc occurs ; |363| 
	.dwpsn	file "src/csl_intc.c",line 365,column 9,is_stmt
        MOV #-6, T0
        B $C$L16  ; |365| 
                                        ; branch occurs ; |365| 
$C$L15:    
	.dwpsn	file "src/csl_intc.c",line 367,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV *SP(#0) << #3, AC0 ; |367| 
        MOV AC0, T0 ; |367| 
        MOV dbl(*AR3(T0)), dbl(*AR2) ; |367| 
	.dwpsn	file "src/csl_intc.c",line 370,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV *SP(#0) << #3, AC0 ; |370| 
        MOV AC0, AR1 ; |370| 
        AADD AR1, AR3 ; |370| 
        MOV dbl(*AR3(short(#2))), AC0 ; |370| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(short(#2))) ; |370| 
	.dwpsn	file "src/csl_intc.c",line 373,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV *SP(#0) << #3, AC0 ; |373| 
        MOV AC0, AR1 ; |373| 
        AADD AR1, AR3 ; |373| 
        MOV dbl(*AR3(short(#4))), AC0 ; |373| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |373| 
	.dwpsn	file "src/csl_intc.c",line 375,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV *SP(#0) << #3, AC0 ; |375| 
        MOV AC0, AR1 ; |375| 
        AADD AR1, AR3 ; |375| 
        MOV dbl(*AR3(short(#6))), AC0 ; |375| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3(short(#6))) ; |375| 
	.dwpsn	file "src/csl_intc.c",line 377,column 5,is_stmt
        MOV #0, T0
$C$L16:    
	.dwpsn	file "src/csl_intc.c",line 378,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$29, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x17a)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.global	_IRQ_disable

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disable")
	.dwattr $C$DW$35, DW_AT_low_pc(_IRQ_disable)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_IRQ_disable")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x1a0)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 419,column 1,is_stmt,address _IRQ_disable

	.dwfde $C$DW$CIE, _IRQ_disable
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_disable                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_disable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("old_flag")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_old_flag")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#0) ; |419| 
	.dwpsn	file "src/csl_intc.c",line 424,column 5,is_stmt

        MOV #31, AR2 ; |424| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |424| 
        BCC $C$L17,TC1 ; |424| 
                                        ; branchcc occurs ; |424| 
	.dwpsn	file "src/csl_intc.c",line 426,column 9,is_stmt
        MOV #-6, T0
        B $C$L20  ; |426| 
                                        ; branch occurs ; |426| 
$C$L17:    
	.dwpsn	file "src/csl_intc.c",line 429,column 5,is_stmt
        MOV AR1, *SP(#1) ; |429| 
	.dwpsn	file "src/csl_intc.c",line 430,column 5,is_stmt
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$41, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |430| 
                                        ; call occurs [#_IRQ_globalDisable] ; |430| 
        MOV T0, *SP(#3) ; |430| 
	.dwpsn	file "src/csl_intc.c",line 432,column 5,is_stmt

        MOV *SP(#0), AR1 ; |432| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |432| 
        BCC $C$L18,TC1 ; |432| 
                                        ; branchcc occurs ; |432| 
	.dwpsn	file "src/csl_intc.c",line 435,column 9,is_stmt
        SUB #16, *SP(#1) ; |435| 
	.dwpsn	file "src/csl_intc.c",line 436,column 9,is_stmt
        MOV uns(*(#69)), AC0 ; |436| 
        MOV *SP(#1), AR1 ; |436| 
        NEG AR1, T1 ; |436| 
        SFTS AC0, T1, AC0 ; |436| 
        AND #0x0001, AC0, AC0 ; |436| 
        MOV AC0, *SP(#2) ; |436| 
	.dwpsn	file "src/csl_intc.c",line 437,column 9,is_stmt

        MOV *SP(#1), T1 ; |437| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |437| 
        NOT AC0, AR1 ; |437| 
        AND *(#69), AR1, AC0 ; |437| 
        MOV AC0, *(#69) ; |437| 
	.dwpsn	file "src/csl_intc.c",line 438,column 5,is_stmt
        B $C$L19  ; |438| 
                                        ; branch occurs ; |438| 
$C$L18:    
	.dwpsn	file "src/csl_intc.c",line 442,column 9,is_stmt
        MOV *SP(#1), AR1 ; |442| 
        MOV uns(*(#0)), AC0 ; |442| 
        NEG AR1, T1 ; |442| 
        SFTS AC0, T1, AC0 ; |442| 
        AND #0x0001, AC0, AC0 ; |442| 
        MOV AC0, *SP(#2) ; |442| 
	.dwpsn	file "src/csl_intc.c",line 443,column 9,is_stmt

        MOV #1, AC0
||      MOV *SP(#1), T1 ; |443| 

        SFTS AC0, T1, AC0 ; |443| 
        NOT AC0, AR1 ; |443| 
        AND *(#0), AR1, AC0 ; |443| 
        MOV AC0, *(#0) ; |443| 
$C$L19:    
	.dwpsn	file "src/csl_intc.c",line 445,column 5,is_stmt
        MOV *SP(#3), T0 ; |445| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$42, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |445| 
                                        ; call occurs [#_IRQ_globalRestore] ; |445| 
	.dwpsn	file "src/csl_intc.c",line 447,column 5,is_stmt
        MOV *SP(#2), T0 ; |447| 
$C$L20:    
	.dwpsn	file "src/csl_intc.c",line 448,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$35, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x1c0)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.global	_IRQ_disableAll

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_disableAll")
	.dwattr $C$DW$44, DW_AT_low_pc(_IRQ_disableAll)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_IRQ_disableAll")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x1e2)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_intc.c",line 483,column 1,is_stmt,address _IRQ_disableAll

	.dwfde $C$DW$CIE, _IRQ_disableAll
;*******************************************************************************
;* FUNCTION NAME: IRQ_disableAll                                               *
;*                                                                             *
;*   Function Uses Regs : SP,M40,SATA,SATD,RDM,FRCT,SMUL                       *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_disableAll:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_intc.c",line 485,column 2,is_stmt
        MOV #0, *(#0) ; |485| 
	.dwpsn	file "src/csl_intc.c",line 488,column 2,is_stmt
        MOV #0, *(#69) ; |488| 
	.dwpsn	file "src/csl_intc.c",line 489,column 1,is_stmt
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$44, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_IRQ_enable

$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable")
	.dwattr $C$DW$46, DW_AT_low_pc(_IRQ_enable)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_IRQ_enable")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x20e)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 529,column 1,is_stmt,address _IRQ_enable

	.dwfde $C$DW$CIE, _IRQ_enable
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_enable                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_enable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("old_flag")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_old_flag")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#0) ; |529| 
	.dwpsn	file "src/csl_intc.c",line 534,column 5,is_stmt

        MOV #31, AR2 ; |534| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |534| 
        BCC $C$L21,TC1 ; |534| 
                                        ; branchcc occurs ; |534| 
	.dwpsn	file "src/csl_intc.c",line 536,column 9,is_stmt
        MOV #-6, T0
        B $C$L24  ; |536| 
                                        ; branch occurs ; |536| 
$C$L21:    
	.dwpsn	file "src/csl_intc.c",line 539,column 5,is_stmt
        MOV AR1, *SP(#1) ; |539| 
	.dwpsn	file "src/csl_intc.c",line 540,column 5,is_stmt
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$52, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |540| 
                                        ; call occurs [#_IRQ_globalDisable] ; |540| 
        MOV T0, *SP(#3) ; |540| 
	.dwpsn	file "src/csl_intc.c",line 541,column 5,is_stmt

        MOV *SP(#0), AR1 ; |541| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |541| 
        BCC $C$L22,TC1 ; |541| 
                                        ; branchcc occurs ; |541| 
	.dwpsn	file "src/csl_intc.c",line 543,column 9,is_stmt
        SUB #16, *SP(#1) ; |543| 
	.dwpsn	file "src/csl_intc.c",line 544,column 9,is_stmt
        MOV uns(*(#69)), AC0 ; |544| 
        MOV *SP(#1), AR1 ; |544| 
        NEG AR1, T1 ; |544| 
        SFTS AC0, T1, AC0 ; |544| 
        AND #0x0001, AC0, AC0 ; |544| 
        MOV AC0, *SP(#2) ; |544| 
	.dwpsn	file "src/csl_intc.c",line 545,column 9,is_stmt

        MOV #1, AC0
||      MOV *SP(#1), T1 ; |545| 

        SFTS AC0, T1, AC0 ; |545| 
        NOT AC0, AR1 ; |545| 
        AND *(#69), AR1, AR1 ; |545| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |545| 
        OR AR1, AC0 ; |545| 
        MOV AC0, *(#69) ; |545| 
	.dwpsn	file "src/csl_intc.c",line 546,column 5,is_stmt
        B $C$L23  ; |546| 
                                        ; branch occurs ; |546| 
$C$L22:    
	.dwpsn	file "src/csl_intc.c",line 549,column 9,is_stmt
        MOV *SP(#1), AR1 ; |549| 
        MOV uns(*(#0)), AC0 ; |549| 
        NEG AR1, T1 ; |549| 
        SFTS AC0, T1, AC0 ; |549| 
        AND #0x0001, AC0, AC0 ; |549| 
        MOV AC0, *SP(#2) ; |549| 
	.dwpsn	file "src/csl_intc.c",line 550,column 9,is_stmt

        MOV #1, AC0
||      MOV *SP(#1), T1 ; |550| 

        SFTS AC0, T1, AC0 ; |550| 
        NOT AC0, AR1 ; |550| 
        AND *(#0), AR1, AR1 ; |550| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |550| 
        OR AR1, AC0 ; |550| 
        MOV AC0, *(#0) ; |550| 
$C$L23:    
	.dwpsn	file "src/csl_intc.c",line 553,column 5,is_stmt
        MOV *SP(#3), T0 ; |553| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |553| 
                                        ; call occurs [#_IRQ_globalRestore] ; |553| 
	.dwpsn	file "src/csl_intc.c",line 555,column 5,is_stmt
        MOV *SP(#2), T0 ; |555| 
$C$L24:    
	.dwpsn	file "src/csl_intc.c",line 556,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$46, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x22c)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text"
	.global	_IRQ_restore

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_restore")
	.dwattr $C$DW$55, DW_AT_low_pc(_IRQ_restore)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_IRQ_restore")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$55, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x252)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 598,column 1,is_stmt,address _IRQ_restore

	.dwfde $C$DW$CIE, _IRQ_restore
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg12]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: IRQ_restore                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_restore:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#1) ; |598| 
        MOV T0, *SP(#0) ; |598| 
	.dwpsn	file "src/csl_intc.c",line 603,column 5,is_stmt

        MOV #31, AR2 ; |603| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |603| 
        BCC $C$L25,TC1 ; |603| 
                                        ; branchcc occurs ; |603| 
	.dwpsn	file "src/csl_intc.c",line 605,column 9,is_stmt
        MOV #-6, T0
        B $C$L28  ; |605| 
                                        ; branch occurs ; |605| 
$C$L25:    
	.dwpsn	file "src/csl_intc.c",line 608,column 5,is_stmt
        MOV AR1, *SP(#2) ; |608| 
	.dwpsn	file "src/csl_intc.c",line 609,column 5,is_stmt
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |609| 
                                        ; call occurs [#_IRQ_globalDisable] ; |609| 
        MOV T0, *SP(#3) ; |609| 
	.dwpsn	file "src/csl_intc.c",line 610,column 5,is_stmt

        MOV *SP(#0), AR1 ; |610| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |610| 
        BCC $C$L26,TC1 ; |610| 
                                        ; branchcc occurs ; |610| 
	.dwpsn	file "src/csl_intc.c",line 612,column 9,is_stmt
        SUB #16, *SP(#2) ; |612| 
	.dwpsn	file "src/csl_intc.c",line 613,column 9,is_stmt

        MOV *SP(#2), T1 ; |613| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |613| 

        NOT AC0, AR1 ; |613| 
||      MOV *SP(#1), AR2 ; |613| 

        AND *(#69), AR1, AR1 ; |613| 
        AND #0x0001, AR2, AC0 ; |613| 
        SFTS AC0, T1, AC0 ; |613| 
        OR AR1, AC0 ; |613| 
        MOV AC0, *(#69) ; |613| 
	.dwpsn	file "src/csl_intc.c",line 614,column 5,is_stmt
        B $C$L27  ; |614| 
                                        ; branch occurs ; |614| 
$C$L26:    
	.dwpsn	file "src/csl_intc.c",line 617,column 9,is_stmt

        MOV #1, AC0
||      MOV *SP(#2), T1 ; |617| 

        SFTS AC0, T1, AC0 ; |617| 

        NOT AC0, AR1 ; |617| 
||      MOV *SP(#1), AR2 ; |617| 

        AND *(#0), AR1, AR1 ; |617| 
        AND #0x0001, AR2, AC0 ; |617| 
        SFTS AC0, T1, AC0 ; |617| 
        OR AR1, AC0 ; |617| 
        MOV AC0, *(#0) ; |617| 
$C$L27:    
	.dwpsn	file "src/csl_intc.c",line 619,column 5,is_stmt
        MOV *SP(#3), T0 ; |619| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |619| 
                                        ; call occurs [#_IRQ_globalRestore] ; |619| 
	.dwpsn	file "src/csl_intc.c",line 621,column 5,is_stmt
        MOV #0, T0
$C$L28:    
	.dwpsn	file "src/csl_intc.c",line 622,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$55, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x26e)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_IRQ_getArg

$C$DW$65	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_getArg")
	.dwattr $C$DW$65, DW_AT_low_pc(_IRQ_getArg)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_IRQ_getArg")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$65, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x295)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 665,column 1,is_stmt,address _IRQ_getArg

	.dwfde $C$DW$CIE, _IRQ_getArg
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg12]
$C$DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: IRQ_getArg                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_getArg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |665| 
	.dwpsn	file "src/csl_intc.c",line 666,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |666| 

        CMPU AC1 != AC0, TC1 ; |666| 
        BCC $C$L29,TC1 ; |666| 
                                        ; branchcc occurs ; |666| 
	.dwpsn	file "src/csl_intc.c",line 668,column 9,is_stmt
        MOV #-6, T0
        B $C$L31  ; |668| 
                                        ; branch occurs ; |668| 
$C$L29:    
	.dwpsn	file "src/csl_intc.c",line 672,column 5,is_stmt

        MOV #31, AR2 ; |672| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |672| 
        BCC $C$L30,TC1 ; |672| 
                                        ; branchcc occurs ; |672| 
	.dwpsn	file "src/csl_intc.c",line 674,column 9,is_stmt
        MOV #-6, T0
        B $C$L31  ; |674| 
                                        ; branch occurs ; |674| 
$C$L30:    
	.dwpsn	file "src/csl_intc.c",line 676,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV *SP(#0) << #3, AC0 ; |676| 
        MOV AC0, AR1 ; |676| 
        MOV dbl(*SP(#2)), XAR2
        AADD AR1, AR3 ; |676| 
        AADD #2, AR3 ; |676| 
        MOV dbl(*AR3), dbl(*AR2) ; |676| 
	.dwpsn	file "src/csl_intc.c",line 678,column 5,is_stmt
        MOV #0, T0
$C$L31:    
	.dwpsn	file "src/csl_intc.c",line 679,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$65, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x2a7)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$65

	.sect	".text"
	.global	_IRQ_setArg

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_setArg")
	.dwattr $C$DW$71, DW_AT_low_pc(_IRQ_setArg)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_IRQ_setArg")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x2d1)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 725,column 1,is_stmt,address _IRQ_setArg

	.dwfde $C$DW$CIE, _IRQ_setArg
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: IRQ_setArg                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_setArg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV AC0, dbl(*SP(#2)) ; |725| 
        MOV T0, *SP(#0) ; |725| 
	.dwpsn	file "src/csl_intc.c",line 727,column 5,is_stmt

        MOV #31, AR2 ; |727| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |727| 
        BCC $C$L32,TC1 ; |727| 
                                        ; branchcc occurs ; |727| 
	.dwpsn	file "src/csl_intc.c",line 729,column 9,is_stmt
        MOV #-6, T0
        B $C$L33  ; |729| 
                                        ; branch occurs ; |729| 
$C$L32:    
	.dwpsn	file "src/csl_intc.c",line 731,column 5,is_stmt
        MOV dbl(*(#_CSL_IRQ_DATA)), XAR3
        MOV *SP(#0) << #3, AC0 ; |731| 
        MOV AC0, AR1 ; |731| 

        AADD AR1, AR3 ; |731| 
||      MOV dbl(*SP(#2)), AC0 ; |731| 

        MOV AC0, dbl(*AR3(short(#2))) ; |731| 
	.dwpsn	file "src/csl_intc.c",line 733,column 5,is_stmt
        MOV #0, T0
$C$L33:    
	.dwpsn	file "src/csl_intc.c",line 734,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$71, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x2de)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_IRQ_map

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map")
	.dwattr $C$DW$77, DW_AT_low_pc(_IRQ_map)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_IRQ_map")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$77, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x305)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_intc.c",line 776,column 1,is_stmt,address _IRQ_map

	.dwfde $C$DW$CIE, _IRQ_map
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_map                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_map:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |776| 
	.dwpsn	file "src/csl_intc.c",line 778,column 5,is_stmt

        MOV #31, AR2 ; |778| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |778| 
        BCC $C$L34,TC1 ; |778| 
                                        ; branchcc occurs ; |778| 
	.dwpsn	file "src/csl_intc.c",line 780,column 9,is_stmt
        MOV #-6, T0
        B $C$L35  ; |780| 
                                        ; branch occurs ; |780| 
$C$L34:    
	.dwpsn	file "src/csl_intc.c",line 782,column 5,is_stmt
        MOV *SP(#0), T1 ; |782| 
        MOV T1, T0 ; |782| 
        SFTL T0, #1 ; |782| 
        MOV #1, AC0 ; |782| 
        AMOV #(_CSL_IRQ_DATA+2), XAR3 ; |782| 
        SFTS AC0, T1, AC0 ; |782| 
        MOV AC0, dbl(*AR3(T0)) ; |782| 
	.dwpsn	file "src/csl_intc.c",line 784,column 5,is_stmt
        MOV #0, T0
$C$L35:    
	.dwpsn	file "src/csl_intc.c",line 785,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$77, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x311)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.global	_IRQ_setVecs

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_setVecs")
	.dwattr $C$DW$81, DW_AT_low_pc(_IRQ_setVecs)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_IRQ_setVecs")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$81, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x339)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_intc.c",line 828,column 1,is_stmt,address _IRQ_setVecs

	.dwfde $C$DW$CIE, _IRQ_setVecs
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Ivpd")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_Ivpd")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: IRQ_setVecs                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR1,SP,CARRY,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_setVecs:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("Ivpd")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_Ivpd")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV AC0, dbl(*SP(#0)) ; |828| 
	.dwpsn	file "src/csl_intc.c",line 830,column 12,is_stmt
        MOV #-1 << #16, AC0 ; |830| 
        MOV dbl(*SP(#0)), AC1 ; |830| 
        OR #0xff00, AC0, AC0 ; |830| 
        AND AC1, AC0 ; |830| 
        SFTL AC0, #-8, AC0 ; |830| 
        MOV AC0, *SP(#3) ; |830| 
	.dwpsn	file "src/csl_intc.c",line 831,column 5,is_stmt
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |831| 
                                        ; call occurs [#_IRQ_globalDisable] ; |831| 
        MOV T0, *SP(#2) ; |831| 
	.dwpsn	file "src/csl_intc.c",line 832,column 5,is_stmt
        MOV *SP(#3), AR1 ; |832| 
        MOV AR1, *(#73) ; |832| 
	.dwpsn	file "src/csl_intc.c",line 833,column 5,is_stmt
        MOV AR1, *(#74) ; |833| 
	.dwpsn	file "src/csl_intc.c",line 834,column 5,is_stmt
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |834| 
                                        ; call occurs [#_IRQ_globalRestore] ; |834| 
	.dwpsn	file "src/csl_intc.c",line 836,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_intc.c",line 837,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$81, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x345)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.global	_IRQ_test

$C$DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_test")
	.dwattr $C$DW$89, DW_AT_low_pc(_IRQ_test)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_IRQ_test")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$89, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x36e)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_intc.c",line 882,column 1,is_stmt,address _IRQ_test

	.dwfde $C$DW$CIE, _IRQ_test
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("EventId")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("IntStatus")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_IntStatus")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: IRQ_test                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_test:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("EventId")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("IntStatus")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_IntStatus")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("bit")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("old_intm")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_old_intm")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |882| 
	.dwpsn	file "src/csl_intc.c",line 885,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |885| 

        CMPU AC1 != AC0, TC1 ; |885| 
        BCC $C$L36,TC1 ; |885| 
                                        ; branchcc occurs ; |885| 
	.dwpsn	file "src/csl_intc.c",line 887,column 5,is_stmt
        MOV #-6, T0
        B $C$L40  ; |887| 
                                        ; branch occurs ; |887| 
$C$L36:    
	.dwpsn	file "src/csl_intc.c",line 890,column 5,is_stmt

        MOV #31, AR2 ; |890| 
||      MOV T0, AR1

        CMPU AR2 >= AR1, TC1 ; |890| 
        BCC $C$L37,TC1 ; |890| 
                                        ; branchcc occurs ; |890| 
	.dwpsn	file "src/csl_intc.c",line 892,column 9,is_stmt
        MOV #-6, T0
        B $C$L40  ; |892| 
                                        ; branch occurs ; |892| 
$C$L37:    
	.dwpsn	file "src/csl_intc.c",line 894,column 5,is_stmt
        MOV AR1, *SP(#4) ; |894| 
	.dwpsn	file "src/csl_intc.c",line 895,column 5,is_stmt
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$96, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |895| 
                                        ; call occurs [#_IRQ_globalDisable] ; |895| 
        MOV T0, *SP(#5) ; |895| 
	.dwpsn	file "src/csl_intc.c",line 897,column 5,is_stmt

        MOV *SP(#0), AR1 ; |897| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |897| 
        BCC $C$L38,TC1 ; |897| 
                                        ; branchcc occurs ; |897| 
	.dwpsn	file "src/csl_intc.c",line 899,column 9,is_stmt
        SUB #16, *SP(#4) ; |899| 
	.dwpsn	file "src/csl_intc.c",line 900,column 9,is_stmt
        MOV *SP(#4), AR1 ; |900| 
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*(#70)), AC0 ; |900| 
        NEG AR1, T1 ; |900| 
        SFTS AC0, T1, AC0 ; |900| 
        AND #0x0001, AC0, AC0 ; |900| 
        MOV AC0, *AR3 ; |900| 
	.dwpsn	file "src/csl_intc.c",line 901,column 5,is_stmt
        B $C$L39  ; |901| 
                                        ; branch occurs ; |901| 
$C$L38:    
	.dwpsn	file "src/csl_intc.c",line 904,column 9,is_stmt
        MOV *SP(#4), AR1 ; |904| 
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*(#1)), AC0 ; |904| 
        NEG AR1, T1 ; |904| 
        SFTS AC0, T1, AC0 ; |904| 
        AND #0x0001, AC0, AC0 ; |904| 
        MOV AC0, *AR3 ; |904| 
$C$L39:    
	.dwpsn	file "src/csl_intc.c",line 906,column 5,is_stmt
        MOV *SP(#5), T0 ; |906| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$97, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |906| 
                                        ; call occurs [#_IRQ_globalRestore] ; |906| 
	.dwpsn	file "src/csl_intc.c",line 908,column 5,is_stmt
        MOV #0, T0
$C$L40:    
	.dwpsn	file "src/csl_intc.c",line 909,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$89, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x38d)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.global	_IRQ_globalDisable

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable")
	.dwattr $C$DW$99, DW_AT_low_pc(_IRQ_globalDisable)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_IRQ_globalDisable")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$99, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x3af)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_intc.c",line 944,column 1,is_stmt,address _IRQ_globalDisable

	.dwfde $C$DW$CIE, _IRQ_globalDisable
;*******************************************************************************
;* FUNCTION NAME: IRQ_globalDisable                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_globalDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_intc.c",line 946,column 2,is_stmt
        MOV *(#3), AR1 ; |946| 
        AND #0x0800, AR1, AC0 ; |946| 
        SFTS AC0, #-11, AC0 ; |946| 
        MOV AC0, *SP(#0) ; |946| 
	.dwpsn	file "src/csl_intc.c",line 947,column 5,is_stmt
	NOP                      ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 951,column 5,is_stmt
	BSET INTM                ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 954,column 5,is_stmt
        MOV AC0, T0
	.dwpsn	file "src/csl_intc.c",line 955,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$99, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x3bb)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.global	_IRQ_globalEnable

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalEnable")
	.dwattr $C$DW$102, DW_AT_low_pc(_IRQ_globalEnable)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_IRQ_globalEnable")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x3dd)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_intc.c",line 990,column 1,is_stmt,address _IRQ_globalEnable

	.dwfde $C$DW$CIE, _IRQ_globalEnable
;*******************************************************************************
;* FUNCTION NAME: IRQ_globalEnable                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_globalEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_intc.c",line 992,column 5,is_stmt
        MOV *(#3), AR1 ; |992| 
        AND #0x0800, AR1, AC0 ; |992| 
        SFTS AC0, #-11, AC0 ; |992| 
        MOV AC0, *SP(#0) ; |992| 
	.dwpsn	file "src/csl_intc.c",line 993,column 5,is_stmt
	NOP                      ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 997,column 5,is_stmt
	BCLR INTM                ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 999,column 5,is_stmt
        MOV AC0, T0
	.dwpsn	file "src/csl_intc.c",line 1000,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$102, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x3e8)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.global	_IRQ_globalRestore

$C$DW$105	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalRestore")
	.dwattr $C$DW$105, DW_AT_low_pc(_IRQ_globalRestore)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_IRQ_globalRestore")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_TI_begin_file("src/csl_intc.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x408)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_intc.c",line 1035,column 1,is_stmt,address _IRQ_globalRestore

	.dwfde $C$DW$CIE, _IRQ_globalRestore
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("value")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: IRQ_globalRestore                                            *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_IRQ_globalRestore:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("value")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV T0, *SP(#0) ; |1035| 
	.dwpsn	file "src/csl_intc.c",line 1036,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L41,AR1 == #0 ; |1036| 
                                        ; branchcc occurs ; |1036| 
	.dwpsn	file "src/csl_intc.c",line 1038,column 9,is_stmt
	NOP                      ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 1042,column 9,is_stmt
	BSET INTM                ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 1044,column 5,is_stmt
        B $C$L42  ; |1044| 
                                        ; branch occurs ; |1044| 
$C$L41:    
	.dwpsn	file "src/csl_intc.c",line 1048,column 9,is_stmt
	NOP                      ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 1052,column 9,is_stmt
	BCLR INTM                ;====> CODE AUTO-GENERATED by CSL
	.dwpsn	file "src/csl_intc.c",line 1055,column 1,is_stmt
$C$L42:    
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$105, DW_AT_TI_end_file("src/csl_intc.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x41f)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$109, DW_AT_name("funcAddr")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$110, DW_AT_name("funcArg")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$111, DW_AT_name("ierMask")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_ierMask")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$112, DW_AT_name("cacheCtrl")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_cacheCtrl")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_IRQ_Dispatch")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x08)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$113, DW_AT_name("funcAddr")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$114, DW_AT_name("funcArg")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$115, DW_AT_name("ierMask")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_ierMask")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$116, DW_AT_name("cacheCtrl")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_cacheCtrl")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_IRQ_Config")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x17)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x84)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$117, DW_AT_name("IrqDispatchTable")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_IrqDispatchTable")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$118, DW_AT_name("IrqIntTable")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_IrqIntTable")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$119, DW_AT_name("IrqEventTable")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_IrqEventTable")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$120, DW_AT_name("biosPresent")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_biosPresent")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_IrqDataObj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x4c)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$121, DW_AT_name("IER0")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_IER0")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$122, DW_AT_name("IFR0")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_IFR0")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$123, DW_AT_name("ST0_55")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_ST0_55")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$124, DW_AT_name("ST1_55")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_ST1_55")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$125, DW_AT_name("ST3_55")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_ST3_55")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$126, DW_AT_name("RSVD0")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$127, DW_AT_name("IER1")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_IER1")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$128, DW_AT_name("IFR1")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_IFR1")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$129, DW_AT_name("RSVD1")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$130, DW_AT_name("IVPD")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_IVPD")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$131, DW_AT_name("IVPH")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_IVPH")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$132, DW_AT_name("ST2_55")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_ST2_55")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x4b]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CpuRegs")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$133	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$37)
$C$DW$T$38	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$133)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x17)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CpuRegsOvly")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)

$C$DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("IRQ_IsrPtr")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
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
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$134	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$28)
$C$DW$T$30	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$134)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x40)
$C$DW$135	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$135, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$136	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$136, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$32

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
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x40)
$C$DW$137	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$137, DW_AT_upper_bound(0x1f)
	.dwendtag $C$DW$T$27

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)
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

$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg0]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg1]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg2]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg3]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg4]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg5]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg6]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg7]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg8]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg9]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg10]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg11]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg12]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg13]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg14]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg15]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg16]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg17]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg18]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg19]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg20]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg21]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg22]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg23]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg24]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg25]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg26]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg27]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg28]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg29]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg30]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg31]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x20]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x21]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x22]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x23]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x24]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x25]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x26]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x27]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x28]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x29]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x30]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x31]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x32]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x33]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x34]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x35]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x36]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x37]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x38]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x39]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x40]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x41]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x42]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x43]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x44]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x45]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x46]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x47]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x48]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x49]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x50]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x51]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x52]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x53]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x54]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x55]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x56]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x57]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x58]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x59]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

