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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_lcdc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$62)
	.dwendtag $C$DW$1

;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/174077vrWT2 
	.sect	".text"
	.global	_LCD_init

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_init")
	.dwattr $C$DW$3, DW_AT_low_pc(_LCD_init)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_LCD_init")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("src/csl_lcdc.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x5e)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_lcdc.c",line 95,column 1,is_stmt,address _LCD_init

	.dwfde $C$DW$CIE, _LCD_init
;*******************************************************************************
;* FUNCTION NAME: LCD_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_LCD_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "src/csl_lcdc.c",line 99,column 5,is_stmt
        AND #0xfffe, *port(#7171) ; |99| 
	.dwpsn	file "src/csl_lcdc.c",line 101,column 2,is_stmt
        MOV #0, AC0 ; |101| 
        MOV *port(#7172), AR1 ; |101| 
        BSET @#5, AC0 ; |101| 
        MOV AC0, *port(#7172) ; |101| 
	.dwpsn	file "src/csl_lcdc.c",line 103,column 5,is_stmt
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$4, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |103| 
||      MOV #0, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |103| 
	.dwpsn	file "src/csl_lcdc.c",line 105,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_lcdc.c",line 106,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$3, DW_AT_TI_end_file("src/csl_lcdc.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.global	_LCD_open

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_open")
	.dwattr $C$DW$6, DW_AT_low_pc(_LCD_open)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_LCD_open")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$6, DW_AT_TI_begin_file("src/csl_lcdc.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_lcdc.c",line 158,column 1,is_stmt,address _LCD_open

	.dwfde $C$DW$CIE, _LCD_open
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("instanceNum")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_instanceNum")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pLcdcObj")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pLcdcObj")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg17]
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: LCD_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_LCD_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("instanceNum")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_instanceNum")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("pLcdcObj")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_pLcdcObj")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |158| 
	.dwpsn	file "src/csl_lcdc.c",line 161,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L1,AR1 != #0 ; |161| 
                                        ; branchcc occurs ; |161| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 == #0 ; |161| 
                                        ; branchcc occurs ; |161| 
	.dwpsn	file "src/csl_lcdc.c",line 163,column 9,is_stmt
        MOV *SP(#0), AR1 ; |163| 
        MOV AR1, *AR3(short(#1)) ; |163| 
	.dwpsn	file "src/csl_lcdc.c",line 164,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #11776, *AR3 ; |164| 
	.dwpsn	file "src/csl_lcdc.c",line 165,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_lcdc.c",line 166,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |166| 
	.dwpsn	file "src/csl_lcdc.c",line 167,column 5,is_stmt
        B $C$L2   ; |167| 
                                        ; branch occurs ; |167| 
$C$L1:    
	.dwpsn	file "src/csl_lcdc.c",line 170,column 9,is_stmt
        MOV #0, AC0 ; |170| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_lcdc.c",line 171,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |171| 
$C$L2:    
	.dwpsn	file "src/csl_lcdc.c",line 173,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "src/csl_lcdc.c",line 174,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$6, DW_AT_TI_end_file("src/csl_lcdc.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0xae)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.global	_LCD_setup

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_setup")
	.dwattr $C$DW$15, DW_AT_low_pc(_LCD_setup)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_LCD_setup")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("src/csl_lcdc.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x100)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_lcdc.c",line 259,column 1,is_stmt,address _LCD_setup

	.dwfde $C$DW$CIE, _LCD_setup
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg17]
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("setup")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_setup")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: LCD_setup                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_LCD_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("setup")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_setup")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("tempVar")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_tempVar")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_lcdc.c",line 262,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |262| 
                                        ; branchcc occurs ; |262| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L5,AC0 != #0 ; |262| 
                                        ; branchcc occurs ; |262| 
	.dwpsn	file "src/csl_lcdc.c",line 265,column 5,is_stmt
$C$L3:    
	.dwpsn	file "src/csl_lcdc.c",line 268,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L4,AC0 != #0 ; |268| 
                                        ; branchcc occurs ; |268| 
	.dwpsn	file "src/csl_lcdc.c",line 270,column 13,is_stmt
        MOV #-5, T0
        B $C$L12  ; |270| 
                                        ; branch occurs ; |270| 
$C$L4:    
	.dwpsn	file "src/csl_lcdc.c",line 274,column 13,is_stmt
        MOV #-6, T0
        B $C$L12  ; |274| 
                                        ; branch occurs ; |274| 
$C$L5:    
	.dwpsn	file "src/csl_lcdc.c",line 279,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |279| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |279| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |279| 
        BCLR @#9, AR1 ; |279| 
        BSET @#9, AR1 ; |279| 
        MOV AR1, port(*AR3(T0)) ; |279| 
	.dwpsn	file "src/csl_lcdc.c",line 280,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |280| 
        MOV port(*AR3(T0)), AR1 ; |280| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |280| 
        BCLR @#8, AR1 ; |280| 
        BSET @#8, AR1 ; |280| 
        MOV AR1, port(*AR3(T0)) ; |280| 
	.dwpsn	file "src/csl_lcdc.c",line 281,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |281| 
        MOV port(*AR3(T0)), AR1 ; |281| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |281| 
        BCLR @#0, AR1 ; |281| 
        BSET @#0, AR1 ; |281| 
        MOV AR1, port(*AR3(T0)) ; |281| 
	.dwpsn	file "src/csl_lcdc.c",line 284,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |284| 
        MOV port(*AR3(short(#4))), AR1 ; |284| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |284| 
        BCLR @#0, AR1 ; |284| 
        MOV AR1, port(*AR3(short(#4))) ; |284| 
	.dwpsn	file "src/csl_lcdc.c",line 290,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |290| 
        MOV AR1, *SP(#4) ; |290| 
	.dwpsn	file "src/csl_lcdc.c",line 291,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |291| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |291| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)) << #10, AC0 ; |291| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |291| 
        BCLR @#10, AR1 ; |291| 
        AND #0x0400, AC0, AR2 ; |291| 
        OR AR1, AR2 ; |291| 
        MOV AR2, port(*AR3(T0)) ; |291| 
	.dwpsn	file "src/csl_lcdc.c",line 294,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |294| 
        MOV port(*AR3(T0)), AR1 ; |294| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfff8, AR1, AR2 ; |294| 
        MOV *AR3(short(#7)), AR1 ; |294| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |294| 
        AND #0x0007, AR1, AR1 ; |294| 
        OR AR2, AR1 ; |294| 
        MOV AR1, port(*AR3(T0)) ; |294| 
	.dwpsn	file "src/csl_lcdc.c",line 297,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |297| 
        MOV uns(low_byte(port(*AR3(short(#4))))), AR1 ; |297| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AC0 ; |297| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |297| 
        SFTL AC0, #8, AC0 ; |297| 
        AND #0xff00, AC0, AR2 ; |297| 
        OR AR1, AR2 ; |297| 
        MOV AR2, port(*AR3(short(#4))) ; |297| 
	.dwpsn	file "src/csl_lcdc.c",line 300,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |300| 
        MOV port(*AR3(T0)), AR1 ; |300| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)) << #9, AC0 ; |300| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |300| 
        BCLR @#9, AR1 ; |300| 
        AND #0x0200, AC0, AR2 ; |300| 
        OR AR1, AR2 ; |300| 
        MOV AR2, port(*AR3(T0)) ; |300| 
	.dwpsn	file "src/csl_lcdc.c",line 303,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |303| 
        AND #0xff7f, port(*AR3(T0)) ; |303| 
	.dwpsn	file "src/csl_lcdc.c",line 304,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |304| 
        AND #0xffbf, port(*AR3(T0)) ; |304| 
	.dwpsn	file "src/csl_lcdc.c",line 305,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |305| 
        AND #0xffdf, port(*AR3(T0)) ; |305| 
	.dwpsn	file "src/csl_lcdc.c",line 306,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |306| 
        AND #0xffef, port(*AR3(T0)) ; |306| 
	.dwpsn	file "src/csl_lcdc.c",line 307,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |307| 
        AND #0xfff7, port(*AR3(T0)) ; |307| 
	.dwpsn	file "src/csl_lcdc.c",line 308,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |308| 
        MOV *SP(#4), AC1 ; |308| 
        MOV port(*AR3(T0)), AC0 ; |308| 
        OR AC1 << #3, AC0 ; |308| 
        MOV AC0, port(*AR3(T0)) ; |308| 
	.dwpsn	file "src/csl_lcdc.c",line 311,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |311| 
        MOV port(*AR3(T0)), AR1 ; |311| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #8, AC0 ; |311| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |311| 
        BCLR @#8, AR1 ; |311| 
        AND #0x0100, AC0, AR2 ; |311| 
        OR AR1, AR2 ; |311| 
        MOV AR2, port(*AR3(T0)) ; |311| 
	.dwpsn	file "src/csl_lcdc.c",line 315,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, AR2
        MOV *AR3(#15), AR1 ; |315| 
        CMP AR2 != AR1, TC1 ; |315| 
        BCC $C$L8,TC1 ; |315| 
                                        ; branchcc occurs ; |315| 
	.dwpsn	file "src/csl_lcdc.c",line 318,column 13,is_stmt
        MOV *AR3(#11), AR1 ; |318| 
        MOV AR1, *SP(#4) ; |318| 
	.dwpsn	file "src/csl_lcdc.c",line 320,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |320| 
        MOV *AR3, AR3 ; |320| 
        MOV port(*AR3(T0)), AR1 ; |320| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#12), AC0 ; |320| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |320| 

        AND #0xf03f, AR1, AR2 ; |320| 
||      SFTL AC0, #6, AC0 ; |320| 

        AND #0x0fc0, AC0, AR1 ; |320| 
        OR AR2, AR1 ; |320| 
        MOV AR1, port(*AR3(T0)) ; |320| 
	.dwpsn	file "src/csl_lcdc.c",line 324,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |324| 
        MOV port(*AR3(T0)), AR1 ; |324| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#13), AC0 ; |324| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |324| 

        AND #0xffc3, AR1, AR2 ; |324| 
||      SFTL AC0, #2, AC0 ; |324| 

        AND #0x003c, AC0, AR1 ; |324| 
        OR AR2, AR1 ; |324| 
        MOV AR1, port(*AR3(T0)) ; |324| 
	.dwpsn	file "src/csl_lcdc.c",line 328,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |328| 
        MOV port(*AR3(T0)), AR1 ; |328| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfffc, AR1, AR2 ; |328| 
        MOV *AR3(#14), AR1 ; |328| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |328| 
        AND #0x0003, AR1, AR1 ; |328| 
        OR AR2, AR1 ; |328| 
        MOV AR1, port(*AR3(T0)) ; |328| 
	.dwpsn	file "src/csl_lcdc.c",line 331,column 13,is_stmt
        MOV #16, AR2 ; |331| 
        MOV *SP(#4), AR1 ; |331| 
        CMPU AR1 < AR2, TC1 ; |331| 
        BCC $C$L6,TC1 ; |331| 
                                        ; branchcc occurs ; |331| 
	.dwpsn	file "src/csl_lcdc.c",line 333,column 17,is_stmt
        SUB #15, *SP(#4) ; |333| 
	.dwpsn	file "src/csl_lcdc.c",line 334,column 5,is_stmt
        MOV uns(*SP(#4)), AC0 ; |334| 
        SFTS AC0, #-4, AC0 ; |334| 
        MOV AC0, *SP(#4) ; |334| 
	.dwpsn	file "src/csl_lcdc.c",line 335,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |335| 
        OR #0xf000, port(*AR3(T0)) ; |335| 
	.dwpsn	file "src/csl_lcdc.c",line 338,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, T0 ; |338| 
        MOV *AR3, AR3 ; |338| 
        MOV port(*AR3(T0)), AR2 ; |338| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |338| 
        MOV *SP(#4), AR1 ; |338| 
        AND #0x0001, AR1, AR1 ; |338| 
        BCLR @#0, AR2 ; |338| 
        OR AR2, AR1 ; |338| 
        MOV AR1, port(*AR3(T0)) ; |338| 
	.dwpsn	file "src/csl_lcdc.c",line 340,column 13,is_stmt
        B $C$L7   ; |340| 
                                        ; branch occurs ; |340| 
$C$L6:    
	.dwpsn	file "src/csl_lcdc.c",line 343,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |343| 
        MOV port(*AR3(T0)), AR1 ; |343| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |343| 
        MOV *SP(#4), AC0 ; |343| 

        AND #0x0fff, AR1, AR2 ; |343| 
||      SFTL AC0, #12, AC0 ; |343| 

        AND #0xf000, AC0, AR1 ; |343| 
        OR AR2, AR1 ; |343| 
        MOV AR1, port(*AR3(T0)) ; |343| 
$C$L7:    
	.dwpsn	file "src/csl_lcdc.c",line 346,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, T0 ; |346| 
        MOV *AR3, AR3 ; |346| 
        MOV port(*AR3(T0)), AR1 ; |346| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AC0 ; |346| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |346| 

        AND #0x07ff, AR1, AR2 ; |346| 
||      SFTL AC0, #11, AC0 ; |346| 

        AND #0xf800, AC0, AR1 ; |346| 
        OR AR2, AR1 ; |346| 
        MOV AR1, port(*AR3(T0)) ; |346| 
	.dwpsn	file "src/csl_lcdc.c",line 350,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |350| 
        MOV port(*AR3(T0)), AR1 ; |350| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#9), AC0 ; |350| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |350| 

        AND #0xf81f, AR1, AR2 ; |350| 
||      SFTL AC0, #5, AC0 ; |350| 

        AND #0x07e0, AC0, AR1 ; |350| 
        OR AR2, AR1 ; |350| 
        MOV AR1, port(*AR3(T0)) ; |350| 
	.dwpsn	file "src/csl_lcdc.c",line 354,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |354| 
        MOV port(*AR3(T0)), AR1 ; |354| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xffe1, AR1, AR2 ; |354| 
        MOV *AR3(#10), AR1 ; |354| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |354| 
        SFTL AR1, #1 ; |354| 
        AND #0x001e, AR1, AR1 ; |354| 
        OR AR2, AR1 ; |354| 
        MOV AR1, port(*AR3(T0)) ; |354| 
	.dwpsn	file "src/csl_lcdc.c",line 357,column 9,is_stmt
        B $C$L11  ; |357| 
                                        ; branch occurs ; |357| 
$C$L8:    
	.dwpsn	file "src/csl_lcdc.c",line 361,column 13,is_stmt
        MOV *AR3(#19), AR1 ; |361| 
        MOV AR1, *SP(#4) ; |361| 
	.dwpsn	file "src/csl_lcdc.c",line 362,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |362| 
        MOV *AR3, AR3 ; |362| 
        MOV port(*AR3(T0)), AR1 ; |362| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#20), AC0 ; |362| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |362| 

        AND #0xf03f, AR1, AR2 ; |362| 
||      SFTL AC0, #6, AC0 ; |362| 

        AND #0x0fc0, AC0, AR1 ; |362| 
        OR AR2, AR1 ; |362| 
        MOV AR1, port(*AR3(T0)) ; |362| 
	.dwpsn	file "src/csl_lcdc.c",line 366,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |366| 
        MOV port(*AR3(T0)), AR1 ; |366| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#21), AC0 ; |366| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |366| 

        AND #0xffc3, AR1, AR2 ; |366| 
||      SFTL AC0, #2, AC0 ; |366| 

        AND #0x003c, AC0, AR1 ; |366| 
        OR AR2, AR1 ; |366| 
        MOV AR1, port(*AR3(T0)) ; |366| 
	.dwpsn	file "src/csl_lcdc.c",line 370,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |370| 
        MOV port(*AR3(T0)), AR1 ; |370| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfffc, AR1, AR2 ; |370| 
        MOV *AR3(#22), AR1 ; |370| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |370| 
        AND #0x0003, AR1, AR1 ; |370| 
        OR AR2, AR1 ; |370| 
        MOV AR1, port(*AR3(T0)) ; |370| 
	.dwpsn	file "src/csl_lcdc.c",line 373,column 13,is_stmt
        MOV #16, AR2 ; |373| 
        MOV *SP(#4), AR1 ; |373| 
        CMPU AR1 < AR2, TC1 ; |373| 
        BCC $C$L9,TC1 ; |373| 
                                        ; branchcc occurs ; |373| 
	.dwpsn	file "src/csl_lcdc.c",line 375,column 17,is_stmt
        SUB #15, *SP(#4) ; |375| 
	.dwpsn	file "src/csl_lcdc.c",line 376,column 5,is_stmt
        MOV uns(*SP(#4)), AC0 ; |376| 
        SFTS AC0, #-4, AC0 ; |376| 
        MOV AC0, *SP(#4) ; |376| 
	.dwpsn	file "src/csl_lcdc.c",line 377,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |377| 
        OR #0xf000, port(*AR3(T0)) ; |377| 
	.dwpsn	file "src/csl_lcdc.c",line 380,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #29, T0 ; |380| 
        MOV *AR3, AR3 ; |380| 
        MOV port(*AR3(T0)), AR2 ; |380| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |380| 
        MOV *SP(#4), AR1 ; |380| 
        AND #0x0001, AR1, AR1 ; |380| 
        BCLR @#0, AR2 ; |380| 
        OR AR2, AR1 ; |380| 
        MOV AR1, port(*AR3(T0)) ; |380| 
	.dwpsn	file "src/csl_lcdc.c",line 382,column 13,is_stmt
        B $C$L10  ; |382| 
                                        ; branch occurs ; |382| 
$C$L9:    
	.dwpsn	file "src/csl_lcdc.c",line 385,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |385| 
        MOV port(*AR3(T0)), AR1 ; |385| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |385| 
        MOV *SP(#4), AC0 ; |385| 

        AND #0x0fff, AR1, AR2 ; |385| 
||      SFTL AC0, #12, AC0 ; |385| 

        AND #0xf000, AC0, AR1 ; |385| 
        OR AR2, AR1 ; |385| 
        MOV AR1, port(*AR3(T0)) ; |385| 
$C$L10:    
	.dwpsn	file "src/csl_lcdc.c",line 388,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #29, T0 ; |388| 
        MOV *AR3, AR3 ; |388| 
        MOV port(*AR3(T0)), AR1 ; |388| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#16), AC0 ; |388| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |388| 

        AND #0x07ff, AR1, AR2 ; |388| 
||      SFTL AC0, #11, AC0 ; |388| 

        AND #0xf800, AC0, AR1 ; |388| 
        OR AR2, AR1 ; |388| 
        MOV AR1, port(*AR3(T0)) ; |388| 
	.dwpsn	file "src/csl_lcdc.c",line 392,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |392| 
        MOV port(*AR3(T0)), AR1 ; |392| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#17), AC0 ; |392| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |392| 

        AND #0xf81f, AR1, AR2 ; |392| 
||      SFTL AC0, #5, AC0 ; |392| 

        AND #0x07e0, AC0, AR1 ; |392| 
        OR AR2, AR1 ; |392| 
        MOV AR1, port(*AR3(T0)) ; |392| 
	.dwpsn	file "src/csl_lcdc.c",line 396,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |396| 
        MOV port(*AR3(T0)), AR1 ; |396| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xffe1, AR1, AR2 ; |396| 
        MOV *AR3(#18), AR1 ; |396| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |396| 
        SFTL AR1, #1 ; |396| 
        AND #0x001e, AR1, AR1 ; |396| 
        OR AR2, AR1 ; |396| 
        MOV AR1, port(*AR3(T0)) ; |396| 
$C$L11:    
	.dwpsn	file "src/csl_lcdc.c",line 401,column 5,is_stmt
        MOV #0, T0
$C$L12:    
	.dwpsn	file "src/csl_lcdc.c",line 402,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$15, DW_AT_TI_end_file("src/csl_lcdc.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x192)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.global	_LCD_configDMA

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_configDMA")
	.dwattr $C$DW$22, DW_AT_low_pc(_LCD_configDMA)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_LCD_configDMA")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("src/csl_lcdc.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x1f9)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_lcdc.c",line 508,column 1,is_stmt,address _LCD_configDMA

	.dwfde $C$DW$CIE, _LCD_configDMA
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pconfigDma")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_pconfigDma")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: LCD_configDMA                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_LCD_configDMA:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("pconfigDma")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_pconfigDma")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("tmpAddrBase")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_tmpAddrBase")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("tmpAddrCeil")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_tmpAddrCeil")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("tmpAddrLSB")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_tmpAddrLSB")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("tmpAddrMSB")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_tmpAddrMSB")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_lcdc.c",line 514,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L13,AC0 == #0 ; |514| 
                                        ; branchcc occurs ; |514| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L15,AC0 != #0 ; |514| 
                                        ; branchcc occurs ; |514| 
	.dwpsn	file "src/csl_lcdc.c",line 517,column 5,is_stmt
$C$L13:    
	.dwpsn	file "src/csl_lcdc.c",line 520,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L14,AC0 != #0 ; |520| 
                                        ; branchcc occurs ; |520| 
	.dwpsn	file "src/csl_lcdc.c",line 522,column 13,is_stmt
        MOV #-5, T0
        B $C$L30  ; |522| 
                                        ; branch occurs ; |522| 
$C$L14:    
	.dwpsn	file "src/csl_lcdc.c",line 526,column 13,is_stmt
        MOV #-6, T0
        B $C$L30  ; |526| 
                                        ; branch occurs ; |526| 
$C$L15:    
	.dwpsn	file "src/csl_lcdc.c",line 530,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |530| 
        MOV *AR3, AR3 ; |530| 
        MOV port(*AR3(T0)), AR1 ; |530| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3 << #4, AC0 ; |530| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |530| 
        AND #0xff8f, AR1, AR2 ; |530| 
        AND #0x0070, AC0, AR1 ; |530| 
        OR AR2, AR1 ; |530| 
        MOV AR1, port(*AR3(T0)) ; |530| 
	.dwpsn	file "src/csl_lcdc.c",line 533,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |533| 
        MOV port(*AR3(T0)), AR1 ; |533| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #2, AC0 ; |533| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |533| 
        BCLR @#2, AR1 ; |533| 
        AND #0x0004, AC0, AR2 ; |533| 
        OR AR1, AR2 ; |533| 
        MOV AR2, port(*AR3(T0)) ; |533| 
	.dwpsn	file "src/csl_lcdc.c",line 536,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |536| 
        MOV port(*AR3(T0)), AR2 ; |536| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |536| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |536| 
        SFTL AR1, #1 ; |536| 
        BCLR @#1, AR2 ; |536| 
        AND #0x0002, AR1, AR1 ; |536| 
        OR AR2, AR1 ; |536| 
        MOV AR1, port(*AR3(T0)) ; |536| 
	.dwpsn	file "src/csl_lcdc.c",line 539,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |539| 
        MOV port(*AR3(T0)), AR2 ; |539| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |539| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |539| 
        BCLR @#0, AR2 ; |539| 
        AND #0x0001, AR1, AR1 ; |539| 
        OR AR2, AR1 ; |539| 
        MOV AR1, port(*AR3(T0)) ; |539| 
	.dwpsn	file "src/csl_lcdc.c",line 542,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |542| 
        MOV port(*AR3(T0)), AR1 ; |542| 

        AND #0x0001, AR1, AR1 ; |542| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |542| 
        BCC $C$L20,TC1 ; |542| 
                                        ; branchcc occurs ; |542| 
	.dwpsn	file "src/csl_lcdc.c",line 546,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |546| 
        MOV AC0, dbl(*SP(#4)) ; |546| 
	.dwpsn	file "src/csl_lcdc.c",line 547,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |547| 
        MOV AC0, dbl(*SP(#6)) ; |547| 
	.dwpsn	file "src/csl_lcdc.c",line 549,column 9,is_stmt

        MOV #0, AC0 ; |549| 
||      MOV dbl(*SP(#4)), AC1 ; |549| 

        OR #0x8000, AC0, AC0 ; |549| 
        CMPU AC1 < AC0, TC1 ; |549| 
        BCC $C$L16,TC1 ; |549| 
                                        ; branchcc occurs ; |549| 
        AMOV #163839, XAR3 ; |549| 
        MOV dbl(*SP(#4)), AC1 ; |549| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |549| 
        BCC $C$L16,TC1 ; |549| 
                                        ; branchcc occurs ; |549| 
	.dwpsn	file "src/csl_lcdc.c",line 552,column 13,is_stmt
        AMOV #524288, XAR3 ; |552| 
        MOV dbl(*SP(#4)), AC1 ; |552| 

        SFTL AC1, #1 ; |552| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |552| 
        MOV AC0, dbl(*SP(#4)) ; |552| 
	.dwpsn	file "src/csl_lcdc.c",line 554,column 9,is_stmt
        B $C$L17  ; |554| 
                                        ; branch occurs ; |554| 
$C$L16:    
	.dwpsn	file "src/csl_lcdc.c",line 557,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |557| 
                                        ; branch occurs ; |557| 
$C$L17:    
	.dwpsn	file "src/csl_lcdc.c",line 561,column 9,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |561| 
||      MOV #0, AC0 ; |561| 

        OR #0x8000, AC0, AC0 ; |561| 
        CMPU AC1 < AC0, TC1 ; |561| 
        BCC $C$L18,TC1 ; |561| 
                                        ; branchcc occurs ; |561| 
        AMOV #163839, XAR3 ; |561| 
        MOV dbl(*SP(#6)), AC1 ; |561| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |561| 
        BCC $C$L18,TC1 ; |561| 
                                        ; branchcc occurs ; |561| 
	.dwpsn	file "src/csl_lcdc.c",line 564,column 13,is_stmt
        AMOV #524288, XAR3 ; |564| 
        MOV dbl(*SP(#6)), AC1 ; |564| 

        SFTL AC1, #1 ; |564| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |564| 
        MOV AC0, dbl(*SP(#6)) ; |564| 
	.dwpsn	file "src/csl_lcdc.c",line 566,column 9,is_stmt
        B $C$L19  ; |566| 
                                        ; branch occurs ; |566| 
$C$L18:    
	.dwpsn	file "src/csl_lcdc.c",line 569,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |569| 
                                        ; branch occurs ; |569| 
$C$L19:    
	.dwpsn	file "src/csl_lcdc.c",line 572,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |572| 
        AND #0xffff, AC0, AC0 ; |572| 
        MOV AC0, *SP(#8) ; |572| 
	.dwpsn	file "src/csl_lcdc.c",line 573,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |573| 
        MOV HI(AC0), *SP(#9) ; |573| 
	.dwpsn	file "src/csl_lcdc.c",line 574,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |574| 
        MOV *AR3, AR3 ; |574| 
        MOV *SP(#8), AR1 ; |574| 
        MOV AR1, port(*AR3(T0)) ; |574| 
	.dwpsn	file "src/csl_lcdc.c",line 575,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |575| 
        MOV *AR3, AR3 ; |575| 
        MOV *SP(#9), AR1 ; |575| 
        MOV AR1, port(*AR3(T0)) ; |575| 
	.dwpsn	file "src/csl_lcdc.c",line 577,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |577| 
        AND #0xffff, AC0, AC0 ; |577| 
        MOV AC0, *SP(#8) ; |577| 
	.dwpsn	file "src/csl_lcdc.c",line 578,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |578| 
        MOV HI(AC0), *SP(#9) ; |578| 
	.dwpsn	file "src/csl_lcdc.c",line 579,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #72, T0 ; |579| 
        MOV *AR3, AR3 ; |579| 
        MOV *SP(#8), AR1 ; |579| 
        MOV AR1, port(*AR3(T0)) ; |579| 
	.dwpsn	file "src/csl_lcdc.c",line 580,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #73, T0 ; |580| 
        MOV *AR3, AR3 ; |580| 
        MOV *SP(#9), AR1 ; |580| 
        MOV AR1, port(*AR3(T0)) ; |580| 
	.dwpsn	file "src/csl_lcdc.c",line 581,column 5,is_stmt
        B $C$L29  ; |581| 
                                        ; branch occurs ; |581| 
$C$L20:    
	.dwpsn	file "src/csl_lcdc.c",line 585,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |585| 
        MOV AC0, dbl(*SP(#4)) ; |585| 
	.dwpsn	file "src/csl_lcdc.c",line 586,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |586| 
        MOV AC0, dbl(*SP(#6)) ; |586| 
	.dwpsn	file "src/csl_lcdc.c",line 588,column 9,is_stmt

        MOV #0, AC0 ; |588| 
||      MOV dbl(*SP(#4)), AC1 ; |588| 

        OR #0x8000, AC0, AC0 ; |588| 
        CMPU AC1 < AC0, TC1 ; |588| 
        BCC $C$L21,TC1 ; |588| 
                                        ; branchcc occurs ; |588| 
        AMOV #163839, XAR3 ; |588| 
        MOV dbl(*SP(#4)), AC1 ; |588| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |588| 
        BCC $C$L21,TC1 ; |588| 
                                        ; branchcc occurs ; |588| 
	.dwpsn	file "src/csl_lcdc.c",line 591,column 13,is_stmt
        AMOV #524288, XAR3 ; |591| 
        MOV dbl(*SP(#4)), AC1 ; |591| 

        SFTL AC1, #1 ; |591| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |591| 
        MOV AC0, dbl(*SP(#4)) ; |591| 
	.dwpsn	file "src/csl_lcdc.c",line 593,column 9,is_stmt
        B $C$L22  ; |593| 
                                        ; branch occurs ; |593| 
$C$L21:    
	.dwpsn	file "src/csl_lcdc.c",line 596,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |596| 
                                        ; branch occurs ; |596| 
$C$L22:    
	.dwpsn	file "src/csl_lcdc.c",line 600,column 9,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |600| 
||      MOV #0, AC0 ; |600| 

        OR #0x8000, AC0, AC0 ; |600| 
        CMPU AC1 < AC0, TC1 ; |600| 
        BCC $C$L23,TC1 ; |600| 
                                        ; branchcc occurs ; |600| 
        AMOV #163839, XAR3 ; |600| 
        MOV dbl(*SP(#6)), AC1 ; |600| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |600| 
        BCC $C$L23,TC1 ; |600| 
                                        ; branchcc occurs ; |600| 
	.dwpsn	file "src/csl_lcdc.c",line 603,column 13,is_stmt
        AMOV #524288, XAR3 ; |603| 
        MOV dbl(*SP(#6)), AC1 ; |603| 

        SFTL AC1, #1 ; |603| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |603| 
        MOV AC0, dbl(*SP(#6)) ; |603| 
	.dwpsn	file "src/csl_lcdc.c",line 605,column 9,is_stmt
        B $C$L24  ; |605| 
                                        ; branch occurs ; |605| 
$C$L23:    
	.dwpsn	file "src/csl_lcdc.c",line 608,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |608| 
                                        ; branch occurs ; |608| 
$C$L24:    
	.dwpsn	file "src/csl_lcdc.c",line 611,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |611| 
        AND #0xffff, AC0, AC0 ; |611| 
        MOV AC0, *SP(#8) ; |611| 
	.dwpsn	file "src/csl_lcdc.c",line 612,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |612| 
        MOV HI(AC0), *SP(#9) ; |612| 
	.dwpsn	file "src/csl_lcdc.c",line 613,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |613| 
        MOV *AR3, AR3 ; |613| 
        MOV *SP(#8), AR1 ; |613| 
        MOV AR1, port(*AR3(T0)) ; |613| 
	.dwpsn	file "src/csl_lcdc.c",line 614,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |614| 
        MOV *AR3, AR3 ; |614| 
        MOV *SP(#9), AR1 ; |614| 
        MOV AR1, port(*AR3(T0)) ; |614| 
	.dwpsn	file "src/csl_lcdc.c",line 616,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |616| 
        AND #0xffff, AC0, AC0 ; |616| 
        MOV AC0, *SP(#8) ; |616| 
	.dwpsn	file "src/csl_lcdc.c",line 617,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |617| 
        MOV HI(AC0), *SP(#9) ; |617| 
	.dwpsn	file "src/csl_lcdc.c",line 618,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #72, T0 ; |618| 
        MOV *AR3, AR3 ; |618| 
        MOV *SP(#8), AR1 ; |618| 
        MOV AR1, port(*AR3(T0)) ; |618| 
	.dwpsn	file "src/csl_lcdc.c",line 619,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #73, T0 ; |619| 
        MOV *AR3, AR3 ; |619| 
        MOV *SP(#9), AR1 ; |619| 
        MOV AR1, port(*AR3(T0)) ; |619| 
	.dwpsn	file "src/csl_lcdc.c",line 622,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |622| 
        MOV AC0, dbl(*SP(#4)) ; |622| 
	.dwpsn	file "src/csl_lcdc.c",line 623,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), AC0 ; |623| 
        MOV AC0, dbl(*SP(#6)) ; |623| 
	.dwpsn	file "src/csl_lcdc.c",line 625,column 9,is_stmt
        MOV #0, AC0 ; |625| 
        OR #0x8000, AC0, AC0 ; |625| 
        MOV dbl(*SP(#4)), AC1 ; |625| 
        CMPU AC1 < AC0, TC1 ; |625| 
        BCC $C$L25,TC1 ; |625| 
                                        ; branchcc occurs ; |625| 
        AMOV #163839, XAR3 ; |625| 
        MOV dbl(*SP(#4)), AC1 ; |625| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |625| 
        BCC $C$L25,TC1 ; |625| 
                                        ; branchcc occurs ; |625| 
	.dwpsn	file "src/csl_lcdc.c",line 628,column 13,is_stmt
        AMOV #524288, XAR3 ; |628| 
        MOV dbl(*SP(#4)), AC1 ; |628| 

        SFTL AC1, #1 ; |628| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |628| 
        MOV AC0, dbl(*SP(#4)) ; |628| 
	.dwpsn	file "src/csl_lcdc.c",line 630,column 9,is_stmt
        B $C$L26  ; |630| 
                                        ; branch occurs ; |630| 
$C$L25:    
	.dwpsn	file "src/csl_lcdc.c",line 633,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |633| 
                                        ; branch occurs ; |633| 
$C$L26:    
	.dwpsn	file "src/csl_lcdc.c",line 637,column 9,is_stmt

        MOV dbl(*SP(#6)), AC1 ; |637| 
||      MOV #0, AC0 ; |637| 

        OR #0x8000, AC0, AC0 ; |637| 
        CMPU AC1 < AC0, TC1 ; |637| 
        BCC $C$L27,TC1 ; |637| 
                                        ; branchcc occurs ; |637| 
        AMOV #163839, XAR3 ; |637| 
        MOV dbl(*SP(#6)), AC1 ; |637| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |637| 
        BCC $C$L27,TC1 ; |637| 
                                        ; branchcc occurs ; |637| 
	.dwpsn	file "src/csl_lcdc.c",line 640,column 13,is_stmt
        AMOV #524288, XAR3 ; |640| 
        MOV dbl(*SP(#6)), AC1 ; |640| 

        SFTL AC1, #1 ; |640| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |640| 
        MOV AC0, dbl(*SP(#6)) ; |640| 
	.dwpsn	file "src/csl_lcdc.c",line 642,column 9,is_stmt
        B $C$L28  ; |642| 
                                        ; branch occurs ; |642| 
$C$L27:    
	.dwpsn	file "src/csl_lcdc.c",line 645,column 13,is_stmt
        MOV #-9, T0
        B $C$L30  ; |645| 
                                        ; branch occurs ; |645| 
$C$L28:    
	.dwpsn	file "src/csl_lcdc.c",line 648,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |648| 
        AND #0xffff, AC0, AC0 ; |648| 
        MOV AC0, *SP(#8) ; |648| 
	.dwpsn	file "src/csl_lcdc.c",line 649,column 9,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |649| 
        MOV HI(AC0), *SP(#9) ; |649| 
	.dwpsn	file "src/csl_lcdc.c",line 650,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #76, T0 ; |650| 
        MOV *AR3, AR3 ; |650| 
        MOV *SP(#8), AR1 ; |650| 
        MOV AR1, port(*AR3(T0)) ; |650| 
	.dwpsn	file "src/csl_lcdc.c",line 651,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #77, T0 ; |651| 
        MOV *AR3, AR3 ; |651| 
        MOV *SP(#9), AR1 ; |651| 
        MOV AR1, port(*AR3(T0)) ; |651| 
	.dwpsn	file "src/csl_lcdc.c",line 653,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |653| 
        AND #0xffff, AC0, AC0 ; |653| 
        MOV AC0, *SP(#8) ; |653| 
	.dwpsn	file "src/csl_lcdc.c",line 654,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |654| 
        MOV HI(AC0), *SP(#9) ; |654| 
	.dwpsn	file "src/csl_lcdc.c",line 655,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |655| 
        MOV *AR3, AR3 ; |655| 
        MOV *SP(#8), AR1 ; |655| 
        MOV AR1, port(*AR3(T0)) ; |655| 
	.dwpsn	file "src/csl_lcdc.c",line 656,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #81, T0 ; |656| 
        MOV *AR3, AR3 ; |656| 
        MOV *SP(#9), AR1 ; |656| 
        MOV AR1, port(*AR3(T0)) ; |656| 
$C$L29:    
	.dwpsn	file "src/csl_lcdc.c",line 658,column 5,is_stmt
        MOV #0, T0
$C$L30:    
	.dwpsn	file "src/csl_lcdc.c",line 659,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$22, DW_AT_TI_end_file("src/csl_lcdc.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x293)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_LCD_close

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("LCD_close")
	.dwattr $C$DW$32, DW_AT_low_pc(_LCD_close)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_LCD_close")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("src/csl_lcdc.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x2bc)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_lcdc.c",line 702,column 1,is_stmt,address _LCD_close

	.dwfde $C$DW$CIE, _LCD_close
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hLcdc")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: LCD_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_LCD_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("hLcdc")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_hLcdc")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_lcdc.c",line 703,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L31,AC0 != #0 ; |703| 
                                        ; branchcc occurs ; |703| 
	.dwpsn	file "src/csl_lcdc.c",line 705,column 9,is_stmt
        MOV #-5, T0
        B $C$L32  ; |705| 
                                        ; branch occurs ; |705| 
$C$L31:    
	.dwpsn	file "src/csl_lcdc.c",line 709,column 3,is_stmt
        MOV #255, *AR3(short(#1)) ; |709| 
	.dwpsn	file "src/csl_lcdc.c",line 710,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |710| 
	.dwpsn	file "src/csl_lcdc.c",line 711,column 3,is_stmt
        MOV #0, T0
$C$L32:    
	.dwpsn	file "src/csl_lcdc.c",line 713,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$32, DW_AT_TI_end_file("src/csl_lcdc.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x2c9)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_SYS_peripheralReset

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$36	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_FDONE_DISABLE"), DW_AT_const_value(0x00)
$C$DW$37	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_FDONE_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcFdoneCtl")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$38	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS0"), DW_AT_const_value(0x00)
$C$DW$39	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_CS1"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcChipSelect")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$40	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_DMA_DISABLE"), DW_AT_const_value(0x00)
$C$DW$41	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_DMA_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcDmaCtl")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$42	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_SYNC_MPU68"), DW_AT_const_value(0x00)
$C$DW$43	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_MPU68"), DW_AT_const_value(0x01)
$C$DW$44	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_SYNC_MPU80"), DW_AT_const_value(0x02)
$C$DW$45	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_MPU80"), DW_AT_const_value(0x03)
$C$DW$46	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_ASYNC_HITACHI"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcLiddMode")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$47	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_NOT_USE_CS1"), DW_AT_const_value(0x00)
$C$DW$48	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_LIDD_USE_CS1"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcCs1Status")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$49	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST1"), DW_AT_const_value(0x00)
$C$DW$50	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST2"), DW_AT_const_value(0x01)
$C$DW$51	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST4"), DW_AT_const_value(0x02)
$C$DW$52	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST8"), DW_AT_const_value(0x03)
$C$DW$53	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_DMA_BURST16"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcDmaBurst")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$54	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_EOFINT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$55	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_EOFINT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcEofIntCtl")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$56	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_ENDIANESS_LITTLE"), DW_AT_const_value(0x00)
$C$DW$57	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_ENDIANESS_BIG"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcEndianess")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$58	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_FBMODE_SINGLE"), DW_AT_const_value(0x00)
$C$DW$59	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_LCDC_FBMODE_DOUBLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcFrameMode")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$60	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$61	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$62	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x52)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_name("LCDREVMIN")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_LCDREVMIN")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_name("LCDREVMAJ")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_LCDREVMAJ")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$65, DW_AT_name("RSVD0")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_name("LCDCR")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_LCDCR")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$67, DW_AT_name("RSVD1")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_name("LCDSR")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_LCDSR")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$69, DW_AT_name("RSVD2")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$70, DW_AT_name("LCDLIDDCR")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_LCDLIDDCR")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$71, DW_AT_name("RSVD3")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG0")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_LCDLIDDCS0CONFIG1")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$74, DW_AT_name("RSVD4")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("LCDLIDDCS0ADDR")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_LCDLIDDCS0ADDR")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$76, DW_AT_name("RSVD5")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("LCDLIDDCS0DATA")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_LCDLIDDCS0DATA")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$78, DW_AT_name("RSVD6")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG0")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_LCDLIDDCS1CONFIG1")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$81, DW_AT_name("RSVD7")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("LCDLIDDCS1ADDR")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_LCDLIDDCS1ADDR")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$83, DW_AT_name("RSVD8")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("LCDLIDDCS1DATA")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_LCDLIDDCS1DATA")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_name("RSVD9")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("LCDDMACR")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_LCDDMACR")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$87, DW_AT_name("RSVD10")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("LCDDMAFB0BAR0")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_LCDDMAFB0BAR0")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("LCDDMAFB0BAR1")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_LCDDMAFB0BAR1")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$90, DW_AT_name("RSVD11")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("LCDDMAFB0CAR0")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_LCDDMAFB0CAR0")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("LCDDMAFB0CAR1")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_LCDDMAFB0CAR1")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$93, DW_AT_name("RSVD12")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("LCDDMAFB1BAR0")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_LCDDMAFB1BAR0")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_name("LCDDMAFB1BAR1")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_LCDDMAFB1BAR1")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x4d]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$96, DW_AT_name("RSVD13")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$97, DW_AT_name("LCDDMAFB1CAR0")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_LCDDMAFB1CAR0")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_name("LCDDMAFB1CAR1")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_LCDDMAFB1CAR1")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegs")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$99	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$54)
$C$DW$100	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$99)
$C$DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$100)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x10)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcRegsOvly")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x06)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("clkDiv")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_clkDiv")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$102, DW_AT_name("fdoneIntEn")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_fdoneIntEn")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$103, DW_AT_name("dmaCs0Cs1")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_dmaCs0Cs1")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$104, DW_AT_name("dmaEnable")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_dmaEnable")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$105, DW_AT_name("polControl")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_polControl")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$106, DW_AT_name("modeSel")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_modeSel")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcConfigLidd")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x07)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("wSu")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_wSu")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("wStrobe")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_wStrobe")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("wHold")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_wHold")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("rSu")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_rSu")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("rStrobe")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_rStrobe")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("rHold")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_rHold")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("ta")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_ta")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcLiddTiming")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x18)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$114, DW_AT_name("extendSetup")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_extendSetup")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$115, DW_AT_name("config")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$116, DW_AT_name("timingCs0")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_timingCs0")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$117, DW_AT_name("useCs1")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_useCs1")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$118, DW_AT_name("timingCs1")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_timingCs1")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcHwSetup")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x17)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x0c)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$119, DW_AT_name("burstSize")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_burstSize")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$120, DW_AT_name("eofIntEn")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_eofIntEn")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$121, DW_AT_name("bigEndian")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_bigEndian")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$122, DW_AT_name("frameMode")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_frameMode")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$123, DW_AT_name("fb0Base")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_fb0Base")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$124, DW_AT_name("fb0Ceil")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_fb0Ceil")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$125, DW_AT_name("fb1Base")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_fb1Base")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$126, DW_AT_name("fb1Ceil")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_fb1Ceil")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcConfigDma")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x48)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_name("EBSR")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_name("RSVD0")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_name("PCGCR1")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_name("PCGCR2")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("PSRCR")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("PRCR")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$133, DW_AT_name("RSVD1")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_name("TIAFR")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("RSVD2")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_name("ODSCR")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$140, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_name("CCR1")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_name("CCR2")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$146, DW_AT_name("CGCR1")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_name("CGCR2")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$148, DW_AT_name("CGCR3")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_name("CGCR4")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$150, DW_AT_name("CCSSR")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("RSVD3")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_name("ECDR")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("RSVD4")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_name("RSVD5")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$158, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$159, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$160, DW_AT_name("RSVD6")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$161, DW_AT_name("DMAIFR")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$162, DW_AT_name("DMAIER")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$163, DW_AT_name("USBSCR")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_name("ESCR")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$165, DW_AT_name("RSVD7")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$166, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$168, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$171, DW_AT_name("RSVD8")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$180	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$67)
$C$DW$181	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$180)
$C$DW$T$68	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$181)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x10)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$182, DW_AT_name("regs")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$183, DW_AT_name("perNum")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_perNum")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcObj")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x17)
$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_LcdcHandle")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
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
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_InstNum")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_BitMask16")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$184	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$184)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$185	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$185, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x03)
$C$DW$186	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$186, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1b)
$C$DW$187	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$187, DW_AT_upper_bound(0x1a)
	.dwendtag $C$DW$T$23


$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x0e)
$C$DW$188	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$188, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x05)
$C$DW$189	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$189, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$52

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
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
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

$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg0]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg1]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg2]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg3]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg4]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg5]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg6]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg7]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg8]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg9]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg10]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg11]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg12]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg13]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg14]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg15]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg16]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg17]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg18]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg19]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg20]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg21]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg22]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg23]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg24]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg25]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg26]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg27]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg28]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg29]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg30]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg31]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x20]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x21]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x22]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x23]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x24]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x25]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x26]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x27]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x28]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x29]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x30]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x31]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x32]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x33]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x34]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x35]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x36]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x37]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x38]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x39]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x40]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x41]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x42]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x43]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x44]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x45]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x46]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x47]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x48]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x49]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x50]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x51]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x52]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x53]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x54]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x55]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x56]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x57]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x58]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x59]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

