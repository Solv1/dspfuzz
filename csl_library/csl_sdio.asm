;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:11 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_sdio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17549ssJBLt 
	.sect	".text"
	.global	_SDIO_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_SDIO_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SDIO_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x5f)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_sdio.c",line 96,column 1,is_stmt,address _SDIO_init

	.dwfde $C$DW$CIE, _SDIO_init
;*******************************************************************************
;* FUNCTION NAME: SDIO_init                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_sdio.c",line 99,column 5,is_stmt
        MOV #0, *SP(#0) ; |99| 
	.dwpsn	file "src/csl_sdio.c",line 102,column 5,is_stmt
        AND #0xffef, *port(#7170) ; |102| 
	.dwpsn	file "src/csl_sdio.c",line 103,column 5,is_stmt
        AND #0xff7f, *port(#7171) ; |103| 
	.dwpsn	file "src/csl_sdio.c",line 106,column 5,is_stmt
        MOV #0, AC0 ; |106| 
        MOV *port(#7172), AR1 ; |106| 
        BSET @#5, AC0 ; |106| 
        MOV AC0, *port(#7172) ; |106| 
	.dwpsn	file "src/csl_sdio.c",line 107,column 5,is_stmt
        MOV *port(#7173), AR1 ; |107| 
        BCLR @#5, AR1 ; |107| 
        BSET @#5, AR1 ; |107| 
        MOV AR1, *port(#7173) ; |107| 
	.dwpsn	file "src/csl_sdio.c",line 110,column 5,is_stmt
        AND #0xfcff, *port(#7168) ; |110| 
	.dwpsn	file "src/csl_sdio.c",line 112,column 5,is_stmt
        AND #0xf3ff, *port(#7168) ; |112| 
	.dwpsn	file "src/csl_sdio.c",line 114,column 5,is_stmt
        MOV *SP(#0), T0 ; |114| 
	.dwpsn	file "src/csl_sdio.c",line 115,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_SDIO_open

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_open")
	.dwattr $C$DW$4, DW_AT_low_pc(_SDIO_open)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SDIO_open")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_sdio.c",line 171,column 1,is_stmt,address _SDIO_open

	.dwfde $C$DW$CIE, _SDIO_open
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdioContObj")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_pSdioContObj")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg17]
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("instId")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_instId")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_open                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,TC1,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("pSdioContObj")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pSdioContObj")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("instId")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_instId")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |171| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 174,column 5,is_stmt
        MOV #0, AC0 ; |174| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 176,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |176| 
                                        ; branchcc occurs ; |176| 
	.dwpsn	file "src/csl_sdio.c",line 178,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 == #0 ; |178| 
                                        ; branchcc occurs ; |178| 
	.dwpsn	file "src/csl_sdio.c",line 180,column 10,is_stmt
        MOV #-6, *AR3 ; |180| 
$C$L1:    
	.dwpsn	file "src/csl_sdio.c",line 183,column 9,is_stmt
        MOV #0, AC0 ; |183| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 184,column 5,is_stmt
        B $C$L8   ; |184| 
                                        ; branch occurs ; |184| 
$C$L2:    
	.dwpsn	file "src/csl_sdio.c",line 185,column 10,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L6,AC0 != #0 ; |185| 
                                        ; branchcc occurs ; |185| 
	.dwpsn	file "src/csl_sdio.c",line 187,column 3,is_stmt
        MOV #0, AC0 ; |187| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 188,column 2,is_stmt
        B $C$L8   ; |188| 
                                        ; branch occurs ; |188| 
$C$L3:    
	.dwpsn	file "src/csl_sdio.c",line 195,column 17,is_stmt
        MOV #0, *AR3 ; |195| 
	.dwpsn	file "src/csl_sdio.c",line 196,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #14848, *AR3 ; |196| 
	.dwpsn	file "src/csl_sdio.c",line 197,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 198,column 17,is_stmt
        B $C$L7   ; |198| 
                                        ; branch occurs ; |198| 
$C$L4:    
	.dwpsn	file "src/csl_sdio.c",line 203,column 17,is_stmt
        MOV #0, *AR3 ; |203| 
	.dwpsn	file "src/csl_sdio.c",line 204,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #15104, *AR3 ; |204| 
	.dwpsn	file "src/csl_sdio.c",line 205,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 206,column 17,is_stmt
        B $C$L7   ; |206| 
                                        ; branch occurs ; |206| 
$C$L5:    
	.dwpsn	file "src/csl_sdio.c",line 211,column 17,is_stmt
        MOV #-6, *AR3 ; |211| 
	.dwpsn	file "src/csl_sdio.c",line 212,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |212| 
	.dwpsn	file "src/csl_sdio.c",line 213,column 17,is_stmt
        MOV #0, AC0 ; |213| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_sdio.c",line 214,column 17,is_stmt
        B $C$L7   ; |214| 
                                        ; branch occurs ; |214| 
$C$L6:    
	.dwpsn	file "src/csl_sdio.c",line 191,column 9,is_stmt
        MOV *SP(#2), AR1 ; |191| 
        BCC $C$L3,AR1 == #0 ; |191| 
                                        ; branchcc occurs ; |191| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |191| 
        BCC $C$L4,TC1 ; |191| 
                                        ; branchcc occurs ; |191| 
        B $C$L5   ; |191| 
                                        ; branch occurs ; |191| 
$C$L7:    
	.dwpsn	file "src/csl_sdio.c",line 218,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(short(#4)) ; |218| 
	.dwpsn	file "src/csl_sdio.c",line 219,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(short(#5)) ; |219| 
	.dwpsn	file "src/csl_sdio.c",line 222,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3, AR3 ; |222| 
        MOV port(*AR3), AR1 ; |222| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#5)) << #10, AC0 ; |222| 
        MOV *AR3, AR3 ; |222| 
        BCLR @#10, AR1 ; |222| 
        AND #0x0400, AC0, AR2 ; |222| 
        OR AR1, AR2 ; |222| 
        MOV AR2, port(*AR3) ; |222| 
	.dwpsn	file "src/csl_sdio.c",line 226,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3, AR3 ; |226| 
        MOV port(*AR3), AR1 ; |226| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(short(#4)) << #9, AC0 ; |226| 
        MOV *AR3, AR3 ; |226| 
        BCLR @#9, AR1 ; |226| 
        AND #0x0200, AC0, AR2 ; |226| 
        OR AR1, AR2 ; |226| 
        MOV AR2, port(*AR3) ; |226| 
$C$L8:    
	.dwpsn	file "src/csl_sdio.c",line 230,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "src/csl_sdio.c",line 231,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$4, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0xe7)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.global	_SDIO_close

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_close")
	.dwattr $C$DW$13, DW_AT_low_pc(_SDIO_close)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SDIO_close")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sdio.c",line 275,column 1,is_stmt,address _SDIO_close

	.dwfde $C$DW$CIE, _SDIO_close
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_close                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 278,column 5,is_stmt
        MOV #-5, *SP(#2) ; |278| 
	.dwpsn	file "src/csl_sdio.c",line 280,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |280| 

        CMPU AC1 == AC0, TC1 ; |280| 
        BCC $C$L9,TC1 ; |280| 
                                        ; branchcc occurs ; |280| 
	.dwpsn	file "src/csl_sdio.c",line 282,column 9,is_stmt
        MOV #0, *AR3 ; |282| 
	.dwpsn	file "src/csl_sdio.c",line 283,column 9,is_stmt
        MOV #0, AC0 ; |283| 
        MOV AC0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 284,column 9,is_stmt
        MOV #0, *SP(#2) ; |284| 
$C$L9:    
	.dwpsn	file "src/csl_sdio.c",line 287,column 5,is_stmt
        MOV *SP(#2), T0 ; |287| 
	.dwpsn	file "src/csl_sdio.c",line 288,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x120)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_SDIO_config

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_config")
	.dwattr $C$DW$18, DW_AT_low_pc(_SDIO_config)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_SDIO_config")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x157)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sdio.c",line 345,column 1,is_stmt,address _SDIO_config

	.dwfde $C$DW$CIE, _SDIO_config
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdioConfig")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_pSdioConfig")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_config                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("pSdioConfig")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_pSdioConfig")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 348,column 5,is_stmt
        MOV #-5, *SP(#4) ; |348| 
	.dwpsn	file "src/csl_sdio.c",line 350,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |350| 

        CMPU AC1 == AC0, TC1 ; |350| 
        BCC $C$L11,TC1 ; |350| 
                                        ; branchcc occurs ; |350| 
	.dwpsn	file "src/csl_sdio.c",line 352,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |352| 
        BCC $C$L10,TC1 ; |352| 
                                        ; branchcc occurs ; |352| 
	.dwpsn	file "src/csl_sdio.c",line 354,column 13,is_stmt
        MOV *AR3, AR1 ; |354| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |354| 
        MOV AR1, port(*AR3) ; |354| 
	.dwpsn	file "src/csl_sdio.c",line 355,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |355| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |355| 
        MOV AR1, port(*AR3(short(#4))) ; |355| 
	.dwpsn	file "src/csl_sdio.c",line 356,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |356| 
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |356| 
        MOV *AR3, AR3 ; |356| 
        MOV AR1, port(*AR3(T0)) ; |356| 
	.dwpsn	file "src/csl_sdio.c",line 357,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |357| 
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |357| 
        MOV *AR3, AR3 ; |357| 
        MOV AR1, port(*AR3(T0)) ; |357| 
	.dwpsn	file "src/csl_sdio.c",line 358,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |358| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |358| 
        MOV *AR3, AR3 ; |358| 
        MOV AR1, port(*AR3(T0)) ; |358| 
	.dwpsn	file "src/csl_sdio.c",line 359,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |359| 
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |359| 
        MOV *AR3, AR3 ; |359| 
        MOV AR1, port(*AR3(T0)) ; |359| 
	.dwpsn	file "src/csl_sdio.c",line 360,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |360| 
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |360| 
        MOV *AR3, AR3 ; |360| 
        MOV AR1, port(*AR3(T0)) ; |360| 
	.dwpsn	file "src/csl_sdio.c",line 361,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |361| 
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |361| 
        MOV *AR3, AR3 ; |361| 
        MOV AR1, port(*AR3(T0)) ; |361| 
	.dwpsn	file "src/csl_sdio.c",line 362,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |362| 
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |362| 
        MOV *AR3, AR3 ; |362| 
        MOV AR1, port(*AR3(T0)) ; |362| 
	.dwpsn	file "src/csl_sdio.c",line 363,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#9), AR1 ; |363| 
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |363| 
        MOV *AR3, AR3 ; |363| 
        MOV AR1, port(*AR3(T0)) ; |363| 
	.dwpsn	file "src/csl_sdio.c",line 365,column 13,is_stmt
        MOV #0, *SP(#4) ; |365| 
	.dwpsn	file "src/csl_sdio.c",line 366,column 9,is_stmt
        B $C$L11  ; |366| 
                                        ; branch occurs ; |366| 
$C$L10:    
	.dwpsn	file "src/csl_sdio.c",line 369,column 13,is_stmt
        MOV #-6, *SP(#4) ; |369| 
$C$L11:    
	.dwpsn	file "src/csl_sdio.c",line 373,column 5,is_stmt
        MOV *SP(#4), T0 ; |373| 
	.dwpsn	file "src/csl_sdio.c",line 374,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x176)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_SDIO_detectCard

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_detectCard")
	.dwattr $C$DW$25, DW_AT_low_pc(_SDIO_detectCard)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_SDIO_detectCard")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$25, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x1b3)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_sdio.c",line 437,column 1,is_stmt,address _SDIO_detectCard

	.dwfde $C$DW$CIE, _SDIO_detectCard
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg17]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdioCardObj")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_pSdioCardObj")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_detectCard                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_detectCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("pSdioCardObj")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_pSdioCardObj")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("response")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_response")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("ocr")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_ocr")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("resp")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_resp")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("cmd5Timeout")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_cmd5Timeout")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("mem")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_mem")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 21]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 447,column 5,is_stmt
        MOV #0, AC0 ; |447| 
        MOV AC0, dbl(*SP(#4)) ; |447| 
	.dwpsn	file "src/csl_sdio.c",line 448,column 5,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |448| 
	.dwpsn	file "src/csl_sdio.c",line 449,column 5,is_stmt
        MOV AC0, dbl(*SP(#8)) ; |449| 
	.dwpsn	file "src/csl_sdio.c",line 450,column 5,is_stmt
        MOV #-5, *SP(#10) ; |450| 
	.dwpsn	file "src/csl_sdio.c",line 451,column 5,is_stmt
        MOV #0, *SP(#11) ; |451| 
	.dwpsn	file "src/csl_sdio.c",line 452,column 5,is_stmt
        MOV #500, *SP(#20) ; |452| 
	.dwpsn	file "src/csl_sdio.c",line 453,column 5,is_stmt
        MOV #0, *SP(#21) ; |453| 
	.dwpsn	file "src/csl_sdio.c",line 455,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |455| 

        CMPU AC1 == AC0, TC1 ; |455| 
        BCC $C$L27,TC1 ; |455| 
                                        ; branchcc occurs ; |455| 
	.dwpsn	file "src/csl_sdio.c",line 457,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |457| 
        BCC $C$L26,TC1 ; |457| 
                                        ; branchcc occurs ; |457| 
	.dwpsn	file "src/csl_sdio.c",line 459,column 13,is_stmt
        MOV #0, *AR3(#8) ; |459| 
	.dwpsn	file "src/csl_sdio.c",line 460,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_sdio.c",line 462,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |462| 
        MOV port(*AR3), AR1 ; |462| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |462| 
        BCLR @#1, AR1 ; |462| 
        BSET @#1, AR1 ; |462| 
        MOV AR1, port(*AR3) ; |462| 
	.dwpsn	file "src/csl_sdio.c",line 463,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |463| 
        MOV port(*AR3), AR1 ; |463| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |463| 
        BCLR @#0, AR1 ; |463| 
        BSET @#0, AR1 ; |463| 
        MOV AR1, port(*AR3) ; |463| 
	.dwpsn	file "src/csl_sdio.c",line 466,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |466| 
        MOV port(*AR3(short(#4))), AR1 ; |466| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |466| 
        BCLR @#8, AR1 ; |466| 
        MOV AR1, port(*AR3(short(#4))) ; |466| 
	.dwpsn	file "src/csl_sdio.c",line 467,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |467| 
        MOV port(*AR3(short(#4))), AR1 ; |467| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |467| 
        AND #0xff00, AR1, AR1 ; |467| 
        OR #0x0046, AR1, AR1 ; |467| 
        MOV AR1, port(*AR3(short(#4))) ; |467| 
	.dwpsn	file "src/csl_sdio.c",line 470,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |470| 
        MOV *AR3, AR3 ; |470| 
        MOV #65535, port(*AR3(T0)) ; |470| 
	.dwpsn	file "src/csl_sdio.c",line 471,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |471| 
        MOV *AR3, AR3 ; |471| 
        MOV #65535, port(*AR3(T0)) ; |471| 
	.dwpsn	file "src/csl_sdio.c",line 473,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |473| 
        MOV port(*AR3), AR1 ; |473| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |473| 
        BCLR @#2, AR1 ; |473| 
        MOV AR1, port(*AR3) ; |473| 
	.dwpsn	file "src/csl_sdio.c",line 475,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |475| 
        MOV port(*AR3), AR1 ; |475| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |475| 
        BCLR @#1, AR1 ; |475| 
        MOV AR1, port(*AR3) ; |475| 
	.dwpsn	file "src/csl_sdio.c",line 476,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |476| 
        MOV port(*AR3), AR1 ; |476| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |476| 
        BCLR @#0, AR1 ; |476| 
        MOV AR1, port(*AR3) ; |476| 
	.dwpsn	file "src/csl_sdio.c",line 479,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |479| 
        MOV *AR3, AR3 ; |479| 
        MOV port(*AR3(T0)), AR1 ; |479| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |479| 
        AND #0xffc0, AR1, AC0 ; |479| 
        MOV AC0, port(*AR3(T0)) ; |479| 
	.dwpsn	file "src/csl_sdio.c",line 481,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |481| 
        MOV *AR3, AR3 ; |481| 
        MOV port(*AR3(T0)), AR1 ; |481| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |481| 
        MOV #0, port(*AR3(T0)) ; |481| 
	.dwpsn	file "src/csl_sdio.c",line 483,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |483| 
        MOV *AR3, AR3 ; |483| 
        MOV port(*AR3(T0)), AR1 ; |483| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |483| 
        MOV #0, port(*AR3(T0)) ; |483| 
	.dwpsn	file "src/csl_sdio.c",line 486,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |486| 
        MOV *AR3, AR3 ; |486| 
        MOV #0, port(*AR3(T0)) ; |486| 
        MOV #8, T0
$C$L12:    
$C$DW$L$_SDIO_detectCard$4$B:
	.dwpsn	file "src/csl_sdio.c",line 490,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |490| 
        MOV port(*AR3(T0)), AR1 ; |490| 
        MOV AR1, *SP(#11) ; |490| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 491,column 13,is_stmt
        BTST #2, *SP(#11), TC1 ; |491| 
        BCC $C$L12,!TC1 ; |491| 
                                        ; branchcc occurs ; |491| 
$C$DW$L$_SDIO_detectCard$4$E:
	.dwpsn	file "src/csl_sdio.c",line 494,column 4,is_stmt
        MOV #426, AC0 ; |494| 
        MOV AC0, dbl(*SP(#4)) ; |494| 
	.dwpsn	file "src/csl_sdio.c",line 496,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |496| 
        MOV *AR3, AR3 ; |496| 
        MOV #0, port(*AR3(T0)) ; |496| 
	.dwpsn	file "src/csl_sdio.c",line 497,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |497| 
        MOV *AR3, AR3 ; |497| 
        MOV port(*AR3(T0)), AR1 ; |497| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |497| 
        AND #0xffc0, AR1, AC0 ; |497| 
        MOV AC0, port(*AR3(T0)) ; |497| 
	.dwpsn	file "src/csl_sdio.c",line 499,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |499| 
        MOV *AR3, AR3 ; |499| 
        MOV port(*AR3(T0)), AR1 ; |499| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |499| 
        MOV dbl(*SP(#4)), AC0 ; |499| 
        AND #0xffff, AC0, AC0 ; |499| 
        OR AC1, AC0 ; |499| 
        MOV AC0, port(*AR3(T0)) ; |499| 
	.dwpsn	file "src/csl_sdio.c",line 501,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |501| 
        MOV *AR3, AR3 ; |501| 
        MOV port(*AR3(T0)), AR1 ; |501| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |501| 
        MOV dbl(*SP(#4)), AC0 ; |501| 
        SFTL AC0, #-16, AC0 ; |501| 
        AND #0xffff, AC0, AC0 ; |501| 
        OR AC1, AC0 ; |501| 
        MOV AC0, port(*AR3(T0)) ; |501| 
	.dwpsn	file "src/csl_sdio.c",line 504,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |504| 
        MOV *AR3, AR3 ; |504| 
        MOV #520, port(*AR3(T0)) ; |504| 
        MOV #8, T0
$C$L13:    
$C$DW$L$_SDIO_detectCard$6$B:
	.dwpsn	file "src/csl_sdio.c",line 508,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |508| 
        MOV port(*AR3(T0)), AR1 ; |508| 
        MOV AR1, *SP(#11) ; |508| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 509,column 5,is_stmt
        BTST #7, *SP(#11), TC1 ; |509| 
        BCC $C$L14,!TC1 ; |509| 
                                        ; branchcc occurs ; |509| 
$C$DW$L$_SDIO_detectCard$6$E:
	.dwpsn	file "src/csl_sdio.c",line 511,column 6,is_stmt
        MOV #-17, T0 ; |511| 
        B $C$L28  ; |511| 
                                        ; branch occurs ; |511| 
$C$L14:    
$C$DW$L$_SDIO_detectCard$8$B:
	.dwpsn	file "src/csl_sdio.c",line 513,column 12,is_stmt
        BAND *SP(#11), #252, TC1 ; |513| 
        BCC $C$L13,!TC1 ; |513| 
                                        ; branchcc occurs ; |513| 
$C$DW$L$_SDIO_detectCard$8$E:
	.dwpsn	file "src/csl_sdio.c",line 516,column 4,is_stmt
        BAND *SP(#11), #248, TC1 ; |516| 
        BCC $C$L15,!TC1 ; |516| 
                                        ; branchcc occurs ; |516| 
	.dwpsn	file "src/csl_sdio.c",line 518,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#6)) ; |518| 
	.dwpsn	file "src/csl_sdio.c",line 519,column 4,is_stmt
        B $C$L17  ; |519| 
                                        ; branch occurs ; |519| 
$C$L15:    
	.dwpsn	file "src/csl_sdio.c",line 522,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |522| 
        MOV *AR3, AR3 ; |522| 
        MOV #426, AR2 ; |522| 
        MOV port(*AR3(T0)), AR1 ; |522| 
        AND #0x01ff, AR1, AR1 ; |522| 
        CMPU AR2 != AR1, TC1 ; |522| 
        BCC $C$L16,TC1 ; |522| 
                                        ; branchcc occurs ; |522| 
	.dwpsn	file "src/csl_sdio.c",line 524,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#6)) ; |524| 
	.dwpsn	file "src/csl_sdio.c",line 525,column 5,is_stmt
        B $C$L17  ; |525| 
                                        ; branch occurs ; |525| 
$C$L16:    
	.dwpsn	file "src/csl_sdio.c",line 529,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3, *AR3(#8) ; |529| 
	.dwpsn	file "src/csl_sdio.c",line 530,column 6,is_stmt
        MOV #-1, T0
        B $C$L28  ; |530| 
                                        ; branch occurs ; |530| 
$C$L17:    
$C$DW$L$_SDIO_detectCard$14$B:
	.dwpsn	file "src/csl_sdio.c",line 537,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |537| 
        MOV *AR3, AR3 ; |537| 
        MOV port(*AR3(T0)), AR1 ; |537| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |537| 
        AND #0xffc0, AR1, AC0 ; |537| 
        MOV AC0, port(*AR3(T0)) ; |537| 
	.dwpsn	file "src/csl_sdio.c",line 538,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |538| 
        MOV *AR3, AR3 ; |538| 
        MOV #0, port(*AR3(T0)) ; |538| 
	.dwpsn	file "src/csl_sdio.c",line 539,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |539| 
        MOV *AR3, AR3 ; |539| 
        MOV #0, port(*AR3(T0)) ; |539| 
	.dwpsn	file "src/csl_sdio.c",line 541,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |541| 
        MOV *AR3, AR3 ; |541| 
        MOV port(*AR3(T0)), AR1 ; |541| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |541| 
        MOV #0, port(*AR3(T0)) ; |541| 
	.dwpsn	file "src/csl_sdio.c",line 543,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |543| 
        MOV *AR3, AR3 ; |543| 
        MOV port(*AR3(T0)), AR1 ; |543| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |543| 
        MOV #0, port(*AR3(T0)) ; |543| 
	.dwpsn	file "src/csl_sdio.c",line 547,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |547| 
        MOV *AR3, AR3 ; |547| 
        MOV #1541, port(*AR3(T0)) ; |547| 
        MOV #8, T0
$C$DW$L$_SDIO_detectCard$14$E:
$C$L18:    
$C$DW$L$_SDIO_detectCard$15$B:
	.dwpsn	file "src/csl_sdio.c",line 551,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |551| 
        MOV port(*AR3(T0)), AR1 ; |551| 
        MOV AR1, *SP(#11) ; |551| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 552,column 6,is_stmt
        BTST #4, *SP(#11), TC1 ; |552| 
        BCC $C$L19,!TC1 ; |552| 
                                        ; branchcc occurs ; |552| 
$C$DW$L$_SDIO_detectCard$15$E:
	.dwpsn	file "src/csl_sdio.c",line 554,column 7,is_stmt
        MOV #-16, T0 ; |554| 
        B $C$L28  ; |554| 
                                        ; branch occurs ; |554| 
$C$L19:    
$C$DW$L$_SDIO_detectCard$17$B:
	.dwpsn	file "src/csl_sdio.c",line 557,column 13,is_stmt
        BTST #2, *SP(#11), TC1 ; |557| 
        BCC $C$L18,!TC1 ; |557| 
                                        ; branchcc occurs ; |557| 
$C$DW$L$_SDIO_detectCard$17$E:
$C$DW$L$_SDIO_detectCard$18$B:
	.dwpsn	file "src/csl_sdio.c",line 559,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |559| 
        MOV *AR3, AR3 ; |559| 
        MOV port(*AR3(T0)), AR1 ; |559| 
        MOV AR1, *SP(#12) ; |559| 
	.dwpsn	file "src/csl_sdio.c",line 560,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |560| 
        MOV *AR3, AR3 ; |560| 
        MOV port(*AR3(T0)), AR1 ; |560| 
        MOV AR1, *SP(#13) ; |560| 
	.dwpsn	file "src/csl_sdio.c",line 562,column 5,is_stmt
        MOV AR1, HI(AC0) ; |562| 
        OR *SP(#12), AC0, AC0 ; |562| 
        MOV AC0, dbl(*SP(#6)) ; |562| 
	.dwpsn	file "src/csl_sdio.c",line 564,column 5,is_stmt
        SUB #1, *SP(#20) ; |564| 
	.dwpsn	file "src/csl_sdio.c",line 566,column 13,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |566| 
        BCC $C$L20,AC0 != #0 ; |566| 
                                        ; branchcc occurs ; |566| 
$C$DW$L$_SDIO_detectCard$18$E:
$C$DW$L$_SDIO_detectCard$19$B:
        MOV *SP(#20), AR1 ; |566| 
        BCC $C$L17,AR1 != #0 ; |566| 
                                        ; branchcc occurs ; |566| 
$C$DW$L$_SDIO_detectCard$19$E:
$C$L20:    
	.dwpsn	file "src/csl_sdio.c",line 568,column 4,is_stmt
        MOV *SP(#20), AR1 ; |568| 
        BCC $C$L21,AR1 != #0 ; |568| 
                                        ; branchcc occurs ; |568| 
	.dwpsn	file "src/csl_sdio.c",line 570,column 5,is_stmt
        MOV #-16, T0 ; |570| 
        B $C$L28  ; |570| 
                                        ; branch occurs ; |570| 
$C$L21:    
	.dwpsn	file "src/csl_sdio.c",line 573,column 4,is_stmt
        MOV #255 << #16, AC0 ; |573| 
        MOV dbl(*SP(#6)), AC1 ; |573| 
        OR #0xffff, AC0, AC0 ; |573| 
        AND AC1, AC0 ; |573| 
        MOV AC0, dbl(*SP(#8)) ; |573| 
	.dwpsn	file "src/csl_sdio.c",line 574,column 4,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |574| 
        SFTL AC0, #-27, AC0 ; |574| 
        AND #0x0001, AC0, AC0 ; |574| 
        MOV AC0, *SP(#21) ; |574| 
	.dwpsn	file "src/csl_sdio.c",line 576,column 4,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |576| 
        BCC $C$L22,AC0 != #0 ; |576| 
                                        ; branchcc occurs ; |576| 
	.dwpsn	file "src/csl_sdio.c",line 578,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3, *AR3(#8) ; |578| 
	.dwpsn	file "src/csl_sdio.c",line 579,column 4,is_stmt
        B $C$L25  ; |579| 
                                        ; branch occurs ; |579| 
$C$L22:    
	.dwpsn	file "src/csl_sdio.c",line 582,column 5,is_stmt
        CMP *SP(#21) == #1, TC1 ; |582| 
        BCC $C$L23,!TC1 ; |582| 
                                        ; branchcc occurs ; |582| 
	.dwpsn	file "src/csl_sdio.c",line 584,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3(#8) ; |584| 
	.dwpsn	file "src/csl_sdio.c",line 585,column 5,is_stmt
        B $C$L24  ; |585| 
                                        ; branch occurs ; |585| 
$C$L23:    
	.dwpsn	file "src/csl_sdio.c",line 588,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#8) ; |588| 
$C$L24:    
	.dwpsn	file "src/csl_sdio.c",line 591,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), AC0 ; |591| 
        MOV AC0, dbl(*AR3(short(#2))) ; |591| 
	.dwpsn	file "src/csl_sdio.c",line 592,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |592| 
        SFTL AC0, #-28, AC0 ; |592| 
        AND #0x0007, AC0, AC0 ; |592| 
        MOV AC0, *AR3(short(#4)) ; |592| 
	.dwpsn	file "src/csl_sdio.c",line 593,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |593| 
        SFTL AC0, #-31, AC0 ; |593| 
        AND #0x0001, AC0, AC0 ; |593| 
        MOV AC0, *AR3(short(#5)) ; |593| 
$C$L25:    
	.dwpsn	file "src/csl_sdio.c",line 596,column 4,is_stmt
        MOV #0, *SP(#10) ; |596| 
	.dwpsn	file "src/csl_sdio.c",line 597,column 9,is_stmt
        B $C$L27  ; |597| 
                                        ; branch occurs ; |597| 
$C$L26:    
	.dwpsn	file "src/csl_sdio.c",line 600,column 13,is_stmt
        MOV #-6, *SP(#10) ; |600| 
$C$L27:    
	.dwpsn	file "src/csl_sdio.c",line 604,column 5,is_stmt
        MOV *SP(#10), T0 ; |604| 
$C$L28:    
	.dwpsn	file "src/csl_sdio.c",line 605,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$39	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$39, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L17:1:1714639451")
	.dwattr $C$DW$39, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x217)
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x236)
$C$DW$40	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$40, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$14$B)
	.dwattr $C$DW$40, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$14$E)
$C$DW$41	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$41, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$18$B)
	.dwattr $C$DW$41, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$18$E)
$C$DW$42	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$42, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$19$B)
	.dwattr $C$DW$42, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$19$E)

$C$DW$43	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$43, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L18:2:1714639451")
	.dwattr $C$DW$43, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x225)
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x22d)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$15$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$15$E)
$C$DW$45	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$45, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$17$B)
	.dwattr $C$DW$45, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$17$E)
	.dwendtag $C$DW$43

	.dwendtag $C$DW$39


$C$DW$46	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$46, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L13:1:1714639451")
	.dwattr $C$DW$46, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x1fa)
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x201)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$6$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$6$E)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$8$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$8$E)
	.dwendtag $C$DW$46


$C$DW$49	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$49, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L12:1:1714639451")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x1e8)
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x1eb)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_SDIO_detectCard$4$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_SDIO_detectCard$4$E)
	.dwendtag $C$DW$49

	.dwattr $C$DW$25, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x25d)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.global	_SDIO_initCard

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_initCard")
	.dwattr $C$DW$51, DW_AT_low_pc(_SDIO_initCard)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_SDIO_initCard")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x29c)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_sdio.c",line 671,column 1,is_stmt,address _SDIO_initCard

	.dwfde $C$DW$CIE, _SDIO_initCard
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg17]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("OpCondReg")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_OpCondReg")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("initMem")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_initMem")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_initCard                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_initCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("OpCondReg")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_OpCondReg")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("initMem")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_initMem")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("response")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_response")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("sdioStatus")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_sdioStatus")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("cmdTimeout")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_cmdTimeout")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("resp")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_resp")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#4) ; |671| 
        MOV AC0, dbl(*SP(#2)) ; |671| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 680,column 5,is_stmt
        MOV #0, AC0 ; |680| 
        MOV AC0, dbl(*SP(#6)) ; |680| 
	.dwpsn	file "src/csl_sdio.c",line 681,column 5,is_stmt
        MOV AC0, dbl(*SP(#8)) ; |681| 
	.dwpsn	file "src/csl_sdio.c",line 682,column 5,is_stmt
        MOV #-5, *SP(#10) ; |682| 
	.dwpsn	file "src/csl_sdio.c",line 683,column 5,is_stmt
        MOV #0, *SP(#11) ; |683| 
	.dwpsn	file "src/csl_sdio.c",line 684,column 5,is_stmt
        MOV #0, *SP(#12) ; |684| 
	.dwpsn	file "src/csl_sdio.c",line 685,column 5,is_stmt
        MOV #500, *SP(#13) ; |685| 
	.dwpsn	file "src/csl_sdio.c",line 687,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |687| 

        CMPU AC1 == AC0, TC1 ; |687| 
        BCC $C$L53,TC1 ; |687| 
                                        ; branchcc occurs ; |687| 
$C$L29:    
$C$DW$L$_SDIO_initCard$2$B:
	.dwpsn	file "src/csl_sdio.c",line 695,column 13,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |695| 
        MOV AC0, dbl(*SP(#6)) ; |695| 
	.dwpsn	file "src/csl_sdio.c",line 697,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |697| 
        MOV *AR3, AR3 ; |697| 
        MOV port(*AR3(T0)), AR1 ; |697| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |697| 
        AND #0xffc0, AR1, AC0 ; |697| 
        MOV AC0, port(*AR3(T0)) ; |697| 
	.dwpsn	file "src/csl_sdio.c",line 698,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |698| 
        MOV *AR3, AR3 ; |698| 
        MOV #0, port(*AR3(T0)) ; |698| 
	.dwpsn	file "src/csl_sdio.c",line 699,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |699| 
        MOV *AR3, AR3 ; |699| 
        MOV #0, port(*AR3(T0)) ; |699| 
	.dwpsn	file "src/csl_sdio.c",line 701,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |701| 
        MOV *AR3, AR3 ; |701| 
        MOV port(*AR3(T0)), AR1 ; |701| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |701| 
        MOV dbl(*SP(#6)), AC0 ; |701| 
        AND #0xffff, AC0, AC0 ; |701| 
        OR AC1, AC0 ; |701| 
        MOV AC0, port(*AR3(T0)) ; |701| 
	.dwpsn	file "src/csl_sdio.c",line 703,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |703| 
        MOV *AR3, AR3 ; |703| 
        MOV port(*AR3(T0)), AR1 ; |703| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |703| 
        MOV dbl(*SP(#6)), AC0 ; |703| 
        SFTL AC0, #-16, AC0 ; |703| 
        AND #0xffff, AC0, AC0 ; |703| 
        OR AC1, AC0 ; |703| 
        MOV AC0, port(*AR3(T0)) ; |703| 
	.dwpsn	file "src/csl_sdio.c",line 706,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |706| 
        MOV *AR3, AR3 ; |706| 
        MOV #1541, port(*AR3(T0)) ; |706| 
        MOV #8, T0
$C$DW$L$_SDIO_initCard$2$E:
$C$L30:    
$C$DW$L$_SDIO_initCard$3$B:
	.dwpsn	file "src/csl_sdio.c",line 710,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |710| 
        MOV port(*AR3(T0)), AR1 ; |710| 
        MOV AR1, *SP(#11) ; |710| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 711,column 5,is_stmt
        BTST #4, *SP(#11), TC1 ; |711| 
        BCC $C$L31,!TC1 ; |711| 
                                        ; branchcc occurs ; |711| 
$C$DW$L$_SDIO_initCard$3$E:
	.dwpsn	file "src/csl_sdio.c",line 713,column 6,is_stmt
        MOV #-16, T0 ; |713| 
        B $C$L54  ; |713| 
                                        ; branch occurs ; |713| 
$C$L31:    
$C$DW$L$_SDIO_initCard$5$B:
	.dwpsn	file "src/csl_sdio.c",line 716,column 12,is_stmt
        BTST #2, *SP(#11), TC1 ; |716| 
        BCC $C$L30,!TC1 ; |716| 
                                        ; branchcc occurs ; |716| 
$C$DW$L$_SDIO_initCard$5$E:
$C$DW$L$_SDIO_initCard$6$B:
	.dwpsn	file "src/csl_sdio.c",line 718,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |718| 
        MOV *AR3, AR3 ; |718| 
        MOV port(*AR3(T0)), AR1 ; |718| 
        MOV AR1, *SP(#14) ; |718| 
	.dwpsn	file "src/csl_sdio.c",line 719,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |719| 
        MOV *AR3, AR3 ; |719| 
        MOV port(*AR3(T0)), AR1 ; |719| 
        MOV AR1, *SP(#15) ; |719| 
	.dwpsn	file "src/csl_sdio.c",line 721,column 13,is_stmt
        MOV AR1, HI(AC0) ; |721| 
        OR *SP(#14), AC0, AC0 ; |721| 
        MOV AC0, dbl(*SP(#8)) ; |721| 
	.dwpsn	file "src/csl_sdio.c",line 723,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#8)), AC0 ; |723| 
        SFTL AC0, #-31, AC0 ; |723| 
        AND #0x0001, AC0, AC0 ; |723| 
        MOV AC0, *AR3(short(#5)) ; |723| 
	.dwpsn	file "src/csl_sdio.c",line 725,column 13,is_stmt
        SUB #1, *SP(#13) ; |725| 
	.dwpsn	file "src/csl_sdio.c",line 727,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3

        MOV *AR3(short(#5)), AR1 ; |727| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |727| 
        BCC $C$L32,TC1 ; |727| 
                                        ; branchcc occurs ; |727| 
$C$DW$L$_SDIO_initCard$6$E:
$C$DW$L$_SDIO_initCard$7$B:
        MOV *SP(#13), AR1 ; |727| 
        CMPU AR2 == AR1, TC1 ; |727| 
        BCC $C$L29,!TC1 ; |727| 
                                        ; branchcc occurs ; |727| 
$C$DW$L$_SDIO_initCard$7$E:
$C$L32:    
	.dwpsn	file "src/csl_sdio.c",line 729,column 9,is_stmt

        MOV #0, AR2
||      MOV *SP(#13), AR1 ; |729| 

        CMPU AR2 != AR1, TC1 ; |729| 
        BCC $C$L33,TC1 ; |729| 
                                        ; branchcc occurs ; |729| 
	.dwpsn	file "src/csl_sdio.c",line 731,column 13,is_stmt
        MOV #257, *SP(#10) ; |731| 
	.dwpsn	file "src/csl_sdio.c",line 732,column 9,is_stmt
        B $C$L53  ; |732| 
                                        ; branch occurs ; |732| 
$C$L33:    
	.dwpsn	file "src/csl_sdio.c",line 736,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #2, AR2
        MOV *AR3(#8), AR1 ; |736| 
        CMP AR2 != AR1, TC1 ; |736| 
        BCC $C$L45,TC1 ; |736| 
                                        ; branchcc occurs ; |736| 

        MOV #1, AR2
||      MOV *SP(#4), AR1 ; |736| 

        CMPU AR2 != AR1, TC1 ; |736| 
        BCC $C$L45,TC1 ; |736| 
                                        ; branchcc occurs ; |736| 
	.dwpsn	file "src/csl_sdio.c",line 739,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |739| 
        BCC $C$L34,AR1 != #0 ; |739| 
                                        ; branchcc occurs ; |739| 
	.dwpsn	file "src/csl_sdio.c",line 746,column 6,is_stmt
        MOV #255 << #16, AC0 ; |746| 
        OR #0x8000, AC0, AC0 ; |746| 
        MOV AC0, dbl(*SP(#6)) ; |746| 
	.dwpsn	file "src/csl_sdio.c",line 747,column 5,is_stmt
        B $C$L35  ; |747| 
                                        ; branch occurs ; |747| 
$C$L34:    
	.dwpsn	file "src/csl_sdio.c",line 754,column 21,is_stmt
        MOV #16639 << #16, AC0 ; |754| 
        OR #0x8000, AC0, AC0 ; |754| 
        MOV AC0, dbl(*SP(#6)) ; |754| 
$C$L35:    
	.dwpsn	file "src/csl_sdio.c",line 757,column 17,is_stmt
        MOV #500, *SP(#13) ; |757| 
$C$L36:    
$C$DW$L$_SDIO_initCard$16$B:
	.dwpsn	file "src/csl_sdio.c",line 762,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |762| 
        MOV *AR3, AR3 ; |762| 
        MOV port(*AR3(T0)), AR1 ; |762| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |762| 
        AND #0xffc0, AR1, AC0 ; |762| 
        MOV AC0, port(*AR3(T0)) ; |762| 
	.dwpsn	file "src/csl_sdio.c",line 764,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |764| 
        MOV *AR3, AR3 ; |764| 
        MOV port(*AR3(T0)), AR1 ; |764| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |764| 
        MOV #0, port(*AR3(T0)) ; |764| 
	.dwpsn	file "src/csl_sdio.c",line 766,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |766| 
        MOV *AR3, AR3 ; |766| 
        MOV port(*AR3(T0)), AR1 ; |766| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |766| 
        MOV #0, port(*AR3(T0)) ; |766| 
	.dwpsn	file "src/csl_sdio.c",line 769,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |769| 
        MOV *AR3, AR3 ; |769| 
        MOV #567, port(*AR3(T0)) ; |769| 
        AMOV #8, T0
$C$DW$L$_SDIO_initCard$16$E:
$C$L37:    
$C$DW$L$_SDIO_initCard$17$B:
	.dwpsn	file "src/csl_sdio.c",line 773,column 25,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |773| 
        MOV port(*AR3(T0)), AR1 ; |773| 
        MOV AR1, *SP(#11) ; |773| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 774,column 7,is_stmt
        BAND *SP(#11), #144, TC1 ; |774| 
        BCC $C$L39,!TC1 ; |774| 
                                        ; branchcc occurs ; |774| 
$C$DW$L$_SDIO_initCard$17$E:
	.dwpsn	file "src/csl_sdio.c",line 776,column 8,is_stmt
        BTST #4, *SP(#11), TC1 ; |776| 
        BCC $C$L38,!TC1 ; |776| 
                                        ; branchcc occurs ; |776| 
	.dwpsn	file "src/csl_sdio.c",line 778,column 9,is_stmt
        MOV #-16, T0 ; |778| 
        B $C$L54  ; |778| 
                                        ; branch occurs ; |778| 
$C$L38:    
	.dwpsn	file "src/csl_sdio.c",line 782,column 9,is_stmt
        MOV #-17, T0 ; |782| 
        B $C$L54  ; |782| 
                                        ; branch occurs ; |782| 
$C$L39:    
$C$DW$L$_SDIO_initCard$22$B:
	.dwpsn	file "src/csl_sdio.c",line 785,column 29,is_stmt
        BTST #2, *SP(#11), TC1 ; |785| 
        BCC $C$L37,!TC1 ; |785| 
                                        ; branchcc occurs ; |785| 
$C$DW$L$_SDIO_initCard$22$E:
$C$DW$L$_SDIO_initCard$23$B:
	.dwpsn	file "src/csl_sdio.c",line 789,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |789| 
        MOV *AR3, AR3 ; |789| 
        MOV #0, port(*AR3(T0)) ; |789| 
	.dwpsn	file "src/csl_sdio.c",line 790,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |790| 
        MOV *AR3, AR3 ; |790| 
        MOV #0, port(*AR3(T0)) ; |790| 
	.dwpsn	file "src/csl_sdio.c",line 791,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |791| 
        MOV *AR3, AR3 ; |791| 
        MOV port(*AR3(T0)), AR1 ; |791| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |791| 
        AND #0xffc0, AR1, AC0 ; |791| 
        MOV AC0, port(*AR3(T0)) ; |791| 
	.dwpsn	file "src/csl_sdio.c",line 793,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |793| 
        MOV *AR3, AR3 ; |793| 
        MOV port(*AR3(T0)), AR1 ; |793| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |793| 
        MOV dbl(*SP(#6)), AC0 ; |793| 
        MOV #0 << #16, AC1 ; |793| 
        AND #0xffff, AC0, AC0 ; |793| 
        OR AC1, AC0 ; |793| 
        MOV AC0, port(*AR3(T0)) ; |793| 
	.dwpsn	file "src/csl_sdio.c",line 795,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |795| 
        MOV *AR3, AR3 ; |795| 
        MOV port(*AR3(T0)), AR1 ; |795| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |795| 
        MOV dbl(*SP(#6)), AC0 ; |795| 
        SFTL AC0, #-16, AC0 ; |795| 
        AND #0xffff, AC0, AC0 ; |795| 
        OR AC1, AC0 ; |795| 
        MOV AC0, port(*AR3(T0)) ; |795| 
	.dwpsn	file "src/csl_sdio.c",line 798,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |798| 
        MOV *AR3, AR3 ; |798| 
        MOV #1577, port(*AR3(T0)) ; |798| 
        AMOV #8, T0
$C$DW$L$_SDIO_initCard$23$E:
$C$L40:    
$C$DW$L$_SDIO_initCard$24$B:
	.dwpsn	file "src/csl_sdio.c",line 802,column 25,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |802| 
        MOV port(*AR3(T0)), AR1 ; |802| 
        MOV AR1, *SP(#11) ; |802| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 803,column 7,is_stmt
        BTST #4, *SP(#11), TC1 ; |803| 
        BCC $C$L41,!TC1 ; |803| 
                                        ; branchcc occurs ; |803| 
$C$DW$L$_SDIO_initCard$24$E:
	.dwpsn	file "src/csl_sdio.c",line 805,column 8,is_stmt
        MOV #-16, T0 ; |805| 
        B $C$L54  ; |805| 
                                        ; branch occurs ; |805| 
$C$L41:    
$C$DW$L$_SDIO_initCard$26$B:
	.dwpsn	file "src/csl_sdio.c",line 807,column 29,is_stmt
        BTST #2, *SP(#11), TC1 ; |807| 
        BCC $C$L40,!TC1 ; |807| 
                                        ; branchcc occurs ; |807| 
$C$DW$L$_SDIO_initCard$26$E:
$C$DW$L$_SDIO_initCard$27$B:
	.dwpsn	file "src/csl_sdio.c",line 809,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |809| 
        MOV *AR3, AR3 ; |809| 
        MOV port(*AR3(T0)), AR1 ; |809| 
        MOV AR1, *SP(#14) ; |809| 
	.dwpsn	file "src/csl_sdio.c",line 810,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |810| 
        MOV *AR3, AR3 ; |810| 
        MOV port(*AR3(T0)), AR1 ; |810| 
        MOV AR1, *SP(#15) ; |810| 
	.dwpsn	file "src/csl_sdio.c",line 812,column 6,is_stmt
        MOV AR1, HI(AC0) ; |812| 
        OR *SP(#14), AC0, AC0 ; |812| 
        MOV AC0, dbl(*SP(#8)) ; |812| 
	.dwpsn	file "src/csl_sdio.c",line 814,column 21,is_stmt
        SUB #1, *SP(#13) ; |814| 
	.dwpsn	file "src/csl_sdio.c",line 816,column 26,is_stmt
        MOV #-32513 << #16, AC0 ; |816| 
        MOV dbl(*SP(#8)), AC1 ; |816| 
        OR #0x8000, AC0, AC0 ; |816| 

        MOV #-32513 << #16, AC1 ; |816| 
||      AND AC1, AC0 ; |816| 

        OR #0x8000, AC1, AC1 ; |816| 
        CMPU AC0 == AC1, TC1 ; |816| 
        BCC $C$L42,TC1 ; |816| 
                                        ; branchcc occurs ; |816| 
$C$DW$L$_SDIO_initCard$27$E:
$C$DW$L$_SDIO_initCard$28$B:
        MOV *SP(#13), AR1 ; |816| 
        BCC $C$L36,AR1 != #0 ; |816| 
                                        ; branchcc occurs ; |816| 
$C$DW$L$_SDIO_initCard$28$E:
$C$L42:    
	.dwpsn	file "src/csl_sdio.c",line 819,column 17,is_stmt

        MOV #0, AR2
||      MOV *SP(#13), AR1 ; |819| 

        CMPU AR2 != AR1, TC1 ; |819| 
        BCC $C$L43,TC1 ; |819| 
                                        ; branchcc occurs ; |819| 
	.dwpsn	file "src/csl_sdio.c",line 821,column 21,is_stmt
        MOV #258, T0 ; |821| 
        B $C$L54  ; |821| 
                                        ; branch occurs ; |821| 
$C$L43:    
	.dwpsn	file "src/csl_sdio.c",line 824,column 17,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |824| 
        MOV #16384 << #16, AC0 ; |824| 
        AND AC1, AC0 ; |824| 
        BCC $C$L44,AC0 == #0 ; |824| 
                                        ; branchcc occurs ; |824| 
	.dwpsn	file "src/csl_sdio.c",line 826,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, *AR3(short(#7)) ; |826| 
	.dwpsn	file "src/csl_sdio.c",line 827,column 17,is_stmt
        B $C$L52  ; |827| 
                                        ; branch occurs ; |827| 
$C$L44:    
	.dwpsn	file "src/csl_sdio.c",line 830,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #0, *AR3(short(#7)) ; |830| 
	.dwpsn	file "src/csl_sdio.c",line 832,column 13,is_stmt
        B $C$L52  ; |832| 
                                        ; branch occurs ; |832| 
$C$L45:    
	.dwpsn	file "src/csl_sdio.c",line 836,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |836| 
        MOV *AR3, AR3 ; |836| 
        MOV port(*AR3(T0)), AR1 ; |836| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |836| 
        AND #0xffc0, AR1, AC0 ; |836| 
        MOV AC0, port(*AR3(T0)) ; |836| 
	.dwpsn	file "src/csl_sdio.c",line 837,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |837| 
        MOV *AR3, AR3 ; |837| 
        MOV #0, port(*AR3(T0)) ; |837| 
	.dwpsn	file "src/csl_sdio.c",line 839,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |839| 
        MOV *AR3, AR3 ; |839| 
        MOV port(*AR3(T0)), AR1 ; |839| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |839| 
        MOV #0, port(*AR3(T0)) ; |839| 
	.dwpsn	file "src/csl_sdio.c",line 841,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |841| 
        MOV *AR3, AR3 ; |841| 
        MOV port(*AR3(T0)), AR1 ; |841| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |841| 
        MOV #0, port(*AR3(T0)) ; |841| 
	.dwpsn	file "src/csl_sdio.c",line 844,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |844| 
        MOV *AR3, AR3 ; |844| 
        MOV #515, port(*AR3(T0)) ; |844| 
        MOV #8, T0
$C$L46:    
$C$DW$L$_SDIO_initCard$35$B:
	.dwpsn	file "src/csl_sdio.c",line 848,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |848| 
        MOV port(*AR3(T0)), AR1 ; |848| 
        MOV AR1, *SP(#11) ; |848| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 849,column 6,is_stmt
        BAND *SP(#11), #144, TC1 ; |849| 
        BCC $C$L48,!TC1 ; |849| 
                                        ; branchcc occurs ; |849| 
$C$DW$L$_SDIO_initCard$35$E:
	.dwpsn	file "src/csl_sdio.c",line 851,column 7,is_stmt
        BTST #4, *SP(#11), TC1 ; |851| 
        BCC $C$L47,!TC1 ; |851| 
                                        ; branchcc occurs ; |851| 
	.dwpsn	file "src/csl_sdio.c",line 853,column 8,is_stmt
        MOV #-16, T0 ; |853| 
        B $C$L54  ; |853| 
                                        ; branch occurs ; |853| 
$C$L47:    
	.dwpsn	file "src/csl_sdio.c",line 857,column 8,is_stmt
        MOV #-17, T0 ; |857| 
        B $C$L54  ; |857| 
                                        ; branch occurs ; |857| 
$C$L48:    
$C$DW$L$_SDIO_initCard$40$B:
	.dwpsn	file "src/csl_sdio.c",line 861,column 13,is_stmt
        BTST #2, *SP(#11), TC1 ; |861| 
        BCC $C$L46,!TC1 ; |861| 
                                        ; branchcc occurs ; |861| 
$C$DW$L$_SDIO_initCard$40$E:
	.dwpsn	file "src/csl_sdio.c",line 863,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |863| 
        MOV *AR3, AR3 ; |863| 
        MOV port(*AR3(T0)), AR1 ; |863| 
        MOV AR1, *SP(#14) ; |863| 
	.dwpsn	file "src/csl_sdio.c",line 865,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV AR1, *AR3 ; |865| 
	.dwpsn	file "src/csl_sdio.c",line 868,column 5,is_stmt
        MOV #0, AC0 ; |868| 
        MOV AC0, dbl(*SP(#6)) ; |868| 
	.dwpsn	file "src/csl_sdio.c",line 869,column 5,is_stmt
        MOV *SP(#14), AR1 ; |869| 
        MOV AR1, HI(AC0) ; |869| 
        MOV AC0, dbl(*SP(#6)) ; |869| 
	.dwpsn	file "src/csl_sdio.c",line 871,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |871| 
        MOV *AR3, AR3 ; |871| 
        MOV port(*AR3(T0)), AR1 ; |871| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |871| 
        AND #0xffc0, AR1, AC0 ; |871| 
        MOV AC0, port(*AR3(T0)) ; |871| 
	.dwpsn	file "src/csl_sdio.c",line 873,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |873| 
        MOV *AR3, AR3 ; |873| 
        MOV port(*AR3(T0)), AR1 ; |873| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |873| 
        MOV dbl(*SP(#6)), AC0 ; |873| 
        AND #0xffff, AC0, AC0 ; |873| 
        OR AC1, AC0 ; |873| 
        MOV AC0, port(*AR3(T0)) ; |873| 
	.dwpsn	file "src/csl_sdio.c",line 875,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |875| 
        MOV *AR3, AR3 ; |875| 
        MOV port(*AR3(T0)), AR1 ; |875| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |875| 
        MOV dbl(*SP(#6)), AC0 ; |875| 
        SFTL AC0, #-16, AC0 ; |875| 
        AND #0xffff, AC0, AC0 ; |875| 
        OR AC1, AC0 ; |875| 
        MOV AC0, port(*AR3(T0)) ; |875| 
	.dwpsn	file "src/csl_sdio.c",line 878,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |878| 
        MOV *AR3, AR3 ; |878| 
        MOV #775, port(*AR3(T0)) ; |878| 
	.dwpsn	file "src/csl_sdio.c",line 880,column 5,is_stmt
        MOV #8, T0
        MOV #0, *SP(#12) ; |880| 
$C$L49:    
$C$DW$L$_SDIO_initCard$42$B:
	.dwpsn	file "src/csl_sdio.c",line 883,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |883| 
        MOV port(*AR3(T0)), AR1 ; |883| 
        MOV AR1, *SP(#11) ; |883| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 885,column 6,is_stmt
        MOV *SP(#11), AR1 ; |885| 
        AND #0x0004, AR1, AR1 ; |885| 
        OR *SP(#12), AR1, AR1 ; |885| 
        MOV AR1, *SP(#12) ; |885| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 886,column 6,is_stmt
        MOV *SP(#11), AR1 ; |886| 
        AND #0x0002, AR1, AR1 ; |886| 
        OR *SP(#12), AR1, AR1 ; |886| 
        MOV AR1, *SP(#12) ; |886| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 888,column 6,is_stmt
        BAND *SP(#11), #144, TC1 ; |888| 
        BCC $C$L51,!TC1 ; |888| 
                                        ; branchcc occurs ; |888| 
$C$DW$L$_SDIO_initCard$42$E:
	.dwpsn	file "src/csl_sdio.c",line 890,column 7,is_stmt
        BTST #4, *SP(#11), TC1 ; |890| 
        BCC $C$L50,!TC1 ; |890| 
                                        ; branchcc occurs ; |890| 
	.dwpsn	file "src/csl_sdio.c",line 892,column 8,is_stmt
        MOV #-16, T0 ; |892| 
        B $C$L54  ; |892| 
                                        ; branch occurs ; |892| 
$C$L50:    
	.dwpsn	file "src/csl_sdio.c",line 896,column 8,is_stmt
        MOV #-17, T0 ; |896| 
        B $C$L54  ; |896| 
                                        ; branch occurs ; |896| 
$C$L51:    
$C$DW$L$_SDIO_initCard$47$B:
	.dwpsn	file "src/csl_sdio.c",line 899,column 13,is_stmt
        BTST #2, *SP(#12), TC1 ; |899| 
        BCC $C$L49,!TC1 ; |899| 
                                        ; branchcc occurs ; |899| 
$C$DW$L$_SDIO_initCard$47$E:
$C$DW$L$_SDIO_initCard$48$B:
        BTST #1, *SP(#12), TC1 ; |899| 
        BCC $C$L49,!TC1 ; |899| 
                                        ; branchcc occurs ; |899| 
$C$DW$L$_SDIO_initCard$48$E:
$C$L52:    
	.dwpsn	file "src/csl_sdio.c",line 903,column 13,is_stmt
        MOV #0, *SP(#10) ; |903| 
$C$L53:    
	.dwpsn	file "src/csl_sdio.c",line 907,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, *AR3(short(#6)) ; |907| 
	.dwpsn	file "src/csl_sdio.c",line 909,column 5,is_stmt
        MOV *SP(#10), T0 ; |909| 
$C$L54:    
	.dwpsn	file "src/csl_sdio.c",line 910,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L49:1:1714639451")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x371)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x383)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_SDIO_initCard$42$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_SDIO_initCard$42$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_SDIO_initCard$48$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_SDIO_initCard$48$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_SDIO_initCard$47$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_SDIO_initCard$47$E)
	.dwendtag $C$DW$66


$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L46:1:1714639451")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x34e)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x35d)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_SDIO_initCard$35$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_SDIO_initCard$35$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_SDIO_initCard$40$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_SDIO_initCard$40$E)
	.dwendtag $C$DW$70


$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L36:1:1714639451")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x2f7)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x330)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_SDIO_initCard$16$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_SDIO_initCard$16$E)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_SDIO_initCard$23$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_SDIO_initCard$23$E)
$C$DW$76	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$76, DW_AT_low_pc($C$DW$L$_SDIO_initCard$27$B)
	.dwattr $C$DW$76, DW_AT_high_pc($C$DW$L$_SDIO_initCard$27$E)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_SDIO_initCard$28$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_SDIO_initCard$28$E)

$C$DW$78	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$78, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L37:2:1714639451")
	.dwattr $C$DW$78, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x303)
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x311)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_SDIO_initCard$17$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_SDIO_initCard$17$E)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_SDIO_initCard$22$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_SDIO_initCard$22$E)
	.dwendtag $C$DW$78


$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L40:2:1714639451")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x320)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x327)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_SDIO_initCard$24$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_SDIO_initCard$24$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_SDIO_initCard$26$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_SDIO_initCard$26$E)
	.dwendtag $C$DW$81

	.dwendtag $C$DW$73


$C$DW$84	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$84, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L29:1:1714639451")
	.dwattr $C$DW$84, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x2b5)
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x2d7)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_SDIO_initCard$2$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_SDIO_initCard$2$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_SDIO_initCard$6$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_SDIO_initCard$6$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_SDIO_initCard$7$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_SDIO_initCard$7$E)

$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L30:2:1714639451")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x2c4)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x2cc)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_SDIO_initCard$3$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_SDIO_initCard$3$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_SDIO_initCard$5$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_SDIO_initCard$5$E)
	.dwendtag $C$DW$88

	.dwendtag $C$DW$84

	.dwattr $C$DW$51, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x38e)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_SDIO_resetCard

$C$DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_resetCard")
	.dwattr $C$DW$91, DW_AT_low_pc(_SDIO_resetCard)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_SDIO_resetCard")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$91, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x3be)
	.dwattr $C$DW$91, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_sdio.c",line 959,column 1,is_stmt,address _SDIO_resetCard

	.dwfde $C$DW$CIE, _SDIO_resetCard
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_resetCard                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_resetCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("wrData")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_wrData")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("regAddr")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_regAddr")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("rawFlag")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_rawFlag")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 15]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 969,column 5,is_stmt
        MOV #0, AC0 ; |969| 
        MOV AC0, dbl(*SP(#2)) ; |969| 
	.dwpsn	file "src/csl_sdio.c",line 970,column 5,is_stmt
        MOV AC0, dbl(*SP(#4)) ; |970| 
	.dwpsn	file "src/csl_sdio.c",line 971,column 5,is_stmt
        MOV AC0, dbl(*SP(#6)) ; |971| 
	.dwpsn	file "src/csl_sdio.c",line 972,column 5,is_stmt
        MOV AC0, dbl(*SP(#8)) ; |972| 
	.dwpsn	file "src/csl_sdio.c",line 973,column 5,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |973| 
	.dwpsn	file "src/csl_sdio.c",line 974,column 5,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |974| 
	.dwpsn	file "src/csl_sdio.c",line 975,column 5,is_stmt
        MOV #-5, *SP(#14) ; |975| 
	.dwpsn	file "src/csl_sdio.c",line 976,column 5,is_stmt
        MOV #0, *SP(#15) ; |976| 
	.dwpsn	file "src/csl_sdio.c",line 978,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |978| 

        CMPU AC1 == AC0, TC1 ; |978| 
        BCC $C$L58,TC1 ; |978| 
                                        ; branchcc occurs ; |978| 
	.dwpsn	file "src/csl_sdio.c",line 981,column 9,is_stmt
        MOV #8, AC0 ; |981| 
        MOV AC0, dbl(*SP(#4)) ; |981| 
	.dwpsn	file "src/csl_sdio.c",line 982,column 9,is_stmt
        MOV #6, AC0 ; |982| 
        MOV AC0, dbl(*SP(#6)) ; |982| 
	.dwpsn	file "src/csl_sdio.c",line 983,column 9,is_stmt
        MOV #0, AC0 ; |983| 
        MOV AC0, dbl(*SP(#8)) ; |983| 
	.dwpsn	file "src/csl_sdio.c",line 984,column 9,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |984| 
	.dwpsn	file "src/csl_sdio.c",line 985,column 9,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |985| 
	.dwpsn	file "src/csl_sdio.c",line 987,column 9,is_stmt
        MOV AC0, dbl(*SP(#2)) ; |987| 
	.dwpsn	file "src/csl_sdio.c",line 988,column 9,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |988| 
        MOV dbl(*SP(#4)), AC0 ; |988| 

        MOV dbl(*SP(#8)), AC1 ; |988| 
||      OR AC1 << #9, AC0 ; |988| 

        MOV dbl(*SP(#10)), AC1 ; |988| 
||      OR AC1 << #27, AC0 ; |988| 

        MOV dbl(*SP(#12)), AC1 ; |988| 
||      OR AC1 << #28, AC0 ; |988| 

        OR AC1 << #31, AC0 ; |988| 
        MOV AC0, dbl(*SP(#2)) ; |988| 
	.dwpsn	file "src/csl_sdio.c",line 992,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |992| 
        MOV *AR3, AR3 ; |992| 
        MOV port(*AR3(T0)), AR1 ; |992| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |992| 
        MOV dbl(*SP(#2)), AC0 ; |992| 
        MOV #0 << #16, AC1 ; |992| 
        AND #0xffff, AC0, AC0 ; |992| 
        OR AC1, AC0 ; |992| 
        MOV AC0, port(*AR3(T0)) ; |992| 
	.dwpsn	file "src/csl_sdio.c",line 994,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |994| 
        MOV *AR3, AR3 ; |994| 
        MOV port(*AR3(T0)), AR1 ; |994| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |994| 
        MOV dbl(*SP(#2)), AC0 ; |994| 
        SFTL AC0, #-16, AC0 ; |994| 
        AND #0xffff, AC0, AC0 ; |994| 
        OR AC1, AC0 ; |994| 
        MOV AC0, port(*AR3(T0)) ; |994| 
	.dwpsn	file "src/csl_sdio.c",line 997,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |997| 
        MOV *AR3, AR3 ; |997| 
        MOV #564, port(*AR3(T0)) ; |997| 
        MOV #8, T0
$C$L55:    
$C$DW$L$_SDIO_resetCard$3$B:
	.dwpsn	file "src/csl_sdio.c",line 1001,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1001| 
        MOV port(*AR3(T0)), AR1 ; |1001| 
        MOV AR1, *SP(#15) ; |1001| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1002,column 4,is_stmt
        BAND *SP(#15), #144, TC1 ; |1002| 
        BCC $C$L57,!TC1 ; |1002| 
                                        ; branchcc occurs ; |1002| 
$C$DW$L$_SDIO_resetCard$3$E:
	.dwpsn	file "src/csl_sdio.c",line 1004,column 5,is_stmt
        BTST #4, *SP(#15), TC1 ; |1004| 
        BCC $C$L56,!TC1 ; |1004| 
                                        ; branchcc occurs ; |1004| 
	.dwpsn	file "src/csl_sdio.c",line 1006,column 6,is_stmt
        MOV #-16, T0 ; |1006| 
        B $C$L59  ; |1006| 
                                        ; branch occurs ; |1006| 
$C$L56:    
	.dwpsn	file "src/csl_sdio.c",line 1010,column 6,is_stmt
        MOV #-17, T0 ; |1010| 
        B $C$L59  ; |1010| 
                                        ; branch occurs ; |1010| 
$C$L57:    
$C$DW$L$_SDIO_resetCard$8$B:
	.dwpsn	file "src/csl_sdio.c",line 1014,column 17,is_stmt
        BTST #2, *SP(#15), TC1 ; |1014| 
        BCC $C$L55,!TC1 ; |1014| 
                                        ; branchcc occurs ; |1014| 
$C$DW$L$_SDIO_resetCard$8$E:
	.dwpsn	file "src/csl_sdio.c",line 1016,column 9,is_stmt
        MOV #0, *SP(#14) ; |1016| 
$C$L58:    
	.dwpsn	file "src/csl_sdio.c",line 1019,column 5,is_stmt
        MOV *SP(#14), T0 ; |1019| 
$C$L59:    
	.dwpsn	file "src/csl_sdio.c",line 1020,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$103	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$103, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L55:1:1714639451")
	.dwattr $C$DW$103, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x3e7)
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x3f6)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_SDIO_resetCard$3$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_SDIO_resetCard$3$E)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_SDIO_resetCard$8$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_SDIO_resetCard$8$E)
	.dwendtag $C$DW$103

	.dwattr $C$DW$91, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x3fc)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text"
	.global	_SDIO_getRca

$C$DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_getRca")
	.dwattr $C$DW$106, DW_AT_low_pc(_SDIO_getRca)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_SDIO_getRca")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$106, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x434)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_sdio.c",line 1078,column 1,is_stmt,address _SDIO_getRca

	.dwfde $C$DW$CIE, _SDIO_getRca
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg17]
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRCardAddr")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_pRCardAddr")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_getRca                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_getRca:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("pRCardAddr")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pRCardAddr")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1082,column 5,is_stmt
        MOV #-5, *SP(#4) ; |1082| 
	.dwpsn	file "src/csl_sdio.c",line 1083,column 5,is_stmt
        MOV #0, *SP(#5) ; |1083| 
	.dwpsn	file "src/csl_sdio.c",line 1085,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1085| 

        CMPU AC1 == AC0, TC1 ; |1085| 
        BCC $C$L64,TC1 ; |1085| 
                                        ; branchcc occurs ; |1085| 
	.dwpsn	file "src/csl_sdio.c",line 1087,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1087| 
        BCC $C$L63,TC1 ; |1087| 
                                        ; branchcc occurs ; |1087| 
	.dwpsn	file "src/csl_sdio.c",line 1089,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1089| 
        MOV *AR3, AR3 ; |1089| 
        MOV #0, port(*AR3(T0)) ; |1089| 
	.dwpsn	file "src/csl_sdio.c",line 1090,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |1090| 
        MOV *AR3, AR3 ; |1090| 
        MOV port(*AR3(T0)), AR1 ; |1090| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1090| 
        MOV #0, port(*AR3(T0)) ; |1090| 
	.dwpsn	file "src/csl_sdio.c",line 1092,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |1092| 
        MOV *AR3, AR3 ; |1092| 
        MOV port(*AR3(T0)), AR1 ; |1092| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1092| 
        MOV #0, port(*AR3(T0)) ; |1092| 
	.dwpsn	file "src/csl_sdio.c",line 1094,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |1094| 
        MOV *AR3, AR3 ; |1094| 
        MOV #515, port(*AR3(T0)) ; |1094| 
        MOV #8, T0
$C$L60:    
$C$DW$L$_SDIO_getRca$4$B:
	.dwpsn	file "src/csl_sdio.c",line 1098,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1098| 
        MOV port(*AR3(T0)), AR1 ; |1098| 
        MOV AR1, *SP(#5) ; |1098| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1099,column 5,is_stmt
        BAND *SP(#5), #144, TC1 ; |1099| 
        BCC $C$L62,!TC1 ; |1099| 
                                        ; branchcc occurs ; |1099| 
$C$DW$L$_SDIO_getRca$4$E:
	.dwpsn	file "src/csl_sdio.c",line 1101,column 6,is_stmt
        BTST #4, *SP(#5), TC1 ; |1101| 
        BCC $C$L61,!TC1 ; |1101| 
                                        ; branchcc occurs ; |1101| 
	.dwpsn	file "src/csl_sdio.c",line 1103,column 7,is_stmt
        MOV #-16, T0 ; |1103| 
        B $C$L65  ; |1103| 
                                        ; branch occurs ; |1103| 
$C$L61:    
	.dwpsn	file "src/csl_sdio.c",line 1107,column 7,is_stmt
        MOV #-17, T0 ; |1107| 
        B $C$L65  ; |1107| 
                                        ; branch occurs ; |1107| 
$C$L62:    
$C$DW$L$_SDIO_getRca$9$B:
	.dwpsn	file "src/csl_sdio.c",line 1110,column 12,is_stmt
        BTST #2, *SP(#5), TC1 ; |1110| 
        BCC $C$L60,!TC1 ; |1110| 
                                        ; branchcc occurs ; |1110| 
$C$DW$L$_SDIO_getRca$9$E:
	.dwpsn	file "src/csl_sdio.c",line 1112,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1112| 
        MOV *AR3, AR3 ; |1112| 
        MOV port(*AR3(T0)), AR1 ; |1112| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1112| 
	.dwpsn	file "src/csl_sdio.c",line 1113,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR2(short(#2))), XAR2
        MOV *AR3, *AR2 ; |1113| 
	.dwpsn	file "src/csl_sdio.c",line 1114,column 4,is_stmt
        MOV #0, *SP(#4) ; |1114| 
	.dwpsn	file "src/csl_sdio.c",line 1115,column 9,is_stmt
        B $C$L64  ; |1115| 
                                        ; branch occurs ; |1115| 
$C$L63:    
	.dwpsn	file "src/csl_sdio.c",line 1118,column 13,is_stmt
        MOV #-6, *SP(#4) ; |1118| 
$C$L64:    
	.dwpsn	file "src/csl_sdio.c",line 1122,column 5,is_stmt
        MOV *SP(#4), T0 ; |1122| 
$C$L65:    
	.dwpsn	file "src/csl_sdio.c",line 1123,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$114	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$114, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L60:1:1714639451")
	.dwattr $C$DW$114, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x448)
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x456)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_SDIO_getRca$4$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_SDIO_getRca$4$E)
$C$DW$116	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$116, DW_AT_low_pc($C$DW$L$_SDIO_getRca$9$B)
	.dwattr $C$DW$116, DW_AT_high_pc($C$DW$L$_SDIO_getRca$9$E)
	.dwendtag $C$DW$114

	.dwattr $C$DW$106, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x463)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text"
	.global	_SDIO_deselectCard

$C$DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_deselectCard")
	.dwattr $C$DW$117, DW_AT_low_pc(_SDIO_deselectCard)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_SDIO_deselectCard")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$117, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x49a)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_sdio.c",line 1179,column 1,is_stmt,address _SDIO_deselectCard

	.dwfde $C$DW$CIE, _SDIO_deselectCard
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_deselectCard                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_deselectCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("deselectCmd")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_deselectCmd")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("rca")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1185,column 5,is_stmt
        MOV #-5, *SP(#2) ; |1185| 
	.dwpsn	file "src/csl_sdio.c",line 1186,column 5,is_stmt
        MOV #0, *SP(#3) ; |1186| 
	.dwpsn	file "src/csl_sdio.c",line 1187,column 5,is_stmt
        MOV #0, *SP(#4) ; |1187| 
	.dwpsn	file "src/csl_sdio.c",line 1188,column 5,is_stmt
        MOV #0, *SP(#5) ; |1188| 
	.dwpsn	file "src/csl_sdio.c",line 1190,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1190| 

        CMPU AC1 == AC0, TC1 ; |1190| 
        BCC $C$L69,TC1 ; |1190| 
                                        ; branchcc occurs ; |1190| 
	.dwpsn	file "src/csl_sdio.c",line 1192,column 9,is_stmt
        MOV #52, T0 ; |1192| 
        MOV *AR3, AR3 ; |1192| 
        MOV port(*AR3(T0)), AR1 ; |1192| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1192| 
        MOV #0, port(*AR3(T0)) ; |1192| 
	.dwpsn	file "src/csl_sdio.c",line 1194,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |1194| 
        MOV *AR3, AR3 ; |1194| 
        MOV port(*AR3(T0)), AR1 ; |1194| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1194| 
        MOV *SP(#5), AR1 ; |1194| 
        OR #0x0000, AR1, AR1 ; |1194| 
        MOV AR1, port(*AR3(T0)) ; |1194| 
	.dwpsn	file "src/csl_sdio.c",line 1196,column 9,is_stmt
        AND #0x7fff, *SP(#3) ; |1196| 
	.dwpsn	file "src/csl_sdio.c",line 1197,column 9,is_stmt
        AND #0xbfff, *SP(#3) ; |1197| 
	.dwpsn	file "src/csl_sdio.c",line 1198,column 9,is_stmt
        AND #0xdfff, *SP(#3) ; |1198| 
	.dwpsn	file "src/csl_sdio.c",line 1199,column 9,is_stmt
        AND #0xefff, *SP(#3) ; |1199| 
	.dwpsn	file "src/csl_sdio.c",line 1200,column 9,is_stmt
        AND #0xf7ff, *SP(#3) ; |1200| 
	.dwpsn	file "src/csl_sdio.c",line 1201,column 9,is_stmt
        AND #0xf9ff, *SP(#3) ; |1201| 
	.dwpsn	file "src/csl_sdio.c",line 1202,column 9,is_stmt
        AND #0xfeff, *SP(#3) ; |1202| 
	.dwpsn	file "src/csl_sdio.c",line 1203,column 9,is_stmt
        AND #0xff7f, *SP(#3) ; |1203| 
	.dwpsn	file "src/csl_sdio.c",line 1204,column 9,is_stmt
        MOV *SP(#3), AR1 ; |1204| 
        AND #0xffc0, AR1, AR1 ; |1204| 
        OR #0x0007, AR1, AR1 ; |1204| 
        MOV AR1, *SP(#3) ; |1204| 
	.dwpsn	file "src/csl_sdio.c",line 1206,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |1206| 
        MOV *AR3, AR3 ; |1206| 
        MOV AR1, port(*AR3(T0)) ; |1206| 
        MOV #8, T0
$C$L66:    
$C$DW$L$_SDIO_deselectCard$3$B:
	.dwpsn	file "src/csl_sdio.c",line 1210,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1210| 
        MOV port(*AR3(T0)), AR1 ; |1210| 
        MOV AR1, *SP(#4) ; |1210| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1211,column 4,is_stmt
        BAND *SP(#4), #144, TC1 ; |1211| 
        BCC $C$L68,!TC1 ; |1211| 
                                        ; branchcc occurs ; |1211| 
$C$DW$L$_SDIO_deselectCard$3$E:
	.dwpsn	file "src/csl_sdio.c",line 1213,column 5,is_stmt
        BTST #4, *SP(#4), TC1 ; |1213| 
        BCC $C$L67,!TC1 ; |1213| 
                                        ; branchcc occurs ; |1213| 
	.dwpsn	file "src/csl_sdio.c",line 1215,column 6,is_stmt
        MOV #-16, T0 ; |1215| 
        B $C$L70  ; |1215| 
                                        ; branch occurs ; |1215| 
$C$L67:    
	.dwpsn	file "src/csl_sdio.c",line 1219,column 6,is_stmt
        MOV #-17, T0 ; |1219| 
        B $C$L70  ; |1219| 
                                        ; branch occurs ; |1219| 
$C$L68:    
$C$DW$L$_SDIO_deselectCard$8$B:
	.dwpsn	file "src/csl_sdio.c",line 1223,column 11,is_stmt
        BTST #2, *SP(#4), TC1 ; |1223| 
        BCC $C$L66,!TC1 ; |1223| 
                                        ; branchcc occurs ; |1223| 
$C$DW$L$_SDIO_deselectCard$8$E:
	.dwpsn	file "src/csl_sdio.c",line 1225,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #0, *AR3(short(#6)) ; |1225| 
	.dwpsn	file "src/csl_sdio.c",line 1226,column 3,is_stmt
        MOV #0, *SP(#2) ; |1226| 
$C$L69:    
	.dwpsn	file "src/csl_sdio.c",line 1229,column 5,is_stmt
        MOV *SP(#2), T0 ; |1229| 
$C$L70:    
	.dwpsn	file "src/csl_sdio.c",line 1230,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$125	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$125, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L66:1:1714639451")
	.dwattr $C$DW$125, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x4b8)
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x4c7)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_SDIO_deselectCard$3$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_SDIO_deselectCard$3$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_SDIO_deselectCard$8$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_SDIO_deselectCard$8$E)
	.dwendtag $C$DW$125

	.dwattr $C$DW$117, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x4ce)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"
	.global	_SDIO_selectCard

$C$DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_selectCard")
	.dwattr $C$DW$128, DW_AT_low_pc(_SDIO_selectCard)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_SDIO_selectCard")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x50b)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_sdio.c",line 1293,column 1,is_stmt,address _SDIO_selectCard

	.dwfde $C$DW$CIE, _SDIO_selectCard
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg17]
$C$DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rca")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_selectCard                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_selectCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("rca")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("sdioStatus")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_sdioStatus")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#2) ; |1293| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1298,column 5,is_stmt
        MOV #-5, *SP(#3) ; |1298| 
	.dwpsn	file "src/csl_sdio.c",line 1299,column 5,is_stmt
        MOV #0, *SP(#4) ; |1299| 
	.dwpsn	file "src/csl_sdio.c",line 1300,column 5,is_stmt
        MOV #0, *SP(#5) ; |1300| 
	.dwpsn	file "src/csl_sdio.c",line 1302,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1302| 

        CMPU AC1 == AC0, TC1 ; |1302| 
        BCC $C$L74,TC1 ; |1302| 
                                        ; branchcc occurs ; |1302| 
	.dwpsn	file "src/csl_sdio.c",line 1304,column 9,is_stmt
        MOV #52, T0 ; |1304| 
        MOV *AR3, AR3 ; |1304| 
        MOV port(*AR3(T0)), AR1 ; |1304| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1304| 
        MOV #0, port(*AR3(T0)) ; |1304| 
	.dwpsn	file "src/csl_sdio.c",line 1306,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |1306| 
        MOV *AR3, AR3 ; |1306| 
        MOV port(*AR3(T0)), AR1 ; |1306| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1306| 
        MOV *SP(#2), AR1 ; |1306| 
        OR #0x0000, AR1, AR1 ; |1306| 
        MOV AR1, port(*AR3(T0)) ; |1306| 
	.dwpsn	file "src/csl_sdio.c",line 1308,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |1308| 
        MOV *AR3, AR3 ; |1308| 
        MOV #775, port(*AR3(T0)) ; |1308| 
	.dwpsn	file "src/csl_sdio.c",line 1310,column 3,is_stmt
        MOV #8, T0
        MOV #0, *SP(#5) ; |1310| 
$C$L71:    
$C$DW$L$_SDIO_selectCard$3$B:
	.dwpsn	file "src/csl_sdio.c",line 1313,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1313| 
        MOV port(*AR3(T0)), AR1 ; |1313| 
        MOV AR1, *SP(#4) ; |1313| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1315,column 4,is_stmt
        MOV *SP(#4), AR1 ; |1315| 
        AND #0x0004, AR1, AR1 ; |1315| 
        OR *SP(#5), AR1, AR1 ; |1315| 
        MOV AR1, *SP(#5) ; |1315| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1316,column 4,is_stmt
        MOV *SP(#4), AR1 ; |1316| 
        AND #0x0002, AR1, AR1 ; |1316| 
        OR *SP(#5), AR1, AR1 ; |1316| 
        MOV AR1, *SP(#5) ; |1316| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1318,column 4,is_stmt
        BAND *SP(#4), #144, TC1 ; |1318| 
        BCC $C$L73,!TC1 ; |1318| 
                                        ; branchcc occurs ; |1318| 
$C$DW$L$_SDIO_selectCard$3$E:
	.dwpsn	file "src/csl_sdio.c",line 1320,column 5,is_stmt
        BTST #4, *SP(#4), TC1 ; |1320| 
        BCC $C$L72,!TC1 ; |1320| 
                                        ; branchcc occurs ; |1320| 
	.dwpsn	file "src/csl_sdio.c",line 1322,column 6,is_stmt
        MOV #-16, T0 ; |1322| 
        B $C$L75  ; |1322| 
                                        ; branch occurs ; |1322| 
$C$L72:    
	.dwpsn	file "src/csl_sdio.c",line 1326,column 6,is_stmt
        MOV #-17, T0 ; |1326| 
        B $C$L75  ; |1326| 
                                        ; branch occurs ; |1326| 
$C$L73:    
$C$DW$L$_SDIO_selectCard$8$B:
	.dwpsn	file "src/csl_sdio.c",line 1329,column 11,is_stmt
        BTST #2, *SP(#5), TC1 ; |1329| 
        BCC $C$L71,!TC1 ; |1329| 
                                        ; branchcc occurs ; |1329| 
$C$DW$L$_SDIO_selectCard$8$E:
$C$DW$L$_SDIO_selectCard$9$B:
        BTST #1, *SP(#5), TC1 ; |1329| 
        BCC $C$L71,!TC1 ; |1329| 
                                        ; branchcc occurs ; |1329| 
$C$DW$L$_SDIO_selectCard$9$E:
	.dwpsn	file "src/csl_sdio.c",line 1332,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, *AR3(short(#6)) ; |1332| 
	.dwpsn	file "src/csl_sdio.c",line 1333,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *SP(#2), AR1 ; |1333| 
        MOV AR1, *AR3 ; |1333| 
	.dwpsn	file "src/csl_sdio.c",line 1335,column 3,is_stmt
        MOV #0, *SP(#3) ; |1335| 
$C$L74:    
	.dwpsn	file "src/csl_sdio.c",line 1338,column 5,is_stmt
        MOV *SP(#3), T0 ; |1338| 
$C$L75:    
	.dwpsn	file "src/csl_sdio.c",line 1339,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$137	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$137, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L71:1:1714639451")
	.dwattr $C$DW$137, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x51f)
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x531)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_SDIO_selectCard$3$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_SDIO_selectCard$3$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_SDIO_selectCard$9$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_SDIO_selectCard$9$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_SDIO_selectCard$8$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_SDIO_selectCard$8$E)
	.dwendtag $C$DW$137

	.dwattr $C$DW$128, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x53b)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.global	_SDIO_sendCommand

$C$DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_sendCommand")
	.dwattr $C$DW$141, DW_AT_low_pc(_SDIO_sendCommand)
	.dwattr $C$DW$141, DW_AT_high_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_SDIO_sendCommand")
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$141, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$141, DW_AT_TI_begin_line(0x57a)
	.dwattr $C$DW$141, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$141, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_sdio.c",line 1406,column 1,is_stmt,address _SDIO_sendCommand

	.dwfde $C$DW$CIE, _SDIO_sendCommand
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg17]
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg3]
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("respTimeout")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_respTimeout")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_sendCommand                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_sendCommand:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("respTimeout")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_respTimeout")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#6) ; |1406| 
        MOV AC1, dbl(*SP(#4)) ; |1406| 
        MOV AC0, dbl(*SP(#2)) ; |1406| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1410,column 5,is_stmt
        MOV #-5, *SP(#7) ; |1410| 
	.dwpsn	file "src/csl_sdio.c",line 1411,column 5,is_stmt
        MOV #0, *SP(#8) ; |1411| 
	.dwpsn	file "src/csl_sdio.c",line 1413,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1413| 

        CMPU AC1 == AC0, TC1 ; |1413| 
        BCC $C$L79,TC1 ; |1413| 
                                        ; branchcc occurs ; |1413| 
	.dwpsn	file "src/csl_sdio.c",line 1415,column 3,is_stmt
        MOV #80, T0 ; |1415| 
        MOV *AR3, AR3 ; |1415| 
        MOV port(*AR3(T0)), AR1 ; |1415| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1415| 
        AND #0xffc0, AR1, AC0 ; |1415| 
        MOV AC0, port(*AR3(T0)) ; |1415| 
	.dwpsn	file "src/csl_sdio.c",line 1416,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |1416| 
        MOV *AR3, AR3 ; |1416| 
        MOV port(*AR3(T0)), AR1 ; |1416| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1416| 
        MOV dbl(*SP(#4)), AC0 ; |1416| 
        AND #0xffff, AC0, AC0 ; |1416| 
        OR #0x0000, AC0, AC0 ; |1416| 
        MOV AC0, port(*AR3(T0)) ; |1416| 
	.dwpsn	file "src/csl_sdio.c",line 1418,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |1418| 
        MOV *AR3, AR3 ; |1418| 
        MOV port(*AR3(T0)), AR1 ; |1418| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1418| 
        MOV dbl(*SP(#4)), AC0 ; |1418| 
        SFTL AC0, #-16, AC0 ; |1418| 
        AND #0xffff, AC0, AC0 ; |1418| 
        OR #0x0000, AC0, AC0 ; |1418| 
        MOV AC0, port(*AR3(T0)) ; |1418| 
	.dwpsn	file "src/csl_sdio.c",line 1421,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |1421| 
        MOV *AR3, AR3 ; |1421| 
        MOV dbl(*SP(#2)), AC0 ; |1421| 
        AND #0xffff, AC0, AC0 ; |1421| 
        MOV AC0, port(*AR3(T0)) ; |1421| 
        MOV #8, T0
$C$L76:    
$C$DW$L$_SDIO_sendCommand$3$B:
	.dwpsn	file "src/csl_sdio.c",line 1425,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1425| 
        MOV port(*AR3(T0)), AR1 ; |1425| 
        MOV AR1, *SP(#8) ; |1425| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 1426,column 4,is_stmt
        BAND *SP(#8), #144, TC1 ; |1426| 
        BCC $C$L78,!TC1 ; |1426| 
                                        ; branchcc occurs ; |1426| 
$C$DW$L$_SDIO_sendCommand$3$E:
	.dwpsn	file "src/csl_sdio.c",line 1428,column 5,is_stmt
        BTST #4, *SP(#8), TC1 ; |1428| 
        BCC $C$L77,!TC1 ; |1428| 
                                        ; branchcc occurs ; |1428| 
	.dwpsn	file "src/csl_sdio.c",line 1430,column 6,is_stmt
        MOV #-16, T0 ; |1430| 
        B $C$L80  ; |1430| 
                                        ; branch occurs ; |1430| 
$C$L77:    
	.dwpsn	file "src/csl_sdio.c",line 1434,column 6,is_stmt
        MOV #-17, T0 ; |1434| 
        B $C$L80  ; |1434| 
                                        ; branch occurs ; |1434| 
$C$L78:    
$C$DW$L$_SDIO_sendCommand$8$B:
	.dwpsn	file "src/csl_sdio.c",line 1438,column 11,is_stmt
        BTST #2, *SP(#8), TC1 ; |1438| 
        BCC $C$L76,!TC1 ; |1438| 
                                        ; branchcc occurs ; |1438| 
$C$DW$L$_SDIO_sendCommand$8$E:
	.dwpsn	file "src/csl_sdio.c",line 1445,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |1445| 
        MOV *AR3, AR3 ; |1445| 
        MOV dbl(*SP(#2)), AC0 ; |1445| 
        SFTL AC0, #-16, AC0 ; |1445| 
        AND #0xffff, AC0, AC0 ; |1445| 
        MOV AC0, port(*AR3(T0)) ; |1445| 
	.dwpsn	file "src/csl_sdio.c",line 1448,column 9,is_stmt
        MOV #0, *SP(#7) ; |1448| 
$C$L79:    
	.dwpsn	file "src/csl_sdio.c",line 1451,column 5,is_stmt
        MOV *SP(#7), T0 ; |1451| 
$C$L80:    
	.dwpsn	file "src/csl_sdio.c",line 1452,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$153	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$153, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L76:1:1714639451")
	.dwattr $C$DW$153, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x58f)
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x59e)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_SDIO_sendCommand$3$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_SDIO_sendCommand$3$E)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_SDIO_sendCommand$8$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_SDIO_sendCommand$8$E)
	.dwendtag $C$DW$153

	.dwattr $C$DW$141, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x5ac)
	.dwattr $C$DW$141, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$141

	.sect	".text"
	.global	_SDIO_getResponse

$C$DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_getResponse")
	.dwattr $C$DW$156, DW_AT_low_pc(_SDIO_getResponse)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_SDIO_getResponse")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$156, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0x5f8)
	.dwattr $C$DW$156, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_sdio.c",line 1531,column 1,is_stmt,address _SDIO_getResponse

	.dwfde $C$DW$CIE, _SDIO_getResponse
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg17]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("respType")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_respType")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pResponse")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_pResponse")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_getResponse                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_getResponse:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("respType")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_respType")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("pResponse")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_pResponse")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |1531| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1534,column 5,is_stmt
        MOV #0, *SP(#6) ; |1534| 
	.dwpsn	file "src/csl_sdio.c",line 1536,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1536| 

        CMPU AC1 == AC0, TC1 ; |1536| 
        BCC $C$L86,TC1 ; |1536| 
                                        ; branchcc occurs ; |1536| 
	.dwpsn	file "src/csl_sdio.c",line 1538,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |1538| 
        BCC $C$L85,TC1 ; |1538| 
                                        ; branchcc occurs ; |1538| 
	.dwpsn	file "src/csl_sdio.c",line 1540,column 13,is_stmt
        B $C$L84  ; |1540| 
                                        ; branch occurs ; |1540| 
$C$L81:    
	.dwpsn	file "src/csl_sdio.c",line 1547,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |1547| 
        MOV *AR3, AR3 ; |1547| 
        MOV port(*AR3(T0)), AR1 ; |1547| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#6)) ; |1547| 
	.dwpsn	file "src/csl_sdio.c",line 1548,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1548| 
        MOV *AR3, AR3 ; |1548| 
        MOV port(*AR3(T0)), AR1 ; |1548| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#7)) ; |1548| 
	.dwpsn	file "src/csl_sdio.c",line 1549,column 26,is_stmt
        B $C$L87  ; |1549| 
                                        ; branch occurs ; |1549| 
$C$L82:    
	.dwpsn	file "src/csl_sdio.c",line 1552,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |1552| 
        MOV *AR3, AR3 ; |1552| 
        MOV port(*AR3(T0)), AR1 ; |1552| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3 ; |1552| 
	.dwpsn	file "src/csl_sdio.c",line 1553,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |1553| 
        MOV *AR3, AR3 ; |1553| 
        MOV port(*AR3(T0)), AR1 ; |1553| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#1)) ; |1553| 
	.dwpsn	file "src/csl_sdio.c",line 1554,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |1554| 
        MOV *AR3, AR3 ; |1554| 
        MOV port(*AR3(T0)), AR1 ; |1554| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#2)) ; |1554| 
	.dwpsn	file "src/csl_sdio.c",line 1555,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |1555| 
        MOV *AR3, AR3 ; |1555| 
        MOV port(*AR3(T0)), AR1 ; |1555| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1555| 
	.dwpsn	file "src/csl_sdio.c",line 1556,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |1556| 
        MOV *AR3, AR3 ; |1556| 
        MOV port(*AR3(T0)), AR1 ; |1556| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#4)) ; |1556| 
	.dwpsn	file "src/csl_sdio.c",line 1557,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |1557| 
        MOV *AR3, AR3 ; |1557| 
        MOV port(*AR3(T0)), AR1 ; |1557| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#5)) ; |1557| 
	.dwpsn	file "src/csl_sdio.c",line 1558,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |1558| 
        MOV *AR3, AR3 ; |1558| 
        MOV port(*AR3(T0)), AR1 ; |1558| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#6)) ; |1558| 
	.dwpsn	file "src/csl_sdio.c",line 1559,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1559| 
        MOV *AR3, AR3 ; |1559| 
        MOV port(*AR3(T0)), AR1 ; |1559| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#7)) ; |1559| 
	.dwpsn	file "src/csl_sdio.c",line 1561,column 24,is_stmt
$C$L83:    
	.dwpsn	file "src/csl_sdio.c",line 1562,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |1562| 
        MOV *AR3, AR3 ; |1562| 
        MOV port(*AR3(T0)), AR1 ; |1562| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3 ; |1562| 
	.dwpsn	file "src/csl_sdio.c",line 1563,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |1563| 
        MOV *AR3, AR3 ; |1563| 
        MOV port(*AR3(T0)), AR1 ; |1563| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#1)) ; |1563| 
	.dwpsn	file "src/csl_sdio.c",line 1564,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |1564| 
        MOV *AR3, AR3 ; |1564| 
        MOV port(*AR3(T0)), AR1 ; |1564| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#2)) ; |1564| 
	.dwpsn	file "src/csl_sdio.c",line 1565,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |1565| 
        MOV *AR3, AR3 ; |1565| 
        MOV port(*AR3(T0)), AR1 ; |1565| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1565| 
	.dwpsn	file "src/csl_sdio.c",line 1566,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |1566| 
        MOV *AR3, AR3 ; |1566| 
        MOV port(*AR3(T0)), AR1 ; |1566| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#4)) ; |1566| 
	.dwpsn	file "src/csl_sdio.c",line 1567,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |1567| 
        MOV *AR3, AR3 ; |1567| 
        MOV port(*AR3(T0)), AR1 ; |1567| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#5)) ; |1567| 
	.dwpsn	file "src/csl_sdio.c",line 1568,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |1568| 
        MOV *AR3, AR3 ; |1568| 
        MOV port(*AR3(T0)), AR1 ; |1568| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#6)) ; |1568| 
	.dwpsn	file "src/csl_sdio.c",line 1569,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1569| 
        MOV *AR3, AR3 ; |1569| 
        MOV port(*AR3(T0)), AR1 ; |1569| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(short(#7)) ; |1569| 
	.dwpsn	file "src/csl_sdio.c",line 1570,column 26,is_stmt
        B $C$L87  ; |1570| 
                                        ; branch occurs ; |1570| 
$C$L84:    
	.dwpsn	file "src/csl_sdio.c",line 1540,column 13,is_stmt

        MOV *SP(#2), AR1 ; |1540| 
||      MOV #1, AR2

        CMP AR1 == AR2, TC1 ; |1540| 
        BCC $C$L81,TC1 ; |1540| 
                                        ; branchcc occurs ; |1540| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1540| 
        BCC $C$L82,TC1 ; |1540| 
                                        ; branchcc occurs ; |1540| 

        SUB #3, AR1, AR1 ; |1540| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |1540| 
        BCC $C$L81,TC1 ; |1540| 
                                        ; branchcc occurs ; |1540| 
        B $C$L83  ; |1540| 
                                        ; branch occurs ; |1540| 
$C$L85:    
	.dwpsn	file "src/csl_sdio.c",line 1575,column 13,is_stmt
        MOV #-6, *SP(#6) ; |1575| 
	.dwpsn	file "src/csl_sdio.c",line 1577,column 5,is_stmt
        B $C$L87  ; |1577| 
                                        ; branch occurs ; |1577| 
$C$L86:    
	.dwpsn	file "src/csl_sdio.c",line 1580,column 9,is_stmt
        MOV #-5, *SP(#6) ; |1580| 
$C$L87:    
	.dwpsn	file "src/csl_sdio.c",line 1583,column 5,is_stmt
        MOV *SP(#6), T0 ; |1583| 
	.dwpsn	file "src/csl_sdio.c",line 1584,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$156, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x630)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$156

	.sect	".text"
	.global	_SDIO_clearResponse

$C$DW$165	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_clearResponse")
	.dwattr $C$DW$165, DW_AT_low_pc(_SDIO_clearResponse)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_SDIO_clearResponse")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x65c)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sdio.c",line 1629,column 1,is_stmt,address _SDIO_clearResponse

	.dwfde $C$DW$CIE, _SDIO_clearResponse
$C$DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_clearResponse                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_clearResponse:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1632,column 5,is_stmt
        MOV #-5, *SP(#2) ; |1632| 
	.dwpsn	file "src/csl_sdio.c",line 1634,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1634| 

        CMPU AC1 == AC0, TC1 ; |1634| 
        BCC $C$L88,TC1 ; |1634| 
                                        ; branchcc occurs ; |1634| 
	.dwpsn	file "src/csl_sdio.c",line 1636,column 9,is_stmt
        MOV #56, T0 ; |1636| 
        MOV *AR3, AR3 ; |1636| 
        MOV port(*AR3(T0)), AR1 ; |1636| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1636| 
        MOV #0, port(*AR3(T0)) ; |1636| 
	.dwpsn	file "src/csl_sdio.c",line 1639,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |1639| 
        MOV *AR3, AR3 ; |1639| 
        MOV port(*AR3(T0)), AR1 ; |1639| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1639| 
        MOV #0, port(*AR3(T0)) ; |1639| 
	.dwpsn	file "src/csl_sdio.c",line 1642,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |1642| 
        MOV *AR3, AR3 ; |1642| 
        MOV port(*AR3(T0)), AR1 ; |1642| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1642| 
        MOV #0, port(*AR3(T0)) ; |1642| 
	.dwpsn	file "src/csl_sdio.c",line 1645,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |1645| 
        MOV *AR3, AR3 ; |1645| 
        MOV port(*AR3(T0)), AR1 ; |1645| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1645| 
        MOV #0, port(*AR3(T0)) ; |1645| 
	.dwpsn	file "src/csl_sdio.c",line 1648,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |1648| 
        MOV *AR3, AR3 ; |1648| 
        MOV port(*AR3(T0)), AR1 ; |1648| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1648| 
        MOV #0, port(*AR3(T0)) ; |1648| 
	.dwpsn	file "src/csl_sdio.c",line 1651,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |1651| 
        MOV *AR3, AR3 ; |1651| 
        MOV port(*AR3(T0)), AR1 ; |1651| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1651| 
        MOV #0, port(*AR3(T0)) ; |1651| 
	.dwpsn	file "src/csl_sdio.c",line 1654,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |1654| 
        MOV *AR3, AR3 ; |1654| 
        MOV port(*AR3(T0)), AR1 ; |1654| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1654| 
        MOV #0, port(*AR3(T0)) ; |1654| 
	.dwpsn	file "src/csl_sdio.c",line 1657,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1657| 
        MOV *AR3, AR3 ; |1657| 
        MOV port(*AR3(T0)), AR1 ; |1657| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1657| 
        MOV #0, port(*AR3(T0)) ; |1657| 
	.dwpsn	file "src/csl_sdio.c",line 1661,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |1661| 
        MOV *AR3, AR3 ; |1661| 
        MOV port(*AR3(T0)), AR1 ; |1661| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1661| 
        AND #0xffc0, AR1, AC0 ; |1661| 
        MOV AC0, port(*AR3(T0)) ; |1661| 
	.dwpsn	file "src/csl_sdio.c",line 1664,column 9,is_stmt
        MOV #0, *SP(#2) ; |1664| 
$C$L88:    
	.dwpsn	file "src/csl_sdio.c",line 1667,column 5,is_stmt
        MOV *SP(#2), T0 ; |1667| 
	.dwpsn	file "src/csl_sdio.c",line 1668,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$165, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x684)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text"
	.global	_SDIO_getStatus

$C$DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_getStatus")
	.dwattr $C$DW$170, DW_AT_low_pc(_SDIO_getStatus)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_SDIO_getStatus")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$170, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x6b5)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_sdio.c",line 1720,column 1,is_stmt,address _SDIO_getStatus

	.dwfde $C$DW$CIE, _SDIO_getStatus
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg17]
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maskValue")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg0]
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pStatus")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_getStatus                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_getStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("maskValue")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("pStatus")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |1720| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1723,column 5,is_stmt
        MOV #0, AC0 ; |1723| 
        MOV AC0, dbl(*SP(#6)) ; |1723| 
	.dwpsn	file "src/csl_sdio.c",line 1725,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1725| 

        CMPU AC1 == AC0, TC1 ; |1725| 
        BCC $C$L89,TC1 ; |1725| 
                                        ; branchcc occurs ; |1725| 
	.dwpsn	file "src/csl_sdio.c",line 1727,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |1727| 
	.dwpsn	file "src/csl_sdio.c",line 1729,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1729| 
        AMOV #12, T0
        MOV uns(port(*AR3(T0))), AC0 ; |1729| 
        MOV AC0, dbl(*SP(#6)) ; |1729| 
	.dwpsn	file "src/csl_sdio.c",line 1730,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1730| 
        SFTL AC0, #16, AC0 ; |1730| 
        MOV AC0, dbl(*SP(#6)) ; |1730| 
	.dwpsn	file "src/csl_sdio.c",line 1731,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1731| 

        MOV dbl(*SP(#6)), AC0 ; |1731| 
||      AMOV #8, T0

        OR port(*AR3(T0)), AC0, AC0 ; |1731| 
        MOV AC0, dbl(*SP(#6)) ; |1731| 
	.dwpsn	file "src/csl_sdio.c",line 1732,column 9,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1732| 
        MOV dbl(*SP(#2)), AC0 ; |1732| 
        AND AC1, AC0 ; |1732| 
        MOV AC0, dbl(*SP(#6)) ; |1732| 
	.dwpsn	file "src/csl_sdio.c",line 1733,column 5,is_stmt
        B $C$L90  ; |1733| 
                                        ; branch occurs ; |1733| 
$C$L89:    
	.dwpsn	file "src/csl_sdio.c",line 1736,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-5, *AR3 ; |1736| 
$C$L90:    
	.dwpsn	file "src/csl_sdio.c",line 1739,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1739| 
	.dwpsn	file "src/csl_sdio.c",line 1740,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$170, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x6cc)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.global	_SDIO_getSdioStatus

$C$DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_getSdioStatus")
	.dwattr $C$DW$179, DW_AT_low_pc(_SDIO_getSdioStatus)
	.dwattr $C$DW$179, DW_AT_high_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_SDIO_getSdioStatus")
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$179, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x6fd)
	.dwattr $C$DW$179, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$179, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_sdio.c",line 1792,column 1,is_stmt,address _SDIO_getSdioStatus

	.dwfde $C$DW$CIE, _SDIO_getSdioStatus
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg17]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maskValue")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg0]
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pStatus")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_getSdioStatus                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_getSdioStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("maskValue")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("pStatus")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |1792| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1795,column 5,is_stmt
        MOV #0, AC0 ; |1795| 
        MOV AC0, dbl(*SP(#6)) ; |1795| 
	.dwpsn	file "src/csl_sdio.c",line 1797,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1797| 

        CMPU AC1 == AC0, TC1 ; |1797| 
        BCC $C$L91,TC1 ; |1797| 
                                        ; branchcc occurs ; |1797| 
	.dwpsn	file "src/csl_sdio.c",line 1799,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |1799| 
	.dwpsn	file "src/csl_sdio.c",line 1801,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #112, T0 ; |1801| 
        MOV *AR3, AR3 ; |1801| 
        MOV uns(port(*AR3(T0))), AC0 ; |1801| 
        MOV AC0, dbl(*SP(#6)) ; |1801| 
	.dwpsn	file "src/csl_sdio.c",line 1802,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1802| 
        SFTL AC0, #16, AC0 ; |1802| 
        MOV AC0, dbl(*SP(#6)) ; |1802| 
	.dwpsn	file "src/csl_sdio.c",line 1803,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #104, T0 ; |1803| 
        MOV *AR3, AR3 ; |1803| 
        MOV dbl(*SP(#6)), AC0 ; |1803| 
        OR port(*AR3(T0)), AC0, AC0 ; |1803| 
        MOV AC0, dbl(*SP(#6)) ; |1803| 
	.dwpsn	file "src/csl_sdio.c",line 1804,column 9,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1804| 
        MOV dbl(*SP(#2)), AC0 ; |1804| 
        AND AC1, AC0 ; |1804| 
        MOV AC0, dbl(*SP(#6)) ; |1804| 
	.dwpsn	file "src/csl_sdio.c",line 1805,column 5,is_stmt
        B $C$L92  ; |1805| 
                                        ; branch occurs ; |1805| 
$C$L91:    
	.dwpsn	file "src/csl_sdio.c",line 1808,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-5, *AR3 ; |1808| 
$C$L92:    
	.dwpsn	file "src/csl_sdio.c",line 1811,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1811| 
	.dwpsn	file "src/csl_sdio.c",line 1812,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$179, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x714)
	.dwattr $C$DW$179, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$179

	.sect	".text"
	.global	_SDIO_eventEnable

$C$DW$188	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_eventEnable")
	.dwattr $C$DW$188, DW_AT_low_pc(_SDIO_eventEnable)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_SDIO_eventEnable")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$188, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x742)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sdio.c",line 1860,column 1,is_stmt,address _SDIO_eventEnable

	.dwfde $C$DW$CIE, _SDIO_eventEnable
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg17]
$C$DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdioEvent")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_sdioEvent")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_eventEnable                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_eventEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("sdioEvent")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_sdioEvent")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |1860| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 1863,column 5,is_stmt
        MOV #0, *SP(#3) ; |1863| 
	.dwpsn	file "src/csl_sdio.c",line 1865,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1865| 

        CMPU AC1 == AC0, TC1 ; |1865| 
        BCC $C$L111,TC1 ; |1865| 
                                        ; branchcc occurs ; |1865| 
	.dwpsn	file "src/csl_sdio.c",line 1867,column 9,is_stmt
        B $C$L110 ; |1867| 
                                        ; branch occurs ; |1867| 
$C$L93:    
	.dwpsn	file "src/csl_sdio.c",line 1870,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1870| 
        MOV *AR3, AR3 ; |1870| 
        MOV port(*AR3(T0)), AR1 ; |1870| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1870| 
        BCLR @#0, AR1 ; |1870| 
        BSET @#0, AR1 ; |1870| 
        MOV AR1, port(*AR3(T0)) ; |1870| 
	.dwpsn	file "src/csl_sdio.c",line 1871,column 22,is_stmt
        B $C$L112 ; |1871| 
                                        ; branch occurs ; |1871| 
$C$L94:    
	.dwpsn	file "src/csl_sdio.c",line 1874,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1874| 
        MOV *AR3, AR3 ; |1874| 
        MOV port(*AR3(T0)), AR1 ; |1874| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1874| 
        BCLR @#1, AR1 ; |1874| 
        BSET @#1, AR1 ; |1874| 
        MOV AR1, port(*AR3(T0)) ; |1874| 
	.dwpsn	file "src/csl_sdio.c",line 1875,column 22,is_stmt
        B $C$L112 ; |1875| 
                                        ; branch occurs ; |1875| 
$C$L95:    
	.dwpsn	file "src/csl_sdio.c",line 1878,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1878| 
        MOV *AR3, AR3 ; |1878| 
        MOV port(*AR3(T0)), AR1 ; |1878| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1878| 
        BCLR @#2, AR1 ; |1878| 
        BSET @#2, AR1 ; |1878| 
        MOV AR1, port(*AR3(T0)) ; |1878| 
	.dwpsn	file "src/csl_sdio.c",line 1879,column 22,is_stmt
        B $C$L112 ; |1879| 
                                        ; branch occurs ; |1879| 
$C$L96:    
	.dwpsn	file "src/csl_sdio.c",line 1882,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1882| 
        MOV *AR3, AR3 ; |1882| 
        MOV port(*AR3(T0)), AR1 ; |1882| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1882| 
        BCLR @#3, AR1 ; |1882| 
        BSET @#3, AR1 ; |1882| 
        MOV AR1, port(*AR3(T0)) ; |1882| 
	.dwpsn	file "src/csl_sdio.c",line 1883,column 22,is_stmt
        B $C$L112 ; |1883| 
                                        ; branch occurs ; |1883| 
$C$L97:    
	.dwpsn	file "src/csl_sdio.c",line 1886,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1886| 
        MOV *AR3, AR3 ; |1886| 
        MOV port(*AR3(T0)), AR1 ; |1886| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1886| 
        BCLR @#4, AR1 ; |1886| 
        BSET @#4, AR1 ; |1886| 
        MOV AR1, port(*AR3(T0)) ; |1886| 
	.dwpsn	file "src/csl_sdio.c",line 1887,column 22,is_stmt
        B $C$L112 ; |1887| 
                                        ; branch occurs ; |1887| 
$C$L98:    
	.dwpsn	file "src/csl_sdio.c",line 1890,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1890| 
        MOV *AR3, AR3 ; |1890| 
        MOV port(*AR3(T0)), AR1 ; |1890| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1890| 
        BCLR @#5, AR1 ; |1890| 
        BSET @#5, AR1 ; |1890| 
        MOV AR1, port(*AR3(T0)) ; |1890| 
	.dwpsn	file "src/csl_sdio.c",line 1891,column 22,is_stmt
        B $C$L112 ; |1891| 
                                        ; branch occurs ; |1891| 
$C$L99:    
	.dwpsn	file "src/csl_sdio.c",line 1894,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1894| 
        MOV *AR3, AR3 ; |1894| 
        MOV port(*AR3(T0)), AR1 ; |1894| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1894| 
        BCLR @#6, AR1 ; |1894| 
        BSET @#6, AR1 ; |1894| 
        MOV AR1, port(*AR3(T0)) ; |1894| 
	.dwpsn	file "src/csl_sdio.c",line 1895,column 22,is_stmt
        B $C$L112 ; |1895| 
                                        ; branch occurs ; |1895| 
$C$L100:    
	.dwpsn	file "src/csl_sdio.c",line 1898,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1898| 
        MOV *AR3, AR3 ; |1898| 
        MOV port(*AR3(T0)), AR1 ; |1898| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1898| 
        BCLR @#7, AR1 ; |1898| 
        BSET @#7, AR1 ; |1898| 
        MOV AR1, port(*AR3(T0)) ; |1898| 
	.dwpsn	file "src/csl_sdio.c",line 1899,column 22,is_stmt
        B $C$L112 ; |1899| 
                                        ; branch occurs ; |1899| 
$C$L101:    
	.dwpsn	file "src/csl_sdio.c",line 1902,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1902| 
        MOV *AR3, AR3 ; |1902| 
        MOV port(*AR3(T0)), AR1 ; |1902| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1902| 
        BCLR @#9, AR1 ; |1902| 
        BSET @#9, AR1 ; |1902| 
        MOV AR1, port(*AR3(T0)) ; |1902| 
	.dwpsn	file "src/csl_sdio.c",line 1903,column 22,is_stmt
        B $C$L112 ; |1903| 
                                        ; branch occurs ; |1903| 
$C$L102:    
	.dwpsn	file "src/csl_sdio.c",line 1906,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1906| 
        MOV *AR3, AR3 ; |1906| 
        MOV port(*AR3(T0)), AR1 ; |1906| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1906| 
        BCLR @#10, AR1 ; |1906| 
        BSET @#10, AR1 ; |1906| 
        MOV AR1, port(*AR3(T0)) ; |1906| 
	.dwpsn	file "src/csl_sdio.c",line 1907,column 22,is_stmt
        B $C$L112 ; |1907| 
                                        ; branch occurs ; |1907| 
$C$L103:    
	.dwpsn	file "src/csl_sdio.c",line 1910,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1910| 
        MOV *AR3, AR3 ; |1910| 
        MOV port(*AR3(T0)), AR1 ; |1910| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1910| 
        BCLR @#11, AR1 ; |1910| 
        BSET @#11, AR1 ; |1910| 
        MOV AR1, port(*AR3(T0)) ; |1910| 
	.dwpsn	file "src/csl_sdio.c",line 1911,column 22,is_stmt
        B $C$L112 ; |1911| 
                                        ; branch occurs ; |1911| 
$C$L104:    
	.dwpsn	file "src/csl_sdio.c",line 1914,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1914| 
        MOV *AR3, AR3 ; |1914| 
        MOV port(*AR3(T0)), AR1 ; |1914| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1914| 
        BCLR @#12, AR1 ; |1914| 
        BSET @#12, AR1 ; |1914| 
        MOV AR1, port(*AR3(T0)) ; |1914| 
	.dwpsn	file "src/csl_sdio.c",line 1915,column 22,is_stmt
        B $C$L112 ; |1915| 
                                        ; branch occurs ; |1915| 
$C$L105:    
	.dwpsn	file "src/csl_sdio.c",line 1918,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1918| 
        MOV *AR3, AR3 ; |1918| 
        MOV #8191, port(*AR3(T0)) ; |1918| 
	.dwpsn	file "src/csl_sdio.c",line 1919,column 22,is_stmt
        B $C$L112 ; |1919| 
                                        ; branch occurs ; |1919| 
$C$L106:    
	.dwpsn	file "src/csl_sdio.c",line 1922,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |1922| 
        MOV *AR3, AR3 ; |1922| 
        MOV port(*AR3(T0)), AR1 ; |1922| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1922| 
        BCLR @#1, AR1 ; |1922| 
        BSET @#1, AR1 ; |1922| 
        MOV AR1, port(*AR3(T0)) ; |1922| 
	.dwpsn	file "src/csl_sdio.c",line 1924,column 22,is_stmt
        B $C$L112 ; |1924| 
                                        ; branch occurs ; |1924| 
$C$L107:    
	.dwpsn	file "src/csl_sdio.c",line 1927,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |1927| 
        MOV *AR3, AR3 ; |1927| 
        MOV port(*AR3(T0)), AR1 ; |1927| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1927| 
        BCLR @#0, AR1 ; |1927| 
        BSET @#0, AR1 ; |1927| 
        MOV AR1, port(*AR3(T0)) ; |1927| 
	.dwpsn	file "src/csl_sdio.c",line 1929,column 22,is_stmt
        B $C$L112 ; |1929| 
                                        ; branch occurs ; |1929| 
$C$L108:    
	.dwpsn	file "src/csl_sdio.c",line 1932,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |1932| 
        MOV *AR3, AR3 ; |1932| 
        MOV port(*AR3(T0)), AR1 ; |1932| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1932| 
        BCLR @#1, AR1 ; |1932| 
        BSET @#1, AR1 ; |1932| 
        MOV AR1, port(*AR3(T0)) ; |1932| 
	.dwpsn	file "src/csl_sdio.c",line 1934,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1934| 
        MOV port(*AR3(T0)), AR1 ; |1934| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1934| 
        BCLR @#0, AR1 ; |1934| 
        BSET @#0, AR1 ; |1934| 
        MOV AR1, port(*AR3(T0)) ; |1934| 
	.dwpsn	file "src/csl_sdio.c",line 1936,column 22,is_stmt
        B $C$L112 ; |1936| 
                                        ; branch occurs ; |1936| 
$C$L109:    
	.dwpsn	file "src/csl_sdio.c",line 1939,column 17,is_stmt
        MOV #-6, *SP(#3) ; |1939| 
	.dwpsn	file "src/csl_sdio.c",line 1940,column 22,is_stmt
        B $C$L112 ; |1940| 
                                        ; branch occurs ; |1940| 
$C$L110:    
	.dwpsn	file "src/csl_sdio.c",line 1867,column 9,is_stmt
        MOV *SP(#2), AC0 ; |1867| 

        MOV AC0, AR1 ; |1867| 
||      MOV #16, AR2 ; |1867| 

        CMPU AR1 <= AR2, TC1 ; |1867| 
        BCC $C$L109,!TC1 ; |1867| 
                                        ; branchcc occurs ; |1867| 
        SFTS AC0, #1, AC0 ; |1867| 
        MOV mmap(AC0L), AC1 ; |1867| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |1867| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |1867| 
        ADD AC1, AC0 ; |1867| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |1867| 
        B AC0     ; |1867| 
                                        ; branch occurs ; |1867| 
	.sect	".switch:_SDIO_eventEnable"
	.clink
$C$SW1:	.long	$C$L93	; 0
	.long	$C$L94	; 1
	.long	$C$L95	; 2
	.long	$C$L96	; 3
	.long	$C$L97	; 4
	.long	$C$L98	; 5
	.long	$C$L99	; 6
	.long	$C$L100	; 7
	.long	$C$L109	; 0
	.long	$C$L101	; 9
	.long	$C$L102	; 10
	.long	$C$L103	; 11
	.long	$C$L104	; 12
	.long	$C$L105	; 13
	.long	$C$L106	; 14
	.long	$C$L107	; 15
	.long	$C$L108	; 16
	.sect	".text"
$C$L111:    
	.dwpsn	file "src/csl_sdio.c",line 1945,column 9,is_stmt
        MOV #-5, *SP(#3) ; |1945| 
$C$L112:    
	.dwpsn	file "src/csl_sdio.c",line 1948,column 5,is_stmt
        MOV *SP(#3), T0 ; |1948| 
	.dwpsn	file "src/csl_sdio.c",line 1949,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$188, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x79d)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".text"
	.global	_SDIO_eventDisable

$C$DW$195	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_eventDisable")
	.dwattr $C$DW$195, DW_AT_low_pc(_SDIO_eventDisable)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_SDIO_eventDisable")
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$195, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0x7cb)
	.dwattr $C$DW$195, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sdio.c",line 1997,column 1,is_stmt,address _SDIO_eventDisable

	.dwfde $C$DW$CIE, _SDIO_eventDisable
$C$DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg17]
$C$DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdioEvent")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_sdioEvent")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_eventDisable                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_eventDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("sdioEvent")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_sdioEvent")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |1997| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2000,column 5,is_stmt
        MOV #0, *SP(#3) ; |2000| 
	.dwpsn	file "src/csl_sdio.c",line 2002,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2002| 

        CMPU AC1 == AC0, TC1 ; |2002| 
        BCC $C$L131,TC1 ; |2002| 
                                        ; branchcc occurs ; |2002| 
	.dwpsn	file "src/csl_sdio.c",line 2004,column 9,is_stmt
        B $C$L130 ; |2004| 
                                        ; branch occurs ; |2004| 
$C$L113:    
	.dwpsn	file "src/csl_sdio.c",line 2007,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2007| 
        MOV *AR3, AR3 ; |2007| 
        MOV port(*AR3(T0)), AR1 ; |2007| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2007| 
        BCLR @#0, AR1 ; |2007| 
        MOV AR1, port(*AR3(T0)) ; |2007| 
	.dwpsn	file "src/csl_sdio.c",line 2008,column 22,is_stmt
        B $C$L132 ; |2008| 
                                        ; branch occurs ; |2008| 
$C$L114:    
	.dwpsn	file "src/csl_sdio.c",line 2011,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2011| 
        MOV *AR3, AR3 ; |2011| 
        MOV port(*AR3(T0)), AR1 ; |2011| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2011| 
        BCLR @#1, AR1 ; |2011| 
        MOV AR1, port(*AR3(T0)) ; |2011| 
	.dwpsn	file "src/csl_sdio.c",line 2012,column 22,is_stmt
        B $C$L132 ; |2012| 
                                        ; branch occurs ; |2012| 
$C$L115:    
	.dwpsn	file "src/csl_sdio.c",line 2015,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2015| 
        MOV *AR3, AR3 ; |2015| 
        MOV port(*AR3(T0)), AR1 ; |2015| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2015| 
        BCLR @#2, AR1 ; |2015| 
        MOV AR1, port(*AR3(T0)) ; |2015| 
	.dwpsn	file "src/csl_sdio.c",line 2016,column 22,is_stmt
        B $C$L132 ; |2016| 
                                        ; branch occurs ; |2016| 
$C$L116:    
	.dwpsn	file "src/csl_sdio.c",line 2019,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2019| 
        MOV *AR3, AR3 ; |2019| 
        MOV port(*AR3(T0)), AR1 ; |2019| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2019| 
        BCLR @#3, AR1 ; |2019| 
        MOV AR1, port(*AR3(T0)) ; |2019| 
	.dwpsn	file "src/csl_sdio.c",line 2020,column 22,is_stmt
        B $C$L132 ; |2020| 
                                        ; branch occurs ; |2020| 
$C$L117:    
	.dwpsn	file "src/csl_sdio.c",line 2023,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2023| 
        MOV *AR3, AR3 ; |2023| 
        MOV port(*AR3(T0)), AR1 ; |2023| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2023| 
        BCLR @#4, AR1 ; |2023| 
        MOV AR1, port(*AR3(T0)) ; |2023| 
	.dwpsn	file "src/csl_sdio.c",line 2024,column 22,is_stmt
        B $C$L132 ; |2024| 
                                        ; branch occurs ; |2024| 
$C$L118:    
	.dwpsn	file "src/csl_sdio.c",line 2027,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2027| 
        MOV *AR3, AR3 ; |2027| 
        MOV port(*AR3(T0)), AR1 ; |2027| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2027| 
        BCLR @#5, AR1 ; |2027| 
        MOV AR1, port(*AR3(T0)) ; |2027| 
	.dwpsn	file "src/csl_sdio.c",line 2028,column 22,is_stmt
        B $C$L132 ; |2028| 
                                        ; branch occurs ; |2028| 
$C$L119:    
	.dwpsn	file "src/csl_sdio.c",line 2031,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2031| 
        MOV *AR3, AR3 ; |2031| 
        MOV port(*AR3(T0)), AR1 ; |2031| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2031| 
        BCLR @#6, AR1 ; |2031| 
        MOV AR1, port(*AR3(T0)) ; |2031| 
	.dwpsn	file "src/csl_sdio.c",line 2032,column 22,is_stmt
        B $C$L132 ; |2032| 
                                        ; branch occurs ; |2032| 
$C$L120:    
	.dwpsn	file "src/csl_sdio.c",line 2035,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2035| 
        MOV *AR3, AR3 ; |2035| 
        MOV port(*AR3(T0)), AR1 ; |2035| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2035| 
        BCLR @#7, AR1 ; |2035| 
        MOV AR1, port(*AR3(T0)) ; |2035| 
	.dwpsn	file "src/csl_sdio.c",line 2036,column 22,is_stmt
        B $C$L132 ; |2036| 
                                        ; branch occurs ; |2036| 
$C$L121:    
	.dwpsn	file "src/csl_sdio.c",line 2039,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2039| 
        MOV *AR3, AR3 ; |2039| 
        MOV port(*AR3(T0)), AR1 ; |2039| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2039| 
        BCLR @#9, AR1 ; |2039| 
        MOV AR1, port(*AR3(T0)) ; |2039| 
	.dwpsn	file "src/csl_sdio.c",line 2040,column 22,is_stmt
        B $C$L132 ; |2040| 
                                        ; branch occurs ; |2040| 
$C$L122:    
	.dwpsn	file "src/csl_sdio.c",line 2043,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2043| 
        MOV *AR3, AR3 ; |2043| 
        MOV port(*AR3(T0)), AR1 ; |2043| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2043| 
        BCLR @#10, AR1 ; |2043| 
        MOV AR1, port(*AR3(T0)) ; |2043| 
	.dwpsn	file "src/csl_sdio.c",line 2044,column 22,is_stmt
        B $C$L132 ; |2044| 
                                        ; branch occurs ; |2044| 
$C$L123:    
	.dwpsn	file "src/csl_sdio.c",line 2047,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2047| 
        MOV *AR3, AR3 ; |2047| 
        MOV port(*AR3(T0)), AR1 ; |2047| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2047| 
        BCLR @#11, AR1 ; |2047| 
        MOV AR1, port(*AR3(T0)) ; |2047| 
	.dwpsn	file "src/csl_sdio.c",line 2048,column 22,is_stmt
        B $C$L132 ; |2048| 
                                        ; branch occurs ; |2048| 
$C$L124:    
	.dwpsn	file "src/csl_sdio.c",line 2051,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2051| 
        MOV *AR3, AR3 ; |2051| 
        MOV port(*AR3(T0)), AR1 ; |2051| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2051| 
        BCLR @#12, AR1 ; |2051| 
        MOV AR1, port(*AR3(T0)) ; |2051| 
	.dwpsn	file "src/csl_sdio.c",line 2052,column 22,is_stmt
        B $C$L132 ; |2052| 
                                        ; branch occurs ; |2052| 
$C$L125:    
	.dwpsn	file "src/csl_sdio.c",line 2055,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |2055| 
        MOV *AR3, AR3 ; |2055| 
        MOV #57344, port(*AR3(T0)) ; |2055| 
	.dwpsn	file "src/csl_sdio.c",line 2056,column 22,is_stmt
        B $C$L132 ; |2056| 
                                        ; branch occurs ; |2056| 
$C$L126:    
	.dwpsn	file "src/csl_sdio.c",line 2059,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |2059| 
        MOV *AR3, AR3 ; |2059| 
        MOV port(*AR3(T0)), AR1 ; |2059| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2059| 
        BCLR @#1, AR1 ; |2059| 
        MOV AR1, port(*AR3(T0)) ; |2059| 
	.dwpsn	file "src/csl_sdio.c",line 2061,column 22,is_stmt
        B $C$L132 ; |2061| 
                                        ; branch occurs ; |2061| 
$C$L127:    
	.dwpsn	file "src/csl_sdio.c",line 2064,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |2064| 
        MOV *AR3, AR3 ; |2064| 
        MOV port(*AR3(T0)), AR1 ; |2064| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2064| 
        BCLR @#0, AR1 ; |2064| 
        MOV AR1, port(*AR3(T0)) ; |2064| 
	.dwpsn	file "src/csl_sdio.c",line 2066,column 22,is_stmt
        B $C$L132 ; |2066| 
                                        ; branch occurs ; |2066| 
$C$L128:    
	.dwpsn	file "src/csl_sdio.c",line 2069,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #108, T0 ; |2069| 
        MOV *AR3, AR3 ; |2069| 
        MOV port(*AR3(T0)), AR1 ; |2069| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2069| 
        BCLR @#1, AR1 ; |2069| 
        MOV AR1, port(*AR3(T0)) ; |2069| 
	.dwpsn	file "src/csl_sdio.c",line 2071,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2071| 
        MOV port(*AR3(T0)), AR1 ; |2071| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2071| 
        BCLR @#0, AR1 ; |2071| 
        MOV AR1, port(*AR3(T0)) ; |2071| 
	.dwpsn	file "src/csl_sdio.c",line 2073,column 22,is_stmt
        B $C$L132 ; |2073| 
                                        ; branch occurs ; |2073| 
$C$L129:    
	.dwpsn	file "src/csl_sdio.c",line 2076,column 17,is_stmt
        MOV #-6, *SP(#3) ; |2076| 
	.dwpsn	file "src/csl_sdio.c",line 2077,column 22,is_stmt
        B $C$L132 ; |2077| 
                                        ; branch occurs ; |2077| 
$C$L130:    
	.dwpsn	file "src/csl_sdio.c",line 2004,column 9,is_stmt
        MOV *SP(#2), AC0 ; |2004| 

        MOV AC0, AR1 ; |2004| 
||      MOV #16, AR2 ; |2004| 

        CMPU AR1 <= AR2, TC1 ; |2004| 
        BCC $C$L129,!TC1 ; |2004| 
                                        ; branchcc occurs ; |2004| 
        SFTS AC0, #1, AC0 ; |2004| 
        MOV mmap(AC0L), AC1 ; |2004| 
        MOV #($C$SW3 >> 16) << #16, AC0 ; |2004| 
        OR #($C$SW3 & 0xffff), AC0, AC0 ; |2004| 
        ADD AC1, AC0 ; |2004| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |2004| 
        B AC0     ; |2004| 
                                        ; branch occurs ; |2004| 
	.sect	".switch:_SDIO_eventDisable"
	.clink
$C$SW3:	.long	$C$L113	; 0
	.long	$C$L114	; 1
	.long	$C$L115	; 2
	.long	$C$L116	; 3
	.long	$C$L117	; 4
	.long	$C$L118	; 5
	.long	$C$L119	; 6
	.long	$C$L120	; 7
	.long	$C$L129	; 0
	.long	$C$L121	; 9
	.long	$C$L122	; 10
	.long	$C$L123	; 11
	.long	$C$L124	; 12
	.long	$C$L125	; 13
	.long	$C$L126	; 14
	.long	$C$L127	; 15
	.long	$C$L128	; 16
	.sect	".text"
$C$L131:    
	.dwpsn	file "src/csl_sdio.c",line 2082,column 9,is_stmt
        MOV #-5, *SP(#3) ; |2082| 
$C$L132:    
	.dwpsn	file "src/csl_sdio.c",line 2085,column 5,is_stmt
        MOV *SP(#3), T0 ; |2085| 
	.dwpsn	file "src/csl_sdio.c",line 2086,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$195, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x826)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

	.sect	".text"
	.global	_SDIO_readWaitEnable

$C$DW$202	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_readWaitEnable")
	.dwattr $C$DW$202, DW_AT_low_pc(_SDIO_readWaitEnable)
	.dwattr $C$DW$202, DW_AT_high_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_SDIO_readWaitEnable")
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$202, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0x852)
	.dwattr $C$DW$202, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$202, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sdio.c",line 2131,column 1,is_stmt,address _SDIO_readWaitEnable

	.dwfde $C$DW$CIE, _SDIO_readWaitEnable
$C$DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_readWaitEnable                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_readWaitEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2134,column 5,is_stmt
        MOV #-5, *SP(#2) ; |2134| 
	.dwpsn	file "src/csl_sdio.c",line 2136,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2136| 

        CMPU AC1 == AC0, TC1 ; |2136| 
        BCC $C$L133,TC1 ; |2136| 
                                        ; branchcc occurs ; |2136| 
	.dwpsn	file "src/csl_sdio.c",line 2138,column 9,is_stmt
        MOV #0, *SP(#2) ; |2138| 
	.dwpsn	file "src/csl_sdio.c",line 2140,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |2140| 
        MOV *AR3, AR3 ; |2140| 
        MOV port(*AR3(T0)), AR1 ; |2140| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2140| 
        BCLR @#0, AR1 ; |2140| 
        BSET @#0, AR1 ; |2140| 
        MOV AR1, port(*AR3(T0)) ; |2140| 
$C$L133:    
	.dwpsn	file "src/csl_sdio.c",line 2143,column 5,is_stmt
        MOV *SP(#2), T0 ; |2143| 
	.dwpsn	file "src/csl_sdio.c",line 2144,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$202, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x860)
	.dwattr $C$DW$202, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$202

	.sect	".text"
	.global	_SDIO_readWaitDisable

$C$DW$207	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_readWaitDisable")
	.dwattr $C$DW$207, DW_AT_low_pc(_SDIO_readWaitDisable)
	.dwattr $C$DW$207, DW_AT_high_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_SDIO_readWaitDisable")
	.dwattr $C$DW$207, DW_AT_external
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$207, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x88c)
	.dwattr $C$DW$207, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$207, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_sdio.c",line 2189,column 1,is_stmt,address _SDIO_readWaitDisable

	.dwfde $C$DW$CIE, _SDIO_readWaitDisable
$C$DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDIO_readWaitDisable                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_readWaitDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2192,column 5,is_stmt
        MOV #-5, *SP(#2) ; |2192| 
	.dwpsn	file "src/csl_sdio.c",line 2194,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2194| 

        CMPU AC1 == AC0, TC1 ; |2194| 
        BCC $C$L134,TC1 ; |2194| 
                                        ; branchcc occurs ; |2194| 
	.dwpsn	file "src/csl_sdio.c",line 2196,column 9,is_stmt
        MOV #0, *SP(#2) ; |2196| 
	.dwpsn	file "src/csl_sdio.c",line 2198,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |2198| 
        MOV *AR3, AR3 ; |2198| 
        MOV port(*AR3(T0)), AR1 ; |2198| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2198| 
        BCLR @#0, AR1 ; |2198| 
        MOV AR1, port(*AR3(T0)) ; |2198| 
$C$L134:    
	.dwpsn	file "src/csl_sdio.c",line 2201,column 5,is_stmt
        MOV *SP(#2), T0 ; |2201| 
	.dwpsn	file "src/csl_sdio.c",line 2202,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$207, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x89a)
	.dwattr $C$DW$207, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$207

	.sect	".text"
	.global	_SDIO_readSingleByte

$C$DW$212	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_readSingleByte")
	.dwattr $C$DW$212, DW_AT_low_pc(_SDIO_readSingleByte)
	.dwattr $C$DW$212, DW_AT_high_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_SDIO_readSingleByte")
	.dwattr $C$DW$212, DW_AT_external
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$212, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$212, DW_AT_TI_begin_line(0x8da)
	.dwattr $C$DW$212, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$212, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_sdio.c",line 2270,column 1,is_stmt,address _SDIO_readSingleByte

	.dwfde $C$DW$CIE, _SDIO_readSingleByte
$C$DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg17]
$C$DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readAddr")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg0]
$C$DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg12]
$C$DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadData")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_pReadData")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDIO_readSingleByte                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_readSingleByte:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("readAddr")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("pReadData")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_pReadData")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$221	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$222	.dwtag  DW_TAG_variable, DW_AT_name("rawFlag")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_rawFlag")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$223	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("response")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_response")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 16]
        MOV XAR1, dbl(*SP(#6))
        MOV T0, *SP(#4) ; |2270| 
        MOV AC0, dbl(*SP(#2)) ; |2270| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2278,column 5,is_stmt
        MOV #0, AC0 ; |2278| 
        MOV AC0, dbl(*SP(#8)) ; |2278| 
	.dwpsn	file "src/csl_sdio.c",line 2279,column 5,is_stmt
        MOV AC0, dbl(*SP(#10)) ; |2279| 
	.dwpsn	file "src/csl_sdio.c",line 2280,column 5,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |2280| 
	.dwpsn	file "src/csl_sdio.c",line 2281,column 5,is_stmt
        MOV #-5, *SP(#14) ; |2281| 
	.dwpsn	file "src/csl_sdio.c",line 2282,column 5,is_stmt
        MOV #0, *SP(#15) ; |2282| 
	.dwpsn	file "src/csl_sdio.c",line 2283,column 5,is_stmt
        MOV #0, *SP(#16) ; |2283| 
	.dwpsn	file "src/csl_sdio.c",line 2285,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2285| 

        CMPU AC1 == AC0, TC1 ; |2285| 
        BCC $C$L139,TC1 ; |2285| 
                                        ; branchcc occurs ; |2285| 
	.dwpsn	file "src/csl_sdio.c",line 2287,column 9,is_stmt

        MOV *SP(#4), AR1 ; |2287| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |2287| 
        BCC $C$L138,TC1 ; |2287| 
                                        ; branchcc occurs ; |2287| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |2287| 
        BCC $C$L138,TC1 ; |2287| 
                                        ; branchcc occurs ; |2287| 
	.dwpsn	file "src/csl_sdio.c",line 2289,column 13,is_stmt
        MOV #0, AC0 ; |2289| 
        MOV AC0, dbl(*SP(#8)) ; |2289| 
	.dwpsn	file "src/csl_sdio.c",line 2290,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |2290| 

        SFTL AC0, #27, AC0 ; |2290| 
||      MOV dbl(*SP(#2)), AC1 ; |2290| 

        MOV uns(*SP(#4)), AC1 ; |2290| 
||      OR AC1 << #9, AC0 ; |2290| 

        MOV dbl(*SP(#12)), AC1 ; |2290| 
||      OR AC1 << #28, AC0 ; |2290| 

        OR AC1 << #31, AC0 ; |2290| 
        MOV AC0, dbl(*SP(#8)) ; |2290| 
	.dwpsn	file "src/csl_sdio.c",line 2293,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2293| 
        MOV *AR3, AR3 ; |2293| 
        MOV port(*AR3(T0)), AR1 ; |2293| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2293| 
        AND #0xffc0, AR1, AC0 ; |2293| 
        MOV AC0, port(*AR3(T0)) ; |2293| 
	.dwpsn	file "src/csl_sdio.c",line 2294,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2294| 
        MOV *AR3, AR3 ; |2294| 
        MOV #0, port(*AR3(T0)) ; |2294| 
	.dwpsn	file "src/csl_sdio.c",line 2296,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |2296| 
        MOV *AR3, AR3 ; |2296| 
        MOV port(*AR3(T0)), AR1 ; |2296| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2296| 
        MOV dbl(*SP(#8)), AC0 ; |2296| 
        MOV #0 << #16, AC1 ; |2296| 
        AND #0xffff, AC0, AC0 ; |2296| 
        OR AC1, AC0 ; |2296| 
        MOV AC0, port(*AR3(T0)) ; |2296| 
	.dwpsn	file "src/csl_sdio.c",line 2298,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |2298| 
        MOV *AR3, AR3 ; |2298| 
        MOV port(*AR3(T0)), AR1 ; |2298| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2298| 
        MOV dbl(*SP(#8)), AC0 ; |2298| 
        SFTL AC0, #-16, AC0 ; |2298| 
        AND #0xffff, AC0, AC0 ; |2298| 
        OR AC1, AC0 ; |2298| 
        MOV AC0, port(*AR3(T0)) ; |2298| 
	.dwpsn	file "src/csl_sdio.c",line 2301,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |2301| 
        MOV *AR3, AR3 ; |2301| 
        MOV #564, port(*AR3(T0)) ; |2301| 
        MOV #8, T0
$C$L135:    
$C$DW$L$_SDIO_readSingleByte$5$B:
	.dwpsn	file "src/csl_sdio.c",line 2305,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2305| 
        MOV port(*AR3(T0)), AR1 ; |2305| 
        MOV AR1, *SP(#16) ; |2305| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 2306,column 5,is_stmt
        BAND *SP(#16), #144, TC1 ; |2306| 
        BCC $C$L137,!TC1 ; |2306| 
                                        ; branchcc occurs ; |2306| 
$C$DW$L$_SDIO_readSingleByte$5$E:
	.dwpsn	file "src/csl_sdio.c",line 2308,column 6,is_stmt
        BTST #4, *SP(#16), TC1 ; |2308| 
        BCC $C$L136,!TC1 ; |2308| 
                                        ; branchcc occurs ; |2308| 
	.dwpsn	file "src/csl_sdio.c",line 2310,column 7,is_stmt
        MOV #-16, T0 ; |2310| 
        B $C$L140 ; |2310| 
                                        ; branch occurs ; |2310| 
$C$L136:    
	.dwpsn	file "src/csl_sdio.c",line 2314,column 7,is_stmt
        MOV #-17, T0 ; |2314| 
        B $C$L140 ; |2314| 
                                        ; branch occurs ; |2314| 
$C$L137:    
$C$DW$L$_SDIO_readSingleByte$10$B:
	.dwpsn	file "src/csl_sdio.c",line 2318,column 12,is_stmt
        BTST #2, *SP(#16), TC1 ; |2318| 
        BCC $C$L135,!TC1 ; |2318| 
                                        ; branchcc occurs ; |2318| 
$C$DW$L$_SDIO_readSingleByte$10$E:
	.dwpsn	file "src/csl_sdio.c",line 2320,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2320| 
        MOV *AR3, AR3 ; |2320| 
        MOV port(*AR3(T0)), AR1 ; |2320| 
        MOV AR1, *SP(#15) ; |2320| 
	.dwpsn	file "src/csl_sdio.c",line 2321,column 13,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV uns(low_byte(*SP(#15))), AR1 ; |2321| 
        MOV AR1, *AR3 ; |2321| 
	.dwpsn	file "src/csl_sdio.c",line 2323,column 13,is_stmt
        MOV #0, *SP(#14) ; |2323| 
	.dwpsn	file "src/csl_sdio.c",line 2324,column 9,is_stmt
        B $C$L139 ; |2324| 
                                        ; branch occurs ; |2324| 
$C$L138:    
	.dwpsn	file "src/csl_sdio.c",line 2327,column 13,is_stmt
        MOV #-6, *SP(#14) ; |2327| 
$C$L139:    
	.dwpsn	file "src/csl_sdio.c",line 2331,column 5,is_stmt
        MOV *SP(#14), T0 ; |2331| 
$C$L140:    
	.dwpsn	file "src/csl_sdio.c",line 2332,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$228	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$228, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L135:1:1714639451")
	.dwattr $C$DW$228, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x8ff)
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x90e)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_SDIO_readSingleByte$5$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_SDIO_readSingleByte$5$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_SDIO_readSingleByte$10$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_SDIO_readSingleByte$10$E)
	.dwendtag $C$DW$228

	.dwattr $C$DW$212, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$212, DW_AT_TI_end_line(0x91c)
	.dwattr $C$DW$212, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$212

	.sect	".text"
	.global	_SDIO_writeSingleByte

$C$DW$231	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_writeSingleByte")
	.dwattr $C$DW$231, DW_AT_low_pc(_SDIO_writeSingleByte)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_SDIO_writeSingleByte")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$231, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x95d)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_sdio.c",line 2401,column 1,is_stmt,address _SDIO_writeSingleByte

	.dwfde $C$DW$CIE, _SDIO_writeSingleByte
$C$DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg17]
$C$DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeAddr")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg0]
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg12]
$C$DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeData")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_writeData")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SDIO_writeSingleByte                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_writeSingleByte:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("writeAddr")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("writeData")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_writeData")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("rawFlag")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_rawFlag")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV T1, *SP(#5) ; |2401| 
        MOV T0, *SP(#4) ; |2401| 
        MOV AC0, dbl(*SP(#2)) ; |2401| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2408,column 5,is_stmt
        MOV #0, AC0 ; |2408| 
        MOV AC0, dbl(*SP(#6)) ; |2408| 
	.dwpsn	file "src/csl_sdio.c",line 2409,column 5,is_stmt
        MOV AC0, dbl(*SP(#8)) ; |2409| 
	.dwpsn	file "src/csl_sdio.c",line 2410,column 5,is_stmt
        MOV #1, AC0 ; |2410| 
        MOV AC0, dbl(*SP(#10)) ; |2410| 
	.dwpsn	file "src/csl_sdio.c",line 2411,column 5,is_stmt
        MOV #-5, *SP(#12) ; |2411| 
	.dwpsn	file "src/csl_sdio.c",line 2412,column 5,is_stmt
        MOV #0, *SP(#13) ; |2412| 
	.dwpsn	file "src/csl_sdio.c",line 2414,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2414| 

        CMPU AC1 == AC0, TC1 ; |2414| 
        BCC $C$L145,TC1 ; |2414| 
                                        ; branchcc occurs ; |2414| 
	.dwpsn	file "src/csl_sdio.c",line 2416,column 9,is_stmt

        MOV *SP(#4), AR1 ; |2416| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |2416| 
        BCC $C$L144,TC1 ; |2416| 
                                        ; branchcc occurs ; |2416| 
	.dwpsn	file "src/csl_sdio.c",line 2418,column 13,is_stmt
        MOV #0, AC0 ; |2418| 
        MOV AC0, dbl(*SP(#6)) ; |2418| 
	.dwpsn	file "src/csl_sdio.c",line 2419,column 13,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |2419| 
        MOV uns(*SP(#5)), AC0 ; |2419| 

        MOV dbl(*SP(#8)), AC1 ; |2419| 
||      OR AC1 << #9, AC0 ; |2419| 

        MOV uns(*SP(#4)), AC1 ; |2419| 
||      OR AC1 << #27, AC0 ; |2419| 

        MOV dbl(*SP(#10)), AC1 ; |2419| 
||      OR AC1 << #28, AC0 ; |2419| 

        OR AC1 << #31, AC0 ; |2419| 
        MOV AC0, dbl(*SP(#6)) ; |2419| 
	.dwpsn	file "src/csl_sdio.c",line 2422,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2422| 
        MOV *AR3, AR3 ; |2422| 
        MOV port(*AR3(T0)), AR1 ; |2422| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2422| 
        AND #0xffc0, AR1, AC0 ; |2422| 
        MOV AC0, port(*AR3(T0)) ; |2422| 
	.dwpsn	file "src/csl_sdio.c",line 2424,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |2424| 
        MOV *AR3, AR3 ; |2424| 
        MOV port(*AR3(T0)), AR1 ; |2424| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2424| 
        MOV dbl(*SP(#6)), AC0 ; |2424| 
        MOV #0 << #16, AC1 ; |2424| 
        AND #0xffff, AC0, AC0 ; |2424| 
        OR AC1, AC0 ; |2424| 
        MOV AC0, port(*AR3(T0)) ; |2424| 
	.dwpsn	file "src/csl_sdio.c",line 2426,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |2426| 
        MOV *AR3, AR3 ; |2426| 
        MOV port(*AR3(T0)), AR1 ; |2426| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2426| 
        MOV dbl(*SP(#6)), AC0 ; |2426| 
        SFTL AC0, #-16, AC0 ; |2426| 
        AND #0xffff, AC0, AC0 ; |2426| 
        OR AC1, AC0 ; |2426| 
        MOV AC0, port(*AR3(T0)) ; |2426| 
	.dwpsn	file "src/csl_sdio.c",line 2429,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |2429| 
        MOV *AR3, AR3 ; |2429| 
        MOV #564, port(*AR3(T0)) ; |2429| 
        MOV #8, T0
$C$L141:    
$C$DW$L$_SDIO_writeSingleByte$4$B:
	.dwpsn	file "src/csl_sdio.c",line 2433,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2433| 
        MOV port(*AR3(T0)), AR1 ; |2433| 
        MOV AR1, *SP(#13) ; |2433| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 2434,column 5,is_stmt
        BAND *SP(#13), #144, TC1 ; |2434| 
        BCC $C$L143,!TC1 ; |2434| 
                                        ; branchcc occurs ; |2434| 
$C$DW$L$_SDIO_writeSingleByte$4$E:
	.dwpsn	file "src/csl_sdio.c",line 2436,column 6,is_stmt
        BTST #4, *SP(#13), TC1 ; |2436| 
        BCC $C$L142,!TC1 ; |2436| 
                                        ; branchcc occurs ; |2436| 
	.dwpsn	file "src/csl_sdio.c",line 2438,column 7,is_stmt
        MOV #-16, T0 ; |2438| 
        B $C$L146 ; |2438| 
                                        ; branch occurs ; |2438| 
$C$L142:    
	.dwpsn	file "src/csl_sdio.c",line 2442,column 7,is_stmt
        MOV #-17, T0 ; |2442| 
        B $C$L146 ; |2442| 
                                        ; branch occurs ; |2442| 
$C$L143:    
$C$DW$L$_SDIO_writeSingleByte$9$B:
	.dwpsn	file "src/csl_sdio.c",line 2446,column 12,is_stmt
        BTST #2, *SP(#13), TC1 ; |2446| 
        BCC $C$L141,!TC1 ; |2446| 
                                        ; branchcc occurs ; |2446| 
$C$DW$L$_SDIO_writeSingleByte$9$E:
	.dwpsn	file "src/csl_sdio.c",line 2448,column 13,is_stmt
        MOV #0, *SP(#12) ; |2448| 
	.dwpsn	file "src/csl_sdio.c",line 2449,column 9,is_stmt
        B $C$L145 ; |2449| 
                                        ; branch occurs ; |2449| 
$C$L144:    
	.dwpsn	file "src/csl_sdio.c",line 2452,column 13,is_stmt
        MOV #-6, *SP(#12) ; |2452| 
$C$L145:    
	.dwpsn	file "src/csl_sdio.c",line 2456,column 5,is_stmt
        MOV *SP(#12), T0 ; |2456| 
$C$L146:    
	.dwpsn	file "src/csl_sdio.c",line 2457,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$246	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$246, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L141:1:1714639451")
	.dwattr $C$DW$246, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x97f)
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x98e)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_SDIO_writeSingleByte$4$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_SDIO_writeSingleByte$4$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_SDIO_writeSingleByte$9$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_SDIO_writeSingleByte$9$E)
	.dwendtag $C$DW$246

	.dwattr $C$DW$231, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x999)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text"
	.global	_SDIO_readBytes

$C$DW$249	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_readBytes")
	.dwattr $C$DW$249, DW_AT_low_pc(_SDIO_readBytes)
	.dwattr $C$DW$249, DW_AT_high_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_SDIO_readBytes")
	.dwattr $C$DW$249, DW_AT_external
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$249, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$249, DW_AT_TI_begin_line(0x9ee)
	.dwattr $C$DW$249, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$249, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_sdio.c",line 2548,column 1,is_stmt,address _SDIO_readBytes

	.dwfde $C$DW$CIE, _SDIO_readBytes
$C$DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg17]
$C$DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readAddr")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg0]
$C$DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg12]
$C$DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opCode")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg13]
$C$DW$254	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBytes")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg18]
$C$DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuf")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: SDIO_readBytes                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_readBytes:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$256	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("readAddr")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("opCode")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuf")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("byteCount")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_byteCount")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("bytesRemaining")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_bytesRemaining")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("dataByte")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_dataByte")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("pReadReg")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_pReadReg")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("blkMode")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_blkMode")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("byteMode")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_byteMode")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 21]
        MOV XAR2, dbl(*SP(#8))
        MOV AR1, *SP(#6) ; |2548| 
        MOV T1, *SP(#5) ; |2548| 
        MOV T0, *SP(#4) ; |2548| 
        MOV AC0, dbl(*SP(#2)) ; |2548| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2561,column 5,is_stmt
        MOV #0, AC0 ; |2561| 
        MOV AC0, dbl(*SP(#10)) ; |2561| 
	.dwpsn	file "src/csl_sdio.c",line 2562,column 5,is_stmt
        MOV #-5, *SP(#12) ; |2562| 
	.dwpsn	file "src/csl_sdio.c",line 2563,column 5,is_stmt
        MOV #0, *SP(#13) ; |2563| 
	.dwpsn	file "src/csl_sdio.c",line 2564,column 5,is_stmt
        MOV #0, *SP(#14) ; |2564| 
	.dwpsn	file "src/csl_sdio.c",line 2565,column 5,is_stmt
        MOV #0, *SP(#15) ; |2565| 
	.dwpsn	file "src/csl_sdio.c",line 2566,column 5,is_stmt
        MOV #0, *SP(#16) ; |2566| 
	.dwpsn	file "src/csl_sdio.c",line 2567,column 5,is_stmt
        MOV #0, *SP(#17) ; |2567| 
	.dwpsn	file "src/csl_sdio.c",line 2568,column 5,is_stmt
        MOV #0, *SP(#18) ; |2568| 
	.dwpsn	file "src/csl_sdio.c",line 2569,column 5,is_stmt
        MOV #0, *SP(#19) ; |2569| 
	.dwpsn	file "src/csl_sdio.c",line 2570,column 5,is_stmt
        MOV #0, *SP(#20) ; |2570| 
	.dwpsn	file "src/csl_sdio.c",line 2571,column 5,is_stmt
        MOV #0, *SP(#21) ; |2571| 
	.dwpsn	file "src/csl_sdio.c",line 2573,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2573| 

        CMPU AC1 == AC0, TC1 ; |2573| 
        BCC $C$L177,TC1 ; |2573| 
                                        ; branchcc occurs ; |2573| 
	.dwpsn	file "src/csl_sdio.c",line 2575,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |2575| 
        BCC $C$L176,TC1 ; |2575| 
                                        ; branchcc occurs ; |2575| 
        MOV *SP(#6), AR1 ; |2575| 
        BCC $C$L176,AR1 == #0 ; |2575| 
                                        ; branchcc occurs ; |2575| 
        MOV #512, AR2 ; |2575| 
        CMPU AR1 > AR2, TC1 ; |2575| 
        BCC $C$L176,TC1 ; |2575| 
                                        ; branchcc occurs ; |2575| 

        MOV *SP(#4), AR1 ; |2575| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |2575| 
        BCC $C$L176,TC1 ; |2575| 
                                        ; branchcc occurs ; |2575| 
	.dwpsn	file "src/csl_sdio.c",line 2579,column 13,is_stmt
        MOV *SP(#6), AR1 ; |2579| 
        MOV AR1, *SP(#15) ; |2579| 
	.dwpsn	file "src/csl_sdio.c",line 2582,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2582| 
        MOV port(*AR3), AR1 ; |2582| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)) << #9, AC0 ; |2582| 
        MOV *AR3, AR3 ; |2582| 
        BCLR @#9, AR1 ; |2582| 
        AND #0x0200, AC0, AR2 ; |2582| 
        OR AR1, AR2 ; |2582| 
        MOV AR2, port(*AR3) ; |2582| 
	.dwpsn	file "src/csl_sdio.c",line 2586,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |2586| 
        MOV *AR3, AR3 ; |2586| 
        MOV port(*AR3(T0)), AR1 ; |2586| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2586| 
        MOV #0, AC0 ; |2586| 
        BSET @#0, AC0 ; |2586| 
        MOV AC0, port(*AR3(T0)) ; |2586| 
	.dwpsn	file "src/csl_sdio.c",line 2588,column 13,is_stmt
        MOV #32, AR2 ; |2588| 
        MOV *SP(#6), AR1 ; |2588| 
        CMPU AR1 <= AR2, TC1 ; |2588| 
        BCC $C$L147,TC1 ; |2588| 
                                        ; branchcc occurs ; |2588| 
	.dwpsn	file "src/csl_sdio.c",line 2590,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |2590| 
        MOV *AR3, AR3 ; |2590| 
        MOV port(*AR3(T0)), AR1 ; |2590| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2590| 
        AND #0xf000, AR1, AR2 ; |2590| 
        MOV *SP(#6), AR1 ; |2590| 
        AND #0x0fff, AR1, AR1 ; |2590| 
        OR AR2, AR1 ; |2590| 
        MOV AR1, port(*AR3(T0)) ; |2590| 
	.dwpsn	file "src/csl_sdio.c",line 2591,column 13,is_stmt
        B $C$L148 ; |2591| 
                                        ; branch occurs ; |2591| 
$C$L147:    
	.dwpsn	file "src/csl_sdio.c",line 2594,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |2594| 
        MOV *AR3, AR3 ; |2594| 
        MOV port(*AR3(T0)), AR1 ; |2594| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2594| 
        AND #0xf000, AR1, AC0 ; |2594| 
        BSET @#5, AC0 ; |2594| 
        MOV AC0, port(*AR3(T0)) ; |2594| 
$C$L148:    
	.dwpsn	file "src/csl_sdio.c",line 2599,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |2599| 
        MOV *AR3, AR3 ; |2599| 
        MOV port(*AR3(T0)), AR1 ; |2599| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2599| 
        BCLR @#0, AR1 ; |2599| 
        BSET @#0, AR1 ; |2599| 
        MOV AR1, port(*AR3(T0)) ; |2599| 
	.dwpsn	file "src/csl_sdio.c",line 2602,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2602| 
        MOV port(*AR3(T0)), AR1 ; |2602| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2602| 
        BCLR @#1, AR1 ; |2602| 
        MOV AR1, port(*AR3(T0)) ; |2602| 
	.dwpsn	file "src/csl_sdio.c",line 2605,column 13,is_stmt
        MOV *SP(#6), AR1 ; |2605| 

        AND #0x0001, AR1, AR1 ; |2605| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |2605| 
        BCC $C$L149,TC1 ; |2605| 
                                        ; branchcc occurs ; |2605| 
	.dwpsn	file "src/csl_sdio.c",line 2607,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2607| 
        MOV port(*AR3(T0)), AR1 ; |2607| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2607| 
        AND #0xffe7, AR1, AC0 ; |2607| 
        BSET @#4, AC0 ; |2607| 
        MOV AC0, port(*AR3(T0)) ; |2607| 
	.dwpsn	file "src/csl_sdio.c",line 2608,column 17,is_stmt
        MOV #0, *SP(#21) ; |2608| 
	.dwpsn	file "src/csl_sdio.c",line 2609,column 13,is_stmt
        B $C$L150 ; |2609| 
                                        ; branch occurs ; |2609| 
$C$L149:    
	.dwpsn	file "src/csl_sdio.c",line 2612,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2612| 
        MOV port(*AR3(T0)), AR1 ; |2612| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2612| 
        AND #0xffe7, AR1, AR1 ; |2612| 
        OR #0x0018, AR1, AR1 ; |2612| 
        MOV AR1, port(*AR3(T0)) ; |2612| 
	.dwpsn	file "src/csl_sdio.c",line 2613,column 17,is_stmt
        MOV #1, *SP(#21) ; |2613| 
$C$L150:    
	.dwpsn	file "src/csl_sdio.c",line 2617,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2617| 
        MOV port(*AR3(T0)), AR1 ; |2617| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2617| 
        BCLR @#2, AR1 ; |2617| 
        BSET @#2, AR1 ; |2617| 
        MOV AR1, port(*AR3(T0)) ; |2617| 
	.dwpsn	file "src/csl_sdio.c",line 2619,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |2619| 
        BCC $C$L151,AR1 != #0 ; |2619| 
                                        ; branchcc occurs ; |2619| 
	.dwpsn	file "src/csl_sdio.c",line 2621,column 17,is_stmt
        MOV *AR3, AR3 ; |2621| 

        MOV AR3, *SP(#17) ; |2621| 
||      AADD #40, AR3 ; |2621| 

	.dwpsn	file "src/csl_sdio.c",line 2622,column 13,is_stmt
        B $C$L152 ; |2622| 
                                        ; branch occurs ; |2622| 
$C$L151:    
	.dwpsn	file "src/csl_sdio.c",line 2625,column 17,is_stmt
        MOV *AR3, AR3 ; |2625| 

        MOV AR3, *SP(#17) ; |2625| 
||      AADD #41, AR3 ; |2625| 

$C$L152:    
	.dwpsn	file "src/csl_sdio.c",line 2629,column 13,is_stmt
        MOV #0, *SP(#19) ; |2629| 
	.dwpsn	file "src/csl_sdio.c",line 2630,column 13,is_stmt
        MOV #0, *SP(#20) ; |2630| 
	.dwpsn	file "src/csl_sdio.c",line 2632,column 13,is_stmt
        CMP *SP(#6) == #512, TC1 ; |2632| 
        BCC $C$L153,!TC1 ; |2632| 
                                        ; branchcc occurs ; |2632| 
	.dwpsn	file "src/csl_sdio.c",line 2634,column 17,is_stmt
        MOV #0, *SP(#13) ; |2634| 
	.dwpsn	file "src/csl_sdio.c",line 2635,column 13,is_stmt
        B $C$L154 ; |2635| 
                                        ; branch occurs ; |2635| 
$C$L153:    
	.dwpsn	file "src/csl_sdio.c",line 2638,column 17,is_stmt
        MOV *SP(#6), AR1 ; |2638| 
        MOV AR1, *SP(#13) ; |2638| 
$C$L154:    
	.dwpsn	file "src/csl_sdio.c",line 2641,column 13,is_stmt
        MOV #0, AC0 ; |2641| 
        MOV AC0, dbl(*SP(#10)) ; |2641| 
	.dwpsn	file "src/csl_sdio.c",line 2642,column 13,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |2642| 
        MOV uns(*SP(#13)), AC0 ; |2642| 

        MOV uns(*SP(#5)), AC1 ; |2642| 
||      OR AC1 << #9, AC0 ; |2642| 

        MOV uns(*SP(#19)), AC1 ; |2642| 
||      OR AC1 << #26, AC0 ; |2642| 

        MOV uns(*SP(#4)), AC1 ; |2642| 
||      OR AC1 << #27, AC0 ; |2642| 

        MOV uns(*SP(#20)), AC1 ; |2642| 
||      OR AC1 << #28, AC0 ; |2642| 

        OR AC1 << #31, AC0 ; |2642| 
        MOV AC0, dbl(*SP(#10)) ; |2642| 
	.dwpsn	file "src/csl_sdio.c",line 2645,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2645| 
        MOV *AR3, AR3 ; |2645| 
        MOV port(*AR3(T0)), AR1 ; |2645| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2645| 
        AND #0xffc0, AR1, AC0 ; |2645| 
        MOV AC0, port(*AR3(T0)) ; |2645| 
	.dwpsn	file "src/csl_sdio.c",line 2647,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |2647| 
        MOV *AR3, AR3 ; |2647| 
        MOV port(*AR3(T0)), AR1 ; |2647| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2647| 
        MOV dbl(*SP(#10)), AC0 ; |2647| 
        MOV #0 << #16, AC1 ; |2647| 
        AND #0xffff, AC0, AC0 ; |2647| 
        OR AC1, AC0 ; |2647| 
        MOV AC0, port(*AR3(T0)) ; |2647| 
	.dwpsn	file "src/csl_sdio.c",line 2649,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |2649| 
        MOV *AR3, AR3 ; |2649| 
        MOV port(*AR3(T0)), AR1 ; |2649| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2649| 
        MOV dbl(*SP(#10)), AC0 ; |2649| 
        SFTL AC0, #-16, AC0 ; |2649| 
        AND #0xffff, AC0, AC0 ; |2649| 
        OR AC1, AC0 ; |2649| 
        MOV AC0, port(*AR3(T0)) ; |2649| 
	.dwpsn	file "src/csl_sdio.c",line 2652,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |2652| 
        MOV *AR3, AR3 ; |2652| 
        MOV #8757, port(*AR3(T0)) ; |2652| 
        MOV #8, T0
$C$L155:    
$C$DW$L$_SDIO_readBytes$19$B:
	.dwpsn	file "src/csl_sdio.c",line 2656,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2656| 
        MOV port(*AR3(T0)), AR1 ; |2656| 
        MOV AR1, *SP(#18) ; |2656| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 2657,column 5,is_stmt
        BAND *SP(#18), #144, TC1 ; |2657| 
        BCC $C$L157,!TC1 ; |2657| 
                                        ; branchcc occurs ; |2657| 
$C$DW$L$_SDIO_readBytes$19$E:
	.dwpsn	file "src/csl_sdio.c",line 2659,column 6,is_stmt
        BTST #4, *SP(#18), TC1 ; |2659| 
        BCC $C$L156,!TC1 ; |2659| 
                                        ; branchcc occurs ; |2659| 
	.dwpsn	file "src/csl_sdio.c",line 2661,column 7,is_stmt
        MOV #-16, T0 ; |2661| 
        B $C$L178 ; |2661| 
                                        ; branch occurs ; |2661| 
$C$L156:    
	.dwpsn	file "src/csl_sdio.c",line 2665,column 7,is_stmt
        MOV #-17, T0 ; |2665| 
        B $C$L178 ; |2665| 
                                        ; branch occurs ; |2665| 
$C$L157:    
$C$DW$L$_SDIO_readBytes$24$B:
	.dwpsn	file "src/csl_sdio.c",line 2669,column 12,is_stmt
        BTST #2, *SP(#18), TC1 ; |2669| 
        BCC $C$L155,!TC1 ; |2669| 
                                        ; branchcc occurs ; |2669| 
$C$DW$L$_SDIO_readBytes$24$E:
	.dwpsn	file "src/csl_sdio.c",line 2671,column 13,is_stmt
        MOV #32, AR2 ; |2671| 
        MOV *SP(#6), AR1 ; |2671| 
        CMPU AR1 < AR2, TC1 ; |2671| 
        BCC $C$L165,TC1 ; |2671| 
                                        ; branchcc occurs ; |2671| 
$C$L158:    
$C$DW$L$_SDIO_readBytes$26$B:
	.dwpsn	file "src/csl_sdio.c",line 2683,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2683| 
        MOV port(*AR3(T0)), AR1 ; |2683| 
        MOV AR1, *SP(#18) ; |2683| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 2684,column 7,is_stmt
        BAND *SP(#18), #104, TC1 ; |2684| 
        BCC $C$L160,!TC1 ; |2684| 
                                        ; branchcc occurs ; |2684| 
$C$DW$L$_SDIO_readBytes$26$E:
	.dwpsn	file "src/csl_sdio.c",line 2686,column 8,is_stmt
        BTST #3, *SP(#18), TC1 ; |2686| 
        BCC $C$L159,!TC1 ; |2686| 
                                        ; branchcc occurs ; |2686| 
	.dwpsn	file "src/csl_sdio.c",line 2688,column 9,is_stmt
        MOV #-16, T0 ; |2688| 
        B $C$L178 ; |2688| 
                                        ; branch occurs ; |2688| 
$C$L159:    
	.dwpsn	file "src/csl_sdio.c",line 2692,column 9,is_stmt
        MOV #-17, T0 ; |2692| 
        B $C$L178 ; |2692| 
                                        ; branch occurs ; |2692| 
$C$L160:    
$C$DW$L$_SDIO_readBytes$31$B:
	.dwpsn	file "src/csl_sdio.c",line 2696,column 14,is_stmt
        MOV *SP(#18), AR1 ; |2696| 
        MOV #1024, AR2 ; |2696| 
        AND #0x0400, AR1, AR1 ; |2696| 
        CMPU AR1 != AR2, TC1 ; |2696| 
        BCC $C$L158,TC1 ; |2696| 
                                        ; branchcc occurs ; |2696| 
$C$DW$L$_SDIO_readBytes$31$E:
$C$DW$L$_SDIO_readBytes$32$B:
	.dwpsn	file "src/csl_sdio.c",line 2699,column 21,is_stmt

        MOV #1, AR2
||      MOV *SP(#21), AR1 ; |2699| 

        CMPU AR2 != AR1, TC1 ; |2699| 
        BCC $C$L162,TC1 ; |2699| 
                                        ; branchcc occurs ; |2699| 
$C$DW$L$_SDIO_readBytes$32$E:
$C$DW$L$_SDIO_readBytes$33$B:
	.dwpsn	file "src/csl_sdio.c",line 2701,column 30,is_stmt
        MOV #0, *SP(#14) ; |2701| 
	.dwpsn	file "src/csl_sdio.c",line 2701,column 41,is_stmt
        MOV #16, AR2 ; |2701| 
        MOV *SP(#14), AR1 ; |2701| 
        CMPU AR1 >= AR2, TC1 ; |2701| 
        BCC $C$L164,TC1 ; |2701| 
                                        ; branchcc occurs ; |2701| 
$C$DW$L$_SDIO_readBytes$33$E:
$C$L161:    
$C$DW$L$_SDIO_readBytes$34$B:
	.dwpsn	file "src/csl_sdio.c",line 2703,column 29,is_stmt
        MOV *SP(#17), AR3 ; |2703| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |2703| 
        MOV AR1, *AR2 ; |2703| 
	.dwpsn	file "src/csl_sdio.c",line 2706,column 29,is_stmt
        MOV *SP(#17), AR3 ; |2706| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |2706| 
        MOV AR1, *SP(#16) ; |2706| 
	.dwpsn	file "src/csl_sdio.c",line 2709,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *AR3, AC0 ; |2709| 
||      MOV AR1, AC1 ; |2709| 

        OR AC1 << #8, AC0 ; |2709| 
        MOV AC0, *AR3 ; |2709| 
	.dwpsn	file "src/csl_sdio.c",line 2711,column 29,is_stmt
        SUB #2, *SP(#15) ; |2711| 
	.dwpsn	file "src/csl_sdio.c",line 2712,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 2701,column 77,is_stmt
        ADD #1, *SP(#14) ; |2701| 
	.dwpsn	file "src/csl_sdio.c",line 2701,column 41,is_stmt
        MOV #16, AR2 ; |2701| 
        MOV *SP(#14), AR1 ; |2701| 
        CMPU AR1 < AR2, TC1 ; |2701| 
        BCC $C$L161,TC1 ; |2701| 
                                        ; branchcc occurs ; |2701| 
$C$DW$L$_SDIO_readBytes$34$E:
$C$DW$L$_SDIO_readBytes$35$B:
	.dwpsn	file "src/csl_sdio.c",line 2714,column 21,is_stmt
        B $C$L164 ; |2714| 
                                        ; branch occurs ; |2714| 
$C$DW$L$_SDIO_readBytes$35$E:
$C$L162:    
$C$DW$L$_SDIO_readBytes$36$B:
	.dwpsn	file "src/csl_sdio.c",line 2717,column 30,is_stmt
        MOV #0, *SP(#14) ; |2717| 
	.dwpsn	file "src/csl_sdio.c",line 2717,column 41,is_stmt
        MOV #16, AR2 ; |2717| 
        MOV *SP(#14), AR1 ; |2717| 
        CMPU AR1 >= AR2, TC1 ; |2717| 
        BCC $C$L164,TC1 ; |2717| 
                                        ; branchcc occurs ; |2717| 
$C$DW$L$_SDIO_readBytes$36$E:
$C$L163:    
$C$DW$L$_SDIO_readBytes$37$B:
	.dwpsn	file "src/csl_sdio.c",line 2719,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#17), AR3 ; |2719| 
        MOV port(*AR3), AR1 ; |2719| 
        MOV AR1, *AR2 ; |2719| 
	.dwpsn	file "src/csl_sdio.c",line 2721,column 29,is_stmt
        SUB #2, *SP(#15) ; |2721| 
	.dwpsn	file "src/csl_sdio.c",line 2717,column 77,is_stmt
        ADD #1, *SP(#14) ; |2717| 
	.dwpsn	file "src/csl_sdio.c",line 2717,column 41,is_stmt
        MOV #16, AR2 ; |2717| 
        MOV *SP(#14), AR1 ; |2717| 
        CMPU AR1 < AR2, TC1 ; |2717| 
        BCC $C$L163,TC1 ; |2717| 
                                        ; branchcc occurs ; |2717| 
$C$DW$L$_SDIO_readBytes$37$E:
$C$L164:    
$C$DW$L$_SDIO_readBytes$38$B:
	.dwpsn	file "src/csl_sdio.c",line 2725,column 21,is_stmt
        MOV #32, AR2 ; |2725| 
        MOV *SP(#15), AR1 ; |2725| 
        CMPU AR1 >= AR2, TC1 ; |2725| 
        BCC $C$L165,!TC1 ; |2725| 
                                        ; branchcc occurs ; |2725| 
$C$DW$L$_SDIO_readBytes$38$E:
$C$DW$L$_SDIO_readBytes$39$B:
	.dwpsn	file "src/csl_sdio.c",line 2727,column 25,is_stmt
	.dwpsn	file "src/csl_sdio.c",line 2730,column 26,is_stmt
        MOV #0, AR2
        CMPU AR2 != AR1, TC1 ; |2730| 
        BCC $C$L158,TC1 ; |2730| 
                                        ; branchcc occurs ; |2730| 
$C$DW$L$_SDIO_readBytes$39$E:
$C$L165:    
	.dwpsn	file "src/csl_sdio.c",line 2739,column 13,is_stmt

        MOV #0, AR2
||      MOV *SP(#15), AR1 ; |2739| 

        CMPU AR2 == AR1, TC1 ; |2739| 
        BCC $C$L175,TC1 ; |2739| 
                                        ; branchcc occurs ; |2739| 
	.dwpsn	file "src/csl_sdio.c",line 2745,column 17,is_stmt
        MOV *SP(#6), AR1 ; |2745| 
        MOV *SP(#15), AR2 ; |2745| 
        CMPU AR2 != AR1, TC1 ; |2745| 
        BCC $C$L169,TC1 ; |2745| 
                                        ; branchcc occurs ; |2745| 
$C$L166:    
$C$DW$L$_SDIO_readBytes$42$B:
	.dwpsn	file "src/csl_sdio.c",line 2749,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2749| 
        MOV port(*AR3(T0)), AR1 ; |2749| 
        MOV AR1, *SP(#18) ; |2749| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 2750,column 7,is_stmt
        BAND *SP(#18), #104, TC1 ; |2750| 
        BCC $C$L168,!TC1 ; |2750| 
                                        ; branchcc occurs ; |2750| 
$C$DW$L$_SDIO_readBytes$42$E:
	.dwpsn	file "src/csl_sdio.c",line 2752,column 8,is_stmt
        BTST #3, *SP(#18), TC1 ; |2752| 
        BCC $C$L167,!TC1 ; |2752| 
                                        ; branchcc occurs ; |2752| 
	.dwpsn	file "src/csl_sdio.c",line 2754,column 9,is_stmt
        MOV #-16, T0 ; |2754| 
        B $C$L178 ; |2754| 
                                        ; branch occurs ; |2754| 
$C$L167:    
	.dwpsn	file "src/csl_sdio.c",line 2758,column 9,is_stmt
        MOV #-17, T0 ; |2758| 
        B $C$L178 ; |2758| 
                                        ; branch occurs ; |2758| 
$C$L168:    
$C$DW$L$_SDIO_readBytes$47$B:
	.dwpsn	file "src/csl_sdio.c",line 2762,column 14,is_stmt
        MOV *SP(#18), AR1 ; |2762| 
        MOV #1024, AR2 ; |2762| 
        AND #0x0400, AR1, AR1 ; |2762| 
        CMPU AR1 != AR2, TC1 ; |2762| 
        BCC $C$L166,TC1 ; |2762| 
                                        ; branchcc occurs ; |2762| 
$C$DW$L$_SDIO_readBytes$47$E:
$C$L169:    
	.dwpsn	file "src/csl_sdio.c",line 2766,column 17,is_stmt

        MOV #1, AR2
||      MOV *SP(#21), AR1 ; |2766| 

        CMPU AR2 != AR1, TC1 ; |2766| 
        BCC $C$L172,TC1 ; |2766| 
                                        ; branchcc occurs ; |2766| 
	.dwpsn	file "src/csl_sdio.c",line 2769,column 26,is_stmt
        MOV #0, *SP(#14) ; |2769| 
	.dwpsn	file "src/csl_sdio.c",line 2769,column 37,is_stmt
        MOV *SP(#15), AR1 ; |2769| 

        SFTL AR1, #-1 ; |2769| 
||      MOV *SP(#14), AR2 ; |2769| 

        CMPU AR2 >= AR1, TC1 ; |2769| 
        BCC $C$L171,TC1 ; |2769| 
                                        ; branchcc occurs ; |2769| 
$C$L170:    
$C$DW$L$_SDIO_readBytes$50$B:
	.dwpsn	file "src/csl_sdio.c",line 2771,column 25,is_stmt
        MOV *SP(#17), AR3 ; |2771| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |2771| 
        MOV AR1, *AR2 ; |2771| 
	.dwpsn	file "src/csl_sdio.c",line 2774,column 25,is_stmt
        MOV *SP(#17), AR3 ; |2774| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |2774| 
        MOV AR1, *SP(#16) ; |2774| 
	.dwpsn	file "src/csl_sdio.c",line 2777,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *AR3, AC0 ; |2777| 
||      MOV AR1, AC1 ; |2777| 

        OR AC1 << #8, AC0 ; |2777| 
        MOV AC0, *AR3 ; |2777| 
	.dwpsn	file "src/csl_sdio.c",line 2779,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 2769,column 63,is_stmt
        ADD #1, *SP(#14) ; |2769| 
	.dwpsn	file "src/csl_sdio.c",line 2769,column 37,is_stmt
        MOV *SP(#15), AR1 ; |2769| 

        SFTL AR1, #-1 ; |2769| 
||      MOV *SP(#14), AR2 ; |2769| 

        CMPU AR2 < AR1, TC1 ; |2769| 
        BCC $C$L170,TC1 ; |2769| 
                                        ; branchcc occurs ; |2769| 
$C$DW$L$_SDIO_readBytes$50$E:
$C$L171:    
	.dwpsn	file "src/csl_sdio.c",line 2783,column 21,is_stmt
        MOV *SP(#17), AR3 ; |2783| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |2783| 
        MOV AR1, *AR2 ; |2783| 
	.dwpsn	file "src/csl_sdio.c",line 2785,column 17,is_stmt
        B $C$L174 ; |2785| 
                                        ; branch occurs ; |2785| 
$C$L172:    
	.dwpsn	file "src/csl_sdio.c",line 2788,column 26,is_stmt
        MOV #0, *SP(#14) ; |2788| 
	.dwpsn	file "src/csl_sdio.c",line 2788,column 37,is_stmt
        MOV *SP(#15), AR1 ; |2788| 
        MOV *SP(#14), AR2 ; |2788| 
        SFTL AR1, #-1 ; |2788| 
        CMPU AR2 >= AR1, TC1 ; |2788| 
        BCC $C$L174,TC1 ; |2788| 
                                        ; branchcc occurs ; |2788| 
$C$L173:    
$C$DW$L$_SDIO_readBytes$53$B:
	.dwpsn	file "src/csl_sdio.c",line 2790,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#17), AR3 ; |2790| 
        MOV port(*AR3), AR1 ; |2790| 
        MOV AR1, *AR2 ; |2790| 
	.dwpsn	file "src/csl_sdio.c",line 2788,column 63,is_stmt
        ADD #1, *SP(#14) ; |2788| 
	.dwpsn	file "src/csl_sdio.c",line 2788,column 37,is_stmt
        MOV *SP(#15), AR1 ; |2788| 

        SFTL AR1, #-1 ; |2788| 
||      MOV *SP(#14), AR2 ; |2788| 

        CMPU AR2 < AR1, TC1 ; |2788| 
        BCC $C$L173,TC1 ; |2788| 
                                        ; branchcc occurs ; |2788| 
$C$DW$L$_SDIO_readBytes$53$E:
$C$L174:    
	.dwpsn	file "src/csl_sdio.c",line 2794,column 17,is_stmt
        MOV #0, *SP(#15) ; |2794| 
$C$L175:    
	.dwpsn	file "src/csl_sdio.c",line 2797,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |2797| 
        MOV *AR3, AR3 ; |2797| 
        MOV port(*AR3(T0)), AR1 ; |2797| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2797| 
        BCLR @#0, AR1 ; |2797| 
        BSET @#0, AR1 ; |2797| 
        MOV AR1, port(*AR3(T0)) ; |2797| 
	.dwpsn	file "src/csl_sdio.c",line 2798,column 13,is_stmt
        MOV #0, *SP(#12) ; |2798| 
	.dwpsn	file "src/csl_sdio.c",line 2799,column 9,is_stmt
        B $C$L177 ; |2799| 
                                        ; branch occurs ; |2799| 
$C$L176:    
	.dwpsn	file "src/csl_sdio.c",line 2802,column 13,is_stmt
        MOV #-6, *SP(#12) ; |2802| 
$C$L177:    
	.dwpsn	file "src/csl_sdio.c",line 2806,column 5,is_stmt
        MOV *SP(#12), T0 ; |2806| 
$C$L178:    
	.dwpsn	file "src/csl_sdio.c",line 2807,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$274	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$274, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L173:1:1714639451")
	.dwattr $C$DW$274, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0xae4)
	.dwattr $C$DW$274, DW_AT_TI_end_line(0xae7)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$53$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$53$E)
	.dwendtag $C$DW$274


$C$DW$276	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$276, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L170:1:1714639451")
	.dwattr $C$DW$276, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0xad1)
	.dwattr $C$DW$276, DW_AT_TI_end_line(0xadc)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$50$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$50$E)
	.dwendtag $C$DW$276


$C$DW$278	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$278, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L166:1:1714639451")
	.dwattr $C$DW$278, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0xabb)
	.dwattr $C$DW$278, DW_AT_TI_end_line(0xaca)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$42$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$42$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$47$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$47$E)
	.dwendtag $C$DW$278


$C$DW$281	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$281, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L158:1:1714639451")
	.dwattr $C$DW$281, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$281, DW_AT_TI_begin_line(0xa79)
	.dwattr $C$DW$281, DW_AT_TI_end_line(0xaaa)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$26$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$26$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$32$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$32$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$33$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$33$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$35$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$35$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$36$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$36$E)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$38$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$38$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$39$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$39$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$31$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$31$E)

$C$DW$290	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$290, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L161:2:1714639451")
	.dwattr $C$DW$290, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$290, DW_AT_TI_begin_line(0xa8d)
	.dwattr $C$DW$290, DW_AT_TI_end_line(0xa99)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$34$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$34$E)
	.dwendtag $C$DW$290


$C$DW$292	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$292, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L163:2:1714639451")
	.dwattr $C$DW$292, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$292, DW_AT_TI_begin_line(0xa9d)
	.dwattr $C$DW$292, DW_AT_TI_end_line(0xaa2)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$37$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$37$E)
	.dwendtag $C$DW$292

	.dwendtag $C$DW$281


$C$DW$294	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$294, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L155:1:1714639451")
	.dwattr $C$DW$294, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$294, DW_AT_TI_begin_line(0xa5e)
	.dwattr $C$DW$294, DW_AT_TI_end_line(0xa6d)
$C$DW$295	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$295, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$19$B)
	.dwattr $C$DW$295, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$19$E)
$C$DW$296	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$296, DW_AT_low_pc($C$DW$L$_SDIO_readBytes$24$B)
	.dwattr $C$DW$296, DW_AT_high_pc($C$DW$L$_SDIO_readBytes$24$E)
	.dwendtag $C$DW$294

	.dwattr $C$DW$249, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$249, DW_AT_TI_end_line(0xaf7)
	.dwattr $C$DW$249, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$249

	.sect	".text"
	.global	_SDIO_writeBytes

$C$DW$297	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_writeBytes")
	.dwattr $C$DW$297, DW_AT_low_pc(_SDIO_writeBytes)
	.dwattr $C$DW$297, DW_AT_high_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_SDIO_writeBytes")
	.dwattr $C$DW$297, DW_AT_external
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$297, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$297, DW_AT_TI_begin_line(0xb4a)
	.dwattr $C$DW$297, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$297, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "src/csl_sdio.c",line 2896,column 1,is_stmt,address _SDIO_writeBytes

	.dwfde $C$DW$CIE, _SDIO_writeBytes
$C$DW$298	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg17]
$C$DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeAddr")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg0]
$C$DW$300	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg12]
$C$DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opCode")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg13]
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBytes")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg18]
$C$DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: SDIO_writeBytes                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (21 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_writeBytes:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("writeAddr")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("opCode")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$310	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$311	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("byteCount")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_byteCount")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$313	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$314	.dwtag  DW_TAG_variable, DW_AT_name("bytesRemaining")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_bytesRemaining")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$315	.dwtag  DW_TAG_variable, DW_AT_name("pWriteReg")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_pWriteReg")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$316	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$317	.dwtag  DW_TAG_variable, DW_AT_name("blkMode")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_blkMode")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$318	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$319	.dwtag  DW_TAG_variable, DW_AT_name("byteMode")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_byteMode")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV XAR2, dbl(*SP(#8))
        MOV AR1, *SP(#6) ; |2896| 
        MOV T1, *SP(#5) ; |2896| 
        MOV T0, *SP(#4) ; |2896| 
        MOV AC0, dbl(*SP(#2)) ; |2896| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 2908,column 5,is_stmt
        MOV #0, AC0 ; |2908| 
        MOV AC0, dbl(*SP(#10)) ; |2908| 
	.dwpsn	file "src/csl_sdio.c",line 2909,column 5,is_stmt
        MOV #-5, *SP(#12) ; |2909| 
	.dwpsn	file "src/csl_sdio.c",line 2910,column 5,is_stmt
        MOV #0, *SP(#13) ; |2910| 
	.dwpsn	file "src/csl_sdio.c",line 2911,column 5,is_stmt
        MOV #0, *SP(#14) ; |2911| 
	.dwpsn	file "src/csl_sdio.c",line 2912,column 5,is_stmt
        MOV #0, *SP(#15) ; |2912| 
	.dwpsn	file "src/csl_sdio.c",line 2913,column 5,is_stmt
        MOV #0, *SP(#16) ; |2913| 
	.dwpsn	file "src/csl_sdio.c",line 2914,column 2,is_stmt
        MOV #0, *SP(#17) ; |2914| 
	.dwpsn	file "src/csl_sdio.c",line 2915,column 5,is_stmt
        MOV #0, *SP(#18) ; |2915| 
	.dwpsn	file "src/csl_sdio.c",line 2916,column 5,is_stmt
        MOV #0, *SP(#19) ; |2916| 
	.dwpsn	file "src/csl_sdio.c",line 2917,column 5,is_stmt
        MOV #0, *SP(#20) ; |2917| 
	.dwpsn	file "src/csl_sdio.c",line 2919,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2919| 

        CMPU AC1 == AC0, TC1 ; |2919| 
        BCC $C$L206,TC1 ; |2919| 
                                        ; branchcc occurs ; |2919| 
	.dwpsn	file "src/csl_sdio.c",line 2921,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |2921| 
        BCC $C$L205,TC1 ; |2921| 
                                        ; branchcc occurs ; |2921| 
        MOV *SP(#6), AR1 ; |2921| 
        BCC $C$L205,AR1 == #0 ; |2921| 
                                        ; branchcc occurs ; |2921| 
        MOV #512, AR2 ; |2921| 
        CMPU AR1 > AR2, TC1 ; |2921| 
        BCC $C$L205,TC1 ; |2921| 
                                        ; branchcc occurs ; |2921| 

        MOV *SP(#4), AR1 ; |2921| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |2921| 
        BCC $C$L205,TC1 ; |2921| 
                                        ; branchcc occurs ; |2921| 
	.dwpsn	file "src/csl_sdio.c",line 2925,column 13,is_stmt
        MOV *SP(#6), AR1 ; |2925| 
        MOV AR1, *SP(#15) ; |2925| 
	.dwpsn	file "src/csl_sdio.c",line 2928,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2928| 
        MOV port(*AR3), AR1 ; |2928| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)) << #9, AC0 ; |2928| 
        MOV *AR3, AR3 ; |2928| 
        BCLR @#9, AR1 ; |2928| 
        AND #0x0200, AC0, AR2 ; |2928| 
        OR AR1, AR2 ; |2928| 
        MOV AR2, port(*AR3) ; |2928| 
	.dwpsn	file "src/csl_sdio.c",line 2932,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |2932| 
        MOV *AR3, AR3 ; |2932| 
        MOV port(*AR3(T0)), AR1 ; |2932| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2932| 
        MOV #0, AC0 ; |2932| 
        BSET @#0, AC0 ; |2932| 
        MOV AC0, port(*AR3(T0)) ; |2932| 
	.dwpsn	file "src/csl_sdio.c",line 2933,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |2933| 
        MOV *AR3, AR3 ; |2933| 
        MOV port(*AR3(T0)), AR1 ; |2933| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2933| 
        AND #0xf000, AR1, AR2 ; |2933| 
        MOV *SP(#6), AR1 ; |2933| 
        AND #0x0fff, AR1, AR1 ; |2933| 
        OR AR2, AR1 ; |2933| 
        MOV AR1, port(*AR3(T0)) ; |2933| 
	.dwpsn	file "src/csl_sdio.c",line 2936,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |2936| 
        MOV *AR3, AR3 ; |2936| 
        MOV port(*AR3(T0)), AR1 ; |2936| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2936| 
        BCLR @#0, AR1 ; |2936| 
        BSET @#0, AR1 ; |2936| 
        MOV AR1, port(*AR3(T0)) ; |2936| 
	.dwpsn	file "src/csl_sdio.c",line 2938,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2938| 
        MOV port(*AR3(T0)), AR1 ; |2938| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2938| 
        BCLR @#1, AR1 ; |2938| 
        BSET @#1, AR1 ; |2938| 
        MOV AR1, port(*AR3(T0)) ; |2938| 
	.dwpsn	file "src/csl_sdio.c",line 2941,column 13,is_stmt
        MOV *SP(#6), AR1 ; |2941| 

        AND #0x0001, AR1, AR1 ; |2941| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |2941| 
        BCC $C$L179,TC1 ; |2941| 
                                        ; branchcc occurs ; |2941| 
	.dwpsn	file "src/csl_sdio.c",line 2943,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2943| 
        MOV port(*AR3(T0)), AR1 ; |2943| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2943| 
        AND #0xffe7, AR1, AC0 ; |2943| 
        BSET @#4, AC0 ; |2943| 
        MOV AC0, port(*AR3(T0)) ; |2943| 
	.dwpsn	file "src/csl_sdio.c",line 2944,column 13,is_stmt
        B $C$L180 ; |2944| 
                                        ; branch occurs ; |2944| 
$C$L179:    
	.dwpsn	file "src/csl_sdio.c",line 2947,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2947| 
        MOV port(*AR3(T0)), AR1 ; |2947| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2947| 
        AND #0xffe7, AR1, AR1 ; |2947| 
        OR #0x0018, AR1, AR1 ; |2947| 
        MOV AR1, port(*AR3(T0)) ; |2947| 
	.dwpsn	file "src/csl_sdio.c",line 2948,column 17,is_stmt
        MOV #1, *SP(#20) ; |2948| 
$C$L180:    
	.dwpsn	file "src/csl_sdio.c",line 2952,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2952| 
        MOV port(*AR3(T0)), AR1 ; |2952| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2952| 
        BCLR @#2, AR1 ; |2952| 
        BSET @#2, AR1 ; |2952| 
        MOV AR1, port(*AR3(T0)) ; |2952| 
	.dwpsn	file "src/csl_sdio.c",line 2954,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |2954| 
        BCC $C$L181,AR1 != #0 ; |2954| 
                                        ; branchcc occurs ; |2954| 
	.dwpsn	file "src/csl_sdio.c",line 2956,column 17,is_stmt
        MOV *AR3, AR3 ; |2956| 

        MOV AR3, *SP(#16) ; |2956| 
||      AADD #44, AR3 ; |2956| 

	.dwpsn	file "src/csl_sdio.c",line 2957,column 13,is_stmt
        B $C$L182 ; |2957| 
                                        ; branch occurs ; |2957| 
$C$L181:    
	.dwpsn	file "src/csl_sdio.c",line 2960,column 17,is_stmt
        MOV *AR3, AR3 ; |2960| 

        MOV AR3, *SP(#16) ; |2960| 
||      AADD #45, AR3 ; |2960| 

$C$L182:    
	.dwpsn	file "src/csl_sdio.c",line 2964,column 13,is_stmt
        MOV #0, *SP(#18) ; |2964| 
	.dwpsn	file "src/csl_sdio.c",line 2965,column 13,is_stmt
        MOV #1, *SP(#19) ; |2965| 
	.dwpsn	file "src/csl_sdio.c",line 2967,column 13,is_stmt
        CMP *SP(#6) == #512, TC1 ; |2967| 
        BCC $C$L183,!TC1 ; |2967| 
                                        ; branchcc occurs ; |2967| 
	.dwpsn	file "src/csl_sdio.c",line 2969,column 17,is_stmt
        MOV #0, *SP(#13) ; |2969| 
	.dwpsn	file "src/csl_sdio.c",line 2970,column 13,is_stmt
        B $C$L184 ; |2970| 
                                        ; branch occurs ; |2970| 
$C$L183:    
	.dwpsn	file "src/csl_sdio.c",line 2973,column 17,is_stmt
        MOV *SP(#6), AR1 ; |2973| 
        MOV AR1, *SP(#13) ; |2973| 
$C$L184:    
	.dwpsn	file "src/csl_sdio.c",line 2976,column 13,is_stmt
        MOV #0, AC0 ; |2976| 
        MOV AC0, dbl(*SP(#10)) ; |2976| 
	.dwpsn	file "src/csl_sdio.c",line 2977,column 13,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |2977| 
        MOV uns(*SP(#13)), AC0 ; |2977| 

        MOV uns(*SP(#5)), AC1 ; |2977| 
||      OR AC1 << #9, AC0 ; |2977| 

        MOV uns(*SP(#18)), AC1 ; |2977| 
||      OR AC1 << #26, AC0 ; |2977| 

        MOV uns(*SP(#4)), AC1 ; |2977| 
||      OR AC1 << #27, AC0 ; |2977| 

        MOV uns(*SP(#19)), AC1 ; |2977| 
||      OR AC1 << #28, AC0 ; |2977| 

        OR AC1 << #31, AC0 ; |2977| 
        MOV AC0, dbl(*SP(#10)) ; |2977| 
	.dwpsn	file "src/csl_sdio.c",line 2980,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2980| 
        MOV *AR3, AR3 ; |2980| 
        MOV port(*AR3(T0)), AR1 ; |2980| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2980| 
        AND #0xffc0, AR1, AC0 ; |2980| 
        MOV AC0, port(*AR3(T0)) ; |2980| 
	.dwpsn	file "src/csl_sdio.c",line 2982,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |2982| 
        MOV *AR3, AR3 ; |2982| 
        MOV port(*AR3(T0)), AR1 ; |2982| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2982| 
        MOV dbl(*SP(#10)), AC0 ; |2982| 
        MOV #0 << #16, AC1 ; |2982| 
        AND #0xffff, AC0, AC0 ; |2982| 
        OR AC1, AC0 ; |2982| 
        MOV AC0, port(*AR3(T0)) ; |2982| 
	.dwpsn	file "src/csl_sdio.c",line 2984,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |2984| 
        MOV *AR3, AR3 ; |2984| 
        MOV port(*AR3(T0)), AR1 ; |2984| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2984| 
        MOV dbl(*SP(#10)), AC0 ; |2984| 
        SFTL AC0, #-16, AC0 ; |2984| 
        AND #0xffff, AC0, AC0 ; |2984| 
        OR AC1, AC0 ; |2984| 
        MOV AC0, port(*AR3(T0)) ; |2984| 
	.dwpsn	file "src/csl_sdio.c",line 2987,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |2987| 
        MOV *AR3, AR3 ; |2987| 
        MOV #10805, port(*AR3(T0)) ; |2987| 
	.dwpsn	file "src/csl_sdio.c",line 2989,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |2989| 
        MOV *AR3, AR3 ; |2989| 
        MOV port(*AR3(T0)), AR1 ; |2989| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2989| 
        BCLR @#0, AR1 ; |2989| 
        BSET @#0, AR1 ; |2989| 
        MOV AR1, port(*AR3(T0)) ; |2989| 
	.dwpsn	file "src/csl_sdio.c",line 2991,column 13,is_stmt
        MOV #32, AR2 ; |2991| 
        MOV *SP(#6), AR1 ; |2991| 
        CMPU AR1 < AR2, TC1 ; |2991| 
        BCC $C$L192,TC1 ; |2991| 
                                        ; branchcc occurs ; |2991| 
$C$L185:    
$C$DW$L$_SDIO_writeBytes$16$B:
	.dwpsn	file "src/csl_sdio.c",line 3003,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3003| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3003| 
        MOV AR1, *SP(#17) ; |3003| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3004,column 7,is_stmt
        BAND *SP(#17), #248, TC1 ; |3004| 
        BCC $C$L187,!TC1 ; |3004| 
                                        ; branchcc occurs ; |3004| 
$C$DW$L$_SDIO_writeBytes$16$E:
	.dwpsn	file "src/csl_sdio.c",line 3006,column 8,is_stmt
        BAND *SP(#17), #96, TC1 ; |3006| 
        BCC $C$L186,!TC1 ; |3006| 
                                        ; branchcc occurs ; |3006| 
	.dwpsn	file "src/csl_sdio.c",line 3008,column 9,is_stmt
        MOV #-17, T0 ; |3008| 
        B $C$L207 ; |3008| 
                                        ; branch occurs ; |3008| 
$C$L186:    
	.dwpsn	file "src/csl_sdio.c",line 3012,column 9,is_stmt
        MOV #-16, T0 ; |3012| 
        B $C$L207 ; |3012| 
                                        ; branch occurs ; |3012| 
$C$L187:    
$C$DW$L$_SDIO_writeBytes$21$B:
	.dwpsn	file "src/csl_sdio.c",line 3016,column 14,is_stmt
        MOV *SP(#17), AR1 ; |3016| 
        MOV #512, AR2 ; |3016| 
        AND #0x0200, AR1, AR1 ; |3016| 
        CMPU AR1 != AR2, TC1 ; |3016| 
        BCC $C$L185,TC1 ; |3016| 
                                        ; branchcc occurs ; |3016| 
$C$DW$L$_SDIO_writeBytes$21$E:
$C$DW$L$_SDIO_writeBytes$22$B:
	.dwpsn	file "src/csl_sdio.c",line 3019,column 21,is_stmt

        MOV #1, AR2
||      MOV *SP(#20), AR1 ; |3019| 

        CMPU AR2 != AR1, TC1 ; |3019| 
        BCC $C$L189,TC1 ; |3019| 
                                        ; branchcc occurs ; |3019| 
$C$DW$L$_SDIO_writeBytes$22$E:
$C$DW$L$_SDIO_writeBytes$23$B:
	.dwpsn	file "src/csl_sdio.c",line 3021,column 30,is_stmt
        MOV #0, *SP(#14) ; |3021| 
	.dwpsn	file "src/csl_sdio.c",line 3021,column 41,is_stmt
        MOV #16, AR2 ; |3021| 
        MOV *SP(#14), AR1 ; |3021| 
        CMPU AR1 >= AR2, TC1 ; |3021| 
        BCC $C$L191,TC1 ; |3021| 
                                        ; branchcc occurs ; |3021| 
$C$DW$L$_SDIO_writeBytes$23$E:
$C$L188:    
$C$DW$L$_SDIO_writeBytes$24$B:
	.dwpsn	file "src/csl_sdio.c",line 3023,column 29,is_stmt
        MOV *SP(#16), AR3 ; |3023| 
        MOV port(*AR3), AR1 ; |3023| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3023| 
        MOV *SP(#16), AR3 ; |3023| 
        OR #0x0000, AR1, AR1 ; |3023| 
        MOV AR1, port(*AR3) ; |3023| 
	.dwpsn	file "src/csl_sdio.c",line 3026,column 29,is_stmt
        MOV *SP(#16), AR3 ; |3026| 
        MOV port(*AR3), AR1 ; |3026| 
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3, AC0 ; |3026| 
        MOV *SP(#16), AR3 ; |3026| 
        BFXTR #0xff00, AC0, AR1 ; |3026| 
        OR #0x0000, AR1, AR1 ; |3026| 
        MOV AR1, port(*AR3) ; |3026| 
	.dwpsn	file "src/csl_sdio.c",line 3030,column 29,is_stmt
        SUB #2, *SP(#15) ; |3030| 
	.dwpsn	file "src/csl_sdio.c",line 3031,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3021,column 78,is_stmt
        ADD #1, *SP(#14) ; |3021| 
	.dwpsn	file "src/csl_sdio.c",line 3021,column 41,is_stmt
        MOV *SP(#14), AR1 ; |3021| 
        CMPU AR1 < AR2, TC1 ; |3021| 
        BCC $C$L188,TC1 ; |3021| 
                                        ; branchcc occurs ; |3021| 
$C$DW$L$_SDIO_writeBytes$24$E:
$C$DW$L$_SDIO_writeBytes$25$B:
	.dwpsn	file "src/csl_sdio.c",line 3033,column 21,is_stmt
        B $C$L191 ; |3033| 
                                        ; branch occurs ; |3033| 
$C$DW$L$_SDIO_writeBytes$25$E:
$C$L189:    
$C$DW$L$_SDIO_writeBytes$26$B:
	.dwpsn	file "src/csl_sdio.c",line 3036,column 30,is_stmt
        MOV #0, *SP(#14) ; |3036| 
	.dwpsn	file "src/csl_sdio.c",line 3036,column 41,is_stmt
        MOV #16, AR2 ; |3036| 
        MOV *SP(#14), AR1 ; |3036| 
        CMPU AR1 >= AR2, TC1 ; |3036| 
        BCC $C$L191,TC1 ; |3036| 
                                        ; branchcc occurs ; |3036| 
$C$DW$L$_SDIO_writeBytes$26$E:
$C$L190:    
$C$DW$L$_SDIO_writeBytes$27$B:
	.dwpsn	file "src/csl_sdio.c",line 3038,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3+, AR1 ; |3038| 
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#16), AR3 ; |3038| 
        OR #0x0000, AR1, AR1 ; |3038| 
        MOV port(*AR3), AR2 ; |3038| 
        MOV AR1, port(*AR3) ; |3038| 
	.dwpsn	file "src/csl_sdio.c",line 3040,column 29,is_stmt
        SUB #2, *SP(#15) ; |3040| 
	.dwpsn	file "src/csl_sdio.c",line 3036,column 78,is_stmt
        ADD #1, *SP(#14) ; |3036| 
	.dwpsn	file "src/csl_sdio.c",line 3036,column 41,is_stmt
        MOV #16, AR2 ; |3036| 
        MOV *SP(#14), AR1 ; |3036| 
        CMPU AR1 < AR2, TC1 ; |3036| 
        BCC $C$L190,TC1 ; |3036| 
                                        ; branchcc occurs ; |3036| 
$C$DW$L$_SDIO_writeBytes$27$E:
$C$L191:    
$C$DW$L$_SDIO_writeBytes$28$B:
	.dwpsn	file "src/csl_sdio.c",line 3044,column 21,is_stmt
        MOV #32, AR2 ; |3044| 
        MOV *SP(#15), AR1 ; |3044| 
        CMPU AR1 >= AR2, TC1 ; |3044| 
        BCC $C$L192,!TC1 ; |3044| 
                                        ; branchcc occurs ; |3044| 
$C$DW$L$_SDIO_writeBytes$28$E:
$C$DW$L$_SDIO_writeBytes$29$B:
	.dwpsn	file "src/csl_sdio.c",line 3046,column 25,is_stmt
	.dwpsn	file "src/csl_sdio.c",line 3049,column 26,is_stmt
        MOV #0, AR2
        CMPU AR2 != AR1, TC1 ; |3049| 
        BCC $C$L185,TC1 ; |3049| 
                                        ; branchcc occurs ; |3049| 
$C$DW$L$_SDIO_writeBytes$29$E:
$C$L192:    
	.dwpsn	file "src/csl_sdio.c",line 3058,column 13,is_stmt

        MOV #0, AR2
||      MOV *SP(#15), AR1 ; |3058| 

        CMPU AR2 == AR1, TC1 ; |3058| 
        BCC $C$L202,TC1 ; |3058| 
                                        ; branchcc occurs ; |3058| 
	.dwpsn	file "src/csl_sdio.c",line 3060,column 17,is_stmt
        MOV *SP(#6), AR1 ; |3060| 
        MOV *SP(#15), AR2 ; |3060| 
        CMPU AR2 != AR1, TC1 ; |3060| 
        BCC $C$L196,TC1 ; |3060| 
                                        ; branchcc occurs ; |3060| 
$C$L193:    
$C$DW$L$_SDIO_writeBytes$32$B:
	.dwpsn	file "src/csl_sdio.c",line 3064,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3064| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3064| 
        MOV AR1, *SP(#17) ; |3064| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3065,column 7,is_stmt
        BAND *SP(#17), #248, TC1 ; |3065| 
        BCC $C$L195,!TC1 ; |3065| 
                                        ; branchcc occurs ; |3065| 
$C$DW$L$_SDIO_writeBytes$32$E:
	.dwpsn	file "src/csl_sdio.c",line 3067,column 8,is_stmt
        BAND *SP(#17), #96, TC1 ; |3067| 
        BCC $C$L194,!TC1 ; |3067| 
                                        ; branchcc occurs ; |3067| 
	.dwpsn	file "src/csl_sdio.c",line 3069,column 9,is_stmt
        MOV #-17, T0 ; |3069| 
        B $C$L207 ; |3069| 
                                        ; branch occurs ; |3069| 
$C$L194:    
	.dwpsn	file "src/csl_sdio.c",line 3073,column 9,is_stmt
        MOV #-16, T0 ; |3073| 
        B $C$L207 ; |3073| 
                                        ; branch occurs ; |3073| 
$C$L195:    
$C$DW$L$_SDIO_writeBytes$37$B:
	.dwpsn	file "src/csl_sdio.c",line 3076,column 14,is_stmt
        MOV *SP(#17), AR1 ; |3076| 
        MOV #512, AR2 ; |3076| 
        AND #0x0200, AR1, AR1 ; |3076| 
        CMPU AR1 != AR2, TC1 ; |3076| 
        BCC $C$L193,TC1 ; |3076| 
                                        ; branchcc occurs ; |3076| 
$C$DW$L$_SDIO_writeBytes$37$E:
$C$L196:    
	.dwpsn	file "src/csl_sdio.c",line 3080,column 17,is_stmt

        MOV #1, AR2
||      MOV *SP(#20), AR1 ; |3080| 

        CMPU AR2 != AR1, TC1 ; |3080| 
        BCC $C$L199,TC1 ; |3080| 
                                        ; branchcc occurs ; |3080| 
	.dwpsn	file "src/csl_sdio.c",line 3083,column 26,is_stmt
        MOV #0, *SP(#14) ; |3083| 
	.dwpsn	file "src/csl_sdio.c",line 3083,column 37,is_stmt
        MOV *SP(#15), AR1 ; |3083| 

        SFTL AR1, #-1 ; |3083| 
||      MOV *SP(#14), AR2 ; |3083| 

        CMPU AR2 >= AR1, TC1 ; |3083| 
        BCC $C$L198,TC1 ; |3083| 
                                        ; branchcc occurs ; |3083| 
$C$L197:    
$C$DW$L$_SDIO_writeBytes$40$B:
	.dwpsn	file "src/csl_sdio.c",line 3085,column 25,is_stmt
        MOV *SP(#16), AR3 ; |3085| 
        MOV port(*AR3), AR1 ; |3085| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3085| 
        MOV *SP(#16), AR3 ; |3085| 
        OR #0x0000, AR1, AR1 ; |3085| 
        MOV AR1, port(*AR3) ; |3085| 
	.dwpsn	file "src/csl_sdio.c",line 3088,column 25,is_stmt
        MOV *SP(#16), AR3 ; |3088| 
        MOV port(*AR3), AR1 ; |3088| 
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3, AC0 ; |3088| 
        MOV *SP(#16), AR3 ; |3088| 
        BFXTR #0xff00, AC0, AR1 ; |3088| 
        OR #0x0000, AR1, AR1 ; |3088| 
        MOV AR1, port(*AR3) ; |3088| 
	.dwpsn	file "src/csl_sdio.c",line 3092,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3083,column 63,is_stmt
        ADD #1, *SP(#14) ; |3083| 
	.dwpsn	file "src/csl_sdio.c",line 3083,column 37,is_stmt
        MOV *SP(#15), AR1 ; |3083| 

        SFTL AR1, #-1 ; |3083| 
||      MOV *SP(#14), AR2 ; |3083| 

        CMPU AR2 < AR1, TC1 ; |3083| 
        BCC $C$L197,TC1 ; |3083| 
                                        ; branchcc occurs ; |3083| 
$C$DW$L$_SDIO_writeBytes$40$E:
$C$L198:    
	.dwpsn	file "src/csl_sdio.c",line 3096,column 21,is_stmt
        MOV *SP(#16), AR3 ; |3096| 
        MOV port(*AR3), AR1 ; |3096| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3096| 
        MOV *SP(#16), AR3 ; |3096| 
        OR #0x0000, AR1, AR1 ; |3096| 
        MOV AR1, port(*AR3) ; |3096| 
	.dwpsn	file "src/csl_sdio.c",line 3098,column 17,is_stmt
        B $C$L201 ; |3098| 
                                        ; branch occurs ; |3098| 
$C$L199:    
	.dwpsn	file "src/csl_sdio.c",line 3101,column 26,is_stmt
        MOV #0, *SP(#14) ; |3101| 
	.dwpsn	file "src/csl_sdio.c",line 3101,column 37,is_stmt
        MOV *SP(#15), AR1 ; |3101| 

        SFTL AR1, #-1 ; |3101| 
||      MOV *SP(#14), AR2 ; |3101| 

        CMPU AR2 >= AR1, TC1 ; |3101| 
        BCC $C$L201,TC1 ; |3101| 
                                        ; branchcc occurs ; |3101| 
$C$L200:    
$C$DW$L$_SDIO_writeBytes$43$B:
	.dwpsn	file "src/csl_sdio.c",line 3103,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3+, AR1 ; |3103| 
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#16), AR3 ; |3103| 
        OR #0x0000, AR1, AR1 ; |3103| 
        MOV port(*AR3), AR2 ; |3103| 
        MOV AR1, port(*AR3) ; |3103| 
	.dwpsn	file "src/csl_sdio.c",line 3101,column 63,is_stmt
        ADD #1, *SP(#14) ; |3101| 
	.dwpsn	file "src/csl_sdio.c",line 3101,column 37,is_stmt
        MOV *SP(#15), AR1 ; |3101| 

        SFTL AR1, #-1 ; |3101| 
||      MOV *SP(#14), AR2 ; |3101| 

        CMPU AR2 < AR1, TC1 ; |3101| 
        BCC $C$L200,TC1 ; |3101| 
                                        ; branchcc occurs ; |3101| 
$C$DW$L$_SDIO_writeBytes$43$E:
$C$L201:    
	.dwpsn	file "src/csl_sdio.c",line 3107,column 17,is_stmt
        MOV #0, *SP(#15) ; |3107| 
$C$L202:    
$C$DW$L$_SDIO_writeBytes$45$B:
	.dwpsn	file "src/csl_sdio.c",line 3113,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3113| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3113| 
        MOV AR1, *SP(#17) ; |3113| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3114,column 5,is_stmt
        BAND *SP(#17), #248, TC1 ; |3114| 
        BCC $C$L204,!TC1 ; |3114| 
                                        ; branchcc occurs ; |3114| 
$C$DW$L$_SDIO_writeBytes$45$E:
	.dwpsn	file "src/csl_sdio.c",line 3116,column 6,is_stmt
        BAND *SP(#17), #96, TC1 ; |3116| 
        BCC $C$L203,!TC1 ; |3116| 
                                        ; branchcc occurs ; |3116| 
	.dwpsn	file "src/csl_sdio.c",line 3118,column 7,is_stmt
        MOV #-17, T0 ; |3118| 
        B $C$L207 ; |3118| 
                                        ; branch occurs ; |3118| 
$C$L203:    
	.dwpsn	file "src/csl_sdio.c",line 3122,column 7,is_stmt
        MOV #-16, T0 ; |3122| 
        B $C$L207 ; |3122| 
                                        ; branch occurs ; |3122| 
$C$L204:    
$C$DW$L$_SDIO_writeBytes$50$B:
	.dwpsn	file "src/csl_sdio.c",line 3125,column 12,is_stmt
        MOV *SP(#17), AR1 ; |3125| 

        AND #0x0001, AR1, AR1 ; |3125| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |3125| 
        BCC $C$L202,TC1 ; |3125| 
                                        ; branchcc occurs ; |3125| 
$C$DW$L$_SDIO_writeBytes$50$E:
	.dwpsn	file "src/csl_sdio.c",line 3128,column 13,is_stmt
        MOV #0, *SP(#12) ; |3128| 
	.dwpsn	file "src/csl_sdio.c",line 3129,column 9,is_stmt
        B $C$L206 ; |3129| 
                                        ; branch occurs ; |3129| 
$C$L205:    
	.dwpsn	file "src/csl_sdio.c",line 3132,column 13,is_stmt
        MOV #-6, *SP(#12) ; |3132| 
$C$L206:    
	.dwpsn	file "src/csl_sdio.c",line 3136,column 5,is_stmt
        MOV *SP(#12), T0 ; |3136| 
$C$L207:    
	.dwpsn	file "src/csl_sdio.c",line 3137,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$321	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$321, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L202:1:1714639451")
	.dwattr $C$DW$321, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$321, DW_AT_TI_begin_line(0xc27)
	.dwattr $C$DW$321, DW_AT_TI_end_line(0xc35)
$C$DW$322	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$322, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$45$B)
	.dwattr $C$DW$322, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$45$E)
$C$DW$323	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$323, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$50$B)
	.dwattr $C$DW$323, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$50$E)
	.dwendtag $C$DW$321


$C$DW$324	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$324, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L200:1:1714639451")
	.dwattr $C$DW$324, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$324, DW_AT_TI_begin_line(0xc1d)
	.dwattr $C$DW$324, DW_AT_TI_end_line(0xc20)
$C$DW$325	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$325, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$43$B)
	.dwattr $C$DW$325, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$43$E)
	.dwendtag $C$DW$324


$C$DW$326	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$326, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L197:1:1714639451")
	.dwattr $C$DW$326, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$326, DW_AT_TI_begin_line(0xc0b)
	.dwattr $C$DW$326, DW_AT_TI_end_line(0xc15)
$C$DW$327	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$327, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$40$B)
	.dwattr $C$DW$327, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$40$E)
	.dwendtag $C$DW$326


$C$DW$328	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$328, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L193:1:1714639451")
	.dwattr $C$DW$328, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$328, DW_AT_TI_begin_line(0xbf6)
	.dwattr $C$DW$328, DW_AT_TI_end_line(0xc04)
$C$DW$329	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$329, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$32$B)
	.dwattr $C$DW$329, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$32$E)
$C$DW$330	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$330, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$37$B)
	.dwattr $C$DW$330, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$37$E)
	.dwendtag $C$DW$328


$C$DW$331	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$331, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L185:1:1714639451")
	.dwattr $C$DW$331, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$331, DW_AT_TI_begin_line(0xbb9)
	.dwattr $C$DW$331, DW_AT_TI_end_line(0xbe9)
$C$DW$332	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$332, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$16$B)
	.dwattr $C$DW$332, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$16$E)
$C$DW$333	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$333, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$22$B)
	.dwattr $C$DW$333, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$22$E)
$C$DW$334	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$334, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$23$B)
	.dwattr $C$DW$334, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$23$E)
$C$DW$335	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$335, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$25$B)
	.dwattr $C$DW$335, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$25$E)
$C$DW$336	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$336, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$26$B)
	.dwattr $C$DW$336, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$26$E)
$C$DW$337	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$337, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$28$B)
	.dwattr $C$DW$337, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$28$E)
$C$DW$338	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$338, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$29$B)
	.dwattr $C$DW$338, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$29$E)
$C$DW$339	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$339, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$21$B)
	.dwattr $C$DW$339, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$21$E)

$C$DW$340	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$340, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L188:2:1714639451")
	.dwattr $C$DW$340, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$340, DW_AT_TI_begin_line(0xbcd)
	.dwattr $C$DW$340, DW_AT_TI_end_line(0xbd8)
$C$DW$341	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$341, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$24$B)
	.dwattr $C$DW$341, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$24$E)
	.dwendtag $C$DW$340


$C$DW$342	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$342, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L190:2:1714639451")
	.dwattr $C$DW$342, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$342, DW_AT_TI_begin_line(0xbdc)
	.dwattr $C$DW$342, DW_AT_TI_end_line(0xbe1)
$C$DW$343	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$343, DW_AT_low_pc($C$DW$L$_SDIO_writeBytes$27$B)
	.dwattr $C$DW$343, DW_AT_high_pc($C$DW$L$_SDIO_writeBytes$27$E)
	.dwendtag $C$DW$342

	.dwendtag $C$DW$331

	.dwattr $C$DW$297, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$297, DW_AT_TI_end_line(0xc41)
	.dwattr $C$DW$297, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$297

	.sect	".text"
	.global	_SDIO_readBlocks

$C$DW$344	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_readBlocks")
	.dwattr $C$DW$344, DW_AT_low_pc(_SDIO_readBlocks)
	.dwattr $C$DW$344, DW_AT_high_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_SDIO_readBlocks")
	.dwattr $C$DW$344, DW_AT_external
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$344, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$344, DW_AT_TI_begin_line(0xc95)
	.dwattr $C$DW$344, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$344, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "src/csl_sdio.c",line 3228,column 1,is_stmt,address _SDIO_readBlocks

	.dwfde $C$DW$CIE, _SDIO_readBlocks
$C$DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_reg17]
$C$DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readAddr")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg0]
$C$DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg12]
$C$DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opCode")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg13]
$C$DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBlocks")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_noOfBlocks")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg18]
$C$DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockSize")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg20]
$C$DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuf")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg23]
;*******************************************************************************
;* FUNCTION NAME: SDIO_readBlocks                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 26 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (24 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_readBlocks:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-25, SP
	.dwcfi	cfa_offset, 26
$C$DW$352	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$353	.dwtag  DW_TAG_variable, DW_AT_name("readAddr")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_readAddr")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$354	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$355	.dwtag  DW_TAG_variable, DW_AT_name("opCode")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$356	.dwtag  DW_TAG_variable, DW_AT_name("noOfBlocks")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_noOfBlocks")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$357	.dwtag  DW_TAG_variable, DW_AT_name("blockSize")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$358	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuf")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_pReadBuf")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$359	.dwtag  DW_TAG_variable, DW_AT_name("bytesRemaining")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_bytesRemaining")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$360	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$361	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$362	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$363	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$364	.dwtag  DW_TAG_variable, DW_AT_name("dataByte")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_dataByte")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("pReadReg")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_pReadReg")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$366	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$367	.dwtag  DW_TAG_variable, DW_AT_name("blkMode")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_blkMode")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_bregx 0x24 21]
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("byteMode")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_byteMode")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_bregx 0x24 23]
        MOV XAR3, dbl(*SP(#8))
        MOV AR2, *SP(#7) ; |3228| 
        MOV AR1, *SP(#6) ; |3228| 
        MOV T1, *SP(#5) ; |3228| 
        MOV T0, *SP(#4) ; |3228| 
        MOV AC0, dbl(*SP(#2)) ; |3228| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 3241,column 5,is_stmt
        MOV #0, AC0 ; |3241| 
        MOV AC0, dbl(*SP(#10)) ; |3241| 
	.dwpsn	file "src/csl_sdio.c",line 3242,column 5,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |3242| 
	.dwpsn	file "src/csl_sdio.c",line 3243,column 5,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |3243| 
	.dwpsn	file "src/csl_sdio.c",line 3244,column 5,is_stmt
        MOV #-5, *SP(#16) ; |3244| 
	.dwpsn	file "src/csl_sdio.c",line 3245,column 5,is_stmt
        MOV #0, *SP(#17) ; |3245| 
	.dwpsn	file "src/csl_sdio.c",line 3246,column 5,is_stmt
        MOV #0, *SP(#18) ; |3246| 
	.dwpsn	file "src/csl_sdio.c",line 3247,column 5,is_stmt
        MOV #0, *SP(#19) ; |3247| 
	.dwpsn	file "src/csl_sdio.c",line 3248,column 2,is_stmt
        MOV #0, *SP(#20) ; |3248| 
	.dwpsn	file "src/csl_sdio.c",line 3249,column 5,is_stmt
        MOV #0, *SP(#21) ; |3249| 
	.dwpsn	file "src/csl_sdio.c",line 3250,column 5,is_stmt
        MOV #0, *SP(#22) ; |3250| 
	.dwpsn	file "src/csl_sdio.c",line 3251,column 5,is_stmt
        MOV #0, *SP(#23) ; |3251| 
	.dwpsn	file "src/csl_sdio.c",line 3253,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3253| 

        CMPU AC1 == AC0, TC1 ; |3253| 
        BCC $C$L234,TC1 ; |3253| 
                                        ; branchcc occurs ; |3253| 
	.dwpsn	file "src/csl_sdio.c",line 3255,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |3255| 
        BCC $C$L233,TC1 ; |3255| 
                                        ; branchcc occurs ; |3255| 
        MOV #511, AR2 ; |3255| 
        MOV *SP(#6), AR1 ; |3255| 
        CMPU AR1 > AR2, TC1 ; |3255| 
        BCC $C$L233,TC1 ; |3255| 
                                        ; branchcc occurs ; |3255| 
        MOV *SP(#7), AR1 ; |3255| 
        BCC $C$L233,AR1 == #0 ; |3255| 
                                        ; branchcc occurs ; |3255| 
        MOV #2048, AR2 ; |3255| 
        CMPU AR1 > AR2, TC1 ; |3255| 
        BCC $C$L233,TC1 ; |3255| 
                                        ; branchcc occurs ; |3255| 

        MOV *SP(#4), AR1 ; |3255| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |3255| 
        BCC $C$L233,TC1 ; |3255| 
                                        ; branchcc occurs ; |3255| 
	.dwpsn	file "src/csl_sdio.c",line 3260,column 13,is_stmt
        MOV *SP(#7), T1 ; |3260| 
        MPYM *SP(#6), T1, AC0 ; |3260| 
        AND #0xffff, AC0, AC0 ; |3260| 
        MOV AC0, dbl(*SP(#12)) ; |3260| 
	.dwpsn	file "src/csl_sdio.c",line 3261,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3261| 
        MOV AC0, dbl(*SP(#10)) ; |3261| 
	.dwpsn	file "src/csl_sdio.c",line 3264,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3264| 
        MOV port(*AR3), AR1 ; |3264| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)) << #9, AC0 ; |3264| 
        MOV *AR3, AR3 ; |3264| 
        BCLR @#9, AR1 ; |3264| 
        AND #0x0200, AC0, AR2 ; |3264| 
        OR AR1, AR2 ; |3264| 
        MOV AR2, port(*AR3) ; |3264| 
	.dwpsn	file "src/csl_sdio.c",line 3268,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |3268| 
        MOV *AR3, AR3 ; |3268| 
        MOV port(*AR3(T0)), AR1 ; |3268| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3268| 
        AND #0xf000, AR1, AR2 ; |3268| 
        MOV *SP(#7), AR1 ; |3268| 
        AND #0x0fff, AR1, AR1 ; |3268| 
        OR AR2, AR1 ; |3268| 
        MOV AR1, port(*AR3(T0)) ; |3268| 
	.dwpsn	file "src/csl_sdio.c",line 3269,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |3269| 
        MOV *AR3, AR3 ; |3269| 
        MOV port(*AR3(T0)), AR1 ; |3269| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3269| 
        MOV *SP(#6), AR1 ; |3269| 
        OR #0x0000, AR1, AR1 ; |3269| 
        MOV AR1, port(*AR3(T0)) ; |3269| 
	.dwpsn	file "src/csl_sdio.c",line 3272,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |3272| 
        MOV *AR3, AR3 ; |3272| 
        MOV port(*AR3(T0)), AR1 ; |3272| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3272| 
        BCLR @#0, AR1 ; |3272| 
        BSET @#0, AR1 ; |3272| 
        MOV AR1, port(*AR3(T0)) ; |3272| 
	.dwpsn	file "src/csl_sdio.c",line 3274,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3274| 
        MOV port(*AR3(T0)), AR1 ; |3274| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3274| 
        BCLR @#1, AR1 ; |3274| 
        MOV AR1, port(*AR3(T0)) ; |3274| 
	.dwpsn	file "src/csl_sdio.c",line 3277,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3277| 
        AND #0x0001, AC0, AC0 ; |3277| 
        CMPU AC1 != AC0, TC1 ; |3277| 
        BCC $C$L208,TC1 ; |3277| 
                                        ; branchcc occurs ; |3277| 
	.dwpsn	file "src/csl_sdio.c",line 3279,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3279| 
        MOV port(*AR3(T0)), AR1 ; |3279| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3279| 
        AND #0xffe7, AR1, AC0 ; |3279| 
        BSET @#4, AC0 ; |3279| 
        MOV AC0, port(*AR3(T0)) ; |3279| 
	.dwpsn	file "src/csl_sdio.c",line 3280,column 13,is_stmt
        B $C$L209 ; |3280| 
                                        ; branch occurs ; |3280| 
$C$L208:    
	.dwpsn	file "src/csl_sdio.c",line 3283,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3283| 
        MOV port(*AR3(T0)), AR1 ; |3283| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3283| 
        AND #0xffe7, AR1, AR1 ; |3283| 
        OR #0x0018, AR1, AR1 ; |3283| 
        MOV AR1, port(*AR3(T0)) ; |3283| 
	.dwpsn	file "src/csl_sdio.c",line 3284,column 17,is_stmt
        MOV #1, *SP(#23) ; |3284| 
$C$L209:    
	.dwpsn	file "src/csl_sdio.c",line 3288,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3288| 
        MOV port(*AR3(T0)), AR1 ; |3288| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3288| 
        BCLR @#2, AR1 ; |3288| 
        BSET @#2, AR1 ; |3288| 
        MOV AR1, port(*AR3(T0)) ; |3288| 
	.dwpsn	file "src/csl_sdio.c",line 3290,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |3290| 
        BCC $C$L210,AR1 != #0 ; |3290| 
                                        ; branchcc occurs ; |3290| 
	.dwpsn	file "src/csl_sdio.c",line 3292,column 17,is_stmt
        MOV *AR3, AR3 ; |3292| 

        MOV AR3, *SP(#19) ; |3292| 
||      AADD #40, AR3 ; |3292| 

	.dwpsn	file "src/csl_sdio.c",line 3293,column 13,is_stmt
        B $C$L211 ; |3293| 
                                        ; branch occurs ; |3293| 
$C$L210:    
	.dwpsn	file "src/csl_sdio.c",line 3296,column 17,is_stmt
        MOV *AR3, AR3 ; |3296| 

        MOV AR3, *SP(#19) ; |3296| 
||      AADD #41, AR3 ; |3296| 

$C$L211:    
	.dwpsn	file "src/csl_sdio.c",line 3300,column 13,is_stmt
        MOV #1, *SP(#21) ; |3300| 
	.dwpsn	file "src/csl_sdio.c",line 3301,column 13,is_stmt
        MOV #0, *SP(#22) ; |3301| 
	.dwpsn	file "src/csl_sdio.c",line 3303,column 13,is_stmt
        MOV #0, AC0 ; |3303| 
        MOV AC0, dbl(*SP(#14)) ; |3303| 
	.dwpsn	file "src/csl_sdio.c",line 3304,column 13,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |3304| 
        MOV uns(*SP(#6)), AC0 ; |3304| 

        MOV uns(*SP(#5)), AC1 ; |3304| 
||      OR AC1 << #9, AC0 ; |3304| 

        MOV uns(*SP(#21)), AC1 ; |3304| 
||      OR AC1 << #26, AC0 ; |3304| 

        MOV uns(*SP(#4)), AC1 ; |3304| 
||      OR AC1 << #27, AC0 ; |3304| 

        MOV uns(*SP(#22)), AC1 ; |3304| 
||      OR AC1 << #28, AC0 ; |3304| 

        OR AC1 << #31, AC0 ; |3304| 
        MOV AC0, dbl(*SP(#14)) ; |3304| 
	.dwpsn	file "src/csl_sdio.c",line 3307,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3307| 
        MOV *AR3, AR3 ; |3307| 
        MOV port(*AR3(T0)), AR1 ; |3307| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3307| 
        AND #0xffc0, AR1, AC0 ; |3307| 
        MOV AC0, port(*AR3(T0)) ; |3307| 
	.dwpsn	file "src/csl_sdio.c",line 3309,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |3309| 
        MOV *AR3, AR3 ; |3309| 
        MOV port(*AR3(T0)), AR1 ; |3309| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3309| 
        MOV dbl(*SP(#14)), AC0 ; |3309| 
        MOV #0 << #16, AC1 ; |3309| 
        AND #0xffff, AC0, AC0 ; |3309| 
        OR AC1, AC0 ; |3309| 
        MOV AC0, port(*AR3(T0)) ; |3309| 
	.dwpsn	file "src/csl_sdio.c",line 3311,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |3311| 
        MOV *AR3, AR3 ; |3311| 
        MOV port(*AR3(T0)), AR1 ; |3311| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3311| 
        MOV dbl(*SP(#14)), AC0 ; |3311| 
        SFTL AC0, #-16, AC0 ; |3311| 
        AND #0xffff, AC0, AC0 ; |3311| 
        OR AC1, AC0 ; |3311| 
        MOV AC0, port(*AR3(T0)) ; |3311| 
	.dwpsn	file "src/csl_sdio.c",line 3314,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |3314| 
        MOV *AR3, AR3 ; |3314| 
        MOV #8757, port(*AR3(T0)) ; |3314| 
        MOV #8, T0
$C$L212:    
$C$DW$L$_SDIO_readBlocks$14$B:
	.dwpsn	file "src/csl_sdio.c",line 3318,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3318| 
        MOV port(*AR3(T0)), AR1 ; |3318| 
        MOV AR1, *SP(#20) ; |3318| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3319,column 5,is_stmt
        BAND *SP(#20), #144, TC1 ; |3319| 
        BCC $C$L214,!TC1 ; |3319| 
                                        ; branchcc occurs ; |3319| 
$C$DW$L$_SDIO_readBlocks$14$E:
	.dwpsn	file "src/csl_sdio.c",line 3321,column 6,is_stmt
        BTST #4, *SP(#20), TC1 ; |3321| 
        BCC $C$L213,!TC1 ; |3321| 
                                        ; branchcc occurs ; |3321| 
	.dwpsn	file "src/csl_sdio.c",line 3323,column 7,is_stmt
        MOV #-16, T0 ; |3323| 
        B $C$L235 ; |3323| 
                                        ; branch occurs ; |3323| 
$C$L213:    
	.dwpsn	file "src/csl_sdio.c",line 3327,column 7,is_stmt
        MOV #-17, T0 ; |3327| 
        B $C$L235 ; |3327| 
                                        ; branch occurs ; |3327| 
$C$L214:    
$C$DW$L$_SDIO_readBlocks$19$B:
	.dwpsn	file "src/csl_sdio.c",line 3331,column 12,is_stmt
        BTST #2, *SP(#20), TC1 ; |3331| 
        BCC $C$L212,!TC1 ; |3331| 
                                        ; branchcc occurs ; |3331| 
$C$DW$L$_SDIO_readBlocks$19$E:
	.dwpsn	file "src/csl_sdio.c",line 3333,column 13,is_stmt
        MOV #32, AC0 ; |3333| 
        MOV dbl(*SP(#12)), AC1 ; |3333| 
        CMPU AC1 < AC0, TC1 ; |3333| 
        BCC $C$L222,TC1 ; |3333| 
                                        ; branchcc occurs ; |3333| 
$C$L215:    
$C$DW$L$_SDIO_readBlocks$21$B:
	.dwpsn	file "src/csl_sdio.c",line 3345,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3345| 
        MOV port(*AR3(T0)), AR1 ; |3345| 
        MOV AR1, *SP(#20) ; |3345| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3346,column 7,is_stmt
        BAND *SP(#20), #104, TC1 ; |3346| 
        BCC $C$L217,!TC1 ; |3346| 
                                        ; branchcc occurs ; |3346| 
$C$DW$L$_SDIO_readBlocks$21$E:
	.dwpsn	file "src/csl_sdio.c",line 3348,column 8,is_stmt
        BTST #3, *SP(#20), TC1 ; |3348| 
        BCC $C$L216,!TC1 ; |3348| 
                                        ; branchcc occurs ; |3348| 
	.dwpsn	file "src/csl_sdio.c",line 3350,column 9,is_stmt
        MOV #-16, T0 ; |3350| 
        B $C$L235 ; |3350| 
                                        ; branch occurs ; |3350| 
$C$L216:    
	.dwpsn	file "src/csl_sdio.c",line 3354,column 9,is_stmt
        MOV #-17, T0 ; |3354| 
        B $C$L235 ; |3354| 
                                        ; branch occurs ; |3354| 
$C$L217:    
$C$DW$L$_SDIO_readBlocks$26$B:
	.dwpsn	file "src/csl_sdio.c",line 3358,column 14,is_stmt
        MOV *SP(#20), AR1 ; |3358| 
        MOV #1024, AR2 ; |3358| 
        AND #0x0400, AR1, AR1 ; |3358| 
        CMPU AR1 != AR2, TC1 ; |3358| 
        BCC $C$L215,TC1 ; |3358| 
                                        ; branchcc occurs ; |3358| 
$C$DW$L$_SDIO_readBlocks$26$E:
$C$DW$L$_SDIO_readBlocks$27$B:
	.dwpsn	file "src/csl_sdio.c",line 3361,column 21,is_stmt

        MOV #1, AR2
||      MOV *SP(#23), AR1 ; |3361| 

        CMPU AR2 != AR1, TC1 ; |3361| 
        BCC $C$L219,TC1 ; |3361| 
                                        ; branchcc occurs ; |3361| 
$C$DW$L$_SDIO_readBlocks$27$E:
$C$DW$L$_SDIO_readBlocks$28$B:
	.dwpsn	file "src/csl_sdio.c",line 3363,column 30,is_stmt
        MOV #0, *SP(#17) ; |3363| 
	.dwpsn	file "src/csl_sdio.c",line 3363,column 41,is_stmt
        MOV #16, AR2 ; |3363| 
        MOV *SP(#17), AR1 ; |3363| 
        CMPU AR1 >= AR2, TC1 ; |3363| 
        BCC $C$L221,TC1 ; |3363| 
                                        ; branchcc occurs ; |3363| 
$C$DW$L$_SDIO_readBlocks$28$E:
$C$L218:    
$C$DW$L$_SDIO_readBlocks$29$B:
	.dwpsn	file "src/csl_sdio.c",line 3365,column 29,is_stmt
        MOV *SP(#19), AR3 ; |3365| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |3365| 
        MOV AR1, *AR2 ; |3365| 
	.dwpsn	file "src/csl_sdio.c",line 3368,column 29,is_stmt
        MOV *SP(#19), AR3 ; |3368| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |3368| 
        MOV AR1, *SP(#18) ; |3368| 
	.dwpsn	file "src/csl_sdio.c",line 3371,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *AR3, AC0 ; |3371| 
||      MOV AR1, AC1 ; |3371| 

        OR AC1 << #8, AC0 ; |3371| 
        MOV AC0, *AR3 ; |3371| 
	.dwpsn	file "src/csl_sdio.c",line 3373,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3373| 
        SUB #2, AC0 ; |3373| 
        MOV AC0, dbl(*SP(#10)) ; |3373| 
	.dwpsn	file "src/csl_sdio.c",line 3374,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3363,column 77,is_stmt
        ADD #1, *SP(#17) ; |3363| 
	.dwpsn	file "src/csl_sdio.c",line 3363,column 41,is_stmt
        MOV #16, AR2 ; |3363| 
        MOV *SP(#17), AR1 ; |3363| 
        CMPU AR1 < AR2, TC1 ; |3363| 
        BCC $C$L218,TC1 ; |3363| 
                                        ; branchcc occurs ; |3363| 
$C$DW$L$_SDIO_readBlocks$29$E:
$C$DW$L$_SDIO_readBlocks$30$B:
	.dwpsn	file "src/csl_sdio.c",line 3376,column 21,is_stmt
        B $C$L221 ; |3376| 
                                        ; branch occurs ; |3376| 
$C$DW$L$_SDIO_readBlocks$30$E:
$C$L219:    
$C$DW$L$_SDIO_readBlocks$31$B:
	.dwpsn	file "src/csl_sdio.c",line 3379,column 30,is_stmt
        MOV #0, *SP(#17) ; |3379| 
	.dwpsn	file "src/csl_sdio.c",line 3379,column 41,is_stmt
        MOV #16, AR2 ; |3379| 
        MOV *SP(#17), AR1 ; |3379| 
        CMPU AR1 >= AR2, TC1 ; |3379| 
        BCC $C$L221,TC1 ; |3379| 
                                        ; branchcc occurs ; |3379| 
$C$DW$L$_SDIO_readBlocks$31$E:
$C$L220:    
$C$DW$L$_SDIO_readBlocks$32$B:
	.dwpsn	file "src/csl_sdio.c",line 3381,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#19), AR3 ; |3381| 
        MOV port(*AR3), AR1 ; |3381| 
        MOV AR1, *AR2 ; |3381| 
	.dwpsn	file "src/csl_sdio.c",line 3383,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3383| 
        SUB #2, AC0 ; |3383| 
        MOV AC0, dbl(*SP(#10)) ; |3383| 
	.dwpsn	file "src/csl_sdio.c",line 3379,column 77,is_stmt
        ADD #1, *SP(#17) ; |3379| 
	.dwpsn	file "src/csl_sdio.c",line 3379,column 41,is_stmt
        MOV #16, AR2 ; |3379| 
        MOV *SP(#17), AR1 ; |3379| 
        CMPU AR1 < AR2, TC1 ; |3379| 
        BCC $C$L220,TC1 ; |3379| 
                                        ; branchcc occurs ; |3379| 
$C$DW$L$_SDIO_readBlocks$32$E:
$C$L221:    
$C$DW$L$_SDIO_readBlocks$33$B:
	.dwpsn	file "src/csl_sdio.c",line 3387,column 21,is_stmt
        MOV #32, AC0 ; |3387| 
        MOV dbl(*SP(#10)), AC1 ; |3387| 
        CMPU AC1 >= AC0, TC1 ; |3387| 
        BCC $C$L222,!TC1 ; |3387| 
                                        ; branchcc occurs ; |3387| 
$C$DW$L$_SDIO_readBlocks$33$E:
$C$DW$L$_SDIO_readBlocks$34$B:
	.dwpsn	file "src/csl_sdio.c",line 3389,column 25,is_stmt
	.dwpsn	file "src/csl_sdio.c",line 3392,column 26,is_stmt

        MOV #0, AC1 ; |3392| 
||      MOV dbl(*SP(#10)), AC0 ; |3392| 

        CMPU AC1 != AC0, TC1 ; |3392| 
        BCC $C$L215,TC1 ; |3392| 
                                        ; branchcc occurs ; |3392| 
$C$DW$L$_SDIO_readBlocks$34$E:
$C$L222:    
	.dwpsn	file "src/csl_sdio.c",line 3401,column 13,is_stmt

        MOV #0, AC1 ; |3401| 
||      MOV dbl(*SP(#10)), AC0 ; |3401| 

        CMPU AC1 == AC0, TC1 ; |3401| 
        BCC $C$L232,TC1 ; |3401| 
                                        ; branchcc occurs ; |3401| 
	.dwpsn	file "src/csl_sdio.c",line 3403,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3403| 
        MOV dbl(*SP(#10)), AC1 ; |3403| 
        CMPU AC1 != AC0, TC1 ; |3403| 
        BCC $C$L226,TC1 ; |3403| 
                                        ; branchcc occurs ; |3403| 
$C$L223:    
$C$DW$L$_SDIO_readBlocks$37$B:
	.dwpsn	file "src/csl_sdio.c",line 3407,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3407| 
        MOV port(*AR3(T0)), AR1 ; |3407| 
        MOV AR1, *SP(#20) ; |3407| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3408,column 7,is_stmt
        BAND *SP(#20), #104, TC1 ; |3408| 
        BCC $C$L225,!TC1 ; |3408| 
                                        ; branchcc occurs ; |3408| 
$C$DW$L$_SDIO_readBlocks$37$E:
	.dwpsn	file "src/csl_sdio.c",line 3410,column 8,is_stmt
        BTST #3, *SP(#20), TC1 ; |3410| 
        BCC $C$L224,!TC1 ; |3410| 
                                        ; branchcc occurs ; |3410| 
	.dwpsn	file "src/csl_sdio.c",line 3412,column 9,is_stmt
        MOV #-16, T0 ; |3412| 
        B $C$L235 ; |3412| 
                                        ; branch occurs ; |3412| 
$C$L224:    
	.dwpsn	file "src/csl_sdio.c",line 3416,column 9,is_stmt
        MOV #-17, T0 ; |3416| 
        B $C$L235 ; |3416| 
                                        ; branch occurs ; |3416| 
$C$L225:    
$C$DW$L$_SDIO_readBlocks$42$B:
	.dwpsn	file "src/csl_sdio.c",line 3420,column 14,is_stmt
        MOV *SP(#20), AR1 ; |3420| 
        MOV #1024, AR2 ; |3420| 
        AND #0x0400, AR1, AR1 ; |3420| 
        CMPU AR1 != AR2, TC1 ; |3420| 
        BCC $C$L223,TC1 ; |3420| 
                                        ; branchcc occurs ; |3420| 
$C$DW$L$_SDIO_readBlocks$42$E:
$C$L226:    
	.dwpsn	file "src/csl_sdio.c",line 3423,column 17,is_stmt

        MOV #1, AR2
||      MOV *SP(#23), AR1 ; |3423| 

        CMPU AR2 != AR1, TC1 ; |3423| 
        BCC $C$L229,TC1 ; |3423| 
                                        ; branchcc occurs ; |3423| 
	.dwpsn	file "src/csl_sdio.c",line 3426,column 26,is_stmt
        MOV #0, *SP(#17) ; |3426| 
	.dwpsn	file "src/csl_sdio.c",line 3426,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3426| 

        SFTL AC0, #-1 ; |3426| 
||      MOV uns(*SP(#17)), AC1 ; |3426| 

        CMPU AC1 >= AC0, TC1 ; |3426| 
        BCC $C$L228,TC1 ; |3426| 
                                        ; branchcc occurs ; |3426| 
$C$L227:    
$C$DW$L$_SDIO_readBlocks$45$B:
	.dwpsn	file "src/csl_sdio.c",line 3428,column 25,is_stmt
        MOV *SP(#19), AR3 ; |3428| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |3428| 
        MOV AR1, *AR2 ; |3428| 
	.dwpsn	file "src/csl_sdio.c",line 3431,column 25,is_stmt
        MOV *SP(#19), AR3 ; |3431| 
        MOV uns(low_byte(port(*AR3))), AR1 ; |3431| 
        MOV AR1, *SP(#18) ; |3431| 
	.dwpsn	file "src/csl_sdio.c",line 3434,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3

        MOV *AR3, AC0 ; |3434| 
||      MOV AR1, AC1 ; |3434| 

        OR AC1 << #8, AC0 ; |3434| 
        MOV AC0, *AR3 ; |3434| 
	.dwpsn	file "src/csl_sdio.c",line 3436,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3426,column 63,is_stmt
        ADD #1, *SP(#17) ; |3426| 
	.dwpsn	file "src/csl_sdio.c",line 3426,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3426| 

        SFTL AC0, #-1 ; |3426| 
||      MOV uns(*SP(#17)), AC1 ; |3426| 

        CMPU AC1 < AC0, TC1 ; |3426| 
        BCC $C$L227,TC1 ; |3426| 
                                        ; branchcc occurs ; |3426| 
$C$DW$L$_SDIO_readBlocks$45$E:
$C$L228:    
	.dwpsn	file "src/csl_sdio.c",line 3440,column 21,is_stmt
        MOV *SP(#19), AR3 ; |3440| 
        MOV dbl(*SP(#8)), XAR2
        MOV uns(low_byte(port(*AR3))), AR1 ; |3440| 
        MOV AR1, *AR2 ; |3440| 
	.dwpsn	file "src/csl_sdio.c",line 3442,column 17,is_stmt
        B $C$L231 ; |3442| 
                                        ; branch occurs ; |3442| 
$C$L229:    
	.dwpsn	file "src/csl_sdio.c",line 3445,column 26,is_stmt
        MOV #0, *SP(#17) ; |3445| 
	.dwpsn	file "src/csl_sdio.c",line 3445,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3445| 

        SFTL AC0, #-1 ; |3445| 
||      MOV uns(*SP(#17)), AC1 ; |3445| 

        CMPU AC1 >= AC0, TC1 ; |3445| 
        BCC $C$L231,TC1 ; |3445| 
                                        ; branchcc occurs ; |3445| 
$C$L230:    
$C$DW$L$_SDIO_readBlocks$48$B:
	.dwpsn	file "src/csl_sdio.c",line 3447,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#19), AR3 ; |3447| 
        MOV port(*AR3), AR1 ; |3447| 
        MOV AR1, *AR2 ; |3447| 
	.dwpsn	file "src/csl_sdio.c",line 3445,column 63,is_stmt
        ADD #1, *SP(#17) ; |3445| 
	.dwpsn	file "src/csl_sdio.c",line 3445,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3445| 

        SFTL AC0, #-1 ; |3445| 
||      MOV uns(*SP(#17)), AC1 ; |3445| 

        CMPU AC1 < AC0, TC1 ; |3445| 
        BCC $C$L230,TC1 ; |3445| 
                                        ; branchcc occurs ; |3445| 
$C$DW$L$_SDIO_readBlocks$48$E:
$C$L231:    
	.dwpsn	file "src/csl_sdio.c",line 3451,column 17,is_stmt
        MOV #0, AC0 ; |3451| 
        MOV AC0, dbl(*SP(#10)) ; |3451| 
$C$L232:    
	.dwpsn	file "src/csl_sdio.c",line 3454,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |3454| 
        MOV *AR3, AR3 ; |3454| 
        MOV port(*AR3(T0)), AR1 ; |3454| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3454| 
        BCLR @#0, AR1 ; |3454| 
        BSET @#0, AR1 ; |3454| 
        MOV AR1, port(*AR3(T0)) ; |3454| 
	.dwpsn	file "src/csl_sdio.c",line 3455,column 13,is_stmt
        MOV #0, *SP(#16) ; |3455| 
	.dwpsn	file "src/csl_sdio.c",line 3456,column 9,is_stmt
        B $C$L234 ; |3456| 
                                        ; branch occurs ; |3456| 
$C$L233:    
	.dwpsn	file "src/csl_sdio.c",line 3459,column 13,is_stmt
        MOV #-6, *SP(#16) ; |3459| 
$C$L234:    
	.dwpsn	file "src/csl_sdio.c",line 3463,column 5,is_stmt
        MOV *SP(#16), T0 ; |3463| 
$C$L235:    
	.dwpsn	file "src/csl_sdio.c",line 3464,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 1
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$371	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$371, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L230:1:1714639451")
	.dwattr $C$DW$371, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$371, DW_AT_TI_begin_line(0xd75)
	.dwattr $C$DW$371, DW_AT_TI_end_line(0xd78)
$C$DW$372	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$372, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$48$B)
	.dwattr $C$DW$372, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$48$E)
	.dwendtag $C$DW$371


$C$DW$373	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$373, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L227:1:1714639451")
	.dwattr $C$DW$373, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$373, DW_AT_TI_begin_line(0xd62)
	.dwattr $C$DW$373, DW_AT_TI_end_line(0xd6d)
$C$DW$374	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$374, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$45$B)
	.dwattr $C$DW$374, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$45$E)
	.dwendtag $C$DW$373


$C$DW$375	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$375, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L223:1:1714639451")
	.dwattr $C$DW$375, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$375, DW_AT_TI_begin_line(0xd4d)
	.dwattr $C$DW$375, DW_AT_TI_end_line(0xd5c)
$C$DW$376	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$376, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$37$B)
	.dwattr $C$DW$376, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$37$E)
$C$DW$377	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$377, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$42$B)
	.dwattr $C$DW$377, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$42$E)
	.dwendtag $C$DW$375


$C$DW$378	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$378, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L215:1:1714639451")
	.dwattr $C$DW$378, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$378, DW_AT_TI_begin_line(0xd0f)
	.dwattr $C$DW$378, DW_AT_TI_end_line(0xd40)
$C$DW$379	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$379, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$21$B)
	.dwattr $C$DW$379, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$21$E)
$C$DW$380	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$380, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$27$B)
	.dwattr $C$DW$380, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$27$E)
$C$DW$381	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$381, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$28$B)
	.dwattr $C$DW$381, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$28$E)
$C$DW$382	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$382, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$30$B)
	.dwattr $C$DW$382, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$30$E)
$C$DW$383	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$383, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$31$B)
	.dwattr $C$DW$383, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$31$E)
$C$DW$384	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$384, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$33$B)
	.dwattr $C$DW$384, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$33$E)
$C$DW$385	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$385, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$34$B)
	.dwattr $C$DW$385, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$34$E)
$C$DW$386	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$386, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$26$B)
	.dwattr $C$DW$386, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$26$E)

$C$DW$387	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$387, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L218:2:1714639451")
	.dwattr $C$DW$387, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$387, DW_AT_TI_begin_line(0xd23)
	.dwattr $C$DW$387, DW_AT_TI_end_line(0xd2f)
$C$DW$388	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$388, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$29$B)
	.dwattr $C$DW$388, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$29$E)
	.dwendtag $C$DW$387


$C$DW$389	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$389, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L220:2:1714639451")
	.dwattr $C$DW$389, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$389, DW_AT_TI_begin_line(0xd33)
	.dwattr $C$DW$389, DW_AT_TI_end_line(0xd38)
$C$DW$390	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$390, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$32$B)
	.dwattr $C$DW$390, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$32$E)
	.dwendtag $C$DW$389

	.dwendtag $C$DW$378


$C$DW$391	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$391, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L212:1:1714639451")
	.dwattr $C$DW$391, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$391, DW_AT_TI_begin_line(0xcf4)
	.dwattr $C$DW$391, DW_AT_TI_end_line(0xd03)
$C$DW$392	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$392, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$14$B)
	.dwattr $C$DW$392, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$14$E)
$C$DW$393	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$393, DW_AT_low_pc($C$DW$L$_SDIO_readBlocks$19$B)
	.dwattr $C$DW$393, DW_AT_high_pc($C$DW$L$_SDIO_readBlocks$19$E)
	.dwendtag $C$DW$391

	.dwattr $C$DW$344, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$344, DW_AT_TI_end_line(0xd88)
	.dwattr $C$DW$344, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$344

	.sect	".text"
	.global	_SDIO_writeBlocks

$C$DW$394	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_writeBlocks")
	.dwattr $C$DW$394, DW_AT_low_pc(_SDIO_writeBlocks)
	.dwattr $C$DW$394, DW_AT_high_pc(0x00)
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_SDIO_writeBlocks")
	.dwattr $C$DW$394, DW_AT_external
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$394, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$394, DW_AT_TI_begin_line(0xddc)
	.dwattr $C$DW$394, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$394, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_sdio.c",line 3555,column 1,is_stmt,address _SDIO_writeBlocks

	.dwfde $C$DW$CIE, _SDIO_writeBlocks
$C$DW$395	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg17]
$C$DW$396	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeAddr")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg0]
$C$DW$397	.dwtag  DW_TAG_formal_parameter, DW_AT_name("funNum")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg12]
$C$DW$398	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opCode")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg13]
$C$DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBlocks")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_noOfBlocks")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg18]
$C$DW$400	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockSize")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg20]
$C$DW$401	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg23]
;*******************************************************************************
;* FUNCTION NAME: SDIO_writeBlocks                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (23 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_writeBlocks:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$402	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$403	.dwtag  DW_TAG_variable, DW_AT_name("writeAddr")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_writeAddr")
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$403, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$404	.dwtag  DW_TAG_variable, DW_AT_name("funNum")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_funNum")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$404, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$405	.dwtag  DW_TAG_variable, DW_AT_name("opCode")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_opCode")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$406	.dwtag  DW_TAG_variable, DW_AT_name("noOfBlocks")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_noOfBlocks")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$407	.dwtag  DW_TAG_variable, DW_AT_name("blockSize")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_blockSize")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$408	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuf")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_pWriteBuf")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$409	.dwtag  DW_TAG_variable, DW_AT_name("bytesRemaining")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_bytesRemaining")
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$409, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$410	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$410, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$411	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$411, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$412	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$412, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$413	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_location[DW_OP_bregx 0x24 17]
$C$DW$414	.dwtag  DW_TAG_variable, DW_AT_name("pWriteReg")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_pWriteReg")
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$414, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$415	.dwtag  DW_TAG_variable, DW_AT_name("statusReg")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_statusReg")
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$415, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$416	.dwtag  DW_TAG_variable, DW_AT_name("blkMode")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_blkMode")
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$416, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$417	.dwtag  DW_TAG_variable, DW_AT_name("rwFlag")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_rwFlag")
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$417, DW_AT_location[DW_OP_bregx 0x24 21]
$C$DW$418	.dwtag  DW_TAG_variable, DW_AT_name("byteMode")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_byteMode")
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$418, DW_AT_location[DW_OP_bregx 0x24 22]
        MOV XAR3, dbl(*SP(#8))
        MOV AR2, *SP(#7) ; |3555| 
        MOV AR1, *SP(#6) ; |3555| 
        MOV T1, *SP(#5) ; |3555| 
        MOV T0, *SP(#4) ; |3555| 
        MOV AC0, dbl(*SP(#2)) ; |3555| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 3567,column 5,is_stmt
        MOV #0, AC0 ; |3567| 
        MOV AC0, dbl(*SP(#10)) ; |3567| 
	.dwpsn	file "src/csl_sdio.c",line 3568,column 5,is_stmt
        MOV AC0, dbl(*SP(#12)) ; |3568| 
	.dwpsn	file "src/csl_sdio.c",line 3569,column 5,is_stmt
        MOV AC0, dbl(*SP(#14)) ; |3569| 
	.dwpsn	file "src/csl_sdio.c",line 3570,column 5,is_stmt
        MOV #-5, *SP(#16) ; |3570| 
	.dwpsn	file "src/csl_sdio.c",line 3571,column 5,is_stmt
        MOV #0, *SP(#17) ; |3571| 
	.dwpsn	file "src/csl_sdio.c",line 3572,column 5,is_stmt
        MOV #0, *SP(#18) ; |3572| 
	.dwpsn	file "src/csl_sdio.c",line 3573,column 2,is_stmt
        MOV #0, *SP(#19) ; |3573| 
	.dwpsn	file "src/csl_sdio.c",line 3574,column 5,is_stmt
        MOV #0, *SP(#20) ; |3574| 
	.dwpsn	file "src/csl_sdio.c",line 3575,column 5,is_stmt
        MOV #0, *SP(#21) ; |3575| 
	.dwpsn	file "src/csl_sdio.c",line 3576,column 5,is_stmt
        MOV #0, *SP(#22) ; |3576| 
	.dwpsn	file "src/csl_sdio.c",line 3578,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3578| 

        CMPU AC1 == AC0, TC1 ; |3578| 
        BCC $C$L261,TC1 ; |3578| 
                                        ; branchcc occurs ; |3578| 
	.dwpsn	file "src/csl_sdio.c",line 3580,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |3580| 
        BCC $C$L260,TC1 ; |3580| 
                                        ; branchcc occurs ; |3580| 
        MOV #511, AR2 ; |3580| 
        MOV *SP(#6), AR1 ; |3580| 
        CMPU AR1 > AR2, TC1 ; |3580| 
        BCC $C$L260,TC1 ; |3580| 
                                        ; branchcc occurs ; |3580| 
        MOV *SP(#7), AR1 ; |3580| 
        BCC $C$L260,AR1 == #0 ; |3580| 
                                        ; branchcc occurs ; |3580| 
        MOV #2048, AR2 ; |3580| 
        CMPU AR1 > AR2, TC1 ; |3580| 
        BCC $C$L260,TC1 ; |3580| 
                                        ; branchcc occurs ; |3580| 

        MOV *SP(#4), AR1 ; |3580| 
||      MOV #7, AR2

        CMPU AR1 > AR2, TC1 ; |3580| 
        BCC $C$L260,TC1 ; |3580| 
                                        ; branchcc occurs ; |3580| 
	.dwpsn	file "src/csl_sdio.c",line 3585,column 13,is_stmt
        MOV *SP(#7), T1 ; |3585| 
        MPYM *SP(#6), T1, AC0 ; |3585| 
        AND #0xffff, AC0, AC0 ; |3585| 
        MOV AC0, dbl(*SP(#12)) ; |3585| 
	.dwpsn	file "src/csl_sdio.c",line 3586,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3586| 
        MOV AC0, dbl(*SP(#10)) ; |3586| 
	.dwpsn	file "src/csl_sdio.c",line 3589,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3589| 
        MOV port(*AR3), AR1 ; |3589| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)) << #9, AC0 ; |3589| 
        MOV *AR3, AR3 ; |3589| 
        BCLR @#9, AR1 ; |3589| 
        AND #0x0200, AC0, AR2 ; |3589| 
        OR AR1, AR2 ; |3589| 
        MOV AR2, port(*AR3) ; |3589| 
	.dwpsn	file "src/csl_sdio.c",line 3593,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |3593| 
        MOV *AR3, AR3 ; |3593| 
        MOV port(*AR3(T0)), AR1 ; |3593| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3593| 
        AND #0xf000, AR1, AR2 ; |3593| 
        MOV *SP(#7), AR1 ; |3593| 
        AND #0x0fff, AR1, AR1 ; |3593| 
        OR AR2, AR1 ; |3593| 
        MOV AR1, port(*AR3(T0)) ; |3593| 
	.dwpsn	file "src/csl_sdio.c",line 3594,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |3594| 
        MOV *AR3, AR3 ; |3594| 
        MOV port(*AR3(T0)), AR1 ; |3594| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3594| 
        MOV *SP(#6), AR1 ; |3594| 
        OR #0x0000, AR1, AR1 ; |3594| 
        MOV AR1, port(*AR3(T0)) ; |3594| 
	.dwpsn	file "src/csl_sdio.c",line 3597,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |3597| 
        MOV *AR3, AR3 ; |3597| 
        MOV port(*AR3(T0)), AR1 ; |3597| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3597| 
        BCLR @#0, AR1 ; |3597| 
        BSET @#0, AR1 ; |3597| 
        MOV AR1, port(*AR3(T0)) ; |3597| 
	.dwpsn	file "src/csl_sdio.c",line 3599,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3599| 
        MOV port(*AR3(T0)), AR1 ; |3599| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3599| 
        BCLR @#1, AR1 ; |3599| 
        BSET @#1, AR1 ; |3599| 
        MOV AR1, port(*AR3(T0)) ; |3599| 
	.dwpsn	file "src/csl_sdio.c",line 3602,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3602| 
        AND #0x0001, AC0, AC0 ; |3602| 
        CMPU AC1 != AC0, TC1 ; |3602| 
        BCC $C$L236,TC1 ; |3602| 
                                        ; branchcc occurs ; |3602| 
	.dwpsn	file "src/csl_sdio.c",line 3604,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3604| 
        MOV port(*AR3(T0)), AR1 ; |3604| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3604| 
        AND #0xffe7, AR1, AC0 ; |3604| 
        BSET @#4, AC0 ; |3604| 
        MOV AC0, port(*AR3(T0)) ; |3604| 
	.dwpsn	file "src/csl_sdio.c",line 3605,column 13,is_stmt
        B $C$L237 ; |3605| 
                                        ; branch occurs ; |3605| 
$C$L236:    
	.dwpsn	file "src/csl_sdio.c",line 3608,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3608| 
        MOV port(*AR3(T0)), AR1 ; |3608| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3608| 
        AND #0xffe7, AR1, AR1 ; |3608| 
        OR #0x0018, AR1, AR1 ; |3608| 
        MOV AR1, port(*AR3(T0)) ; |3608| 
	.dwpsn	file "src/csl_sdio.c",line 3609,column 17,is_stmt
        MOV #1, *SP(#22) ; |3609| 
$C$L237:    
	.dwpsn	file "src/csl_sdio.c",line 3613,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3613| 
        MOV port(*AR3(T0)), AR1 ; |3613| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3613| 
        BCLR @#2, AR1 ; |3613| 
        BSET @#2, AR1 ; |3613| 
        MOV AR1, port(*AR3(T0)) ; |3613| 
	.dwpsn	file "src/csl_sdio.c",line 3615,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |3615| 
        BCC $C$L238,AR1 != #0 ; |3615| 
                                        ; branchcc occurs ; |3615| 
	.dwpsn	file "src/csl_sdio.c",line 3617,column 17,is_stmt
        MOV *AR3, AR3 ; |3617| 

        MOV AR3, *SP(#18) ; |3617| 
||      AADD #44, AR3 ; |3617| 

	.dwpsn	file "src/csl_sdio.c",line 3618,column 13,is_stmt
        B $C$L239 ; |3618| 
                                        ; branch occurs ; |3618| 
$C$L238:    
	.dwpsn	file "src/csl_sdio.c",line 3621,column 17,is_stmt
        MOV *AR3, AR3 ; |3621| 

        MOV AR3, *SP(#18) ; |3621| 
||      AADD #45, AR3 ; |3621| 

$C$L239:    
	.dwpsn	file "src/csl_sdio.c",line 3625,column 13,is_stmt
        MOV #1, *SP(#20) ; |3625| 
	.dwpsn	file "src/csl_sdio.c",line 3626,column 13,is_stmt
        MOV #1, *SP(#21) ; |3626| 
	.dwpsn	file "src/csl_sdio.c",line 3628,column 13,is_stmt
        MOV #0, AC0 ; |3628| 
        MOV AC0, dbl(*SP(#14)) ; |3628| 
	.dwpsn	file "src/csl_sdio.c",line 3629,column 13,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |3629| 
        MOV uns(*SP(#6)), AC0 ; |3629| 

        MOV uns(*SP(#5)), AC1 ; |3629| 
||      OR AC1 << #9, AC0 ; |3629| 

        MOV uns(*SP(#20)), AC1 ; |3629| 
||      OR AC1 << #26, AC0 ; |3629| 

        MOV uns(*SP(#4)), AC1 ; |3629| 
||      OR AC1 << #27, AC0 ; |3629| 

        MOV uns(*SP(#21)), AC1 ; |3629| 
||      OR AC1 << #28, AC0 ; |3629| 

        OR AC1 << #31, AC0 ; |3629| 
        MOV AC0, dbl(*SP(#14)) ; |3629| 
	.dwpsn	file "src/csl_sdio.c",line 3632,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3632| 
        MOV *AR3, AR3 ; |3632| 
        MOV port(*AR3(T0)), AR1 ; |3632| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3632| 
        AND #0xffc0, AR1, AC0 ; |3632| 
        MOV AC0, port(*AR3(T0)) ; |3632| 
	.dwpsn	file "src/csl_sdio.c",line 3634,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |3634| 
        MOV *AR3, AR3 ; |3634| 
        MOV port(*AR3(T0)), AR1 ; |3634| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3634| 
        MOV dbl(*SP(#14)), AC0 ; |3634| 
        MOV #0 << #16, AC1 ; |3634| 
        AND #0xffff, AC0, AC0 ; |3634| 
        OR AC1, AC0 ; |3634| 
        MOV AC0, port(*AR3(T0)) ; |3634| 
	.dwpsn	file "src/csl_sdio.c",line 3636,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |3636| 
        MOV *AR3, AR3 ; |3636| 
        MOV port(*AR3(T0)), AR1 ; |3636| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3636| 
        MOV dbl(*SP(#14)), AC0 ; |3636| 
        SFTL AC0, #-16, AC0 ; |3636| 
        AND #0xffff, AC0, AC0 ; |3636| 
        OR AC1, AC0 ; |3636| 
        MOV AC0, port(*AR3(T0)) ; |3636| 
	.dwpsn	file "src/csl_sdio.c",line 3639,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |3639| 
        MOV *AR3, AR3 ; |3639| 
        MOV #10805, port(*AR3(T0)) ; |3639| 
	.dwpsn	file "src/csl_sdio.c",line 3641,column 13,is_stmt
        MOV #32, AC0 ; |3641| 
        MOV dbl(*SP(#12)), AC1 ; |3641| 
        CMPU AC1 < AC0, TC1 ; |3641| 
        BCC $C$L247,TC1 ; |3641| 
                                        ; branchcc occurs ; |3641| 
$C$L240:    
$C$DW$L$_SDIO_writeBlocks$14$B:
	.dwpsn	file "src/csl_sdio.c",line 3653,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3653| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3653| 
        MOV AR1, *SP(#19) ; |3653| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3654,column 7,is_stmt
        BAND *SP(#19), #248, TC1 ; |3654| 
        BCC $C$L242,!TC1 ; |3654| 
                                        ; branchcc occurs ; |3654| 
$C$DW$L$_SDIO_writeBlocks$14$E:
	.dwpsn	file "src/csl_sdio.c",line 3656,column 8,is_stmt
        BAND *SP(#19), #96, TC1 ; |3656| 
        BCC $C$L241,!TC1 ; |3656| 
                                        ; branchcc occurs ; |3656| 
	.dwpsn	file "src/csl_sdio.c",line 3658,column 9,is_stmt
        MOV #-17, T0 ; |3658| 
        B $C$L262 ; |3658| 
                                        ; branch occurs ; |3658| 
$C$L241:    
	.dwpsn	file "src/csl_sdio.c",line 3662,column 9,is_stmt
        MOV #-16, T0 ; |3662| 
        B $C$L262 ; |3662| 
                                        ; branch occurs ; |3662| 
$C$L242:    
$C$DW$L$_SDIO_writeBlocks$19$B:
	.dwpsn	file "src/csl_sdio.c",line 3666,column 14,is_stmt
        MOV *SP(#19), AR1 ; |3666| 
        MOV #512, AR2 ; |3666| 
        AND #0x0200, AR1, AR1 ; |3666| 
        CMPU AR1 != AR2, TC1 ; |3666| 
        BCC $C$L240,TC1 ; |3666| 
                                        ; branchcc occurs ; |3666| 
$C$DW$L$_SDIO_writeBlocks$19$E:
$C$DW$L$_SDIO_writeBlocks$20$B:
	.dwpsn	file "src/csl_sdio.c",line 3669,column 21,is_stmt

        MOV #1, AR2
||      MOV *SP(#22), AR1 ; |3669| 

        CMPU AR2 != AR1, TC1 ; |3669| 
        BCC $C$L244,TC1 ; |3669| 
                                        ; branchcc occurs ; |3669| 
$C$DW$L$_SDIO_writeBlocks$20$E:
$C$DW$L$_SDIO_writeBlocks$21$B:
	.dwpsn	file "src/csl_sdio.c",line 3671,column 30,is_stmt
        MOV #0, *SP(#17) ; |3671| 
	.dwpsn	file "src/csl_sdio.c",line 3671,column 41,is_stmt
        MOV #16, AR2 ; |3671| 
        MOV *SP(#17), AR1 ; |3671| 
        CMPU AR1 >= AR2, TC1 ; |3671| 
        BCC $C$L246,TC1 ; |3671| 
                                        ; branchcc occurs ; |3671| 
$C$DW$L$_SDIO_writeBlocks$21$E:
$C$L243:    
$C$DW$L$_SDIO_writeBlocks$22$B:
	.dwpsn	file "src/csl_sdio.c",line 3673,column 29,is_stmt
        MOV *SP(#18), AR3 ; |3673| 
        MOV port(*AR3), AR1 ; |3673| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3673| 
        MOV *SP(#18), AR3 ; |3673| 
        OR #0x0000, AR1, AR1 ; |3673| 
        MOV AR1, port(*AR3) ; |3673| 
	.dwpsn	file "src/csl_sdio.c",line 3676,column 29,is_stmt
        MOV *SP(#18), AR3 ; |3676| 
        MOV port(*AR3), AR1 ; |3676| 
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3, AC0 ; |3676| 
        MOV *SP(#18), AR3 ; |3676| 
        BFXTR #0xff00, AC0, AR1 ; |3676| 
        OR #0x0000, AR1, AR1 ; |3676| 
        MOV AR1, port(*AR3) ; |3676| 
	.dwpsn	file "src/csl_sdio.c",line 3680,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3680| 
        SUB #2, AC0 ; |3680| 
        MOV AC0, dbl(*SP(#10)) ; |3680| 
	.dwpsn	file "src/csl_sdio.c",line 3681,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3671,column 78,is_stmt
        ADD #1, *SP(#17) ; |3671| 
	.dwpsn	file "src/csl_sdio.c",line 3671,column 41,is_stmt
        MOV *SP(#17), AR1 ; |3671| 
        CMPU AR1 < AR2, TC1 ; |3671| 
        BCC $C$L243,TC1 ; |3671| 
                                        ; branchcc occurs ; |3671| 
$C$DW$L$_SDIO_writeBlocks$22$E:
$C$DW$L$_SDIO_writeBlocks$23$B:
	.dwpsn	file "src/csl_sdio.c",line 3683,column 21,is_stmt
        B $C$L246 ; |3683| 
                                        ; branch occurs ; |3683| 
$C$DW$L$_SDIO_writeBlocks$23$E:
$C$L244:    
$C$DW$L$_SDIO_writeBlocks$24$B:
	.dwpsn	file "src/csl_sdio.c",line 3686,column 30,is_stmt
        MOV #0, *SP(#17) ; |3686| 
	.dwpsn	file "src/csl_sdio.c",line 3686,column 41,is_stmt
        MOV #16, AR2 ; |3686| 
        MOV *SP(#17), AR1 ; |3686| 
        CMPU AR1 >= AR2, TC1 ; |3686| 
        BCC $C$L246,TC1 ; |3686| 
                                        ; branchcc occurs ; |3686| 
$C$DW$L$_SDIO_writeBlocks$24$E:
$C$L245:    
$C$DW$L$_SDIO_writeBlocks$25$B:
	.dwpsn	file "src/csl_sdio.c",line 3688,column 29,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3+, AR1 ; |3688| 
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#18), AR3 ; |3688| 
        OR #0x0000, AR1, AR1 ; |3688| 
        MOV port(*AR3), AR2 ; |3688| 
        MOV AR1, port(*AR3) ; |3688| 
	.dwpsn	file "src/csl_sdio.c",line 3690,column 29,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3690| 
        SUB #2, AC0 ; |3690| 
        MOV AC0, dbl(*SP(#10)) ; |3690| 
	.dwpsn	file "src/csl_sdio.c",line 3686,column 78,is_stmt
        ADD #1, *SP(#17) ; |3686| 
	.dwpsn	file "src/csl_sdio.c",line 3686,column 41,is_stmt
        MOV #16, AR2 ; |3686| 
        MOV *SP(#17), AR1 ; |3686| 
        CMPU AR1 < AR2, TC1 ; |3686| 
        BCC $C$L245,TC1 ; |3686| 
                                        ; branchcc occurs ; |3686| 
$C$DW$L$_SDIO_writeBlocks$25$E:
$C$L246:    
$C$DW$L$_SDIO_writeBlocks$26$B:
	.dwpsn	file "src/csl_sdio.c",line 3694,column 21,is_stmt
        MOV #32, AC0 ; |3694| 
        MOV dbl(*SP(#10)), AC1 ; |3694| 
        CMPU AC1 >= AC0, TC1 ; |3694| 
        BCC $C$L247,!TC1 ; |3694| 
                                        ; branchcc occurs ; |3694| 
$C$DW$L$_SDIO_writeBlocks$26$E:
$C$DW$L$_SDIO_writeBlocks$27$B:
	.dwpsn	file "src/csl_sdio.c",line 3696,column 25,is_stmt
	.dwpsn	file "src/csl_sdio.c",line 3699,column 26,is_stmt

        MOV #0, AC1 ; |3699| 
||      MOV dbl(*SP(#10)), AC0 ; |3699| 

        CMPU AC1 != AC0, TC1 ; |3699| 
        BCC $C$L240,TC1 ; |3699| 
                                        ; branchcc occurs ; |3699| 
$C$DW$L$_SDIO_writeBlocks$27$E:
$C$L247:    
	.dwpsn	file "src/csl_sdio.c",line 3708,column 13,is_stmt

        MOV #0, AC1 ; |3708| 
||      MOV dbl(*SP(#10)), AC0 ; |3708| 

        CMPU AC1 == AC0, TC1 ; |3708| 
        BCC $C$L257,TC1 ; |3708| 
                                        ; branchcc occurs ; |3708| 
	.dwpsn	file "src/csl_sdio.c",line 3710,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |3710| 
        MOV dbl(*SP(#10)), AC1 ; |3710| 
        CMPU AC1 != AC0, TC1 ; |3710| 
        BCC $C$L251,TC1 ; |3710| 
                                        ; branchcc occurs ; |3710| 
$C$L248:    
$C$DW$L$_SDIO_writeBlocks$30$B:
	.dwpsn	file "src/csl_sdio.c",line 3714,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3714| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3714| 
        MOV AR1, *SP(#19) ; |3714| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3715,column 7,is_stmt
        BAND *SP(#19), #248, TC1 ; |3715| 
        BCC $C$L250,!TC1 ; |3715| 
                                        ; branchcc occurs ; |3715| 
$C$DW$L$_SDIO_writeBlocks$30$E:
	.dwpsn	file "src/csl_sdio.c",line 3717,column 8,is_stmt
        BAND *SP(#19), #96, TC1 ; |3717| 
        BCC $C$L249,!TC1 ; |3717| 
                                        ; branchcc occurs ; |3717| 
	.dwpsn	file "src/csl_sdio.c",line 3719,column 9,is_stmt
        MOV #-17, T0 ; |3719| 
        B $C$L262 ; |3719| 
                                        ; branch occurs ; |3719| 
$C$L249:    
	.dwpsn	file "src/csl_sdio.c",line 3723,column 9,is_stmt
        MOV #-16, T0 ; |3723| 
        B $C$L262 ; |3723| 
                                        ; branch occurs ; |3723| 
$C$L250:    
$C$DW$L$_SDIO_writeBlocks$35$B:
	.dwpsn	file "src/csl_sdio.c",line 3727,column 14,is_stmt
        MOV *SP(#19), AR1 ; |3727| 
        MOV #512, AR2 ; |3727| 
        AND #0x0200, AR1, AR1 ; |3727| 
        CMPU AR1 != AR2, TC1 ; |3727| 
        BCC $C$L248,TC1 ; |3727| 
                                        ; branchcc occurs ; |3727| 
$C$DW$L$_SDIO_writeBlocks$35$E:
$C$L251:    
	.dwpsn	file "src/csl_sdio.c",line 3731,column 17,is_stmt

        MOV #1, AR2
||      MOV *SP(#22), AR1 ; |3731| 

        CMPU AR2 != AR1, TC1 ; |3731| 
        BCC $C$L254,TC1 ; |3731| 
                                        ; branchcc occurs ; |3731| 
	.dwpsn	file "src/csl_sdio.c",line 3734,column 26,is_stmt
        MOV #0, *SP(#17) ; |3734| 
	.dwpsn	file "src/csl_sdio.c",line 3734,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3734| 

        SFTL AC0, #-1 ; |3734| 
||      MOV uns(*SP(#17)), AC1 ; |3734| 

        CMPU AC1 >= AC0, TC1 ; |3734| 
        BCC $C$L253,TC1 ; |3734| 
                                        ; branchcc occurs ; |3734| 
$C$L252:    
$C$DW$L$_SDIO_writeBlocks$38$B:
	.dwpsn	file "src/csl_sdio.c",line 3736,column 25,is_stmt
        MOV *SP(#18), AR3 ; |3736| 
        MOV port(*AR3), AR1 ; |3736| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3736| 
        MOV *SP(#18), AR3 ; |3736| 
        OR #0x0000, AR1, AR1 ; |3736| 
        MOV AR1, port(*AR3) ; |3736| 
	.dwpsn	file "src/csl_sdio.c",line 3739,column 25,is_stmt
        MOV *SP(#18), AR3 ; |3739| 
        MOV port(*AR3), AR1 ; |3739| 
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3, AC0 ; |3739| 
        MOV *SP(#18), AR3 ; |3739| 
        BFXTR #0xff00, AC0, AR1 ; |3739| 
        OR #0x0000, AR1, AR1 ; |3739| 
        MOV AR1, port(*AR3) ; |3739| 
	.dwpsn	file "src/csl_sdio.c",line 3743,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_sdio.c",line 3734,column 63,is_stmt
        ADD #1, *SP(#17) ; |3734| 
	.dwpsn	file "src/csl_sdio.c",line 3734,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3734| 

        SFTL AC0, #-1 ; |3734| 
||      MOV uns(*SP(#17)), AC1 ; |3734| 

        CMPU AC1 < AC0, TC1 ; |3734| 
        BCC $C$L252,TC1 ; |3734| 
                                        ; branchcc occurs ; |3734| 
$C$DW$L$_SDIO_writeBlocks$38$E:
$C$L253:    
	.dwpsn	file "src/csl_sdio.c",line 3747,column 21,is_stmt
        MOV *SP(#18), AR3 ; |3747| 
        MOV port(*AR3), AR1 ; |3747| 
        MOV dbl(*SP(#8)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |3747| 
        MOV *SP(#18), AR3 ; |3747| 
        OR #0x0000, AR1, AR1 ; |3747| 
        MOV AR1, port(*AR3) ; |3747| 
	.dwpsn	file "src/csl_sdio.c",line 3749,column 17,is_stmt
        B $C$L256 ; |3749| 
                                        ; branch occurs ; |3749| 
$C$L254:    
	.dwpsn	file "src/csl_sdio.c",line 3752,column 26,is_stmt
        MOV #0, *SP(#17) ; |3752| 
	.dwpsn	file "src/csl_sdio.c",line 3752,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3752| 

        SFTL AC0, #-1 ; |3752| 
||      MOV uns(*SP(#17)), AC1 ; |3752| 

        CMPU AC1 >= AC0, TC1 ; |3752| 
        BCC $C$L256,TC1 ; |3752| 
                                        ; branchcc occurs ; |3752| 
$C$L255:    
$C$DW$L$_SDIO_writeBlocks$41$B:
	.dwpsn	file "src/csl_sdio.c",line 3754,column 25,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV *AR3+, AR1 ; |3754| 
        MOV XAR3, dbl(*SP(#8))
        MOV *SP(#18), AR3 ; |3754| 
        OR #0x0000, AR1, AR1 ; |3754| 
        MOV port(*AR3), AR2 ; |3754| 
        MOV AR1, port(*AR3) ; |3754| 
	.dwpsn	file "src/csl_sdio.c",line 3752,column 63,is_stmt
        ADD #1, *SP(#17) ; |3752| 
	.dwpsn	file "src/csl_sdio.c",line 3752,column 37,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |3752| 

        SFTL AC0, #-1 ; |3752| 
||      MOV uns(*SP(#17)), AC1 ; |3752| 

        CMPU AC1 < AC0, TC1 ; |3752| 
        BCC $C$L255,TC1 ; |3752| 
                                        ; branchcc occurs ; |3752| 
$C$DW$L$_SDIO_writeBlocks$41$E:
$C$L256:    
	.dwpsn	file "src/csl_sdio.c",line 3758,column 17,is_stmt
        MOV #0, AC0 ; |3758| 
        MOV AC0, dbl(*SP(#10)) ; |3758| 
$C$L257:    
$C$DW$L$_SDIO_writeBlocks$43$B:
	.dwpsn	file "src/csl_sdio.c",line 3764,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3764| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3764| 
        MOV AR1, *SP(#19) ; |3764| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_sdio.c",line 3765,column 5,is_stmt
        BAND *SP(#19), #248, TC1 ; |3765| 
        BCC $C$L259,!TC1 ; |3765| 
                                        ; branchcc occurs ; |3765| 
$C$DW$L$_SDIO_writeBlocks$43$E:
	.dwpsn	file "src/csl_sdio.c",line 3767,column 6,is_stmt
        BAND *SP(#19), #96, TC1 ; |3767| 
        BCC $C$L258,!TC1 ; |3767| 
                                        ; branchcc occurs ; |3767| 
	.dwpsn	file "src/csl_sdio.c",line 3769,column 7,is_stmt
        MOV #-17, T0 ; |3769| 
        B $C$L262 ; |3769| 
                                        ; branch occurs ; |3769| 
$C$L258:    
	.dwpsn	file "src/csl_sdio.c",line 3773,column 7,is_stmt
        MOV #-16, T0 ; |3773| 
        B $C$L262 ; |3773| 
                                        ; branch occurs ; |3773| 
$C$L259:    
$C$DW$L$_SDIO_writeBlocks$48$B:
	.dwpsn	file "src/csl_sdio.c",line 3776,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3776| 
        MOV port(*AR3(T0)), AR1 ; |3776| 

        AND #0x0001, AR1, AR1 ; |3776| 
||      MOV #1, AR2

        CMPU AR1 != AR2, TC1 ; |3776| 
        BCC $C$L257,TC1 ; |3776| 
                                        ; branchcc occurs ; |3776| 
$C$DW$L$_SDIO_writeBlocks$48$E:
	.dwpsn	file "src/csl_sdio.c",line 3779,column 13,is_stmt
        MOV #0, *SP(#16) ; |3779| 
	.dwpsn	file "src/csl_sdio.c",line 3780,column 9,is_stmt
        B $C$L261 ; |3780| 
                                        ; branch occurs ; |3780| 
$C$L260:    
	.dwpsn	file "src/csl_sdio.c",line 3783,column 13,is_stmt
        MOV #-6, *SP(#16) ; |3783| 
$C$L261:    
	.dwpsn	file "src/csl_sdio.c",line 3787,column 5,is_stmt
        MOV *SP(#16), T0 ; |3787| 
$C$L262:    
	.dwpsn	file "src/csl_sdio.c",line 3788,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$420	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$420, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L257:1:1714639451")
	.dwattr $C$DW$420, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$420, DW_AT_TI_begin_line(0xeb2)
	.dwattr $C$DW$420, DW_AT_TI_end_line(0xec0)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$43$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$43$E)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$48$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$48$E)
	.dwendtag $C$DW$420


$C$DW$423	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$423, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L255:1:1714639451")
	.dwattr $C$DW$423, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$423, DW_AT_TI_begin_line(0xea8)
	.dwattr $C$DW$423, DW_AT_TI_end_line(0xeab)
$C$DW$424	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$424, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$41$B)
	.dwattr $C$DW$424, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$41$E)
	.dwendtag $C$DW$423


$C$DW$425	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$425, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L252:1:1714639451")
	.dwattr $C$DW$425, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$425, DW_AT_TI_begin_line(0xe96)
	.dwattr $C$DW$425, DW_AT_TI_end_line(0xea0)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$38$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$38$E)
	.dwendtag $C$DW$425


$C$DW$427	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$427, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L248:1:1714639451")
	.dwattr $C$DW$427, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$427, DW_AT_TI_begin_line(0xe80)
	.dwattr $C$DW$427, DW_AT_TI_end_line(0xe8f)
$C$DW$428	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$428, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$30$B)
	.dwattr $C$DW$428, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$30$E)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$35$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$35$E)
	.dwendtag $C$DW$427


$C$DW$430	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$430, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L240:1:1714639451")
	.dwattr $C$DW$430, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$430, DW_AT_TI_begin_line(0xe43)
	.dwattr $C$DW$430, DW_AT_TI_end_line(0xe73)
$C$DW$431	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$431, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$14$B)
	.dwattr $C$DW$431, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$14$E)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$20$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$20$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$21$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$21$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$23$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$23$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$24$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$24$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$26$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$26$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$27$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$27$E)
$C$DW$438	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$438, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$19$B)
	.dwattr $C$DW$438, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$19$E)

$C$DW$439	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$439, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L243:2:1714639451")
	.dwattr $C$DW$439, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$439, DW_AT_TI_begin_line(0xe57)
	.dwattr $C$DW$439, DW_AT_TI_end_line(0xe62)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$22$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$22$E)
	.dwendtag $C$DW$439


$C$DW$441	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$441, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_sdio.asm:$C$L245:2:1714639451")
	.dwattr $C$DW$441, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$441, DW_AT_TI_begin_line(0xe66)
	.dwattr $C$DW$441, DW_AT_TI_end_line(0xe6b)
$C$DW$442	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$442, DW_AT_low_pc($C$DW$L$_SDIO_writeBlocks$25$B)
	.dwattr $C$DW$442, DW_AT_high_pc($C$DW$L$_SDIO_writeBlocks$25$E)
	.dwendtag $C$DW$441

	.dwendtag $C$DW$430

	.dwattr $C$DW$394, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$394, DW_AT_TI_end_line(0xecc)
	.dwattr $C$DW$394, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$394

	.sect	".text"
	.global	_SDIO_setEndianMode

$C$DW$443	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_setEndianMode")
	.dwattr $C$DW$443, DW_AT_low_pc(_SDIO_setEndianMode)
	.dwattr $C$DW$443, DW_AT_high_pc(0x00)
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_SDIO_setEndianMode")
	.dwattr $C$DW$443, DW_AT_external
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$443, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$443, DW_AT_TI_begin_line(0xf02)
	.dwattr $C$DW$443, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$443, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sdio.c",line 3845,column 1,is_stmt,address _SDIO_setEndianMode

	.dwfde $C$DW$CIE, _SDIO_setEndianMode
$C$DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_reg17]
$C$DW$445	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$445, DW_AT_location[DW_OP_reg12]
$C$DW$446	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readEndianMode")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$446, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SDIO_setEndianMode                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_setEndianMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$447	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$448	.dwtag  DW_TAG_variable, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$448, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$449	.dwtag  DW_TAG_variable, DW_AT_name("readEndianMode")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$450	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#3) ; |3845| 
        MOV T0, *SP(#2) ; |3845| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 3848,column 5,is_stmt
        MOV #-5, *SP(#4) ; |3848| 
	.dwpsn	file "src/csl_sdio.c",line 3850,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3850| 

        CMPU AC1 == AC0, TC1 ; |3850| 
        BCC $C$L266,TC1 ; |3850| 
                                        ; branchcc occurs ; |3850| 
	.dwpsn	file "src/csl_sdio.c",line 3852,column 9,is_stmt
        MOV *SP(#2), AR1 ; |3852| 
        BCC $C$L263,AR1 == #0 ; |3852| 
                                        ; branchcc occurs ; |3852| 
        CMP *SP(#2) == #1, TC1 ; |3852| 
        BCC $C$L265,!TC1 ; |3852| 
                                        ; branchcc occurs ; |3852| 
$C$L263:    
        MOV *SP(#3), AR1 ; |3852| 
        BCC $C$L264,AR1 == #0 ; |3852| 
                                        ; branchcc occurs ; |3852| 
        CMP *SP(#3) == #1, TC1 ; |3852| 
        BCC $C$L265,!TC1 ; |3852| 
                                        ; branchcc occurs ; |3852| 
$C$L264:    
	.dwpsn	file "src/csl_sdio.c",line 3857,column 13,is_stmt
        MOV AR1, *AR3(short(#4)) ; |3857| 
	.dwpsn	file "src/csl_sdio.c",line 3858,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2), AR1 ; |3858| 
        MOV AR1, *AR3(short(#5)) ; |3858| 
	.dwpsn	file "src/csl_sdio.c",line 3861,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3861| 
        MOV port(*AR3), AR1 ; |3861| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3861| 
        MOV *SP(#2) << #10, AC0 ; |3861| 
        AND #0x0400, AC0, AR2 ; |3861| 
        BCLR @#10, AR1 ; |3861| 
        OR AR1, AR2 ; |3861| 
        MOV AR2, port(*AR3) ; |3861| 
	.dwpsn	file "src/csl_sdio.c",line 3865,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3865| 
        MOV port(*AR3), AR1 ; |3865| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3865| 
        MOV *SP(#3) << #9, AC0 ; |3865| 
        AND #0x0200, AC0, AR2 ; |3865| 
        BCLR @#9, AR1 ; |3865| 
        OR AR1, AR2 ; |3865| 
        MOV AR2, port(*AR3) ; |3865| 
	.dwpsn	file "src/csl_sdio.c",line 3868,column 13,is_stmt
        MOV #0, *SP(#4) ; |3868| 
	.dwpsn	file "src/csl_sdio.c",line 3869,column 9,is_stmt
        B $C$L266 ; |3869| 
                                        ; branch occurs ; |3869| 
$C$L265:    
	.dwpsn	file "src/csl_sdio.c",line 3872,column 13,is_stmt
        MOV #-6, *SP(#4) ; |3872| 
$C$L266:    
	.dwpsn	file "src/csl_sdio.c",line 3876,column 5,is_stmt
        MOV *SP(#4), T0 ; |3876| 
	.dwpsn	file "src/csl_sdio.c",line 3877,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$443, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$443, DW_AT_TI_end_line(0xf25)
	.dwattr $C$DW$443, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$443

	.sect	".text"
	.global	_SDIO_setClock

$C$DW$452	.dwtag  DW_TAG_subprogram, DW_AT_name("SDIO_setClock")
	.dwattr $C$DW$452, DW_AT_low_pc(_SDIO_setClock)
	.dwattr $C$DW$452, DW_AT_high_pc(0x00)
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_SDIO_setClock")
	.dwattr $C$DW$452, DW_AT_external
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$452, DW_AT_TI_begin_file("src/csl_sdio.c")
	.dwattr $C$DW$452, DW_AT_TI_begin_line(0xf54)
	.dwattr $C$DW$452, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$452, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_sdio.c",line 3926,column 1,is_stmt,address _SDIO_setClock

	.dwfde $C$DW$CIE, _SDIO_setClock
$C$DW$453	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSdio")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_reg17]
$C$DW$454	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clockRate")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_clockRate")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SDIO_setClock                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDIO_setClock:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$455	.dwtag  DW_TAG_variable, DW_AT_name("hSdio")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_hSdio")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$456	.dwtag  DW_TAG_variable, DW_AT_name("clockRate")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_clockRate")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$457	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$458	.dwtag  DW_TAG_variable, DW_AT_name("clkState")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_clkState")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |3926| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_sdio.c",line 3930,column 5,is_stmt
        MOV #-5, *SP(#3) ; |3930| 
	.dwpsn	file "src/csl_sdio.c",line 3932,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3932| 

        CMPU AC1 == AC0, TC1 ; |3932| 
        BCC $C$L268,TC1 ; |3932| 
                                        ; branchcc occurs ; |3932| 
	.dwpsn	file "src/csl_sdio.c",line 3934,column 9,is_stmt
        MOV #255, AR2 ; |3934| 
        MOV *SP(#2), AR1 ; |3934| 
        CMPU AR1 > AR2, TC1 ; |3934| 
        BCC $C$L267,TC1 ; |3934| 
                                        ; branchcc occurs ; |3934| 
	.dwpsn	file "src/csl_sdio.c",line 3937,column 4,is_stmt
        MOV *AR3, AR3 ; |3937| 
        MOV port(*AR3(short(#4))), AR1 ; |3937| 
        AND #0x0100, AR1, AC0 ; |3937| 
        SFTS AC0, #-8, AC0 ; |3937| 
        MOV AC0, *SP(#4) ; |3937| 
	.dwpsn	file "src/csl_sdio.c",line 3939,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3939| 
        MOV port(*AR3(short(#4))), AR1 ; |3939| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3939| 
        BCLR @#8, AR1 ; |3939| 
        MOV AR1, port(*AR3(short(#4))) ; |3939| 
	.dwpsn	file "src/csl_sdio.c",line 3941,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3941| 
        MOV port(*AR3(short(#4))), AR1 ; |3941| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3941| 
        AND #0xff00, AR1, AR2 ; |3941| 
        MOV uns(low_byte(*SP(#2))), AR1 ; |3941| 
        OR AR2, AR1 ; |3941| 
        MOV AR1, port(*AR3(short(#4))) ; |3941| 
	.dwpsn	file "src/csl_sdio.c",line 3943,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3943| 
        MOV port(*AR3(short(#4))), AR1 ; |3943| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AC0 ; |3943| 
        MOV *AR3, AR3 ; |3943| 
        SFTL AC0, #8, AC0 ; |3943| 
        AND #0x0100, AC0, AR2 ; |3943| 
        BCLR @#8, AR1 ; |3943| 
        OR AR1, AR2 ; |3943| 
        MOV AR2, port(*AR3(short(#4))) ; |3943| 
	.dwpsn	file "src/csl_sdio.c",line 3945,column 13,is_stmt
        MOV #0, *SP(#3) ; |3945| 
	.dwpsn	file "src/csl_sdio.c",line 3946,column 9,is_stmt
        B $C$L268 ; |3946| 
                                        ; branch occurs ; |3946| 
$C$L267:    
	.dwpsn	file "src/csl_sdio.c",line 3949,column 13,is_stmt
        MOV #-6, *SP(#3) ; |3949| 
$C$L268:    
	.dwpsn	file "src/csl_sdio.c",line 3953,column 5,is_stmt
        MOV *SP(#3), T0 ; |3953| 
	.dwpsn	file "src/csl_sdio.c",line 3954,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$459	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$459, DW_AT_low_pc(0x00)
	.dwattr $C$DW$459, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$452, DW_AT_TI_end_file("src/csl_sdio.c")
	.dwattr $C$DW$452, DW_AT_TI_end_line(0xf72)
	.dwattr $C$DW$452, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$452


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_CARD_NONE"), DW_AT_const_value(0x00)
$C$DW$461	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_IO_CARD"), DW_AT_const_value(0x01)
$C$DW$462	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_COMBO_CARD"), DW_AT_const_value(0x02)
$C$DW$463	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_INVALID_CARD"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioCardType")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$464	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ENDIAN_LITTLE"), DW_AT_const_value(0x00)
$C$DW$465	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ENDIAN_BIG"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioEndianMode")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$466	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_INST0"), DW_AT_const_value(0x00)
$C$DW$467	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_INST1"), DW_AT_const_value(0x01)
$C$DW$468	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_INST_INV"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioInstId")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$469	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_NO"), DW_AT_const_value(0x00)
$C$DW$470	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R1"), DW_AT_const_value(0x01)
$C$DW$471	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R2"), DW_AT_const_value(0x02)
$C$DW$472	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R3"), DW_AT_const_value(0x03)
$C$DW$473	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R4"), DW_AT_const_value(0x04)
$C$DW$474	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R5"), DW_AT_const_value(0x05)
$C$DW$475	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RESPTYPE_R6"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioRespType")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_EDATDNE_INTERRUPT"), DW_AT_const_value(0x00)
$C$DW$477	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_EBSYDNE_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$478	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ERSPDNE_INTERRUPT"), DW_AT_const_value(0x02)
$C$DW$479	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ETOUTRD_INTERRUPT"), DW_AT_const_value(0x03)
$C$DW$480	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ETOUTRS_INTERRUPT"), DW_AT_const_value(0x04)
$C$DW$481	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ECRCWR_INTERRUPT"), DW_AT_const_value(0x05)
$C$DW$482	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ECRCRD_INTERRUPT"), DW_AT_const_value(0x06)
$C$DW$483	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ECRCRS_INTERRUPT"), DW_AT_const_value(0x07)
$C$DW$484	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_RSV_BIT"), DW_AT_const_value(0x08)
$C$DW$485	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_EDXRDY_INTERRUPT"), DW_AT_const_value(0x09)
$C$DW$486	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_EDRRDY_INTERRUPT"), DW_AT_const_value(0x0a)
$C$DW$487	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_EDATED_INTERRUPT"), DW_AT_const_value(0x0b)
$C$DW$488	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_ETRNDNE_INTERRUPT"), DW_AT_const_value(0x0c)
$C$DW$489	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_MMCIM_ALL_INTERRUPT"), DW_AT_const_value(0x0d)
$C$DW$490	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_READWAIT_INTERRUPT"), DW_AT_const_value(0x0e)
$C$DW$491	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_CARD_INTERRUPT"), DW_AT_const_value(0x0f)
$C$DW$492	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SDIO_SDIOIEN_ALL_INTERRUPT"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$51

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioEventType")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x75)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_name("MMCCTL")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_MMCCTL")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$494, DW_AT_name("RSVD0")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("MMCCLK")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_MMCCLK")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$496, DW_AT_name("RSVD1")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_name("MMCST0")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_MMCST0")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$498, DW_AT_name("RSVD2")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_name("MMCST1")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_MMCST1")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$500, DW_AT_name("RSVD3")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$501, DW_AT_name("MMCIM")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_MMCIM")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$502, DW_AT_name("RSVD4")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$503, DW_AT_name("MMCTOR")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_MMCTOR")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$504, DW_AT_name("RSVD5")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$505, DW_AT_name("MMCTOD")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_MMCTOD")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$506, DW_AT_name("RSVD6")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_name("MMCBLEN")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_MMCBLEN")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$508, DW_AT_name("RSVD7")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_name("MMCNBLK")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_MMCNBLK")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$510, DW_AT_name("RSVD8")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$511, DW_AT_name("MMCNBLC")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_MMCNBLC")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$512, DW_AT_name("RSVD9")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$513, DW_AT_name("MMCDRR1")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_MMCDRR1")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$514, DW_AT_name("MMCDRR2")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_MMCDRR2")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$515, DW_AT_name("RSVD10")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$516, DW_AT_name("MMCDXR1")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_MMCDXR1")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$517, DW_AT_name("MMCDXR2")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_MMCDXR2")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$518, DW_AT_name("RSVD11")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$519, DW_AT_name("MMCCMD1")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_MMCCMD1")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$520, DW_AT_name("MMCCMD2")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_MMCCMD2")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$521, DW_AT_name("RSVD12")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$522, DW_AT_name("MMCARG1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_MMCARG1")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$523, DW_AT_name("MMCARG2")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_MMCARG2")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$524, DW_AT_name("RSVD13")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$525, DW_AT_name("MMCRSP0")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_MMCRSP0")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$526, DW_AT_name("MMCRSP1")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_MMCRSP1")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$527, DW_AT_name("RSVD14")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$528, DW_AT_name("MMCRSP2")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_MMCRSP2")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$529, DW_AT_name("MMCRSP3")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_MMCRSP3")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$530, DW_AT_name("RSVD15")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$531, DW_AT_name("MMCRSP4")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_MMCRSP4")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$532, DW_AT_name("MMCRSP5")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_MMCRSP5")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$533, DW_AT_name("RSVD16")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$534, DW_AT_name("MMCRSP6")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_MMCRSP6")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$535, DW_AT_name("MMCRSP7")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_MMCRSP7")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$536, DW_AT_name("RSVD17")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$537, DW_AT_name("MMCDRSP")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_MMCDRSP")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$538, DW_AT_name("RSVD18")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$539, DW_AT_name("MMCCIDX")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_MMCCIDX")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$540, DW_AT_name("RSVD19")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$541, DW_AT_name("SDIOCTL")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_SDIOCTL")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_name("RSVD20")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$543, DW_AT_name("SDIOST0")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_SDIOST0")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$544, DW_AT_name("RSVD21")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x69]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$545, DW_AT_name("SDIOIEN")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_SDIOIEN")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$546, DW_AT_name("RSVD22")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x6d]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$547, DW_AT_name("SDIOIST")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_SDIOIST")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$548, DW_AT_name("RSVD23")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$549, DW_AT_name("MMCFIFOCTL")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_MMCFIFOCTL")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegs")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$550	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$32)
$C$DW$551	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$550)
$C$DW$T$33	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$551)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x10)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegsOvly")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("rca")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$553, DW_AT_name("ocr")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_ocr")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$554, DW_AT_name("funCount")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_funCount")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$555, DW_AT_name("cardReady")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_cardReady")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$556, DW_AT_name("cardActive")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_cardActive")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$557, DW_AT_name("sdHcDetected")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_sdHcDetected")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$558, DW_AT_name("sdioCardType")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_sdioCardType")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioCardObj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x08)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$559, DW_AT_name("sdioRegs")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_sdioRegs")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$560, DW_AT_name("pSdioCardObj")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_pSdioCardObj")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$561, DW_AT_name("readEndianMode")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$562, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$563, DW_AT_name("cmd8Resp")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_cmd8Resp")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioControllerObj")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioHandle")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0a)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("mmcctl")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_mmcctl")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("mmcclk")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_mmcclk")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("mmcim")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_mmcim")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("mmctor")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_mmctor")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("mmctod")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_mmctod")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("mmcblen")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_mmcblen")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("mmcnblk")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_mmcnblk")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("mmcfifoctl")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_mmcfifoctl")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("sdioctl")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_sdioctl")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("sdioien")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_sdioien")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioConfig")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x17)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x08)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$574, DW_AT_name("respBuf")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_respBuf")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdioResponse")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x48)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$575, DW_AT_name("EBSR")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$576, DW_AT_name("RSVD0")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$577, DW_AT_name("PCGCR1")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$578, DW_AT_name("PCGCR2")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$579, DW_AT_name("PSRCR")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$580, DW_AT_name("PRCR")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$581, DW_AT_name("RSVD1")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$582, DW_AT_name("TIAFR")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$583, DW_AT_name("RSVD2")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$584, DW_AT_name("ODSCR")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$585, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$586, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$587, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$588, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$589, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$590, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$591, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$592, DW_AT_name("CCR1")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$593, DW_AT_name("CCR2")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$594, DW_AT_name("CGCR1")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$595, DW_AT_name("CGCR2")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$596, DW_AT_name("CGCR3")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$597, DW_AT_name("CGCR4")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$598, DW_AT_name("CCSSR")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$599, DW_AT_name("RSVD3")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$600, DW_AT_name("ECDR")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$601, DW_AT_name("RSVD4")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$602, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$603, DW_AT_name("RSVD5")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$604, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$605, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$606, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$607, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$608, DW_AT_name("RSVD6")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$609, DW_AT_name("DMAIFR")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$610, DW_AT_name("DMAIER")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$611, DW_AT_name("USBSCR")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$612, DW_AT_name("ESCR")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$613, DW_AT_name("RSVD7")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$614, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$615, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$616, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$617, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$618, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$619, DW_AT_name("RSVD8")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$620, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$621, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$622, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$623, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$624, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$625, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$626, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$627, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$628	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$64)
$C$DW$629	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$628)
$C$DW$T$65	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$629)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x10)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
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
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$630	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$630)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$631	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$631, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$632	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$632, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x07)
$C$DW$633	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$633, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x13)
$C$DW$634	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$634, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$24


$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x0e)
$C$DW$635	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$635, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x05)
$C$DW$636	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$636, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$45

$C$DW$637	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
$C$DW$638	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$637)
$C$DW$T$85	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$638)
$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x10)

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x08)
$C$DW$639	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$639, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$42

$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x17)
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
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
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

$C$DW$640	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg0]
$C$DW$641	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg1]
$C$DW$642	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg2]
$C$DW$643	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_reg3]
$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg4]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg5]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg6]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg7]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_reg8]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_reg9]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_reg10]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_reg11]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg12]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_reg13]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_reg14]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg15]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_reg16]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_reg17]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_reg18]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_reg19]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_reg20]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_reg21]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_reg22]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_reg23]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg24]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_reg25]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_reg26]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_reg27]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_reg28]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_reg29]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_reg30]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_reg31]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_regx 0x20]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_regx 0x21]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_regx 0x22]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_regx 0x23]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x24]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x25]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x26]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x27]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x28]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x29]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x30]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x31]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x32]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x33]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x34]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x35]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_regx 0x36]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_regx 0x37]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_regx 0x38]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_regx 0x39]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_regx 0x40]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_regx 0x41]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_regx 0x42]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_regx 0x43]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_regx 0x44]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_regx 0x45]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_regx 0x46]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_regx 0x47]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x48]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x49]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$716	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$717	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$718	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$719	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$720	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_regx 0x50]
$C$DW$721	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_regx 0x51]
$C$DW$722	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_regx 0x52]
$C$DW$723	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_regx 0x53]
$C$DW$724	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_regx 0x54]
$C$DW$725	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$725, DW_AT_location[DW_OP_regx 0x55]
$C$DW$726	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$726, DW_AT_location[DW_OP_regx 0x56]
$C$DW$727	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$727, DW_AT_location[DW_OP_regx 0x57]
$C$DW$728	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$728, DW_AT_location[DW_OP_regx 0x58]
$C$DW$729	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$729, DW_AT_location[DW_OP_regx 0x59]
$C$DW$730	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$730, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$731	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$731, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

