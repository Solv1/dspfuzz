;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:01 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_mmcsd.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_close")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DMA_close")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$89)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_config")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_DMA_config")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$89)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$127)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_start")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_DMA_start")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$89)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_stop")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_DMA_stop")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$89)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_swapWords")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_DMA_swapWords")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$161)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_IRQ_globalDisable")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalRestore")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_IRQ_globalRestore")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$31)
	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$120)
	.dwendtag $C$DW$16

	.global	_mmcsdCardExtCSD
	.bss	_mmcsdCardExtCSD,36,0,2
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("mmcsdCardExtCSD")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_mmcsdCardExtCSD")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _mmcsdCardExtCSD]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$18, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17450dV1kOs 
	.sect	".text"
	.global	_MMC_init

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_init")
	.dwattr $C$DW$19, DW_AT_low_pc(_MMC_init)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_MMC_init")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0xb4)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_mmcsd.c",line 181,column 1,is_stmt,address _MMC_init

	.dwfde $C$DW$CIE, _MMC_init
;*******************************************************************************
;* FUNCTION NAME: MMC_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "src/csl_mmcsd.c",line 183,column 2,is_stmt
        AND #0xffef, *port(#7170) ; |183| 
	.dwpsn	file "src/csl_mmcsd.c",line 184,column 2,is_stmt
        AND #0xff7f, *port(#7170) ; |184| 
	.dwpsn	file "src/csl_mmcsd.c",line 187,column 2,is_stmt
        MOV #0, AC0 ; |187| 
        MOV *port(#7172), AR1 ; |187| 
        BSET @#5, AC0 ; |187| 
        MOV AC0, *port(#7172) ; |187| 
	.dwpsn	file "src/csl_mmcsd.c",line 188,column 2,is_stmt
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$20, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |188| 
||      MOV #1, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |188| 
	.dwpsn	file "src/csl_mmcsd.c",line 195,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_mmcsd.c",line 196,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$19, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xc4)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_MMC_open

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_open")
	.dwattr $C$DW$22, DW_AT_low_pc(_MMC_open)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_MMC_open")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0xfb)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 255,column 1,is_stmt,address _MMC_open

	.dwfde $C$DW$CIE, _MMC_open
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcsdContObj")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_pMmcsdContObj")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("instId")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_instId")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opMode")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg13]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("pMmcsdContObj")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_pMmcsdContObj")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("instId")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_instId")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("opMode")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV T1, *SP(#3) ; |255| 
        MOV T0, *SP(#2) ; |255| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 258,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L1,AC0 == #0 ; |258| 
                                        ; branchcc occurs ; |258| 
        MOV *SP(#3), AR1 ; |258| 
        BCC $C$L3,AR1 == #0 ; |258| 
                                        ; branchcc occurs ; |258| 
        CMP *SP(#3) == #1, TC1 ; |258| 
        BCC $C$L3,TC1 ; |258| 
                                        ; branchcc occurs ; |258| 
        CMP *SP(#3) == #2, TC1 ; |258| 
        BCC $C$L3,TC1 ; |258| 
                                        ; branchcc occurs ; |258| 
$C$L1:    
	.dwpsn	file "src/csl_mmcsd.c",line 263,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 == #0 ; |263| 
                                        ; branchcc occurs ; |263| 
	.dwpsn	file "src/csl_mmcsd.c",line 265,column 10,is_stmt
        MOV #-6, *AR3 ; |265| 
$C$L2:    
	.dwpsn	file "src/csl_mmcsd.c",line 267,column 9,is_stmt
        MOV #0, AC0 ; |267| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd.c",line 268,column 2,is_stmt
        B $C$L10  ; |268| 
                                        ; branch occurs ; |268| 
$C$L3:    
	.dwpsn	file "src/csl_mmcsd.c",line 269,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L7,AC0 != #0 ; |269| 
                                        ; branchcc occurs ; |269| 
	.dwpsn	file "src/csl_mmcsd.c",line 271,column 3,is_stmt
        MOV #0, AC0 ; |271| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd.c",line 272,column 2,is_stmt
        B $C$L10  ; |272| 
                                        ; branch occurs ; |272| 
$C$L4:    
	.dwpsn	file "src/csl_mmcsd.c",line 278,column 5,is_stmt
        MOV #0, *AR3 ; |278| 
	.dwpsn	file "src/csl_mmcsd.c",line 279,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #14848, *AR3 ; |279| 
	.dwpsn	file "src/csl_mmcsd.c",line 280,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd.c",line 281,column 10,is_stmt
        B $C$L8   ; |281| 
                                        ; branch occurs ; |281| 
$C$L5:    
	.dwpsn	file "src/csl_mmcsd.c",line 284,column 5,is_stmt
        MOV #0, *AR3 ; |284| 
	.dwpsn	file "src/csl_mmcsd.c",line 285,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #15104, *AR3 ; |285| 
	.dwpsn	file "src/csl_mmcsd.c",line 286,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd.c",line 287,column 10,is_stmt
        B $C$L8   ; |287| 
                                        ; branch occurs ; |287| 
$C$L6:    
	.dwpsn	file "src/csl_mmcsd.c",line 290,column 5,is_stmt
        MOV #-6, *AR3 ; |290| 
	.dwpsn	file "src/csl_mmcsd.c",line 291,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |291| 
	.dwpsn	file "src/csl_mmcsd.c",line 292,column 5,is_stmt
        MOV #0, AC0 ; |292| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_mmcsd.c",line 293,column 10,is_stmt
        B $C$L8   ; |293| 
                                        ; branch occurs ; |293| 
$C$L7:    
	.dwpsn	file "src/csl_mmcsd.c",line 275,column 6,is_stmt
        MOV *SP(#2), AR1 ; |275| 
        BCC $C$L4,AR1 == #0 ; |275| 
                                        ; branchcc occurs ; |275| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |275| 
        BCC $C$L5,TC1 ; |275| 
                                        ; branchcc occurs ; |275| 
        B $C$L6   ; |275| 
                                        ; branch occurs ; |275| 
$C$L8:    
	.dwpsn	file "src/csl_mmcsd.c",line 296,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#3), AR1 ; |296| 
        MOV AR1, *AR3(#8) ; |296| 
	.dwpsn	file "src/csl_mmcsd.c",line 298,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#61) ; |298| 
	.dwpsn	file "src/csl_mmcsd.c",line 299,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#62) ; |299| 
	.dwpsn	file "src/csl_mmcsd.c",line 300,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#44) ; |300| 
	.dwpsn	file "src/csl_mmcsd.c",line 301,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#63) ; |301| 
	.dwpsn	file "src/csl_mmcsd.c",line 302,column 3,is_stmt
        MOV #0, AC0 ; |302| 
        MOV AC0, dbl(*(#(_mmcsdCardExtCSD+12))) ; |302| 
	.dwpsn	file "src/csl_mmcsd.c",line 305,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3, AR3 ; |305| 
        MOV port(*AR3), AR1 ; |305| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#62) << #10, AC0 ; |305| 
        MOV *AR3, AR3 ; |305| 
        BCLR @#10, AR1 ; |305| 
        AND #0x0400, AC0, AR2 ; |305| 
        OR AR1, AR2 ; |305| 
        MOV AR2, port(*AR3) ; |305| 
	.dwpsn	file "src/csl_mmcsd.c",line 309,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3, AR3 ; |309| 
        MOV port(*AR3), AR1 ; |309| 
        MOV dbl(*SP(#6)), XAR3
        MOV *AR3(#61) << #9, AC0 ; |309| 
        MOV *AR3, AR3 ; |309| 
        BCLR @#9, AR1 ; |309| 
        AND #0x0200, AC0, AR2 ; |309| 
        OR AR1, AR2 ; |309| 
        MOV AR2, port(*AR3) ; |309| 
	.dwpsn	file "src/csl_mmcsd.c",line 312,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3

        MOV *AR3, AR1 ; |312| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |312| 
        BCC $C$L10,TC1 ; |312| 
                                        ; branchcc occurs ; |312| 
        MOV dbl(*SP(#6)), XAR3
        MOV #2, AR2
        MOV *AR3(#8), AR1 ; |312| 
        CMP AR2 != AR1, TC1 ; |312| 
        BCC $C$L10,TC1 ; |312| 
                                        ; branchcc occurs ; |312| 
	.dwpsn	file "src/csl_mmcsd.c",line 314,column 4,is_stmt
        MOV #0, AC0 ; |314| 
        MOV AC0, dbl(*AR3(#10))
	.dwpsn	file "src/csl_mmcsd.c",line 315,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, dbl(*AR3(#12))
	.dwpsn	file "src/csl_mmcsd.c",line 319,column 7,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#14) ; |319| 
	.dwpsn	file "src/csl_mmcsd.c",line 321,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#15) ; |321| 
	.dwpsn	file "src/csl_mmcsd.c",line 322,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #3, *AR3(#16) ; |322| 
	.dwpsn	file "src/csl_mmcsd.c",line 323,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3(#20) ; |323| 
	.dwpsn	file "src/csl_mmcsd.c",line 324,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#19) ; |324| 
	.dwpsn	file "src/csl_mmcsd.c",line 325,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#21) ; |325| 
	.dwpsn	file "src/csl_mmcsd.c",line 326,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3(#17) ; |326| 
	.dwpsn	file "src/csl_mmcsd.c",line 327,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, dbl(*AR3(#24)) ; |327| 
	.dwpsn	file "src/csl_mmcsd.c",line 328,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#22) ; |328| 
	.dwpsn	file "src/csl_mmcsd.c",line 329,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3), AC0 ; |329| 
        MOV AC0, XAR3
        AADD #44, AR3 ; |329| 
        MOV XAR3, AC0
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, dbl(*AR3(#26)) ; |329| 
	.dwpsn	file "src/csl_mmcsd.c",line 333,column 7,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#28) ; |333| 
	.dwpsn	file "src/csl_mmcsd.c",line 335,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#29) ; |335| 
	.dwpsn	file "src/csl_mmcsd.c",line 336,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #3, *AR3(#30) ; |336| 
	.dwpsn	file "src/csl_mmcsd.c",line 337,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#34) ; |337| 
	.dwpsn	file "src/csl_mmcsd.c",line 338,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#33) ; |338| 
	.dwpsn	file "src/csl_mmcsd.c",line 339,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#35) ; |339| 
	.dwpsn	file "src/csl_mmcsd.c",line 340,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3(#31) ; |340| 
	.dwpsn	file "src/csl_mmcsd.c",line 341,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, AC0 ; |341| 
        MOV AC0, dbl(*AR3(#40)) ; |341| 
	.dwpsn	file "src/csl_mmcsd.c",line 342,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#36) ; |342| 
	.dwpsn	file "src/csl_mmcsd.c",line 343,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*AR3), AC0 ; |343| 
        MOV AC0, XAR3
        AADD #40, AR3 ; |343| 
        MOV XAR3, AC0
        MOV dbl(*SP(#6)), XAR3
        MOV AC0, dbl(*AR3(#38)) ; |343| 
	.dwpsn	file "src/csl_mmcsd.c",line 346,column 4,is_stmt

        MOV *SP(#2), AR1 ; |346| 
||      MOV #0, AR2

        CMP AR2 != AR1, TC1 ; |346| 
        BCC $C$L9,TC1 ; |346| 
                                        ; branchcc occurs ; |346| 
	.dwpsn	file "src/csl_mmcsd.c",line 348,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #5, *AR3(#18) ; |348| 
	.dwpsn	file "src/csl_mmcsd.c",line 349,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #6, *AR3(#32) ; |349| 
	.dwpsn	file "src/csl_mmcsd.c",line 350,column 4,is_stmt
        B $C$L10  ; |350| 
                                        ; branch occurs ; |350| 
$C$L9:    
	.dwpsn	file "src/csl_mmcsd.c",line 353,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #7, *AR3(#18) ; |353| 
	.dwpsn	file "src/csl_mmcsd.c",line 354,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #8, *AR3(#32) ; |354| 
$C$L10:    
	.dwpsn	file "src/csl_mmcsd.c",line 359,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "src/csl_mmcsd.c",line 360,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$22, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_MMC_close

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_close")
	.dwattr $C$DW$33, DW_AT_low_pc(_MMC_close)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_MMC_close")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x192)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 403,column 1,is_stmt,address _MMC_close

	.dwfde $C$DW$CIE, _MMC_close
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 404,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |404| 

        CMPU AC1 != AC0, TC1 ; |404| 
        BCC $C$L11,TC1 ; |404| 
                                        ; branchcc occurs ; |404| 
	.dwpsn	file "src/csl_mmcsd.c",line 406,column 9,is_stmt
        MOV #-5, T0
        B $C$L13  ; |406| 
                                        ; branch occurs ; |406| 
$C$L11:    
	.dwpsn	file "src/csl_mmcsd.c",line 410,column 3,is_stmt
        CMP *AR3(#8) == #2, TC1 ; |410| 
        BCC $C$L12,!TC1 ; |410| 
                                        ; branchcc occurs ; |410| 
	.dwpsn	file "src/csl_mmcsd.c",line 413,column 4,is_stmt
        MOV dbl(*AR3(#10)), XAR0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_DMA_close")
	.dwattr $C$DW$36, DW_AT_TI_call
        CALL #_DMA_close ; |413| 
                                        ; call occurs [#_DMA_close] ; |413| 
	.dwpsn	file "src/csl_mmcsd.c",line 414,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), XAR0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_DMA_close")
	.dwattr $C$DW$37, DW_AT_TI_call
        CALL #_DMA_close ; |414| 
                                        ; call occurs [#_DMA_close] ; |414| 
$C$L12:    
	.dwpsn	file "src/csl_mmcsd.c",line 417,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |417| 
	.dwpsn	file "src/csl_mmcsd.c",line 419,column 9,is_stmt
        MOV #0, T0
$C$L13:    
	.dwpsn	file "src/csl_mmcsd.c",line 421,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$33, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x1a5)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_MMC_setCardType

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setCardType")
	.dwattr $C$DW$39, DW_AT_low_pc(_MMC_setCardType)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_MMC_setCardType")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x1cd)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 463,column 1,is_stmt,address _MMC_setCardType

	.dwfde $C$DW$CIE, _MMC_setCardType
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCardObj")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_pCardObj")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg17]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cardType")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_cardType")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_setCardType                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setCardType:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("pCardObj")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_pCardObj")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("cardType")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_cardType")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |463| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 464,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |464| 

        CMPU AC1 != AC0, TC1 ; |464| 
        BCC $C$L14,TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
	.dwpsn	file "src/csl_mmcsd.c",line 466,column 9,is_stmt
        MOV #-6, T0
        B $C$L17  ; |466| 
                                        ; branch occurs ; |466| 
$C$L14:    
	.dwpsn	file "src/csl_mmcsd.c",line 470,column 3,is_stmt
        CMP *SP(#2) == #1, TC1 ; |470| 
        BCC $C$L15,TC1 ; |470| 
                                        ; branchcc occurs ; |470| 
        CMP *SP(#2) == #2, TC1 ; |470| 
        BCC $C$L16,!TC1 ; |470| 
                                        ; branchcc occurs ; |470| 
$C$L15:    
	.dwpsn	file "src/csl_mmcsd.c",line 472,column 10,is_stmt
        MOV *SP(#2), AR1 ; |472| 
        MOV AR1, *AR3(#18) ; |472| 
	.dwpsn	file "src/csl_mmcsd.c",line 473,column 10,is_stmt
        MOV #0, T0
        B $C$L17  ; |473| 
                                        ; branch occurs ; |473| 
$C$L16:    
	.dwpsn	file "src/csl_mmcsd.c",line 477,column 4,is_stmt
        MOV #-6, T0
$C$L17:    
	.dwpsn	file "src/csl_mmcsd.c",line 480,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$39, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x1e0)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.global	_MMC_setCardPtr

$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setCardPtr")
	.dwattr $C$DW$45, DW_AT_low_pc(_MMC_setCardPtr)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_MMC_setCardPtr")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$45, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x20e)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 528,column 1,is_stmt,address _MMC_setCardPtr

	.dwfde $C$DW$CIE, _MMC_setCardPtr
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg17]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_setCardPtr                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setCardPtr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 529,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L18,AC0 != #0 ; |529| 
                                        ; branchcc occurs ; |529| 
	.dwpsn	file "src/csl_mmcsd.c",line 531,column 9,is_stmt
        MOV #-5, T0
        B $C$L20  ; |531| 
                                        ; branch occurs ; |531| 
$C$L18:    
	.dwpsn	file "src/csl_mmcsd.c",line 535,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |535| 

        CMPU AC1 != AC0, TC1 ; |535| 
        BCC $C$L19,TC1 ; |535| 
                                        ; branchcc occurs ; |535| 
	.dwpsn	file "src/csl_mmcsd.c",line 537,column 13,is_stmt
        MOV #-6, T0
        B $C$L20  ; |537| 
                                        ; branch occurs ; |537| 
$C$L19:    
	.dwpsn	file "src/csl_mmcsd.c",line 541,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_mmcsd.c",line 542,column 13,is_stmt
        MOV #0, T0
$C$L20:    
	.dwpsn	file "src/csl_mmcsd.c",line 545,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$45, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x221)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.global	_MMC_setCallBack

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setCallBack")
	.dwattr $C$DW$51, DW_AT_low_pc(_MMC_setCallBack)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_MMC_setCallBack")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x257)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 601,column 1,is_stmt,address _MMC_setCallBack

	.dwfde $C$DW$CIE, _MMC_setCallBack
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg17]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pFunction")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_pFunction")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_setCallBack                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setCallBack:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("pFunction")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_pFunction")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 602,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |602| 

        CMPU AC1 == AC0, TC1 ; |602| 
        BCC $C$L21,TC1 ; |602| 
                                        ; branchcc occurs ; |602| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |602| 
        BCC $C$L21,TC1 ; |602| 
                                        ; branchcc occurs ; |602| 
	.dwpsn	file "src/csl_mmcsd.c",line 604,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#6)))
	.dwpsn	file "src/csl_mmcsd.c",line 605,column 3,is_stmt
        MOV #0, T0
        B $C$L23  ; |605| 
                                        ; branch occurs ; |605| 
$C$L21:    
	.dwpsn	file "src/csl_mmcsd.c",line 609,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |609| 
        BCC $C$L22,TC1 ; |609| 
                                        ; branchcc occurs ; |609| 
	.dwpsn	file "src/csl_mmcsd.c",line 611,column 13,is_stmt
        MOV #-5, T0
        B $C$L23  ; |611| 
                                        ; branch occurs ; |611| 
$C$L22:    
	.dwpsn	file "src/csl_mmcsd.c",line 615,column 13,is_stmt
        MOV #-6, T0
$C$L23:    
	.dwpsn	file "src/csl_mmcsd.c",line 618,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$51, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x26a)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_MMC_getNumberOfCards

$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getNumberOfCards")
	.dwattr $C$DW$57, DW_AT_low_pc(_MMC_getNumberOfCards)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_MMC_getNumberOfCards")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$57, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x297)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 665,column 1,is_stmt,address _MMC_getNumberOfCards

	.dwfde $C$DW$CIE, _MMC_getNumberOfCards
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg17]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pActiveNoCard")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_pActiveNoCard")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getNumberOfCards                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getNumberOfCards:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("pActiveNoCard")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_pActiveNoCard")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 666,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |666| 

        CMPU AC1 != AC0, TC1 ; |666| 
        BCC $C$L24,TC1 ; |666| 
                                        ; branchcc occurs ; |666| 
	.dwpsn	file "src/csl_mmcsd.c",line 668,column 3,is_stmt
        MOV #-5, T0
        B $C$L26  ; |668| 
                                        ; branch occurs ; |668| 
$C$L24:    
	.dwpsn	file "src/csl_mmcsd.c",line 672,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |672| 
        BCC $C$L25,TC1 ; |672| 
                                        ; branchcc occurs ; |672| 
	.dwpsn	file "src/csl_mmcsd.c",line 674,column 13,is_stmt
        MOV #-6, T0
        B $C$L26  ; |674| 
                                        ; branch occurs ; |674| 
$C$L25:    
	.dwpsn	file "src/csl_mmcsd.c",line 678,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |678| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |678| 
	.dwpsn	file "src/csl_mmcsd.c",line 679,column 13,is_stmt
        MOV #0, T0
$C$L26:    
	.dwpsn	file "src/csl_mmcsd.c",line 682,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$57, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x2aa)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text"
	.global	_MMC_clearResponse

$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_clearResponse")
	.dwattr $C$DW$63, DW_AT_low_pc(_MMC_clearResponse)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_MMC_clearResponse")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$63, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x2d4)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 725,column 1,is_stmt,address _MMC_clearResponse

	.dwfde $C$DW$CIE, _MMC_clearResponse
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_clearResponse                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_clearResponse:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 726,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |726| 

        CMPU AC1 != AC0, TC1 ; |726| 
        BCC $C$L27,TC1 ; |726| 
                                        ; branchcc occurs ; |726| 
	.dwpsn	file "src/csl_mmcsd.c",line 728,column 9,is_stmt
        MOV #-5, T0
        B $C$L28  ; |728| 
                                        ; branch occurs ; |728| 
$C$L27:    
	.dwpsn	file "src/csl_mmcsd.c",line 732,column 9,is_stmt
        MOV #56, T0 ; |732| 
        MOV *AR3, AR3 ; |732| 
        MOV port(*AR3(T0)), AR1 ; |732| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |732| 
        MOV #0, port(*AR3(T0)) ; |732| 
	.dwpsn	file "src/csl_mmcsd.c",line 734,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |734| 
        MOV *AR3, AR3 ; |734| 
        MOV port(*AR3(T0)), AR1 ; |734| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |734| 
        MOV #0, port(*AR3(T0)) ; |734| 
	.dwpsn	file "src/csl_mmcsd.c",line 736,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |736| 
        MOV *AR3, AR3 ; |736| 
        MOV port(*AR3(T0)), AR1 ; |736| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |736| 
        MOV #0, port(*AR3(T0)) ; |736| 
	.dwpsn	file "src/csl_mmcsd.c",line 738,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |738| 
        MOV *AR3, AR3 ; |738| 
        MOV port(*AR3(T0)), AR1 ; |738| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |738| 
        MOV #0, port(*AR3(T0)) ; |738| 
	.dwpsn	file "src/csl_mmcsd.c",line 740,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |740| 
        MOV *AR3, AR3 ; |740| 
        MOV port(*AR3(T0)), AR1 ; |740| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |740| 
        MOV #0, port(*AR3(T0)) ; |740| 
	.dwpsn	file "src/csl_mmcsd.c",line 742,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |742| 
        MOV *AR3, AR3 ; |742| 
        MOV port(*AR3(T0)), AR1 ; |742| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |742| 
        MOV #0, port(*AR3(T0)) ; |742| 
	.dwpsn	file "src/csl_mmcsd.c",line 744,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |744| 
        MOV *AR3, AR3 ; |744| 
        MOV port(*AR3(T0)), AR1 ; |744| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |744| 
        MOV #0, port(*AR3(T0)) ; |744| 
	.dwpsn	file "src/csl_mmcsd.c",line 746,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |746| 
        MOV *AR3, AR3 ; |746| 
        MOV port(*AR3(T0)), AR1 ; |746| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |746| 
        MOV #0, port(*AR3(T0)) ; |746| 
	.dwpsn	file "src/csl_mmcsd.c",line 750,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |750| 
        MOV *AR3, AR3 ; |750| 
        MOV port(*AR3(T0)), AR1 ; |750| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |750| 
        AND #0xffc0, AR1, AC0 ; |750| 
        MOV AC0, port(*AR3(T0)) ; |750| 
	.dwpsn	file "src/csl_mmcsd.c",line 752,column 9,is_stmt
        MOV #0, T0
$C$L28:    
	.dwpsn	file "src/csl_mmcsd.c",line 754,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$63, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x2f2)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text"
	.global	_MMC_ierEnable

$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_ierEnable")
	.dwattr $C$DW$67, DW_AT_low_pc(_MMC_ierEnable)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_MMC_ierEnable")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x31e)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 800,column 1,is_stmt,address _MMC_ierEnable

	.dwfde $C$DW$CIE, _MMC_ierEnable
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_ierEnable                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_ierEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 801,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |801| 

        CMPU AC1 != AC0, TC1 ; |801| 
        BCC $C$L29,TC1 ; |801| 
                                        ; branchcc occurs ; |801| 
	.dwpsn	file "src/csl_mmcsd.c",line 803,column 9,is_stmt
        MOV #-5, T0
        B $C$L32  ; |803| 
                                        ; branch occurs ; |803| 
$C$L29:    
	.dwpsn	file "src/csl_mmcsd.c",line 807,column 9,is_stmt
        CMP *AR3 == #14848, TC1 ; |807| 
        BCC $C$L30,!TC1 ; |807| 
                                        ; branchcc occurs ; |807| 
	.dwpsn	file "src/csl_mmcsd.c",line 809,column 4,is_stmt
        MOV *(#0), AR1 ; |809| 
        BCLR @#5, AR1 ; |809| 
        BSET @#5, AR1 ; |809| 
        MOV AR1, *(#0) ; |809| 
	.dwpsn	file "src/csl_mmcsd.c",line 810,column 3,is_stmt
        B $C$L31  ; |810| 
                                        ; branch occurs ; |810| 
$C$L30:    
	.dwpsn	file "src/csl_mmcsd.c",line 812,column 4,is_stmt
        MOV *(#0), AR1 ; |812| 
        BCLR @#9, AR1 ; |812| 
        BSET @#9, AR1 ; |812| 
        MOV AR1, *(#0) ; |812| 
$C$L31:    
	.dwpsn	file "src/csl_mmcsd.c",line 814,column 9,is_stmt
        MOV #0, T0
$C$L32:    
	.dwpsn	file "src/csl_mmcsd.c",line 816,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$67, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x330)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.global	_MMC_ierDisable

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_ierDisable")
	.dwattr $C$DW$71, DW_AT_low_pc(_MMC_ierDisable)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_MMC_ierDisable")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x35c)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 862,column 1,is_stmt,address _MMC_ierDisable

	.dwfde $C$DW$CIE, _MMC_ierDisable
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_ierDisable                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_ierDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 863,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |863| 

        CMPU AC1 != AC0, TC1 ; |863| 
        BCC $C$L33,TC1 ; |863| 
                                        ; branchcc occurs ; |863| 
	.dwpsn	file "src/csl_mmcsd.c",line 865,column 9,is_stmt
        MOV #-5, T0
        B $C$L36  ; |865| 
                                        ; branch occurs ; |865| 
$C$L33:    
	.dwpsn	file "src/csl_mmcsd.c",line 869,column 9,is_stmt
        CMP *AR3 == #14848, TC1 ; |869| 
        BCC $C$L34,!TC1 ; |869| 
                                        ; branchcc occurs ; |869| 
	.dwpsn	file "src/csl_mmcsd.c",line 871,column 4,is_stmt
        AND #0xffdf, *(#0) ; |871| 
	.dwpsn	file "src/csl_mmcsd.c",line 872,column 3,is_stmt
        B $C$L35  ; |872| 
                                        ; branch occurs ; |872| 
$C$L34:    
	.dwpsn	file "src/csl_mmcsd.c",line 874,column 4,is_stmt
        AND #0xfdff, *(#0) ; |874| 
$C$L35:    
	.dwpsn	file "src/csl_mmcsd.c",line 876,column 9,is_stmt
        MOV #0, T0
$C$L36:    
	.dwpsn	file "src/csl_mmcsd.c",line 878,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$71, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x36e)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_MMC_intEnable

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_intEnable")
	.dwattr $C$DW$75, DW_AT_low_pc(_MMC_intEnable)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_MMC_intEnable")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$75, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x3a5)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 935,column 1,is_stmt,address _MMC_intEnable

	.dwfde $C$DW$CIE, _MMC_intEnable
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg17]
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maskValue")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_intEnable                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_intEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("maskValue")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |935| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 936,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |936| 

        CMPU AC1 != AC0, TC1 ; |936| 
        BCC $C$L37,TC1 ; |936| 
                                        ; branchcc occurs ; |936| 
	.dwpsn	file "src/csl_mmcsd.c",line 938,column 9,is_stmt
        MOV #-5, T0
        B $C$L38  ; |938| 
                                        ; branch occurs ; |938| 
$C$L37:    
	.dwpsn	file "src/csl_mmcsd.c",line 942,column 9,is_stmt
        MOV *AR3, AR3 ; |942| 
        MOV #16, T0 ; |942| 
        MOV *SP(#2), AR1 ; |942| 
        MOV AR1, port(*AR3(T0)) ; |942| 
	.dwpsn	file "src/csl_mmcsd.c",line 943,column 9,is_stmt
        MOV #0, T0
$C$L38:    
	.dwpsn	file "src/csl_mmcsd.c",line 945,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$75, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x3b1)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text"
	.global	_MMC_eventEnable

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_eventEnable")
	.dwattr $C$DW$81, DW_AT_low_pc(_MMC_eventEnable)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_MMC_eventEnable")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$81, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x3e3)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 997,column 1,is_stmt,address _MMC_eventEnable

	.dwfde $C$DW$CIE, _MMC_eventEnable
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg17]
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mmcsdEvent")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_mmcsdEvent")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_eventEnable                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_eventEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("mmcsdEvent")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_mmcsdEvent")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |997| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1000,column 2,is_stmt
        MOV #0, *SP(#3) ; |1000| 
	.dwpsn	file "src/csl_mmcsd.c",line 1002,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1002| 

        CMPU AC1 != AC0, TC1 ; |1002| 
        BCC $C$L52,TC1 ; |1002| 
                                        ; branchcc occurs ; |1002| 
	.dwpsn	file "src/csl_mmcsd.c",line 1004,column 9,is_stmt
        MOV #-5, *SP(#3) ; |1004| 
	.dwpsn	file "src/csl_mmcsd.c",line 1005,column 5,is_stmt
        B $C$L56  ; |1005| 
                                        ; branch occurs ; |1005| 
$C$L39:    
	.dwpsn	file "src/csl_mmcsd.c",line 1011,column 5,is_stmt
        MOV #16, T0 ; |1011| 
        MOV *AR3, AR3 ; |1011| 
        MOV port(*AR3(T0)), AR1 ; |1011| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1011| 
        BCLR @#12, AR1 ; |1011| 
        BSET @#12, AR1 ; |1011| 
        MOV AR1, port(*AR3(T0)) ; |1011| 
	.dwpsn	file "src/csl_mmcsd.c",line 1012,column 10,is_stmt
        B $C$L56  ; |1012| 
                                        ; branch occurs ; |1012| 
$C$L40:    
	.dwpsn	file "src/csl_mmcsd.c",line 1015,column 5,is_stmt
        MOV #16, T0 ; |1015| 
        MOV *AR3, AR3 ; |1015| 
        MOV port(*AR3(T0)), AR1 ; |1015| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1015| 
        BCLR @#11, AR1 ; |1015| 
        BSET @#11, AR1 ; |1015| 
        MOV AR1, port(*AR3(T0)) ; |1015| 
	.dwpsn	file "src/csl_mmcsd.c",line 1016,column 10,is_stmt
        B $C$L56  ; |1016| 
                                        ; branch occurs ; |1016| 
$C$L41:    
	.dwpsn	file "src/csl_mmcsd.c",line 1019,column 5,is_stmt
        MOV #16, T0 ; |1019| 
        MOV *AR3, AR3 ; |1019| 
        MOV port(*AR3(T0)), AR1 ; |1019| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1019| 
        BCLR @#10, AR1 ; |1019| 
        BSET @#10, AR1 ; |1019| 
        MOV AR1, port(*AR3(T0)) ; |1019| 
	.dwpsn	file "src/csl_mmcsd.c",line 1020,column 10,is_stmt
        B $C$L56  ; |1020| 
                                        ; branch occurs ; |1020| 
$C$L42:    
	.dwpsn	file "src/csl_mmcsd.c",line 1023,column 5,is_stmt
        MOV #16, T0 ; |1023| 
        MOV *AR3, AR3 ; |1023| 
        MOV port(*AR3(T0)), AR1 ; |1023| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1023| 
        BCLR @#9, AR1 ; |1023| 
        BSET @#9, AR1 ; |1023| 
        MOV AR1, port(*AR3(T0)) ; |1023| 
	.dwpsn	file "src/csl_mmcsd.c",line 1024,column 10,is_stmt
        B $C$L56  ; |1024| 
                                        ; branch occurs ; |1024| 
$C$L43:    
	.dwpsn	file "src/csl_mmcsd.c",line 1027,column 5,is_stmt
        MOV #16, T0 ; |1027| 
        MOV *AR3, AR3 ; |1027| 
        MOV port(*AR3(T0)), AR1 ; |1027| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1027| 
        BCLR @#7, AR1 ; |1027| 
        BSET @#7, AR1 ; |1027| 
        MOV AR1, port(*AR3(T0)) ; |1027| 
	.dwpsn	file "src/csl_mmcsd.c",line 1028,column 10,is_stmt
        B $C$L56  ; |1028| 
                                        ; branch occurs ; |1028| 
$C$L44:    
	.dwpsn	file "src/csl_mmcsd.c",line 1031,column 5,is_stmt
        MOV #16, T0 ; |1031| 
        MOV *AR3, AR3 ; |1031| 
        MOV port(*AR3(T0)), AR1 ; |1031| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1031| 
        BCLR @#6, AR1 ; |1031| 
        BSET @#6, AR1 ; |1031| 
        MOV AR1, port(*AR3(T0)) ; |1031| 
	.dwpsn	file "src/csl_mmcsd.c",line 1032,column 10,is_stmt
        B $C$L56  ; |1032| 
                                        ; branch occurs ; |1032| 
$C$L45:    
	.dwpsn	file "src/csl_mmcsd.c",line 1035,column 5,is_stmt
        MOV #16, T0 ; |1035| 
        MOV *AR3, AR3 ; |1035| 
        MOV port(*AR3(T0)), AR1 ; |1035| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1035| 
        BCLR @#5, AR1 ; |1035| 
        BSET @#5, AR1 ; |1035| 
        MOV AR1, port(*AR3(T0)) ; |1035| 
	.dwpsn	file "src/csl_mmcsd.c",line 1036,column 10,is_stmt
        B $C$L56  ; |1036| 
                                        ; branch occurs ; |1036| 
$C$L46:    
	.dwpsn	file "src/csl_mmcsd.c",line 1039,column 5,is_stmt
        MOV #16, T0 ; |1039| 
        MOV *AR3, AR3 ; |1039| 
        MOV port(*AR3(T0)), AR1 ; |1039| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1039| 
        BCLR @#4, AR1 ; |1039| 
        BSET @#4, AR1 ; |1039| 
        MOV AR1, port(*AR3(T0)) ; |1039| 
	.dwpsn	file "src/csl_mmcsd.c",line 1040,column 10,is_stmt
        B $C$L56  ; |1040| 
                                        ; branch occurs ; |1040| 
$C$L47:    
	.dwpsn	file "src/csl_mmcsd.c",line 1043,column 5,is_stmt
        MOV #16, T0 ; |1043| 
        MOV *AR3, AR3 ; |1043| 
        MOV port(*AR3(T0)), AR1 ; |1043| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1043| 
        BCLR @#3, AR1 ; |1043| 
        BSET @#3, AR1 ; |1043| 
        MOV AR1, port(*AR3(T0)) ; |1043| 
	.dwpsn	file "src/csl_mmcsd.c",line 1044,column 10,is_stmt
        B $C$L56  ; |1044| 
                                        ; branch occurs ; |1044| 
$C$L48:    
	.dwpsn	file "src/csl_mmcsd.c",line 1047,column 5,is_stmt
        MOV #16, T0 ; |1047| 
        MOV *AR3, AR3 ; |1047| 
        MOV port(*AR3(T0)), AR1 ; |1047| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1047| 
        BCLR @#2, AR1 ; |1047| 
        BSET @#2, AR1 ; |1047| 
        MOV AR1, port(*AR3(T0)) ; |1047| 
	.dwpsn	file "src/csl_mmcsd.c",line 1048,column 10,is_stmt
        B $C$L56  ; |1048| 
                                        ; branch occurs ; |1048| 
$C$L49:    
	.dwpsn	file "src/csl_mmcsd.c",line 1051,column 5,is_stmt
        MOV #16, T0 ; |1051| 
        MOV *AR3, AR3 ; |1051| 
        MOV port(*AR3(T0)), AR1 ; |1051| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1051| 
        BCLR @#1, AR1 ; |1051| 
        BSET @#1, AR1 ; |1051| 
        MOV AR1, port(*AR3(T0)) ; |1051| 
	.dwpsn	file "src/csl_mmcsd.c",line 1052,column 10,is_stmt
        B $C$L56  ; |1052| 
                                        ; branch occurs ; |1052| 
$C$L50:    
	.dwpsn	file "src/csl_mmcsd.c",line 1055,column 5,is_stmt
        MOV #16, T0 ; |1055| 
        MOV *AR3, AR3 ; |1055| 
        MOV port(*AR3(T0)), AR1 ; |1055| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1055| 
        BCLR @#0, AR1 ; |1055| 
        BSET @#0, AR1 ; |1055| 
        MOV AR1, port(*AR3(T0)) ; |1055| 
	.dwpsn	file "src/csl_mmcsd.c",line 1056,column 10,is_stmt
        B $C$L56  ; |1056| 
                                        ; branch occurs ; |1056| 
$C$L51:    
	.dwpsn	file "src/csl_mmcsd.c",line 1059,column 5,is_stmt
        MOV #-6, *SP(#3) ; |1059| 
	.dwpsn	file "src/csl_mmcsd.c",line 1060,column 10,is_stmt
        B $C$L56  ; |1060| 
                                        ; branch occurs ; |1060| 
$C$L52:    
	.dwpsn	file "src/csl_mmcsd.c",line 1008,column 3,is_stmt
        MOV #64, AR2 ; |1008| 
        MOV *SP(#2), AR1 ; |1008| 
        CMP AR1 > AR2, TC1 ; |1008| 
        BCC $C$L54,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L44,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #8, AR2
        CMP AR1 > AR2, TC1 ; |1008| 
        BCC $C$L53,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L47,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L50,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L49,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L48,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        B $C$L51  ; |1008| 
                                        ; branch occurs ; |1008| 
$C$L53:    
        MOV #16, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L46,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #32, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L45,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        B $C$L51  ; |1008| 
                                        ; branch occurs ; |1008| 
$C$L54:    
        MOV #1024, AR2 ; |1008| 
        CMP AR1 > AR2, TC1 ; |1008| 
        BCC $C$L55,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L41,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #128, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L43,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #512, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L42,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        B $C$L51  ; |1008| 
                                        ; branch occurs ; |1008| 
$C$L55:    
        MOV #2048, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L40,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        MOV #4096, AR2 ; |1008| 
        CMP AR1 == AR2, TC1 ; |1008| 
        BCC $C$L39,TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        B $C$L51  ; |1008| 
                                        ; branch occurs ; |1008| 
$C$L56:    
	.dwpsn	file "src/csl_mmcsd.c",line 1064,column 2,is_stmt
        MOV *SP(#3), T0 ; |1064| 
	.dwpsn	file "src/csl_mmcsd.c",line 1065,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$81, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x429)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.global	_MMC_eventDisable

$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_eventDisable")
	.dwattr $C$DW$88, DW_AT_low_pc(_MMC_eventDisable)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_MMC_eventDisable")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$88, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x459)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1115,column 1,is_stmt,address _MMC_eventDisable

	.dwfde $C$DW$CIE, _MMC_eventDisable
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg17]
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mmcsdEvent")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_mmcsdEvent")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_eventDisable                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_eventDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("mmcsdEvent")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_mmcsdEvent")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |1115| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1118,column 2,is_stmt
        MOV #0, *SP(#3) ; |1118| 
	.dwpsn	file "src/csl_mmcsd.c",line 1120,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1120| 

        CMPU AC1 != AC0, TC1 ; |1120| 
        BCC $C$L70,TC1 ; |1120| 
                                        ; branchcc occurs ; |1120| 
	.dwpsn	file "src/csl_mmcsd.c",line 1122,column 3,is_stmt
        MOV #-5, *SP(#3) ; |1122| 
	.dwpsn	file "src/csl_mmcsd.c",line 1123,column 5,is_stmt
        B $C$L74  ; |1123| 
                                        ; branch occurs ; |1123| 
$C$L57:    
	.dwpsn	file "src/csl_mmcsd.c",line 1129,column 5,is_stmt
        MOV #16, T0 ; |1129| 
        MOV *AR3, AR3 ; |1129| 
        MOV port(*AR3(T0)), AR1 ; |1129| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1129| 
        BCLR @#12, AR1 ; |1129| 
        MOV AR1, port(*AR3(T0)) ; |1129| 
	.dwpsn	file "src/csl_mmcsd.c",line 1130,column 10,is_stmt
        B $C$L74  ; |1130| 
                                        ; branch occurs ; |1130| 
$C$L58:    
	.dwpsn	file "src/csl_mmcsd.c",line 1133,column 5,is_stmt
        MOV #16, T0 ; |1133| 
        MOV *AR3, AR3 ; |1133| 
        MOV port(*AR3(T0)), AR1 ; |1133| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1133| 
        BCLR @#11, AR1 ; |1133| 
        MOV AR1, port(*AR3(T0)) ; |1133| 
	.dwpsn	file "src/csl_mmcsd.c",line 1134,column 10,is_stmt
        B $C$L74  ; |1134| 
                                        ; branch occurs ; |1134| 
$C$L59:    
	.dwpsn	file "src/csl_mmcsd.c",line 1137,column 5,is_stmt
        MOV #16, T0 ; |1137| 
        MOV *AR3, AR3 ; |1137| 
        MOV port(*AR3(T0)), AR1 ; |1137| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1137| 
        BCLR @#10, AR1 ; |1137| 
        MOV AR1, port(*AR3(T0)) ; |1137| 
	.dwpsn	file "src/csl_mmcsd.c",line 1138,column 10,is_stmt
        B $C$L74  ; |1138| 
                                        ; branch occurs ; |1138| 
$C$L60:    
	.dwpsn	file "src/csl_mmcsd.c",line 1141,column 5,is_stmt
        MOV #16, T0 ; |1141| 
        MOV *AR3, AR3 ; |1141| 
        MOV port(*AR3(T0)), AR1 ; |1141| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1141| 
        BCLR @#9, AR1 ; |1141| 
        MOV AR1, port(*AR3(T0)) ; |1141| 
	.dwpsn	file "src/csl_mmcsd.c",line 1142,column 10,is_stmt
        B $C$L74  ; |1142| 
                                        ; branch occurs ; |1142| 
$C$L61:    
	.dwpsn	file "src/csl_mmcsd.c",line 1145,column 5,is_stmt
        MOV #16, T0 ; |1145| 
        MOV *AR3, AR3 ; |1145| 
        MOV port(*AR3(T0)), AR1 ; |1145| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1145| 
        BCLR @#7, AR1 ; |1145| 
        MOV AR1, port(*AR3(T0)) ; |1145| 
	.dwpsn	file "src/csl_mmcsd.c",line 1146,column 10,is_stmt
        B $C$L74  ; |1146| 
                                        ; branch occurs ; |1146| 
$C$L62:    
	.dwpsn	file "src/csl_mmcsd.c",line 1149,column 5,is_stmt
        MOV #16, T0 ; |1149| 
        MOV *AR3, AR3 ; |1149| 
        MOV port(*AR3(T0)), AR1 ; |1149| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1149| 
        BCLR @#6, AR1 ; |1149| 
        MOV AR1, port(*AR3(T0)) ; |1149| 
	.dwpsn	file "src/csl_mmcsd.c",line 1150,column 10,is_stmt
        B $C$L74  ; |1150| 
                                        ; branch occurs ; |1150| 
$C$L63:    
	.dwpsn	file "src/csl_mmcsd.c",line 1153,column 5,is_stmt
        MOV #16, T0 ; |1153| 
        MOV *AR3, AR3 ; |1153| 
        MOV port(*AR3(T0)), AR1 ; |1153| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1153| 
        BCLR @#5, AR1 ; |1153| 
        MOV AR1, port(*AR3(T0)) ; |1153| 
	.dwpsn	file "src/csl_mmcsd.c",line 1154,column 10,is_stmt
        B $C$L74  ; |1154| 
                                        ; branch occurs ; |1154| 
$C$L64:    
	.dwpsn	file "src/csl_mmcsd.c",line 1157,column 5,is_stmt
        MOV #16, T0 ; |1157| 
        MOV *AR3, AR3 ; |1157| 
        MOV port(*AR3(T0)), AR1 ; |1157| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1157| 
        BCLR @#4, AR1 ; |1157| 
        MOV AR1, port(*AR3(T0)) ; |1157| 
	.dwpsn	file "src/csl_mmcsd.c",line 1158,column 10,is_stmt
        B $C$L74  ; |1158| 
                                        ; branch occurs ; |1158| 
$C$L65:    
	.dwpsn	file "src/csl_mmcsd.c",line 1161,column 5,is_stmt
        MOV #16, T0 ; |1161| 
        MOV *AR3, AR3 ; |1161| 
        MOV port(*AR3(T0)), AR1 ; |1161| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1161| 
        BCLR @#3, AR1 ; |1161| 
        MOV AR1, port(*AR3(T0)) ; |1161| 
	.dwpsn	file "src/csl_mmcsd.c",line 1162,column 10,is_stmt
        B $C$L74  ; |1162| 
                                        ; branch occurs ; |1162| 
$C$L66:    
	.dwpsn	file "src/csl_mmcsd.c",line 1165,column 5,is_stmt
        MOV #16, T0 ; |1165| 
        MOV *AR3, AR3 ; |1165| 
        MOV port(*AR3(T0)), AR1 ; |1165| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1165| 
        BCLR @#2, AR1 ; |1165| 
        MOV AR1, port(*AR3(T0)) ; |1165| 
	.dwpsn	file "src/csl_mmcsd.c",line 1166,column 10,is_stmt
        B $C$L74  ; |1166| 
                                        ; branch occurs ; |1166| 
$C$L67:    
	.dwpsn	file "src/csl_mmcsd.c",line 1169,column 5,is_stmt
        MOV #16, T0 ; |1169| 
        MOV *AR3, AR3 ; |1169| 
        MOV port(*AR3(T0)), AR1 ; |1169| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1169| 
        BCLR @#1, AR1 ; |1169| 
        MOV AR1, port(*AR3(T0)) ; |1169| 
	.dwpsn	file "src/csl_mmcsd.c",line 1170,column 10,is_stmt
        B $C$L74  ; |1170| 
                                        ; branch occurs ; |1170| 
$C$L68:    
	.dwpsn	file "src/csl_mmcsd.c",line 1173,column 5,is_stmt
        MOV #16, T0 ; |1173| 
        MOV *AR3, AR3 ; |1173| 
        MOV port(*AR3(T0)), AR1 ; |1173| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1173| 
        BCLR @#0, AR1 ; |1173| 
        MOV AR1, port(*AR3(T0)) ; |1173| 
	.dwpsn	file "src/csl_mmcsd.c",line 1174,column 10,is_stmt
        B $C$L74  ; |1174| 
                                        ; branch occurs ; |1174| 
$C$L69:    
	.dwpsn	file "src/csl_mmcsd.c",line 1177,column 5,is_stmt
        MOV #-6, *SP(#3) ; |1177| 
	.dwpsn	file "src/csl_mmcsd.c",line 1178,column 10,is_stmt
        B $C$L74  ; |1178| 
                                        ; branch occurs ; |1178| 
$C$L70:    
	.dwpsn	file "src/csl_mmcsd.c",line 1126,column 3,is_stmt
        MOV #64, AR2 ; |1126| 
        MOV *SP(#2), AR1 ; |1126| 
        CMP AR1 > AR2, TC1 ; |1126| 
        BCC $C$L72,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L62,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #8, AR2
        CMP AR1 > AR2, TC1 ; |1126| 
        BCC $C$L71,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L65,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L68,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L67,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L66,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        B $C$L69  ; |1126| 
                                        ; branch occurs ; |1126| 
$C$L71:    
        MOV #16, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L64,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #32, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L63,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        B $C$L69  ; |1126| 
                                        ; branch occurs ; |1126| 
$C$L72:    
        MOV #1024, AR2 ; |1126| 
        CMP AR1 > AR2, TC1 ; |1126| 
        BCC $C$L73,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L59,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #128, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L61,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #512, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L60,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        B $C$L69  ; |1126| 
                                        ; branch occurs ; |1126| 
$C$L73:    
        MOV #2048, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L58,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        MOV #4096, AR2 ; |1126| 
        CMP AR1 == AR2, TC1 ; |1126| 
        BCC $C$L57,TC1 ; |1126| 
                                        ; branchcc occurs ; |1126| 
        B $C$L69  ; |1126| 
                                        ; branch occurs ; |1126| 
$C$L74:    
	.dwpsn	file "src/csl_mmcsd.c",line 1182,column 2,is_stmt
        MOV *SP(#3), T0 ; |1182| 
	.dwpsn	file "src/csl_mmcsd.c",line 1183,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$88, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x49f)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text"
	.global	_MMC_drrdy

$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_drrdy")
	.dwattr $C$DW$95, DW_AT_low_pc(_MMC_drrdy)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_MMC_drrdy")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$95, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x4cd)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1231,column 1,is_stmt,address _MMC_drrdy

	.dwfde $C$DW$CIE, _MMC_drrdy
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg17]
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pStatus")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_drrdy                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_drrdy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("pStatus")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1234,column 5,is_stmt
        MOV #0, *SP(#4) ; |1234| 
	.dwpsn	file "src/csl_mmcsd.c",line 1236,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1236| 

        CMPU AC1 != AC0, TC1 ; |1236| 
        BCC $C$L75,TC1 ; |1236| 
                                        ; branchcc occurs ; |1236| 
	.dwpsn	file "src/csl_mmcsd.c",line 1238,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L77,AC0 == #0 ; |1238| 
                                        ; branchcc occurs ; |1238| 
	.dwpsn	file "src/csl_mmcsd.c",line 1240,column 10,is_stmt
        MOV #-5, *AR3 ; |1240| 
	.dwpsn	file "src/csl_mmcsd.c",line 1242,column 5,is_stmt
        B $C$L77  ; |1242| 
                                        ; branch occurs ; |1242| 
$C$L75:    
	.dwpsn	file "src/csl_mmcsd.c",line 1245,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L76,AC0 == #0 ; |1245| 
                                        ; branchcc occurs ; |1245| 
	.dwpsn	file "src/csl_mmcsd.c",line 1247,column 10,is_stmt
        MOV #0, *AR3 ; |1247| 
$C$L76:    
	.dwpsn	file "src/csl_mmcsd.c",line 1249,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1249| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |1249| 
        AND #0x0400, AR1, AC0 ; |1249| 
        SFTS AC0, #-10, AC0 ; |1249| 
        MOV AC0, *SP(#4) ; |1249| 
$C$L77:    
	.dwpsn	file "src/csl_mmcsd.c",line 1252,column 2,is_stmt
        MOV *SP(#4), T0 ; |1252| 
	.dwpsn	file "src/csl_mmcsd.c",line 1253,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$95, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x4e5)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.global	_MMC_dxrdy

$C$DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_dxrdy")
	.dwattr $C$DW$102, DW_AT_low_pc(_MMC_dxrdy)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_MMC_dxrdy")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x513)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1301,column 1,is_stmt,address _MMC_dxrdy

	.dwfde $C$DW$CIE, _MMC_dxrdy
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg17]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pStatus")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_dxrdy                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_dxrdy:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("pStatus")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1304,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1304| 

        CMPU AC1 != AC0, TC1 ; |1304| 
        BCC $C$L78,TC1 ; |1304| 
                                        ; branchcc occurs ; |1304| 
	.dwpsn	file "src/csl_mmcsd.c",line 1306,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L80,AC0 == #0 ; |1306| 
                                        ; branchcc occurs ; |1306| 
	.dwpsn	file "src/csl_mmcsd.c",line 1308,column 10,is_stmt
        MOV #-5, *AR3 ; |1308| 
	.dwpsn	file "src/csl_mmcsd.c",line 1310,column 5,is_stmt
        B $C$L80  ; |1310| 
                                        ; branch occurs ; |1310| 
$C$L78:    
	.dwpsn	file "src/csl_mmcsd.c",line 1313,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L79,AC0 == #0 ; |1313| 
                                        ; branchcc occurs ; |1313| 
	.dwpsn	file "src/csl_mmcsd.c",line 1315,column 10,is_stmt
        MOV #0, *AR3 ; |1315| 
$C$L79:    
	.dwpsn	file "src/csl_mmcsd.c",line 1317,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1317| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |1317| 
        AND #0x0200, AR1, AC0 ; |1317| 
        SFTS AC0, #-9, AC0 ; |1317| 
        MOV AC0, *SP(#4) ; |1317| 
$C$L80:    
	.dwpsn	file "src/csl_mmcsd.c",line 1320,column 2,is_stmt
        MOV *SP(#4), T0 ; |1320| 
	.dwpsn	file "src/csl_mmcsd.c",line 1321,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$102, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x529)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.global	_MMC_saveStatus

$C$DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_saveStatus")
	.dwattr $C$DW$109, DW_AT_low_pc(_MMC_saveStatus)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_MMC_saveStatus")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$109, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x555)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 1366,column 1,is_stmt,address _MMC_saveStatus

	.dwfde $C$DW$CIE, _MMC_saveStatus
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_saveStatus                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_saveStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1367,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1367| 

        CMPU AC1 != AC0, TC1 ; |1367| 
        BCC $C$L81,TC1 ; |1367| 
                                        ; branchcc occurs ; |1367| 
	.dwpsn	file "src/csl_mmcsd.c",line 1369,column 9,is_stmt
        MOV #-5, T0
        B $C$L82  ; |1369| 
                                        ; branch occurs ; |1369| 
$C$L81:    
	.dwpsn	file "src/csl_mmcsd.c",line 1373,column 9,is_stmt
        MOV *AR3, AR3 ; |1373| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |1373| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV AR1, *AR3(short(#1)) ; |1373| 
	.dwpsn	file "src/csl_mmcsd.c",line 1374,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1374| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |1374| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV AR1, *AR3(short(#2)) ; |1374| 
	.dwpsn	file "src/csl_mmcsd.c",line 1375,column 9,is_stmt
        MOV #0, T0
$C$L82:    
	.dwpsn	file "src/csl_mmcsd.c",line 1377,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$109, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x561)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"
	.global	_MMC_getStatus

$C$DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getStatus")
	.dwattr $C$DW$113, DW_AT_low_pc(_MMC_getStatus)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_MMC_getStatus")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x594)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 1431,column 1,is_stmt,address _MMC_getStatus

	.dwfde $C$DW$CIE, _MMC_getStatus
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg17]
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("maskValue")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]
$C$DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pStatus")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getStatus                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("maskValue")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_maskValue")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("pStatus")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pStatus")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV AC0, dbl(*SP(#2)) ; |1431| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1434,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1434| 

        CMPU AC1 != AC0, TC1 ; |1434| 
        BCC $C$L83,TC1 ; |1434| 
                                        ; branchcc occurs ; |1434| 
	.dwpsn	file "src/csl_mmcsd.c",line 1436,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-5, *AR3 ; |1436| 
	.dwpsn	file "src/csl_mmcsd.c",line 1437,column 5,is_stmt
        B $C$L84  ; |1437| 
                                        ; branch occurs ; |1437| 
$C$L83:    
	.dwpsn	file "src/csl_mmcsd.c",line 1440,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |1440| 
	.dwpsn	file "src/csl_mmcsd.c",line 1441,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1441| 
        AMOV #12, T0
        MOV uns(port(*AR3(T0))), AC0 ; |1441| 
        MOV AC0, dbl(*SP(#6)) ; |1441| 
	.dwpsn	file "src/csl_mmcsd.c",line 1442,column 9,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1442| 
        SFTL AC0, #16, AC0 ; |1442| 
        MOV AC0, dbl(*SP(#6)) ; |1442| 
	.dwpsn	file "src/csl_mmcsd.c",line 1443,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1443| 

        MOV dbl(*SP(#6)), AC0 ; |1443| 
||      AMOV #8, T0

        OR port(*AR3(T0)), AC0, AC0 ; |1443| 
        MOV AC0, dbl(*SP(#6)) ; |1443| 
	.dwpsn	file "src/csl_mmcsd.c",line 1444,column 9,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |1444| 
        MOV dbl(*SP(#2)), AC0 ; |1444| 
        AND AC1, AC0 ; |1444| 
        MOV AC0, dbl(*SP(#6)) ; |1444| 
$C$L84:    
	.dwpsn	file "src/csl_mmcsd.c",line 1447,column 2,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |1447| 
	.dwpsn	file "src/csl_mmcsd.c",line 1448,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$113, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x5a8)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.global	_MMC_setupNative

$C$DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setupNative")
	.dwattr $C$DW$122, DW_AT_low_pc(_MMC_setupNative)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_MMC_setupNative")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$122, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x5dd)
	.dwattr $C$DW$122, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1503,column 1,is_stmt,address _MMC_setupNative

	.dwfde $C$DW$CIE, _MMC_setupNative
$C$DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg17]
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcInit")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_pMmcInit")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_setupNative                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setupNative:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("pMmcInit")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_pMmcInit")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1506,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1506| 

        CMPU AC1 != AC0, TC1 ; |1506| 
        BCC $C$L85,TC1 ; |1506| 
                                        ; branchcc occurs ; |1506| 
	.dwpsn	file "src/csl_mmcsd.c",line 1508,column 9,is_stmt
        MOV #-5, T0
        B $C$L87  ; |1508| 
                                        ; branch occurs ; |1508| 
$C$L85:    
	.dwpsn	file "src/csl_mmcsd.c",line 1512,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1512| 
        BCC $C$L86,TC1 ; |1512| 
                                        ; branchcc occurs ; |1512| 
	.dwpsn	file "src/csl_mmcsd.c",line 1514,column 13,is_stmt
        MOV #-6, T0
        B $C$L87  ; |1514| 
                                        ; branch occurs ; |1514| 
$C$L86:    
	.dwpsn	file "src/csl_mmcsd.c",line 1523,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1523| 
        MOV port(*AR3(short(#4))), AR1 ; |1523| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1523| 
        BCLR @#8, AR1 ; |1523| 
        MOV AR1, port(*AR3(short(#4))) ; |1523| 
	.dwpsn	file "src/csl_mmcsd.c",line 1524,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1524| 
        MOV port(*AR3(short(#4))), AR1 ; |1524| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xff00, AR1, AR2 ; |1524| 
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |1524| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1524| 
        OR AR2, AR1 ; |1524| 
        MOV AR1, port(*AR3(short(#4))) ; |1524| 
	.dwpsn	file "src/csl_mmcsd.c",line 1526,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1526| 
        MOV port(*AR3(short(#4))), AR1 ; |1526| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AC0 ; |1526| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1526| 

        AND #0xff3f, AR1, AR1 ; |1526| 
||      SFTL AC0, #6, AC0 ; |1526| 

        AND #0x00c0, AC0, AR2 ; |1526| 
        OR AR1, AR2 ; |1526| 
        MOV AR2, port(*AR3(short(#4))) ; |1526| 
	.dwpsn	file "src/csl_mmcsd.c",line 1529,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1529| 
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |1529| 
        MOV *AR3, AR3 ; |1529| 
        MOV AR1, port(*AR3(T0)) ; |1529| 
	.dwpsn	file "src/csl_mmcsd.c",line 1530,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1530| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1530| 
        MOV *AR3, AR3 ; |1530| 
        MOV AR1, port(*AR3(T0)) ; |1530| 
	.dwpsn	file "src/csl_mmcsd.c",line 1531,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1531| 
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |1531| 
        MOV *AR3, AR3 ; |1531| 
        MOV AR1, port(*AR3(T0)) ; |1531| 
	.dwpsn	file "src/csl_mmcsd.c",line 1533,column 13,is_stmt
        MOV #0, T0
$C$L87:    
	.dwpsn	file "src/csl_mmcsd.c",line 1536,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$122, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x600)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text"
	.global	_MMC_config

$C$DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_config")
	.dwattr $C$DW$128, DW_AT_low_pc(_MMC_config)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_MMC_config")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x637)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1593,column 1,is_stmt,address _MMC_config

	.dwfde $C$DW$CIE, _MMC_config
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg17]
$C$DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcConfig")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_pMmcConfig")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("pMmcConfig")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_pMmcConfig")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1594,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1594| 

        CMPU AC1 != AC0, TC1 ; |1594| 
        BCC $C$L88,TC1 ; |1594| 
                                        ; branchcc occurs ; |1594| 
	.dwpsn	file "src/csl_mmcsd.c",line 1596,column 9,is_stmt
        MOV #-5, T0
        B $C$L90  ; |1596| 
                                        ; branch occurs ; |1596| 
$C$L88:    
	.dwpsn	file "src/csl_mmcsd.c",line 1600,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1600| 
        BCC $C$L89,TC1 ; |1600| 
                                        ; branchcc occurs ; |1600| 
	.dwpsn	file "src/csl_mmcsd.c",line 1602,column 13,is_stmt
        MOV #-6, T0
        B $C$L90  ; |1602| 
                                        ; branch occurs ; |1602| 
$C$L89:    
	.dwpsn	file "src/csl_mmcsd.c",line 1606,column 13,is_stmt
        MOV *AR3, AR1 ; |1606| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1606| 
        MOV AR1, port(*AR3) ; |1606| 
	.dwpsn	file "src/csl_mmcsd.c",line 1607,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1607| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1607| 
        MOV AR1, port(*AR3(short(#4))) ; |1607| 
	.dwpsn	file "src/csl_mmcsd.c",line 1608,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |1608| 
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1608| 
        MOV *AR3, AR3 ; |1608| 
        MOV AR1, port(*AR3(T0)) ; |1608| 
	.dwpsn	file "src/csl_mmcsd.c",line 1609,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |1609| 
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |1609| 
        MOV *AR3, AR3 ; |1609| 
        MOV AR1, port(*AR3(T0)) ; |1609| 
	.dwpsn	file "src/csl_mmcsd.c",line 1610,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1610| 
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1610| 
        MOV *AR3, AR3 ; |1610| 
        MOV AR1, port(*AR3(T0)) ; |1610| 
	.dwpsn	file "src/csl_mmcsd.c",line 1611,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1611| 
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |1611| 
        MOV *AR3, AR3 ; |1611| 
        MOV AR1, port(*AR3(T0)) ; |1611| 
	.dwpsn	file "src/csl_mmcsd.c",line 1612,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1612| 
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |1612| 
        MOV *AR3, AR3 ; |1612| 
        MOV AR1, port(*AR3(T0)) ; |1612| 
	.dwpsn	file "src/csl_mmcsd.c",line 1613,column 13,is_stmt
        MOV #0, T0
$C$L90:    
	.dwpsn	file "src/csl_mmcsd.c",line 1616,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$128, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x650)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.global	_MMC_getConfig

$C$DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getConfig")
	.dwattr $C$DW$134, DW_AT_low_pc(_MMC_getConfig)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_MMC_getConfig")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$134, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x67e)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1664,column 1,is_stmt,address _MMC_getConfig

	.dwfde $C$DW$CIE, _MMC_getConfig
$C$DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg17]
$C$DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcConfig")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_pMmcConfig")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("pMmcConfig")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_pMmcConfig")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1665,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1665| 

        CMPU AC1 != AC0, TC1 ; |1665| 
        BCC $C$L91,TC1 ; |1665| 
                                        ; branchcc occurs ; |1665| 
	.dwpsn	file "src/csl_mmcsd.c",line 1667,column 9,is_stmt
        MOV #-5, T0
        B $C$L93  ; |1667| 
                                        ; branch occurs ; |1667| 
$C$L91:    
	.dwpsn	file "src/csl_mmcsd.c",line 1671,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |1671| 
        BCC $C$L92,TC1 ; |1671| 
                                        ; branchcc occurs ; |1671| 
	.dwpsn	file "src/csl_mmcsd.c",line 1673,column 13,is_stmt
        MOV #-6, T0
        B $C$L93  ; |1673| 
                                        ; branch occurs ; |1673| 
$C$L92:    
	.dwpsn	file "src/csl_mmcsd.c",line 1677,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1677| 
        MOV port(*AR3), AR1 ; |1677| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |1677| 
	.dwpsn	file "src/csl_mmcsd.c",line 1678,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1678| 
        MOV port(*AR3(short(#4))), AR1 ; |1678| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#1)) ; |1678| 
	.dwpsn	file "src/csl_mmcsd.c",line 1679,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1679| 
        MOV *AR3, AR3 ; |1679| 
        MOV port(*AR3(T0)), AR1 ; |1679| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#2)) ; |1679| 
	.dwpsn	file "src/csl_mmcsd.c",line 1680,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |1680| 
        MOV *AR3, AR3 ; |1680| 
        MOV port(*AR3(T0)), AR1 ; |1680| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1680| 
	.dwpsn	file "src/csl_mmcsd.c",line 1681,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |1681| 
        MOV *AR3, AR3 ; |1681| 
        MOV port(*AR3(T0)), AR1 ; |1681| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#4)) ; |1681| 
	.dwpsn	file "src/csl_mmcsd.c",line 1682,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |1682| 
        MOV *AR3, AR3 ; |1682| 
        MOV port(*AR3(T0)), AR1 ; |1682| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#5)) ; |1682| 
	.dwpsn	file "src/csl_mmcsd.c",line 1683,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |1683| 
        MOV *AR3, AR3 ; |1683| 
        MOV port(*AR3(T0)), AR1 ; |1683| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#6)) ; |1683| 
	.dwpsn	file "src/csl_mmcsd.c",line 1684,column 13,is_stmt
        MOV #0, T0
$C$L93:    
	.dwpsn	file "src/csl_mmcsd.c",line 1687,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$134, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x697)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$134

	.sect	".text"
	.global	_MMC_sendCmd

$C$DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_sendCmd")
	.dwattr $C$DW$140, DW_AT_low_pc(_MMC_sendCmd)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_MMC_sendCmd")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$140, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0x6d4)
	.dwattr $C$DW$140, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 1752,column 1,is_stmt,address _MMC_sendCmd

	.dwfde $C$DW$CIE, _MMC_sendCmd
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg17]
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg0]
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg3]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventFlags")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_eventFlags")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_sendCmd                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_sendCmd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("eventFlags")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_eventFlags")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("saved")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_saved")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#6) ; |1752| 
        MOV AC1, dbl(*SP(#4)) ; |1752| 
        MOV AC0, dbl(*SP(#2)) ; |1752| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1756,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1756| 

        CMPU AC1 != AC0, TC1 ; |1756| 
        BCC $C$L94,TC1 ; |1756| 
                                        ; branchcc occurs ; |1756| 
	.dwpsn	file "src/csl_mmcsd.c",line 1758,column 9,is_stmt
        MOV #-5, T0
        B $C$L100 ; |1758| 
                                        ; branch occurs ; |1758| 
$C$L94:    
	.dwpsn	file "src/csl_mmcsd.c",line 1763,column 3,is_stmt
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$151, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |1763| 
                                        ; call occurs [#_IRQ_globalDisable] ; |1763| 
        MOV T0, *SP(#8) ; |1763| 
	.dwpsn	file "src/csl_mmcsd.c",line 1765,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |1765| 
        MOV *AR3, AR3 ; |1765| 
        MOV port(*AR3(T0)), AR1 ; |1765| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1765| 
        MOV dbl(*SP(#4)), AC0 ; |1765| 
        AND #0xffff, AC0, AC0 ; |1765| 
        OR #0x0000, AC0, AC0 ; |1765| 
        MOV AC0, port(*AR3(T0)) ; |1765| 
	.dwpsn	file "src/csl_mmcsd.c",line 1767,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |1767| 
        MOV *AR3, AR3 ; |1767| 
        MOV port(*AR3(T0)), AR1 ; |1767| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1767| 
        MOV dbl(*SP(#4)), AC0 ; |1767| 
        SFTL AC0, #-16, AC0 ; |1767| 
        AND #0xffff, AC0, AC0 ; |1767| 
        OR #0x0000, AC0, AC0 ; |1767| 
        MOV AC0, port(*AR3(T0)) ; |1767| 
	.dwpsn	file "src/csl_mmcsd.c",line 1770,column 6,is_stmt
        MOV *SP(#8), T0 ; |1770| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$152, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |1770| 
                                        ; call occurs [#_IRQ_globalRestore] ; |1770| 
	.dwpsn	file "src/csl_mmcsd.c",line 1772,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |1772| 
        MOV *AR3, AR3 ; |1772| 
        MOV dbl(*SP(#2)), AC0 ; |1772| 
        AND #0xffff, AC0, AC0 ; |1772| 
        MOV AC0, port(*AR3(T0)) ; |1772| 
	.dwpsn	file "src/csl_mmcsd.c",line 1774,column 3,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1774| 
        SFTL AC0, #-16, AC0 ; |1774| 
        AND #0xffff, AC0, AC0 ; |1774| 
        MOV AC0, dbl(*SP(#2)) ; |1774| 
	.dwpsn	file "src/csl_mmcsd.c",line 1780,column 3,is_stmt

        MOV dbl(*SP(#2)), AC0 ; |1780| 
||      MOV #0, AC1 ; |1780| 

        CMPU AC1 == AC0, TC1 ; |1780| 
        BCC $C$L95,TC1 ; |1780| 
                                        ; branchcc occurs ; |1780| 
	.dwpsn	file "src/csl_mmcsd.c",line 1782,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |1782| 
        MOV *AR3, AR3 ; |1782| 
        MOV dbl(*SP(#2)), AC0 ; |1782| 
        OR port(*AR3(T0)), AC0, AC0 ; |1782| 
        MOV AC0, port(*AR3(T0)) ; |1782| 
$C$L95:    
	.dwpsn	file "src/csl_mmcsd.c",line 1785,column 6,is_stmt
        MOV *SP(#6), AR1 ; |1785| 
        BCC $C$L99,AR1 == #0 ; |1785| 
                                        ; branchcc occurs ; |1785| 
$C$L96:    
$C$DW$L$_MMC_sendCmd$7$B:
	.dwpsn	file "src/csl_mmcsd.c",line 1789,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1789| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |1789| 
        MOV AR1, *SP(#7) ; |1789| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 1790,column 5,is_stmt
        BAND *SP(#7), #144, TC1 ; |1790| 
        BCC $C$L98,!TC1 ; |1790| 
                                        ; branchcc occurs ; |1790| 
$C$DW$L$_MMC_sendCmd$7$E:
	.dwpsn	file "src/csl_mmcsd.c",line 1792,column 6,is_stmt
        BTST #4, *SP(#7), TC1 ; |1792| 
        BCC $C$L97,!TC1 ; |1792| 
                                        ; branchcc occurs ; |1792| 
	.dwpsn	file "src/csl_mmcsd.c",line 1794,column 7,is_stmt
        MOV #-10, T0
        B $C$L100 ; |1794| 
                                        ; branch occurs ; |1794| 
$C$L97:    
	.dwpsn	file "src/csl_mmcsd.c",line 1798,column 7,is_stmt
        MOV #-15, T0
        B $C$L100 ; |1798| 
                                        ; branch occurs ; |1798| 
$C$L98:    
$C$DW$L$_MMC_sendCmd$12$B:
	.dwpsn	file "src/csl_mmcsd.c",line 1801,column 12,is_stmt
        MOV *SP(#6), AR1 ; |1801| 
        AND *SP(#7), AR1, AR1 ; |1801| 
        BCC $C$L96,AR1 == #0 ; |1801| 
                                        ; branchcc occurs ; |1801| 
$C$DW$L$_MMC_sendCmd$12$E:
$C$L99:    
	.dwpsn	file "src/csl_mmcsd.c",line 1804,column 9,is_stmt
        MOV #0, T0
$C$L100:    
	.dwpsn	file "src/csl_mmcsd.c",line 1806,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$154	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$154, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L96:1:1714639441")
	.dwattr $C$DW$154, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x6fb)
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x709)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_MMC_sendCmd$7$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_MMC_sendCmd$7$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_MMC_sendCmd$12$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_MMC_sendCmd$12$E)
	.dwendtag $C$DW$154

	.dwattr $C$DW$140, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x70e)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text"
	.global	_MMC_sendGoIdle

$C$DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_sendGoIdle")
	.dwattr $C$DW$157, DW_AT_low_pc(_MMC_sendGoIdle)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_MMC_sendGoIdle")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$157, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x739)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 1850,column 1,is_stmt,address _MMC_sendGoIdle

	.dwfde $C$DW$CIE, _MMC_sendGoIdle
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_sendGoIdle                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_sendGoIdle:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("goIdleCmd")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_goIdleCmd")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1853,column 2,is_stmt
        MOV #0, *SP(#2) ; |1853| 
	.dwpsn	file "src/csl_mmcsd.c",line 1855,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1855| 

        CMPU AC1 != AC0, TC1 ; |1855| 
        BCC $C$L101,TC1 ; |1855| 
                                        ; branchcc occurs ; |1855| 
	.dwpsn	file "src/csl_mmcsd.c",line 1857,column 9,is_stmt
        MOV #-5, T0
        B $C$L102 ; |1857| 
                                        ; branch occurs ; |1857| 
$C$L101:    
	.dwpsn	file "src/csl_mmcsd.c",line 1862,column 9,is_stmt
        MOV *SP(#2), AR1 ; |1862| 
        BCLR @#15, AR1 ; |1862| 
        BSET @#15, AR1 ; |1862| 
        MOV AR1, *SP(#2) ; |1862| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 1863,column 9,is_stmt
        MOV *SP(#2), AR1 ; |1863| 
        BCLR @#14, AR1 ; |1863| 
        BSET @#14, AR1 ; |1863| 
        MOV AR1, *SP(#2) ; |1863| 
	.dwpsn	file "src/csl_mmcsd.c",line 1864,column 9,is_stmt
        AND #0xdfff, *SP(#2) ; |1864| 
	.dwpsn	file "src/csl_mmcsd.c",line 1865,column 9,is_stmt
        AND #0xefff, *SP(#2) ; |1865| 
	.dwpsn	file "src/csl_mmcsd.c",line 1866,column 9,is_stmt
        AND #0xf7ff, *SP(#2) ; |1866| 
	.dwpsn	file "src/csl_mmcsd.c",line 1867,column 9,is_stmt
        AND #0xf9ff, *SP(#2) ; |1867| 
	.dwpsn	file "src/csl_mmcsd.c",line 1868,column 9,is_stmt
        AND #0xfeff, *SP(#2) ; |1868| 
	.dwpsn	file "src/csl_mmcsd.c",line 1869,column 9,is_stmt
        AND #0xff7f, *SP(#2) ; |1869| 
	.dwpsn	file "src/csl_mmcsd.c",line 1870,column 9,is_stmt
        AND #0xffc0, *SP(#2) ; |1870| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 1872,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#2)), AC0 ; |1872| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$161, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |1872| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |1872| 
	.dwpsn	file "src/csl_mmcsd.c",line 1876,column 9,is_stmt
        MOV #0, T0
$C$L102:    
	.dwpsn	file "src/csl_mmcsd.c",line 1878,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$157, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x756)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text"
	.global	_MMC_stop

$C$DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_stop")
	.dwattr $C$DW$163, DW_AT_low_pc(_MMC_stop)
	.dwattr $C$DW$163, DW_AT_high_pc(0x00)
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_MMC_stop")
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$163, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$163, DW_AT_TI_begin_line(0x788)
	.dwattr $C$DW$163, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$163, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 1929,column 1,is_stmt,address _MMC_stop

	.dwfde $C$DW$CIE, _MMC_stop
$C$DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_stop                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("stopCmd")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_stopCmd")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("eventFlags")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_eventFlags")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 1934,column 2,is_stmt
        MOV #0, *SP(#2) ; |1934| 
	.dwpsn	file "src/csl_mmcsd.c",line 1936,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1936| 

        CMPU AC1 != AC0, TC1 ; |1936| 
        BCC $C$L103,TC1 ; |1936| 
                                        ; branchcc occurs ; |1936| 
	.dwpsn	file "src/csl_mmcsd.c",line 1938,column 9,is_stmt
        MOV #-5, T0
        B $C$L106 ; |1938| 
                                        ; branch occurs ; |1938| 
$C$L103:    
	.dwpsn	file "src/csl_mmcsd.c",line 1943,column 9,is_stmt
        AND #0x7fff, *SP(#2) ; |1943| 
	.dwpsn	file "src/csl_mmcsd.c",line 1944,column 9,is_stmt
        AND #0xbfff, *SP(#2) ; |1944| 
	.dwpsn	file "src/csl_mmcsd.c",line 1945,column 9,is_stmt
        AND #0xdfff, *SP(#2) ; |1945| 
	.dwpsn	file "src/csl_mmcsd.c",line 1946,column 9,is_stmt
        AND #0xefff, *SP(#2) ; |1946| 
	.dwpsn	file "src/csl_mmcsd.c",line 1947,column 9,is_stmt
        AND #0xf7ff, *SP(#2) ; |1947| 
	.dwpsn	file "src/csl_mmcsd.c",line 1949,column 9,is_stmt
        MOV *SP(#2), AR1 ; |1949| 
        AND #0xf9ff, AR1, AC0 ; |1949| 
        BSET @#9, AC0 ; |1949| 
        MOV AC0, *SP(#2) ; |1949| 
	.dwpsn	file "src/csl_mmcsd.c",line 1950,column 9,is_stmt
        MOV AC0, AR1
        BCLR @#8, AR1 ; |1950| 
        BSET @#8, AR1 ; |1950| 
        MOV AR1, *SP(#2) ; |1950| 
	.dwpsn	file "src/csl_mmcsd.c",line 1951,column 3,is_stmt
        AND #0xff7f, *SP(#2) ; |1951| 
	.dwpsn	file "src/csl_mmcsd.c",line 1952,column 9,is_stmt
        MOV *SP(#2), AR1 ; |1952| 
        AND #0xffc0, AR1, AR1 ; |1952| 
        OR #0x000c, AR1, AR1 ; |1952| 
        MOV AR1, *SP(#2) ; |1952| 
	.dwpsn	file "src/csl_mmcsd.c",line 1954,column 3,is_stmt
        MOV #6, *SP(#4) ; |1954| 
	.dwpsn	file "src/csl_mmcsd.c",line 1955,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#4), T0 ; |1955| 
        MOV uns(*SP(#2)), AC0 ; |1955| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |1955| 
                                        ; call occurs [#_MMC_sendCmd] ; |1955| 
        MOV T0, *SP(#3) ; |1955| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 1959,column 3,is_stmt

        MOV *SP(#3), AR1 ; |1959| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |1959| 
        BCC $C$L104,TC1 ; |1959| 
                                        ; branchcc occurs ; |1959| 

        MOV #-15, AR2
||      MOV *SP(#3), AR1 ; |1959| 

        CMP AR2 != AR1, TC1 ; |1959| 
        BCC $C$L105,TC1 ; |1959| 
                                        ; branchcc occurs ; |1959| 
$C$L104:    
	.dwpsn	file "src/csl_mmcsd.c",line 1962,column 4,is_stmt
        MOV *SP(#3), T0 ; |1962| 
        B $C$L106 ; |1962| 
                                        ; branch occurs ; |1962| 
$C$L105:    
	.dwpsn	file "src/csl_mmcsd.c",line 1965,column 6,is_stmt
        MOV #0, T0
$C$L106:    
	.dwpsn	file "src/csl_mmcsd.c",line 1967,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$163, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x7af)
	.dwattr $C$DW$163, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$163

	.sect	".text"
	.global	_MMC_deselectCard

$C$DW$171	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_deselectCard")
	.dwattr $C$DW$171, DW_AT_low_pc(_MMC_deselectCard)
	.dwattr $C$DW$171, DW_AT_high_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_MMC_deselectCard")
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$171, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0x7e0)
	.dwattr $C$DW$171, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$171, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 2018,column 1,is_stmt,address _MMC_deselectCard

	.dwfde $C$DW$CIE, _MMC_deselectCard
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg17]
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_deselectCard                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_deselectCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("deselectCmd")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_deselectCmd")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2022,column 2,is_stmt
        MOV #0, *SP(#4) ; |2022| 
	.dwpsn	file "src/csl_mmcsd.c",line 2024,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2024| 

        CMPU AC1 != AC0, TC1 ; |2024| 
        BCC $C$L107,TC1 ; |2024| 
                                        ; branchcc occurs ; |2024| 
	.dwpsn	file "src/csl_mmcsd.c",line 2026,column 9,is_stmt
        MOV #-5, T0
        B $C$L111 ; |2026| 
                                        ; branch occurs ; |2026| 
$C$L107:    
	.dwpsn	file "src/csl_mmcsd.c",line 2030,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |2030| 
        BCC $C$L108,TC1 ; |2030| 
                                        ; branchcc occurs ; |2030| 
	.dwpsn	file "src/csl_mmcsd.c",line 2032,column 13,is_stmt
        MOV #-6, T0
        B $C$L111 ; |2032| 
                                        ; branch occurs ; |2032| 
$C$L108:    
	.dwpsn	file "src/csl_mmcsd.c",line 2036,column 4,is_stmt
        AND #0x7fff, *SP(#4) ; |2036| 
	.dwpsn	file "src/csl_mmcsd.c",line 2037,column 4,is_stmt
        AND #0xbfff, *SP(#4) ; |2037| 
	.dwpsn	file "src/csl_mmcsd.c",line 2038,column 4,is_stmt
        AND #0xdfff, *SP(#4) ; |2038| 
	.dwpsn	file "src/csl_mmcsd.c",line 2039,column 4,is_stmt
        AND #0xefff, *SP(#4) ; |2039| 
	.dwpsn	file "src/csl_mmcsd.c",line 2040,column 4,is_stmt
        AND #0xf7ff, *SP(#4) ; |2040| 
	.dwpsn	file "src/csl_mmcsd.c",line 2042,column 4,is_stmt
        AND #0xf9ff, *SP(#4) ; |2042| 
	.dwpsn	file "src/csl_mmcsd.c",line 2043,column 4,is_stmt
        AND #0xfeff, *SP(#4) ; |2043| 
	.dwpsn	file "src/csl_mmcsd.c",line 2044,column 4,is_stmt
        AND #0xff7f, *SP(#4) ; |2044| 
	.dwpsn	file "src/csl_mmcsd.c",line 2045,column 4,is_stmt
        MOV *SP(#4), AR1 ; |2045| 
        AND #0xffc0, AR1, AR1 ; |2045| 
        OR #0x0007, AR1, AR1 ; |2045| 
        MOV AR1, *SP(#4) ; |2045| 
	.dwpsn	file "src/csl_mmcsd.c",line 2048,column 4,is_stmt
        MOV uns(*SP(#4)), AC0 ; |2048| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$178, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2048| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |2048| 
        MOV T0, *SP(#5) ; |2048| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2052,column 4,is_stmt

        MOV *SP(#5), AR1 ; |2052| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |2052| 
        BCC $C$L109,TC1 ; |2052| 
                                        ; branchcc occurs ; |2052| 

        MOV #-15, AR2
||      MOV *SP(#5), AR1 ; |2052| 

        CMP AR2 != AR1, TC1 ; |2052| 
        BCC $C$L110,TC1 ; |2052| 
                                        ; branchcc occurs ; |2052| 
$C$L109:    
	.dwpsn	file "src/csl_mmcsd.c",line 2055,column 5,is_stmt
        MOV *SP(#5), T0 ; |2055| 
        B $C$L111 ; |2055| 
                                        ; branch occurs ; |2055| 
$C$L110:    
	.dwpsn	file "src/csl_mmcsd.c",line 2058,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#18) ; |2058| 
	.dwpsn	file "src/csl_mmcsd.c",line 2059,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |2059| 
	.dwpsn	file "src/csl_mmcsd.c",line 2061,column 13,is_stmt
        MOV #0, T0
$C$L111:    
	.dwpsn	file "src/csl_mmcsd.c",line 2064,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$171, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x810)
	.dwattr $C$DW$171, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$171

	.sect	".text"
	.global	_MMC_selectCard

$C$DW$180	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_selectCard")
	.dwattr $C$DW$180, DW_AT_low_pc(_MMC_selectCard)
	.dwattr $C$DW$180, DW_AT_high_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_MMC_selectCard")
	.dwattr $C$DW$180, DW_AT_external
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$180, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$180, DW_AT_TI_begin_line(0x845)
	.dwattr $C$DW$180, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$180, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_mmcsd.c",line 2119,column 1,is_stmt,address _MMC_selectCard

	.dwfde $C$DW$CIE, _MMC_selectCard
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg17]
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_selectCard                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T2,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Save On Entry Regs : T2                                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (12 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_selectCard:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        AADD #-12, SP
	.dwcfi	cfa_offset, 14
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("resp")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_resp")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("cardCheck")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_cardCheck")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("cmdRetryCnt")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_cmdRetryCnt")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("eventFlags")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_eventFlags")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2128,column 2,is_stmt
        MOV #1000, *SP(#10) ; |2128| 
	.dwpsn	file "src/csl_mmcsd.c",line 2130,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L112,AC0 == #0 ; |2130| 
                                        ; branchcc occurs ; |2130| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L114,AC0 != #0 ; |2130| 
                                        ; branchcc occurs ; |2130| 
	.dwpsn	file "src/csl_mmcsd.c",line 2133,column 5,is_stmt
$C$L112:    
	.dwpsn	file "src/csl_mmcsd.c",line 2136,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2136| 

        CMPU AC1 != AC0, TC1 ; |2136| 
        BCC $C$L113,TC1 ; |2136| 
                                        ; branchcc occurs ; |2136| 
	.dwpsn	file "src/csl_mmcsd.c",line 2138,column 13,is_stmt
        MOV #-5, T0
        B $C$L137 ; |2138| 
                                        ; branch occurs ; |2138| 
$C$L113:    
	.dwpsn	file "src/csl_mmcsd.c",line 2142,column 13,is_stmt
        MOV #-6, T0
        B $C$L137 ; |2142| 
                                        ; branch occurs ; |2142| 
$C$L114:    
	.dwpsn	file "src/csl_mmcsd.c",line 2146,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_mmcsd.c",line 2147,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#18) ; |2147| 
	.dwpsn	file "src/csl_mmcsd.c",line 2148,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#27) ; |2148| 
	.dwpsn	file "src/csl_mmcsd.c",line 2149,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#26) ; |2149| 
	.dwpsn	file "src/csl_mmcsd.c",line 2152,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2152| 
        MOV port(*AR3), AR1 ; |2152| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2152| 
        BCLR @#1, AR1 ; |2152| 
        BSET @#1, AR1 ; |2152| 
        MOV AR1, port(*AR3) ; |2152| 
	.dwpsn	file "src/csl_mmcsd.c",line 2153,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2153| 
        MOV port(*AR3), AR1 ; |2153| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2153| 
        BCLR @#0, AR1 ; |2153| 
        BSET @#0, AR1 ; |2153| 
        MOV AR1, port(*AR3) ; |2153| 
	.dwpsn	file "src/csl_mmcsd.c",line 2156,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |2156| 
        MOV *AR3, AR3 ; |2156| 
        MOV #65535, port(*AR3(T0)) ; |2156| 
	.dwpsn	file "src/csl_mmcsd.c",line 2157,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |2157| 
        MOV *AR3, AR3 ; |2157| 
        MOV #65535, port(*AR3(T0)) ; |2157| 
	.dwpsn	file "src/csl_mmcsd.c",line 2165,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2165| 
        MOV port(*AR3(short(#4))), AR1 ; |2165| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2165| 
        BCLR @#8, AR1 ; |2165| 
        MOV AR1, port(*AR3(short(#4))) ; |2165| 
	.dwpsn	file "src/csl_mmcsd.c",line 2166,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2166| 
        MOV port(*AR3(short(#4))), AR1 ; |2166| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2166| 
        AND #0xff00, AR1, AR1 ; |2166| 
        OR #0x007c, AR1, AR1 ; |2166| 
        MOV AR1, port(*AR3(short(#4))) ; |2166| 
	.dwpsn	file "src/csl_mmcsd.c",line 2170,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2170| 
        MOV port(*AR3), AR1 ; |2170| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2170| 
        BCLR @#1, AR1 ; |2170| 
        MOV AR1, port(*AR3) ; |2170| 
	.dwpsn	file "src/csl_mmcsd.c",line 2171,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2171| 
        MOV port(*AR3), AR1 ; |2171| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2171| 
        BCLR @#0, AR1 ; |2171| 
        MOV AR1, port(*AR3) ; |2171| 
	.dwpsn	file "src/csl_mmcsd.c",line 2178,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2178| 
        MOV *AR3, AR3 ; |2178| 
        MOV port(*AR3(T0)), AR1 ; |2178| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2178| 
        AND #0xffc0, AR1, AC0 ; |2178| 
        MOV AC0, port(*AR3(T0)) ; |2178| 
	.dwpsn	file "src/csl_mmcsd.c",line 2180,column 2,is_stmt

        MOV #16384, AC0 ; |2180| 
||      MOV #0, AC1 ; |2180| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$191, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2180| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |2180| 
        MOV T0, *SP(#8) ; |2180| 
	.dwpsn	file "src/csl_mmcsd.c",line 2193,column 6,is_stmt
        MOV #0, *SP(#9) ; |2193| 
	.dwpsn	file "src/csl_mmcsd.c",line 2193,column 21,is_stmt

        MOV *SP(#9), AR1 ; |2193| 
||      MOV #3, AR2

        CMPU AR1 >= AR2, TC1 ; |2193| 
        BCC $C$L136,TC1 ; |2193| 
                                        ; branchcc occurs ; |2193| 
$C$L115:    
$C$DW$L$_MMC_selectCard$9$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2200,column 3,is_stmt
        MOV #0, AR2
        CMPU AR2 != AR1, TC1 ; |2200| 
        BCC $C$L119,TC1 ; |2200| 
                                        ; branchcc occurs ; |2200| 
$C$DW$L$_MMC_selectCard$9$E:
$C$DW$L$_MMC_selectCard$10$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2206,column 4,is_stmt
        MOV #426, AC0 ; |2206| 
        MOV AC0, dbl(*SP(#4)) ; |2206| 
	.dwpsn	file "src/csl_mmcsd.c",line 2207,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2207| 
        MOV *AR3, AR3 ; |2207| 
        MOV #0, port(*AR3(T0)) ; |2207| 
	.dwpsn	file "src/csl_mmcsd.c",line 2208,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2208| 
        MOV *AR3, AR3 ; |2208| 
        MOV port(*AR3(T0)), AR1 ; |2208| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2208| 
        AND #0xffc0, AR1, AC0 ; |2208| 
        MOV AC0, port(*AR3(T0)) ; |2208| 
	.dwpsn	file "src/csl_mmcsd.c",line 2210,column 4,is_stmt
        MOV #252, *SP(#11) ; |2210| 
	.dwpsn	file "src/csl_mmcsd.c",line 2211,column 4,is_stmt
        MOV #520, AC0 ; |2211| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |2211| 
        MOV *SP(#11), T0 ; |2211| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |2211| 
                                        ; call occurs [#_MMC_sendCmd] ; |2211| 
        MOV T0, *SP(#8) ; |2211| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2215,column 4,is_stmt

        MOV *SP(#8), AR1 ; |2215| 
||      MOV #-15, AR2

        CMP AR2 != AR1, TC1 ; |2215| 
        BCC $C$L116,TC1 ; |2215| 
                                        ; branchcc occurs ; |2215| 
$C$DW$L$_MMC_selectCard$10$E:
	.dwpsn	file "src/csl_mmcsd.c",line 2220,column 5,is_stmt
        MOV *SP(#8), T0 ; |2220| 
        B $C$L137 ; |2220| 
                                        ; branch occurs ; |2220| 
$C$L116:    
$C$DW$L$_MMC_selectCard$12$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2223,column 4,is_stmt
        BAND *SP(#8), #248, TC1 ; |2223| 
        BCC $C$L118,TC1 ; |2223| 
                                        ; branchcc occurs ; |2223| 
$C$DW$L$_MMC_selectCard$12$E:
$C$DW$L$_MMC_selectCard$13$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2228,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2228| 
        MOV *AR3, AR3 ; |2228| 
        MOV #426, AR2 ; |2228| 
        MOV port(*AR3(T0)), AR1 ; |2228| 
        AND #0x01ff, AR1, AR1 ; |2228| 
        CMPU AR2 != AR1, TC1 ; |2228| 
        BCC $C$L117,TC1 ; |2228| 
                                        ; branchcc occurs ; |2228| 
$C$DW$L$_MMC_selectCard$13$E:
$C$DW$L$_MMC_selectCard$14$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2234,column 6,is_stmt
        MOV #16639 << #16, AC0 ; |2234| 
        OR #0x8000, AC0, AC0 ; |2234| 
        MOV AC0, dbl(*SP(#4)) ; |2234| 
	.dwpsn	file "src/csl_mmcsd.c",line 2235,column 5,is_stmt
        B $C$L135 ; |2235| 
                                        ; branch occurs ; |2235| 
$C$DW$L$_MMC_selectCard$14$E:
$C$L117:    
	.dwpsn	file "src/csl_mmcsd.c",line 2242,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#18) ; |2242| 
	.dwpsn	file "src/csl_mmcsd.c",line 2243,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |2243| 
	.dwpsn	file "src/csl_mmcsd.c",line 2244,column 6,is_stmt
        B $C$L136 ; |2244| 
                                        ; branch occurs ; |2244| 
$C$L118:    
$C$DW$L$_MMC_selectCard$17$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2249,column 5,is_stmt
        MOV #255 << #16, AC0 ; |2249| 
        OR #0x8000, AC0, AC0 ; |2249| 
        MOV AC0, dbl(*SP(#4)) ; |2249| 
	.dwpsn	file "src/csl_mmcsd.c",line 2260,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2260| 
        MOV *AR3, AR3 ; |2260| 
        MOV port(*AR3(T0)), AR1 ; |2260| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2260| 
        AND #0xffc0, AR1, AC0 ; |2260| 
        MOV AC0, port(*AR3(T0)) ; |2260| 
	.dwpsn	file "src/csl_mmcsd.c",line 2262,column 5,is_stmt
        MOV #4, *SP(#11) ; |2262| 
	.dwpsn	file "src/csl_mmcsd.c",line 2263,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #16384, AC0 ; |2263| 
        MOV *SP(#11), T0 ; |2263| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$193, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2263| 
||      MOV #0, AC1 ; |2263| 

                                        ; call occurs [#_MMC_sendCmd] ; |2263| 
        MOV T0, *SP(#8) ; |2263| 
	.dwpsn	file "src/csl_mmcsd.c",line 2269,column 3,is_stmt
        B $C$L135 ; |2269| 
                                        ; branch occurs ; |2269| 
$C$DW$L$_MMC_selectCard$17$E:
$C$L119:    
$C$DW$L$_MMC_selectCard$18$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2270,column 8,is_stmt
        MOV #1, AR2
        CMPU AR2 != AR1, TC1 ; |2270| 
        BCC $C$L128,TC1 ; |2270| 
                                        ; branchcc occurs ; |2270| 
$C$DW$L$_MMC_selectCard$18$E:
$C$L120:    
$C$DW$L$_MMC_selectCard$19$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2278,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2278| 
        MOV *AR3, AR3 ; |2278| 
        MOV #0, port(*AR3(T0)) ; |2278| 
	.dwpsn	file "src/csl_mmcsd.c",line 2279,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2279| 
        MOV *AR3, AR3 ; |2279| 
        MOV port(*AR3(T0)), AR1 ; |2279| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2279| 
        AND #0xffc0, AR1, AC0 ; |2279| 
        MOV AC0, port(*AR3(T0)) ; |2279| 
	.dwpsn	file "src/csl_mmcsd.c",line 2281,column 5,is_stmt
        MOV #252, *SP(#11) ; |2281| 
	.dwpsn	file "src/csl_mmcsd.c",line 2282,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #567, AC0 ; |2282| 
        MOV *SP(#11), T0 ; |2282| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$194, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2282| 
||      MOV #0, AC1 ; |2282| 

                                        ; call occurs [#_MMC_sendCmd] ; |2282| 
        MOV T0, *SP(#8) ; |2282| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2286,column 5,is_stmt

        MOV *SP(#8), AR1 ; |2286| 
||      MOV #-15, AR2

        CMP AR2 != AR1, TC1 ; |2286| 
        BCC $C$L121,TC1 ; |2286| 
                                        ; branchcc occurs ; |2286| 
$C$DW$L$_MMC_selectCard$19$E:
	.dwpsn	file "src/csl_mmcsd.c",line 2291,column 7,is_stmt
        MOV *SP(#8), T0 ; |2291| 
        B $C$L137 ; |2291| 
                                        ; branch occurs ; |2291| 
$C$L121:    
$C$DW$L$_MMC_selectCard$21$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2295,column 5,is_stmt
        BTST #4, *SP(#8), TC1 ; |2295| 
        BCC $C$L122,!TC1 ; |2295| 
                                        ; branchcc occurs ; |2295| 
$C$DW$L$_MMC_selectCard$21$E:
$C$DW$L$_MMC_selectCard$22$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2300,column 6,is_stmt
        MOV #0, AC0 ; |2300| 
        MOV AC0, dbl(*SP(#6)) ; |2300| 
	.dwpsn	file "src/csl_mmcsd.c",line 2301,column 6,is_stmt
        B $C$L125 ; |2301| 
                                        ; branch occurs ; |2301| 
$C$DW$L$_MMC_selectCard$22$E:
$C$L122:    
$C$DW$L$_MMC_selectCard$23$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2309,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2309| 
        MOV *AR3, AR3 ; |2309| 
        MOV #0, port(*AR3(T0)) ; |2309| 
	.dwpsn	file "src/csl_mmcsd.c",line 2310,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2310| 
        MOV *AR3, AR3 ; |2310| 
        MOV port(*AR3(T0)), AR1 ; |2310| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2310| 
        AND #0xffc0, AR1, AC0 ; |2310| 
        MOV AC0, port(*AR3(T0)) ; |2310| 
	.dwpsn	file "src/csl_mmcsd.c",line 2312,column 5,is_stmt
        MOV #252, *SP(#11) ; |2312| 
	.dwpsn	file "src/csl_mmcsd.c",line 2313,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |2313| 
        MOV #1577, AC0 ; |2313| 
        MOV *SP(#11), T0 ; |2313| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$195, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |2313| 
                                        ; call occurs [#_MMC_sendCmd] ; |2313| 
        MOV T0, *SP(#8) ; |2313| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2319,column 5,is_stmt

        MOV *SP(#8), AR1 ; |2319| 
||      MOV #-10, AR2

        CMP AR2 != AR1, TC1 ; |2319| 
        BCC $C$L123,TC1 ; |2319| 
                                        ; branchcc occurs ; |2319| 
$C$DW$L$_MMC_selectCard$23$E:
$C$DW$L$_MMC_selectCard$24$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2324,column 6,is_stmt
        MOV #0, AC0 ; |2324| 
        MOV AC0, dbl(*SP(#6)) ; |2324| 
	.dwpsn	file "src/csl_mmcsd.c",line 2325,column 6,is_stmt
        B $C$L125 ; |2325| 
                                        ; branch occurs ; |2325| 
$C$DW$L$_MMC_selectCard$24$E:
$C$L123:    
$C$DW$L$_MMC_selectCard$25$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2328,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2328| 
        MOV *AR3, AR3 ; |2328| 
        MOV uns(port(*AR3(T0))), AC0 ; |2328| 
        MOV AC0, dbl(*SP(#6)) ; |2328| 
	.dwpsn	file "src/csl_mmcsd.c",line 2329,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2329| 
        MOV *AR3, AR3 ; |2329| 
        MOV dbl(*SP(#6)), AC1 ; |2329| 
        MOV uns(port(*AR3(T0))), AC0 ; |2329| 
        OR AC1 << #16, AC0 ; |2329| 
        MOV AC0, dbl(*SP(#6)) ; |2329| 
	.dwpsn	file "src/csl_mmcsd.c",line 2332,column 5,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2332| 
        BCC $C$L125,AC0 == #0 ; |2332| 
                                        ; branchcc occurs ; |2332| 
$C$DW$L$_MMC_selectCard$25$E:
$C$DW$L$_MMC_selectCard$26$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2337,column 6,is_stmt
	.dwpsn	file "src/csl_mmcsd.c",line 2340,column 5,is_stmt
        SUB #1, *SP(#10) ; |2340| 
	.dwpsn	file "src/csl_mmcsd.c",line 2341,column 5,is_stmt
        MOV *SP(#10), AR1 ; |2341| 
        BCC $C$L124,AR1 != #0 ; |2341| 
                                        ; branchcc occurs ; |2341| 
$C$DW$L$_MMC_selectCard$26$E:
	.dwpsn	file "src/csl_mmcsd.c",line 2346,column 6,is_stmt
        MOV #-10, T0
        B $C$L137 ; |2346| 
                                        ; branch occurs ; |2346| 
$C$L124:    
$C$DW$L$_MMC_selectCard$28$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2349,column 12,is_stmt
        MOV #-32513 << #16, AC0 ; |2349| 
        MOV dbl(*SP(#6)), AC1 ; |2349| 
        OR #0x8000, AC0, AC0 ; |2349| 

        MOV #-32513 << #16, AC1 ; |2349| 
||      AND AC1, AC0 ; |2349| 

        OR #0x8000, AC1, AC1 ; |2349| 
        CMPU AC0 != AC1, TC1 ; |2349| 
        BCC $C$L120,TC1 ; |2349| 
                                        ; branchcc occurs ; |2349| 
$C$DW$L$_MMC_selectCard$28$E:
$C$L125:    
$C$DW$L$_MMC_selectCard$29$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2351,column 4,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2351| 
        BCC $C$L135,AC0 == #0 ; |2351| 
                                        ; branchcc occurs ; |2351| 
$C$DW$L$_MMC_selectCard$29$E:
	.dwpsn	file "src/csl_mmcsd.c",line 2354,column 5,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2354| 
        MOV #16384 << #16, AC0 ; |2354| 
        AND AC1, AC0 ; |2354| 
        BCC $C$L126,AC0 == #0 ; |2354| 
                                        ; branchcc occurs ; |2354| 
	.dwpsn	file "src/csl_mmcsd.c",line 2359,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#26) ; |2359| 
	.dwpsn	file "src/csl_mmcsd.c",line 2360,column 5,is_stmt
        B $C$L127 ; |2360| 
                                        ; branch occurs ; |2360| 
$C$L126:    
	.dwpsn	file "src/csl_mmcsd.c",line 2366,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#26) ; |2366| 
$C$L127:    
	.dwpsn	file "src/csl_mmcsd.c",line 2369,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#18) ; |2369| 
	.dwpsn	file "src/csl_mmcsd.c",line 2370,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#4)) ; |2370| 
	.dwpsn	file "src/csl_mmcsd.c",line 2371,column 5,is_stmt
        B $C$L136 ; |2371| 
                                        ; branch occurs ; |2371| 
$C$L128:    
$C$DW$L$_MMC_selectCard$35$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2381,column 4,is_stmt
        MOV #1000, *SP(#10) ; |2381| 
	.dwpsn	file "src/csl_mmcsd.c",line 2382,column 4,is_stmt
        MOV #16639 << #16, AC0 ; |2382| 
        OR #0x8080, AC0, AC0 ; |2382| 

        MOV AC0, dbl(*SP(#4)) ; |2382| 
||      MOV #-10, T2

$C$DW$L$_MMC_selectCard$35$E:
$C$L129:    
$C$DW$L$_MMC_selectCard$36$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2390,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2390| 
        MOV *AR3, AR3 ; |2390| 
        MOV #0, port(*AR3(T0)) ; |2390| 
	.dwpsn	file "src/csl_mmcsd.c",line 2391,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2391| 
        MOV *AR3, AR3 ; |2391| 
        MOV port(*AR3(T0)), AR1 ; |2391| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2391| 
        AND #0xffc0, AR1, AC0 ; |2391| 
        MOV AC0, port(*AR3(T0)) ; |2391| 
	.dwpsn	file "src/csl_mmcsd.c",line 2393,column 5,is_stmt
        MOV #4, *SP(#11) ; |2393| 
	.dwpsn	file "src/csl_mmcsd.c",line 2394,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |2394| 
        MOV #1537, AC0 ; |2394| 
        MOV *SP(#11), T0 ; |2394| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$196, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |2394| 
                                        ; call occurs [#_MMC_sendCmd] ; |2394| 
        MOV T0, *SP(#8) ; |2394| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2398,column 5,is_stmt
        MOV *SP(#8), AR1 ; |2398| 
        CMP T2 != AR1, TC1 ; |2398| 
        BCC $C$L130,TC1 ; |2398| 
                                        ; branchcc occurs ; |2398| 
$C$DW$L$_MMC_selectCard$36$E:
	.dwpsn	file "src/csl_mmcsd.c",line 2403,column 6,is_stmt
        MOV #-10, T0
        B $C$L137 ; |2403| 
                                        ; branch occurs ; |2403| 
$C$L130:    
$C$DW$L$_MMC_selectCard$38$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2406,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2406| 
        MOV *AR3, AR3 ; |2406| 
        MOV uns(port(*AR3(T0))), AC0 ; |2406| 
        MOV AC0, dbl(*SP(#6)) ; |2406| 
	.dwpsn	file "src/csl_mmcsd.c",line 2407,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2407| 
        MOV *AR3, AR3 ; |2407| 
        MOV dbl(*SP(#6)), AC1 ; |2407| 
        MOV uns(port(*AR3(T0))), AC0 ; |2407| 
        OR AC1 << #16, AC0 ; |2407| 
        MOV AC0, dbl(*SP(#6)) ; |2407| 
	.dwpsn	file "src/csl_mmcsd.c",line 2415,column 5,is_stmt
        SUB #1, *SP(#10) ; |2415| 
	.dwpsn	file "src/csl_mmcsd.c",line 2416,column 12,is_stmt
        MOV #-32513 << #16, AC0 ; |2416| 
        OR #0x8000, AC0, AC0 ; |2416| 
        MOV dbl(*SP(#6)), AC1 ; |2416| 

        MOV #-32513 << #16, AC1 ; |2416| 
||      AND AC1, AC0 ; |2416| 

        OR #0x8000, AC1, AC1 ; |2416| 
        CMPU AC0 == AC1, TC1 ; |2416| 
        BCC $C$L131,TC1 ; |2416| 
                                        ; branchcc occurs ; |2416| 
$C$DW$L$_MMC_selectCard$38$E:
$C$DW$L$_MMC_selectCard$39$B:
        MOV *SP(#10), AR1 ; |2416| 
        BCC $C$L129,AR1 != #0 ; |2416| 
                                        ; branchcc occurs ; |2416| 
$C$DW$L$_MMC_selectCard$39$E:
$C$L131:    
$C$DW$L$_MMC_selectCard$40$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2419,column 4,is_stmt
        MOV *SP(#10), AR1 ; |2419| 
        BCC $C$L134,AR1 == #0 ; |2419| 
                                        ; branchcc occurs ; |2419| 
$C$DW$L$_MMC_selectCard$40$E:
$C$DW$L$_MMC_selectCard$41$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2421,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3(#18) ; |2421| 
	.dwpsn	file "src/csl_mmcsd.c",line 2422,column 8,is_stmt
        MOV #16384 << #16, AC0 ; |2422| 
        MOV dbl(*SP(#6)), AC1 ; |2422| 
        AND AC1, AC0 ; |2422| 
        BCC $C$L132,AC0 == #0 ; |2422| 
                                        ; branchcc occurs ; |2422| 
$C$DW$L$_MMC_selectCard$41$E:
$C$DW$L$_MMC_selectCard$42$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2427,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#27) ; |2427| 
	.dwpsn	file "src/csl_mmcsd.c",line 2428,column 5,is_stmt
        B $C$L133 ; |2428| 
                                        ; branch occurs ; |2428| 
$C$DW$L$_MMC_selectCard$42$E:
$C$L132:    
$C$DW$L$_MMC_selectCard$43$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2434,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#27) ; |2434| 
$C$DW$L$_MMC_selectCard$43$E:
$C$L133:    
$C$DW$L$_MMC_selectCard$44$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2437,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#4)) ; |2437| 
	.dwpsn	file "src/csl_mmcsd.c",line 2438,column 4,is_stmt
        B $C$L135 ; |2438| 
                                        ; branch occurs ; |2438| 
$C$DW$L$_MMC_selectCard$44$E:
$C$L134:    
$C$DW$L$_MMC_selectCard$45$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2444,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(#18) ; |2444| 
	.dwpsn	file "src/csl_mmcsd.c",line 2445,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |2445| 
$C$DW$L$_MMC_selectCard$45$E:
$C$L135:    
$C$DW$L$_MMC_selectCard$46$B:
	.dwpsn	file "src/csl_mmcsd.c",line 2193,column 36,is_stmt
        ADD #1, *SP(#9) ; |2193| 
	.dwpsn	file "src/csl_mmcsd.c",line 2193,column 21,is_stmt

        MOV *SP(#9), AR1 ; |2193| 
||      MOV #3, AR2

        CMPU AR1 < AR2, TC1 ; |2193| 
        BCC $C$L115,TC1 ; |2193| 
                                        ; branchcc occurs ; |2193| 
$C$DW$L$_MMC_selectCard$46$E:
$C$L136:    
	.dwpsn	file "src/csl_mmcsd.c",line 2450,column 2,is_stmt
        MOV #0, T0
$C$L137:    
	.dwpsn	file "src/csl_mmcsd.c",line 2451,column 1,is_stmt
        AADD #12, SP
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$198	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$198, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L115:1:1714639441")
	.dwattr $C$DW$198, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x891)
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x990)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_MMC_selectCard$9$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_MMC_selectCard$9$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_MMC_selectCard$35$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_MMC_selectCard$35$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_MMC_selectCard$40$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_MMC_selectCard$40$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_MMC_selectCard$41$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_MMC_selectCard$41$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_MMC_selectCard$42$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_MMC_selectCard$42$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_MMC_selectCard$43$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_MMC_selectCard$43$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_MMC_selectCard$18$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_MMC_selectCard$18$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_MMC_selectCard$22$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_MMC_selectCard$22$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_MMC_selectCard$24$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_MMC_selectCard$24$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_MMC_selectCard$10$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_MMC_selectCard$10$E)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_MMC_selectCard$12$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_MMC_selectCard$12$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_MMC_selectCard$13$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_MMC_selectCard$13$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_MMC_selectCard$14$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_MMC_selectCard$14$E)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_MMC_selectCard$17$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_MMC_selectCard$17$E)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_MMC_selectCard$29$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_MMC_selectCard$29$E)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_MMC_selectCard$44$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_MMC_selectCard$44$E)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_MMC_selectCard$45$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_MMC_selectCard$45$E)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_MMC_selectCard$46$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_MMC_selectCard$46$E)

$C$DW$217	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$217, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L129:2:1714639441")
	.dwattr $C$DW$217, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x950)
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x970)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_MMC_selectCard$36$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_MMC_selectCard$36$E)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_MMC_selectCard$38$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_MMC_selectCard$38$E)
$C$DW$220	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$220, DW_AT_low_pc($C$DW$L$_MMC_selectCard$39$B)
	.dwattr $C$DW$220, DW_AT_high_pc($C$DW$L$_MMC_selectCard$39$E)
	.dwendtag $C$DW$217


$C$DW$221	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$221, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L120:2:1714639441")
	.dwattr $C$DW$221, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$221, DW_AT_TI_begin_line(0x8e4)
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x92d)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_MMC_selectCard$19$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_MMC_selectCard$19$E)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_MMC_selectCard$21$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_MMC_selectCard$21$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_MMC_selectCard$23$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_MMC_selectCard$23$E)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_MMC_selectCard$25$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_MMC_selectCard$25$E)
$C$DW$226	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$226, DW_AT_low_pc($C$DW$L$_MMC_selectCard$26$B)
	.dwattr $C$DW$226, DW_AT_high_pc($C$DW$L$_MMC_selectCard$26$E)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_MMC_selectCard$28$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_MMC_selectCard$28$E)
	.dwendtag $C$DW$221

	.dwendtag $C$DW$198

	.dwattr $C$DW$180, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$180, DW_AT_TI_end_line(0x993)
	.dwattr $C$DW$180, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$180

	.sect	".text"
	.global	_MMC_sendOpCond

$C$DW$228	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_sendOpCond")
	.dwattr $C$DW$228, DW_AT_low_pc(_MMC_sendOpCond)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_MMC_sendOpCond")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$228, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x9c9)
	.dwattr $C$DW$228, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 2507,column 1,is_stmt,address _MMC_sendOpCond

	.dwfde $C$DW$CIE, _MMC_sendOpCond
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg17]
$C$DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_name("clkDivValue")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_clkDivValue")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_sendOpCond                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_sendOpCond:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("clkDivValue")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_clkDivValue")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#2) ; |2507| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2508,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2508| 

        CMPU AC1 != AC0, TC1 ; |2508| 
        BCC $C$L138,TC1 ; |2508| 
                                        ; branchcc occurs ; |2508| 
	.dwpsn	file "src/csl_mmcsd.c",line 2510,column 9,is_stmt
        MOV #-5, T0
        B $C$L142 ; |2510| 
                                        ; branch occurs ; |2510| 
$C$L138:    
	.dwpsn	file "src/csl_mmcsd.c",line 2514,column 3,is_stmt
        MOV #255, AR2 ; |2514| 
        MOV *SP(#2), AR1 ; |2514| 
        CMPU AR1 > AR2, TC1 ; |2514| 
        BCC $C$L141,TC1 ; |2514| 
                                        ; branchcc occurs ; |2514| 
	.dwpsn	file "src/csl_mmcsd.c",line 2517,column 4,is_stmt
        MOV *AR3, AR3 ; |2517| 
        MOV port(*AR3(short(#4))), AR1 ; |2517| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2517| 
        BCLR @#8, AR1 ; |2517| 
        MOV AR1, port(*AR3(short(#4))) ; |2517| 
	.dwpsn	file "src/csl_mmcsd.c",line 2518,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2518| 
        MOV port(*AR3(short(#4))), AR1 ; |2518| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2518| 
        AND #0xff00, AR1, AR2 ; |2518| 
        MOV uns(low_byte(*SP(#2))), AR1 ; |2518| 
        OR AR2, AR1 ; |2518| 
        MOV AR1, port(*AR3(short(#4))) ; |2518| 
	.dwpsn	file "src/csl_mmcsd.c",line 2520,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #2, AR2
        MOV *AR3(#18), AR1 ; |2520| 
        CMP AR2 != AR1, TC1 ; |2520| 
        BCC $C$L139,TC1 ; |2520| 
                                        ; branchcc occurs ; |2520| 
	.dwpsn	file "src/csl_mmcsd.c",line 2523,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2523| 
        MOV port(*AR3), AR1 ; |2523| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2523| 
        BCLR @#2, AR1 ; |2523| 
        MOV AR1, port(*AR3) ; |2523| 
$C$L139:    
	.dwpsn	file "src/csl_mmcsd.c",line 2526,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, AR2
        MOV *AR3(#18), AR1 ; |2526| 
        CMP AR2 != AR1, TC1 ; |2526| 
        BCC $C$L140,TC1 ; |2526| 
                                        ; branchcc occurs ; |2526| 
	.dwpsn	file "src/csl_mmcsd.c",line 2529,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2529| 
        MOV port(*AR3), AR1 ; |2529| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2529| 
        BCLR @#2, AR1 ; |2529| 
        BSET @#2, AR1 ; |2529| 
        MOV AR1, port(*AR3) ; |2529| 
$C$L140:    
	.dwpsn	file "src/csl_mmcsd.c",line 2532,column 4,is_stmt
        MOV #0, T0
        B $C$L142 ; |2532| 
                                        ; branch occurs ; |2532| 
$C$L141:    
	.dwpsn	file "src/csl_mmcsd.c",line 2536,column 4,is_stmt
        MOV #-6, T0
$C$L142:    
	.dwpsn	file "src/csl_mmcsd.c",line 2539,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$228, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x9eb)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text"
	.global	_MMC_setRca

$C$DW$234	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setRca")
	.dwattr $C$DW$234, DW_AT_low_pc(_MMC_setRca)
	.dwattr $C$DW$234, DW_AT_high_pc(0x00)
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_MMC_setRca")
	.dwattr $C$DW$234, DW_AT_external
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$234, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$234, DW_AT_TI_begin_line(0xa31)
	.dwattr $C$DW$234, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$234, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd.c",line 2612,column 1,is_stmt,address _MMC_setRca

	.dwfde $C$DW$CIE, _MMC_setRca
$C$DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg17]
$C$DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg19]
$C$DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rCardAddr")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_rCardAddr")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_setRca                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setRca:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardObj")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_pMmcCardObj")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("rCardAddr")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_rCardAddr")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("setRcaCmd")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_setRcaCmd")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |2612| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2617,column 5,is_stmt
        MOV #0, *SP(#5) ; |2617| 
	.dwpsn	file "src/csl_mmcsd.c",line 2619,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2619| 

        CMPU AC1 != AC0, TC1 ; |2619| 
        BCC $C$L143,TC1 ; |2619| 
                                        ; branchcc occurs ; |2619| 
	.dwpsn	file "src/csl_mmcsd.c",line 2621,column 9,is_stmt
        MOV #-5, T0
        B $C$L147 ; |2621| 
                                        ; branch occurs ; |2621| 
$C$L143:    
	.dwpsn	file "src/csl_mmcsd.c",line 2625,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |2625| 
        BCC $C$L144,TC1 ; |2625| 
                                        ; branchcc occurs ; |2625| 
	.dwpsn	file "src/csl_mmcsd.c",line 2627,column 13,is_stmt
        MOV #-6, T0
        B $C$L147 ; |2627| 
                                        ; branch occurs ; |2627| 
$C$L144:    
	.dwpsn	file "src/csl_mmcsd.c",line 2631,column 10,is_stmt
        AND #0x7fff, *SP(#5) ; |2631| 
	.dwpsn	file "src/csl_mmcsd.c",line 2632,column 10,is_stmt
        AND #0xbfff, *SP(#5) ; |2632| 
	.dwpsn	file "src/csl_mmcsd.c",line 2633,column 10,is_stmt
        AND #0xdfff, *SP(#5) ; |2633| 
	.dwpsn	file "src/csl_mmcsd.c",line 2634,column 10,is_stmt
        AND #0xefff, *SP(#5) ; |2634| 
	.dwpsn	file "src/csl_mmcsd.c",line 2635,column 10,is_stmt
        AND #0xf7ff, *SP(#5) ; |2635| 
	.dwpsn	file "src/csl_mmcsd.c",line 2637,column 10,is_stmt
        MOV *SP(#5), AR1 ; |2637| 
        AND #0xf9ff, AR1, AC0 ; |2637| 
        BSET @#9, AC0 ; |2637| 
        MOV AC0, *SP(#5) ; |2637| 
	.dwpsn	file "src/csl_mmcsd.c",line 2638,column 10,is_stmt
        AND #0xfeff, *SP(#5) ; |2638| 
	.dwpsn	file "src/csl_mmcsd.c",line 2639,column 13,is_stmt
        AND #0xff7f, *SP(#5) ; |2639| 
	.dwpsn	file "src/csl_mmcsd.c",line 2640,column 10,is_stmt
        MOV *SP(#5), AR1 ; |2640| 
        AND #0xffc0, AR1, AR1 ; |2640| 
        OR #0x0003, AR1, AR1 ; |2640| 
        MOV AR1, *SP(#5) ; |2640| 
	.dwpsn	file "src/csl_mmcsd.c",line 2642,column 10,is_stmt
        MOV *SP(#4), AR1 ; |2642| 
        MOV AR1, HI(AC0) ; |2642| 
        MOV AC0, dbl(*SP(#8)) ; |2642| 
	.dwpsn	file "src/csl_mmcsd.c",line 2643,column 10,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |2643| 
        MOV AC0, dbl(*SP(#8)) ; |2643| 
	.dwpsn	file "src/csl_mmcsd.c",line 2645,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#8)), AC1 ; |2645| 
        MOV uns(*SP(#5)), AC0 ; |2645| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$244, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2645| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |2645| 
        MOV T0, *SP(#6) ; |2645| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2649,column 4,is_stmt

        MOV *SP(#6), AR1 ; |2649| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |2649| 
        BCC $C$L145,TC1 ; |2649| 
                                        ; branchcc occurs ; |2649| 

        MOV #-15, AR2
||      MOV *SP(#6), AR1 ; |2649| 

        CMP AR2 != AR1, TC1 ; |2649| 
        BCC $C$L146,TC1 ; |2649| 
                                        ; branchcc occurs ; |2649| 
$C$L145:    
	.dwpsn	file "src/csl_mmcsd.c",line 2652,column 5,is_stmt
        MOV *SP(#6), T0 ; |2652| 
        B $C$L147 ; |2652| 
                                        ; branch occurs ; |2652| 
$C$L146:    
	.dwpsn	file "src/csl_mmcsd.c",line 2655,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4), AR1 ; |2655| 
        MOV AR1, *AR3 ; |2655| 
	.dwpsn	file "src/csl_mmcsd.c",line 2656,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_mmcsd.c",line 2658,column 4,is_stmt
        MOV #0, T0
$C$L147:    
	.dwpsn	file "src/csl_mmcsd.c",line 2661,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$234, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$234, DW_AT_TI_end_line(0xa65)
	.dwattr $C$DW$234, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$234

	.sect	".text"
	.global	_SD_sendRca

$C$DW$246	.dwtag  DW_TAG_subprogram, DW_AT_name("SD_sendRca")
	.dwattr $C$DW$246, DW_AT_low_pc(_SD_sendRca)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_SD_sendRca")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$246, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0xaab)
	.dwattr $C$DW$246, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 2734,column 1,is_stmt,address _SD_sendRca

	.dwfde $C$DW$CIE, _SD_sendRca
$C$DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg17]
$C$DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdCardObj")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_pSdCardObj")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg19]
$C$DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pRCardAddr")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_pRCardAddr")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: SD_sendRca                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SD_sendRca:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("pSdCardObj")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_pSdCardObj")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("pRCardAddr")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_pRCardAddr")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("sendRcaCmd")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_sendRcaCmd")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2738,column 5,is_stmt
        MOV #0, *SP(#6) ; |2738| 
	.dwpsn	file "src/csl_mmcsd.c",line 2740,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2740| 

        CMPU AC1 != AC0, TC1 ; |2740| 
        BCC $C$L148,TC1 ; |2740| 
                                        ; branchcc occurs ; |2740| 
	.dwpsn	file "src/csl_mmcsd.c",line 2742,column 9,is_stmt
        MOV #-5, T0
        B $C$L153 ; |2742| 
                                        ; branch occurs ; |2742| 
$C$L148:    
	.dwpsn	file "src/csl_mmcsd.c",line 2746,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |2746| 
        BCC $C$L149,TC1 ; |2746| 
                                        ; branchcc occurs ; |2746| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |2746| 
        BCC $C$L150,TC1 ; |2746| 
                                        ; branchcc occurs ; |2746| 
$C$L149:    
	.dwpsn	file "src/csl_mmcsd.c",line 2748,column 13,is_stmt
        MOV #-6, T0
        B $C$L153 ; |2748| 
                                        ; branch occurs ; |2748| 
$C$L150:    
	.dwpsn	file "src/csl_mmcsd.c",line 2753,column 10,is_stmt
        AND #0x7fff, *SP(#6) ; |2753| 
	.dwpsn	file "src/csl_mmcsd.c",line 2754,column 10,is_stmt
        AND #0xbfff, *SP(#6) ; |2754| 
	.dwpsn	file "src/csl_mmcsd.c",line 2755,column 10,is_stmt
        AND #0xdfff, *SP(#6) ; |2755| 
	.dwpsn	file "src/csl_mmcsd.c",line 2756,column 10,is_stmt
        AND #0xefff, *SP(#6) ; |2756| 
	.dwpsn	file "src/csl_mmcsd.c",line 2757,column 10,is_stmt
        AND #0xf7ff, *SP(#6) ; |2757| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2759,column 4,is_stmt
        MOV *SP(#6), AR1 ; |2759| 
        AND #0xf9ff, AR1, AC0 ; |2759| 
        BSET @#9, AC0 ; |2759| 
        MOV AC0, *SP(#6) ; |2759| 
	.dwpsn	file "src/csl_mmcsd.c",line 2760,column 10,is_stmt
        AND #0xfeff, *SP(#6) ; |2760| 
	.dwpsn	file "src/csl_mmcsd.c",line 2761,column 13,is_stmt
        AND #0xff7f, *SP(#6) ; |2761| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2762,column 10,is_stmt
        MOV *SP(#6), AR1 ; |2762| 
        AND #0xffc0, AR1, AR1 ; |2762| 
        OR #0x0003, AR1, AR1 ; |2762| 
        MOV AR1, *SP(#6) ; |2762| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2764,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#6)), AC0 ; |2764| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$255, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2764| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |2764| 
        MOV T0, *SP(#7) ; |2764| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2768,column 4,is_stmt

        MOV *SP(#7), AR1 ; |2768| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |2768| 
        BCC $C$L151,TC1 ; |2768| 
                                        ; branchcc occurs ; |2768| 

        MOV #-15, AR2
||      MOV *SP(#7), AR1 ; |2768| 

        CMP AR2 != AR1, TC1 ; |2768| 
        BCC $C$L152,TC1 ; |2768| 
                                        ; branchcc occurs ; |2768| 
$C$L151:    
	.dwpsn	file "src/csl_mmcsd.c",line 2771,column 5,is_stmt
        MOV *SP(#7), T0 ; |2771| 
        B $C$L153 ; |2771| 
                                        ; branch occurs ; |2771| 
$C$L152:    
	.dwpsn	file "src/csl_mmcsd.c",line 2774,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2774| 
        MOV *AR3, AR3 ; |2774| 
        MOV port(*AR3(T0)), AR1 ; |2774| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3 ; |2774| 
	.dwpsn	file "src/csl_mmcsd.c",line 2775,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, *AR2 ; |2775| 
	.dwpsn	file "src/csl_mmcsd.c",line 2776,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_mmcsd.c",line 2778,column 13,is_stmt
        MOV #0, T0
$C$L153:    
	.dwpsn	file "src/csl_mmcsd.c",line 2781,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$246, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0xadd)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text"
	.global	_MMC_sendAllCID

$C$DW$257	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_sendAllCID")
	.dwattr $C$DW$257, DW_AT_low_pc(_MMC_sendAllCID)
	.dwattr $C$DW$257, DW_AT_high_pc(0x00)
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_MMC_sendAllCID")
	.dwattr $C$DW$257, DW_AT_external
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$257, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$257, DW_AT_TI_begin_line(0xb1c)
	.dwattr $C$DW$257, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$257, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_mmcsd.c",line 2846,column 1,is_stmt,address _MMC_sendAllCID

	.dwfde $C$DW$CIE, _MMC_sendAllCID
$C$DW$258	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg17]
$C$DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardIdObj")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_pMmcCardIdObj")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_sendAllCID                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_sendAllCID:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardIdObj")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_pMmcCardIdObj")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("mmcCid")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_mmcCid")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2850,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L154,AC0 == #0 ; |2850| 
                                        ; branchcc occurs ; |2850| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L156,AC0 != #0 ; |2850| 
                                        ; branchcc occurs ; |2850| 
	.dwpsn	file "src/csl_mmcsd.c",line 2853,column 5,is_stmt
$C$L154:    
	.dwpsn	file "src/csl_mmcsd.c",line 2856,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2856| 

        CMPU AC1 != AC0, TC1 ; |2856| 
        BCC $C$L155,TC1 ; |2856| 
                                        ; branchcc occurs ; |2856| 
	.dwpsn	file "src/csl_mmcsd.c",line 2858,column 13,is_stmt
        MOV #-5, T0
        B $C$L161 ; |2858| 
                                        ; branch occurs ; |2858| 
$C$L155:    
	.dwpsn	file "src/csl_mmcsd.c",line 2862,column 13,is_stmt
        MOV #-6, T0
        B $C$L161 ; |2862| 
                                        ; branch occurs ; |2862| 
$C$L156:    
	.dwpsn	file "src/csl_mmcsd.c",line 2867,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2867| 
        MOV *AR3, AR3 ; |2867| 
        MOV #0, port(*AR3(T0)) ; |2867| 
	.dwpsn	file "src/csl_mmcsd.c",line 2868,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |2868| 
        MOV *AR3, AR3 ; |2868| 
        MOV port(*AR3(T0)), AR1 ; |2868| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2868| 
        AND #0xffc0, AR1, AC0 ; |2868| 
        MOV AC0, port(*AR3(T0)) ; |2868| 
	.dwpsn	file "src/csl_mmcsd.c",line 2870,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0

        MOV #1026, AC0 ; |2870| 
||      MOV #0, AC1 ; |2870| 

$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$264, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |2870| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |2870| 
        MOV T0, *SP(#4) ; |2870| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 2874,column 2,is_stmt

        MOV *SP(#4), AR1 ; |2874| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |2874| 
        BCC $C$L157,TC1 ; |2874| 
                                        ; branchcc occurs ; |2874| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |2874| 

        CMP AR2 != AR1, TC1 ; |2874| 
        BCC $C$L158,TC1 ; |2874| 
                                        ; branchcc occurs ; |2874| 
$C$L157:    
	.dwpsn	file "src/csl_mmcsd.c",line 2877,column 3,is_stmt
        MOV *SP(#4), T0 ; |2877| 
        B $C$L161 ; |2877| 
                                        ; branch occurs ; |2877| 
$C$L158:    
	.dwpsn	file "src/csl_mmcsd.c",line 2881,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |2881| 
        MOV *AR3, AR3 ; |2881| 
        MOV port(*AR3(T0)), AR1 ; |2881| 
        MOV AR1, *SP(#12) ; |2881| 
	.dwpsn	file "src/csl_mmcsd.c",line 2882,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |2882| 
        MOV *AR3, AR3 ; |2882| 
        MOV port(*AR3(T0)), AR1 ; |2882| 
        MOV AR1, *SP(#11) ; |2882| 
	.dwpsn	file "src/csl_mmcsd.c",line 2883,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |2883| 
        MOV *AR3, AR3 ; |2883| 
        MOV port(*AR3(T0)), AR1 ; |2883| 
        MOV AR1, *SP(#10) ; |2883| 
	.dwpsn	file "src/csl_mmcsd.c",line 2884,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |2884| 
        MOV *AR3, AR3 ; |2884| 
        MOV port(*AR3(T0)), AR1 ; |2884| 
        MOV AR1, *SP(#9) ; |2884| 
	.dwpsn	file "src/csl_mmcsd.c",line 2885,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |2885| 
        MOV *AR3, AR3 ; |2885| 
        MOV port(*AR3(T0)), AR1 ; |2885| 
        MOV AR1, *SP(#8) ; |2885| 
	.dwpsn	file "src/csl_mmcsd.c",line 2886,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |2886| 
        MOV *AR3, AR3 ; |2886| 
        MOV port(*AR3(T0)), AR1 ; |2886| 
        MOV AR1, *SP(#7) ; |2886| 
	.dwpsn	file "src/csl_mmcsd.c",line 2887,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2887| 
        MOV *AR3, AR3 ; |2887| 
        MOV port(*AR3(T0)), AR1 ; |2887| 
        MOV AR1, *SP(#6) ; |2887| 
	.dwpsn	file "src/csl_mmcsd.c",line 2888,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2888| 
        MOV *AR3, AR3 ; |2888| 
        MOV port(*AR3(T0)), AR1 ; |2888| 
        MOV AR1, *SP(#5) ; |2888| 
	.dwpsn	file "src/csl_mmcsd.c",line 2890,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMAR *SP(#5), XAR3

        RPT #7    ; |2890| 
||      AADD #45, AR2 ; |2890| 

                                            ; loop starts ; |2890| 
$C$L159:    
$C$DW$L$_MMC_sendAllCID$12$B:
            MOV *AR3+, *AR2+ ; |2890| 
                                        ; loop ends ; |2890| 
$C$DW$L$_MMC_sendAllCID$12$E:
$C$L160:    
	.dwpsn	file "src/csl_mmcsd.c",line 2892,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#5))), AR1 ; |2892| 
        AND #0x00ff, AR1, AC0 ; |2892| 
        MOV AC0, *AR3 ; |2892| 
	.dwpsn	file "src/csl_mmcsd.c",line 2894,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), AC0 ; |2894| 
        MOV *SP(#5), AC1 ; |2894| 
        BFXTR #0xff00, AC0, AC0 ; |2894| 
        OR AC1 << #8, AC0 ; |2894| 
        MOV AC0, *AR3(short(#1)) ; |2894| 
	.dwpsn	file "src/csl_mmcsd.c",line 2897,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#9))), AR1 ; |2897| 
        AND #0x00ff, AR1, AC0 ; |2897| 
        MOV AC0, *AR3(short(#7)) ; |2897| 
	.dwpsn	file "src/csl_mmcsd.c",line 2898,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#8))), AR1 ; |2898| 
        MOV AR1, *AR3(short(#6)) ; |2898| 
	.dwpsn	file "src/csl_mmcsd.c",line 2899,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#8))), AR1 ; |2899| 
        AND #0x00ff, AR1, AC0 ; |2899| 
        MOV AC0, *AR3(short(#5)) ; |2899| 
	.dwpsn	file "src/csl_mmcsd.c",line 2900,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#7))), AR1 ; |2900| 
        MOV AR1, *AR3(short(#4)) ; |2900| 
	.dwpsn	file "src/csl_mmcsd.c",line 2901,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#7))), AR1 ; |2901| 
        AND #0x00ff, AR1, AC0 ; |2901| 
        MOV AC0, *AR3(short(#3)) ; |2901| 
	.dwpsn	file "src/csl_mmcsd.c",line 2902,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#6))), AR1 ; |2902| 
        MOV AR1, *AR3(short(#2)) ; |2902| 
	.dwpsn	file "src/csl_mmcsd.c",line 2904,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR1 ; |2904| 
        MOV AR1, HI(AC0) ; |2904| 
        OR *SP(#11), AC0, AC0 ; |2904| 
        MOV AC0, dbl(*AR3(#10)) ; |2904| 
	.dwpsn	file "src/csl_mmcsd.c",line 2906,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AC0 ; |2906| 
        BFXTR #0xf000, AC0, AR1 ; |2906| 
        MOV AR1, *AR3(#12) ; |2906| 
	.dwpsn	file "src/csl_mmcsd.c",line 2907,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AC0 ; |2907| 
        BFXTR #0x0f00, AC0, AR1 ; |2907| 
        ADD #1997, AR1, AR1 ; |2907| 
        MOV AR1, *AR3(#13) ; |2907| 
	.dwpsn	file "src/csl_mmcsd.c",line 2908,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AR1 ; |2908| 
        AND #0x00fe, AR1, AR1 ; |2908| 
        SFTL AR1, #-1 ; |2908| 
        MOV AR1, *AR3(#14) ; |2908| 
	.dwpsn	file "src/csl_mmcsd.c",line 2910,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(#20))
	.dwpsn	file "src/csl_mmcsd.c",line 2912,column 2,is_stmt
        MOV #0, T0
$C$L161:    
	.dwpsn	file "src/csl_mmcsd.c",line 2913,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$266	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$266, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L159:1:1714639441")
	.dwattr $C$DW$266, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$266, DW_AT_TI_begin_line(0xb4a)
	.dwattr $C$DW$266, DW_AT_TI_end_line(0xb4a)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_MMC_sendAllCID$12$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_MMC_sendAllCID$12$E)
	.dwendtag $C$DW$266

	.dwattr $C$DW$257, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$257, DW_AT_TI_end_line(0xb61)
	.dwattr $C$DW$257, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$257

	.sect	".text"
	.global	_SD_sendAllCID

$C$DW$268	.dwtag  DW_TAG_subprogram, DW_AT_name("SD_sendAllCID")
	.dwattr $C$DW$268, DW_AT_low_pc(_SD_sendAllCID)
	.dwattr $C$DW$268, DW_AT_high_pc(0x00)
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_SD_sendAllCID")
	.dwattr $C$DW$268, DW_AT_external
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$268, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$268, DW_AT_TI_begin_line(0xba1)
	.dwattr $C$DW$268, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$268, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_mmcsd.c",line 2979,column 1,is_stmt,address _SD_sendAllCID

	.dwfde $C$DW$CIE, _SD_sendAllCID
$C$DW$269	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg17]
$C$DW$270	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdCardIdObj")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_pSdCardIdObj")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SD_sendAllCID                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SD_sendAllCID:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("pSdCardIdObj")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_pSdCardIdObj")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("sdCid")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_sdCid")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 2983,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L162,AC0 == #0 ; |2983| 
                                        ; branchcc occurs ; |2983| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L164,AC0 != #0 ; |2983| 
                                        ; branchcc occurs ; |2983| 
	.dwpsn	file "src/csl_mmcsd.c",line 2986,column 5,is_stmt
$C$L162:    
	.dwpsn	file "src/csl_mmcsd.c",line 2989,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2989| 

        CMPU AC1 != AC0, TC1 ; |2989| 
        BCC $C$L163,TC1 ; |2989| 
                                        ; branchcc occurs ; |2989| 
	.dwpsn	file "src/csl_mmcsd.c",line 2991,column 13,is_stmt
        MOV #-5, T0
        B $C$L169 ; |2991| 
                                        ; branch occurs ; |2991| 
$C$L163:    
	.dwpsn	file "src/csl_mmcsd.c",line 2995,column 13,is_stmt
        MOV #-6, T0
        B $C$L169 ; |2995| 
                                        ; branch occurs ; |2995| 
$C$L164:    
	.dwpsn	file "src/csl_mmcsd.c",line 3000,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3000| 
        MOV *AR3, AR3 ; |3000| 
        MOV #0, port(*AR3(T0)) ; |3000| 
	.dwpsn	file "src/csl_mmcsd.c",line 3001,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3001| 
        MOV *AR3, AR3 ; |3001| 
        MOV port(*AR3(T0)), AR1 ; |3001| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3001| 
        AND #0xffc0, AR1, AC0 ; |3001| 
        MOV AC0, port(*AR3(T0)) ; |3001| 
	.dwpsn	file "src/csl_mmcsd.c",line 3003,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0

        MOV #1026, AC0 ; |3003| 
||      MOV #0, AC1 ; |3003| 

$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$275, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3003| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3003| 
        MOV T0, *SP(#4) ; |3003| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3007,column 2,is_stmt

        MOV *SP(#4), AR1 ; |3007| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3007| 
        BCC $C$L165,TC1 ; |3007| 
                                        ; branchcc occurs ; |3007| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |3007| 

        CMP AR2 != AR1, TC1 ; |3007| 
        BCC $C$L166,TC1 ; |3007| 
                                        ; branchcc occurs ; |3007| 
$C$L165:    
	.dwpsn	file "src/csl_mmcsd.c",line 3010,column 3,is_stmt
        MOV *SP(#4), T0 ; |3010| 
        B $C$L169 ; |3010| 
                                        ; branch occurs ; |3010| 
$C$L166:    
	.dwpsn	file "src/csl_mmcsd.c",line 3014,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |3014| 
        MOV *AR3, AR3 ; |3014| 
        MOV port(*AR3(T0)), AR1 ; |3014| 
        MOV AR1, *SP(#12) ; |3014| 
	.dwpsn	file "src/csl_mmcsd.c",line 3015,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |3015| 
        MOV *AR3, AR3 ; |3015| 
        MOV port(*AR3(T0)), AR1 ; |3015| 
        MOV AR1, *SP(#11) ; |3015| 
	.dwpsn	file "src/csl_mmcsd.c",line 3016,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |3016| 
        MOV *AR3, AR3 ; |3016| 
        MOV port(*AR3(T0)), AR1 ; |3016| 
        MOV AR1, *SP(#10) ; |3016| 
	.dwpsn	file "src/csl_mmcsd.c",line 3017,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |3017| 
        MOV *AR3, AR3 ; |3017| 
        MOV port(*AR3(T0)), AR1 ; |3017| 
        MOV AR1, *SP(#9) ; |3017| 
	.dwpsn	file "src/csl_mmcsd.c",line 3018,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |3018| 
        MOV *AR3, AR3 ; |3018| 
        MOV port(*AR3(T0)), AR1 ; |3018| 
        MOV AR1, *SP(#8) ; |3018| 
	.dwpsn	file "src/csl_mmcsd.c",line 3019,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |3019| 
        MOV *AR3, AR3 ; |3019| 
        MOV port(*AR3(T0)), AR1 ; |3019| 
        MOV AR1, *SP(#7) ; |3019| 
	.dwpsn	file "src/csl_mmcsd.c",line 3020,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |3020| 
        MOV *AR3, AR3 ; |3020| 
        MOV port(*AR3(T0)), AR1 ; |3020| 
        MOV AR1, *SP(#6) ; |3020| 
	.dwpsn	file "src/csl_mmcsd.c",line 3021,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3021| 
        MOV *AR3, AR3 ; |3021| 
        MOV port(*AR3(T0)), AR1 ; |3021| 
        MOV AR1, *SP(#5) ; |3021| 
	.dwpsn	file "src/csl_mmcsd.c",line 3023,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMAR *SP(#5), XAR3

        RPT #7    ; |3023| 
||      AADD #45, AR2 ; |3023| 

                                            ; loop starts ; |3023| 
$C$L167:    
$C$DW$L$_SD_sendAllCID$12$B:
            MOV *AR3+, *AR2+ ; |3023| 
                                        ; loop ends ; |3023| 
$C$DW$L$_SD_sendAllCID$12$E:
$C$L168:    
	.dwpsn	file "src/csl_mmcsd.c",line 3025,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), AR1 ; |3025| 
        AND #0xff00, AR1, AC0 ; |3025| 
        BFXTR #0xff00, AC0, AR1 ; |3025| 
        MOV AR1, *AR3 ; |3025| 
	.dwpsn	file "src/csl_mmcsd.c",line 3027,column 5,is_stmt
        MOV *SP(#6), AR1 ; |3027| 
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#5), AC1 ; |3027| 
        AND #0xff00, AR1, AC0 ; |3027| 
        BFXTR #0xff00, AC0, AC0 ; |3027| 
        OR AC1 << #8, AC0 ; |3027| 
        MOV AC0, *AR3(short(#1)) ; |3027| 
	.dwpsn	file "src/csl_mmcsd.c",line 3030,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#7)) ; |3030| 
	.dwpsn	file "src/csl_mmcsd.c",line 3031,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#8))), AR1 ; |3031| 
        MOV AR1, *AR3(short(#6)) ; |3031| 
	.dwpsn	file "src/csl_mmcsd.c",line 3032,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#8))), AR1 ; |3032| 
        MOV AR1, *AR3(short(#5)) ; |3032| 
	.dwpsn	file "src/csl_mmcsd.c",line 3033,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#7))), AR1 ; |3033| 
        MOV AR1, *AR3(short(#4)) ; |3033| 
	.dwpsn	file "src/csl_mmcsd.c",line 3034,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#7))), AR1 ; |3034| 
        MOV AR1, *AR3(short(#3)) ; |3034| 
	.dwpsn	file "src/csl_mmcsd.c",line 3035,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#6))), AR1 ; |3035| 
        MOV AR1, *AR3(short(#2)) ; |3035| 
	.dwpsn	file "src/csl_mmcsd.c",line 3037,column 5,is_stmt
        MOV uns(low_byte(*SP(#9))), AR1 ; |3037| 
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*SP(#10)), AC1 ; |3037| 

        MOV uns(high_byte(*SP(#11))), AR1 ; |3037| 
||      MOV AR1, HI(AC0) ; |3037| 

        AND #0xffff, AR1, AC1 ; |3037| 
||      OR AC1 << #8, AC0 ; |3037| 

        OR AC0, AC1 ; |3037| 
        MOV AC1, dbl(*AR3(#10)) ; |3037| 
	.dwpsn	file "src/csl_mmcsd.c",line 3041,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#12))), AR1 ; |3041| 
        AND #0x000f, AR1, AC0 ; |3041| 
        MOV AC0, *AR3(#12) ; |3041| 
	.dwpsn	file "src/csl_mmcsd.c",line 3042,column 5,is_stmt
        MOV *SP(#11), AR1 ; |3042| 
        MOV *SP(#12), AC0 ; |3042| 
        MOV dbl(*SP(#2)), XAR3

        AND #0x000f, AR1, AC0 ; |3042| 
||      BFXTR #0xf000, AC0, AR2 ; |3042| 

        SFTL AC0, #4, AC0 ; |3042| 
        ADD #2000, AC0, AR1 ; |3042| 
        OR AR2, AR1 ; |3042| 
        MOV AR1, *AR3(#13) ; |3042| 
	.dwpsn	file "src/csl_mmcsd.c",line 3045,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AR1 ; |3045| 
        AND #0x00fe, AR1, AR1 ; |3045| 
        SFTL AR1, #-1 ; |3045| 
        MOV AR1, *AR3(#14) ; |3045| 
	.dwpsn	file "src/csl_mmcsd.c",line 3047,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(#20))
	.dwpsn	file "src/csl_mmcsd.c",line 3049,column 2,is_stmt
        MOV #0, T0
$C$L169:    
	.dwpsn	file "src/csl_mmcsd.c",line 3050,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$277	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$277, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L167:1:1714639441")
	.dwattr $C$DW$277, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$277, DW_AT_TI_begin_line(0xbcf)
	.dwattr $C$DW$277, DW_AT_TI_end_line(0xbcf)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_SD_sendAllCID$12$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_SD_sendAllCID$12$E)
	.dwendtag $C$DW$277

	.dwattr $C$DW$268, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$268, DW_AT_TI_end_line(0xbea)
	.dwattr $C$DW$268, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$268

	.sect	".text"
	.global	_MMC_getCardCsd

$C$DW$279	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getCardCsd")
	.dwattr $C$DW$279, DW_AT_low_pc(_MMC_getCardCsd)
	.dwattr $C$DW$279, DW_AT_high_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_MMC_getCardCsd")
	.dwattr $C$DW$279, DW_AT_external
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$279, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$279, DW_AT_TI_begin_line(0xc30)
	.dwattr $C$DW$279, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$279, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_mmcsd.c",line 3122,column 1,is_stmt,address _MMC_getCardCsd

	.dwfde $C$DW$CIE, _MMC_getCardCsd
$C$DW$280	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg17]
$C$DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcCardCsdObj")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_pMmcCardCsdObj")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getCardCsd                                               *
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
_MMC_getCardCsd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("pMmcCardCsdObj")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_pMmcCardCsdObj")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("multVal")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_multVal")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("blockNR")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_blockNR")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("mmcCsd")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_mmcCsd")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("eventFlags")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_eventFlags")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 21]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 3132,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L170,AC0 == #0 ; |3132| 
                                        ; branchcc occurs ; |3132| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L172,AC0 != #0 ; |3132| 
                                        ; branchcc occurs ; |3132| 
	.dwpsn	file "src/csl_mmcsd.c",line 3135,column 5,is_stmt
$C$L170:    
	.dwpsn	file "src/csl_mmcsd.c",line 3138,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3138| 

        CMPU AC1 != AC0, TC1 ; |3138| 
        BCC $C$L171,TC1 ; |3138| 
                                        ; branchcc occurs ; |3138| 
	.dwpsn	file "src/csl_mmcsd.c",line 3140,column 13,is_stmt
        MOV #-5, T0
        B $C$L183 ; |3140| 
                                        ; branch occurs ; |3140| 
$C$L171:    
	.dwpsn	file "src/csl_mmcsd.c",line 3144,column 13,is_stmt
        MOV #-6, T0
        B $C$L183 ; |3144| 
                                        ; branch occurs ; |3144| 
$C$L172:    
	.dwpsn	file "src/csl_mmcsd.c",line 3148,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |3148| 
        MOV AC0, dbl(*SP(#6)) ; |3148| 
	.dwpsn	file "src/csl_mmcsd.c",line 3149,column 2,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |3149| 
        SFTL AC0, #16, AC0 ; |3149| 
        MOV AC0, dbl(*SP(#6)) ; |3149| 
	.dwpsn	file "src/csl_mmcsd.c",line 3152,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3152| 
        MOV *AR3, AR3 ; |3152| 
        MOV #0, port(*AR3(T0)) ; |3152| 
	.dwpsn	file "src/csl_mmcsd.c",line 3153,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3153| 
        MOV *AR3, AR3 ; |3153| 
        MOV port(*AR3(T0)), AR1 ; |3153| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3153| 
        AND #0xffc0, AR1, AC0 ; |3153| 
        MOV AC0, port(*AR3(T0)) ; |3153| 
	.dwpsn	file "src/csl_mmcsd.c",line 3155,column 2,is_stmt
        MOV #4, *SP(#21) ; |3155| 
	.dwpsn	file "src/csl_mmcsd.c",line 3156,column 2,is_stmt
        MOV #1033, AC0 ; |3156| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC1 ; |3156| 
        MOV *SP(#21), T0 ; |3156| 
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$291, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |3156| 
                                        ; call occurs [#_MMC_sendCmd] ; |3156| 
        MOV T0, *SP(#12) ; |3156| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3160,column 2,is_stmt

        MOV *SP(#12), AR1 ; |3160| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3160| 
        BCC $C$L173,TC1 ; |3160| 
                                        ; branchcc occurs ; |3160| 

        MOV #-15, AR2
||      MOV *SP(#12), AR1 ; |3160| 

        CMP AR2 != AR1, TC1 ; |3160| 
        BCC $C$L174,TC1 ; |3160| 
                                        ; branchcc occurs ; |3160| 
$C$L173:    
	.dwpsn	file "src/csl_mmcsd.c",line 3164,column 3,is_stmt
        MOV *SP(#12), T0 ; |3164| 
        B $C$L183 ; |3164| 
                                        ; branch occurs ; |3164| 
$C$L174:    
	.dwpsn	file "src/csl_mmcsd.c",line 3168,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |3168| 
        MOV *AR3, AR3 ; |3168| 
        MOV port(*AR3(T0)), AR1 ; |3168| 
        MOV AR1, *SP(#20) ; |3168| 
	.dwpsn	file "src/csl_mmcsd.c",line 3169,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |3169| 
        MOV *AR3, AR3 ; |3169| 
        MOV port(*AR3(T0)), AR1 ; |3169| 
        MOV AR1, *SP(#19) ; |3169| 
	.dwpsn	file "src/csl_mmcsd.c",line 3170,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |3170| 
        MOV *AR3, AR3 ; |3170| 
        MOV port(*AR3(T0)), AR1 ; |3170| 
        MOV AR1, *SP(#18) ; |3170| 
	.dwpsn	file "src/csl_mmcsd.c",line 3171,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |3171| 
        MOV *AR3, AR3 ; |3171| 
        MOV port(*AR3(T0)), AR1 ; |3171| 
        MOV AR1, *SP(#17) ; |3171| 
	.dwpsn	file "src/csl_mmcsd.c",line 3172,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |3172| 
        MOV *AR3, AR3 ; |3172| 
        MOV port(*AR3(T0)), AR1 ; |3172| 
        MOV AR1, *SP(#16) ; |3172| 
	.dwpsn	file "src/csl_mmcsd.c",line 3173,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |3173| 
        MOV *AR3, AR3 ; |3173| 
        MOV port(*AR3(T0)), AR1 ; |3173| 
        MOV AR1, *SP(#15) ; |3173| 
	.dwpsn	file "src/csl_mmcsd.c",line 3174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |3174| 
        MOV *AR3, AR3 ; |3174| 
        MOV port(*AR3(T0)), AR1 ; |3174| 
        MOV AR1, *SP(#14) ; |3174| 
	.dwpsn	file "src/csl_mmcsd.c",line 3175,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3175| 
        MOV *AR3, AR3 ; |3175| 
        MOV port(*AR3(T0)), AR1 ; |3175| 
        MOV AR1, *SP(#13) ; |3175| 
	.dwpsn	file "src/csl_mmcsd.c",line 3177,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMAR *SP(#13), XAR3

        RPT #7    ; |3177| 
||      AADD #53, AR2 ; |3177| 

                                            ; loop starts ; |3177| 
$C$L175:    
$C$DW$L$_MMC_getCardCsd$12$B:
            MOV *AR3+, *AR2+ ; |3177| 
                                        ; loop ends ; |3177| 
$C$DW$L$_MMC_getCardCsd$12$E:
$C$L176:    
	.dwpsn	file "src/csl_mmcsd.c",line 3180,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3180| 
        MOV #0, port(*AR3(T0)) ; |3180| 
	.dwpsn	file "src/csl_mmcsd.c",line 3181,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3181| 
        MOV *AR3, AR3 ; |3181| 
        MOV port(*AR3(T0)), AR1 ; |3181| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3181| 
        AND #0xffc0, AR1, AC0 ; |3181| 
        MOV AC0, port(*AR3(T0)) ; |3181| 
	.dwpsn	file "src/csl_mmcsd.c",line 3183,column 2,is_stmt
        MOV #6, *SP(#21) ; |3183| 
	.dwpsn	file "src/csl_mmcsd.c",line 3184,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC1 ; |3184| 
        MOV #775, AC0 ; |3184| 
        MOV *SP(#21), T0 ; |3184| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$292, DW_AT_TI_call
        CALL #_MMC_sendCmd ; |3184| 
                                        ; call occurs [#_MMC_sendCmd] ; |3184| 
        MOV T0, *SP(#12) ; |3184| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3188,column 2,is_stmt

        MOV *SP(#12), AR1 ; |3188| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3188| 
        BCC $C$L177,TC1 ; |3188| 
                                        ; branchcc occurs ; |3188| 

        MOV #-15, AR2
||      MOV *SP(#12), AR1 ; |3188| 

        CMP AR2 != AR1, TC1 ; |3188| 
        BCC $C$L178,TC1 ; |3188| 
                                        ; branchcc occurs ; |3188| 
$C$L177:    
	.dwpsn	file "src/csl_mmcsd.c",line 3191,column 3,is_stmt
        MOV *SP(#12), T0 ; |3191| 
        B $C$L183 ; |3191| 
                                        ; branch occurs ; |3191| 
$C$L178:    
	.dwpsn	file "src/csl_mmcsd.c",line 3195,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AC0 ; |3195| 
        BFXTR #0xc000, AC0, AR1 ; |3195| 
        MOV AR1, *AR3 ; |3195| 
	.dwpsn	file "src/csl_mmcsd.c",line 3197,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3, AR1 ; |3197| 
||      MOV #1, AR2

        CMPU AR1 <= AR2, TC1 ; |3197| 
        BCC $C$L179,TC1 ; |3197| 
                                        ; branchcc occurs ; |3197| 
	.dwpsn	file "src/csl_mmcsd.c",line 3199,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("_MMC_setEMMCBusWidth")
	.dwattr $C$DW$293, DW_AT_TI_call

        CALL #_MMC_setEMMCBusWidth ; |3199| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_setEMMCBusWidth] ; |3199| 
$C$L179:    
	.dwpsn	file "src/csl_mmcsd.c",line 3239,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3239| 
        BFXTR #0x00fe, AC0, AR1 ; |3239| 
        MOV AR1, *AR3(#33) ; |3239| 
	.dwpsn	file "src/csl_mmcsd.c",line 3240,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#20))), AR1 ; |3240| 
        AND #0x0003, AR1, AC0 ; |3240| 
        MOV AC0, *AR3(#32) ; |3240| 
	.dwpsn	file "src/csl_mmcsd.c",line 3241,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3241| 
        BFXTR #0x0c00, AC0, AR1 ; |3241| 
        MOV AR1, *AR3(#31) ; |3241| 
	.dwpsn	file "src/csl_mmcsd.c",line 3242,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3242| 
        BFXTR #0x1000, AC0, AR1 ; |3242| 
        MOV AR1, *AR3(#30) ; |3242| 
	.dwpsn	file "src/csl_mmcsd.c",line 3243,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3243| 
        BFXTR #0x2000, AC0, AR1 ; |3243| 
        MOV AR1, *AR3(#29) ; |3243| 
	.dwpsn	file "src/csl_mmcsd.c",line 3244,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3244| 
        BFXTR #0x4000, AC0, AR1 ; |3244| 
        MOV AR1, *AR3(#28) ; |3244| 
	.dwpsn	file "src/csl_mmcsd.c",line 3245,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#20), AC0 ; |3245| 
        BFXTR #0x8000, AC0, AR1 ; |3245| 
        MOV AR1, *AR3(#27) ; |3245| 
	.dwpsn	file "src/csl_mmcsd.c",line 3247,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AR1 ; |3247| 
        AND #0x0001, AR1, AC0 ; |3247| 
        MOV AC0, *AR3(#26) ; |3247| 
	.dwpsn	file "src/csl_mmcsd.c",line 3248,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AC0 ; |3248| 
        BFXTR #0x0020, AC0, AR1 ; |3248| 
        MOV AR1, *AR3(#25) ; |3248| 
	.dwpsn	file "src/csl_mmcsd.c",line 3249,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AC0 ; |3249| 
        BFXTR #0x03c0, AC0, AR1 ; |3249| 
        MOV AR1, *AR3(#24) ; |3249| 
	.dwpsn	file "src/csl_mmcsd.c",line 3250,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AC0 ; |3250| 
        BFXTR #0x1c00, AC0, AR1 ; |3250| 
        MOV AR1, *AR3(#23) ; |3250| 
	.dwpsn	file "src/csl_mmcsd.c",line 3251,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AC0 ; |3251| 
        BFXTR #0x6000, AC0, AR1 ; |3251| 
        MOV AR1, *AR3(#22) ; |3251| 
	.dwpsn	file "src/csl_mmcsd.c",line 3252,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#19), AC0 ; |3252| 
        BFXTR #0x8000, AC0, AR1 ; |3252| 
        MOV AR1, *AR3(#21) ; |3252| 
	.dwpsn	file "src/csl_mmcsd.c",line 3254,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AR1 ; |3254| 
        AND #0x001f, AR1, AC0 ; |3254| 
        MOV AC0, *AR3(#20) ; |3254| 
	.dwpsn	file "src/csl_mmcsd.c",line 3255,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3255| 
        BFXTR #0x03e0, AC0, AR1 ; |3255| 
        MOV AR1, *AR3(#19) ; |3255| 
	.dwpsn	file "src/csl_mmcsd.c",line 3256,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3256| 
        BFXTR #0x7c00, AC0, AR1 ; |3256| 
        MOV AR1, *AR3(#18) ; |3256| 
	.dwpsn	file "src/csl_mmcsd.c",line 3257,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3257| 
        BFXTR #0x8000, AC0, AR1 ; |3257| 
        MOV AR1, *AR3(#16) ; |3257| 
	.dwpsn	file "src/csl_mmcsd.c",line 3259,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AR1 ; |3259| 
        AND #0x0003, AR1, AC1 ; |3259| 
        MOV *AR3(#16), AC0 ; |3259| 
        OR AC1 << #1, AC0 ; |3259| 
        MOV AC0, *AR3(#16) ; |3259| 
	.dwpsn	file "src/csl_mmcsd.c",line 3261,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3261| 
        BFXTR #0x001c, AC0, AR1 ; |3261| 
        MOV AR1, *AR3(#15) ; |3261| 
	.dwpsn	file "src/csl_mmcsd.c",line 3262,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3262| 
        BFXTR #0x00e0, AC0, AR1 ; |3262| 
        MOV AR1, *AR3(#14) ; |3262| 
	.dwpsn	file "src/csl_mmcsd.c",line 3263,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#17))), AR1 ; |3263| 
        AND #0x0007, AR1, AC0 ; |3263| 
        MOV AC0, *AR3(#13) ; |3263| 
	.dwpsn	file "src/csl_mmcsd.c",line 3264,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3264| 
        BFXTR #0x3800, AC0, AR1 ; |3264| 
        MOV AR1, *AR3(#12) ; |3264| 
	.dwpsn	file "src/csl_mmcsd.c",line 3265,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3265| 
        BFXTR #0xc000, AC0, AR1 ; |3265| 
        MOV AR1, *AR3(#11) ; |3265| 
	.dwpsn	file "src/csl_mmcsd.c",line 3267,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AR1 ; |3267| 
        AND #0x03ff, AR1, AC1 ; |3267| 
        MOV *AR3(#11), AC0 ; |3267| 
        OR AC1 << #2, AC0 ; |3267| 
        MOV AC0, *AR3(#11) ; |3267| 
	.dwpsn	file "src/csl_mmcsd.c",line 3269,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3269| 
        BFXTR #0x1000, AC0, AR1 ; |3269| 
        MOV AR1, *AR3(#10) ; |3269| 
	.dwpsn	file "src/csl_mmcsd.c",line 3270,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3270| 
        BFXTR #0x2000, AC0, AR1 ; |3270| 
        MOV AR1, *AR3(#9) ; |3270| 
	.dwpsn	file "src/csl_mmcsd.c",line 3271,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3271| 
        BFXTR #0x4000, AC0, AR1 ; |3271| 
        MOV AR1, *AR3(#8) ; |3271| 
	.dwpsn	file "src/csl_mmcsd.c",line 3272,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3272| 
        BFXTR #0x8000, AC0, AR1 ; |3272| 
        MOV AR1, *AR3(short(#7)) ; |3272| 
	.dwpsn	file "src/csl_mmcsd.c",line 3274,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AR1 ; |3274| 
        AND #0x000f, AR1, AC0 ; |3274| 
        MOV AC0, *AR3(short(#6)) ; |3274| 
	.dwpsn	file "src/csl_mmcsd.c",line 3275,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AC0 ; |3275| 
        BFXTR #0xfff0, AC0, AR1 ; |3275| 
        MOV AR1, *AR3(short(#5)) ; |3275| 
	.dwpsn	file "src/csl_mmcsd.c",line 3277,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#14))), AR1 ; |3277| 
        MOV AR1, *AR3(short(#4)) ; |3277| 
	.dwpsn	file "src/csl_mmcsd.c",line 3278,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#14))), AR1 ; |3278| 
        AND #0x00ff, AR1, AC0 ; |3278| 
        MOV AC0, *AR3(short(#3)) ; |3278| 
	.dwpsn	file "src/csl_mmcsd.c",line 3280,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#13))), AR1 ; |3280| 
        MOV AR1, *AR3(short(#2)) ; |3280| 
	.dwpsn	file "src/csl_mmcsd.c",line 3281,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AC0 ; |3281| 
        BFXTR #0x3c00, AC0, AR1 ; |3281| 
        MOV AR1, *AR3(short(#1)) ; |3281| 
	.dwpsn	file "src/csl_mmcsd.c",line 3283,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), T1 ; |3283| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |3283| 
        MOV mmap(AC0L), AC0 ; |3283| 
        MOV AC0, dbl(*AR3(#10)) ; |3283| 
	.dwpsn	file "src/csl_mmcsd.c",line 3286,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#27) == #1, TC1 ; |3286| 
        BCC $C$L180,TC1 ; |3286| 
                                        ; branchcc occurs ; |3286| 
        MOV dbl(*(#(_mmcsdCardExtCSD+12))), AC0 ; |3286| 
        BCC $C$L180,AC0 != #0 ; |3286| 
                                        ; branchcc occurs ; |3286| 
	.dwpsn	file "src/csl_mmcsd.c",line 3288,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#16), T1 ; |3288| 

        ADD #2, T1 ; |3288| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |3288| 
        MOV mmap(AC0L), AC0 ; |3288| 
        MOV AC0, dbl(*SP(#8)) ; |3288| 
	.dwpsn	file "src/csl_mmcsd.c",line 3289,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |3289| 

        ADD #1, AR1 ; |3289| 
||      MOV dbl(*SP(#8)), AC1 ; |3289| 

        AND #0xffff, AR1, AC0 ; |3289| 
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("__mpyli")
	.dwattr $C$DW$294, DW_AT_TI_call
        CALL #__mpyli ; |3289| 
                                        ; call occurs [#__mpyli] ; |3289| 
        MOV AC0, dbl(*SP(#10)) ; |3289| 
	.dwpsn	file "src/csl_mmcsd.c",line 3290,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#10)), AC1 ; |3290| 
        MOV dbl(*AR3(#10)), AC0 ; |3290| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("__mpyli")
	.dwattr $C$DW$295, DW_AT_TI_call
        CALL #__mpyli ; |3290| 
                                        ; call occurs [#__mpyli] ; |3290| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV AC0, dbl(*AR3(#8)) ; |3290| 
	.dwpsn	file "src/csl_mmcsd.c",line 3291,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#10)), AC0 ; |3291| 
        MOV AC0, dbl(*AR3(#12)) ; |3291| 
	.dwpsn	file "src/csl_mmcsd.c",line 3292,column 2,is_stmt
        B $C$L182 ; |3292| 
                                        ; branch occurs ; |3292| 
$C$L180:    
	.dwpsn	file "src/csl_mmcsd.c",line 3298,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMOV #_mmcsdCardExtCSD, XAR1 ; |3298| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$296, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |3298| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |3298| 
        MOV T0, *SP(#4) ; |3298| 
	.dwpsn	file "src/csl_mmcsd.c",line 3299,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L181,AR1 != #0 ; |3299| 
                                        ; branchcc occurs ; |3299| 
	.dwpsn	file "src/csl_mmcsd.c",line 3301,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*(#(_mmcsdCardExtCSD+12))), AC0 ; |3301| 
        MOV AC0, dbl(*AR3(#12)) ; |3301| 
	.dwpsn	file "src/csl_mmcsd.c",line 3302,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |3302| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        SFTL AC0, #-1 ; |3302| 
        MOV AC0, dbl(*AR3(#8)) ; |3302| 
$C$L181:    
	.dwpsn	file "src/csl_mmcsd.c",line 3305,column 3,is_stmt
        AMOV #4194304, XAR3 ; |3305| 
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#12)), AC1 ; |3305| 
        CMPU AC1 <= AC0, TC1 ; |3305| 
        BCC $C$L182,TC1 ; |3305| 
                                        ; branchcc occurs ; |3305| 
	.dwpsn	file "src/csl_mmcsd.c",line 3307,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, *AR3(#27) ; |3307| 
$C$L182:    
	.dwpsn	file "src/csl_mmcsd.c",line 3311,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(#22))
	.dwpsn	file "src/csl_mmcsd.c",line 3313,column 2,is_stmt
        MOV #0, T0
$C$L183:    
	.dwpsn	file "src/csl_mmcsd.c",line 3314,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$298	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$298, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L175:1:1714639441")
	.dwattr $C$DW$298, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$298, DW_AT_TI_begin_line(0xc69)
	.dwattr $C$DW$298, DW_AT_TI_end_line(0xc69)
$C$DW$299	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$299, DW_AT_low_pc($C$DW$L$_MMC_getCardCsd$12$B)
	.dwattr $C$DW$299, DW_AT_high_pc($C$DW$L$_MMC_getCardCsd$12$E)
	.dwendtag $C$DW$298

	.dwattr $C$DW$279, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$279, DW_AT_TI_end_line(0xcf2)
	.dwattr $C$DW$279, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$279

	.sect	".text"
	.global	_SD_getCardCsd

$C$DW$300	.dwtag  DW_TAG_subprogram, DW_AT_name("SD_getCardCsd")
	.dwattr $C$DW$300, DW_AT_low_pc(_SD_getCardCsd)
	.dwattr $C$DW$300, DW_AT_high_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_SD_getCardCsd")
	.dwattr $C$DW$300, DW_AT_external
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$300, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$300, DW_AT_TI_begin_line(0xd34)
	.dwattr $C$DW$300, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$300, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "src/csl_mmcsd.c",line 3382,column 1,is_stmt,address _SD_getCardCsd

	.dwfde $C$DW$CIE, _SD_getCardCsd
$C$DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg17]
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pSdCardCsdObj")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_pSdCardCsdObj")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SD_getCardCsd                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 20 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (19 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SD_getCardCsd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-19, SP
	.dwcfi	cfa_offset, 20
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("pSdCardCsdObj")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_pSdCardCsdObj")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$306	.dwtag  DW_TAG_variable, DW_AT_name("multVal")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_multVal")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$307	.dwtag  DW_TAG_variable, DW_AT_name("blockNR")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_blockNR")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$308	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$309	.dwtag  DW_TAG_variable, DW_AT_name("sdCsd")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_sdCsd")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 3389,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L184,AC0 == #0 ; |3389| 
                                        ; branchcc occurs ; |3389| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L186,AC0 != #0 ; |3389| 
                                        ; branchcc occurs ; |3389| 
	.dwpsn	file "src/csl_mmcsd.c",line 3392,column 5,is_stmt
$C$L184:    
	.dwpsn	file "src/csl_mmcsd.c",line 3395,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3395| 

        CMPU AC1 != AC0, TC1 ; |3395| 
        BCC $C$L185,TC1 ; |3395| 
                                        ; branchcc occurs ; |3395| 
	.dwpsn	file "src/csl_mmcsd.c",line 3397,column 13,is_stmt
        MOV #-5, T0
        B $C$L199 ; |3397| 
                                        ; branch occurs ; |3397| 
$C$L185:    
	.dwpsn	file "src/csl_mmcsd.c",line 3401,column 13,is_stmt
        MOV #-6, T0
        B $C$L199 ; |3401| 
                                        ; branch occurs ; |3401| 
$C$L186:    
	.dwpsn	file "src/csl_mmcsd.c",line 3406,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |3406| 
        MOV AC0, dbl(*SP(#4)) ; |3406| 
	.dwpsn	file "src/csl_mmcsd.c",line 3407,column 2,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |3407| 
        SFTL AC0, #16, AC0 ; |3407| 
        MOV AC0, dbl(*SP(#4)) ; |3407| 
	.dwpsn	file "src/csl_mmcsd.c",line 3408,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3408| 
        MOV *AR3, AR3 ; |3408| 
        MOV #0, port(*AR3(T0)) ; |3408| 
	.dwpsn	file "src/csl_mmcsd.c",line 3409,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3409| 
        MOV *AR3, AR3 ; |3409| 
        MOV port(*AR3(T0)), AR1 ; |3409| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3409| 
        AND #0xffc0, AR1, AC0 ; |3409| 
        MOV AC0, port(*AR3(T0)) ; |3409| 
	.dwpsn	file "src/csl_mmcsd.c",line 3411,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |3411| 
        MOV #1033, AC0 ; |3411| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$310, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3411| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3411| 
        MOV T0, *SP(#10) ; |3411| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3415,column 2,is_stmt

        MOV *SP(#10), AR1 ; |3415| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3415| 
        BCC $C$L187,TC1 ; |3415| 
                                        ; branchcc occurs ; |3415| 

        MOV #-15, AR2
||      MOV *SP(#10), AR1 ; |3415| 

        CMP AR2 != AR1, TC1 ; |3415| 
        BCC $C$L188,TC1 ; |3415| 
                                        ; branchcc occurs ; |3415| 
$C$L187:    
	.dwpsn	file "src/csl_mmcsd.c",line 3418,column 3,is_stmt
        MOV *SP(#10), T0 ; |3418| 
        B $C$L199 ; |3418| 
                                        ; branch occurs ; |3418| 
$C$L188:    
	.dwpsn	file "src/csl_mmcsd.c",line 3422,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #56, T0 ; |3422| 
        MOV *AR3, AR3 ; |3422| 
        MOV port(*AR3(T0)), AR1 ; |3422| 
        MOV AR1, *SP(#18) ; |3422| 
	.dwpsn	file "src/csl_mmcsd.c",line 3423,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #57, T0 ; |3423| 
        MOV *AR3, AR3 ; |3423| 
        MOV port(*AR3(T0)), AR1 ; |3423| 
        MOV AR1, *SP(#17) ; |3423| 
	.dwpsn	file "src/csl_mmcsd.c",line 3424,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |3424| 
        MOV *AR3, AR3 ; |3424| 
        MOV port(*AR3(T0)), AR1 ; |3424| 
        MOV AR1, *SP(#16) ; |3424| 
	.dwpsn	file "src/csl_mmcsd.c",line 3425,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #61, T0 ; |3425| 
        MOV *AR3, AR3 ; |3425| 
        MOV port(*AR3(T0)), AR1 ; |3425| 
        MOV AR1, *SP(#15) ; |3425| 
	.dwpsn	file "src/csl_mmcsd.c",line 3426,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |3426| 
        MOV *AR3, AR3 ; |3426| 
        MOV port(*AR3(T0)), AR1 ; |3426| 
        MOV AR1, *SP(#14) ; |3426| 
	.dwpsn	file "src/csl_mmcsd.c",line 3427,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |3427| 
        MOV *AR3, AR3 ; |3427| 
        MOV port(*AR3(T0)), AR1 ; |3427| 
        MOV AR1, *SP(#13) ; |3427| 
	.dwpsn	file "src/csl_mmcsd.c",line 3428,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |3428| 
        MOV *AR3, AR3 ; |3428| 
        MOV port(*AR3(T0)), AR1 ; |3428| 
        MOV AR1, *SP(#12) ; |3428| 
	.dwpsn	file "src/csl_mmcsd.c",line 3429,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3429| 
        MOV *AR3, AR3 ; |3429| 
        MOV port(*AR3(T0)), AR1 ; |3429| 
        MOV AR1, *SP(#11) ; |3429| 
	.dwpsn	file "src/csl_mmcsd.c",line 3431,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMAR *SP(#11), XAR3

        RPT #7    ; |3431| 
||      AADD #53, AR2 ; |3431| 

                                            ; loop starts ; |3431| 
$C$L189:    
$C$DW$L$_SD_getCardCsd$12$B:
            MOV *AR3+, *AR2+ ; |3431| 
                                        ; loop ends ; |3431| 
$C$DW$L$_SD_getCardCsd$12$E:
$C$L190:    
	.dwpsn	file "src/csl_mmcsd.c",line 3434,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3434| 
        MOV #0, port(*AR3(T0)) ; |3434| 
	.dwpsn	file "src/csl_mmcsd.c",line 3435,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3435| 
        MOV *AR3, AR3 ; |3435| 
        MOV port(*AR3(T0)), AR1 ; |3435| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3435| 
        AND #0xffc0, AR1, AC0 ; |3435| 
        MOV AC0, port(*AR3(T0)) ; |3435| 
	.dwpsn	file "src/csl_mmcsd.c",line 3437,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |3437| 
        MOV #775, AC0 ; |3437| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$311, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3437| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3437| 
        MOV T0, *SP(#10) ; |3437| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3441,column 2,is_stmt

        MOV *SP(#10), AR1 ; |3441| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3441| 
        BCC $C$L191,TC1 ; |3441| 
                                        ; branchcc occurs ; |3441| 

        MOV #-15, AR2
||      MOV *SP(#10), AR1 ; |3441| 

        CMP AR2 != AR1, TC1 ; |3441| 
        BCC $C$L192,TC1 ; |3441| 
                                        ; branchcc occurs ; |3441| 
$C$L191:    
	.dwpsn	file "src/csl_mmcsd.c",line 3444,column 3,is_stmt
        MOV *SP(#10), T0 ; |3444| 
        B $C$L199 ; |3444| 
                                        ; branch occurs ; |3444| 
$C$L192:    
	.dwpsn	file "src/csl_mmcsd.c",line 3449,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3449| 
        MOV *AR3, AR3 ; |3449| 
        MOV #0, port(*AR3(T0)) ; |3449| 
	.dwpsn	file "src/csl_mmcsd.c",line 3450,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3450| 
        MOV *AR3, AR3 ; |3450| 
        MOV port(*AR3(T0)), AR1 ; |3450| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3450| 
        AND #0xffc0, AR1, AC0 ; |3450| 
        MOV AC0, port(*AR3(T0)) ; |3450| 
	.dwpsn	file "src/csl_mmcsd.c",line 3452,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |3452| 
        MOV #567, AC0 ; |3452| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$312, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3452| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3452| 
        MOV T0, *SP(#10) ; |3452| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3456,column 2,is_stmt

        MOV *SP(#10), AR1 ; |3456| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3456| 
        BCC $C$L193,TC1 ; |3456| 
                                        ; branchcc occurs ; |3456| 

        MOV #-15, AR2
||      MOV *SP(#10), AR1 ; |3456| 

        CMP AR2 != AR1, TC1 ; |3456| 
        BCC $C$L194,TC1 ; |3456| 
                                        ; branchcc occurs ; |3456| 
$C$L193:    
	.dwpsn	file "src/csl_mmcsd.c",line 3459,column 3,is_stmt
        MOV *SP(#10), T0 ; |3459| 
        B $C$L199 ; |3459| 
                                        ; branch occurs ; |3459| 
$C$L194:    
	.dwpsn	file "src/csl_mmcsd.c",line 3463,column 5,is_stmt
        MOV #2, AC0 ; |3463| 
        MOV AC0, dbl(*SP(#4)) ; |3463| 
	.dwpsn	file "src/csl_mmcsd.c",line 3464,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |3464| 
        MOV *AR3, AR3 ; |3464| 
        MOV #0, port(*AR3(T0)) ; |3464| 
	.dwpsn	file "src/csl_mmcsd.c",line 3465,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |3465| 
        MOV *AR3, AR3 ; |3465| 
        MOV port(*AR3(T0)), AR1 ; |3465| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3465| 
        AND #0xffc0, AR1, AC0 ; |3465| 
        MOV AC0, port(*AR3(T0)) ; |3465| 
	.dwpsn	file "src/csl_mmcsd.c",line 3467,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |3467| 
        MOV #518, AC0 ; |3467| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$313, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3467| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3467| 
        MOV T0, *SP(#10) ; |3467| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3471,column 2,is_stmt

        MOV *SP(#10), AR1 ; |3471| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |3471| 
        BCC $C$L195,TC1 ; |3471| 
                                        ; branchcc occurs ; |3471| 

        MOV #-15, AR2
||      MOV *SP(#10), AR1 ; |3471| 

        CMP AR2 != AR1, TC1 ; |3471| 
        BCC $C$L196,TC1 ; |3471| 
                                        ; branchcc occurs ; |3471| 
$C$L195:    
	.dwpsn	file "src/csl_mmcsd.c",line 3474,column 3,is_stmt
        MOV *SP(#10), T0 ; |3474| 
        B $C$L199 ; |3474| 
                                        ; branch occurs ; |3474| 
$C$L196:    
	.dwpsn	file "src/csl_mmcsd.c",line 3478,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3478| 
        MOV port(*AR3), AR1 ; |3478| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3478| 
        BCLR @#2, AR1 ; |3478| 
        BSET @#2, AR1 ; |3478| 
        MOV AR1, port(*AR3) ; |3478| 
	.dwpsn	file "src/csl_mmcsd.c",line 3480,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#11), AC0 ; |3480| 
        BFXTR #0xc000, AC0, AR1 ; |3480| 
        MOV AR1, *AR3 ; |3480| 
	.dwpsn	file "src/csl_mmcsd.c",line 3482,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3, AR1 ; |3482| 
||      MOV #0, AR2

        CMPU AR2 != AR1, TC1 ; |3482| 
        BCC $C$L197,TC1 ; |3482| 
                                        ; branchcc occurs ; |3482| 
	.dwpsn	file "src/csl_mmcsd.c",line 3486,column 3,is_stmt
        MOV *SP(#18), AC0 ; |3486| 
        BFXTR #0x00fe, AC0, AR1 ; |3486| 
        MOV AR1, *AR3(#33) ; |3486| 
	.dwpsn	file "src/csl_mmcsd.c",line 3487,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3487| 
        BFXTR #0x0c00, AC0, AR1 ; |3487| 
        MOV AR1, *AR3(#31) ; |3487| 
	.dwpsn	file "src/csl_mmcsd.c",line 3488,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3488| 
        BFXTR #0x1000, AC0, AR1 ; |3488| 
        MOV AR1, *AR3(#30) ; |3488| 
	.dwpsn	file "src/csl_mmcsd.c",line 3489,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3489| 
        BFXTR #0x2000, AC0, AR1 ; |3489| 
        MOV AR1, *AR3(#29) ; |3489| 
	.dwpsn	file "src/csl_mmcsd.c",line 3490,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3490| 
        BFXTR #0x4000, AC0, AR1 ; |3490| 
        MOV AR1, *AR3(#28) ; |3490| 
	.dwpsn	file "src/csl_mmcsd.c",line 3491,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3491| 
        BFXTR #0x8000, AC0, AR1 ; |3491| 
        MOV AR1, *AR3(#27) ; |3491| 
	.dwpsn	file "src/csl_mmcsd.c",line 3493,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3493| 
        BFXTR #0x0020, AC0, AR1 ; |3493| 
        MOV AR1, *AR3(#25) ; |3493| 
	.dwpsn	file "src/csl_mmcsd.c",line 3494,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3494| 
        BFXTR #0x03c0, AC0, AR1 ; |3494| 
        MOV AR1, *AR3(#24) ; |3494| 
	.dwpsn	file "src/csl_mmcsd.c",line 3495,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3495| 
        BFXTR #0x1c00, AC0, AR1 ; |3495| 
        MOV AR1, *AR3(#23) ; |3495| 
	.dwpsn	file "src/csl_mmcsd.c",line 3496,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3496| 
        BFXTR #0x8000, AC0, AR1 ; |3496| 
        MOV AR1, *AR3(#21) ; |3496| 
	.dwpsn	file "src/csl_mmcsd.c",line 3498,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AR1 ; |3498| 
        AND #0x007f, AR1, AC0 ; |3498| 
        MOV AC0, *AR3(#20) ; |3498| 
	.dwpsn	file "src/csl_mmcsd.c",line 3499,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3499| 
        BFXTR #0x3f80, AC0, AR1 ; |3499| 
        MOV AR1, *AR3(#18) ; |3499| 
	.dwpsn	file "src/csl_mmcsd.c",line 3500,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3500| 
        BFXTR #0x4000, AC0, AR1 ; |3500| 
        MOV AR1, *AR3(#17) ; |3500| 
	.dwpsn	file "src/csl_mmcsd.c",line 3501,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3501| 
        BFXTR #0x8000, AC0, AR1 ; |3501| 
        MOV AR1, *AR3(#16) ; |3501| 
	.dwpsn	file "src/csl_mmcsd.c",line 3503,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AR1 ; |3503| 
        AND #0x0003, AR1, AC1 ; |3503| 
        MOV *AR3(#16), AC0 ; |3503| 
        OR AC1 << #1, AC0 ; |3503| 
        MOV AC0, *AR3(#16) ; |3503| 
	.dwpsn	file "src/csl_mmcsd.c",line 3505,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AC0 ; |3505| 
        BFXTR #0x001c, AC0, AR1 ; |3505| 
        MOV AR1, *AR3(#15) ; |3505| 
	.dwpsn	file "src/csl_mmcsd.c",line 3506,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AC0 ; |3506| 
        BFXTR #0x00e0, AC0, AR1 ; |3506| 
        MOV AR1, *AR3(#14) ; |3506| 
	.dwpsn	file "src/csl_mmcsd.c",line 3507,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#15))), AR1 ; |3507| 
        AND #0x0007, AR1, AC0 ; |3507| 
        MOV AC0, *AR3(#13) ; |3507| 
	.dwpsn	file "src/csl_mmcsd.c",line 3508,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AC0 ; |3508| 
        BFXTR #0x3800, AC0, AR1 ; |3508| 
        MOV AR1, *AR3(#12) ; |3508| 
	.dwpsn	file "src/csl_mmcsd.c",line 3509,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AC0 ; |3509| 
        BFXTR #0xc000, AC0, AR1 ; |3509| 
        MOV AR1, *AR3(#11) ; |3509| 
	.dwpsn	file "src/csl_mmcsd.c",line 3511,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AR1 ; |3511| 
        AND #0x03ff, AR1, AC1 ; |3511| 
        MOV *AR3(#11), AC0 ; |3511| 
        OR AC1 << #2, AC0 ; |3511| 
        MOV AC0, *AR3(#11) ; |3511| 
	.dwpsn	file "src/csl_mmcsd.c",line 3513,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3513| 
        BFXTR #0x1000, AC0, AR1 ; |3513| 
        MOV AR1, *AR3(#10) ; |3513| 
	.dwpsn	file "src/csl_mmcsd.c",line 3514,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3514| 
        BFXTR #0x2000, AC0, AR1 ; |3514| 
        MOV AR1, *AR3(#9) ; |3514| 
	.dwpsn	file "src/csl_mmcsd.c",line 3515,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3515| 
        BFXTR #0x4000, AC0, AR1 ; |3515| 
        MOV AR1, *AR3(#8) ; |3515| 
	.dwpsn	file "src/csl_mmcsd.c",line 3516,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3516| 
        BFXTR #0x8000, AC0, AR1 ; |3516| 
        MOV AR1, *AR3(short(#7)) ; |3516| 
	.dwpsn	file "src/csl_mmcsd.c",line 3518,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AR1 ; |3518| 
        AND #0x000f, AR1, AC0 ; |3518| 
        MOV AC0, *AR3(short(#6)) ; |3518| 
	.dwpsn	file "src/csl_mmcsd.c",line 3519,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AC0 ; |3519| 
        BFXTR #0xfff0, AC0, AR1 ; |3519| 
        MOV AR1, *AR3(short(#5)) ; |3519| 
	.dwpsn	file "src/csl_mmcsd.c",line 3521,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#12))), AR1 ; |3521| 
        MOV AR1, *AR3(short(#4)) ; |3521| 
	.dwpsn	file "src/csl_mmcsd.c",line 3522,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#12))), AR1 ; |3522| 
        AND #0x00ff, AR1, AC0 ; |3522| 
        MOV AC0, *AR3(short(#3)) ; |3522| 
	.dwpsn	file "src/csl_mmcsd.c",line 3524,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#11))), AR1 ; |3524| 
        MOV AR1, *AR3(short(#2)) ; |3524| 
	.dwpsn	file "src/csl_mmcsd.c",line 3526,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), T1 ; |3526| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |3526| 
        MOV mmap(AC0L), AC0 ; |3526| 
        MOV AC0, dbl(*AR3(#10)) ; |3526| 
	.dwpsn	file "src/csl_mmcsd.c",line 3527,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#16), T1 ; |3527| 

        ADD #2, T1 ; |3527| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |3527| 
        MOV mmap(AC0L), AC0 ; |3527| 
        MOV AC0, dbl(*SP(#6)) ; |3527| 
	.dwpsn	file "src/csl_mmcsd.c",line 3528,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |3528| 

        ADD #1, AR1 ; |3528| 
||      MOV dbl(*SP(#6)), AC1 ; |3528| 

        AND #0xffff, AR1, AC0 ; |3528| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("__mpyli")
	.dwattr $C$DW$314, DW_AT_TI_call
        CALL #__mpyli ; |3528| 
                                        ; call occurs [#__mpyli] ; |3528| 
        MOV AC0, dbl(*SP(#8)) ; |3528| 
	.dwpsn	file "src/csl_mmcsd.c",line 3529,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#8)), AC1 ; |3529| 
        MOV dbl(*AR3(#10)), AC0 ; |3529| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("__mpyli")
	.dwattr $C$DW$315, DW_AT_TI_call
        CALL #__mpyli ; |3529| 
                                        ; call occurs [#__mpyli] ; |3529| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV AC0, dbl(*AR3(#8)) ; |3529| 
	.dwpsn	file "src/csl_mmcsd.c",line 3530,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#8)), AC0 ; |3530| 
        MOV AC0, dbl(*AR3(#12)) ; |3530| 
	.dwpsn	file "src/csl_mmcsd.c",line 3531,column 2,is_stmt
        B $C$L198 ; |3531| 
                                        ; branch occurs ; |3531| 
$C$L197:    
	.dwpsn	file "src/csl_mmcsd.c",line 3535,column 3,is_stmt
        MOV *SP(#18), AC0 ; |3535| 
        BFXTR #0x00fe, AC0, AR1 ; |3535| 
        MOV AR1, *AR3(#33) ; |3535| 
	.dwpsn	file "src/csl_mmcsd.c",line 3536,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#18))), AR1 ; |3536| 
        AND #0x0003, AR1, AC0 ; |3536| 
        MOV AC0, *AR3(#32) ; |3536| 
	.dwpsn	file "src/csl_mmcsd.c",line 3537,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3537| 
        BFXTR #0x0c00, AC0, AR1 ; |3537| 
        MOV AR1, *AR3(#31) ; |3537| 
	.dwpsn	file "src/csl_mmcsd.c",line 3538,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3538| 
        BFXTR #0x1000, AC0, AR1 ; |3538| 
        MOV AR1, *AR3(#30) ; |3538| 
	.dwpsn	file "src/csl_mmcsd.c",line 3539,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3539| 
        BFXTR #0x2000, AC0, AR1 ; |3539| 
        MOV AR1, *AR3(#29) ; |3539| 
	.dwpsn	file "src/csl_mmcsd.c",line 3540,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3540| 
        BFXTR #0x4000, AC0, AR1 ; |3540| 
        MOV AR1, *AR3(#28) ; |3540| 
	.dwpsn	file "src/csl_mmcsd.c",line 3541,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#18), AC0 ; |3541| 
        BFXTR #0x8000, AC0, AR1 ; |3541| 
        MOV AR1, *AR3(#27) ; |3541| 
	.dwpsn	file "src/csl_mmcsd.c",line 3543,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3543| 
        BFXTR #0x0020, AC0, AR1 ; |3543| 
        MOV AR1, *AR3(#25) ; |3543| 
	.dwpsn	file "src/csl_mmcsd.c",line 3544,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3544| 
        BFXTR #0x03c0, AC0, AR1 ; |3544| 
        MOV AR1, *AR3(#24) ; |3544| 
	.dwpsn	file "src/csl_mmcsd.c",line 3545,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3545| 
        BFXTR #0x1c00, AC0, AR1 ; |3545| 
        MOV AR1, *AR3(#23) ; |3545| 
	.dwpsn	file "src/csl_mmcsd.c",line 3546,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#17), AC0 ; |3546| 
        BFXTR #0x8000, AC0, AR1 ; |3546| 
        MOV AR1, *AR3(#21) ; |3546| 
	.dwpsn	file "src/csl_mmcsd.c",line 3548,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AR1 ; |3548| 
        AND #0x007f, AR1, AC0 ; |3548| 
        MOV AC0, *AR3(#20) ; |3548| 
	.dwpsn	file "src/csl_mmcsd.c",line 3549,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3549| 
        BFXTR #0x3f80, AC0, AR1 ; |3549| 
        MOV AR1, *AR3(#18) ; |3549| 
	.dwpsn	file "src/csl_mmcsd.c",line 3550,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#16), AC0 ; |3550| 
        BFXTR #0x4000, AC0, AR1 ; |3550| 
        MOV AR1, *AR3(#17) ; |3550| 
	.dwpsn	file "src/csl_mmcsd.c",line 3552,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#15), AR1 ; |3552| 
        MOV AR1, *AR3(#11) ; |3552| 
	.dwpsn	file "src/csl_mmcsd.c",line 3554,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AR1 ; |3554| 
        AND #0x003f, AR1, AR1 ; |3554| 
        MOV AR1, HI(AC0) ; |3554| 
        OR *AR3(#11), AC0, AC0 ; |3554| 
        MOV AC0, *AR3(#11) ; |3554| 
	.dwpsn	file "src/csl_mmcsd.c",line 3556,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3556| 
        BFXTR #0x1000, AC0, AR1 ; |3556| 
        MOV AR1, *AR3(#10) ; |3556| 
	.dwpsn	file "src/csl_mmcsd.c",line 3557,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3557| 
        BFXTR #0x2000, AC0, AR1 ; |3557| 
        MOV AR1, *AR3(#9) ; |3557| 
	.dwpsn	file "src/csl_mmcsd.c",line 3558,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3558| 
        BFXTR #0x4000, AC0, AR1 ; |3558| 
        MOV AR1, *AR3(#8) ; |3558| 
	.dwpsn	file "src/csl_mmcsd.c",line 3559,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#14), AC0 ; |3559| 
        BFXTR #0x8000, AC0, AR1 ; |3559| 
        MOV AR1, *AR3(short(#7)) ; |3559| 
	.dwpsn	file "src/csl_mmcsd.c",line 3561,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AR1 ; |3561| 
        AND #0x000f, AR1, AC0 ; |3561| 
        MOV AC0, *AR3(short(#6)) ; |3561| 
	.dwpsn	file "src/csl_mmcsd.c",line 3562,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#13), AC0 ; |3562| 
        BFXTR #0xfff0, AC0, AR1 ; |3562| 
        MOV AR1, *AR3(short(#5)) ; |3562| 
	.dwpsn	file "src/csl_mmcsd.c",line 3564,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#12))), AR1 ; |3564| 
        MOV AR1, *AR3(short(#4)) ; |3564| 
	.dwpsn	file "src/csl_mmcsd.c",line 3565,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#12))), AR1 ; |3565| 
        AND #0x00ff, AR1, AC0 ; |3565| 
        MOV AC0, *AR3(short(#3)) ; |3565| 
	.dwpsn	file "src/csl_mmcsd.c",line 3567,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#11))), AR1 ; |3567| 
        MOV AR1, *AR3(short(#2)) ; |3567| 
	.dwpsn	file "src/csl_mmcsd.c",line 3570,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), T1 ; |3570| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |3570| 
        MOV mmap(AC0L), AC0 ; |3570| 
        MOV AC0, dbl(*AR3(#10)) ; |3570| 
	.dwpsn	file "src/csl_mmcsd.c",line 3573,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |3573| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        ADD #1, AR1 ; |3573| 
        AND #0xffff, AR1, AC0 ; |3573| 
        SFTS AC0, #9, AC0 ; |3573| 
        MOV AC0, dbl(*AR3(#8)) ; |3573| 
	.dwpsn	file "src/csl_mmcsd.c",line 3576,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |3576| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        SFTL AC0, #1 ; |3576| 
        MOV AC0, dbl(*AR3(#12)) ; |3576| 
$C$L198:    
	.dwpsn	file "src/csl_mmcsd.c",line 3579,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV XAR2, dbl(*AR3(#22))
	.dwpsn	file "src/csl_mmcsd.c",line 3581,column 2,is_stmt
        MOV #0, T0
$C$L199:    
	.dwpsn	file "src/csl_mmcsd.c",line 3582,column 1,is_stmt
        AADD #19, SP
	.dwcfi	cfa_offset, 1
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$317	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$317, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L189:1:1714639441")
	.dwattr $C$DW$317, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$317, DW_AT_TI_begin_line(0xd67)
	.dwattr $C$DW$317, DW_AT_TI_end_line(0xd67)
$C$DW$318	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$318, DW_AT_low_pc($C$DW$L$_SD_getCardCsd$12$B)
	.dwattr $C$DW$318, DW_AT_high_pc($C$DW$L$_SD_getCardCsd$12$E)
	.dwendtag $C$DW$317

	.dwattr $C$DW$300, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$300, DW_AT_TI_end_line(0xdfe)
	.dwattr $C$DW$300, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$300

	.sect	".text"
	.global	_MMC_read

$C$DW$319	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_read")
	.dwattr $C$DW$319, DW_AT_low_pc(_MMC_read)
	.dwattr $C$DW$319, DW_AT_high_pc(0x00)
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_MMC_read")
	.dwattr $C$DW$319, DW_AT_external
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$319, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$319, DW_AT_TI_begin_line(0xe6b)
	.dwattr $C$DW$319, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$319, DW_AT_TI_max_frame_size(0x1a)
	.dwpsn	file "src/csl_mmcsd.c",line 3695,column 1,is_stmt,address _MMC_read

	.dwfde $C$DW$CIE, _MMC_read
$C$DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg17]
$C$DW$321	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cardAddr")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg0]
$C$DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBytes")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg12]
$C$DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_read                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 26 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (25 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-25, SP
	.dwcfi	cfa_offset, 26
$C$DW$324	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$325	.dwtag  DW_TAG_variable, DW_AT_name("cardAddr")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$326	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$327	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$328	.dwtag  DW_TAG_variable, DW_AT_name("response")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_response")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$329	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$330	.dwtag  DW_TAG_variable, DW_AT_name("mmcStatus")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_mmcStatus")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$331	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$332	.dwtag  DW_TAG_variable, DW_AT_name("stopCmdRetryCnt")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_stopCmdRetryCnt")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$333	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$334	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuff")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_pReadBuff")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$335	.dwtag  DW_TAG_variable, DW_AT_name("rdCntMmc")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_rdCntMmc")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$336	.dwtag  DW_TAG_variable, DW_AT_name("readRetryCount")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_readRetryCount")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$337	.dwtag  DW_TAG_variable, DW_AT_name("blkCnt")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_blkCnt")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$338	.dwtag  DW_TAG_variable, DW_AT_name("reIssueReadFlag")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_reIssueReadFlag")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_bregx 0x24 21]
$C$DW$339	.dwtag  DW_TAG_variable, DW_AT_name("readCmd")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_readCmd")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$340	.dwtag  DW_TAG_variable, DW_AT_name("reStartDma")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_reStartDma")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_bregx 0x24 23]
$C$DW$341	.dwtag  DW_TAG_variable, DW_AT_name("saved")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_saved")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_bregx 0x24 24]
        MOV XAR1, dbl(*SP(#6))
        MOV T0, *SP(#4) ; |3695| 
        MOV AC0, dbl(*SP(#2)) ; |3695| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 3711,column 2,is_stmt
        MOV #0, *SP(#23) ; |3711| 
	.dwpsn	file "src/csl_mmcsd.c",line 3712,column 2,is_stmt
        MOV #1000, *SP(#19) ; |3712| 
	.dwpsn	file "src/csl_mmcsd.c",line 3714,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L258,AC0 == #0 ; |3714| 
                                        ; branchcc occurs ; |3714| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L258,AC0 == #0 ; |3714| 
                                        ; branchcc occurs ; |3714| 
	.dwpsn	file "src/csl_mmcsd.c",line 3717,column 9,is_stmt
        MOV *SP(#4), AR1 ; |3717| 
        BCC $C$L204,AR1 == #0 ; |3717| 
                                        ; branchcc occurs ; |3717| 
	.dwpsn	file "src/csl_mmcsd.c",line 3725,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#63), AR1 ; |3725| 
        BCC $C$L200,AR1 == #0 ; |3725| 
                                        ; branchcc occurs ; |3725| 
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#26) == #1, TC1 ; |3725| 
        BCC $C$L200,TC1 ; |3725| 
                                        ; branchcc occurs ; |3725| 
	.dwpsn	file "src/csl_mmcsd.c",line 3728,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |3728| 
        MOV *AR3(#63), T1 ; |3728| 
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("__divu")
	.dwattr $C$DW$342, DW_AT_TI_call
        CALL #__divu ; |3728| 
                                        ; call occurs [#__divu] ; |3728| 
        MOV T0, *SP(#20) ; |3728| 
	.dwpsn	file "src/csl_mmcsd.c",line 3729,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |3729| 
        MOV *AR3, AR3 ; |3729| 
        MOV port(*AR3(T0)), AR1 ; |3729| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xf000, AR1, AR2 ; |3729| 
        MOV *AR3(#63), AR1 ; |3729| 
        MOV *AR3, AR3 ; |3729| 
        AND #0x0fff, AR1, AR1 ; |3729| 
        OR AR2, AR1 ; |3729| 
        MOV AR1, port(*AR3(T0)) ; |3729| 
	.dwpsn	file "src/csl_mmcsd.c",line 3731,column 4,is_stmt
        B $C$L201 ; |3731| 
                                        ; branch occurs ; |3731| 
$C$L200:    
	.dwpsn	file "src/csl_mmcsd.c",line 3734,column 5,is_stmt
        MOV uns(*SP(#4)), AC0 ; |3734| 
        SFTS AC0, #-9, AC0 ; |3734| 
        MOV AC0, *SP(#20) ; |3734| 
	.dwpsn	file "src/csl_mmcsd.c",line 3735,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |3735| 
        MOV *AR3, AR3 ; |3735| 
        MOV port(*AR3(T0)), AR1 ; |3735| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3735| 
        AND #0xf000, AR1, AC0 ; |3735| 
        BSET @#9, AC0 ; |3735| 
        MOV AC0, port(*AR3(T0)) ; |3735| 
$C$L201:    
	.dwpsn	file "src/csl_mmcsd.c",line 3739,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |3739| 
        MOV *AR3, AR3 ; |3739| 
        MOV port(*AR3(T0)), AR1 ; |3739| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3739| 
        MOV *SP(#20), AR1 ; |3739| 
        OR #0x0000, AR1, AR1 ; |3739| 
        MOV AR1, port(*AR3(T0)) ; |3739| 
	.dwpsn	file "src/csl_mmcsd.c",line 3741,column 4,is_stmt
        MOV #12, T0
        MOV #32, AR2 ; |3751| 

        MOV #1, *SP(#11) ; |3741| 
||      MOV #1, AR1

$C$L202:    
$C$DW$L$_MMC_read$9$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3744,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3744| 
        MOV port(*AR3(T0)), AR3 ; |3744| 
        MOV AR3, *SP(#10) ; |3744| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3745,column 5,is_stmt
        MOV *SP(#10), AR3 ; |3745| 
        AND #0x0020, AR3, AR3 ; |3745| 
        OR *SP(#11), AR3, AR3 ; |3745| 
        MOV AR3, *SP(#11) ; |3745| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3747,column 5,is_stmt
        BTST #0, *SP(#10), TC1 ; |3747| 
        BCC $C$L203,TC1 ; |3747| 
                                        ; branchcc occurs ; |3747| 
$C$DW$L$_MMC_read$9$E:
$C$DW$L$_MMC_read$10$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3749,column 6,is_stmt
        AND #0xfffe, *SP(#11) ; |3749| 
$C$DW$L$_MMC_read$10$E:
$C$L203:    
$C$DW$L$_MMC_read$11$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3751,column 21,is_stmt
        MOV *SP(#11), AR3 ; |3751| 
        AND #0x0020, AR3, AR3 ; |3751| 
        CMPU AR3 != AR2, TC1 ; |3751| 
        BCC $C$L202,TC1 ; |3751| 
                                        ; branchcc occurs ; |3751| 
$C$DW$L$_MMC_read$11$E:
$C$DW$L$_MMC_read$12$B:
        MOV *SP(#11), AR3 ; |3751| 
        AND #0x0001, AR3, AR3 ; |3751| 
        CMPU AR3 == AR1, TC1 ; |3751| 
        BCC $C$L202,TC1 ; |3751| 
                                        ; branchcc occurs ; |3751| 
$C$DW$L$_MMC_read$12$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3753,column 9,is_stmt
        B $C$L205 ; |3753| 
                                        ; branch occurs ; |3753| 
$C$L204:    
	.dwpsn	file "src/csl_mmcsd.c",line 3756,column 13,is_stmt
        MOV #-6, T0
        B $C$L261 ; |3756| 
                                        ; branch occurs ; |3756| 
$C$L205:    
	.dwpsn	file "src/csl_mmcsd.c",line 3760,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3760| 
        MOV port(*AR3), AR1 ; |3760| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#61) << #9, AC0 ; |3760| 
        MOV *AR3, AR3 ; |3760| 
        BCLR @#9, AR1 ; |3760| 
        AND #0x0200, AC0, AR2 ; |3760| 
        OR AR1, AR2 ; |3760| 
        MOV AR2, port(*AR3) ; |3760| 
	.dwpsn	file "src/csl_mmcsd.c",line 3764,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |3764| 
        MOV *AR3, AR3 ; |3764| 
        MOV port(*AR3(T0)), AR1 ; |3764| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3764| 
        BCLR @#0, AR1 ; |3764| 
        BSET @#0, AR1 ; |3764| 
        MOV AR1, port(*AR3(T0)) ; |3764| 
	.dwpsn	file "src/csl_mmcsd.c",line 3766,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3766| 
        MOV port(*AR3(T0)), AR1 ; |3766| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3766| 
        BCLR @#1, AR1 ; |3766| 
        MOV AR1, port(*AR3(T0)) ; |3766| 
	.dwpsn	file "src/csl_mmcsd.c",line 3768,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AR2
        MOV *AR3(#8), AR1 ; |3768| 
        CMP AR2 != AR1, TC1 ; |3768| 
        BCC $C$L206,TC1 ; |3768| 
                                        ; branchcc occurs ; |3768| 
	.dwpsn	file "src/csl_mmcsd.c",line 3770,column 10,is_stmt
        MOV *AR3, AR3 ; |3770| 
        MOV port(*AR3(T0)), AR1 ; |3770| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3770| 
        AND #0xffe7, AR1, AC0 ; |3770| 
        BSET @#4, AC0 ; |3770| 
        MOV AC0, port(*AR3(T0)) ; |3770| 
	.dwpsn	file "src/csl_mmcsd.c",line 3771,column 3,is_stmt
        B $C$L207 ; |3771| 
                                        ; branch occurs ; |3771| 
$C$L206:    
	.dwpsn	file "src/csl_mmcsd.c",line 3774,column 10,is_stmt
        MOV *AR3, AR3 ; |3774| 
        MOV port(*AR3(T0)), AR1 ; |3774| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3774| 
        AND #0xffe7, AR1, AC0 ; |3774| 
        MOV AC0, port(*AR3(T0)) ; |3774| 
$C$L207:    
	.dwpsn	file "src/csl_mmcsd.c",line 3778,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3778| 
        MOV port(*AR3(T0)), AR1 ; |3778| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3778| 
        BCLR @#2, AR1 ; |3778| 
        BSET @#2, AR1 ; |3778| 
        MOV AR1, port(*AR3(T0)) ; |3778| 
	.dwpsn	file "src/csl_mmcsd.c",line 3780,column 3,is_stmt

        MOV *SP(#20), AR1 ; |3780| 
||      MOV #1, AR2

        CMPU AR1 <= AR2, TC1 ; |3780| 
        BCC $C$L208,TC1 ; |3780| 
                                        ; branchcc occurs ; |3780| 
	.dwpsn	file "src/csl_mmcsd.c",line 3782,column 4,is_stmt
        MOV #41490, *SP(#22) ; |3782| 
	.dwpsn	file "src/csl_mmcsd.c",line 3783,column 3,is_stmt
        B $C$L209 ; |3783| 
                                        ; branch occurs ; |3783| 
$C$L208:    
	.dwpsn	file "src/csl_mmcsd.c",line 3786,column 4,is_stmt
        MOV #41489, *SP(#22) ; |3786| 
$C$L209:    
	.dwpsn	file "src/csl_mmcsd.c",line 3789,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AR2
        MOV *AR3(#8), AR1 ; |3789| 
        CMP AR2 != AR1, TC1 ; |3789| 
        BCC $C$L220,TC1 ; |3789| 
                                        ; branchcc occurs ; |3789| 
$C$L210:    
$C$DW$L$_MMC_read$22$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3793,column 5,is_stmt
        SUB #1, *SP(#19) ; |3793| 
	.dwpsn	file "src/csl_mmcsd.c",line 3794,column 5,is_stmt
        MOV *SP(#19), AR1 ; |3794| 
        BCC $C$L211,AR1 != #0 ; |3794| 
                                        ; branchcc occurs ; |3794| 
$C$DW$L$_MMC_read$22$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3796,column 6,is_stmt
        MOV #-10, T0
        B $C$L261 ; |3796| 
                                        ; branch occurs ; |3796| 
$C$L211:    
$C$DW$L$_MMC_read$24$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3804,column 5,is_stmt
        MOV #0, *SP(#21) ; |3804| 
	.dwpsn	file "src/csl_mmcsd.c",line 3805,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_mmcsd.c",line 3806,column 11,is_stmt
        MOV #0, *SP(#18) ; |3806| 
	.dwpsn	file "src/csl_mmcsd.c",line 3808,column 5,is_stmt
        MOV uns(*SP(#22)), AC0 ; |3808| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC1 ; |3808| 
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$343, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3808| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3808| 
        MOV T0, *SP(#10) ; |3808| 
	.dwpsn	file "src/csl_mmcsd.c",line 3813,column 5,is_stmt
        CMP *SP(#21) == #1, TC1 ; |3813| 
        BCC $C$L219,TC1 ; |3813| 
                                        ; branchcc occurs ; |3813| 
$C$DW$L$_MMC_read$24$E:
$C$DW$L$_MMC_read$25$B:
        MOV #1024, T1 ; |3829| 
        MOV #16, AR1 ; |3864| 
        MOV #16, AR4 ; |3848| 
	.dwpsn	file "src/csl_mmcsd.c",line 3815,column 6,is_stmt
$C$DW$L$_MMC_read$25$E:
$C$L212:    
$C$DW$L$_MMC_read$26$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3822,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3822| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR2 ; |3822| 
        MOV AR2, *SP(#10) ; |3822| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3823,column 7,is_stmt
        BAND *SP(#10), #104, TC1 ; |3823| 
        BCC $C$L213,!TC1 ; |3823| 
                                        ; branchcc occurs ; |3823| 
$C$DW$L$_MMC_read$26$E:
$C$DW$L$_MMC_read$27$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3825,column 8,is_stmt
        MOV #1, *SP(#21) ; |3825| 
	.dwpsn	file "src/csl_mmcsd.c",line 3826,column 8,is_stmt
        B $C$L214 ; |3826| 
                                        ; branch occurs ; |3826| 
$C$DW$L$_MMC_read$27$E:
$C$L213:    
$C$DW$L$_MMC_read$28$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3829,column 14,is_stmt
        MOV *SP(#10), AR2 ; |3829| 
        AND #0x0400, AR2, AR2 ; |3829| 
        CMP AR2 != T1, TC1 ; |3829| 
        BCC $C$L212,TC1 ; |3829| 
                                        ; branchcc occurs ; |3829| 
$C$DW$L$_MMC_read$28$E:
$C$L214:    
$C$DW$L$_MMC_read$29$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3831,column 6,is_stmt
        CMP *SP(#21) == #1, TC1 ; |3831| 
        BCC $C$L219,TC1 ; |3831| 
                                        ; branchcc occurs ; |3831| 
$C$DW$L$_MMC_read$29$E:
$C$DW$L$_MMC_read$30$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3833,column 7,is_stmt
	.dwpsn	file "src/csl_mmcsd.c",line 3840,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#61), AR2 ; |3840| 
        BCC $C$L216,AR2 != #0 ; |3840| 
                                        ; branchcc occurs ; |3840| 
$C$DW$L$_MMC_read$30$E:
$C$DW$L$_MMC_read$31$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3848,column 11,is_stmt
        MOV #0, *SP(#12) ; |3848| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3848,column 22,is_stmt
        MOV *SP(#12), AR2 ; |3848| 
        CMPU AR2 >= AR4, TC1 ; |3848| 
        BCC $C$L218,TC1 ; |3848| 
                                        ; branchcc occurs ; |3848| 
$C$DW$L$_MMC_read$31$E:
$C$L215:    
$C$DW$L$_MMC_read$32$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3850,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #40, T0 ; |3850| 
        MOV *AR3, AR3 ; |3850| 
        MOV port(*AR3(T0)), AR3 ; |3850| 
        MOV AR3, *AR2 ; |3850| 
	.dwpsn	file "src/csl_mmcsd.c",line 3853,column 8,is_stmt
        ADD #2, *SP(#18) ; |3853| 
	.dwpsn	file "src/csl_mmcsd.c",line 3848,column 34,is_stmt
        ADD #1, *SP(#12) ; |3848| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3848,column 22,is_stmt
        MOV #16, AR3 ; |3848| 
        MOV *SP(#12), AR2 ; |3848| 
        CMPU AR2 < AR3, TC1 ; |3848| 
        BCC $C$L215,TC1 ; |3848| 
                                        ; branchcc occurs ; |3848| 
$C$DW$L$_MMC_read$32$E:
$C$DW$L$_MMC_read$33$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3855,column 6,is_stmt
        B $C$L218 ; |3855| 
                                        ; branch occurs ; |3855| 
$C$DW$L$_MMC_read$33$E:
$C$L216:    
$C$DW$L$_MMC_read$34$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3864,column 11,is_stmt
        MOV #0, *SP(#12) ; |3864| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3864,column 22,is_stmt
        MOV *SP(#12), AR2 ; |3864| 
        CMPU AR2 >= AR1, TC1 ; |3864| 
        BCC $C$L218,TC1 ; |3864| 
                                        ; branchcc occurs ; |3864| 
$C$DW$L$_MMC_read$34$E:
$C$L217:    
$C$DW$L$_MMC_read$35$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3866,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #41, T0 ; |3866| 
        MOV *AR3, AR3 ; |3866| 
        MOV port(*AR3(T0)), AR3 ; |3866| 
        MOV AR3, *AR2 ; |3866| 
	.dwpsn	file "src/csl_mmcsd.c",line 3869,column 8,is_stmt
        ADD #2, *SP(#18) ; |3869| 
	.dwpsn	file "src/csl_mmcsd.c",line 3864,column 34,is_stmt
        ADD #1, *SP(#12) ; |3864| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3864,column 22,is_stmt
        MOV #16, AR3 ; |3864| 
        MOV *SP(#12), AR2 ; |3864| 
        CMPU AR2 < AR3, TC1 ; |3864| 
        BCC $C$L217,TC1 ; |3864| 
                                        ; branchcc occurs ; |3864| 
$C$DW$L$_MMC_read$35$E:
$C$L218:    
$C$DW$L$_MMC_read$36$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3873,column 13,is_stmt
        MOV *SP(#18), AR3 ; |3873| 
        MOV *SP(#4), AR2 ; |3873| 
        CMPU AR3 < AR2, TC1 ; |3873| 
        BCC $C$L212,TC1 ; |3873| 
                                        ; branchcc occurs ; |3873| 
$C$DW$L$_MMC_read$36$E:
$C$L219:    
$C$DW$L$_MMC_read$37$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3874,column 4,is_stmt
        MOV *SP(#21), AR1 ; |3874| 
        BCC $C$L210,AR1 != #0 ; |3874| 
                                        ; branchcc occurs ; |3874| 
$C$DW$L$_MMC_read$37$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3875,column 3,is_stmt
        B $C$L253 ; |3875| 
                                        ; branch occurs ; |3875| 
$C$L220:    
	.dwpsn	file "src/csl_mmcsd.c",line 3876,column 8,is_stmt
        MOV *AR3(#8), AR1 ; |3876| 
        MOV #2, AR2
        CMP AR2 != AR1, TC1 ; |3876| 
        BCC $C$L242,TC1 ; |3876| 
                                        ; branchcc occurs ; |3876| 
	.dwpsn	file "src/csl_mmcsd.c",line 3878,column 4,is_stmt
        MOV dbl(*AR3(#12)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |3878| 

        CMPU AC1 != AC0, TC1 ; |3878| 
        BCC $C$L221,TC1 ; |3878| 
                                        ; branchcc occurs ; |3878| 
	.dwpsn	file "src/csl_mmcsd.c",line 3880,column 5,is_stmt
        MOV #-6, T0
        B $C$L261 ; |3880| 
                                        ; branch occurs ; |3880| 
$C$L221:    
	.dwpsn	file "src/csl_mmcsd.c",line 3884,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#30), AR1 ; |3884| 
        CMP AR2 != AR1, TC1 ; |3884| 
        BCC $C$L222,TC1 ; |3884| 
                                        ; branchcc occurs ; |3884| 
	.dwpsn	file "src/csl_mmcsd.c",line 3886,column 6,is_stmt
        MOV *AR3, AR3 ; |3886| 
        MOV port(*AR3(T0)), AR1 ; |3886| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3886| 
        BCLR @#2, AR1 ; |3886| 
        MOV AR1, port(*AR3(T0)) ; |3886| 
$C$L222:    
	.dwpsn	file "src/csl_mmcsd.c",line 3891,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |3891| 
        MOV AR1, *AR3(#36) ; |3891| 
	.dwpsn	file "src/csl_mmcsd.c",line 3892,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#40)) ; |3892| 
	.dwpsn	file "src/csl_mmcsd.c",line 3894,column 5,is_stmt
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$344, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3894| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3894| 
        MOV T0, *SP(#24) ; |3894| 
	.dwpsn	file "src/csl_mmcsd.c",line 3895,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#0)), XAR3
        AADD #28, AR1 ; |3895| 
        MOV dbl(*AR3(#12)), XAR0
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("_DMA_config")
	.dwattr $C$DW$345, DW_AT_TI_call
        CALL #_DMA_config ; |3895| 
                                        ; call occurs [#_DMA_config] ; |3895| 
        MOV T0, *SP(#14) ; |3895| 
	.dwpsn	file "src/csl_mmcsd.c",line 3896,column 5,is_stmt
        MOV *SP(#24), T0 ; |3896| 
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$346, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3896| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3896| 
	.dwpsn	file "src/csl_mmcsd.c",line 3897,column 5,is_stmt
        MOV *SP(#14), AR1 ; |3897| 
        BCC $C$L223,AR1 == #0 ; |3897| 
                                        ; branchcc occurs ; |3897| 
	.dwpsn	file "src/csl_mmcsd.c",line 3899,column 6,is_stmt
        MOV AR1, T0
        B $C$L261 ; |3899| 
                                        ; branch occurs ; |3899| 
$C$L223:    
	.dwpsn	file "src/csl_mmcsd.c",line 3903,column 5,is_stmt
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$347, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3903| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3903| 
        MOV T0, *SP(#24) ; |3903| 
	.dwpsn	file "src/csl_mmcsd.c",line 3904,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), XAR0
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_name("_DMA_start")
	.dwattr $C$DW$348, DW_AT_TI_call
        CALL #_DMA_start ; |3904| 
                                        ; call occurs [#_DMA_start] ; |3904| 
        MOV T0, *SP(#14) ; |3904| 
	.dwpsn	file "src/csl_mmcsd.c",line 3905,column 5,is_stmt
        MOV *SP(#24), T0 ; |3905| 
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$349, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3905| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3905| 
	.dwpsn	file "src/csl_mmcsd.c",line 3906,column 5,is_stmt
        MOV *SP(#14), AR1 ; |3906| 
        BCC $C$L224,AR1 == #0 ; |3906| 
                                        ; branchcc occurs ; |3906| 
	.dwpsn	file "src/csl_mmcsd.c",line 3908,column 6,is_stmt
        MOV AR1, T0
        B $C$L261 ; |3908| 
                                        ; branch occurs ; |3908| 
$C$L224:    
$C$DW$L$_MMC_read$49$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3913,column 6,is_stmt
        SUB #1, *SP(#19) ; |3913| 
	.dwpsn	file "src/csl_mmcsd.c",line 3914,column 6,is_stmt
        MOV *SP(#19), AR1 ; |3914| 
        BCC $C$L225,AR1 != #0 ; |3914| 
                                        ; branchcc occurs ; |3914| 
$C$DW$L$_MMC_read$49$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3916,column 7,is_stmt
        MOV #-10, T0
        B $C$L261 ; |3916| 
                                        ; branch occurs ; |3916| 
$C$L225:    
$C$DW$L$_MMC_read$51$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3924,column 6,is_stmt
        MOV #0, *SP(#21) ; |3924| 
	.dwpsn	file "src/csl_mmcsd.c",line 3926,column 6,is_stmt
        CMP *SP(#23) == #1, TC1 ; |3926| 
        BCC $C$L228,!TC1 ; |3926| 
                                        ; branchcc occurs ; |3926| 
$C$DW$L$_MMC_read$51$E:
$C$DW$L$_MMC_read$52$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3928,column 7,is_stmt
        MOV #0, *SP(#23) ; |3928| 
	.dwpsn	file "src/csl_mmcsd.c",line 3936,column 7,is_stmt
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$350, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3936| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3936| 
        MOV T0, *SP(#24) ; |3936| 
	.dwpsn	file "src/csl_mmcsd.c",line 3937,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), XAR0
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("_DMA_stop")
	.dwattr $C$DW$351, DW_AT_TI_call
        CALL #_DMA_stop ; |3937| 
                                        ; call occurs [#_DMA_stop] ; |3937| 
        MOV T0, *SP(#14) ; |3937| 
	.dwpsn	file "src/csl_mmcsd.c",line 3938,column 7,is_stmt
        MOV *SP(#24), T0 ; |3938| 
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$352, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3938| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3938| 
	.dwpsn	file "src/csl_mmcsd.c",line 3939,column 7,is_stmt
        MOV *SP(#14), AR1 ; |3939| 
        BCC $C$L226,AR1 == #0 ; |3939| 
                                        ; branchcc occurs ; |3939| 
$C$DW$L$_MMC_read$52$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3941,column 8,is_stmt
        MOV AR1, T0
        B $C$L261 ; |3941| 
                                        ; branch occurs ; |3941| 
$C$L226:    
$C$DW$L$_MMC_read$54$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3945,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |3945| 
        MOV AR1, *AR3(#36) ; |3945| 
	.dwpsn	file "src/csl_mmcsd.c",line 3946,column 7,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#40)) ; |3946| 
	.dwpsn	file "src/csl_mmcsd.c",line 3948,column 7,is_stmt
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$353, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3948| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3948| 
        MOV T0, *SP(#24) ; |3948| 
	.dwpsn	file "src/csl_mmcsd.c",line 3949,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#0)), XAR3
        AADD #28, AR1 ; |3949| 
        MOV dbl(*AR3(#12)), XAR0
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("_DMA_config")
	.dwattr $C$DW$354, DW_AT_TI_call
        CALL #_DMA_config ; |3949| 
                                        ; call occurs [#_DMA_config] ; |3949| 
        MOV T0, *SP(#14) ; |3949| 
	.dwpsn	file "src/csl_mmcsd.c",line 3950,column 7,is_stmt
        MOV *SP(#24), T0 ; |3950| 
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$355, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3950| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3950| 
	.dwpsn	file "src/csl_mmcsd.c",line 3951,column 7,is_stmt
        MOV *SP(#14), AR1 ; |3951| 
        BCC $C$L227,AR1 == #0 ; |3951| 
                                        ; branchcc occurs ; |3951| 
$C$DW$L$_MMC_read$54$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3953,column 8,is_stmt
        MOV AR1, T0
        B $C$L261 ; |3953| 
                                        ; branch occurs ; |3953| 
$C$L227:    
$C$DW$L$_MMC_read$56$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3957,column 7,is_stmt
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$356, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3957| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3957| 
        MOV T0, *SP(#24) ; |3957| 
	.dwpsn	file "src/csl_mmcsd.c",line 3958,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), XAR0
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("_DMA_start")
	.dwattr $C$DW$357, DW_AT_TI_call
        CALL #_DMA_start ; |3958| 
                                        ; call occurs [#_DMA_start] ; |3958| 
        MOV T0, *SP(#14) ; |3958| 
	.dwpsn	file "src/csl_mmcsd.c",line 3959,column 7,is_stmt
        MOV *SP(#24), T0 ; |3959| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$358, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3959| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3959| 
	.dwpsn	file "src/csl_mmcsd.c",line 3960,column 7,is_stmt
        MOV *SP(#14), AR1 ; |3960| 
        BCC $C$L228,AR1 == #0 ; |3960| 
                                        ; branchcc occurs ; |3960| 
$C$DW$L$_MMC_read$56$E:
	.dwpsn	file "src/csl_mmcsd.c",line 3962,column 8,is_stmt
        MOV AR1, T0
        B $C$L261 ; |3962| 
                                        ; branch occurs ; |3962| 
$C$L228:    
$C$DW$L$_MMC_read$58$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3967,column 5,is_stmt
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$359, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3967| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3967| 
        MOV T0, *SP(#24) ; |3967| 
	.dwpsn	file "src/csl_mmcsd.c",line 3969,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("_MMC_ierDisable")
	.dwattr $C$DW$360, DW_AT_TI_call
        CALL #_MMC_ierDisable ; |3969| 
                                        ; call occurs [#_MMC_ierDisable] ; |3969| 
	.dwpsn	file "src/csl_mmcsd.c",line 3972,column 5,is_stmt
        MOV #249, T0 ; |3972| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("_MMC_intEnable")
	.dwattr $C$DW$361, DW_AT_TI_call
        CALL #_MMC_intEnable ; |3972| 
                                        ; call occurs [#_MMC_intEnable] ; |3972| 
	.dwpsn	file "src/csl_mmcsd.c",line 3973,column 5,is_stmt
        MOV *SP(#24), T0 ; |3973| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$362, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3973| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3973| 
	.dwpsn	file "src/csl_mmcsd.c",line 3975,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#22)), AC0 ; |3975| 
        MOV dbl(*SP(#2)), AC1 ; |3975| 
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$363, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |3975| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |3975| 
        MOV T0, *SP(#10) ; |3975| 
	.dwpsn	file "src/csl_mmcsd.c",line 3985,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, AR2
        MOV *AR3(#44), AR1 ; |3985| 
        CMPU AR2 != AR1, TC1 ; |3985| 
        BCC $C$L234,TC1 ; |3985| 
                                        ; branchcc occurs ; |3985| 
$C$DW$L$_MMC_read$58$E:
$C$DW$L$_MMC_read$59$B:
	.dwpsn	file "src/csl_mmcsd.c",line 3988,column 10,is_stmt
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$364, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |3988| 
                                        ; call occurs [#_IRQ_globalDisable] ; |3988| 
        MOV T0, *SP(#24) ; |3988| 
	.dwpsn	file "src/csl_mmcsd.c",line 3989,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_name("_MMC_ierEnable")
	.dwattr $C$DW$365, DW_AT_TI_call
        CALL #_MMC_ierEnable ; |3989| 
                                        ; call occurs [#_MMC_ierEnable] ; |3989| 
	.dwpsn	file "src/csl_mmcsd.c",line 3990,column 7,is_stmt
        MOV *SP(#24), T0 ; |3990| 
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$366, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |3990| 
                                        ; call occurs [#_IRQ_globalRestore] ; |3990| 
	.dwpsn	file "src/csl_mmcsd.c",line 3997,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |3997| 
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_TI_call
	.dwattr $C$DW$367, DW_AT_TI_indirect
        CALL AC0  ; |3997| 
                                        ; call occurs [AC0] ; |3997| 
	.dwpsn	file "src/csl_mmcsd.c",line 3998,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3998| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |3998| 
        MOV AR1, *SP(#10) ; |3998| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 3999,column 7,is_stmt
        BAND *SP(#10), #104, TC1 ; |3999| 
        BCC $C$L233,!TC1 ; |3999| 
                                        ; branchcc occurs ; |3999| 
$C$DW$L$_MMC_read$59$E:
$C$DW$L$_MMC_read$60$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4001,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4001| 
        MOV *AR3, AR3 ; |4001| 
        MOV #41490, AR2 ; |4001| 
        MOV port(*AR3(T0)), AR1 ; |4001| 
        CMPU AR1 != AR2, TC1 ; |4001| 
        BCC $C$L232,TC1 ; |4001| 
                                        ; branchcc occurs ; |4001| 
$C$DW$L$_MMC_read$60$E:
$C$DW$L$_MMC_read$61$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4004,column 9,is_stmt
        MOV #1000, *SP(#13) ; |4004| 
	.dwpsn	file "src/csl_mmcsd.c",line 4007,column 9,is_stmt

        MOV #908, AC0 ; |4007| 
||      MOV #0, AC1 ; |4007| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$368, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4007| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4007| 
        MOV T0, *SP(#10) ; |4007| 
	.dwpsn	file "src/csl_mmcsd.c",line 4012,column 9,is_stmt
        MOV #0, *SP(#11) ; |4012| 
$C$DW$L$_MMC_read$61$E:
$C$L229:    
$C$DW$L$_MMC_read$62$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4015,column 10,is_stmt
        MOV *SP(#13), AR1 ; |4015| 
        BCC $C$L230,AR1 != #0 ; |4015| 
                                        ; branchcc occurs ; |4015| 
$C$DW$L$_MMC_read$62$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4017,column 11,is_stmt
        MOV #-10, T0
        B $C$L261 ; |4017| 
                                        ; branch occurs ; |4017| 
$C$L230:    
$C$DW$L$_MMC_read$64$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4020,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4020| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4020| 
        MOV AR1, *SP(#10) ; |4020| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4022,column 10,is_stmt
        MOV *SP(#10), AR1 ; |4022| 
        AND #0x0004, AR1, AR1 ; |4022| 
        OR *SP(#11), AR1, AR1 ; |4022| 
        MOV AR1, *SP(#11) ; |4022| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4023,column 10,is_stmt
        MOV *SP(#10), AR1 ; |4023| 
        AND #0x0002, AR1, AR1 ; |4023| 
        OR *SP(#11), AR1, AR1 ; |4023| 
        MOV AR1, *SP(#11) ; |4023| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4025,column 10,is_stmt
        BAND *SP(#10), #144, TC1 ; |4025| 
        BCC $C$L231,!TC1 ; |4025| 
                                        ; branchcc occurs ; |4025| 
$C$DW$L$_MMC_read$64$E:
$C$DW$L$_MMC_read$65$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4027,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4027| 
        MOV *AR3, AR3 ; |4027| 
        MOV #908, port(*AR3(T0)) ; |4027| 
	.dwpsn	file "src/csl_mmcsd.c",line 4028,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4028| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4028| 
        MOV AR1, *SP(#10) ; |4028| 
	.dwpsn	file "src/csl_mmcsd.c",line 4029,column 11,is_stmt
        MOV #0, *SP(#11) ; |4029| 
	.dwpsn	file "src/csl_mmcsd.c",line 4030,column 11,is_stmt
        SUB #1, *SP(#13) ; |4030| 
$C$DW$L$_MMC_read$65$E:
$C$L231:    
$C$DW$L$_MMC_read$66$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4033,column 17,is_stmt
        BTST #2, *SP(#11), TC1 ; |4033| 
        BCC $C$L229,!TC1 ; |4033| 
                                        ; branchcc occurs ; |4033| 
$C$DW$L$_MMC_read$66$E:
$C$DW$L$_MMC_read$67$B:
        BTST #1, *SP(#11), TC1 ; |4033| 
        BCC $C$L229,!TC1 ; |4033| 
                                        ; branchcc occurs ; |4033| 
$C$DW$L$_MMC_read$67$E:
$C$DW$L$_MMC_read$68$B:
        BAND *SP(#10), #144, TC1 ; |4033| 
        BCC $C$L229,TC1 ; |4033| 
                                        ; branchcc occurs ; |4033| 
$C$DW$L$_MMC_read$68$E:
$C$L232:    
$C$DW$L$_MMC_read$69$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4038,column 8,is_stmt
        MOV #1, *SP(#21) ; |4038| 
	.dwpsn	file "src/csl_mmcsd.c",line 4044,column 8,is_stmt
        MOV #1, *SP(#23) ; |4044| 
	.dwpsn	file "src/csl_mmcsd.c",line 4045,column 7,is_stmt
        B $C$L241 ; |4045| 
                                        ; branch occurs ; |4045| 
$C$DW$L$_MMC_read$69$E:
$C$L233:    
$C$DW$L$_MMC_read$70$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4049,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("_MMC_checkReadDmaDone")
	.dwattr $C$DW$369, DW_AT_TI_call
        CALL #_MMC_checkReadDmaDone ; |4049| 
                                        ; call occurs [#_MMC_checkReadDmaDone] ; |4049| 
        BCC $C$L241,T0 == #0 ; |4049| 
                                        ; branchcc occurs ; |4049| 
$C$DW$L$_MMC_read$70$E:
$C$DW$L$_MMC_read$71$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4051,column 11,is_stmt
        MOV #1, *SP(#21) ; |4051| 
	.dwpsn	file "src/csl_mmcsd.c",line 4054,column 6,is_stmt
        B $C$L241 ; |4054| 
                                        ; branch occurs ; |4054| 
$C$DW$L$_MMC_read$71$E:
$C$L234:    
$C$DW$L$_MMC_read$72$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4060,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4060| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4060| 
        MOV AR1, *SP(#10) ; |4060| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4061,column 8,is_stmt
        BAND *SP(#10), #104, TC1 ; |4061| 
        BCC $C$L239,!TC1 ; |4061| 
                                        ; branchcc occurs ; |4061| 
$C$DW$L$_MMC_read$72$E:
$C$DW$L$_MMC_read$73$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4063,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4063| 
        MOV *AR3, AR3 ; |4063| 
        MOV #41490, AR2 ; |4063| 
        MOV port(*AR3(T0)), AR1 ; |4063| 
        CMPU AR1 != AR2, TC1 ; |4063| 
        BCC $C$L238,TC1 ; |4063| 
                                        ; branchcc occurs ; |4063| 
$C$DW$L$_MMC_read$73$E:
$C$DW$L$_MMC_read$74$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4066,column 10,is_stmt
        MOV #1000, *SP(#13) ; |4066| 
	.dwpsn	file "src/csl_mmcsd.c",line 4069,column 10,is_stmt

        MOV #908, AC0 ; |4069| 
||      MOV #0, AC1 ; |4069| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$370, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4069| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4069| 
        MOV T0, *SP(#10) ; |4069| 
	.dwpsn	file "src/csl_mmcsd.c",line 4074,column 10,is_stmt
        MOV #0, *SP(#11) ; |4074| 
$C$DW$L$_MMC_read$74$E:
$C$L235:    
$C$DW$L$_MMC_read$75$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4077,column 11,is_stmt
        MOV *SP(#13), AR1 ; |4077| 
        BCC $C$L236,AR1 != #0 ; |4077| 
                                        ; branchcc occurs ; |4077| 
$C$DW$L$_MMC_read$75$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4079,column 12,is_stmt
        MOV #-10, T0
        B $C$L261 ; |4079| 
                                        ; branch occurs ; |4079| 
$C$L236:    
$C$DW$L$_MMC_read$77$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4082,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4082| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4082| 
        MOV AR1, *SP(#10) ; |4082| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4084,column 11,is_stmt
        MOV *SP(#10), AR1 ; |4084| 
        AND #0x0004, AR1, AR1 ; |4084| 
        OR *SP(#11), AR1, AR1 ; |4084| 
        MOV AR1, *SP(#11) ; |4084| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4085,column 11,is_stmt
        MOV *SP(#10), AR1 ; |4085| 
        AND #0x0002, AR1, AR1 ; |4085| 
        OR *SP(#11), AR1, AR1 ; |4085| 
        MOV AR1, *SP(#11) ; |4085| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4087,column 11,is_stmt
        BAND *SP(#10), #144, TC1 ; |4087| 
        BCC $C$L237,!TC1 ; |4087| 
                                        ; branchcc occurs ; |4087| 
$C$DW$L$_MMC_read$77$E:
$C$DW$L$_MMC_read$78$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4089,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4089| 
        MOV *AR3, AR3 ; |4089| 
        MOV #908, port(*AR3(T0)) ; |4089| 
	.dwpsn	file "src/csl_mmcsd.c",line 4090,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4090| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4090| 
        MOV AR1, *SP(#10) ; |4090| 
	.dwpsn	file "src/csl_mmcsd.c",line 4091,column 12,is_stmt
        MOV #0, *SP(#11) ; |4091| 
	.dwpsn	file "src/csl_mmcsd.c",line 4092,column 12,is_stmt
        SUB #1, *SP(#13) ; |4092| 
$C$DW$L$_MMC_read$78$E:
$C$L237:    
$C$DW$L$_MMC_read$79$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4095,column 18,is_stmt
        BTST #2, *SP(#11), TC1 ; |4095| 
        BCC $C$L235,!TC1 ; |4095| 
                                        ; branchcc occurs ; |4095| 
$C$DW$L$_MMC_read$79$E:
$C$DW$L$_MMC_read$80$B:
        BTST #1, *SP(#11), TC1 ; |4095| 
        BCC $C$L235,!TC1 ; |4095| 
                                        ; branchcc occurs ; |4095| 
$C$DW$L$_MMC_read$80$E:
$C$DW$L$_MMC_read$81$B:
        BAND *SP(#10), #144, TC1 ; |4095| 
        BCC $C$L235,TC1 ; |4095| 
                                        ; branchcc occurs ; |4095| 
$C$DW$L$_MMC_read$81$E:
$C$L238:    
$C$DW$L$_MMC_read$82$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4100,column 9,is_stmt
        MOV #1, *SP(#21) ; |4100| 
	.dwpsn	file "src/csl_mmcsd.c",line 4106,column 9,is_stmt
        MOV #1, *SP(#23) ; |4106| 
	.dwpsn	file "src/csl_mmcsd.c",line 4107,column 9,is_stmt
        B $C$L240 ; |4107| 
                                        ; branch occurs ; |4107| 
$C$DW$L$_MMC_read$82$E:
$C$L239:    
$C$DW$L$_MMC_read$83$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4110,column 15,is_stmt
        MOV *SP(#10), AR1 ; |4110| 
        AND #0x0001, AR1, AR1 ; |4110| 
        CMP AR1 != AR2, TC1 ; |4110| 
        BCC $C$L234,TC1 ; |4110| 
                                        ; branchcc occurs ; |4110| 
$C$DW$L$_MMC_read$83$E:
$C$L240:    
$C$DW$L$_MMC_read$84$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4113,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("_MMC_checkReadDmaDone")
	.dwattr $C$DW$371, DW_AT_TI_call
        CALL #_MMC_checkReadDmaDone ; |4113| 
                                        ; call occurs [#_MMC_checkReadDmaDone] ; |4113| 
        BCC $C$L241,T0 == #0 ; |4113| 
                                        ; branchcc occurs ; |4113| 
$C$DW$L$_MMC_read$84$E:
$C$DW$L$_MMC_read$85$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4115,column 10,is_stmt
        MOV #1, *SP(#21) ; |4115| 
$C$DW$L$_MMC_read$85$E:
$C$L241:    
$C$DW$L$_MMC_read$86$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4118,column 14,is_stmt
        CMP *SP(#21) == #1, TC1 ; |4118| 
        BCC $C$L224,TC1 ; |4118| 
                                        ; branchcc occurs ; |4118| 
$C$DW$L$_MMC_read$86$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4127,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#61), AR1 ; |4127| 
        BCC $C$L253,AR1 != #0 ; |4127| 
                                        ; branchcc occurs ; |4127| 
	.dwpsn	file "src/csl_mmcsd.c",line 4129,column 6,is_stmt
        MOV *SP(#4), AR1 ; |4129| 
        MOV dbl(*SP(#6)), XAR0
        SFTL AR1, #-1 ; |4129| 
        AND #0xffff, AR1, AC0 ; |4129| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("_DMA_swapWords")
	.dwattr $C$DW$372, DW_AT_TI_call
        CALL #_DMA_swapWords ; |4129| 
                                        ; call occurs [#_DMA_swapWords] ; |4129| 
        MOV T0, *SP(#10) ; |4129| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4130,column 6,is_stmt
        MOV *SP(#10), AR1 ; |4130| 
        BCC $C$L253,AR1 == #0 ; |4130| 
                                        ; branchcc occurs ; |4130| 
	.dwpsn	file "src/csl_mmcsd.c",line 4132,column 7,is_stmt
        MOV *SP(#10), T0 ; |4132| 
        B $C$L261 ; |4132| 
                                        ; branch occurs ; |4132| 
$C$L242:    
	.dwpsn	file "src/csl_mmcsd.c",line 4137,column 8,is_stmt
        MOV *AR3(#8), AR1 ; |4137| 
        MOV #1, AR2
        CMP AR2 != AR1, TC1 ; |4137| 
        BCC $C$L252,TC1 ; |4137| 
                                        ; branchcc occurs ; |4137| 
	.dwpsn	file "src/csl_mmcsd.c",line 4140,column 4,is_stmt
        MOV *AR3(#44), AR1 ; |4140| 
        CMPU AR2 == AR1, TC1 ; |4140| 
        BCC $C$L243,TC1 ; |4140| 
                                        ; branchcc occurs ; |4140| 
	.dwpsn	file "src/csl_mmcsd.c",line 4142,column 5,is_stmt
        MOV #-6, T0
        B $C$L261 ; |4142| 
                                        ; branch occurs ; |4142| 
$C$L243:    
$C$DW$L$_MMC_read$94$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4147,column 5,is_stmt
        SUB #1, *SP(#19) ; |4147| 
	.dwpsn	file "src/csl_mmcsd.c",line 4148,column 5,is_stmt
        MOV *SP(#19), AR1 ; |4148| 
        BCC $C$L244,AR1 != #0 ; |4148| 
                                        ; branchcc occurs ; |4148| 
$C$DW$L$_MMC_read$94$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4150,column 6,is_stmt
        MOV #-10, T0
        B $C$L261 ; |4150| 
                                        ; branch occurs ; |4150| 
$C$L244:    
$C$DW$L$_MMC_read$96$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4158,column 5,is_stmt
        MOV #0, *SP(#21) ; |4158| 
	.dwpsn	file "src/csl_mmcsd.c",line 4159,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_mmcsd.c",line 4160,column 11,is_stmt
        MOV #0, *SP(#18) ; |4160| 
	.dwpsn	file "src/csl_mmcsd.c",line 4163,column 5,is_stmt
        MOV uns(*SP(#22)), AC0 ; |4163| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC1 ; |4163| 
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$373, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4163| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4163| 
        MOV T0, *SP(#10) ; |4163| 
	.dwpsn	file "src/csl_mmcsd.c",line 4174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |4174| 
        MOV *AR3, AR3 ; |4174| 
        MOV #148, port(*AR3(T0)) ; |4174| 
	.dwpsn	file "src/csl_mmcsd.c",line 4181,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |4181| 
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_TI_call
	.dwattr $C$DW$374, DW_AT_TI_indirect
        CALL AC0  ; |4181| 
                                        ; call occurs [AC0] ; |4181| 
	.dwpsn	file "src/csl_mmcsd.c",line 4182,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4182| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4182| 
        MOV AR1, *SP(#10) ; |4182| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4183,column 5,is_stmt
        BAND *SP(#10), #144, TC1 ; |4183| 
        BCC $C$L245,!TC1 ; |4183| 
                                        ; branchcc occurs ; |4183| 
$C$DW$L$_MMC_read$96$E:
$C$DW$L$_MMC_read$97$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4185,column 6,is_stmt
        MOV #1, *SP(#21) ; |4185| 
	.dwpsn	file "src/csl_mmcsd.c",line 4186,column 6,is_stmt
        B $C$L251 ; |4186| 
                                        ; branch occurs ; |4186| 
$C$DW$L$_MMC_read$97$E:
$C$L245:    
$C$DW$L$_MMC_read$98$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4197,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |4197| 
        MOV *AR3, AR3 ; |4197| 
        MOV #1096, port(*AR3(T0)) ; |4197| 
	.dwpsn	file "src/csl_mmcsd.c",line 4205,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |4205| 
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_TI_call
	.dwattr $C$DW$375, DW_AT_TI_indirect
        CALL AC0  ; |4205| 
                                        ; call occurs [AC0] ; |4205| 
	.dwpsn	file "src/csl_mmcsd.c",line 4206,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4206| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4206| 
        MOV AR1, *SP(#10) ; |4206| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4207,column 6,is_stmt
        BAND *SP(#10), #104, TC1 ; |4207| 
        BCC $C$L246,!TC1 ; |4207| 
                                        ; branchcc occurs ; |4207| 
$C$DW$L$_MMC_read$98$E:
$C$DW$L$_MMC_read$99$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4209,column 7,is_stmt
        MOV #1, *SP(#21) ; |4209| 
	.dwpsn	file "src/csl_mmcsd.c",line 4210,column 7,is_stmt
        B $C$L251 ; |4210| 
                                        ; branch occurs ; |4210| 
$C$DW$L$_MMC_read$99$E:
$C$L246:    
$C$DW$L$_MMC_read$100$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4217,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#61), AR1 ; |4217| 
        BCC $C$L248,AR1 != #0 ; |4217| 
                                        ; branchcc occurs ; |4217| 
$C$DW$L$_MMC_read$100$E:
$C$DW$L$_MMC_read$101$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4225,column 11,is_stmt
        MOV #0, *SP(#12) ; |4225| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4225,column 22,is_stmt
        MOV #16, AR2 ; |4225| 
        MOV *SP(#12), AR1 ; |4225| 
        CMPU AR1 >= AR2, TC1 ; |4225| 
        BCC $C$L250,TC1 ; |4225| 
                                        ; branchcc occurs ; |4225| 
$C$DW$L$_MMC_read$101$E:
$C$L247:    
$C$DW$L$_MMC_read$102$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4227,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #40, T0 ; |4227| 
        MOV *AR3, AR3 ; |4227| 
        MOV port(*AR3(T0)), AR1 ; |4227| 
        MOV AR1, *AR2 ; |4227| 
	.dwpsn	file "src/csl_mmcsd.c",line 4230,column 8,is_stmt
        ADD #2, *SP(#18) ; |4230| 
	.dwpsn	file "src/csl_mmcsd.c",line 4225,column 34,is_stmt
        ADD #1, *SP(#12) ; |4225| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4225,column 22,is_stmt
        MOV #16, AR2 ; |4225| 
        MOV *SP(#12), AR1 ; |4225| 
        CMPU AR1 < AR2, TC1 ; |4225| 
        BCC $C$L247,TC1 ; |4225| 
                                        ; branchcc occurs ; |4225| 
$C$DW$L$_MMC_read$102$E:
$C$DW$L$_MMC_read$103$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4232,column 6,is_stmt
        B $C$L250 ; |4232| 
                                        ; branch occurs ; |4232| 
$C$DW$L$_MMC_read$103$E:
$C$L248:    
$C$DW$L$_MMC_read$104$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4241,column 11,is_stmt
        MOV #0, *SP(#12) ; |4241| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4241,column 22,is_stmt
        MOV #16, AR2 ; |4241| 
        MOV *SP(#12), AR1 ; |4241| 
        CMPU AR1 >= AR2, TC1 ; |4241| 
        BCC $C$L250,TC1 ; |4241| 
                                        ; branchcc occurs ; |4241| 
$C$DW$L$_MMC_read$104$E:
$C$L249:    
$C$DW$L$_MMC_read$105$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4243,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #41, T0 ; |4243| 
        MOV *AR3, AR3 ; |4243| 
        MOV port(*AR3(T0)), AR1 ; |4243| 
        MOV AR1, *AR2 ; |4243| 
	.dwpsn	file "src/csl_mmcsd.c",line 4246,column 8,is_stmt
        ADD #2, *SP(#18) ; |4246| 
	.dwpsn	file "src/csl_mmcsd.c",line 4241,column 34,is_stmt
        ADD #1, *SP(#12) ; |4241| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4241,column 22,is_stmt
        MOV #16, AR2 ; |4241| 
        MOV *SP(#12), AR1 ; |4241| 
        CMPU AR1 < AR2, TC1 ; |4241| 
        BCC $C$L249,TC1 ; |4241| 
                                        ; branchcc occurs ; |4241| 
$C$DW$L$_MMC_read$105$E:
$C$L250:    
$C$DW$L$_MMC_read$106$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4250,column 13,is_stmt
        MOV *SP(#4), AR1 ; |4250| 
        MOV *SP(#18), AR2 ; |4250| 
        CMPU AR2 < AR1, TC1 ; |4250| 
        BCC $C$L245,TC1 ; |4250| 
                                        ; branchcc occurs ; |4250| 
$C$DW$L$_MMC_read$106$E:
$C$L251:    
$C$DW$L$_MMC_read$107$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4251,column 4,is_stmt
        MOV *SP(#21), AR1 ; |4251| 
        BCC $C$L243,AR1 != #0 ; |4251| 
                                        ; branchcc occurs ; |4251| 
$C$DW$L$_MMC_read$107$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4252,column 3,is_stmt
        B $C$L253 ; |4252| 
                                        ; branch occurs ; |4252| 
$C$L252:    
	.dwpsn	file "src/csl_mmcsd.c",line 4255,column 4,is_stmt
        MOV #-6, T0
        B $C$L261 ; |4255| 
                                        ; branch occurs ; |4255| 
$C$L253:    
	.dwpsn	file "src/csl_mmcsd.c",line 4258,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), AC0 ; |4258| 
        MOV AC0, dbl(*AR3(#14)) ; |4258| 
	.dwpsn	file "src/csl_mmcsd.c",line 4261,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4261| 
        MOV *AR3, AR3 ; |4261| 
        MOV #41490, AR2 ; |4261| 
        MOV port(*AR3(T0)), AR1 ; |4261| 
        CMPU AR1 != AR2, TC1 ; |4261| 
        BCC $C$L257,TC1 ; |4261| 
                                        ; branchcc occurs ; |4261| 
	.dwpsn	file "src/csl_mmcsd.c",line 4263,column 4,is_stmt
        MOV #1000, *SP(#13) ; |4263| 
	.dwpsn	file "src/csl_mmcsd.c",line 4266,column 4,is_stmt

        MOV #908, AC0 ; |4266| 
||      MOV #0, AC1 ; |4266| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$376, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4266| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4266| 
        MOV T0, *SP(#10) ; |4266| 
	.dwpsn	file "src/csl_mmcsd.c",line 4271,column 4,is_stmt
        MOV #0, *SP(#11) ; |4271| 
$C$L254:    
$C$DW$L$_MMC_read$112$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4274,column 5,is_stmt
        MOV *SP(#13), AR1 ; |4274| 
        BCC $C$L255,AR1 != #0 ; |4274| 
                                        ; branchcc occurs ; |4274| 
$C$DW$L$_MMC_read$112$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4276,column 6,is_stmt
        MOV #-10, T0
        B $C$L261 ; |4276| 
                                        ; branch occurs ; |4276| 
$C$L255:    
$C$DW$L$_MMC_read$114$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4279,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4279| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4279| 
        MOV AR1, *SP(#10) ; |4279| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4281,column 5,is_stmt
        MOV *SP(#10), AR1 ; |4281| 
        AND #0x0004, AR1, AR1 ; |4281| 
        OR *SP(#11), AR1, AR1 ; |4281| 
        MOV AR1, *SP(#11) ; |4281| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4282,column 5,is_stmt
        MOV *SP(#10), AR1 ; |4282| 
        AND #0x0002, AR1, AR1 ; |4282| 
        OR *SP(#11), AR1, AR1 ; |4282| 
        MOV AR1, *SP(#11) ; |4282| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4284,column 5,is_stmt
        BAND *SP(#10), #144, TC1 ; |4284| 
        BCC $C$L256,!TC1 ; |4284| 
                                        ; branchcc occurs ; |4284| 
$C$DW$L$_MMC_read$114$E:
$C$DW$L$_MMC_read$115$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4286,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4286| 
        MOV *AR3, AR3 ; |4286| 
        MOV #908, port(*AR3(T0)) ; |4286| 
	.dwpsn	file "src/csl_mmcsd.c",line 4287,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4287| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4287| 
        MOV AR1, *SP(#10) ; |4287| 
	.dwpsn	file "src/csl_mmcsd.c",line 4288,column 6,is_stmt
        MOV #0, *SP(#11) ; |4288| 
	.dwpsn	file "src/csl_mmcsd.c",line 4289,column 6,is_stmt
        SUB #1, *SP(#13) ; |4289| 
$C$DW$L$_MMC_read$115$E:
$C$L256:    
$C$DW$L$_MMC_read$116$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4292,column 12,is_stmt
        BTST #2, *SP(#11), TC1 ; |4292| 
        BCC $C$L254,!TC1 ; |4292| 
                                        ; branchcc occurs ; |4292| 
$C$DW$L$_MMC_read$116$E:
$C$DW$L$_MMC_read$117$B:
        BTST #1, *SP(#11), TC1 ; |4292| 
        BCC $C$L254,!TC1 ; |4292| 
                                        ; branchcc occurs ; |4292| 
$C$DW$L$_MMC_read$117$E:
$C$DW$L$_MMC_read$118$B:
        BAND *SP(#10), #144, TC1 ; |4292| 
        BCC $C$L254,TC1 ; |4292| 
                                        ; branchcc occurs ; |4292| 
$C$DW$L$_MMC_read$118$E:
$C$L257:    
	.dwpsn	file "src/csl_mmcsd.c",line 4298,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |4298| 
        MOV *AR3, AR3 ; |4298| 
        MOV port(*AR3(T0)), AC0 ; |4298| 
        SFTL AC0, #8, AC0 ; |4298| 
        AND #0xffff, AC0, AC0 ; |4298| 
        MOV AC0, dbl(*SP(#8)) ; |4298| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4299,column 3,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |4299| 
        SFTL AC0, #8, AC0 ; |4299| 
        MOV AC0, dbl(*SP(#8)) ; |4299| 
	.dwpsn	file "src/csl_mmcsd.c",line 4300,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |4300| 
        MOV *AR3, AR3 ; |4300| 
        MOV dbl(*SP(#8)), AC0 ; |4300| 
        OR port(*AR3(T0)), AC0, AC0 ; |4300| 
        MOV AC0, dbl(*SP(#8)) ; |4300| 
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4302,column 6,is_stmt
        MOV #-1 << #16, AC0 ; |4302| 
        OR #0x00ff, AC0, AC0 ; |4302| 
        MOV dbl(*SP(#8)), AC1 ; |4302| 
        AND AC1, AC0 ; |4302| 
        BCC $C$L260,AC0 == #0 ; |4302| 
                                        ; branchcc occurs ; |4302| 
	.dwpsn	file "src/csl_mmcsd.c",line 4304,column 4,is_stmt
        MOV #-13, T0
        B $C$L261 ; |4304| 
                                        ; branch occurs ; |4304| 
$C$L258:    
	.dwpsn	file "src/csl_mmcsd.c",line 4309,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |4309| 

        CMPU AC1 != AC0, TC1 ; |4309| 
        BCC $C$L259,TC1 ; |4309| 
                                        ; branchcc occurs ; |4309| 
	.dwpsn	file "src/csl_mmcsd.c",line 4311,column 13,is_stmt
        MOV #-5, T0
        B $C$L261 ; |4311| 
                                        ; branch occurs ; |4311| 
$C$L259:    
	.dwpsn	file "src/csl_mmcsd.c",line 4315,column 13,is_stmt
        MOV #-6, T0
        B $C$L261 ; |4315| 
                                        ; branch occurs ; |4315| 
$C$L260:    
	.dwpsn	file "src/csl_mmcsd.c",line 4319,column 2,is_stmt
        MOV #0, T0
$C$L261:    
	.dwpsn	file "src/csl_mmcsd.c",line 4320,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 1
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$378	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$378, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L254:1:1714639441")
	.dwattr $C$DW$378, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$378, DW_AT_TI_begin_line(0x10b0)
	.dwattr $C$DW$378, DW_AT_TI_end_line(0x10c4)
$C$DW$379	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$379, DW_AT_low_pc($C$DW$L$_MMC_read$112$B)
	.dwattr $C$DW$379, DW_AT_high_pc($C$DW$L$_MMC_read$112$E)
$C$DW$380	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$380, DW_AT_low_pc($C$DW$L$_MMC_read$114$B)
	.dwattr $C$DW$380, DW_AT_high_pc($C$DW$L$_MMC_read$114$E)
$C$DW$381	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$381, DW_AT_low_pc($C$DW$L$_MMC_read$115$B)
	.dwattr $C$DW$381, DW_AT_high_pc($C$DW$L$_MMC_read$115$E)
$C$DW$382	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$382, DW_AT_low_pc($C$DW$L$_MMC_read$118$B)
	.dwattr $C$DW$382, DW_AT_high_pc($C$DW$L$_MMC_read$118$E)
$C$DW$383	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$383, DW_AT_low_pc($C$DW$L$_MMC_read$117$B)
	.dwattr $C$DW$383, DW_AT_high_pc($C$DW$L$_MMC_read$117$E)
$C$DW$384	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$384, DW_AT_low_pc($C$DW$L$_MMC_read$116$B)
	.dwattr $C$DW$384, DW_AT_high_pc($C$DW$L$_MMC_read$116$E)
	.dwendtag $C$DW$378


$C$DW$385	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$385, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L243:1:1714639441")
	.dwattr $C$DW$385, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$385, DW_AT_TI_begin_line(0x1031)
	.dwattr $C$DW$385, DW_AT_TI_end_line(0x109b)
$C$DW$386	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$386, DW_AT_low_pc($C$DW$L$_MMC_read$94$B)
	.dwattr $C$DW$386, DW_AT_high_pc($C$DW$L$_MMC_read$94$E)
$C$DW$387	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$387, DW_AT_low_pc($C$DW$L$_MMC_read$96$B)
	.dwattr $C$DW$387, DW_AT_high_pc($C$DW$L$_MMC_read$96$E)
$C$DW$388	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$388, DW_AT_low_pc($C$DW$L$_MMC_read$97$B)
	.dwattr $C$DW$388, DW_AT_high_pc($C$DW$L$_MMC_read$97$E)
$C$DW$389	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$389, DW_AT_low_pc($C$DW$L$_MMC_read$99$B)
	.dwattr $C$DW$389, DW_AT_high_pc($C$DW$L$_MMC_read$99$E)
$C$DW$390	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$390, DW_AT_low_pc($C$DW$L$_MMC_read$107$B)
	.dwattr $C$DW$390, DW_AT_high_pc($C$DW$L$_MMC_read$107$E)

$C$DW$391	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$391, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L245:2:1714639441")
	.dwattr $C$DW$391, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$391, DW_AT_TI_begin_line(0x105d)
	.dwattr $C$DW$391, DW_AT_TI_end_line(0x109a)
$C$DW$392	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$392, DW_AT_low_pc($C$DW$L$_MMC_read$98$B)
	.dwattr $C$DW$392, DW_AT_high_pc($C$DW$L$_MMC_read$98$E)
$C$DW$393	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$393, DW_AT_low_pc($C$DW$L$_MMC_read$100$B)
	.dwattr $C$DW$393, DW_AT_high_pc($C$DW$L$_MMC_read$100$E)
$C$DW$394	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$394, DW_AT_low_pc($C$DW$L$_MMC_read$101$B)
	.dwattr $C$DW$394, DW_AT_high_pc($C$DW$L$_MMC_read$101$E)
$C$DW$395	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$395, DW_AT_low_pc($C$DW$L$_MMC_read$103$B)
	.dwattr $C$DW$395, DW_AT_high_pc($C$DW$L$_MMC_read$103$E)
$C$DW$396	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$396, DW_AT_low_pc($C$DW$L$_MMC_read$104$B)
	.dwattr $C$DW$396, DW_AT_high_pc($C$DW$L$_MMC_read$104$E)
$C$DW$397	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$397, DW_AT_low_pc($C$DW$L$_MMC_read$106$B)
	.dwattr $C$DW$397, DW_AT_high_pc($C$DW$L$_MMC_read$106$E)

$C$DW$398	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$398, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L247:3:1714639441")
	.dwattr $C$DW$398, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$398, DW_AT_TI_begin_line(0x1081)
	.dwattr $C$DW$398, DW_AT_TI_end_line(0x1087)
$C$DW$399	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$399, DW_AT_low_pc($C$DW$L$_MMC_read$102$B)
	.dwattr $C$DW$399, DW_AT_high_pc($C$DW$L$_MMC_read$102$E)
	.dwendtag $C$DW$398


$C$DW$400	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$400, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L249:3:1714639441")
	.dwattr $C$DW$400, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$400, DW_AT_TI_begin_line(0x1091)
	.dwattr $C$DW$400, DW_AT_TI_end_line(0x1097)
$C$DW$401	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$401, DW_AT_low_pc($C$DW$L$_MMC_read$105$B)
	.dwattr $C$DW$401, DW_AT_high_pc($C$DW$L$_MMC_read$105$E)
	.dwendtag $C$DW$400

	.dwendtag $C$DW$391

	.dwendtag $C$DW$385


$C$DW$402	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$402, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L224:1:1714639441")
	.dwattr $C$DW$402, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$402, DW_AT_TI_begin_line(0xf47)
	.dwattr $C$DW$402, DW_AT_TI_end_line(0x1016)
$C$DW$403	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$403, DW_AT_low_pc($C$DW$L$_MMC_read$49$B)
	.dwattr $C$DW$403, DW_AT_high_pc($C$DW$L$_MMC_read$49$E)
$C$DW$404	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$404, DW_AT_low_pc($C$DW$L$_MMC_read$74$B)
	.dwattr $C$DW$404, DW_AT_high_pc($C$DW$L$_MMC_read$74$E)
$C$DW$405	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$405, DW_AT_low_pc($C$DW$L$_MMC_read$73$B)
	.dwattr $C$DW$405, DW_AT_high_pc($C$DW$L$_MMC_read$73$E)
$C$DW$406	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$406, DW_AT_low_pc($C$DW$L$_MMC_read$82$B)
	.dwattr $C$DW$406, DW_AT_high_pc($C$DW$L$_MMC_read$82$E)
$C$DW$407	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$407, DW_AT_low_pc($C$DW$L$_MMC_read$61$B)
	.dwattr $C$DW$407, DW_AT_high_pc($C$DW$L$_MMC_read$61$E)
$C$DW$408	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$408, DW_AT_low_pc($C$DW$L$_MMC_read$52$B)
	.dwattr $C$DW$408, DW_AT_high_pc($C$DW$L$_MMC_read$52$E)
$C$DW$409	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$409, DW_AT_low_pc($C$DW$L$_MMC_read$54$B)
	.dwattr $C$DW$409, DW_AT_high_pc($C$DW$L$_MMC_read$54$E)
$C$DW$410	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$410, DW_AT_low_pc($C$DW$L$_MMC_read$51$B)
	.dwattr $C$DW$410, DW_AT_high_pc($C$DW$L$_MMC_read$51$E)
$C$DW$411	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$411, DW_AT_low_pc($C$DW$L$_MMC_read$56$B)
	.dwattr $C$DW$411, DW_AT_high_pc($C$DW$L$_MMC_read$56$E)
$C$DW$412	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$412, DW_AT_low_pc($C$DW$L$_MMC_read$58$B)
	.dwattr $C$DW$412, DW_AT_high_pc($C$DW$L$_MMC_read$58$E)
$C$DW$413	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$413, DW_AT_low_pc($C$DW$L$_MMC_read$59$B)
	.dwattr $C$DW$413, DW_AT_high_pc($C$DW$L$_MMC_read$59$E)
$C$DW$414	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$414, DW_AT_low_pc($C$DW$L$_MMC_read$60$B)
	.dwattr $C$DW$414, DW_AT_high_pc($C$DW$L$_MMC_read$60$E)
$C$DW$415	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$415, DW_AT_low_pc($C$DW$L$_MMC_read$69$B)
	.dwattr $C$DW$415, DW_AT_high_pc($C$DW$L$_MMC_read$69$E)
$C$DW$416	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$416, DW_AT_low_pc($C$DW$L$_MMC_read$70$B)
	.dwattr $C$DW$416, DW_AT_high_pc($C$DW$L$_MMC_read$70$E)
$C$DW$417	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$417, DW_AT_low_pc($C$DW$L$_MMC_read$71$B)
	.dwattr $C$DW$417, DW_AT_high_pc($C$DW$L$_MMC_read$71$E)
$C$DW$418	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$418, DW_AT_low_pc($C$DW$L$_MMC_read$84$B)
	.dwattr $C$DW$418, DW_AT_high_pc($C$DW$L$_MMC_read$84$E)
$C$DW$419	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$419, DW_AT_low_pc($C$DW$L$_MMC_read$85$B)
	.dwattr $C$DW$419, DW_AT_high_pc($C$DW$L$_MMC_read$85$E)
$C$DW$420	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$420, DW_AT_low_pc($C$DW$L$_MMC_read$86$B)
	.dwattr $C$DW$420, DW_AT_high_pc($C$DW$L$_MMC_read$86$E)

$C$DW$421	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$421, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L235:2:1714639441")
	.dwattr $C$DW$421, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$421, DW_AT_TI_begin_line(0xfeb)
	.dwattr $C$DW$421, DW_AT_TI_end_line(0xfff)
$C$DW$422	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$422, DW_AT_low_pc($C$DW$L$_MMC_read$75$B)
	.dwattr $C$DW$422, DW_AT_high_pc($C$DW$L$_MMC_read$75$E)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_MMC_read$77$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_MMC_read$77$E)
$C$DW$424	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$424, DW_AT_low_pc($C$DW$L$_MMC_read$78$B)
	.dwattr $C$DW$424, DW_AT_high_pc($C$DW$L$_MMC_read$78$E)
$C$DW$425	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$425, DW_AT_low_pc($C$DW$L$_MMC_read$81$B)
	.dwattr $C$DW$425, DW_AT_high_pc($C$DW$L$_MMC_read$81$E)
$C$DW$426	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$426, DW_AT_low_pc($C$DW$L$_MMC_read$80$B)
	.dwattr $C$DW$426, DW_AT_high_pc($C$DW$L$_MMC_read$80$E)
$C$DW$427	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$427, DW_AT_low_pc($C$DW$L$_MMC_read$79$B)
	.dwattr $C$DW$427, DW_AT_high_pc($C$DW$L$_MMC_read$79$E)
	.dwendtag $C$DW$421


$C$DW$428	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$428, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L234:2:1714639441")
	.dwattr $C$DW$428, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$428, DW_AT_TI_begin_line(0xfda)
	.dwattr $C$DW$428, DW_AT_TI_end_line(0x100e)
$C$DW$429	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$429, DW_AT_low_pc($C$DW$L$_MMC_read$72$B)
	.dwattr $C$DW$429, DW_AT_high_pc($C$DW$L$_MMC_read$72$E)
$C$DW$430	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$430, DW_AT_low_pc($C$DW$L$_MMC_read$83$B)
	.dwattr $C$DW$430, DW_AT_high_pc($C$DW$L$_MMC_read$83$E)
	.dwendtag $C$DW$428


$C$DW$431	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$431, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L229:2:1714639441")
	.dwattr $C$DW$431, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$431, DW_AT_TI_begin_line(0xfad)
	.dwattr $C$DW$431, DW_AT_TI_end_line(0xfc1)
$C$DW$432	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$432, DW_AT_low_pc($C$DW$L$_MMC_read$62$B)
	.dwattr $C$DW$432, DW_AT_high_pc($C$DW$L$_MMC_read$62$E)
$C$DW$433	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$433, DW_AT_low_pc($C$DW$L$_MMC_read$64$B)
	.dwattr $C$DW$433, DW_AT_high_pc($C$DW$L$_MMC_read$64$E)
$C$DW$434	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$434, DW_AT_low_pc($C$DW$L$_MMC_read$65$B)
	.dwattr $C$DW$434, DW_AT_high_pc($C$DW$L$_MMC_read$65$E)
$C$DW$435	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$435, DW_AT_low_pc($C$DW$L$_MMC_read$68$B)
	.dwattr $C$DW$435, DW_AT_high_pc($C$DW$L$_MMC_read$68$E)
$C$DW$436	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$436, DW_AT_low_pc($C$DW$L$_MMC_read$67$B)
	.dwattr $C$DW$436, DW_AT_high_pc($C$DW$L$_MMC_read$67$E)
$C$DW$437	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$437, DW_AT_low_pc($C$DW$L$_MMC_read$66$B)
	.dwattr $C$DW$437, DW_AT_high_pc($C$DW$L$_MMC_read$66$E)
	.dwendtag $C$DW$431

	.dwendtag $C$DW$402


$C$DW$438	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$438, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L210:1:1714639441")
	.dwattr $C$DW$438, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$438, DW_AT_TI_begin_line(0xecf)
	.dwattr $C$DW$438, DW_AT_TI_end_line(0xf22)
$C$DW$439	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$439, DW_AT_low_pc($C$DW$L$_MMC_read$22$B)
	.dwattr $C$DW$439, DW_AT_high_pc($C$DW$L$_MMC_read$22$E)
$C$DW$440	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$440, DW_AT_low_pc($C$DW$L$_MMC_read$25$B)
	.dwattr $C$DW$440, DW_AT_high_pc($C$DW$L$_MMC_read$25$E)
$C$DW$441	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$441, DW_AT_low_pc($C$DW$L$_MMC_read$24$B)
	.dwattr $C$DW$441, DW_AT_high_pc($C$DW$L$_MMC_read$24$E)
$C$DW$442	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$442, DW_AT_low_pc($C$DW$L$_MMC_read$37$B)
	.dwattr $C$DW$442, DW_AT_high_pc($C$DW$L$_MMC_read$37$E)

$C$DW$443	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$443, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L212:2:1714639441")
	.dwattr $C$DW$443, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$443, DW_AT_TI_begin_line(0xeec)
	.dwattr $C$DW$443, DW_AT_TI_end_line(0xf21)
$C$DW$444	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$444, DW_AT_low_pc($C$DW$L$_MMC_read$26$B)
	.dwattr $C$DW$444, DW_AT_high_pc($C$DW$L$_MMC_read$26$E)
$C$DW$445	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$445, DW_AT_low_pc($C$DW$L$_MMC_read$27$B)
	.dwattr $C$DW$445, DW_AT_high_pc($C$DW$L$_MMC_read$27$E)
$C$DW$446	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$446, DW_AT_low_pc($C$DW$L$_MMC_read$29$B)
	.dwattr $C$DW$446, DW_AT_high_pc($C$DW$L$_MMC_read$29$E)
$C$DW$447	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$447, DW_AT_low_pc($C$DW$L$_MMC_read$30$B)
	.dwattr $C$DW$447, DW_AT_high_pc($C$DW$L$_MMC_read$30$E)
$C$DW$448	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$448, DW_AT_low_pc($C$DW$L$_MMC_read$31$B)
	.dwattr $C$DW$448, DW_AT_high_pc($C$DW$L$_MMC_read$31$E)
$C$DW$449	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$449, DW_AT_low_pc($C$DW$L$_MMC_read$33$B)
	.dwattr $C$DW$449, DW_AT_high_pc($C$DW$L$_MMC_read$33$E)
$C$DW$450	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$450, DW_AT_low_pc($C$DW$L$_MMC_read$34$B)
	.dwattr $C$DW$450, DW_AT_high_pc($C$DW$L$_MMC_read$34$E)
$C$DW$451	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$451, DW_AT_low_pc($C$DW$L$_MMC_read$36$B)
	.dwattr $C$DW$451, DW_AT_high_pc($C$DW$L$_MMC_read$36$E)
$C$DW$452	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$452, DW_AT_low_pc($C$DW$L$_MMC_read$28$B)
	.dwattr $C$DW$452, DW_AT_high_pc($C$DW$L$_MMC_read$28$E)

$C$DW$453	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$453, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L215:3:1714639441")
	.dwattr $C$DW$453, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$453, DW_AT_TI_begin_line(0xf08)
	.dwattr $C$DW$453, DW_AT_TI_end_line(0xf0e)
$C$DW$454	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$454, DW_AT_low_pc($C$DW$L$_MMC_read$32$B)
	.dwattr $C$DW$454, DW_AT_high_pc($C$DW$L$_MMC_read$32$E)
	.dwendtag $C$DW$453


$C$DW$455	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$455, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L217:3:1714639441")
	.dwattr $C$DW$455, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$455, DW_AT_TI_begin_line(0xf18)
	.dwattr $C$DW$455, DW_AT_TI_end_line(0xf1e)
$C$DW$456	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$456, DW_AT_low_pc($C$DW$L$_MMC_read$35$B)
	.dwattr $C$DW$456, DW_AT_high_pc($C$DW$L$_MMC_read$35$E)
	.dwendtag $C$DW$455

	.dwendtag $C$DW$443

	.dwendtag $C$DW$438


$C$DW$457	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$457, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L202:1:1714639441")
	.dwattr $C$DW$457, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$457, DW_AT_TI_begin_line(0xe9e)
	.dwattr $C$DW$457, DW_AT_TI_end_line(0xea7)
$C$DW$458	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$458, DW_AT_low_pc($C$DW$L$_MMC_read$9$B)
	.dwattr $C$DW$458, DW_AT_high_pc($C$DW$L$_MMC_read$9$E)
$C$DW$459	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$459, DW_AT_low_pc($C$DW$L$_MMC_read$10$B)
	.dwattr $C$DW$459, DW_AT_high_pc($C$DW$L$_MMC_read$10$E)
$C$DW$460	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$460, DW_AT_low_pc($C$DW$L$_MMC_read$12$B)
	.dwattr $C$DW$460, DW_AT_high_pc($C$DW$L$_MMC_read$12$E)
$C$DW$461	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$461, DW_AT_low_pc($C$DW$L$_MMC_read$11$B)
	.dwattr $C$DW$461, DW_AT_high_pc($C$DW$L$_MMC_read$11$E)
	.dwendtag $C$DW$457

	.dwattr $C$DW$319, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$319, DW_AT_TI_end_line(0x10e0)
	.dwattr $C$DW$319, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$319

	.sect	".text"
	.global	_MMC_write

$C$DW$462	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_write")
	.dwattr $C$DW$462, DW_AT_low_pc(_MMC_write)
	.dwattr $C$DW$462, DW_AT_high_pc(0x00)
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_MMC_write")
	.dwattr $C$DW$462, DW_AT_external
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$462, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$462, DW_AT_TI_begin_line(0x114e)
	.dwattr $C$DW$462, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$462, DW_AT_TI_max_frame_size(0x1c)
	.dwpsn	file "src/csl_mmcsd.c",line 4434,column 1,is_stmt,address _MMC_write

	.dwfde $C$DW$CIE, _MMC_write
$C$DW$463	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg17]
$C$DW$464	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cardAddr")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg0]
$C$DW$465	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBytes")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_reg12]
$C$DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWriteBuffer")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_pWriteBuffer")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_write                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,T2,T3,AR0,XAR0,AR1,XAR1,AR2,   *
;*                        AR3,XAR3,AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Save On Entry Regs : T2,T3                                                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 28 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (25 local values)                                    *
;*                        (2 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSH T3
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 15, -3
        AADD #-25, SP
	.dwcfi	cfa_offset, 28
$C$DW$467	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$468	.dwtag  DW_TAG_variable, DW_AT_name("cardAddr")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$469	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$470	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuffer")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_pWriteBuffer")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$471	.dwtag  DW_TAG_variable, DW_AT_name("response")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_response")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$472	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$472, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$473	.dwtag  DW_TAG_variable, DW_AT_name("mmcStatus")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_mmcStatus")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$474	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$475	.dwtag  DW_TAG_variable, DW_AT_name("stopCmdRetryCnt")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_stopCmdRetryCnt")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$476	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$476, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$477	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuff")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_pWriteBuff")
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$477, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$478	.dwtag  DW_TAG_variable, DW_AT_name("wrCntMmc")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_wrCntMmc")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$479	.dwtag  DW_TAG_variable, DW_AT_name("writeRetryCount")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_writeRetryCount")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_bregx 0x24 19]
$C$DW$480	.dwtag  DW_TAG_variable, DW_AT_name("blkCnt")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_blkCnt")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_bregx 0x24 20]
$C$DW$481	.dwtag  DW_TAG_variable, DW_AT_name("writeCmd")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_writeCmd")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_bregx 0x24 21]
$C$DW$482	.dwtag  DW_TAG_variable, DW_AT_name("reIssueWriteFlag")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_reIssueWriteFlag")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_bregx 0x24 22]
$C$DW$483	.dwtag  DW_TAG_variable, DW_AT_name("reStartDma")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_reStartDma")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_bregx 0x24 23]
$C$DW$484	.dwtag  DW_TAG_variable, DW_AT_name("saved")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_saved")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_bregx 0x24 24]
        MOV XAR1, dbl(*SP(#6))
        MOV T0, *SP(#4) ; |4434| 
        MOV AC0, dbl(*SP(#2)) ; |4434| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 4451,column 2,is_stmt
        MOV #0, *SP(#23) ; |4451| 
	.dwpsn	file "src/csl_mmcsd.c",line 4452,column 2,is_stmt
        MOV #1000, *SP(#19) ; |4452| 
	.dwpsn	file "src/csl_mmcsd.c",line 4454,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L331,AC0 == #0 ; |4454| 
                                        ; branchcc occurs ; |4454| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L331,AC0 == #0 ; |4454| 
                                        ; branchcc occurs ; |4454| 
	.dwpsn	file "src/csl_mmcsd.c",line 4457,column 9,is_stmt
        MOV *SP(#4), AR1 ; |4457| 
        BCC $C$L266,AR1 == #0 ; |4457| 
                                        ; branchcc occurs ; |4457| 
	.dwpsn	file "src/csl_mmcsd.c",line 4465,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#63), AR1 ; |4465| 
        BCC $C$L262,AR1 == #0 ; |4465| 
                                        ; branchcc occurs ; |4465| 
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#26) == #1, TC1 ; |4465| 
        BCC $C$L262,TC1 ; |4465| 
                                        ; branchcc occurs ; |4465| 
	.dwpsn	file "src/csl_mmcsd.c",line 4468,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |4468| 
        MOV *AR3(#63), T1 ; |4468| 
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_name("__divu")
	.dwattr $C$DW$485, DW_AT_TI_call
        CALL #__divu ; |4468| 
                                        ; call occurs [#__divu] ; |4468| 
        MOV T0, *SP(#20) ; |4468| 
	.dwpsn	file "src/csl_mmcsd.c",line 4469,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |4469| 
        MOV *AR3, AR3 ; |4469| 
        MOV port(*AR3(T0)), AR1 ; |4469| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xf000, AR1, AR2 ; |4469| 
        MOV *AR3(#63), AR1 ; |4469| 
        MOV *AR3, AR3 ; |4469| 
        AND #0x0fff, AR1, AR1 ; |4469| 
        OR AR2, AR1 ; |4469| 
        MOV AR1, port(*AR3(T0)) ; |4469| 
	.dwpsn	file "src/csl_mmcsd.c",line 4471,column 4,is_stmt
        B $C$L263 ; |4471| 
                                        ; branch occurs ; |4471| 
$C$L262:    
	.dwpsn	file "src/csl_mmcsd.c",line 4474,column 5,is_stmt
        MOV uns(*SP(#4)), AC0 ; |4474| 
        SFTS AC0, #-9, AC0 ; |4474| 
        MOV AC0, *SP(#20) ; |4474| 
	.dwpsn	file "src/csl_mmcsd.c",line 4475,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |4475| 
        MOV *AR3, AR3 ; |4475| 
        MOV port(*AR3(T0)), AR1 ; |4475| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4475| 
        AND #0xf000, AR1, AC0 ; |4475| 
        BSET @#9, AC0 ; |4475| 
        MOV AC0, port(*AR3(T0)) ; |4475| 
$C$L263:    
	.dwpsn	file "src/csl_mmcsd.c",line 4479,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |4479| 
        MOV *AR3, AR3 ; |4479| 
        MOV port(*AR3(T0)), AR1 ; |4479| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4479| 
        MOV *SP(#20), AR1 ; |4479| 
        OR #0x0000, AR1, AR1 ; |4479| 
        MOV AR1, port(*AR3(T0)) ; |4479| 
	.dwpsn	file "src/csl_mmcsd.c",line 4487,column 4,is_stmt
        MOV #12, T0
        MOV #32, AR2 ; |4496| 

        MOV #1, *SP(#11) ; |4487| 
||      MOV #1, AR1

$C$L264:    
$C$DW$L$_MMC_write$9$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4490,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4490| 
        MOV port(*AR3(T0)), AR3 ; |4490| 
        MOV AR3, *SP(#10) ; |4490| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4491,column 5,is_stmt
        MOV *SP(#10), AR3 ; |4491| 
        AND #0x0020, AR3, AR3 ; |4491| 
        OR *SP(#11), AR3, AR3 ; |4491| 
        MOV AR3, *SP(#11) ; |4491| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4492,column 5,is_stmt
        BTST #0, *SP(#10), TC1 ; |4492| 
        BCC $C$L265,TC1 ; |4492| 
                                        ; branchcc occurs ; |4492| 
$C$DW$L$_MMC_write$9$E:
$C$DW$L$_MMC_write$10$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4494,column 6,is_stmt
        AND #0xfffe, *SP(#11) ; |4494| 
$C$DW$L$_MMC_write$10$E:
$C$L265:    
$C$DW$L$_MMC_write$11$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4496,column 21,is_stmt
        MOV *SP(#11), AR3 ; |4496| 
        AND #0x0020, AR3, AR3 ; |4496| 
        CMPU AR3 != AR2, TC1 ; |4496| 
        BCC $C$L264,TC1 ; |4496| 
                                        ; branchcc occurs ; |4496| 
$C$DW$L$_MMC_write$11$E:
$C$DW$L$_MMC_write$12$B:
        MOV *SP(#11), AR3 ; |4496| 
        AND #0x0001, AR3, AR3 ; |4496| 
        CMPU AR3 == AR1, TC1 ; |4496| 
        BCC $C$L264,TC1 ; |4496| 
                                        ; branchcc occurs ; |4496| 
$C$DW$L$_MMC_write$12$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4498,column 9,is_stmt
        B $C$L267 ; |4498| 
                                        ; branch occurs ; |4498| 
$C$L266:    
	.dwpsn	file "src/csl_mmcsd.c",line 4501,column 13,is_stmt

        B $C$L334 ; |4501| 
||      MOV #-6, T0

                                        ; branch occurs ; |4501| 
$C$L267:    
	.dwpsn	file "src/csl_mmcsd.c",line 4504,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_mmcsd.c",line 4505,column 9,is_stmt
        MOV #0, *SP(#18) ; |4505| 
	.dwpsn	file "src/csl_mmcsd.c",line 4508,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4508| 
        MOV port(*AR3), AR1 ; |4508| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#62) << #10, AC0 ; |4508| 
        MOV *AR3, AR3 ; |4508| 
        BCLR @#10, AR1 ; |4508| 
        AND #0x0400, AC0, AR2 ; |4508| 
        OR AR1, AR2 ; |4508| 
        MOV AR2, port(*AR3) ; |4508| 
	.dwpsn	file "src/csl_mmcsd.c",line 4512,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |4512| 
        MOV *AR3, AR3 ; |4512| 
        MOV port(*AR3(T0)), AR1 ; |4512| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4512| 
        BCLR @#0, AR1 ; |4512| 
        BSET @#0, AR1 ; |4512| 
        MOV AR1, port(*AR3(T0)) ; |4512| 
	.dwpsn	file "src/csl_mmcsd.c",line 4514,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4514| 
        MOV port(*AR3(T0)), AR1 ; |4514| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4514| 
        BCLR @#1, AR1 ; |4514| 
        BSET @#1, AR1 ; |4514| 
        MOV AR1, port(*AR3(T0)) ; |4514| 
	.dwpsn	file "src/csl_mmcsd.c",line 4516,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AR2
        MOV *AR3(#8), AR1 ; |4516| 
        CMP AR2 != AR1, TC1 ; |4516| 
        BCC $C$L268,TC1 ; |4516| 
                                        ; branchcc occurs ; |4516| 
	.dwpsn	file "src/csl_mmcsd.c",line 4518,column 4,is_stmt
        MOV *AR3, AR3 ; |4518| 
        MOV port(*AR3(T0)), AR1 ; |4518| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4518| 
        AND #0xffe7, AR1, AC0 ; |4518| 
        BSET @#4, AC0 ; |4518| 
        MOV AC0, port(*AR3(T0)) ; |4518| 
	.dwpsn	file "src/csl_mmcsd.c",line 4519,column 3,is_stmt
        B $C$L269 ; |4519| 
                                        ; branch occurs ; |4519| 
$C$L268:    
	.dwpsn	file "src/csl_mmcsd.c",line 4522,column 4,is_stmt
        MOV *AR3, AR3 ; |4522| 
        MOV port(*AR3(T0)), AR1 ; |4522| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4522| 
        AND #0xffe7, AR1, AC0 ; |4522| 
        MOV AC0, port(*AR3(T0)) ; |4522| 
$C$L269:    
	.dwpsn	file "src/csl_mmcsd.c",line 4526,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4526| 
        MOV port(*AR3(T0)), AR1 ; |4526| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4526| 
        BCLR @#2, AR1 ; |4526| 
        BSET @#2, AR1 ; |4526| 
        MOV AR1, port(*AR3(T0)) ; |4526| 
	.dwpsn	file "src/csl_mmcsd.c",line 4529,column 3,is_stmt

        MOV *SP(#20), AR1 ; |4529| 
||      MOV #1, AR2

        CMPU AR1 <= AR2, TC1 ; |4529| 
        BCC $C$L270,TC1 ; |4529| 
                                        ; branchcc occurs ; |4529| 
	.dwpsn	file "src/csl_mmcsd.c",line 4532,column 4,is_stmt
        MOV #10777, *SP(#21) ; |4532| 
	.dwpsn	file "src/csl_mmcsd.c",line 4533,column 3,is_stmt
        B $C$L271 ; |4533| 
                                        ; branch occurs ; |4533| 
$C$L270:    
	.dwpsn	file "src/csl_mmcsd.c",line 4537,column 4,is_stmt
        MOV #10776, *SP(#21) ; |4537| 
$C$L271:    
	.dwpsn	file "src/csl_mmcsd.c",line 4540,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AR2
        MOV *AR3(#8), AR1 ; |4540| 
        CMP AR2 != AR1, TC1 ; |4540| 
        BCC $C$L289,TC1 ; |4540| 
                                        ; branchcc occurs ; |4540| 
$C$L272:    
$C$DW$L$_MMC_write$22$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4544,column 5,is_stmt
        SUB #1, *SP(#19) ; |4544| 
	.dwpsn	file "src/csl_mmcsd.c",line 4545,column 5,is_stmt
        MOV *SP(#19), AR1 ; |4545| 
        BCC $C$L273,AR1 != #0 ; |4545| 
                                        ; branchcc occurs ; |4545| 
$C$DW$L$_MMC_write$22$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4547,column 6,is_stmt

        B $C$L334 ; |4547| 
||      MOV #-10, T0

                                        ; branch occurs ; |4547| 
$C$L273:    
$C$DW$L$_MMC_write$24$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4549,column 5,is_stmt
        MOV #0, *SP(#22) ; |4549| 
	.dwpsn	file "src/csl_mmcsd.c",line 4550,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_mmcsd.c",line 4551,column 5,is_stmt
        MOV #0, *SP(#18) ; |4551| 
	.dwpsn	file "src/csl_mmcsd.c",line 4553,column 5,is_stmt
        MOV uns(*SP(#21)), AC0 ; |4553| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC1 ; |4553| 
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$486, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4553| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4553| 
        MOV T0, *SP(#10) ; |4553| 
	.dwpsn	file "src/csl_mmcsd.c",line 4558,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |4558| 
        MOV *AR3, AR3 ; |4558| 
        MOV port(*AR3(T0)), AR1 ; |4558| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4558| 
        BCLR @#0, AR1 ; |4558| 
        BSET @#0, AR1 ; |4558| 
        MOV #512, AR4 ; |4571| 
        MOV #16, AR2 ; |4590| 
        MOV AR1, port(*AR3(T0)) ; |4558| 
        MOV #16, AR1 ; |4606| 
$C$DW$L$_MMC_write$24$E:
$C$L274:    
$C$DW$L$_MMC_write$25$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4565,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4565| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR3 ; |4565| 
        MOV AR3, *SP(#10) ; |4565| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4566,column 7,is_stmt
        BAND *SP(#10), #248, TC1 ; |4566| 
        BCC $C$L275,!TC1 ; |4566| 
                                        ; branchcc occurs ; |4566| 
$C$DW$L$_MMC_write$25$E:
$C$DW$L$_MMC_write$26$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4568,column 8,is_stmt
        MOV #1, *SP(#22) ; |4568| 
	.dwpsn	file "src/csl_mmcsd.c",line 4569,column 8,is_stmt
        B $C$L276 ; |4569| 
                                        ; branch occurs ; |4569| 
$C$DW$L$_MMC_write$26$E:
$C$L275:    
$C$DW$L$_MMC_write$27$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4571,column 14,is_stmt
        MOV *SP(#10), AR3 ; |4571| 
        AND #0x0200, AR3, AR3 ; |4571| 
        CMP AR3 != AR4, TC1 ; |4571| 
        BCC $C$L274,TC1 ; |4571| 
                                        ; branchcc occurs ; |4571| 
$C$DW$L$_MMC_write$27$E:
$C$L276:    
$C$DW$L$_MMC_write$28$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4573,column 6,is_stmt
        CMP *SP(#22) == #1, TC1 ; |4573| 
        BCC $C$L281,TC1 ; |4573| 
                                        ; branchcc occurs ; |4573| 
$C$DW$L$_MMC_write$28$E:
$C$DW$L$_MMC_write$29$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4575,column 7,is_stmt
	.dwpsn	file "src/csl_mmcsd.c",line 4582,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#62), AR3 ; |4582| 
        BCC $C$L278,AR3 != #0 ; |4582| 
                                        ; branchcc occurs ; |4582| 
$C$DW$L$_MMC_write$29$E:
$C$DW$L$_MMC_write$30$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4590,column 11,is_stmt
        MOV #0, *SP(#12) ; |4590| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4590,column 22,is_stmt
        MOV *SP(#12), AR3 ; |4590| 
        CMPU AR3 >= AR2, TC1 ; |4590| 
        BCC $C$L280,TC1 ; |4590| 
                                        ; branchcc occurs ; |4590| 
$C$DW$L$_MMC_write$30$E:
$C$L277:    
$C$DW$L$_MMC_write$31$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4592,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV *AR3+, T1 ; |4592| 
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #44, T0 ; |4592| 
        MOV *AR3, AR3 ; |4592| 
        MOV port(*AR3(T0)), AR3 ; |4592| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4592| 
        OR #0x0000, T1, T1 ; |4592| 
        MOV T1, port(*AR3(T0)) ; |4592| 
	.dwpsn	file "src/csl_mmcsd.c",line 4595,column 8,is_stmt
        ADD #2, *SP(#18) ; |4595| 
	.dwpsn	file "src/csl_mmcsd.c",line 4590,column 34,is_stmt
        ADD #1, *SP(#12) ; |4590| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4590,column 22,is_stmt
        MOV #16, T1 ; |4590| 
        MOV *SP(#12), AR3 ; |4590| 
        CMPU AR3 < T1, TC1 ; |4590| 
        BCC $C$L277,TC1 ; |4590| 
                                        ; branchcc occurs ; |4590| 
$C$DW$L$_MMC_write$31$E:
$C$DW$L$_MMC_write$32$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4597,column 6,is_stmt
        B $C$L280 ; |4597| 
                                        ; branch occurs ; |4597| 
$C$DW$L$_MMC_write$32$E:
$C$L278:    
$C$DW$L$_MMC_write$33$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4606,column 11,is_stmt
        MOV #0, *SP(#12) ; |4606| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4606,column 22,is_stmt
        MOV *SP(#12), AR3 ; |4606| 
        CMPU AR3 >= AR1, TC1 ; |4606| 
        BCC $C$L280,TC1 ; |4606| 
                                        ; branchcc occurs ; |4606| 
$C$DW$L$_MMC_write$33$E:
$C$L279:    
$C$DW$L$_MMC_write$34$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4608,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV *AR3+, T1 ; |4608| 
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #45, T0 ; |4608| 
        MOV *AR3, AR3 ; |4608| 
        MOV port(*AR3(T0)), AR3 ; |4608| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4608| 
        OR #0x0000, T1, T1 ; |4608| 
        MOV T1, port(*AR3(T0)) ; |4608| 
	.dwpsn	file "src/csl_mmcsd.c",line 4611,column 8,is_stmt
        ADD #2, *SP(#18) ; |4611| 
	.dwpsn	file "src/csl_mmcsd.c",line 4606,column 34,is_stmt
        ADD #1, *SP(#12) ; |4606| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4606,column 22,is_stmt
        MOV #16, T1 ; |4606| 
        MOV *SP(#12), AR3 ; |4606| 
        CMPU AR3 < T1, TC1 ; |4606| 
        BCC $C$L279,TC1 ; |4606| 
                                        ; branchcc occurs ; |4606| 
$C$DW$L$_MMC_write$34$E:
$C$L280:    
$C$DW$L$_MMC_write$35$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4615,column 13,is_stmt
        MOV *SP(#4), AR3 ; |4615| 
        MOV *SP(#18), T1 ; |4615| 
        CMPU T1 < AR3, TC1 ; |4615| 
        BCC $C$L274,TC1 ; |4615| 
                                        ; branchcc occurs ; |4615| 
$C$DW$L$_MMC_write$35$E:
$C$L281:    
$C$DW$L$_MMC_write$36$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4618,column 5,is_stmt
        CMP *SP(#22) == #1, TC1 ; |4618| 
        BCC $C$L288,TC1 ; |4618| 
                                        ; branchcc occurs ; |4618| 
$C$DW$L$_MMC_write$36$E:
$C$DW$L$_MMC_write$37$B:
        MOV #8, T0
        MOV #1, AR1
	.dwpsn	file "src/csl_mmcsd.c",line 4620,column 6,is_stmt
$C$DW$L$_MMC_write$37$E:
$C$L282:    
$C$DW$L$_MMC_write$38$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4625,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4625| 
        MOV port(*AR3(T0)), AR2 ; |4625| 
        MOV AR2, *SP(#10) ; |4625| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4626,column 6,is_stmt
        BAND *SP(#10), #248, TC1 ; |4626| 
        BCC $C$L287,!TC1 ; |4626| 
                                        ; branchcc occurs ; |4626| 
$C$DW$L$_MMC_write$38$E:
$C$DW$L$_MMC_write$39$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4628,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4628| 
        MOV *AR3, AR3 ; |4628| 
        CMP port(*AR3(T0)) == #10777, TC1 ; |4628| 
        BCC $C$L286,!TC1 ; |4628| 
                                        ; branchcc occurs ; |4628| 
$C$DW$L$_MMC_write$39$E:
$C$DW$L$_MMC_write$40$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4631,column 8,is_stmt
        MOV #1000, *SP(#13) ; |4631| 
	.dwpsn	file "src/csl_mmcsd.c",line 4634,column 8,is_stmt

        MOV #908, AC0 ; |4634| 
||      MOV #0, AC1 ; |4634| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$487, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4634| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4634| 
        MOV T0, *SP(#10) ; |4634| 
	.dwpsn	file "src/csl_mmcsd.c",line 4639,column 8,is_stmt
        MOV #0, *SP(#11) ; |4639| 
$C$DW$L$_MMC_write$40$E:
$C$L283:    
$C$DW$L$_MMC_write$41$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4642,column 9,is_stmt
        MOV *SP(#13), AR1 ; |4642| 
        BCC $C$L284,AR1 != #0 ; |4642| 
                                        ; branchcc occurs ; |4642| 
$C$DW$L$_MMC_write$41$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4644,column 10,is_stmt

        B $C$L334 ; |4644| 
||      MOV #-10, T0

                                        ; branch occurs ; |4644| 
$C$L284:    
$C$DW$L$_MMC_write$43$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4647,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4647| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4647| 
        MOV AR1, *SP(#10) ; |4647| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4649,column 9,is_stmt
        MOV *SP(#10), AR1 ; |4649| 
        AND #0x0004, AR1, AR1 ; |4649| 
        OR *SP(#11), AR1, AR1 ; |4649| 
        MOV AR1, *SP(#11) ; |4649| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4650,column 9,is_stmt
        MOV *SP(#10), AR1 ; |4650| 
        AND #0x0002, AR1, AR1 ; |4650| 
        OR *SP(#11), AR1, AR1 ; |4650| 
        MOV AR1, *SP(#11) ; |4650| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4652,column 9,is_stmt
        BAND *SP(#10), #144, TC1 ; |4652| 
        BCC $C$L285,!TC1 ; |4652| 
                                        ; branchcc occurs ; |4652| 
$C$DW$L$_MMC_write$43$E:
$C$DW$L$_MMC_write$44$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4654,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4654| 
        MOV *AR3, AR3 ; |4654| 
        MOV #908, port(*AR3(T0)) ; |4654| 
	.dwpsn	file "src/csl_mmcsd.c",line 4655,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4655| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4655| 
        MOV AR1, *SP(#10) ; |4655| 
	.dwpsn	file "src/csl_mmcsd.c",line 4656,column 10,is_stmt
        MOV #0, *SP(#11) ; |4656| 
	.dwpsn	file "src/csl_mmcsd.c",line 4657,column 10,is_stmt
        SUB #1, *SP(#13) ; |4657| 
$C$DW$L$_MMC_write$44$E:
$C$L285:    
$C$DW$L$_MMC_write$45$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4660,column 16,is_stmt
        BTST #2, *SP(#11), TC1 ; |4660| 
        BCC $C$L283,!TC1 ; |4660| 
                                        ; branchcc occurs ; |4660| 
$C$DW$L$_MMC_write$45$E:
$C$DW$L$_MMC_write$46$B:
        BTST #1, *SP(#11), TC1 ; |4660| 
        BCC $C$L283,!TC1 ; |4660| 
                                        ; branchcc occurs ; |4660| 
$C$DW$L$_MMC_write$46$E:
$C$DW$L$_MMC_write$47$B:
        BAND *SP(#10), #144, TC1 ; |4660| 
        BCC $C$L283,TC1 ; |4660| 
                                        ; branchcc occurs ; |4660| 
$C$DW$L$_MMC_write$47$E:
$C$L286:    
$C$DW$L$_MMC_write$48$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4665,column 7,is_stmt
        MOV #1, *SP(#22) ; |4665| 
	.dwpsn	file "src/csl_mmcsd.c",line 4666,column 7,is_stmt
        B $C$L288 ; |4666| 
                                        ; branch occurs ; |4666| 
$C$DW$L$_MMC_write$48$E:
$C$L287:    
$C$DW$L$_MMC_write$49$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4669,column 16,is_stmt
        MOV *SP(#10), AR2 ; |4669| 
        AND #0x0001, AR2, AR2 ; |4669| 
        CMP AR2 != AR1, TC1 ; |4669| 
        BCC $C$L282,TC1 ; |4669| 
                                        ; branchcc occurs ; |4669| 
$C$DW$L$_MMC_write$49$E:
$C$L288:    
$C$DW$L$_MMC_write$50$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4670,column 4,is_stmt
        MOV *SP(#22), AR1 ; |4670| 
        BCC $C$L272,AR1 != #0 ; |4670| 
                                        ; branchcc occurs ; |4670| 
$C$DW$L$_MMC_write$50$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4671,column 3,is_stmt
        B $C$L326 ; |4671| 
                                        ; branch occurs ; |4671| 
$C$L289:    
	.dwpsn	file "src/csl_mmcsd.c",line 4672,column 8,is_stmt
        MOV *AR3(#8), AR1 ; |4672| 
        MOV #2, AR2
        CMP AR2 != AR1, TC1 ; |4672| 
        BCC $C$L310,TC1 ; |4672| 
                                        ; branchcc occurs ; |4672| 
	.dwpsn	file "src/csl_mmcsd.c",line 4674,column 4,is_stmt
        MOV dbl(*AR3(#10)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |4674| 

        CMPU AC1 != AC0, TC1 ; |4674| 
        BCC $C$L290,TC1 ; |4674| 
                                        ; branchcc occurs ; |4674| 
	.dwpsn	file "src/csl_mmcsd.c",line 4676,column 5,is_stmt

        B $C$L334 ; |4676| 
||      MOV #-6, T0

                                        ; branch occurs ; |4676| 
$C$L290:    
	.dwpsn	file "src/csl_mmcsd.c",line 4687,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#62), AR1 ; |4687| 
        BCC $C$L291,AR1 != #0 ; |4687| 
                                        ; branchcc occurs ; |4687| 
	.dwpsn	file "src/csl_mmcsd.c",line 4689,column 6,is_stmt
        MOV *SP(#4), AR1 ; |4689| 
        MOV dbl(*SP(#6)), XAR0
        SFTL AR1, #-1 ; |4689| 
        AND #0xffff, AR1, AC0 ; |4689| 
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_name("_DMA_swapWords")
	.dwattr $C$DW$488, DW_AT_TI_call
        CALL #_DMA_swapWords ; |4689| 
                                        ; call occurs [#_DMA_swapWords] ; |4689| 
        MOV T0, *SP(#14) ; |4689| 
	.dwpsn	file "src/csl_mmcsd.c",line 4690,column 6,is_stmt
        MOV T0, AR1
        BCC $C$L334,AR1 != #0 ; |4690| 
                                        ; branchcc occurs ; |4690| 
	.dwpsn	file "src/csl_mmcsd.c",line 4692,column 7,is_stmt
$C$L291:    
	.dwpsn	file "src/csl_mmcsd.c",line 4696,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, AR2
        MOV *AR3(#16), AR1 ; |4696| 
        CMP AR2 != AR1, TC1 ; |4696| 
        BCC $C$L292,TC1 ; |4696| 
                                        ; branchcc occurs ; |4696| 
	.dwpsn	file "src/csl_mmcsd.c",line 4698,column 6,is_stmt
        MOV #116, T0 ; |4698| 
        MOV *AR3, AR3 ; |4698| 
        MOV port(*AR3(T0)), AR1 ; |4698| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4698| 
        BCLR @#2, AR1 ; |4698| 
        MOV AR1, port(*AR3(T0)) ; |4698| 
$C$L292:    
	.dwpsn	file "src/csl_mmcsd.c",line 4703,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |4703| 
        MOV AR1, *AR3(#22) ; |4703| 
	.dwpsn	file "src/csl_mmcsd.c",line 4704,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#24)) ; |4704| 
	.dwpsn	file "src/csl_mmcsd.c",line 4706,column 9,is_stmt
$C$DW$489	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$489, DW_AT_low_pc(0x00)
	.dwattr $C$DW$489, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$489, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4706| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4706| 
        MOV T0, *SP(#24) ; |4706| 
	.dwpsn	file "src/csl_mmcsd.c",line 4707,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#0)), XAR3
        AADD #14, AR1 ; |4707| 
        MOV dbl(*AR3(#10)), XAR0
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("_DMA_config")
	.dwattr $C$DW$490, DW_AT_TI_call
        CALL #_DMA_config ; |4707| 
                                        ; call occurs [#_DMA_config] ; |4707| 
        MOV T0, *SP(#14) ; |4707| 
	.dwpsn	file "src/csl_mmcsd.c",line 4708,column 8,is_stmt
        MOV *SP(#24), T0 ; |4708| 
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$491, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4708| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4708| 
	.dwpsn	file "src/csl_mmcsd.c",line 4709,column 5,is_stmt
        MOV *SP(#14), AR1 ; |4709| 
        BCC $C$L293,AR1 == #0 ; |4709| 
                                        ; branchcc occurs ; |4709| 
	.dwpsn	file "src/csl_mmcsd.c",line 4711,column 6,is_stmt

        B $C$L334 ; |4711| 
||      MOV AR1, T0

                                        ; branch occurs ; |4711| 
$C$L293:    
	.dwpsn	file "src/csl_mmcsd.c",line 4715,column 9,is_stmt
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$492, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4715| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4715| 
        MOV T0, *SP(#24) ; |4715| 
	.dwpsn	file "src/csl_mmcsd.c",line 4716,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#10)), XAR0
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_name("_DMA_start")
	.dwattr $C$DW$493, DW_AT_TI_call
        CALL #_DMA_start ; |4716| 
                                        ; call occurs [#_DMA_start] ; |4716| 
        MOV T0, *SP(#14) ; |4716| 
	.dwpsn	file "src/csl_mmcsd.c",line 4717,column 8,is_stmt
        MOV *SP(#24), T0 ; |4717| 
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$494, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4717| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4717| 
	.dwpsn	file "src/csl_mmcsd.c",line 4718,column 5,is_stmt
        MOV *SP(#14), AR1 ; |4718| 
        BCC $C$L294,AR1 == #0 ; |4718| 
                                        ; branchcc occurs ; |4718| 
	.dwpsn	file "src/csl_mmcsd.c",line 4720,column 6,is_stmt

        B $C$L334 ; |4720| 
||      MOV AR1, T0

                                        ; branch occurs ; |4720| 
$C$L294:    
$C$DW$L$_MMC_write$65$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4725,column 6,is_stmt
        SUB #1, *SP(#19) ; |4725| 
	.dwpsn	file "src/csl_mmcsd.c",line 4726,column 6,is_stmt
        MOV *SP(#19), AR1 ; |4726| 
        BCC $C$L295,AR1 != #0 ; |4726| 
                                        ; branchcc occurs ; |4726| 
$C$DW$L$_MMC_write$65$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4728,column 7,is_stmt

        B $C$L334 ; |4728| 
||      MOV #-10, T0

                                        ; branch occurs ; |4728| 
$C$L295:    
$C$DW$L$_MMC_write$67$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4730,column 6,is_stmt
        MOV #0, *SP(#22) ; |4730| 
	.dwpsn	file "src/csl_mmcsd.c",line 4732,column 6,is_stmt
        CMP *SP(#23) == #1, TC1 ; |4732| 
        BCC $C$L298,!TC1 ; |4732| 
                                        ; branchcc occurs ; |4732| 
$C$DW$L$_MMC_write$67$E:
$C$DW$L$_MMC_write$68$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4734,column 7,is_stmt
        MOV #0, *SP(#23) ; |4734| 
	.dwpsn	file "src/csl_mmcsd.c",line 4742,column 11,is_stmt
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$495, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4742| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4742| 
        MOV T0, *SP(#24) ; |4742| 
	.dwpsn	file "src/csl_mmcsd.c",line 4743,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#10)), XAR0
$C$DW$496	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$496, DW_AT_low_pc(0x00)
	.dwattr $C$DW$496, DW_AT_name("_DMA_stop")
	.dwattr $C$DW$496, DW_AT_TI_call
        CALL #_DMA_stop ; |4743| 
                                        ; call occurs [#_DMA_stop] ; |4743| 
        MOV T0, *SP(#14) ; |4743| 
	.dwpsn	file "src/csl_mmcsd.c",line 4744,column 10,is_stmt
        MOV *SP(#24), T0 ; |4744| 
$C$DW$497	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$497, DW_AT_low_pc(0x00)
	.dwattr $C$DW$497, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$497, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4744| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4744| 
	.dwpsn	file "src/csl_mmcsd.c",line 4745,column 7,is_stmt
        MOV *SP(#14), AR1 ; |4745| 
        BCC $C$L296,AR1 == #0 ; |4745| 
                                        ; branchcc occurs ; |4745| 
$C$DW$L$_MMC_write$68$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4747,column 8,is_stmt

        B $C$L334 ; |4747| 
||      MOV AR1, T0

                                        ; branch occurs ; |4747| 
$C$L296:    
$C$DW$L$_MMC_write$70$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4751,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |4751| 
        MOV AR1, *AR3(#22) ; |4751| 
	.dwpsn	file "src/csl_mmcsd.c",line 4752,column 7,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        MOV dbl(*SP(#0)), XAR3
        MOV AC0, dbl(*AR3(#24)) ; |4752| 
	.dwpsn	file "src/csl_mmcsd.c",line 4754,column 11,is_stmt
$C$DW$498	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$498, DW_AT_low_pc(0x00)
	.dwattr $C$DW$498, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$498, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4754| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4754| 
        MOV T0, *SP(#24) ; |4754| 
	.dwpsn	file "src/csl_mmcsd.c",line 4755,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#0)), XAR3
        AADD #14, AR1 ; |4755| 
        MOV dbl(*AR3(#10)), XAR0
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_name("_DMA_config")
	.dwattr $C$DW$499, DW_AT_TI_call
        CALL #_DMA_config ; |4755| 
                                        ; call occurs [#_DMA_config] ; |4755| 
        MOV T0, *SP(#14) ; |4755| 
	.dwpsn	file "src/csl_mmcsd.c",line 4756,column 10,is_stmt
        MOV *SP(#24), T0 ; |4756| 
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$500, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4756| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4756| 
	.dwpsn	file "src/csl_mmcsd.c",line 4757,column 7,is_stmt
        MOV *SP(#14), AR1 ; |4757| 
        BCC $C$L297,AR1 == #0 ; |4757| 
                                        ; branchcc occurs ; |4757| 
$C$DW$L$_MMC_write$70$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4759,column 8,is_stmt

        B $C$L334 ; |4759| 
||      MOV AR1, T0

                                        ; branch occurs ; |4759| 
$C$L297:    
$C$DW$L$_MMC_write$72$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4763,column 11,is_stmt
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$501, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4763| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4763| 
        MOV T0, *SP(#24) ; |4763| 
	.dwpsn	file "src/csl_mmcsd.c",line 4764,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#10)), XAR0
$C$DW$502	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$502, DW_AT_low_pc(0x00)
	.dwattr $C$DW$502, DW_AT_name("_DMA_start")
	.dwattr $C$DW$502, DW_AT_TI_call
        CALL #_DMA_start ; |4764| 
                                        ; call occurs [#_DMA_start] ; |4764| 
        MOV T0, *SP(#14) ; |4764| 
	.dwpsn	file "src/csl_mmcsd.c",line 4765,column 10,is_stmt
        MOV *SP(#24), T0 ; |4765| 
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$503, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4765| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4765| 
	.dwpsn	file "src/csl_mmcsd.c",line 4766,column 7,is_stmt
        MOV *SP(#14), AR1 ; |4766| 
        BCC $C$L298,AR1 == #0 ; |4766| 
                                        ; branchcc occurs ; |4766| 
$C$DW$L$_MMC_write$72$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4768,column 8,is_stmt
        MOV *SP(#10), T0 ; |4768| 
        B $C$L334 ; |4768| 
                                        ; branch occurs ; |4768| 
$C$L298:    
$C$DW$L$_MMC_write$74$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4772,column 5,is_stmt
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$504, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4772| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4772| 
        MOV T0, *SP(#24) ; |4772| 
	.dwpsn	file "src/csl_mmcsd.c",line 4774,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_name("_MMC_ierDisable")
	.dwattr $C$DW$505, DW_AT_TI_call
        CALL #_MMC_ierDisable ; |4774| 
                                        ; call occurs [#_MMC_ierDisable] ; |4774| 
	.dwpsn	file "src/csl_mmcsd.c",line 4777,column 5,is_stmt
        MOV #249, T0 ; |4777| 
        MOV dbl(*SP(#0)), XAR0
$C$DW$506	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$506, DW_AT_low_pc(0x00)
	.dwattr $C$DW$506, DW_AT_name("_MMC_intEnable")
	.dwattr $C$DW$506, DW_AT_TI_call
        CALL #_MMC_intEnable ; |4777| 
                                        ; call occurs [#_MMC_intEnable] ; |4777| 
	.dwpsn	file "src/csl_mmcsd.c",line 4778,column 5,is_stmt
        MOV *SP(#24), T0 ; |4778| 
$C$DW$507	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$507, DW_AT_low_pc(0x00)
	.dwattr $C$DW$507, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$507, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4778| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4778| 
	.dwpsn	file "src/csl_mmcsd.c",line 4780,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV uns(*SP(#21)), AC0 ; |4780| 
        MOV dbl(*SP(#2)), AC1 ; |4780| 
$C$DW$508	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$508, DW_AT_low_pc(0x00)
	.dwattr $C$DW$508, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$508, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4780| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4780| 
        MOV T0, *SP(#10) ; |4780| 
	.dwpsn	file "src/csl_mmcsd.c",line 4786,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |4786| 
        MOV *AR3, AR3 ; |4786| 
        MOV port(*AR3(T0)), AR1 ; |4786| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4786| 
        BCLR @#0, AR1 ; |4786| 
        BSET @#0, AR1 ; |4786| 
        MOV AR1, port(*AR3(T0)) ; |4786| 
	.dwpsn	file "src/csl_mmcsd.c",line 4789,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, AR2
        MOV *AR3(#44), AR1 ; |4789| 
        CMPU AR2 != AR1, TC1 ; |4789| 
        BCC $C$L303,TC1 ; |4789| 
                                        ; branchcc occurs ; |4789| 
$C$DW$L$_MMC_write$74$E:
$C$DW$L$_MMC_write$75$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4791,column 9,is_stmt
$C$DW$509	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$509, DW_AT_low_pc(0x00)
	.dwattr $C$DW$509, DW_AT_name("_IRQ_globalDisable")
	.dwattr $C$DW$509, DW_AT_TI_call
        CALL #_IRQ_globalDisable ; |4791| 
                                        ; call occurs [#_IRQ_globalDisable] ; |4791| 
        MOV T0, *SP(#24) ; |4791| 
	.dwpsn	file "src/csl_mmcsd.c",line 4792,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$510	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$510, DW_AT_low_pc(0x00)
	.dwattr $C$DW$510, DW_AT_name("_MMC_ierEnable")
	.dwattr $C$DW$510, DW_AT_TI_call
        CALL #_MMC_ierEnable ; |4792| 
                                        ; call occurs [#_MMC_ierEnable] ; |4792| 
	.dwpsn	file "src/csl_mmcsd.c",line 4793,column 9,is_stmt
        MOV *SP(#24), T0 ; |4793| 
$C$DW$511	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$511, DW_AT_low_pc(0x00)
	.dwattr $C$DW$511, DW_AT_name("_IRQ_globalRestore")
	.dwattr $C$DW$511, DW_AT_TI_call
        CALL #_IRQ_globalRestore ; |4793| 
                                        ; call occurs [#_IRQ_globalRestore] ; |4793| 
	.dwpsn	file "src/csl_mmcsd.c",line 4801,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |4801| 
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_TI_call
	.dwattr $C$DW$512, DW_AT_TI_indirect
        CALL AC0  ; |4801| 
                                        ; call occurs [AC0] ; |4801| 
	.dwpsn	file "src/csl_mmcsd.c",line 4802,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4802| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4802| 
        MOV AR1, *SP(#10) ; |4802| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4803,column 7,is_stmt
        BAND *SP(#10), #248, TC1 ; |4803| 
        BCC $C$L309,!TC1 ; |4803| 
                                        ; branchcc occurs ; |4803| 
$C$DW$L$_MMC_write$75$E:
$C$DW$L$_MMC_write$76$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4805,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4805| 
        MOV *AR3, AR3 ; |4805| 
        CMP port(*AR3(T0)) == #10777, TC1 ; |4805| 
        BCC $C$L302,!TC1 ; |4805| 
                                        ; branchcc occurs ; |4805| 
$C$DW$L$_MMC_write$76$E:
$C$DW$L$_MMC_write$77$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4808,column 9,is_stmt
        MOV #1000, *SP(#13) ; |4808| 
	.dwpsn	file "src/csl_mmcsd.c",line 4811,column 9,is_stmt

        MOV #908, AC0 ; |4811| 
||      MOV #0, AC1 ; |4811| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$513, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4811| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4811| 
        MOV T0, *SP(#10) ; |4811| 
	.dwpsn	file "src/csl_mmcsd.c",line 4816,column 9,is_stmt
        MOV #0, *SP(#11) ; |4816| 
$C$DW$L$_MMC_write$77$E:
$C$L299:    
$C$DW$L$_MMC_write$78$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4819,column 10,is_stmt
        MOV *SP(#13), AR1 ; |4819| 
        BCC $C$L300,AR1 != #0 ; |4819| 
                                        ; branchcc occurs ; |4819| 
$C$DW$L$_MMC_write$78$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4821,column 11,is_stmt

        B $C$L334 ; |4821| 
||      MOV #-10, T0

                                        ; branch occurs ; |4821| 
$C$L300:    
$C$DW$L$_MMC_write$80$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4824,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4824| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4824| 
        MOV AR1, *SP(#10) ; |4824| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4826,column 10,is_stmt
        MOV *SP(#10), AR1 ; |4826| 
        AND #0x0004, AR1, AR1 ; |4826| 
        OR *SP(#11), AR1, AR1 ; |4826| 
        MOV AR1, *SP(#11) ; |4826| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4827,column 10,is_stmt
        MOV *SP(#10), AR1 ; |4827| 
        AND #0x0002, AR1, AR1 ; |4827| 
        OR *SP(#11), AR1, AR1 ; |4827| 
        MOV AR1, *SP(#11) ; |4827| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4829,column 10,is_stmt
        BAND *SP(#10), #144, TC1 ; |4829| 
        BCC $C$L301,!TC1 ; |4829| 
                                        ; branchcc occurs ; |4829| 
$C$DW$L$_MMC_write$80$E:
$C$DW$L$_MMC_write$81$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4831,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4831| 
        MOV *AR3, AR3 ; |4831| 
        MOV #908, port(*AR3(T0)) ; |4831| 
	.dwpsn	file "src/csl_mmcsd.c",line 4832,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4832| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4832| 
        MOV AR1, *SP(#10) ; |4832| 
	.dwpsn	file "src/csl_mmcsd.c",line 4833,column 11,is_stmt
        MOV #0, *SP(#11) ; |4833| 
	.dwpsn	file "src/csl_mmcsd.c",line 4834,column 11,is_stmt
        SUB #1, *SP(#13) ; |4834| 
$C$DW$L$_MMC_write$81$E:
$C$L301:    
$C$DW$L$_MMC_write$82$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4837,column 17,is_stmt
        BTST #2, *SP(#11), TC1 ; |4837| 
        BCC $C$L299,!TC1 ; |4837| 
                                        ; branchcc occurs ; |4837| 
$C$DW$L$_MMC_write$82$E:
$C$DW$L$_MMC_write$83$B:
        BTST #1, *SP(#11), TC1 ; |4837| 
        BCC $C$L299,!TC1 ; |4837| 
                                        ; branchcc occurs ; |4837| 
$C$DW$L$_MMC_write$83$E:
$C$DW$L$_MMC_write$84$B:
        BAND *SP(#10), #144, TC1 ; |4837| 
        BCC $C$L299,TC1 ; |4837| 
                                        ; branchcc occurs ; |4837| 
$C$DW$L$_MMC_write$84$E:
$C$L302:    
$C$DW$L$_MMC_write$85$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4841,column 8,is_stmt
        MOV #1, *SP(#22) ; |4841| 
	.dwpsn	file "src/csl_mmcsd.c",line 4847,column 8,is_stmt
        MOV #1, *SP(#23) ; |4847| 
	.dwpsn	file "src/csl_mmcsd.c",line 4849,column 6,is_stmt
        B $C$L309 ; |4849| 
                                        ; branch occurs ; |4849| 
$C$DW$L$_MMC_write$85$E:
$C$L303:    
$C$DW$L$_MMC_write$86$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4854,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4854| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4854| 
        MOV AR1, *SP(#10) ; |4854| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4855,column 8,is_stmt
        BAND *SP(#10), #248, TC1 ; |4855| 
        BCC $C$L308,!TC1 ; |4855| 
                                        ; branchcc occurs ; |4855| 
$C$DW$L$_MMC_write$86$E:
$C$DW$L$_MMC_write$87$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4857,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4857| 
        MOV *AR3, AR3 ; |4857| 
        CMP port(*AR3(T0)) == #10777, TC1 ; |4857| 
        BCC $C$L307,!TC1 ; |4857| 
                                        ; branchcc occurs ; |4857| 
$C$DW$L$_MMC_write$87$E:
$C$DW$L$_MMC_write$88$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4860,column 10,is_stmt
        MOV #1000, *SP(#13) ; |4860| 
	.dwpsn	file "src/csl_mmcsd.c",line 4863,column 10,is_stmt

        MOV #908, AC0 ; |4863| 
||      MOV #0, AC1 ; |4863| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$514, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4863| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4863| 
        MOV T0, *SP(#10) ; |4863| 
	.dwpsn	file "src/csl_mmcsd.c",line 4868,column 10,is_stmt
        MOV #0, *SP(#11) ; |4868| 
$C$DW$L$_MMC_write$88$E:
$C$L304:    
$C$DW$L$_MMC_write$89$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4871,column 11,is_stmt
        MOV *SP(#13), AR1 ; |4871| 
        BCC $C$L305,AR1 != #0 ; |4871| 
                                        ; branchcc occurs ; |4871| 
$C$DW$L$_MMC_write$89$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4873,column 12,is_stmt

        B $C$L334 ; |4873| 
||      MOV #-10, T0

                                        ; branch occurs ; |4873| 
$C$L305:    
$C$DW$L$_MMC_write$91$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4876,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4876| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4876| 
        MOV AR1, *SP(#10) ; |4876| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4878,column 11,is_stmt
        MOV *SP(#10), AR1 ; |4878| 
        AND #0x0004, AR1, AR1 ; |4878| 
        OR *SP(#11), AR1, AR1 ; |4878| 
        MOV AR1, *SP(#11) ; |4878| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4879,column 11,is_stmt
        MOV *SP(#10), AR1 ; |4879| 
        AND #0x0002, AR1, AR1 ; |4879| 
        OR *SP(#11), AR1, AR1 ; |4879| 
        MOV AR1, *SP(#11) ; |4879| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4881,column 11,is_stmt
        BAND *SP(#10), #144, TC1 ; |4881| 
        BCC $C$L306,!TC1 ; |4881| 
                                        ; branchcc occurs ; |4881| 
$C$DW$L$_MMC_write$91$E:
$C$DW$L$_MMC_write$92$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4883,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |4883| 
        MOV *AR3, AR3 ; |4883| 
        MOV #908, port(*AR3(T0)) ; |4883| 
	.dwpsn	file "src/csl_mmcsd.c",line 4884,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4884| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4884| 
        MOV AR1, *SP(#10) ; |4884| 
	.dwpsn	file "src/csl_mmcsd.c",line 4885,column 12,is_stmt
        MOV #0, *SP(#11) ; |4885| 
	.dwpsn	file "src/csl_mmcsd.c",line 4886,column 12,is_stmt
        SUB #1, *SP(#13) ; |4886| 
$C$DW$L$_MMC_write$92$E:
$C$L306:    
$C$DW$L$_MMC_write$93$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4889,column 18,is_stmt
        BTST #2, *SP(#11), TC1 ; |4889| 
        BCC $C$L304,!TC1 ; |4889| 
                                        ; branchcc occurs ; |4889| 
$C$DW$L$_MMC_write$93$E:
$C$DW$L$_MMC_write$94$B:
        BTST #1, *SP(#11), TC1 ; |4889| 
        BCC $C$L304,!TC1 ; |4889| 
                                        ; branchcc occurs ; |4889| 
$C$DW$L$_MMC_write$94$E:
$C$DW$L$_MMC_write$95$B:
        BAND *SP(#10), #144, TC1 ; |4889| 
        BCC $C$L304,TC1 ; |4889| 
                                        ; branchcc occurs ; |4889| 
$C$DW$L$_MMC_write$95$E:
$C$L307:    
$C$DW$L$_MMC_write$96$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4893,column 9,is_stmt
        MOV #1, *SP(#22) ; |4893| 
	.dwpsn	file "src/csl_mmcsd.c",line 4899,column 9,is_stmt
        MOV #1, *SP(#23) ; |4899| 
	.dwpsn	file "src/csl_mmcsd.c",line 4900,column 9,is_stmt
        B $C$L309 ; |4900| 
                                        ; branch occurs ; |4900| 
$C$DW$L$_MMC_write$96$E:
$C$L308:    
$C$DW$L$_MMC_write$97$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4902,column 15,is_stmt
        MOV *SP(#10), AR1 ; |4902| 
        AND #0x0001, AR1, AR1 ; |4902| 
        CMP AR1 != AR2, TC1 ; |4902| 
        BCC $C$L303,TC1 ; |4902| 
                                        ; branchcc occurs ; |4902| 
$C$DW$L$_MMC_write$97$E:
$C$L309:    
$C$DW$L$_MMC_write$98$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4904,column 5,is_stmt
        MOV *SP(#22), AR1 ; |4904| 
        BCC $C$L294,AR1 != #0 ; |4904| 
                                        ; branchcc occurs ; |4904| 
$C$DW$L$_MMC_write$98$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4907,column 3,is_stmt
        B $C$L326 ; |4907| 
                                        ; branch occurs ; |4907| 
$C$L310:    
	.dwpsn	file "src/csl_mmcsd.c",line 4908,column 8,is_stmt
        MOV *AR3(#8), AR1 ; |4908| 
        MOV #1, AR2
        CMP AR2 != AR1, TC1 ; |4908| 
        BCC $C$L325,TC1 ; |4908| 
                                        ; branchcc occurs ; |4908| 
	.dwpsn	file "src/csl_mmcsd.c",line 4911,column 4,is_stmt
        MOV *AR3(#44), AR1 ; |4911| 
        CMPU AR2 == AR1, TC1 ; |4911| 
        BCC $C$L311,TC1 ; |4911| 
                                        ; branchcc occurs ; |4911| 
	.dwpsn	file "src/csl_mmcsd.c",line 4913,column 5,is_stmt

        B $C$L334 ; |4913| 
||      MOV #-6, T0

                                        ; branch occurs ; |4913| 
$C$L311:    
$C$DW$L$_MMC_write$103$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4918,column 5,is_stmt
        SUB #1, *SP(#19) ; |4918| 
	.dwpsn	file "src/csl_mmcsd.c",line 4919,column 5,is_stmt
        MOV *SP(#19), AR1 ; |4919| 
        BCC $C$L312,AR1 != #0 ; |4919| 
                                        ; branchcc occurs ; |4919| 
$C$DW$L$_MMC_write$103$E:
	.dwpsn	file "src/csl_mmcsd.c",line 4921,column 6,is_stmt

        B $C$L334 ; |4921| 
||      MOV #-10, T0

                                        ; branch occurs ; |4921| 
$C$L312:    
$C$DW$L$_MMC_write$105$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4924,column 5,is_stmt
        MOV #0, *SP(#22) ; |4924| 
	.dwpsn	file "src/csl_mmcsd.c",line 4925,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_mmcsd.c",line 4926,column 5,is_stmt
        MOV #0, *SP(#18) ; |4926| 
	.dwpsn	file "src/csl_mmcsd.c",line 4929,column 5,is_stmt
        MOV uns(*SP(#21)), AC0 ; |4929| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC1 ; |4929| 
$C$DW$515	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$515, DW_AT_low_pc(0x00)
	.dwattr $C$DW$515, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$515, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |4929| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |4929| 
        MOV T0, *SP(#10) ; |4929| 
	.dwpsn	file "src/csl_mmcsd.c",line 4957,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #49, T0 ; |4957| 
        MOV *AR3, AR3 ; |4957| 
        MOV port(*AR3(T0)), AR1 ; |4957| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4957| 
        BCLR @#0, AR1 ; |4957| 
        BSET @#0, AR1 ; |4957| 
        MOV #16, T2 ; |5010| 
        MOV #16, T3 ; |4994| 
        MOV AR1, port(*AR3(T0)) ; |4957| 
$C$DW$L$_MMC_write$105$E:
$C$L313:    
$C$DW$L$_MMC_write$106$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4966,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |4966| 
        MOV *AR3, AR3 ; |4966| 
        MOV #544, port(*AR3(T0)) ; |4966| 
	.dwpsn	file "src/csl_mmcsd.c",line 4974,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |4974| 
$C$DW$516	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$516, DW_AT_low_pc(0x00)
	.dwattr $C$DW$516, DW_AT_TI_call
	.dwattr $C$DW$516, DW_AT_TI_indirect
        CALL AC0  ; |4974| 
                                        ; call occurs [AC0] ; |4974| 
	.dwpsn	file "src/csl_mmcsd.c",line 4975,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4975| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |4975| 
        MOV AR1, *SP(#10) ; |4975| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4976,column 6,is_stmt
        BAND *SP(#10), #248, TC1 ; |4976| 
        BCC $C$L314,!TC1 ; |4976| 
                                        ; branchcc occurs ; |4976| 
$C$DW$L$_MMC_write$106$E:
$C$DW$L$_MMC_write$107$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4978,column 7,is_stmt
        MOV #1, *SP(#22) ; |4978| 
	.dwpsn	file "src/csl_mmcsd.c",line 4979,column 7,is_stmt
        B $C$L319 ; |4979| 
                                        ; branch occurs ; |4979| 
$C$DW$L$_MMC_write$107$E:
$C$L314:    
$C$DW$L$_MMC_write$108$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4986,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#62), AR1 ; |4986| 
        BCC $C$L316,AR1 != #0 ; |4986| 
                                        ; branchcc occurs ; |4986| 
$C$DW$L$_MMC_write$108$E:
$C$DW$L$_MMC_write$109$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4994,column 11,is_stmt
        MOV #0, *SP(#12) ; |4994| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4994,column 22,is_stmt
        MOV *SP(#12), AR1 ; |4994| 
        CMPU AR1 >= T3, TC1 ; |4994| 
        BCC $C$L318,TC1 ; |4994| 
                                        ; branchcc occurs ; |4994| 
$C$DW$L$_MMC_write$109$E:
$C$L315:    
$C$DW$L$_MMC_write$110$B:
	.dwpsn	file "src/csl_mmcsd.c",line 4996,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV *AR3+, AR1 ; |4996| 
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #44, T0 ; |4996| 
        MOV *AR3, AR3 ; |4996| 
        MOV port(*AR3(T0)), AR2 ; |4996| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |4996| 
        OR #0x0000, AR1, AR1 ; |4996| 
        MOV AR1, port(*AR3(T0)) ; |4996| 
	.dwpsn	file "src/csl_mmcsd.c",line 4999,column 8,is_stmt
        ADD #2, *SP(#18) ; |4999| 
	.dwpsn	file "src/csl_mmcsd.c",line 4994,column 34,is_stmt
        ADD #1, *SP(#12) ; |4994| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 4994,column 22,is_stmt
        MOV #16, AR2 ; |4994| 
        MOV *SP(#12), AR1 ; |4994| 
        CMPU AR1 < AR2, TC1 ; |4994| 
        BCC $C$L315,TC1 ; |4994| 
                                        ; branchcc occurs ; |4994| 
$C$DW$L$_MMC_write$110$E:
$C$DW$L$_MMC_write$111$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5001,column 6,is_stmt
        B $C$L318 ; |5001| 
                                        ; branch occurs ; |5001| 
$C$DW$L$_MMC_write$111$E:
$C$L316:    
$C$DW$L$_MMC_write$112$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5010,column 11,is_stmt
        MOV #0, *SP(#12) ; |5010| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5010,column 22,is_stmt
        MOV *SP(#12), AR1 ; |5010| 
        CMPU AR1 >= T2, TC1 ; |5010| 
        BCC $C$L318,TC1 ; |5010| 
                                        ; branchcc occurs ; |5010| 
$C$DW$L$_MMC_write$112$E:
$C$L317:    
$C$DW$L$_MMC_write$113$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5012,column 8,is_stmt
        MOV dbl(*SP(#16)), XAR3
        MOV *AR3+, AR1 ; |5012| 
        MOV XAR3, dbl(*SP(#16))
        MOV dbl(*SP(#0)), XAR3
        MOV #45, T0 ; |5012| 
        MOV *AR3, AR3 ; |5012| 
        MOV port(*AR3(T0)), AR2 ; |5012| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5012| 
        OR #0x0000, AR1, AR1 ; |5012| 
        MOV AR1, port(*AR3(T0)) ; |5012| 
	.dwpsn	file "src/csl_mmcsd.c",line 5015,column 8,is_stmt
        ADD #2, *SP(#18) ; |5015| 
	.dwpsn	file "src/csl_mmcsd.c",line 5010,column 34,is_stmt
        ADD #1, *SP(#12) ; |5010| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5010,column 22,is_stmt
        MOV #16, AR2 ; |5010| 
        MOV *SP(#12), AR1 ; |5010| 
        CMPU AR1 < AR2, TC1 ; |5010| 
        BCC $C$L317,TC1 ; |5010| 
                                        ; branchcc occurs ; |5010| 
$C$DW$L$_MMC_write$113$E:
$C$L318:    
$C$DW$L$_MMC_write$114$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5019,column 13,is_stmt
        MOV *SP(#4), AR1 ; |5019| 
        MOV *SP(#18), AR2 ; |5019| 
        CMPU AR2 < AR1, TC1 ; |5019| 
        BCC $C$L313,TC1 ; |5019| 
                                        ; branchcc occurs ; |5019| 
$C$DW$L$_MMC_write$114$E:
$C$L319:    
$C$DW$L$_MMC_write$115$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5022,column 5,is_stmt
        CMP *SP(#22) == #1, TC1 ; |5022| 
        BCC $C$L324,TC1 ; |5022| 
                                        ; branchcc occurs ; |5022| 
$C$DW$L$_MMC_write$115$E:
$C$DW$L$_MMC_write$116$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5024,column 6,is_stmt
	.dwpsn	file "src/csl_mmcsd.c",line 5027,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5027| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5027| 

        AND #0x0001, AR1, AR1 ; |5027| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |5027| 
        BCC $C$L324,TC1 ; |5027| 
                                        ; branchcc occurs ; |5027| 
$C$DW$L$_MMC_write$116$E:
$C$DW$L$_MMC_write$117$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5034,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |5034| 
        MOV *AR3, AR3 ; |5034| 
        MOV #33, port(*AR3(T0)) ; |5034| 
	.dwpsn	file "src/csl_mmcsd.c",line 5042,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*AR3(#42)), AC0 ; |5042| 
$C$DW$517	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$517, DW_AT_low_pc(0x00)
	.dwattr $C$DW$517, DW_AT_TI_call
	.dwattr $C$DW$517, DW_AT_TI_indirect
        CALL AC0  ; |5042| 
                                        ; call occurs [AC0] ; |5042| 
	.dwpsn	file "src/csl_mmcsd.c",line 5043,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5043| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5043| 
        MOV AR1, *SP(#10) ; |5043| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5044,column 6,is_stmt
        BAND *SP(#10), #248, TC1 ; |5044| 
        BCC $C$L324,!TC1 ; |5044| 
                                        ; branchcc occurs ; |5044| 
$C$DW$L$_MMC_write$117$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5046,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |5046| 
        MOV *AR3, AR3 ; |5046| 
        CMP port(*AR3(T0)) == #10777, TC1 ; |5046| 
        BCC $C$L323,!TC1 ; |5046| 
                                        ; branchcc occurs ; |5046| 
	.dwpsn	file "src/csl_mmcsd.c",line 5049,column 8,is_stmt
        MOV #1000, *SP(#13) ; |5049| 
	.dwpsn	file "src/csl_mmcsd.c",line 5052,column 8,is_stmt

        MOV #908, AC0 ; |5052| 
||      MOV #0, AC1 ; |5052| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$518, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |5052| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |5052| 
        MOV T0, *SP(#10) ; |5052| 
	.dwpsn	file "src/csl_mmcsd.c",line 5057,column 8,is_stmt
        MOV #0, *SP(#11) ; |5057| 
$C$L320:    
$C$DW$L$_MMC_write$120$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5060,column 9,is_stmt
        MOV *SP(#13), AR1 ; |5060| 
        BCC $C$L321,AR1 != #0 ; |5060| 
                                        ; branchcc occurs ; |5060| 
$C$DW$L$_MMC_write$120$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5062,column 10,is_stmt

        B $C$L334 ; |5062| 
||      MOV #-10, T0

                                        ; branch occurs ; |5062| 
$C$L321:    
$C$DW$L$_MMC_write$122$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5065,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5065| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5065| 
        MOV AR1, *SP(#10) ; |5065| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5067,column 9,is_stmt
        MOV *SP(#10), AR1 ; |5067| 
        AND #0x0004, AR1, AR1 ; |5067| 
        OR *SP(#11), AR1, AR1 ; |5067| 
        MOV AR1, *SP(#11) ; |5067| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5068,column 9,is_stmt
        MOV *SP(#10), AR1 ; |5068| 
        AND #0x0002, AR1, AR1 ; |5068| 
        OR *SP(#11), AR1, AR1 ; |5068| 
        MOV AR1, *SP(#11) ; |5068| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5070,column 9,is_stmt
        BAND *SP(#10), #144, TC1 ; |5070| 
        BCC $C$L322,!TC1 ; |5070| 
                                        ; branchcc occurs ; |5070| 
$C$DW$L$_MMC_write$122$E:
$C$DW$L$_MMC_write$123$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5072,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |5072| 
        MOV *AR3, AR3 ; |5072| 
        MOV #908, port(*AR3(T0)) ; |5072| 
	.dwpsn	file "src/csl_mmcsd.c",line 5073,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5073| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5073| 
        MOV AR1, *SP(#10) ; |5073| 
	.dwpsn	file "src/csl_mmcsd.c",line 5074,column 10,is_stmt
        MOV #0, *SP(#11) ; |5074| 
	.dwpsn	file "src/csl_mmcsd.c",line 5075,column 10,is_stmt
        SUB #1, *SP(#13) ; |5075| 
$C$DW$L$_MMC_write$123$E:
$C$L322:    
$C$DW$L$_MMC_write$124$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5078,column 16,is_stmt
        BTST #2, *SP(#11), TC1 ; |5078| 
        BCC $C$L320,!TC1 ; |5078| 
                                        ; branchcc occurs ; |5078| 
$C$DW$L$_MMC_write$124$E:
$C$DW$L$_MMC_write$125$B:
        BTST #1, *SP(#11), TC1 ; |5078| 
        BCC $C$L320,!TC1 ; |5078| 
                                        ; branchcc occurs ; |5078| 
$C$DW$L$_MMC_write$125$E:
$C$DW$L$_MMC_write$126$B:
        BAND *SP(#10), #144, TC1 ; |5078| 
        BCC $C$L320,TC1 ; |5078| 
                                        ; branchcc occurs ; |5078| 
$C$DW$L$_MMC_write$126$E:
$C$L323:    
	.dwpsn	file "src/csl_mmcsd.c",line 5083,column 7,is_stmt
        MOV #1, *SP(#22) ; |5083| 
	.dwpsn	file "src/csl_mmcsd.c",line 5084,column 7,is_stmt
        B $C$L326 ; |5084| 
                                        ; branch occurs ; |5084| 
$C$L324:    
$C$DW$L$_MMC_write$128$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5087,column 4,is_stmt
        MOV *SP(#22), AR1 ; |5087| 
        BCC $C$L311,AR1 != #0 ; |5087| 
                                        ; branchcc occurs ; |5087| 
$C$DW$L$_MMC_write$128$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5088,column 3,is_stmt
        B $C$L326 ; |5088| 
                                        ; branch occurs ; |5088| 
$C$L325:    
	.dwpsn	file "src/csl_mmcsd.c",line 5091,column 4,is_stmt

        B $C$L334 ; |5091| 
||      MOV #-6, T0

                                        ; branch occurs ; |5091| 
$C$L326:    
	.dwpsn	file "src/csl_mmcsd.c",line 5094,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV dbl(*SP(#2)), AC0 ; |5094| 
        MOV AC0, dbl(*AR3(#16)) ; |5094| 
	.dwpsn	file "src/csl_mmcsd.c",line 5097,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |5097| 
        MOV *AR3, AR3 ; |5097| 
        CMP port(*AR3(T0)) == #10777, TC1 ; |5097| 
        BCC $C$L330,!TC1 ; |5097| 
                                        ; branchcc occurs ; |5097| 
	.dwpsn	file "src/csl_mmcsd.c",line 5099,column 4,is_stmt
        MOV #1000, *SP(#13) ; |5099| 
	.dwpsn	file "src/csl_mmcsd.c",line 5102,column 4,is_stmt

        MOV #908, AC0 ; |5102| 
||      MOV #0, AC1 ; |5102| 

        MOV dbl(*SP(#0)), XAR0
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$519, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |5102| 
||      MOV #0, T0

                                        ; call occurs [#_MMC_sendCmd] ; |5102| 
        MOV T0, *SP(#10) ; |5102| 
	.dwpsn	file "src/csl_mmcsd.c",line 5107,column 4,is_stmt
        MOV #0, *SP(#11) ; |5107| 
$C$L327:    
$C$DW$L$_MMC_write$133$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5110,column 5,is_stmt
        MOV *SP(#13), AR1 ; |5110| 
        BCC $C$L328,AR1 != #0 ; |5110| 
                                        ; branchcc occurs ; |5110| 
$C$DW$L$_MMC_write$133$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5112,column 6,is_stmt

        B $C$L334 ; |5112| 
||      MOV #-10, T0

                                        ; branch occurs ; |5112| 
$C$L328:    
$C$DW$L$_MMC_write$135$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5115,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5115| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5115| 
        MOV AR1, *SP(#10) ; |5115| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5117,column 5,is_stmt
        MOV *SP(#10), AR1 ; |5117| 
        AND #0x0004, AR1, AR1 ; |5117| 
        OR *SP(#11), AR1, AR1 ; |5117| 
        MOV AR1, *SP(#11) ; |5117| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5118,column 5,is_stmt
        MOV *SP(#10), AR1 ; |5118| 
        AND #0x0002, AR1, AR1 ; |5118| 
        OR *SP(#11), AR1, AR1 ; |5118| 
        MOV AR1, *SP(#11) ; |5118| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5120,column 5,is_stmt
        BAND *SP(#10), #144, TC1 ; |5120| 
        BCC $C$L329,!TC1 ; |5120| 
                                        ; branchcc occurs ; |5120| 
$C$DW$L$_MMC_write$135$E:
$C$DW$L$_MMC_write$136$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5122,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |5122| 
        MOV *AR3, AR3 ; |5122| 
        MOV #908, port(*AR3(T0)) ; |5122| 
	.dwpsn	file "src/csl_mmcsd.c",line 5123,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5123| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |5123| 
        MOV AR1, *SP(#10) ; |5123| 
	.dwpsn	file "src/csl_mmcsd.c",line 5124,column 6,is_stmt
        MOV #0, *SP(#11) ; |5124| 
	.dwpsn	file "src/csl_mmcsd.c",line 5125,column 6,is_stmt
        SUB #1, *SP(#13) ; |5125| 
$C$DW$L$_MMC_write$136$E:
$C$L329:    
$C$DW$L$_MMC_write$137$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5128,column 12,is_stmt
        BTST #2, *SP(#11), TC1 ; |5128| 
        BCC $C$L327,!TC1 ; |5128| 
                                        ; branchcc occurs ; |5128| 
$C$DW$L$_MMC_write$137$E:
$C$DW$L$_MMC_write$138$B:
        BTST #1, *SP(#11), TC1 ; |5128| 
        BCC $C$L327,!TC1 ; |5128| 
                                        ; branchcc occurs ; |5128| 
$C$DW$L$_MMC_write$138$E:
$C$DW$L$_MMC_write$139$B:
        BAND *SP(#10), #144, TC1 ; |5128| 
        BCC $C$L327,TC1 ; |5128| 
                                        ; branchcc occurs ; |5128| 
$C$DW$L$_MMC_write$139$E:
$C$L330:    
	.dwpsn	file "src/csl_mmcsd.c",line 5134,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |5134| 
        MOV *AR3, AR3 ; |5134| 
        MOV port(*AR3(T0)), AC0 ; |5134| 
        SFTL AC0, #8, AC0 ; |5134| 
        AND #0xffff, AC0, AC0 ; |5134| 
        MOV AC0, dbl(*SP(#8)) ; |5134| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5135,column 9,is_stmt
        MOV dbl(*SP(#8)), AC0 ; |5135| 
        SFTL AC0, #8, AC0 ; |5135| 
        MOV AC0, dbl(*SP(#8)) ; |5135| 
	.dwpsn	file "src/csl_mmcsd.c",line 5136,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |5136| 
        MOV *AR3, AR3 ; |5136| 
        MOV dbl(*SP(#8)), AC0 ; |5136| 
        OR port(*AR3(T0)), AC0, AC0 ; |5136| 
        MOV AC0, dbl(*SP(#8)) ; |5136| 
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5137,column 9,is_stmt
        MOV #-1 << #16, AC0 ; |5137| 
        OR #0x00ff, AC0, AC0 ; |5137| 
        MOV dbl(*SP(#8)), AC1 ; |5137| 
        AND AC1, AC0 ; |5137| 
        BCC $C$L333,AC0 == #0 ; |5137| 
                                        ; branchcc occurs ; |5137| 
	.dwpsn	file "src/csl_mmcsd.c",line 5139,column 10,is_stmt

        B $C$L334 ; |5139| 
||      MOV #-14, T0

                                        ; branch occurs ; |5139| 
$C$L331:    
	.dwpsn	file "src/csl_mmcsd.c",line 5144,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5144| 

        CMPU AC1 != AC0, TC1 ; |5144| 
        BCC $C$L332,TC1 ; |5144| 
                                        ; branchcc occurs ; |5144| 
	.dwpsn	file "src/csl_mmcsd.c",line 5146,column 13,is_stmt

        B $C$L334 ; |5146| 
||      MOV #-5, T0

                                        ; branch occurs ; |5146| 
$C$L332:    
	.dwpsn	file "src/csl_mmcsd.c",line 5150,column 13,is_stmt

        B $C$L334 ; |5150| 
||      MOV #-6, T0

                                        ; branch occurs ; |5150| 
$C$L333:    
	.dwpsn	file "src/csl_mmcsd.c",line 5154,column 2,is_stmt
        MOV #0, T0
$C$L334:    
	.dwpsn	file "src/csl_mmcsd.c",line 5155,column 1,is_stmt
        AADD #25, SP
	.dwcfi	cfa_offset, 3
        POP T3
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$520	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$520, DW_AT_low_pc(0x00)
	.dwattr $C$DW$520, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$521	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$521, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L327:1:1714639441")
	.dwattr $C$DW$521, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$521, DW_AT_TI_begin_line(0x13f4)
	.dwattr $C$DW$521, DW_AT_TI_end_line(0x1408)
$C$DW$522	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$522, DW_AT_low_pc($C$DW$L$_MMC_write$133$B)
	.dwattr $C$DW$522, DW_AT_high_pc($C$DW$L$_MMC_write$133$E)
$C$DW$523	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$523, DW_AT_low_pc($C$DW$L$_MMC_write$135$B)
	.dwattr $C$DW$523, DW_AT_high_pc($C$DW$L$_MMC_write$135$E)
$C$DW$524	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$524, DW_AT_low_pc($C$DW$L$_MMC_write$136$B)
	.dwattr $C$DW$524, DW_AT_high_pc($C$DW$L$_MMC_write$136$E)
$C$DW$525	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$525, DW_AT_low_pc($C$DW$L$_MMC_write$139$B)
	.dwattr $C$DW$525, DW_AT_high_pc($C$DW$L$_MMC_write$139$E)
$C$DW$526	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$526, DW_AT_low_pc($C$DW$L$_MMC_write$138$B)
	.dwattr $C$DW$526, DW_AT_high_pc($C$DW$L$_MMC_write$138$E)
$C$DW$527	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$527, DW_AT_low_pc($C$DW$L$_MMC_write$137$B)
	.dwattr $C$DW$527, DW_AT_high_pc($C$DW$L$_MMC_write$137$E)
	.dwendtag $C$DW$521


$C$DW$528	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$528, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L320:1:1714639441")
	.dwattr $C$DW$528, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$528, DW_AT_TI_begin_line(0x13c2)
	.dwattr $C$DW$528, DW_AT_TI_end_line(0x13d6)
$C$DW$529	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$529, DW_AT_low_pc($C$DW$L$_MMC_write$120$B)
	.dwattr $C$DW$529, DW_AT_high_pc($C$DW$L$_MMC_write$120$E)
$C$DW$530	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$530, DW_AT_low_pc($C$DW$L$_MMC_write$122$B)
	.dwattr $C$DW$530, DW_AT_high_pc($C$DW$L$_MMC_write$122$E)
$C$DW$531	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$531, DW_AT_low_pc($C$DW$L$_MMC_write$123$B)
	.dwattr $C$DW$531, DW_AT_high_pc($C$DW$L$_MMC_write$123$E)
$C$DW$532	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$532, DW_AT_low_pc($C$DW$L$_MMC_write$126$B)
	.dwattr $C$DW$532, DW_AT_high_pc($C$DW$L$_MMC_write$126$E)
$C$DW$533	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$533, DW_AT_low_pc($C$DW$L$_MMC_write$125$B)
	.dwattr $C$DW$533, DW_AT_high_pc($C$DW$L$_MMC_write$125$E)
$C$DW$534	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$534, DW_AT_low_pc($C$DW$L$_MMC_write$124$B)
	.dwattr $C$DW$534, DW_AT_high_pc($C$DW$L$_MMC_write$124$E)
	.dwendtag $C$DW$528


$C$DW$535	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$535, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L311:1:1714639441")
	.dwattr $C$DW$535, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$535, DW_AT_TI_begin_line(0x1334)
	.dwattr $C$DW$535, DW_AT_TI_end_line(0x13df)
$C$DW$536	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$536, DW_AT_low_pc($C$DW$L$_MMC_write$103$B)
	.dwattr $C$DW$536, DW_AT_high_pc($C$DW$L$_MMC_write$103$E)
$C$DW$537	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$537, DW_AT_low_pc($C$DW$L$_MMC_write$105$B)
	.dwattr $C$DW$537, DW_AT_high_pc($C$DW$L$_MMC_write$105$E)
$C$DW$538	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$538, DW_AT_low_pc($C$DW$L$_MMC_write$107$B)
	.dwattr $C$DW$538, DW_AT_high_pc($C$DW$L$_MMC_write$107$E)
$C$DW$539	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$539, DW_AT_low_pc($C$DW$L$_MMC_write$115$B)
	.dwattr $C$DW$539, DW_AT_high_pc($C$DW$L$_MMC_write$115$E)
$C$DW$540	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$540, DW_AT_low_pc($C$DW$L$_MMC_write$116$B)
	.dwattr $C$DW$540, DW_AT_high_pc($C$DW$L$_MMC_write$116$E)
$C$DW$541	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$541, DW_AT_low_pc($C$DW$L$_MMC_write$117$B)
	.dwattr $C$DW$541, DW_AT_high_pc($C$DW$L$_MMC_write$117$E)
$C$DW$542	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$542, DW_AT_low_pc($C$DW$L$_MMC_write$128$B)
	.dwattr $C$DW$542, DW_AT_high_pc($C$DW$L$_MMC_write$128$E)

$C$DW$543	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$543, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L313:2:1714639441")
	.dwattr $C$DW$543, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$543, DW_AT_TI_begin_line(0x135f)
	.dwattr $C$DW$543, DW_AT_TI_end_line(0x139b)
$C$DW$544	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$544, DW_AT_low_pc($C$DW$L$_MMC_write$106$B)
	.dwattr $C$DW$544, DW_AT_high_pc($C$DW$L$_MMC_write$106$E)
$C$DW$545	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$545, DW_AT_low_pc($C$DW$L$_MMC_write$108$B)
	.dwattr $C$DW$545, DW_AT_high_pc($C$DW$L$_MMC_write$108$E)
$C$DW$546	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$546, DW_AT_low_pc($C$DW$L$_MMC_write$109$B)
	.dwattr $C$DW$546, DW_AT_high_pc($C$DW$L$_MMC_write$109$E)
$C$DW$547	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$547, DW_AT_low_pc($C$DW$L$_MMC_write$111$B)
	.dwattr $C$DW$547, DW_AT_high_pc($C$DW$L$_MMC_write$111$E)
$C$DW$548	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$548, DW_AT_low_pc($C$DW$L$_MMC_write$112$B)
	.dwattr $C$DW$548, DW_AT_high_pc($C$DW$L$_MMC_write$112$E)
$C$DW$549	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$549, DW_AT_low_pc($C$DW$L$_MMC_write$114$B)
	.dwattr $C$DW$549, DW_AT_high_pc($C$DW$L$_MMC_write$114$E)

$C$DW$550	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$550, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L315:3:1714639441")
	.dwattr $C$DW$550, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$550, DW_AT_TI_begin_line(0x1382)
	.dwattr $C$DW$550, DW_AT_TI_end_line(0x1388)
$C$DW$551	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$551, DW_AT_low_pc($C$DW$L$_MMC_write$110$B)
	.dwattr $C$DW$551, DW_AT_high_pc($C$DW$L$_MMC_write$110$E)
	.dwendtag $C$DW$550


$C$DW$552	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$552, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L317:3:1714639441")
	.dwattr $C$DW$552, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$552, DW_AT_TI_begin_line(0x1392)
	.dwattr $C$DW$552, DW_AT_TI_end_line(0x1398)
$C$DW$553	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$553, DW_AT_low_pc($C$DW$L$_MMC_write$113$B)
	.dwattr $C$DW$553, DW_AT_high_pc($C$DW$L$_MMC_write$113$E)
	.dwendtag $C$DW$552

	.dwendtag $C$DW$543

	.dwendtag $C$DW$535


$C$DW$554	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$554, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L294:1:1714639441")
	.dwattr $C$DW$554, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$554, DW_AT_TI_begin_line(0x1273)
	.dwattr $C$DW$554, DW_AT_TI_end_line(0x1328)
$C$DW$555	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$555, DW_AT_low_pc($C$DW$L$_MMC_write$65$B)
	.dwattr $C$DW$555, DW_AT_high_pc($C$DW$L$_MMC_write$65$E)
$C$DW$556	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$556, DW_AT_low_pc($C$DW$L$_MMC_write$88$B)
	.dwattr $C$DW$556, DW_AT_high_pc($C$DW$L$_MMC_write$88$E)
$C$DW$557	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$557, DW_AT_low_pc($C$DW$L$_MMC_write$87$B)
	.dwattr $C$DW$557, DW_AT_high_pc($C$DW$L$_MMC_write$87$E)
$C$DW$558	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$558, DW_AT_low_pc($C$DW$L$_MMC_write$77$B)
	.dwattr $C$DW$558, DW_AT_high_pc($C$DW$L$_MMC_write$77$E)
$C$DW$559	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$559, DW_AT_low_pc($C$DW$L$_MMC_write$76$B)
	.dwattr $C$DW$559, DW_AT_high_pc($C$DW$L$_MMC_write$76$E)
$C$DW$560	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$560, DW_AT_low_pc($C$DW$L$_MMC_write$68$B)
	.dwattr $C$DW$560, DW_AT_high_pc($C$DW$L$_MMC_write$68$E)
$C$DW$561	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$561, DW_AT_low_pc($C$DW$L$_MMC_write$70$B)
	.dwattr $C$DW$561, DW_AT_high_pc($C$DW$L$_MMC_write$70$E)
$C$DW$562	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$562, DW_AT_low_pc($C$DW$L$_MMC_write$67$B)
	.dwattr $C$DW$562, DW_AT_high_pc($C$DW$L$_MMC_write$67$E)
$C$DW$563	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$563, DW_AT_low_pc($C$DW$L$_MMC_write$72$B)
	.dwattr $C$DW$563, DW_AT_high_pc($C$DW$L$_MMC_write$72$E)
$C$DW$564	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$564, DW_AT_low_pc($C$DW$L$_MMC_write$74$B)
	.dwattr $C$DW$564, DW_AT_high_pc($C$DW$L$_MMC_write$74$E)
$C$DW$565	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$565, DW_AT_low_pc($C$DW$L$_MMC_write$75$B)
	.dwattr $C$DW$565, DW_AT_high_pc($C$DW$L$_MMC_write$75$E)
$C$DW$566	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$566, DW_AT_low_pc($C$DW$L$_MMC_write$85$B)
	.dwattr $C$DW$566, DW_AT_high_pc($C$DW$L$_MMC_write$85$E)
$C$DW$567	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$567, DW_AT_low_pc($C$DW$L$_MMC_write$96$B)
	.dwattr $C$DW$567, DW_AT_high_pc($C$DW$L$_MMC_write$96$E)
$C$DW$568	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$568, DW_AT_low_pc($C$DW$L$_MMC_write$98$B)
	.dwattr $C$DW$568, DW_AT_high_pc($C$DW$L$_MMC_write$98$E)

$C$DW$569	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$569, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L304:2:1714639441")
	.dwattr $C$DW$569, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$569, DW_AT_TI_begin_line(0x1305)
	.dwattr $C$DW$569, DW_AT_TI_end_line(0x1319)
$C$DW$570	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$570, DW_AT_low_pc($C$DW$L$_MMC_write$89$B)
	.dwattr $C$DW$570, DW_AT_high_pc($C$DW$L$_MMC_write$89$E)
$C$DW$571	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$571, DW_AT_low_pc($C$DW$L$_MMC_write$91$B)
	.dwattr $C$DW$571, DW_AT_high_pc($C$DW$L$_MMC_write$91$E)
$C$DW$572	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$572, DW_AT_low_pc($C$DW$L$_MMC_write$92$B)
	.dwattr $C$DW$572, DW_AT_high_pc($C$DW$L$_MMC_write$92$E)
$C$DW$573	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$573, DW_AT_low_pc($C$DW$L$_MMC_write$95$B)
	.dwattr $C$DW$573, DW_AT_high_pc($C$DW$L$_MMC_write$95$E)
$C$DW$574	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$574, DW_AT_low_pc($C$DW$L$_MMC_write$94$B)
	.dwattr $C$DW$574, DW_AT_high_pc($C$DW$L$_MMC_write$94$E)
$C$DW$575	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$575, DW_AT_low_pc($C$DW$L$_MMC_write$93$B)
	.dwattr $C$DW$575, DW_AT_high_pc($C$DW$L$_MMC_write$93$E)
	.dwendtag $C$DW$569


$C$DW$576	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$576, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L299:2:1714639441")
	.dwattr $C$DW$576, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$576, DW_AT_TI_begin_line(0x12d1)
	.dwattr $C$DW$576, DW_AT_TI_end_line(0x12e5)
$C$DW$577	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$577, DW_AT_low_pc($C$DW$L$_MMC_write$78$B)
	.dwattr $C$DW$577, DW_AT_high_pc($C$DW$L$_MMC_write$78$E)
$C$DW$578	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$578, DW_AT_low_pc($C$DW$L$_MMC_write$80$B)
	.dwattr $C$DW$578, DW_AT_high_pc($C$DW$L$_MMC_write$80$E)
$C$DW$579	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$579, DW_AT_low_pc($C$DW$L$_MMC_write$81$B)
	.dwattr $C$DW$579, DW_AT_high_pc($C$DW$L$_MMC_write$81$E)
$C$DW$580	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$580, DW_AT_low_pc($C$DW$L$_MMC_write$84$B)
	.dwattr $C$DW$580, DW_AT_high_pc($C$DW$L$_MMC_write$84$E)
$C$DW$581	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$581, DW_AT_low_pc($C$DW$L$_MMC_write$83$B)
	.dwattr $C$DW$581, DW_AT_high_pc($C$DW$L$_MMC_write$83$E)
$C$DW$582	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$582, DW_AT_low_pc($C$DW$L$_MMC_write$82$B)
	.dwattr $C$DW$582, DW_AT_high_pc($C$DW$L$_MMC_write$82$E)
	.dwendtag $C$DW$576


$C$DW$583	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$583, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L303:2:1714639441")
	.dwattr $C$DW$583, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$583, DW_AT_TI_begin_line(0x12f4)
	.dwattr $C$DW$583, DW_AT_TI_end_line(0x1326)
$C$DW$584	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$584, DW_AT_low_pc($C$DW$L$_MMC_write$86$B)
	.dwattr $C$DW$584, DW_AT_high_pc($C$DW$L$_MMC_write$86$E)
$C$DW$585	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$585, DW_AT_low_pc($C$DW$L$_MMC_write$97$B)
	.dwattr $C$DW$585, DW_AT_high_pc($C$DW$L$_MMC_write$97$E)
	.dwendtag $C$DW$583

	.dwendtag $C$DW$554


$C$DW$586	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$586, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L272:1:1714639441")
	.dwattr $C$DW$586, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$586, DW_AT_TI_begin_line(0x11be)
	.dwattr $C$DW$586, DW_AT_TI_end_line(0x123e)
$C$DW$587	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$587, DW_AT_low_pc($C$DW$L$_MMC_write$22$B)
	.dwattr $C$DW$587, DW_AT_high_pc($C$DW$L$_MMC_write$22$E)
$C$DW$588	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$588, DW_AT_low_pc($C$DW$L$_MMC_write$37$B)
	.dwattr $C$DW$588, DW_AT_high_pc($C$DW$L$_MMC_write$37$E)
$C$DW$589	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$589, DW_AT_low_pc($C$DW$L$_MMC_write$40$B)
	.dwattr $C$DW$589, DW_AT_high_pc($C$DW$L$_MMC_write$40$E)
$C$DW$590	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$590, DW_AT_low_pc($C$DW$L$_MMC_write$39$B)
	.dwattr $C$DW$590, DW_AT_high_pc($C$DW$L$_MMC_write$39$E)
$C$DW$591	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$591, DW_AT_low_pc($C$DW$L$_MMC_write$24$B)
	.dwattr $C$DW$591, DW_AT_high_pc($C$DW$L$_MMC_write$24$E)
$C$DW$592	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$592, DW_AT_low_pc($C$DW$L$_MMC_write$36$B)
	.dwattr $C$DW$592, DW_AT_high_pc($C$DW$L$_MMC_write$36$E)
$C$DW$593	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$593, DW_AT_low_pc($C$DW$L$_MMC_write$48$B)
	.dwattr $C$DW$593, DW_AT_high_pc($C$DW$L$_MMC_write$48$E)
$C$DW$594	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$594, DW_AT_low_pc($C$DW$L$_MMC_write$50$B)
	.dwattr $C$DW$594, DW_AT_high_pc($C$DW$L$_MMC_write$50$E)

$C$DW$595	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$595, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L283:2:1714639441")
	.dwattr $C$DW$595, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$595, DW_AT_TI_begin_line(0x1220)
	.dwattr $C$DW$595, DW_AT_TI_end_line(0x1234)
$C$DW$596	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$596, DW_AT_low_pc($C$DW$L$_MMC_write$41$B)
	.dwattr $C$DW$596, DW_AT_high_pc($C$DW$L$_MMC_write$41$E)
$C$DW$597	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$597, DW_AT_low_pc($C$DW$L$_MMC_write$43$B)
	.dwattr $C$DW$597, DW_AT_high_pc($C$DW$L$_MMC_write$43$E)
$C$DW$598	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$598, DW_AT_low_pc($C$DW$L$_MMC_write$44$B)
	.dwattr $C$DW$598, DW_AT_high_pc($C$DW$L$_MMC_write$44$E)
$C$DW$599	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$599, DW_AT_low_pc($C$DW$L$_MMC_write$47$B)
	.dwattr $C$DW$599, DW_AT_high_pc($C$DW$L$_MMC_write$47$E)
$C$DW$600	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$600, DW_AT_low_pc($C$DW$L$_MMC_write$46$B)
	.dwattr $C$DW$600, DW_AT_high_pc($C$DW$L$_MMC_write$46$E)
$C$DW$601	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$601, DW_AT_low_pc($C$DW$L$_MMC_write$45$B)
	.dwattr $C$DW$601, DW_AT_high_pc($C$DW$L$_MMC_write$45$E)
	.dwendtag $C$DW$595


$C$DW$602	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$602, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L274:2:1714639441")
	.dwattr $C$DW$602, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$602, DW_AT_TI_begin_line(0x11d3)
	.dwattr $C$DW$602, DW_AT_TI_end_line(0x1207)
$C$DW$603	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$603, DW_AT_low_pc($C$DW$L$_MMC_write$25$B)
	.dwattr $C$DW$603, DW_AT_high_pc($C$DW$L$_MMC_write$25$E)
$C$DW$604	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$604, DW_AT_low_pc($C$DW$L$_MMC_write$26$B)
	.dwattr $C$DW$604, DW_AT_high_pc($C$DW$L$_MMC_write$26$E)
$C$DW$605	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$605, DW_AT_low_pc($C$DW$L$_MMC_write$28$B)
	.dwattr $C$DW$605, DW_AT_high_pc($C$DW$L$_MMC_write$28$E)
$C$DW$606	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$606, DW_AT_low_pc($C$DW$L$_MMC_write$29$B)
	.dwattr $C$DW$606, DW_AT_high_pc($C$DW$L$_MMC_write$29$E)
$C$DW$607	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$607, DW_AT_low_pc($C$DW$L$_MMC_write$30$B)
	.dwattr $C$DW$607, DW_AT_high_pc($C$DW$L$_MMC_write$30$E)
$C$DW$608	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$608, DW_AT_low_pc($C$DW$L$_MMC_write$32$B)
	.dwattr $C$DW$608, DW_AT_high_pc($C$DW$L$_MMC_write$32$E)
$C$DW$609	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$609, DW_AT_low_pc($C$DW$L$_MMC_write$33$B)
	.dwattr $C$DW$609, DW_AT_high_pc($C$DW$L$_MMC_write$33$E)
$C$DW$610	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$610, DW_AT_low_pc($C$DW$L$_MMC_write$35$B)
	.dwattr $C$DW$610, DW_AT_high_pc($C$DW$L$_MMC_write$35$E)
$C$DW$611	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$611, DW_AT_low_pc($C$DW$L$_MMC_write$27$B)
	.dwattr $C$DW$611, DW_AT_high_pc($C$DW$L$_MMC_write$27$E)

$C$DW$612	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$612, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L277:3:1714639441")
	.dwattr $C$DW$612, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$612, DW_AT_TI_begin_line(0x11ee)
	.dwattr $C$DW$612, DW_AT_TI_end_line(0x11f4)
$C$DW$613	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$613, DW_AT_low_pc($C$DW$L$_MMC_write$31$B)
	.dwattr $C$DW$613, DW_AT_high_pc($C$DW$L$_MMC_write$31$E)
	.dwendtag $C$DW$612


$C$DW$614	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$614, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L279:3:1714639441")
	.dwattr $C$DW$614, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$614, DW_AT_TI_begin_line(0x11fe)
	.dwattr $C$DW$614, DW_AT_TI_end_line(0x1204)
$C$DW$615	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$615, DW_AT_low_pc($C$DW$L$_MMC_write$34$B)
	.dwattr $C$DW$615, DW_AT_high_pc($C$DW$L$_MMC_write$34$E)
	.dwendtag $C$DW$614

	.dwendtag $C$DW$602


$C$DW$616	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$616, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L282:2:1714639441")
	.dwattr $C$DW$616, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$616, DW_AT_TI_begin_line(0x120f)
	.dwattr $C$DW$616, DW_AT_TI_end_line(0x123d)
$C$DW$617	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$617, DW_AT_low_pc($C$DW$L$_MMC_write$38$B)
	.dwattr $C$DW$617, DW_AT_high_pc($C$DW$L$_MMC_write$38$E)
$C$DW$618	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$618, DW_AT_low_pc($C$DW$L$_MMC_write$49$B)
	.dwattr $C$DW$618, DW_AT_high_pc($C$DW$L$_MMC_write$49$E)
	.dwendtag $C$DW$616

	.dwendtag $C$DW$586


$C$DW$619	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$619, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L264:1:1714639441")
	.dwattr $C$DW$619, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$619, DW_AT_TI_begin_line(0x1188)
	.dwattr $C$DW$619, DW_AT_TI_end_line(0x1190)
$C$DW$620	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$620, DW_AT_low_pc($C$DW$L$_MMC_write$9$B)
	.dwattr $C$DW$620, DW_AT_high_pc($C$DW$L$_MMC_write$9$E)
$C$DW$621	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$621, DW_AT_low_pc($C$DW$L$_MMC_write$10$B)
	.dwattr $C$DW$621, DW_AT_high_pc($C$DW$L$_MMC_write$10$E)
$C$DW$622	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$622, DW_AT_low_pc($C$DW$L$_MMC_write$12$B)
	.dwattr $C$DW$622, DW_AT_high_pc($C$DW$L$_MMC_write$12$E)
$C$DW$623	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$623, DW_AT_low_pc($C$DW$L$_MMC_write$11$B)
	.dwattr $C$DW$623, DW_AT_high_pc($C$DW$L$_MMC_write$11$E)
	.dwendtag $C$DW$619

	.dwattr $C$DW$462, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$462, DW_AT_TI_end_line(0x1423)
	.dwattr $C$DW$462, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$462

	.sect	".text"
	.global	_MMC_bootModeRead

$C$DW$624	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_bootModeRead")
	.dwattr $C$DW$624, DW_AT_low_pc(_MMC_bootModeRead)
	.dwattr $C$DW$624, DW_AT_high_pc(0x00)
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_MMC_bootModeRead")
	.dwattr $C$DW$624, DW_AT_external
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$624, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$624, DW_AT_TI_begin_line(0x143f)
	.dwattr $C$DW$624, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$624, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd.c",line 5187,column 1,is_stmt,address _MMC_bootModeRead

	.dwfde $C$DW$CIE, _MMC_bootModeRead
$C$DW$625	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg17]
$C$DW$626	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cardAddr")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg0]
$C$DW$627	.dwtag  DW_TAG_formal_parameter, DW_AT_name("noOfBytes")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg12]
$C$DW$628	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_bootModeRead                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (15 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_bootModeRead:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$629	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$629, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$630	.dwtag  DW_TAG_variable, DW_AT_name("cardAddr")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_cardAddr")
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$630, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$631	.dwtag  DW_TAG_variable, DW_AT_name("noOfBytes")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_noOfBytes")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$632	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$632, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$633	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$633, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$634	.dwtag  DW_TAG_variable, DW_AT_name("mmcStatus")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_mmcStatus")
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$634, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$635	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$635, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$636	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuff")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_pReadBuff")
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$636, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$637	.dwtag  DW_TAG_variable, DW_AT_name("rdCntMmc")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_rdCntMmc")
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR1, dbl(*SP(#6))
        MOV T0, *SP(#4) ; |5187| 
        MOV AC0, dbl(*SP(#2)) ; |5187| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5196,column 2,is_stmt
        MOV #0, *SP(#14) ; |5196| 
	.dwpsn	file "src/csl_mmcsd.c",line 5197,column 2,is_stmt
        MOV #0, *SP(#10) ; |5197| 
	.dwpsn	file "src/csl_mmcsd.c",line 5199,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L344,AC0 == #0 ; |5199| 
                                        ; branchcc occurs ; |5199| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L344,AC0 == #0 ; |5199| 
                                        ; branchcc occurs ; |5199| 
	.dwpsn	file "src/csl_mmcsd.c",line 5202,column 9,is_stmt
        MOV *SP(#4), AR1 ; |5202| 
        BCC $C$L337,AR1 == #0 ; |5202| 
                                        ; branchcc occurs ; |5202| 
	.dwpsn	file "src/csl_mmcsd.c",line 5207,column 4,is_stmt
        MOV #12, T0
        MOV #32, AR2 ; |5217| 

        MOV #1, *SP(#9) ; |5207| 
||      MOV #1, AR1

$C$L335:    
$C$DW$L$_MMC_bootModeRead$5$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5210,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5210| 
        MOV port(*AR3(T0)), AR3 ; |5210| 
        MOV AR3, *SP(#8) ; |5210| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5211,column 5,is_stmt
        MOV *SP(#8), AR3 ; |5211| 
        AND #0x0020, AR3, AR3 ; |5211| 
        OR *SP(#9), AR3, AR3 ; |5211| 
        MOV AR3, *SP(#9) ; |5211| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5213,column 5,is_stmt
        BTST #0, *SP(#8), TC1 ; |5213| 
        BCC $C$L336,TC1 ; |5213| 
                                        ; branchcc occurs ; |5213| 
$C$DW$L$_MMC_bootModeRead$5$E:
$C$DW$L$_MMC_bootModeRead$6$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5215,column 6,is_stmt
        AND #0xfffe, *SP(#9) ; |5215| 
$C$DW$L$_MMC_bootModeRead$6$E:
$C$L336:    
$C$DW$L$_MMC_bootModeRead$7$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5217,column 21,is_stmt
        MOV *SP(#9), AR3 ; |5217| 
        AND #0x0020, AR3, AR3 ; |5217| 
        CMPU AR3 != AR2, TC1 ; |5217| 
        BCC $C$L335,TC1 ; |5217| 
                                        ; branchcc occurs ; |5217| 
$C$DW$L$_MMC_bootModeRead$7$E:
$C$DW$L$_MMC_bootModeRead$8$B:
        MOV *SP(#9), AR3 ; |5217| 
        AND #0x0001, AR3, AR3 ; |5217| 
        CMPU AR3 == AR1, TC1 ; |5217| 
        BCC $C$L335,TC1 ; |5217| 
                                        ; branchcc occurs ; |5217| 
$C$DW$L$_MMC_bootModeRead$8$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5219,column 9,is_stmt
        B $C$L338 ; |5219| 
                                        ; branch occurs ; |5219| 
$C$L337:    
	.dwpsn	file "src/csl_mmcsd.c",line 5222,column 13,is_stmt
        MOV #-6, T0
        B $C$L347 ; |5222| 
                                        ; branch occurs ; |5222| 
$C$L338:    
	.dwpsn	file "src/csl_mmcsd.c",line 5225,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_mmcsd.c",line 5242,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AR2
        MOV *AR3(#8), AR1 ; |5242| 
        CMP AR2 != AR1, TC1 ; |5242| 
        BCC $C$L346,TC1 ; |5242| 
                                        ; branchcc occurs ; |5242| 
$C$L339:    
$C$DW$L$_MMC_bootModeRead$12$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5262,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#61), AR1 ; |5262| 
        BCC $C$L341,AR1 != #0 ; |5262| 
                                        ; branchcc occurs ; |5262| 
$C$DW$L$_MMC_bootModeRead$12$E:
$C$DW$L$_MMC_bootModeRead$13$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5270,column 10,is_stmt
        MOV #0, *SP(#10) ; |5270| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5270,column 21,is_stmt
        MOV #16, AR2 ; |5270| 
        MOV *SP(#10), AR1 ; |5270| 
        CMPU AR1 >= AR2, TC1 ; |5270| 
        BCC $C$L343,TC1 ; |5270| 
                                        ; branchcc occurs ; |5270| 
$C$DW$L$_MMC_bootModeRead$13$E:
$C$L340:    
$C$DW$L$_MMC_bootModeRead$14$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5272,column 7,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV dbl(*SP(#0)), XAR3
        MOV #40, T0 ; |5272| 
        MOV *AR3, AR3 ; |5272| 
        MOV port(*AR3(T0)), AR1 ; |5272| 
        MOV AR1, *AR2 ; |5272| 
	.dwpsn	file "src/csl_mmcsd.c",line 5275,column 7,is_stmt
        ADD #2, *SP(#14) ; |5275| 
	.dwpsn	file "src/csl_mmcsd.c",line 5270,column 33,is_stmt
        ADD #1, *SP(#10) ; |5270| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5270,column 21,is_stmt
        MOV #16, AR2 ; |5270| 
        MOV *SP(#10), AR1 ; |5270| 
        CMPU AR1 < AR2, TC1 ; |5270| 
        BCC $C$L340,TC1 ; |5270| 
                                        ; branchcc occurs ; |5270| 
$C$DW$L$_MMC_bootModeRead$14$E:
$C$DW$L$_MMC_bootModeRead$15$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5277,column 5,is_stmt
        B $C$L343 ; |5277| 
                                        ; branch occurs ; |5277| 
$C$DW$L$_MMC_bootModeRead$15$E:
$C$L341:    
$C$DW$L$_MMC_bootModeRead$16$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5286,column 10,is_stmt
        MOV #0, *SP(#10) ; |5286| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5286,column 21,is_stmt
        MOV #16, AR2 ; |5286| 
        MOV *SP(#10), AR1 ; |5286| 
        CMPU AR1 >= AR2, TC1 ; |5286| 
        BCC $C$L343,TC1 ; |5286| 
                                        ; branchcc occurs ; |5286| 
$C$DW$L$_MMC_bootModeRead$16$E:
$C$L342:    
$C$DW$L$_MMC_bootModeRead$17$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5288,column 7,is_stmt
        MOV dbl(*SP(#12)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#12))
        MOV dbl(*SP(#0)), XAR3
        MOV #41, T0 ; |5288| 
        MOV *AR3, AR3 ; |5288| 
        MOV port(*AR3(T0)), AR1 ; |5288| 
        MOV AR1, *AR2 ; |5288| 
	.dwpsn	file "src/csl_mmcsd.c",line 5291,column 7,is_stmt
        ADD #2, *SP(#14) ; |5291| 
	.dwpsn	file "src/csl_mmcsd.c",line 5286,column 33,is_stmt
        ADD #1, *SP(#10) ; |5286| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5286,column 21,is_stmt
        MOV #16, AR2 ; |5286| 
        MOV *SP(#10), AR1 ; |5286| 
        CMPU AR1 < AR2, TC1 ; |5286| 
        BCC $C$L342,TC1 ; |5286| 
                                        ; branchcc occurs ; |5286| 
$C$DW$L$_MMC_bootModeRead$17$E:
$C$L343:    
$C$DW$L$_MMC_bootModeRead$18$B:
	.dwpsn	file "src/csl_mmcsd.c",line 5295,column 12,is_stmt
        MOV *SP(#4), AR1 ; |5295| 
        MOV *SP(#14), AR2 ; |5295| 
        CMPU AR2 < AR1, TC1 ; |5295| 
        BCC $C$L339,TC1 ; |5295| 
                                        ; branchcc occurs ; |5295| 
$C$DW$L$_MMC_bootModeRead$18$E:
	.dwpsn	file "src/csl_mmcsd.c",line 5298,column 5,is_stmt
        B $C$L346 ; |5298| 
                                        ; branch occurs ; |5298| 
$C$L344:    
	.dwpsn	file "src/csl_mmcsd.c",line 5301,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5301| 

        CMPU AC1 != AC0, TC1 ; |5301| 
        BCC $C$L345,TC1 ; |5301| 
                                        ; branchcc occurs ; |5301| 
	.dwpsn	file "src/csl_mmcsd.c",line 5303,column 13,is_stmt
        MOV #-5, T0
        B $C$L347 ; |5303| 
                                        ; branch occurs ; |5303| 
$C$L345:    
	.dwpsn	file "src/csl_mmcsd.c",line 5307,column 13,is_stmt
        MOV #-6, T0
        B $C$L347 ; |5307| 
                                        ; branch occurs ; |5307| 
$C$L346:    
	.dwpsn	file "src/csl_mmcsd.c",line 5311,column 2,is_stmt
        MOV #0, T0
$C$L347:    
	.dwpsn	file "src/csl_mmcsd.c",line 5312,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$638	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$638, DW_AT_low_pc(0x00)
	.dwattr $C$DW$638, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$639	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$639, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L339:1:1714639441")
	.dwattr $C$DW$639, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$639, DW_AT_TI_begin_line(0x147c)
	.dwattr $C$DW$639, DW_AT_TI_end_line(0x14af)
$C$DW$640	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$640, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$12$B)
	.dwattr $C$DW$640, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$12$E)
$C$DW$641	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$641, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$13$B)
	.dwattr $C$DW$641, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$13$E)
$C$DW$642	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$642, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$15$B)
	.dwattr $C$DW$642, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$15$E)
$C$DW$643	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$643, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$16$B)
	.dwattr $C$DW$643, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$16$E)
$C$DW$644	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$644, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$18$B)
	.dwattr $C$DW$644, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$18$E)

$C$DW$645	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$645, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L340:2:1714639441")
	.dwattr $C$DW$645, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$645, DW_AT_TI_begin_line(0x1496)
	.dwattr $C$DW$645, DW_AT_TI_end_line(0x149c)
$C$DW$646	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$646, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$14$B)
	.dwattr $C$DW$646, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$14$E)
	.dwendtag $C$DW$645


$C$DW$647	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$647, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L342:2:1714639441")
	.dwattr $C$DW$647, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$647, DW_AT_TI_begin_line(0x14a6)
	.dwattr $C$DW$647, DW_AT_TI_end_line(0x14ac)
$C$DW$648	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$648, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$17$B)
	.dwattr $C$DW$648, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$17$E)
	.dwendtag $C$DW$647

	.dwendtag $C$DW$639


$C$DW$649	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$649, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L335:1:1714639441")
	.dwattr $C$DW$649, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$649, DW_AT_TI_begin_line(0x1458)
	.dwattr $C$DW$649, DW_AT_TI_end_line(0x1461)
$C$DW$650	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$650, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$5$B)
	.dwattr $C$DW$650, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$5$E)
$C$DW$651	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$651, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$6$B)
	.dwattr $C$DW$651, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$6$E)
$C$DW$652	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$652, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$8$B)
	.dwattr $C$DW$652, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$8$E)
$C$DW$653	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$653, DW_AT_low_pc($C$DW$L$_MMC_bootModeRead$7$B)
	.dwattr $C$DW$653, DW_AT_high_pc($C$DW$L$_MMC_bootModeRead$7$E)
	.dwendtag $C$DW$649

	.dwattr $C$DW$624, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$624, DW_AT_TI_end_line(0x14c0)
	.dwattr $C$DW$624, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$624

	.sect	".text"
	.global	_MMC_setDmaHandle

$C$DW$654	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setDmaHandle")
	.dwattr $C$DW$654, DW_AT_low_pc(_MMC_setDmaHandle)
	.dwattr $C$DW$654, DW_AT_high_pc(0x00)
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_MMC_setDmaHandle")
	.dwattr $C$DW$654, DW_AT_external
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$654, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$654, DW_AT_TI_begin_line(0x1500)
	.dwattr $C$DW$654, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$654, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 5379,column 1,is_stmt,address _MMC_setDmaHandle

	.dwfde $C$DW$CIE, _MMC_setDmaHandle
$C$DW$655	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$655, DW_AT_location[DW_OP_reg17]
$C$DW$656	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDmaWrite")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_hDmaWrite")
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$656, DW_AT_location[DW_OP_reg19]
$C$DW$657	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDmaRead")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_hDmaRead")
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$657, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: MMC_setDmaHandle                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setDmaHandle:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$658	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$658, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$659	.dwtag  DW_TAG_variable, DW_AT_name("hDmaWrite")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_hDmaWrite")
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$659, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$660	.dwtag  DW_TAG_variable, DW_AT_name("hDmaRead")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_hDmaRead")
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$660, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$661	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$661, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5382,column 2,is_stmt
        MOV #0, *SP(#6) ; |5382| 
	.dwpsn	file "src/csl_mmcsd.c",line 5384,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5384| 

        CMPU AC1 != AC0, TC1 ; |5384| 
        BCC $C$L348,TC1 ; |5384| 
                                        ; branchcc occurs ; |5384| 
	.dwpsn	file "src/csl_mmcsd.c",line 5386,column 3,is_stmt
        MOV #-5, *SP(#6) ; |5386| 
	.dwpsn	file "src/csl_mmcsd.c",line 5387,column 2,is_stmt
        B $C$L351 ; |5387| 
                                        ; branch occurs ; |5387| 
$C$L348:    
	.dwpsn	file "src/csl_mmcsd.c",line 5390,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |5390| 
        BCC $C$L349,TC1 ; |5390| 
                                        ; branchcc occurs ; |5390| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |5390| 
        BCC $C$L349,TC1 ; |5390| 
                                        ; branchcc occurs ; |5390| 
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#8) == #2, TC1 ; |5390| 
        BCC $C$L350,TC1 ; |5390| 
                                        ; branchcc occurs ; |5390| 
$C$L349:    
	.dwpsn	file "src/csl_mmcsd.c",line 5393,column 4,is_stmt
        MOV #-6, *SP(#6) ; |5393| 
	.dwpsn	file "src/csl_mmcsd.c",line 5394,column 3,is_stmt
        B $C$L351 ; |5394| 
                                        ; branch occurs ; |5394| 
$C$L350:    
	.dwpsn	file "src/csl_mmcsd.c",line 5397,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_mmcsd.c",line 5398,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*AR2(#12))
$C$L351:    
	.dwpsn	file "src/csl_mmcsd.c",line 5402,column 2,is_stmt
        MOV *SP(#6), T0 ; |5402| 
	.dwpsn	file "src/csl_mmcsd.c",line 5403,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$662	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$662, DW_AT_low_pc(0x00)
	.dwattr $C$DW$662, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$654, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$654, DW_AT_TI_end_line(0x151b)
	.dwattr $C$DW$654, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$654

	.sect	".text"
	.global	_MMC_setDataTransferCallback

$C$DW$663	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setDataTransferCallback")
	.dwattr $C$DW$663, DW_AT_low_pc(_MMC_setDataTransferCallback)
	.dwattr $C$DW$663, DW_AT_high_pc(0x00)
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_MMC_setDataTransferCallback")
	.dwattr $C$DW$663, DW_AT_external
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$663, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$663, DW_AT_TI_begin_line(0x1562)
	.dwattr $C$DW$663, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$663, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 5476,column 1,is_stmt,address _MMC_setDataTransferCallback

	.dwfde $C$DW$CIE, _MMC_setDataTransferCallback
$C$DW$664	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$664, DW_AT_location[DW_OP_reg17]
$C$DW$665	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataTransferCallback")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_dataTransferCallback")
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$665, DW_AT_location[DW_OP_reg1]
;*******************************************************************************
;* FUNCTION NAME: MMC_setDataTransferCallback                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setDataTransferCallback:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$666	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$666, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$667	.dwtag  DW_TAG_variable, DW_AT_name("dataTransferCallback")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_dataTransferCallback")
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$667, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$668	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$668, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |5476| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5479,column 5,is_stmt
        MOV #0, *SP(#4) ; |5479| 
	.dwpsn	file "src/csl_mmcsd.c",line 5481,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5481| 

        CMPU AC1 != AC0, TC1 ; |5481| 
        BCC $C$L352,TC1 ; |5481| 
                                        ; branchcc occurs ; |5481| 
	.dwpsn	file "src/csl_mmcsd.c",line 5483,column 3,is_stmt
        MOV #-5, *SP(#4) ; |5483| 
	.dwpsn	file "src/csl_mmcsd.c",line 5484,column 2,is_stmt
        B $C$L354 ; |5484| 
                                        ; branch occurs ; |5484| 
$C$L352:    
	.dwpsn	file "src/csl_mmcsd.c",line 5487,column 3,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |5487| 
        CMPU AC1 != AC0, TC1 ; |5487| 
        BCC $C$L353,TC1 ; |5487| 
                                        ; branchcc occurs ; |5487| 
	.dwpsn	file "src/csl_mmcsd.c",line 5489,column 4,is_stmt
        MOV #0, AC0 ; |5489| 
        MOV AC0, dbl(*AR3(#42)) ; |5489| 
	.dwpsn	file "src/csl_mmcsd.c",line 5490,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#44) ; |5490| 
	.dwpsn	file "src/csl_mmcsd.c",line 5491,column 4,is_stmt
        MOV #-6, *SP(#4) ; |5491| 
	.dwpsn	file "src/csl_mmcsd.c",line 5492,column 3,is_stmt
        B $C$L354 ; |5492| 
                                        ; branch occurs ; |5492| 
$C$L353:    
	.dwpsn	file "src/csl_mmcsd.c",line 5495,column 4,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |5495| 
        MOV AC0, dbl(*AR3(#42)) ; |5495| 
	.dwpsn	file "src/csl_mmcsd.c",line 5496,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#44) ; |5496| 
$C$L354:    
	.dwpsn	file "src/csl_mmcsd.c",line 5500,column 2,is_stmt
        MOV *SP(#4), T0 ; |5500| 
	.dwpsn	file "src/csl_mmcsd.c",line 5501,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$669	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$669, DW_AT_low_pc(0x00)
	.dwattr $C$DW$669, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$663, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$663, DW_AT_TI_end_line(0x157d)
	.dwattr $C$DW$663, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$663

	.sect	".text"
	.global	_MMC_setDmaChanConfig

$C$DW$670	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setDmaChanConfig")
	.dwattr $C$DW$670, DW_AT_low_pc(_MMC_setDmaChanConfig)
	.dwattr $C$DW$670, DW_AT_high_pc(0x00)
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_MMC_setDmaChanConfig")
	.dwattr $C$DW$670, DW_AT_external
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$670, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$670, DW_AT_TI_begin_line(0x15d1)
	.dwattr $C$DW$670, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$670, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_mmcsd.c",line 5587,column 1,is_stmt,address _MMC_setDmaChanConfig

	.dwfde $C$DW$CIE, _MMC_setDmaChanConfig
$C$DW$671	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$671, DW_AT_location[DW_OP_reg17]
$C$DW$672	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dmaConfig")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_dmaConfig")
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$672, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_setDmaChanConfig                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CSR,RPTC,TC1,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setDmaChanConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$673	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$673, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$674	.dwtag  DW_TAG_variable, DW_AT_name("dmaConfig")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_dmaConfig")
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$674, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$675	.dwtag  DW_TAG_variable, DW_AT_name("dmaConfig")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_dmaConfig")
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$675, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$676	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$676, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
        MOV dbl(*SP(#2)), XAR3

        RPT #4    ; |5587| 
||      AMAR *SP(#4), XAR2

                                            ; loop starts ; |5587| 
$C$L355:    
$C$DW$L$_MMC_setDmaChanConfig$2$B:
            MOV *AR3+, *AR2+ ; |5587| 
                                        ; loop ends ; |5587| 
$C$DW$L$_MMC_setDmaChanConfig$2$E:
$C$L356:    
	.dwpsn	file "src/csl_mmcsd.c",line 5590,column 2,is_stmt
        MOV #-6, *SP(#9) ; |5590| 
	.dwpsn	file "src/csl_mmcsd.c",line 5592,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5592| 

        CMPU AC1 != AC0, TC1 ; |5592| 
        BCC $C$L357,TC1 ; |5592| 
                                        ; branchcc occurs ; |5592| 
	.dwpsn	file "src/csl_mmcsd.c",line 5594,column 3,is_stmt
        MOV #-5, *SP(#9) ; |5594| 
	.dwpsn	file "src/csl_mmcsd.c",line 5595,column 2,is_stmt
        B $C$L365 ; |5595| 
                                        ; branch occurs ; |5595| 
$C$L357:    
	.dwpsn	file "src/csl_mmcsd.c",line 5598,column 3,is_stmt
        CMP *AR3(#8) == #2, TC1 ; |5598| 
        BCC $C$L358,TC1 ; |5598| 
                                        ; branchcc occurs ; |5598| 
	.dwpsn	file "src/csl_mmcsd.c",line 5600,column 4,is_stmt
        MOV *SP(#9), T0 ; |5600| 
        B $C$L366 ; |5600| 
                                        ; branch occurs ; |5600| 
$C$L358:    
	.dwpsn	file "src/csl_mmcsd.c",line 5603,column 3,is_stmt
        MOV *SP(#5), AR1 ; |5603| 
        BCC $C$L359,AR1 == #0 ; |5603| 
                                        ; branchcc occurs ; |5603| 
        CMP *SP(#5) == #1, TC1 ; |5603| 
        BCC $C$L359,TC1 ; |5603| 
                                        ; branchcc occurs ; |5603| 
	.dwpsn	file "src/csl_mmcsd.c",line 5606,column 4,is_stmt
        MOV *SP(#9), T0 ; |5606| 
        B $C$L366 ; |5606| 
                                        ; branch occurs ; |5606| 
$C$L359:    
	.dwpsn	file "src/csl_mmcsd.c",line 5609,column 3,is_stmt
        CMP *SP(#8) == #1, TC1 ; |5609| 
        BCC $C$L360,TC1 ; |5609| 
                                        ; branchcc occurs ; |5609| 
        MOV *SP(#8), AR1 ; |5609| 
        BCC $C$L360,AR1 == #0 ; |5609| 
                                        ; branchcc occurs ; |5609| 
	.dwpsn	file "src/csl_mmcsd.c",line 5612,column 4,is_stmt
        MOV *SP(#9), T0 ; |5612| 
        B $C$L366 ; |5612| 
                                        ; branch occurs ; |5612| 
$C$L360:    
	.dwpsn	file "src/csl_mmcsd.c",line 5615,column 3,is_stmt
        MOV *SP(#7), AR1 ; |5615| 
        BCC $C$L361,AR1 == #0 ; |5615| 
                                        ; branchcc occurs ; |5615| 
        CMP *SP(#7) == #1, TC1 ; |5615| 
        BCC $C$L361,TC1 ; |5615| 
                                        ; branchcc occurs ; |5615| 
	.dwpsn	file "src/csl_mmcsd.c",line 5618,column 4,is_stmt
        MOV *SP(#9), T0 ; |5618| 
        B $C$L366 ; |5618| 
                                        ; branch occurs ; |5618| 
$C$L361:    
	.dwpsn	file "src/csl_mmcsd.c",line 5621,column 3,is_stmt
        CMP *SP(#6) == #3, TC1 ; |5621| 
        BCC $C$L362,TC1 ; |5621| 
                                        ; branchcc occurs ; |5621| 
        CMP *SP(#6) == #2, TC1 ; |5621| 
        BCC $C$L362,TC1 ; |5621| 
                                        ; branchcc occurs ; |5621| 
	.dwpsn	file "src/csl_mmcsd.c",line 5624,column 4,is_stmt
        MOV #3, *SP(#6) ; |5624| 
$C$L362:    
	.dwpsn	file "src/csl_mmcsd.c",line 5628,column 3,is_stmt
        MOV *SP(#4), AR1 ; |5628| 
        BCC $C$L363,AR1 == #0 ; |5628| 
                                        ; branchcc occurs ; |5628| 
        CMP *SP(#4) == #1, TC1 ; |5628| 
        BCC $C$L363,TC1 ; |5628| 
                                        ; branchcc occurs ; |5628| 
	.dwpsn	file "src/csl_mmcsd.c",line 5631,column 4,is_stmt
        MOV *SP(#9), T0 ; |5631| 
        B $C$L366 ; |5631| 
                                        ; branch occurs ; |5631| 
$C$L363:    
	.dwpsn	file "src/csl_mmcsd.c",line 5635,column 3,is_stmt
        MOV #0, *SP(#9) ; |5635| 
	.dwpsn	file "src/csl_mmcsd.c",line 5637,column 3,is_stmt

        MOV *SP(#8), AR1 ; |5637| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |5637| 
        BCC $C$L364,TC1 ; |5637| 
                                        ; branchcc occurs ; |5637| 
	.dwpsn	file "src/csl_mmcsd.c",line 5640,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), AR1 ; |5640| 
        MOV AR1, *AR3(#15) ; |5640| 
	.dwpsn	file "src/csl_mmcsd.c",line 5641,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AR1 ; |5641| 
        MOV AR1, *AR3(#16) ; |5641| 
	.dwpsn	file "src/csl_mmcsd.c",line 5642,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), AR1 ; |5642| 
        MOV AR1, *AR3(#19) ; |5642| 
	.dwpsn	file "src/csl_mmcsd.c",line 5644,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |5644| 
        MOV AR1, *AR3(#14) ; |5644| 
	.dwpsn	file "src/csl_mmcsd.c",line 5647,column 3,is_stmt
        B $C$L365 ; |5647| 
                                        ; branch occurs ; |5647| 
$C$L364:    
	.dwpsn	file "src/csl_mmcsd.c",line 5651,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#5), AR1 ; |5651| 
        MOV AR1, *AR3(#29) ; |5651| 
	.dwpsn	file "src/csl_mmcsd.c",line 5652,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AR1 ; |5652| 
        MOV AR1, *AR3(#30) ; |5652| 
	.dwpsn	file "src/csl_mmcsd.c",line 5653,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), AR1 ; |5653| 
        MOV AR1, *AR3(#33) ; |5653| 
	.dwpsn	file "src/csl_mmcsd.c",line 5655,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), AR1 ; |5655| 
        MOV AR1, *AR3(#28) ; |5655| 
$C$L365:    
	.dwpsn	file "src/csl_mmcsd.c",line 5661,column 2,is_stmt
        MOV *SP(#9), T0 ; |5661| 
$C$L366:    
	.dwpsn	file "src/csl_mmcsd.c",line 5662,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$677	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$677, DW_AT_low_pc(0x00)
	.dwattr $C$DW$677, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$678	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$678, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L355:1:1714639441")
	.dwattr $C$DW$678, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$678, DW_AT_TI_begin_line(0x15d3)
	.dwattr $C$DW$678, DW_AT_TI_end_line(0x15d3)
$C$DW$679	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$679, DW_AT_low_pc($C$DW$L$_MMC_setDmaChanConfig$2$B)
	.dwattr $C$DW$679, DW_AT_high_pc($C$DW$L$_MMC_setDmaChanConfig$2$E)
	.dwendtag $C$DW$678

	.dwattr $C$DW$670, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$670, DW_AT_TI_end_line(0x161e)
	.dwattr $C$DW$670, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$670

	.sect	".text"
	.global	_MMC_setEndianMode

$C$DW$680	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setEndianMode")
	.dwattr $C$DW$680, DW_AT_low_pc(_MMC_setEndianMode)
	.dwattr $C$DW$680, DW_AT_high_pc(0x00)
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_MMC_setEndianMode")
	.dwattr $C$DW$680, DW_AT_external
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$680, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$680, DW_AT_TI_begin_line(0x1654)
	.dwattr $C$DW$680, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$680, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 5719,column 1,is_stmt,address _MMC_setEndianMode

	.dwfde $C$DW$CIE, _MMC_setEndianMode
$C$DW$681	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$681, DW_AT_location[DW_OP_reg17]
$C$DW$682	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$682, DW_AT_location[DW_OP_reg12]
$C$DW$683	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readEndianMode")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$683, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MMC_setEndianMode                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setEndianMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$684	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$684, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$685	.dwtag  DW_TAG_variable, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$685, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$686	.dwtag  DW_TAG_variable, DW_AT_name("readEndianMode")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$686, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$687	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$687, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#3) ; |5719| 
        MOV T0, *SP(#2) ; |5719| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5722,column 2,is_stmt
        MOV #0, *SP(#4) ; |5722| 
	.dwpsn	file "src/csl_mmcsd.c",line 5724,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5724| 

        CMPU AC1 != AC0, TC1 ; |5724| 
        BCC $C$L367,TC1 ; |5724| 
                                        ; branchcc occurs ; |5724| 
	.dwpsn	file "src/csl_mmcsd.c",line 5726,column 3,is_stmt
        MOV #-5, *SP(#4) ; |5726| 
	.dwpsn	file "src/csl_mmcsd.c",line 5727,column 2,is_stmt
        B $C$L371 ; |5727| 
                                        ; branch occurs ; |5727| 
$C$L367:    
	.dwpsn	file "src/csl_mmcsd.c",line 5730,column 3,is_stmt
        MOV *SP(#2), AR1 ; |5730| 
        BCC $C$L368,AR1 == #0 ; |5730| 
                                        ; branchcc occurs ; |5730| 
        CMP *SP(#2) == #1, TC1 ; |5730| 
        BCC $C$L369,!TC1 ; |5730| 
                                        ; branchcc occurs ; |5730| 
$C$L368:    
        MOV *SP(#3), AR1 ; |5730| 
        BCC $C$L370,AR1 == #0 ; |5730| 
                                        ; branchcc occurs ; |5730| 
        CMP *SP(#3) == #1, TC1 ; |5730| 
        BCC $C$L370,TC1 ; |5730| 
                                        ; branchcc occurs ; |5730| 
$C$L369:    
	.dwpsn	file "src/csl_mmcsd.c",line 5735,column 4,is_stmt
        MOV #-6, *SP(#4) ; |5735| 
	.dwpsn	file "src/csl_mmcsd.c",line 5736,column 3,is_stmt
        B $C$L371 ; |5736| 
                                        ; branch occurs ; |5736| 
$C$L370:    
	.dwpsn	file "src/csl_mmcsd.c",line 5739,column 4,is_stmt
        MOV AR1, *AR3(#61) ; |5739| 
	.dwpsn	file "src/csl_mmcsd.c",line 5740,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2), AR1 ; |5740| 
        MOV AR1, *AR3(#62) ; |5740| 
	.dwpsn	file "src/csl_mmcsd.c",line 5743,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5743| 
        MOV port(*AR3), AR1 ; |5743| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5743| 
        MOV *SP(#2) << #10, AC0 ; |5743| 
        AND #0x0400, AC0, AR2 ; |5743| 
        BCLR @#10, AR1 ; |5743| 
        OR AR1, AR2 ; |5743| 
        MOV AR2, port(*AR3) ; |5743| 
	.dwpsn	file "src/csl_mmcsd.c",line 5747,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5747| 
        MOV port(*AR3), AR1 ; |5747| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5747| 
        MOV *SP(#3) << #9, AC0 ; |5747| 
        AND #0x0200, AC0, AR2 ; |5747| 
        BCLR @#9, AR1 ; |5747| 
        OR AR1, AR2 ; |5747| 
        MOV AR2, port(*AR3) ; |5747| 
$C$L371:    
	.dwpsn	file "src/csl_mmcsd.c",line 5752,column 2,is_stmt
        MOV *SP(#4), T0 ; |5752| 
	.dwpsn	file "src/csl_mmcsd.c",line 5753,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$688	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$688, DW_AT_low_pc(0x00)
	.dwattr $C$DW$688, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$680, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$680, DW_AT_TI_end_line(0x1679)
	.dwattr $C$DW$680, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$680

	.sect	".text"
	.global	_MMC_setBlockLength

$C$DW$689	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setBlockLength")
	.dwattr $C$DW$689, DW_AT_low_pc(_MMC_setBlockLength)
	.dwattr $C$DW$689, DW_AT_high_pc(0x00)
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_MMC_setBlockLength")
	.dwattr $C$DW$689, DW_AT_external
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$689, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$689, DW_AT_TI_begin_line(0x16b3)
	.dwattr $C$DW$689, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$689, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_mmcsd.c",line 5813,column 1,is_stmt,address _MMC_setBlockLength

	.dwfde $C$DW$CIE, _MMC_setBlockLength
$C$DW$690	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$690, DW_AT_location[DW_OP_reg17]
$C$DW$691	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blockLen")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_blockLen")
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$691, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: MMC_setBlockLength                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setBlockLength:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$692	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$692, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$693	.dwtag  DW_TAG_variable, DW_AT_name("blockLen")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_blockLen")
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$693, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$694	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$694, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#2)) ; |5813| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5816,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5816| 

        CMPU AC1 != AC0, TC1 ; |5816| 
        BCC $C$L372,TC1 ; |5816| 
                                        ; branchcc occurs ; |5816| 
	.dwpsn	file "src/csl_mmcsd.c",line 5818,column 3,is_stmt
        MOV #-5, T0
        B $C$L375 ; |5818| 
                                        ; branch occurs ; |5818| 
$C$L372:    
	.dwpsn	file "src/csl_mmcsd.c",line 5828,column 3,is_stmt
        MOV dbl(*SP(#2)), AC1 ; |5828| 
        MOV #528, AC0 ; |5828| 
$C$DW$695	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$695, DW_AT_low_pc(0x00)
	.dwattr $C$DW$695, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$695, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |5828| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |5828| 
        MOV T0, *SP(#4) ; |5828| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5832,column 3,is_stmt

        MOV *SP(#4), AR1 ; |5832| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |5832| 
        BCC $C$L373,TC1 ; |5832| 
                                        ; branchcc occurs ; |5832| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |5832| 

        CMP AR2 != AR1, TC1 ; |5832| 
        BCC $C$L374,TC1 ; |5832| 
                                        ; branchcc occurs ; |5832| 
$C$L373:    
	.dwpsn	file "src/csl_mmcsd.c",line 5835,column 4,is_stmt
        MOV *SP(#4), T0 ; |5835| 
        B $C$L375 ; |5835| 
                                        ; branch occurs ; |5835| 
$C$L374:    
	.dwpsn	file "src/csl_mmcsd.c",line 5838,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |5838| 
        MOV AR1, *AR3(#63) ; |5838| 
	.dwpsn	file "src/csl_mmcsd.c",line 5841,column 2,is_stmt
        MOV #0, T0
$C$L375:    
	.dwpsn	file "src/csl_mmcsd.c",line 5842,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$696	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$696, DW_AT_low_pc(0x00)
	.dwattr $C$DW$696, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$689, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$689, DW_AT_TI_end_line(0x16d2)
	.dwattr $C$DW$689, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$689

	.sect	".text"
	.global	_MMC_setWriteBlkEraseCnt

$C$DW$697	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setWriteBlkEraseCnt")
	.dwattr $C$DW$697, DW_AT_low_pc(_MMC_setWriteBlkEraseCnt)
	.dwattr $C$DW$697, DW_AT_high_pc(0x00)
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_MMC_setWriteBlkEraseCnt")
	.dwattr $C$DW$697, DW_AT_external
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$697, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$697, DW_AT_TI_begin_line(0x1705)
	.dwattr $C$DW$697, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$697, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 5895,column 1,is_stmt,address _MMC_setWriteBlkEraseCnt

	.dwfde $C$DW$CIE, _MMC_setWriteBlkEraseCnt
$C$DW$698	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$698, DW_AT_location[DW_OP_reg17]
$C$DW$699	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blkCnt")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_blkCnt")
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$699, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: MMC_setWriteBlkEraseCnt                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setWriteBlkEraseCnt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$700	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$700, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$701	.dwtag  DW_TAG_variable, DW_AT_name("blkCnt")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_blkCnt")
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$701, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$702	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$702, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$703	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$703, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC0, dbl(*SP(#2)) ; |5895| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5899,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5899| 

        CMPU AC1 == AC0, TC1 ; |5899| 
        BCC $C$L379,TC1 ; |5899| 
                                        ; branchcc occurs ; |5899| 
	.dwpsn	file "src/csl_mmcsd.c",line 5903,column 3,is_stmt
        MOV #80, T0 ; |5903| 
        MOV *AR3, AR3 ; |5903| 
        MOV port(*AR3(T0)), AR1 ; |5903| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5903| 
        AND #0xffc0, AR1, AC0 ; |5903| 
        MOV AC0, port(*AR3(T0)) ; |5903| 
	.dwpsn	file "src/csl_mmcsd.c",line 5905,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |5905| 
        MOV AC0, dbl(*SP(#6)) ; |5905| 
	.dwpsn	file "src/csl_mmcsd.c",line 5906,column 3,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |5906| 
        SFTL AC0, #16, AC0 ; |5906| 
        MOV AC0, dbl(*SP(#6)) ; |5906| 
	.dwpsn	file "src/csl_mmcsd.c",line 5907,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC1 ; |5907| 
        MOV #567, AC0 ; |5907| 
$C$DW$704	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$704, DW_AT_low_pc(0x00)
	.dwattr $C$DW$704, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$704, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |5907| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |5907| 
        MOV T0, *SP(#4) ; |5907| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5911,column 3,is_stmt

        MOV *SP(#4), AR1 ; |5911| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |5911| 
        BCC $C$L376,TC1 ; |5911| 
                                        ; branchcc occurs ; |5911| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |5911| 

        CMP AR2 != AR1, TC1 ; |5911| 
        BCC $C$L377,TC1 ; |5911| 
                                        ; branchcc occurs ; |5911| 
$C$L376:    
	.dwpsn	file "src/csl_mmcsd.c",line 5914,column 4,is_stmt
        MOV *SP(#4), T0 ; |5914| 
        B $C$L381 ; |5914| 
                                        ; branch occurs ; |5914| 
$C$L377:    
	.dwpsn	file "src/csl_mmcsd.c",line 5918,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |5918| 
        MOV *AR3, AR3 ; |5918| 
        MOV port(*AR3(T0)), AR1 ; |5918| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5918| 
        AND #0xffc0, AR1, AC0 ; |5918| 
        MOV AC0, port(*AR3(T0)) ; |5918| 
	.dwpsn	file "src/csl_mmcsd.c",line 5920,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC1 ; |5920| 
        MOV #535, AC0 ; |5920| 
$C$DW$705	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$705, DW_AT_low_pc(0x00)
	.dwattr $C$DW$705, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$705, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |5920| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |5920| 
        MOV T0, *SP(#4) ; |5920| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 5924,column 3,is_stmt

        MOV *SP(#4), AR1 ; |5924| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |5924| 
        BCC $C$L378,TC1 ; |5924| 
                                        ; branchcc occurs ; |5924| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |5924| 

        CMP AR2 != AR1, TC1 ; |5924| 
        BCC $C$L380,TC1 ; |5924| 
                                        ; branchcc occurs ; |5924| 
$C$L378:    
	.dwpsn	file "src/csl_mmcsd.c",line 5927,column 4,is_stmt
        MOV *SP(#4), T0 ; |5927| 
        B $C$L381 ; |5927| 
                                        ; branch occurs ; |5927| 
$C$L379:    
	.dwpsn	file "src/csl_mmcsd.c",line 5932,column 3,is_stmt
        MOV #-5, T0
        B $C$L381 ; |5932| 
                                        ; branch occurs ; |5932| 
$C$L380:    
	.dwpsn	file "src/csl_mmcsd.c",line 5935,column 2,is_stmt
        MOV #0, T0
$C$L381:    
	.dwpsn	file "src/csl_mmcsd.c",line 5936,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$706	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$706, DW_AT_low_pc(0x00)
	.dwattr $C$DW$706, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$697, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$697, DW_AT_TI_end_line(0x1730)
	.dwattr $C$DW$697, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$697

	.sect	".text"
	.global	_SD_setBusWidth

$C$DW$707	.dwtag  DW_TAG_subprogram, DW_AT_name("SD_setBusWidth")
	.dwattr $C$DW$707, DW_AT_low_pc(_SD_setBusWidth)
	.dwattr $C$DW$707, DW_AT_high_pc(0x00)
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_SD_setBusWidth")
	.dwattr $C$DW$707, DW_AT_external
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$707, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$707, DW_AT_TI_begin_line(0x1764)
	.dwattr $C$DW$707, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$707, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 5990,column 1,is_stmt,address _SD_setBusWidth

	.dwfde $C$DW$CIE, _SD_setBusWidth
$C$DW$708	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg17]
$C$DW$709	.dwtag  DW_TAG_formal_parameter, DW_AT_name("busWidth")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_busWidth")
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SD_setBusWidth                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SD_setBusWidth:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$710	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$710, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$711	.dwtag  DW_TAG_variable, DW_AT_name("busWidth")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_busWidth")
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$711, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$712	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$712, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$713	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$713, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |5990| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 5994,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |5994| 

        CMPU AC1 == AC0, TC1 ; |5994| 
        BCC $C$L390,TC1 ; |5994| 
                                        ; branchcc occurs ; |5994| 
	.dwpsn	file "src/csl_mmcsd.c",line 5996,column 3,is_stmt
        MOV *SP(#2), AR1 ; |5996| 
        BCC $C$L382,AR1 == #0 ; |5996| 
                                        ; branchcc occurs ; |5996| 
        CMP *SP(#2) == #1, TC1 ; |5996| 
        BCC $C$L389,!TC1 ; |5996| 
                                        ; branchcc occurs ; |5996| 
$C$L382:    
	.dwpsn	file "src/csl_mmcsd.c",line 5999,column 4,is_stmt
        MOV #80, T0 ; |5999| 
        MOV *AR3, AR3 ; |5999| 
        MOV port(*AR3(T0)), AR1 ; |5999| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |5999| 
        AND #0xffc0, AR1, AC0 ; |5999| 
        MOV AC0, port(*AR3(T0)) ; |5999| 
	.dwpsn	file "src/csl_mmcsd.c",line 6001,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |6001| 
        MOV AC0, dbl(*SP(#4)) ; |6001| 
	.dwpsn	file "src/csl_mmcsd.c",line 6002,column 4,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |6002| 
        SFTL AC0, #16, AC0 ; |6002| 
        MOV AC0, dbl(*SP(#4)) ; |6002| 
	.dwpsn	file "src/csl_mmcsd.c",line 6003,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |6003| 
        MOV #567, AC0 ; |6003| 
$C$DW$714	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$714, DW_AT_low_pc(0x00)
	.dwattr $C$DW$714, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$714, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6003| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6003| 
        MOV T0, *SP(#3) ; |6003| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6007,column 4,is_stmt

        MOV *SP(#3), AR1 ; |6007| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |6007| 
        BCC $C$L383,TC1 ; |6007| 
                                        ; branchcc occurs ; |6007| 

        MOV #-15, AR2
||      MOV *SP(#3), AR1 ; |6007| 

        CMP AR2 != AR1, TC1 ; |6007| 
        BCC $C$L384,TC1 ; |6007| 
                                        ; branchcc occurs ; |6007| 
$C$L383:    
	.dwpsn	file "src/csl_mmcsd.c",line 6010,column 5,is_stmt
        MOV *SP(#3), T0 ; |6010| 
        B $C$L392 ; |6010| 
                                        ; branch occurs ; |6010| 
$C$L384:    
	.dwpsn	file "src/csl_mmcsd.c",line 6014,column 4,is_stmt
        CMP *SP(#2) == #1, TC1 ; |6014| 
        BCC $C$L385,!TC1 ; |6014| 
                                        ; branchcc occurs ; |6014| 
	.dwpsn	file "src/csl_mmcsd.c",line 6016,column 5,is_stmt
        MOV #2, AC0 ; |6016| 
        MOV AC0, dbl(*SP(#4)) ; |6016| 
	.dwpsn	file "src/csl_mmcsd.c",line 6017,column 4,is_stmt
        B $C$L386 ; |6017| 
                                        ; branch occurs ; |6017| 
$C$L385:    
	.dwpsn	file "src/csl_mmcsd.c",line 6020,column 5,is_stmt
        MOV #0, AC0 ; |6020| 
        MOV AC0, dbl(*SP(#4)) ; |6020| 
$C$L386:    
	.dwpsn	file "src/csl_mmcsd.c",line 6023,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |6023| 
        MOV *AR3, AR3 ; |6023| 
        MOV port(*AR3(T0)), AR1 ; |6023| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6023| 
        AND #0xffc0, AR1, AC0 ; |6023| 
        MOV AC0, port(*AR3(T0)) ; |6023| 
	.dwpsn	file "src/csl_mmcsd.c",line 6025,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |6025| 
        MOV #518, AC0 ; |6025| 
$C$DW$715	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$715, DW_AT_low_pc(0x00)
	.dwattr $C$DW$715, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$715, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6025| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6025| 
        MOV T0, *SP(#3) ; |6025| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6029,column 4,is_stmt

        MOV *SP(#3), AR1 ; |6029| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |6029| 
        BCC $C$L387,TC1 ; |6029| 
                                        ; branchcc occurs ; |6029| 

        MOV #-15, AR2
||      MOV *SP(#3), AR1 ; |6029| 

        CMP AR2 != AR1, TC1 ; |6029| 
        BCC $C$L388,TC1 ; |6029| 
                                        ; branchcc occurs ; |6029| 
$C$L387:    
	.dwpsn	file "src/csl_mmcsd.c",line 6032,column 5,is_stmt
        MOV *SP(#3), T0 ; |6032| 
        B $C$L392 ; |6032| 
                                        ; branch occurs ; |6032| 
$C$L388:    
	.dwpsn	file "src/csl_mmcsd.c",line 6036,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6036| 
        MOV port(*AR3), AR1 ; |6036| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2), AC0 ; |6036| 
        MOV *AR3, AR3 ; |6036| 
        SFTL AC0, #2, AC0 ; |6036| 
        AND #0x0004, AC0, AR2 ; |6036| 
        BCLR @#2, AR1 ; |6036| 
        OR AR1, AR2 ; |6036| 
        MOV AR2, port(*AR3) ; |6036| 
	.dwpsn	file "src/csl_mmcsd.c",line 6037,column 3,is_stmt
        B $C$L391 ; |6037| 
                                        ; branch occurs ; |6037| 
$C$L389:    
	.dwpsn	file "src/csl_mmcsd.c",line 6040,column 4,is_stmt
        MOV #-6, T0
        B $C$L392 ; |6040| 
                                        ; branch occurs ; |6040| 
$C$L390:    
	.dwpsn	file "src/csl_mmcsd.c",line 6045,column 3,is_stmt
        MOV #-5, T0
        B $C$L392 ; |6045| 
                                        ; branch occurs ; |6045| 
$C$L391:    
	.dwpsn	file "src/csl_mmcsd.c",line 6048,column 2,is_stmt
        MOV #0, T0
$C$L392:    
	.dwpsn	file "src/csl_mmcsd.c",line 6049,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$716	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$716, DW_AT_low_pc(0x00)
	.dwattr $C$DW$716, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$707, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$707, DW_AT_TI_end_line(0x17a1)
	.dwattr $C$DW$707, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$707

	.sect	".text"
	.global	_MMC_getCardStatus

$C$DW$717	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getCardStatus")
	.dwattr $C$DW$717, DW_AT_low_pc(_MMC_getCardStatus)
	.dwattr $C$DW$717, DW_AT_high_pc(0x00)
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_MMC_getCardStatus")
	.dwattr $C$DW$717, DW_AT_external
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$717, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$717, DW_AT_TI_begin_line(0x17d5)
	.dwattr $C$DW$717, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$717, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 6103,column 1,is_stmt,address _MMC_getCardStatus

	.dwfde $C$DW$CIE, _MMC_getCardStatus
$C$DW$718	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$718, DW_AT_location[DW_OP_reg17]
$C$DW$719	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pCardStatus")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_pCardStatus")
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$719, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getCardStatus                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getCardStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$720	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$720, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$721	.dwtag  DW_TAG_variable, DW_AT_name("pCardStatus")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_pCardStatus")
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$721, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$722	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$722, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$723	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$723, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6107,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |6107| 

        CMPU AC1 == AC0, TC1 ; |6107| 
        BCC $C$L396,TC1 ; |6107| 
                                        ; branchcc occurs ; |6107| 
	.dwpsn	file "src/csl_mmcsd.c",line 6109,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L395,AC0 == #0 ; |6109| 
                                        ; branchcc occurs ; |6109| 
	.dwpsn	file "src/csl_mmcsd.c",line 6112,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |6112| 
        MOV *AR3, AR3 ; |6112| 
        MOV #0, port(*AR3(T0)) ; |6112| 
	.dwpsn	file "src/csl_mmcsd.c",line 6113,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |6113| 
        MOV *AR3, AR3 ; |6113| 
        MOV #0, port(*AR3(T0)) ; |6113| 
	.dwpsn	file "src/csl_mmcsd.c",line 6114,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |6114| 
        MOV *AR3, AR3 ; |6114| 
        MOV port(*AR3(T0)), AR1 ; |6114| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6114| 
        AND #0xffc0, AR1, AC0 ; |6114| 
        MOV AC0, port(*AR3(T0)) ; |6114| 
	.dwpsn	file "src/csl_mmcsd.c",line 6116,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |6116| 
        MOV AC0, dbl(*SP(#6)) ; |6116| 
	.dwpsn	file "src/csl_mmcsd.c",line 6117,column 4,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |6117| 
        SFTL AC0, #16, AC0 ; |6117| 
        MOV AC0, dbl(*SP(#6)) ; |6117| 
	.dwpsn	file "src/csl_mmcsd.c",line 6118,column 4,is_stmt
        MOV #525, AC0 ; |6118| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC1 ; |6118| 
$C$DW$724	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$724, DW_AT_low_pc(0x00)
	.dwattr $C$DW$724, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$724, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6118| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6118| 
        MOV T0, *SP(#4) ; |6118| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6122,column 4,is_stmt

        MOV *SP(#4), AR1 ; |6122| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |6122| 
        BCC $C$L393,TC1 ; |6122| 
                                        ; branchcc occurs ; |6122| 

        MOV #-15, AR2
||      MOV *SP(#4), AR1 ; |6122| 

        CMP AR2 != AR1, TC1 ; |6122| 
        BCC $C$L394,TC1 ; |6122| 
                                        ; branchcc occurs ; |6122| 
$C$L393:    
	.dwpsn	file "src/csl_mmcsd.c",line 6125,column 5,is_stmt
        MOV *SP(#4), T0 ; |6125| 
        B $C$L398 ; |6125| 
                                        ; branch occurs ; |6125| 
$C$L394:    
	.dwpsn	file "src/csl_mmcsd.c",line 6129,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |6129| 
        MOV *AR3, AR3 ; |6129| 
        MOV uns(port(*AR3(T0))), AC0 ; |6129| 
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |6129| 
	.dwpsn	file "src/csl_mmcsd.c",line 6130,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), AC1 ; |6130| 
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |6130| 
        MOV *AR3, AR3 ; |6130| 
        MOV uns(port(*AR3(T0))), AC0 ; |6130| 
        MOV dbl(*SP(#2)), XAR3
        OR AC1 << #16, AC0 ; |6130| 
        MOV AC0, dbl(*AR3) ; |6130| 
	.dwpsn	file "src/csl_mmcsd.c",line 6132,column 3,is_stmt
        B $C$L397 ; |6132| 
                                        ; branch occurs ; |6132| 
$C$L395:    
	.dwpsn	file "src/csl_mmcsd.c",line 6135,column 4,is_stmt
        MOV #-6, T0
        B $C$L398 ; |6135| 
                                        ; branch occurs ; |6135| 
$C$L396:    
	.dwpsn	file "src/csl_mmcsd.c",line 6140,column 3,is_stmt
        MOV #-5, T0
        B $C$L398 ; |6140| 
                                        ; branch occurs ; |6140| 
$C$L397:    
	.dwpsn	file "src/csl_mmcsd.c",line 6143,column 2,is_stmt
        MOV #0, T0
$C$L398:    
	.dwpsn	file "src/csl_mmcsd.c",line 6144,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$725	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$725, DW_AT_low_pc(0x00)
	.dwattr $C$DW$725, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$717, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$717, DW_AT_TI_end_line(0x1800)
	.dwattr $C$DW$717, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$717

	.sect	".text"
	.global	_SD_configurePullup

$C$DW$726	.dwtag  DW_TAG_subprogram, DW_AT_name("SD_configurePullup")
	.dwattr $C$DW$726, DW_AT_low_pc(_SD_configurePullup)
	.dwattr $C$DW$726, DW_AT_high_pc(0x00)
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_SD_configurePullup")
	.dwattr $C$DW$726, DW_AT_external
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$726, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$726, DW_AT_TI_begin_line(0x1839)
	.dwattr $C$DW$726, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$726, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 6203,column 1,is_stmt,address _SD_configurePullup

	.dwfde $C$DW$CIE, _SD_configurePullup
$C$DW$727	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$727, DW_AT_location[DW_OP_reg17]
$C$DW$728	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pullupCfg")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_pullupCfg")
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$728, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SD_configurePullup                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SD_configurePullup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$729	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$729, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$730	.dwtag  DW_TAG_variable, DW_AT_name("pullupCfg")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_pullupCfg")
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$730, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$731	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$731, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$732	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$732, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |6203| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6207,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L404,AC0 == #0 ; |6207| 
                                        ; branchcc occurs ; |6207| 
	.dwpsn	file "src/csl_mmcsd.c",line 6209,column 3,is_stmt
        MOV *SP(#2), AR1 ; |6209| 
        BCC $C$L399,AR1 == #0 ; |6209| 
                                        ; branchcc occurs ; |6209| 
        CMP *SP(#2) == #1, TC1 ; |6209| 
        BCC $C$L403,!TC1 ; |6209| 
                                        ; branchcc occurs ; |6209| 
$C$L399:    
	.dwpsn	file "src/csl_mmcsd.c",line 6212,column 4,is_stmt
        MOV #80, T0 ; |6212| 
        MOV *AR3, AR3 ; |6212| 
        MOV port(*AR3(T0)), AR1 ; |6212| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6212| 
        AND #0xffc0, AR1, AC0 ; |6212| 
        MOV AC0, port(*AR3(T0)) ; |6212| 
	.dwpsn	file "src/csl_mmcsd.c",line 6214,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV uns(*AR3), AC0 ; |6214| 
        MOV AC0, dbl(*SP(#4)) ; |6214| 
	.dwpsn	file "src/csl_mmcsd.c",line 6215,column 4,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |6215| 
        SFTL AC0, #16, AC0 ; |6215| 
        MOV AC0, dbl(*SP(#4)) ; |6215| 
	.dwpsn	file "src/csl_mmcsd.c",line 6216,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |6216| 
        MOV #567, AC0 ; |6216| 
$C$DW$733	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$733, DW_AT_low_pc(0x00)
	.dwattr $C$DW$733, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$733, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6216| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6216| 
        MOV T0, *SP(#3) ; |6216| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6220,column 4,is_stmt

        MOV *SP(#3), AR1 ; |6220| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |6220| 
        BCC $C$L400,TC1 ; |6220| 
                                        ; branchcc occurs ; |6220| 

        MOV #-15, AR2
||      MOV *SP(#3), AR1 ; |6220| 

        CMP AR2 != AR1, TC1 ; |6220| 
        BCC $C$L401,TC1 ; |6220| 
                                        ; branchcc occurs ; |6220| 
$C$L400:    
	.dwpsn	file "src/csl_mmcsd.c",line 6223,column 5,is_stmt
        MOV *SP(#3), T0 ; |6223| 
        B $C$L406 ; |6223| 
                                        ; branch occurs ; |6223| 
$C$L401:    
	.dwpsn	file "src/csl_mmcsd.c",line 6227,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #80, T0 ; |6227| 
        MOV *AR3, AR3 ; |6227| 
        MOV port(*AR3(T0)), AR1 ; |6227| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6227| 
        AND #0xffc0, AR1, AC0 ; |6227| 
        MOV AC0, port(*AR3(T0)) ; |6227| 
	.dwpsn	file "src/csl_mmcsd.c",line 6229,column 4,is_stmt
        MOV uns(*SP(#2)), AC0 ; |6229| 
        MOV AC0, dbl(*SP(#4)) ; |6229| 
	.dwpsn	file "src/csl_mmcsd.c",line 6230,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC1 ; |6230| 
        MOV #554, AC0 ; |6230| 
$C$DW$734	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$734, DW_AT_low_pc(0x00)
	.dwattr $C$DW$734, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$734, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6230| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6230| 
        MOV T0, *SP(#3) ; |6230| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6234,column 4,is_stmt

        MOV *SP(#3), AR1 ; |6234| 
||      MOV #-10, AR2

        CMP AR2 == AR1, TC1 ; |6234| 
        BCC $C$L402,TC1 ; |6234| 
                                        ; branchcc occurs ; |6234| 

        MOV #-15, AR2
||      MOV *SP(#3), AR1 ; |6234| 

        CMP AR2 != AR1, TC1 ; |6234| 
        BCC $C$L405,TC1 ; |6234| 
                                        ; branchcc occurs ; |6234| 
$C$L402:    
	.dwpsn	file "src/csl_mmcsd.c",line 6237,column 5,is_stmt
        MOV *SP(#3), T0 ; |6237| 
        B $C$L406 ; |6237| 
                                        ; branch occurs ; |6237| 
$C$L403:    
	.dwpsn	file "src/csl_mmcsd.c",line 6242,column 4,is_stmt
        MOV #-6, T0
        B $C$L406 ; |6242| 
                                        ; branch occurs ; |6242| 
$C$L404:    
	.dwpsn	file "src/csl_mmcsd.c",line 6247,column 3,is_stmt
        MOV #-5, T0
        B $C$L406 ; |6247| 
                                        ; branch occurs ; |6247| 
$C$L405:    
	.dwpsn	file "src/csl_mmcsd.c",line 6250,column 2,is_stmt
        MOV #0, T0
$C$L406:    
	.dwpsn	file "src/csl_mmcsd.c",line 6251,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$735	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$735, DW_AT_low_pc(0x00)
	.dwattr $C$DW$735, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$726, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$726, DW_AT_TI_end_line(0x186b)
	.dwattr $C$DW$726, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$726

	.sect	".text"
	.global	_MMC_checkReadDmaDone

$C$DW$736	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_checkReadDmaDone")
	.dwattr $C$DW$736, DW_AT_low_pc(_MMC_checkReadDmaDone)
	.dwattr $C$DW$736, DW_AT_high_pc(0x00)
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_MMC_checkReadDmaDone")
	.dwattr $C$DW$736, DW_AT_external
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$736, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$736, DW_AT_TI_begin_line(0x186e)
	.dwattr $C$DW$736, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$736, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 6255,column 1,is_stmt,address _MMC_checkReadDmaDone

	.dwfde $C$DW$CIE, _MMC_checkReadDmaDone
$C$DW$737	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcSd")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$737, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_checkReadDmaDone                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_checkReadDmaDone:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$738	.dwtag  DW_TAG_variable, DW_AT_name("hMmcSd")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_hMmcSd")
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$738, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$739	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$739, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$740	.dwtag  DW_TAG_variable, DW_AT_name("myHandle")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_myHandle")
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$740, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$741	.dwtag  DW_TAG_variable, DW_AT_name("dmaStatus")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_dmaStatus")
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$741, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6257,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_mmcsd.c",line 6260,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L412,AC0 != #0 ; |6260| 
                                        ; branchcc occurs ; |6260| 
	.dwpsn	file "src/csl_mmcsd.c",line 6262,column 3,is_stmt
        MOV #-5, *SP(#2) ; |6262| 
	.dwpsn	file "src/csl_mmcsd.c",line 6263,column 2,is_stmt
        B $C$L414 ; |6263| 
                                        ; branch occurs ; |6263| 
$C$L407:    
$C$DW$L$_MMC_checkReadDmaDone$4$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6286,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#12)), XAR3
        MOV *AR3, AR3 ; |6286| 
        MOV port(*AR3(short(#5))), AR1 ; |6286| 
        AND #0x4000, AR1, AC0 ; |6286| 
        SFTS AC0, #-14, AC0 ; |6286| 
        MOV AC0, *SP(#6) ; |6286| 
	.dwpsn	file "src/csl_mmcsd.c",line 6287,column 10,is_stmt
        B $C$L413 ; |6287| 
                                        ; branch occurs ; |6287| 
$C$DW$L$_MMC_checkReadDmaDone$4$E:
$C$L408:    
$C$DW$L$_MMC_checkReadDmaDone$5$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6289,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#12)), XAR3
        MOV #37, T0 ; |6289| 
        MOV *AR3, AR3 ; |6289| 
        MOV port(*AR3(T0)), AR1 ; |6289| 
        AND #0x4000, AR1, AC0 ; |6289| 
        SFTS AC0, #-14, AC0 ; |6289| 
        MOV AC0, *SP(#6) ; |6289| 
	.dwpsn	file "src/csl_mmcsd.c",line 6290,column 10,is_stmt
        B $C$L413 ; |6290| 
                                        ; branch occurs ; |6290| 
$C$DW$L$_MMC_checkReadDmaDone$5$E:
$C$L409:    
$C$DW$L$_MMC_checkReadDmaDone$6$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6292,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#12)), XAR3
        MOV #69, T0 ; |6292| 
        MOV *AR3, AR3 ; |6292| 
        MOV port(*AR3(T0)), AR1 ; |6292| 
        AND #0x4000, AR1, AC0 ; |6292| 
        SFTS AC0, #-14, AC0 ; |6292| 
        MOV AC0, *SP(#6) ; |6292| 
	.dwpsn	file "src/csl_mmcsd.c",line 6293,column 10,is_stmt
        B $C$L413 ; |6293| 
                                        ; branch occurs ; |6293| 
$C$DW$L$_MMC_checkReadDmaDone$6$E:
$C$L410:    
$C$DW$L$_MMC_checkReadDmaDone$7$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6295,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#12)), XAR3
        MOV #101, T0 ; |6295| 
        MOV *AR3, AR3 ; |6295| 
        MOV port(*AR3(T0)), AR1 ; |6295| 
        AND #0x4000, AR1, AC0 ; |6295| 
        SFTS AC0, #-14, AC0 ; |6295| 
        MOV AC0, *SP(#6) ; |6295| 
	.dwpsn	file "src/csl_mmcsd.c",line 6296,column 10,is_stmt
        B $C$L413 ; |6296| 
                                        ; branch occurs ; |6296| 
$C$DW$L$_MMC_checkReadDmaDone$7$E:
$C$L411:    
$C$DW$L$_MMC_checkReadDmaDone$8$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6299,column 5,is_stmt
        MOV #0, *SP(#6) ; |6299| 
        B $C$L413 ; |6299| 
                                        ; branch occurs ; |6299| 
$C$DW$L$_MMC_checkReadDmaDone$8$E:
$C$L412:    
$C$DW$L$_MMC_checkReadDmaDone$9$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6269,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#12)), XAR3
        MOV *AR3(short(#1)), AR1 ; |6269| 
        BCC $C$L407,AR1 == #0 ; |6269| 
                                        ; branchcc occurs ; |6269| 
$C$DW$L$_MMC_checkReadDmaDone$9$E:
$C$DW$L$_MMC_checkReadDmaDone$10$B:
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |6269| 
        BCC $C$L408,TC1 ; |6269| 
                                        ; branchcc occurs ; |6269| 
$C$DW$L$_MMC_checkReadDmaDone$10$E:
$C$DW$L$_MMC_checkReadDmaDone$11$B:
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |6269| 
        BCC $C$L409,TC1 ; |6269| 
                                        ; branchcc occurs ; |6269| 
$C$DW$L$_MMC_checkReadDmaDone$11$E:
$C$DW$L$_MMC_checkReadDmaDone$12$B:
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |6269| 
        BCC $C$L410,TC1 ; |6269| 
                                        ; branchcc occurs ; |6269| 
$C$DW$L$_MMC_checkReadDmaDone$12$E:
$C$DW$L$_MMC_checkReadDmaDone$13$B:
        B $C$L411 ; |6269| 
                                        ; branch occurs ; |6269| 
$C$DW$L$_MMC_checkReadDmaDone$13$E:
$C$L413:    
$C$DW$L$_MMC_checkReadDmaDone$14$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6301,column 3,is_stmt
        MOV *SP(#6), AR1 ; |6301| 
        BCC $C$L412,AR1 != #0 ; |6301| 
                                        ; branchcc occurs ; |6301| 
$C$DW$L$_MMC_checkReadDmaDone$14$E:
	.dwpsn	file "src/csl_mmcsd.c",line 6302,column 3,is_stmt
        MOV #0, *SP(#2) ; |6302| 
$C$L414:    
	.dwpsn	file "src/csl_mmcsd.c",line 6305,column 2,is_stmt
        MOV *SP(#2), T0 ; |6305| 
	.dwpsn	file "src/csl_mmcsd.c",line 6306,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$742	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$742, DW_AT_low_pc(0x00)
	.dwattr $C$DW$742, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$743	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$743, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L412:1:1714639441")
	.dwattr $C$DW$743, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$743, DW_AT_TI_begin_line(0x187d)
	.dwattr $C$DW$743, DW_AT_TI_end_line(0x189d)
$C$DW$744	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$744, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$9$B)
	.dwattr $C$DW$744, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$9$E)
$C$DW$745	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$745, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$13$B)
	.dwattr $C$DW$745, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$13$E)
$C$DW$746	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$746, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$12$B)
	.dwattr $C$DW$746, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$12$E)
$C$DW$747	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$747, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$11$B)
	.dwattr $C$DW$747, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$11$E)
$C$DW$748	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$748, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$10$B)
	.dwattr $C$DW$748, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$10$E)
$C$DW$749	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$749, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$4$B)
	.dwattr $C$DW$749, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$4$E)
$C$DW$750	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$750, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$5$B)
	.dwattr $C$DW$750, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$5$E)
$C$DW$751	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$751, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$6$B)
	.dwattr $C$DW$751, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$6$E)
$C$DW$752	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$752, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$7$B)
	.dwattr $C$DW$752, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$7$E)
$C$DW$753	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$753, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$8$B)
	.dwattr $C$DW$753, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$8$E)
$C$DW$754	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$754, DW_AT_low_pc($C$DW$L$_MMC_checkReadDmaDone$14$B)
	.dwattr $C$DW$754, DW_AT_high_pc($C$DW$L$_MMC_checkReadDmaDone$14$E)
	.dwendtag $C$DW$743

	.dwattr $C$DW$736, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$736, DW_AT_TI_end_line(0x18a2)
	.dwattr $C$DW$736, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$736

	.sect	".text"
	.global	_MMC_enableBootPartitionAccess

$C$DW$755	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_enableBootPartitionAccess")
	.dwattr $C$DW$755, DW_AT_low_pc(_MMC_enableBootPartitionAccess)
	.dwattr $C$DW$755, DW_AT_high_pc(0x00)
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_MMC_enableBootPartitionAccess")
	.dwattr $C$DW$755, DW_AT_external
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$755, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$755, DW_AT_TI_begin_line(0x18ba)
	.dwattr $C$DW$755, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$755, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 6332,column 1,is_stmt,address _MMC_enableBootPartitionAccess

	.dwfde $C$DW$CIE, _MMC_enableBootPartitionAccess
$C$DW$756	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$756, DW_AT_location[DW_OP_reg17]
$C$DW$757	.dwtag  DW_TAG_formal_parameter, DW_AT_name("partition")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_partition")
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$757, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_enableBootPartitionAccess                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_enableBootPartitionAccess:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$758	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$758, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$759	.dwtag  DW_TAG_variable, DW_AT_name("partition")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_partition")
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$759, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$760	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$760, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$761	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$761, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$762	.dwtag  DW_TAG_variable, DW_AT_name("bootCfg")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_bootCfg")
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#2) ; |6332| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6337,column 2,is_stmt
        MOV #-1, *SP(#3) ; |6337| 
	.dwpsn	file "src/csl_mmcsd.c",line 6339,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6339| 
        BCC $C$L416,TC1 ; |6339| 
                                        ; branchcc occurs ; |6339| 
        CMP *SP(#2) == #1, TC1 ; |6339| 
        BCC $C$L415,TC1 ; |6339| 
                                        ; branchcc occurs ; |6339| 
        CMP *SP(#2) == #2, TC1 ; |6339| 
        BCC $C$L416,!TC1 ; |6339| 
                                        ; branchcc occurs ; |6339| 
$C$L415:    
	.dwpsn	file "src/csl_mmcsd.c",line 6342,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMOV #_mmcsdCardExtCSD, XAR1 ; |6342| 
$C$DW$763	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$763, DW_AT_low_pc(0x00)
	.dwattr $C$DW$763, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$763, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |6342| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |6342| 
        MOV T0, *SP(#3) ; |6342| 
	.dwpsn	file "src/csl_mmcsd.c",line 6343,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L416,AR1 != #0 ; |6343| 
                                        ; branchcc occurs ; |6343| 
	.dwpsn	file "src/csl_mmcsd.c",line 6346,column 4,is_stmt
        MOV uns(low_byte(*(#(_mmcsdCardExtCSD+33)))), AR1 ; |6346| 
        MOV AR1, *SP(#6) ; |6346| 
	.dwpsn	file "src/csl_mmcsd.c",line 6348,column 4,is_stmt
        AND #0xfff8, *SP(#6) ; |6348| 
	.dwpsn	file "src/csl_mmcsd.c",line 6350,column 4,is_stmt
        MOV *SP(#2), AR1 ; |6350| 
        OR *SP(#6), AR1, AR1 ; |6350| 
        MOV AR1, *SP(#6) ; |6350| 
	.dwpsn	file "src/csl_mmcsd.c",line 6353,column 4,is_stmt
        MOV AR1, AC0
        SFTL AC0, #8, AC0 ; |6353| 
        AND #0xffff, AC0, AC1 ; |6353| 
        MOV #947 << #16, AC0 ; |6353| 
        OR AC1, AC0 ; |6353| 
        MOV AC0, dbl(*SP(#4)) ; |6353| 
	.dwpsn	file "src/csl_mmcsd.c",line 6355,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |6355| 
$C$DW$764	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$764, DW_AT_low_pc(0x00)
	.dwattr $C$DW$764, DW_AT_name("_MMC_sendSwitchCmd")
	.dwattr $C$DW$764, DW_AT_TI_call
        CALL #_MMC_sendSwitchCmd ; |6355| 
                                        ; call occurs [#_MMC_sendSwitchCmd] ; |6355| 
        MOV T0, *SP(#3) ; |6355| 
$C$L416:    
	.dwpsn	file "src/csl_mmcsd.c",line 6359,column 2,is_stmt
        MOV *SP(#3), T0 ; |6359| 
	.dwpsn	file "src/csl_mmcsd.c",line 6360,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$765	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$765, DW_AT_low_pc(0x00)
	.dwattr $C$DW$765, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$755, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$755, DW_AT_TI_end_line(0x18d8)
	.dwattr $C$DW$755, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$755

	.sect	".text"
	.global	_MMC_disableBootPartitionAccess

$C$DW$766	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_disableBootPartitionAccess")
	.dwattr $C$DW$766, DW_AT_low_pc(_MMC_disableBootPartitionAccess)
	.dwattr $C$DW$766, DW_AT_high_pc(0x00)
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_MMC_disableBootPartitionAccess")
	.dwattr $C$DW$766, DW_AT_external
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$766, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$766, DW_AT_TI_begin_line(0x18e7)
	.dwattr $C$DW$766, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$766, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 6376,column 1,is_stmt,address _MMC_disableBootPartitionAccess

	.dwfde $C$DW$CIE, _MMC_disableBootPartitionAccess
$C$DW$767	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$767, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_disableBootPartitionAccess                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_disableBootPartitionAccess:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$768	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$768, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$769	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$769, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$770	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$770, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$771	.dwtag  DW_TAG_variable, DW_AT_name("bootCfg")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_bootCfg")
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6381,column 2,is_stmt
        MOV #-1, *SP(#2) ; |6381| 
	.dwpsn	file "src/csl_mmcsd.c",line 6383,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6383| 
        BCC $C$L417,TC1 ; |6383| 
                                        ; branchcc occurs ; |6383| 
	.dwpsn	file "src/csl_mmcsd.c",line 6385,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMOV #_mmcsdCardExtCSD, XAR1 ; |6385| 
$C$DW$772	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$772, DW_AT_low_pc(0x00)
	.dwattr $C$DW$772, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$772, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |6385| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |6385| 
        MOV T0, *SP(#2) ; |6385| 
	.dwpsn	file "src/csl_mmcsd.c",line 6386,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L417,AR1 != #0 ; |6386| 
                                        ; branchcc occurs ; |6386| 
	.dwpsn	file "src/csl_mmcsd.c",line 6389,column 4,is_stmt
        MOV uns(low_byte(*(#(_mmcsdCardExtCSD+33)))), AR1 ; |6389| 
        MOV AR1, *SP(#6) ; |6389| 
	.dwpsn	file "src/csl_mmcsd.c",line 6391,column 4,is_stmt
        AND #0xfff8, *SP(#6) ; |6391| 
	.dwpsn	file "src/csl_mmcsd.c",line 6394,column 4,is_stmt
        MOV *SP(#6), AC0 ; |6394| 
        SFTL AC0, #8, AC0 ; |6394| 
        AND #0xffff, AC0, AC1 ; |6394| 
        MOV #947 << #16, AC0 ; |6394| 
        OR AC1, AC0 ; |6394| 
        MOV AC0, dbl(*SP(#4)) ; |6394| 
	.dwpsn	file "src/csl_mmcsd.c",line 6396,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |6396| 
$C$DW$773	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$773, DW_AT_low_pc(0x00)
	.dwattr $C$DW$773, DW_AT_name("_MMC_sendSwitchCmd")
	.dwattr $C$DW$773, DW_AT_TI_call
        CALL #_MMC_sendSwitchCmd ; |6396| 
                                        ; call occurs [#_MMC_sendSwitchCmd] ; |6396| 
        MOV T0, *SP(#2) ; |6396| 
$C$L417:    
	.dwpsn	file "src/csl_mmcsd.c",line 6400,column 2,is_stmt
        MOV *SP(#2), T0 ; |6400| 
	.dwpsn	file "src/csl_mmcsd.c",line 6401,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$774	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$774, DW_AT_low_pc(0x00)
	.dwattr $C$DW$774, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$766, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$766, DW_AT_TI_end_line(0x1901)
	.dwattr $C$DW$766, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$766

	.sect	".text"
	.global	_MMC_bootPartitionEnable

$C$DW$775	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_bootPartitionEnable")
	.dwattr $C$DW$775, DW_AT_low_pc(_MMC_bootPartitionEnable)
	.dwattr $C$DW$775, DW_AT_high_pc(0x00)
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_MMC_bootPartitionEnable")
	.dwattr $C$DW$775, DW_AT_external
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$775, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$775, DW_AT_TI_begin_line(0x1916)
	.dwattr $C$DW$775, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$775, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_mmcsd.c",line 6425,column 1,is_stmt,address _MMC_bootPartitionEnable

	.dwfde $C$DW$CIE, _MMC_bootPartitionEnable
$C$DW$776	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$776, DW_AT_location[DW_OP_reg17]
$C$DW$777	.dwtag  DW_TAG_formal_parameter, DW_AT_name("partition")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_partition")
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$777, DW_AT_location[DW_OP_reg12]
$C$DW$778	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bootAck")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_bootAck")
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$778, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MMC_bootPartitionEnable                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_bootPartitionEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$779	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$779, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$780	.dwtag  DW_TAG_variable, DW_AT_name("partition")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_partition")
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$780, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$781	.dwtag  DW_TAG_variable, DW_AT_name("bootAck")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_bootAck")
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$781, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$782	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$782, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$783	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$783, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$784	.dwtag  DW_TAG_variable, DW_AT_name("bootCfg")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_bootCfg")
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T1, *SP(#3) ; |6425| 
        MOV T0, *SP(#2) ; |6425| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6430,column 2,is_stmt
        MOV #-1, *SP(#4) ; |6430| 
	.dwpsn	file "src/csl_mmcsd.c",line 6432,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6432| 
        BCC $C$L419,TC1 ; |6432| 
                                        ; branchcc occurs ; |6432| 
        CMP *SP(#2) == #1, TC1 ; |6432| 
        BCC $C$L418,TC1 ; |6432| 
                                        ; branchcc occurs ; |6432| 
        CMP *SP(#2) == #2, TC1 ; |6432| 
        BCC $C$L419,!TC1 ; |6432| 
                                        ; branchcc occurs ; |6432| 
$C$L418:    
	.dwpsn	file "src/csl_mmcsd.c",line 6435,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMOV #_mmcsdCardExtCSD, XAR1 ; |6435| 
$C$DW$785	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$785, DW_AT_low_pc(0x00)
	.dwattr $C$DW$785, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$785, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |6435| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |6435| 
        MOV T0, *SP(#4) ; |6435| 
	.dwpsn	file "src/csl_mmcsd.c",line 6436,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L419,AR1 != #0 ; |6436| 
                                        ; branchcc occurs ; |6436| 
	.dwpsn	file "src/csl_mmcsd.c",line 6439,column 4,is_stmt
        MOV uns(low_byte(*(#(_mmcsdCardExtCSD+33)))), AR1 ; |6439| 
        MOV AR1, *SP(#8) ; |6439| 
	.dwpsn	file "src/csl_mmcsd.c",line 6441,column 4,is_stmt
        AND #0xff87, *SP(#8) ; |6441| 
	.dwpsn	file "src/csl_mmcsd.c",line 6443,column 4,is_stmt
        MOV *SP(#8), AC0 ; |6443| 
        MOV *SP(#2), AC1 ; |6443| 

        MOV *SP(#3), AC1 ; |6443| 
||      OR AC1 << #3, AC0 ; |6443| 

        OR AC1 << #6, AC0 ; |6443| 
        MOV AC0, *SP(#8) ; |6443| 
	.dwpsn	file "src/csl_mmcsd.c",line 6446,column 4,is_stmt
        SFTL AC0, #8, AC0 ; |6446| 
        AND #0xffff, AC0, AC1 ; |6446| 
        MOV #947 << #16, AC0 ; |6446| 
        OR AC1, AC0 ; |6446| 
        MOV AC0, dbl(*SP(#6)) ; |6446| 
	.dwpsn	file "src/csl_mmcsd.c",line 6448,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#6)), AC0 ; |6448| 
$C$DW$786	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$786, DW_AT_low_pc(0x00)
	.dwattr $C$DW$786, DW_AT_name("_MMC_sendSwitchCmd")
	.dwattr $C$DW$786, DW_AT_TI_call
        CALL #_MMC_sendSwitchCmd ; |6448| 
                                        ; call occurs [#_MMC_sendSwitchCmd] ; |6448| 
        MOV T0, *SP(#4) ; |6448| 
$C$L419:    
	.dwpsn	file "src/csl_mmcsd.c",line 6452,column 2,is_stmt
        MOV *SP(#4), T0 ; |6452| 
	.dwpsn	file "src/csl_mmcsd.c",line 6453,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$787	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$787, DW_AT_low_pc(0x00)
	.dwattr $C$DW$787, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$775, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$775, DW_AT_TI_end_line(0x1935)
	.dwattr $C$DW$775, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$775

	.sect	".text"
	.global	_MMC_bootPartitionDisable

$C$DW$788	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_bootPartitionDisable")
	.dwattr $C$DW$788, DW_AT_low_pc(_MMC_bootPartitionDisable)
	.dwattr $C$DW$788, DW_AT_high_pc(0x00)
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_MMC_bootPartitionDisable")
	.dwattr $C$DW$788, DW_AT_external
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$788, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$788, DW_AT_TI_begin_line(0x1943)
	.dwattr $C$DW$788, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$788, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_mmcsd.c",line 6468,column 1,is_stmt,address _MMC_bootPartitionDisable

	.dwfde $C$DW$CIE, _MMC_bootPartitionDisable
$C$DW$789	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$789, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_bootPartitionDisable                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_bootPartitionDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$790	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$790, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$791	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$791, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$792	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$792, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$793	.dwtag  DW_TAG_variable, DW_AT_name("bootCfg")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_bootCfg")
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6473,column 2,is_stmt
        MOV #-1, *SP(#2) ; |6473| 
	.dwpsn	file "src/csl_mmcsd.c",line 6475,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6475| 
        BCC $C$L420,TC1 ; |6475| 
                                        ; branchcc occurs ; |6475| 
	.dwpsn	file "src/csl_mmcsd.c",line 6477,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        AMOV #_mmcsdCardExtCSD, XAR1 ; |6477| 
$C$DW$794	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$794, DW_AT_low_pc(0x00)
	.dwattr $C$DW$794, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$794, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |6477| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |6477| 
        MOV T0, *SP(#2) ; |6477| 
	.dwpsn	file "src/csl_mmcsd.c",line 6478,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L420,AR1 != #0 ; |6478| 
                                        ; branchcc occurs ; |6478| 
	.dwpsn	file "src/csl_mmcsd.c",line 6481,column 4,is_stmt
        MOV uns(low_byte(*(#(_mmcsdCardExtCSD+33)))), AR1 ; |6481| 
        MOV AR1, *SP(#6) ; |6481| 
	.dwpsn	file "src/csl_mmcsd.c",line 6483,column 4,is_stmt
        AND #0xff87, *SP(#6) ; |6483| 
	.dwpsn	file "src/csl_mmcsd.c",line 6486,column 4,is_stmt
        MOV *SP(#6), AC0 ; |6486| 
        SFTL AC0, #8, AC0 ; |6486| 
        AND #0xffff, AC0, AC1 ; |6486| 
        MOV #947 << #16, AC0 ; |6486| 
        OR AC1, AC0 ; |6486| 
        MOV AC0, dbl(*SP(#4)) ; |6486| 
	.dwpsn	file "src/csl_mmcsd.c",line 6488,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |6488| 
$C$DW$795	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$795, DW_AT_low_pc(0x00)
	.dwattr $C$DW$795, DW_AT_name("_MMC_sendSwitchCmd")
	.dwattr $C$DW$795, DW_AT_TI_call
        CALL #_MMC_sendSwitchCmd ; |6488| 
                                        ; call occurs [#_MMC_sendSwitchCmd] ; |6488| 
        MOV T0, *SP(#2) ; |6488| 
$C$L420:    
	.dwpsn	file "src/csl_mmcsd.c",line 6492,column 2,is_stmt
        MOV *SP(#2), T0 ; |6492| 
	.dwpsn	file "src/csl_mmcsd.c",line 6493,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$796	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$796, DW_AT_low_pc(0x00)
	.dwattr $C$DW$796, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$788, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$788, DW_AT_TI_end_line(0x195d)
	.dwattr $C$DW$788, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$788

	.sect	".text"
	.global	_MMC_sendSwitchCmd

$C$DW$797	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_sendSwitchCmd")
	.dwattr $C$DW$797, DW_AT_low_pc(_MMC_sendSwitchCmd)
	.dwattr $C$DW$797, DW_AT_high_pc(0x00)
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_MMC_sendSwitchCmd")
	.dwattr $C$DW$797, DW_AT_external
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$797, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$797, DW_AT_TI_begin_line(0x196a)
	.dwattr $C$DW$797, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$797, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_mmcsd.c",line 6508,column 1,is_stmt,address _MMC_sendSwitchCmd

	.dwfde $C$DW$CIE, _MMC_sendSwitchCmd
$C$DW$798	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$798, DW_AT_location[DW_OP_reg17]
$C$DW$799	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argument")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$799, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: MMC_sendSwitchCmd                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_sendSwitchCmd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$800	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$800, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$801	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$801, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$802	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$802, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$803	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$803, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV AC0, dbl(*SP(#2)) ; |6508| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6512,column 2,is_stmt
        MOV #0, *SP(#4) ; |6512| 
	.dwpsn	file "src/csl_mmcsd.c",line 6514,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6514| 
        BCC $C$L421,TC1 ; |6514| 
                                        ; branchcc occurs ; |6514| 
	.dwpsn	file "src/csl_mmcsd.c",line 6517,column 3,is_stmt
        MOV #1, *SP(#7) ; |6517| 
	.dwpsn	file "src/csl_mmcsd.c",line 6518,column 3,is_stmt
        MOV #0, *SP(#10) ; |6518| 
	.dwpsn	file "src/csl_mmcsd.c",line 6519,column 3,is_stmt
        MOV #1, *SP(#6) ; |6519| 
	.dwpsn	file "src/csl_mmcsd.c",line 6520,column 3,is_stmt
        MOV #6, *SP(#5) ; |6520| 
	.dwpsn	file "src/csl_mmcsd.c",line 6522,column 3,is_stmt
        AMAR *SP(#5), XAR1
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |6522| 
$C$DW$804	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$804, DW_AT_low_pc(0x00)
	.dwattr $C$DW$804, DW_AT_name("_sendCmd")
	.dwattr $C$DW$804, DW_AT_TI_call
        CALL #_sendCmd ; |6522| 
                                        ; call occurs [#_sendCmd] ; |6522| 
        MOV T0, *SP(#4) ; |6522| 
	.dwpsn	file "src/csl_mmcsd.c",line 6523,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L422,AR1 == #0 ; |6523| 
                                        ; branchcc occurs ; |6523| 
	.dwpsn	file "src/csl_mmcsd.c",line 6525,column 4,is_stmt
        B $C$L423 ; |6525| 
                                        ; branch occurs ; |6525| 
$C$L421:    
	.dwpsn	file "src/csl_mmcsd.c",line 6530,column 3,is_stmt
        MOV #-1, *SP(#4) ; |6530| 
$C$L422:    
	.dwpsn	file "src/csl_mmcsd.c",line 6533,column 5,is_stmt
        MOV *SP(#4), T0 ; |6533| 
$C$L423:    
	.dwpsn	file "src/csl_mmcsd.c",line 6534,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$805	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$805, DW_AT_low_pc(0x00)
	.dwattr $C$DW$805, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$797, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$797, DW_AT_TI_end_line(0x1986)
	.dwattr $C$DW$797, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$797

	.sect	".text"
	.global	_MMC_enableBootMode

$C$DW$806	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_enableBootMode")
	.dwattr $C$DW$806, DW_AT_low_pc(_MMC_enableBootMode)
	.dwattr $C$DW$806, DW_AT_high_pc(0x00)
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_MMC_enableBootMode")
	.dwattr $C$DW$806, DW_AT_external
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$806, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$806, DW_AT_TI_begin_line(0x1992)
	.dwattr $C$DW$806, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$806, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_mmcsd.c",line 6547,column 1,is_stmt,address _MMC_enableBootMode

	.dwfde $C$DW$CIE, _MMC_enableBootMode
$C$DW$807	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$807, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_enableBootMode                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_enableBootMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$808	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$808, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$809	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$809, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$810	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$810, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$811	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$811, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6552,column 2,is_stmt
        MOV #0, *SP(#4) ; |6552| 
	.dwpsn	file "src/csl_mmcsd.c",line 6555,column 2,is_stmt
        MOV #0, *SP(#7) ; |6555| 
	.dwpsn	file "src/csl_mmcsd.c",line 6557,column 2,is_stmt
        MOV #0, *SP(#10) ; |6557| 
	.dwpsn	file "src/csl_mmcsd.c",line 6558,column 2,is_stmt
        MOV #0, *SP(#6) ; |6558| 
	.dwpsn	file "src/csl_mmcsd.c",line 6559,column 2,is_stmt
        MOV #0, *SP(#5) ; |6559| 
	.dwpsn	file "src/csl_mmcsd.c",line 6560,column 2,is_stmt
        MOV #-1 << #16, AC0 ; |6560| 
        OR #0xfffa, AC0, AC0 ; |6560| 
        MOV AC0, dbl(*SP(#2)) ; |6560| 
	.dwpsn	file "src/csl_mmcsd.c",line 6562,column 2,is_stmt
        AMAR *SP(#5), XAR1
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), AC0 ; |6562| 
$C$DW$812	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$812, DW_AT_low_pc(0x00)
	.dwattr $C$DW$812, DW_AT_name("_sendCmd")
	.dwattr $C$DW$812, DW_AT_TI_call
        CALL #_sendCmd ; |6562| 
                                        ; call occurs [#_sendCmd] ; |6562| 
        MOV T0, *SP(#4) ; |6562| 
	.dwpsn	file "src/csl_mmcsd.c",line 6564,column 2,is_stmt
	.dwpsn	file "src/csl_mmcsd.c",line 6565,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$813	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$813, DW_AT_low_pc(0x00)
	.dwattr $C$DW$813, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$806, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$806, DW_AT_TI_end_line(0x19a5)
	.dwattr $C$DW$806, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$806

	.sect	".text"
	.global	_MMC_getBootPartitionSize

$C$DW$814	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getBootPartitionSize")
	.dwattr $C$DW$814, DW_AT_low_pc(_MMC_getBootPartitionSize)
	.dwattr $C$DW$814, DW_AT_high_pc(0x00)
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_MMC_getBootPartitionSize")
	.dwattr $C$DW$814, DW_AT_external
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$814, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$814, DW_AT_TI_begin_line(0x19b0)
	.dwattr $C$DW$814, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$814, DW_AT_TI_max_frame_size(0x2c)
	.dwpsn	file "src/csl_mmcsd.c",line 6577,column 1,is_stmt,address _MMC_getBootPartitionSize

	.dwfde $C$DW$CIE, _MMC_getBootPartitionSize
$C$DW$815	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$815, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_getBootPartitionSize                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 44 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (42 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_getBootPartitionSize:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-43, SP
	.dwcfi	cfa_offset, 44
$C$DW$816	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$816, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$817	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$817, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$818	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$818, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$819	.dwtag  DW_TAG_variable, DW_AT_name("mmcsdCardExtCSD")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_mmcsdCardExtCSD")
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$819, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6582,column 2,is_stmt
        MOV #0, AC0 ; |6582| 
        MOV AC0, dbl(*SP(#4)) ; |6582| 
	.dwpsn	file "src/csl_mmcsd.c",line 6584,column 2,is_stmt
        AMAR *SP(#6), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$820	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$820, DW_AT_low_pc(0x00)
	.dwattr $C$DW$820, DW_AT_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$820, DW_AT_TI_call
        CALL #_MMC_getCardExtCsd ; |6584| 
                                        ; call occurs [#_MMC_getCardExtCsd] ; |6584| 
        MOV T0, *SP(#2) ; |6584| 
	.dwpsn	file "src/csl_mmcsd.c",line 6585,column 2,is_stmt
        MOV T0, AR1
        BCC $C$L424,AR1 != #0 ; |6585| 
                                        ; branchcc occurs ; |6585| 
	.dwpsn	file "src/csl_mmcsd.c",line 6587,column 3,is_stmt
        AMOV #128000, XAR3 ; |6587| 
        MOV uns(*SP(#8)), AC0 ; |6587| 
        MOV XAR3, AC1
$C$DW$821	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$821, DW_AT_low_pc(0x00)
	.dwattr $C$DW$821, DW_AT_name("__mpyli")
	.dwattr $C$DW$821, DW_AT_TI_call
        CALL #__mpyli ; |6587| 
                                        ; call occurs [#__mpyli] ; |6587| 
        MOV AC0, dbl(*SP(#4)) ; |6587| 
$C$L424:    
	.dwpsn	file "src/csl_mmcsd.c",line 6590,column 2,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |6590| 
	.dwpsn	file "src/csl_mmcsd.c",line 6591,column 1,is_stmt
        AADD #43, SP
	.dwcfi	cfa_offset, 1
$C$DW$822	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$822, DW_AT_low_pc(0x00)
	.dwattr $C$DW$822, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$814, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$814, DW_AT_TI_end_line(0x19bf)
	.dwattr $C$DW$814, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$814

	.sect	".text"
	.global	_MMC_setBootBusWidth

$C$DW$823	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setBootBusWidth")
	.dwattr $C$DW$823, DW_AT_low_pc(_MMC_setBootBusWidth)
	.dwattr $C$DW$823, DW_AT_high_pc(0x00)
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_MMC_setBootBusWidth")
	.dwattr $C$DW$823, DW_AT_external
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$823, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$823, DW_AT_TI_begin_line(0x19d1)
	.dwattr $C$DW$823, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$823, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd.c",line 6612,column 1,is_stmt,address _MMC_setBootBusWidth

	.dwfde $C$DW$CIE, _MMC_setBootBusWidth
$C$DW$824	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$824, DW_AT_location[DW_OP_reg17]
$C$DW$825	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bootBusWidth")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_bootBusWidth")
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$825, DW_AT_location[DW_OP_reg12]
$C$DW$826	.dwtag  DW_TAG_formal_parameter, DW_AT_name("resetBusWidth")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_resetBusWidth")
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$826, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MMC_setBootBusWidth                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setBootBusWidth:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$827	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$827, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$828	.dwtag  DW_TAG_variable, DW_AT_name("bootBusWidth")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_bootBusWidth")
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$828, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$829	.dwtag  DW_TAG_variable, DW_AT_name("resetBusWidth")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_resetBusWidth")
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$829, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$830	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$830, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$831	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$831, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$832	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$832, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T1, *SP(#3) ; |6612| 
        MOV T0, *SP(#2) ; |6612| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6617,column 2,is_stmt
        MOV #0, *SP(#6) ; |6617| 
	.dwpsn	file "src/csl_mmcsd.c",line 6619,column 2,is_stmt
        MOV *SP(#2), AR1 ; |6619| 
        BCC $C$L425,AR1 == #0 ; |6619| 
                                        ; branchcc occurs ; |6619| 
        CMP *SP(#2) == #1, TC1 ; |6619| 
        BCC $C$L427,!TC1 ; |6619| 
                                        ; branchcc occurs ; |6619| 
$C$L425:    
        MOV *SP(#3), AR1 ; |6619| 
        BCC $C$L426,AR1 == #0 ; |6619| 
                                        ; branchcc occurs ; |6619| 
        CMP *SP(#3) == #1, TC1 ; |6619| 
        BCC $C$L427,!TC1 ; |6619| 
                                        ; branchcc occurs ; |6619| 
$C$L426:    
	.dwpsn	file "src/csl_mmcsd.c",line 6624,column 3,is_stmt
        MOV #1, *SP(#9) ; |6624| 
	.dwpsn	file "src/csl_mmcsd.c",line 6625,column 3,is_stmt
        MOV #0, *SP(#12) ; |6625| 
	.dwpsn	file "src/csl_mmcsd.c",line 6626,column 3,is_stmt
        MOV #1, *SP(#8) ; |6626| 
	.dwpsn	file "src/csl_mmcsd.c",line 6627,column 3,is_stmt
        MOV #6, *SP(#7) ; |6627| 
	.dwpsn	file "src/csl_mmcsd.c",line 6628,column 3,is_stmt
        MOV *SP(#2) << #8, AC0 ; |6628| 
        MOV mmap(AC0L), AC1 ; |6628| 
        MOV #945 << #16, AC0 ; |6628| 
        OR AC1, AC0 ; |6628| 
        MOV AC0, dbl(*SP(#4)) ; |6628| 
	.dwpsn	file "src/csl_mmcsd.c",line 6629,column 3,is_stmt
        MOV *SP(#3), AC0 ; |6629| 

        SFTL AC0, #10, AC0 ; |6629| 
||      MOV dbl(*SP(#4)), AC1 ; |6629| 

        AND #0xffff, AC0, AC0 ; |6629| 
        OR AC1, AC0 ; |6629| 
        MOV AC0, dbl(*SP(#4)) ; |6629| 
	.dwpsn	file "src/csl_mmcsd.c",line 6631,column 3,is_stmt
        AMAR *SP(#7), XAR1
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |6631| 
$C$DW$833	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$833, DW_AT_low_pc(0x00)
	.dwattr $C$DW$833, DW_AT_name("_sendCmd")
	.dwattr $C$DW$833, DW_AT_TI_call
        CALL #_sendCmd ; |6631| 
                                        ; call occurs [#_sendCmd] ; |6631| 
        MOV T0, *SP(#6) ; |6631| 
	.dwpsn	file "src/csl_mmcsd.c",line 6632,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L428,AR1 == #0 ; |6632| 
                                        ; branchcc occurs ; |6632| 
	.dwpsn	file "src/csl_mmcsd.c",line 6634,column 4,is_stmt
        B $C$L429 ; |6634| 
                                        ; branch occurs ; |6634| 
$C$L427:    
	.dwpsn	file "src/csl_mmcsd.c",line 6639,column 3,is_stmt
        MOV #-6, *SP(#6) ; |6639| 
$C$L428:    
	.dwpsn	file "src/csl_mmcsd.c",line 6642,column 2,is_stmt
        MOV *SP(#6), T0 ; |6642| 
$C$L429:    
	.dwpsn	file "src/csl_mmcsd.c",line 6643,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$834	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$834, DW_AT_low_pc(0x00)
	.dwattr $C$DW$834, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$823, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$823, DW_AT_TI_end_line(0x19f3)
	.dwattr $C$DW$823, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$823

	.sect	".text"
	.global	_MMC_getCardExtCsd

$C$DW$835	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_getCardExtCsd")
	.dwattr $C$DW$835, DW_AT_low_pc(_MMC_getCardExtCsd)
	.dwattr $C$DW$835, DW_AT_high_pc(0x00)
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_MMC_getCardExtCsd")
	.dwattr $C$DW$835, DW_AT_external
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$835, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$835, DW_AT_TI_begin_line(0x1a2d)
	.dwattr $C$DW$835, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$835, DW_AT_TI_max_frame_size(0x110)
	.dwpsn	file "src/csl_mmcsd.c",line 6703,column 1,is_stmt,address _MMC_getCardExtCsd

	.dwfde $C$DW$CIE, _MMC_getCardExtCsd
$C$DW$836	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$836, DW_AT_location[DW_OP_reg17]
$C$DW$837	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMmcsdCardExtCSD")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_pMmcsdCardExtCSD")
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$837, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MMC_getCardExtCsd                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,FP,XFP,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 272 words                                            *
;*                        (2 return address/alignment)                         *
;*                        (269 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_MMC_getCardExtCsd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSHBOTH XFP
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2
        ADD #-270, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 272
$C$DW$838	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$838, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$839	.dwtag  DW_TAG_variable, DW_AT_name("pMmcsdCardExtCSD")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_pMmcsdCardExtCSD")
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$839, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$840	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$840, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$841	.dwtag  DW_TAG_variable, DW_AT_name("csdBuf")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_csdBuf")
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$210)
	.dwattr $C$DW$841, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$842	.dwtag  DW_TAG_variable, DW_AT_name("pcsdBuf")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_pcsdBuf")
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$842, DW_AT_location[DW_OP_bregx 0x24 262]
$C$DW$843	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$843, DW_AT_location[DW_OP_bregx 0x24 264]
$C$DW$844	.dwtag  DW_TAG_variable, DW_AT_name("gRdCnt")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_gRdCnt")
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_location[DW_OP_bregx 0x24 266]
$C$DW$845	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$845, DW_AT_location[DW_OP_bregx 0x24 267]
$C$DW$846	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$846, DW_AT_location[DW_OP_bregx 0x24 268]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6712,column 2,is_stmt
        MOV #0, AC0 ; |6712| 
        MOV AC0, dbl(*FP(#264)) ; |6712| 
	.dwpsn	file "src/csl_mmcsd.c",line 6713,column 2,is_stmt
        MOV #0, *FP(#266) ; |6713| 
	.dwpsn	file "src/csl_mmcsd.c",line 6714,column 2,is_stmt
        MOV #0, *SP(#4) ; |6714| 
	.dwpsn	file "src/csl_mmcsd.c",line 6715,column 2,is_stmt
        AMAR *SP(#5), XAR3
        MOV XAR3, dbl(*FP(#262))
	.dwpsn	file "src/csl_mmcsd.c",line 6717,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L430,AC0 == #0 ; |6717| 
                                        ; branchcc occurs ; |6717| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L432,AC0 != #0 ; |6717| 
                                        ; branchcc occurs ; |6717| 
	.dwpsn	file "src/csl_mmcsd.c",line 6720,column 5,is_stmt
$C$L430:    
	.dwpsn	file "src/csl_mmcsd.c",line 6723,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |6723| 

        CMPU AC1 != AC0, TC1 ; |6723| 
        BCC $C$L431,TC1 ; |6723| 
                                        ; branchcc occurs ; |6723| 
	.dwpsn	file "src/csl_mmcsd.c",line 6725,column 13,is_stmt
        MOV #-5, T0
        B $C$L439 ; |6725| 
                                        ; branch occurs ; |6725| 
$C$L431:    
	.dwpsn	file "src/csl_mmcsd.c",line 6729,column 13,is_stmt
        MOV #-6, T0
        B $C$L439 ; |6729| 
                                        ; branch occurs ; |6729| 
$C$L432:    
	.dwpsn	file "src/csl_mmcsd.c",line 6734,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |6734| 
        MOV *AR3, AR3 ; |6734| 
        MOV port(*AR3(T0)), AR1 ; |6734| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6734| 
        BCLR @#0, AR1 ; |6734| 
        BSET @#0, AR1 ; |6734| 
        MOV AR1, port(*AR3(T0)) ; |6734| 
	.dwpsn	file "src/csl_mmcsd.c",line 6736,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6736| 
        MOV port(*AR3(T0)), AR1 ; |6736| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6736| 
        BCLR @#1, AR1 ; |6736| 
        MOV AR1, port(*AR3(T0)) ; |6736| 
	.dwpsn	file "src/csl_mmcsd.c",line 6739,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6739| 
        MOV port(*AR3(T0)), AR1 ; |6739| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6739| 
        AND #0xffe7, AR1, AC0 ; |6739| 
        BSET @#4, AC0 ; |6739| 
        MOV AC0, port(*AR3(T0)) ; |6739| 
	.dwpsn	file "src/csl_mmcsd.c",line 6742,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6742| 
        MOV port(*AR3(T0)), AR1 ; |6742| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6742| 
        BCLR @#2, AR1 ; |6742| 
        BSET @#2, AR1 ; |6742| 
        MOV AR1, port(*AR3(T0)) ; |6742| 
	.dwpsn	file "src/csl_mmcsd.c",line 6745,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #28, T0 ; |6745| 
        MOV *AR3, AR3 ; |6745| 
        MOV #512, port(*AR3(T0)) ; |6745| 
	.dwpsn	file "src/csl_mmcsd.c",line 6747,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |6747| 
        MOV *AR3, AR3 ; |6747| 
        MOV #1, port(*AR3(T0)) ; |6747| 
	.dwpsn	file "src/csl_mmcsd.c",line 6750,column 2,is_stmt
        MOV #41480, AR1 ; |6750| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*FP(#264)), AC1 ; |6750| 
        AND #0xffff, AR1, AC0 ; |6750| 
$C$DW$847	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$847, DW_AT_low_pc(0x00)
	.dwattr $C$DW$847, DW_AT_name("_MMC_sendCmd")
	.dwattr $C$DW$847, DW_AT_TI_call

        CALL #_MMC_sendCmd ; |6750| 
||      MOV #4, T0

                                        ; call occurs [#_MMC_sendCmd] ; |6750| 
        MOV T0, *FP(#267) ; |6750| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6754,column 2,is_stmt
        MOV #-10, AR2
        MOV *FP(#267), AR1 ; |6754| 
        CMP AR2 != AR1, TC1 ; |6754| 
        BCC $C$L433,TC1 ; |6754| 
                                        ; branchcc occurs ; |6754| 
	.dwpsn	file "src/csl_mmcsd.c",line 6756,column 3,is_stmt
        MOV *FP(#267), T0 ; |6756| 
        B $C$L439 ; |6756| 
                                        ; branch occurs ; |6756| 
$C$L433:    
$C$DW$L$_MMC_getCardExtCsd$10$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6761,column 9,is_stmt
        MOV *FP(#267), AR1 ; |6761| 
        MOV #1024, AR2 ; |6761| 
        AND #0x0400, AR1, AR1 ; |6761| 
        CMP AR1 == AR2, TC1 ; |6761| 
        BCC $C$L436,TC1 ; |6761| 
                                        ; branchcc occurs ; |6761| 
$C$DW$L$_MMC_getCardExtCsd$10$E:
$C$L434:    
$C$DW$L$_MMC_getCardExtCsd$11$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6763,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6763| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |6763| 
        MOV AR1, *FP(#267) ; |6763| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6764,column 4,is_stmt
        BAND *FP(#267), #104, TC1 ; |6764| 
        BCC $C$L435,!TC1 ; |6764| 
                                        ; branchcc occurs ; |6764| 
$C$DW$L$_MMC_getCardExtCsd$11$E:
	.dwpsn	file "src/csl_mmcsd.c",line 6766,column 5,is_stmt
        MOV #-10, T0
        B $C$L439 ; |6766| 
                                        ; branch occurs ; |6766| 
$C$L435:    
$C$DW$L$_MMC_getCardExtCsd$13$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6761,column 9,is_stmt
        MOV *FP(#267), AR1 ; |6761| 
        AND #0x0400, AR1, AR1 ; |6761| 
        CMP AR1 != AR2, TC1 ; |6761| 
        BCC $C$L434,TC1 ; |6761| 
                                        ; branchcc occurs ; |6761| 
$C$DW$L$_MMC_getCardExtCsd$13$E:
$C$L436:    
$C$DW$L$_MMC_getCardExtCsd$14$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6770,column 8,is_stmt
        MOV #0, *FP(#268) ; |6770| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6770,column 19,is_stmt
        MOV #16, AR2 ; |6770| 
        MOV *FP(#268), AR1 ; |6770| 
        CMPU AR1 >= AR2, TC1 ; |6770| 
        BCC $C$L438,TC1 ; |6770| 
                                        ; branchcc occurs ; |6770| 
$C$DW$L$_MMC_getCardExtCsd$14$E:
$C$L437:    
$C$DW$L$_MMC_getCardExtCsd$15$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6772,column 6,is_stmt
        MOV dbl(*FP(#262)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*FP(#262))
        MOV dbl(*SP(#0)), XAR3
        MOV #40, T0 ; |6772| 
        MOV *AR3, AR3 ; |6772| 
        MOV port(*AR3(T0)), AR1 ; |6772| 
        MOV AR1, *AR2 ; |6772| 
	.dwpsn	file "src/csl_mmcsd.c",line 6773,column 6,is_stmt
        ADD #1, *FP(#266) ; |6773| 
	.dwpsn	file "src/csl_mmcsd.c",line 6770,column 31,is_stmt
        ADD #1, *FP(#268) ; |6770| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6770,column 19,is_stmt
        MOV #16, AR2 ; |6770| 
        MOV *FP(#268), AR1 ; |6770| 
        CMPU AR1 < AR2, TC1 ; |6770| 
        BCC $C$L437,TC1 ; |6770| 
                                        ; branchcc occurs ; |6770| 
$C$DW$L$_MMC_getCardExtCsd$15$E:
$C$L438:    
$C$DW$L$_MMC_getCardExtCsd$16$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6776,column 3,is_stmt
        MOV #0, *FP(#267) ; |6776| 
	.dwpsn	file "src/csl_mmcsd.c",line 6778,column 10,is_stmt
        CMP *FP(#266) == #256, TC1 ; |6778| 
        BCC $C$L433,!TC1 ; |6778| 
                                        ; branchcc occurs ; |6778| 
$C$DW$L$_MMC_getCardExtCsd$16$E:
	.dwpsn	file "src/csl_mmcsd.c",line 6780,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*FP(#257))), AR1 ; |6780| 
        MOV AR1, *AR3 ; |6780| 
	.dwpsn	file "src/csl_mmcsd.c",line 6781,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#119))), AR1 ; |6781| 
        MOV AR1, *AR3(short(#1)) ; |6781| 
	.dwpsn	file "src/csl_mmcsd.c",line 6782,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#118))), AR1 ; |6782| 
        MOV AR1, *AR3(short(#2)) ; |6782| 
	.dwpsn	file "src/csl_mmcsd.c",line 6783,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#117))), AR1 ; |6783| 
        AND #0x00ff, AR1, AC0 ; |6783| 
        MOV AC0, *AR3(short(#3)) ; |6783| 
	.dwpsn	file "src/csl_mmcsd.c",line 6784,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#117))), AR1 ; |6784| 
        MOV AR1, *AR3(short(#4)) ; |6784| 
	.dwpsn	file "src/csl_mmcsd.c",line 6785,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#116))), AR1 ; |6785| 
        AND #0x00ff, AR1, AC0 ; |6785| 
        MOV AC0, *AR3(short(#5)) ; |6785| 
	.dwpsn	file "src/csl_mmcsd.c",line 6786,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#116))), AR1 ; |6786| 
        MOV AR1, *AR3(short(#6)) ; |6786| 
	.dwpsn	file "src/csl_mmcsd.c",line 6787,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#115))), AR1 ; |6787| 
        AND #0x00ff, AR1, AC0 ; |6787| 
        MOV AC0, *AR3(short(#7)) ; |6787| 
	.dwpsn	file "src/csl_mmcsd.c",line 6788,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#115))), AR1 ; |6788| 
        MOV AR1, *AR3(#8) ; |6788| 
	.dwpsn	file "src/csl_mmcsd.c",line 6789,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#114))), AR1 ; |6789| 
        AND #0x00ff, AR1, AC0 ; |6789| 
        MOV AC0, *AR3(#9) ; |6789| 
	.dwpsn	file "src/csl_mmcsd.c",line 6790,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#113))), AR1 ; |6790| 
        AND #0x00ff, AR1, AC0 ; |6790| 
        MOV AC0, *AR3(#10) ; |6790| 
	.dwpsn	file "src/csl_mmcsd.c",line 6791,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*SP(#112)), AC0 ; |6791| 
        MOV AC0, dbl(*AR3(#12)) ; |6791| 
	.dwpsn	file "src/csl_mmcsd.c",line 6792,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |6792| 
        SFTL AC0, #16, AC0 ; |6792| 
        MOV AC0, dbl(*AR3(#12)) ; |6792| 
	.dwpsn	file "src/csl_mmcsd.c",line 6793,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |6793| 
        OR *SP(#111), AC0, AC0 ; |6793| 
        MOV AC0, dbl(*AR3(#12)) ; |6793| 
	.dwpsn	file "src/csl_mmcsd.c",line 6794,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#110))), AR1 ; |6794| 
        MOV AR1, *AR3(#14) ; |6794| 
	.dwpsn	file "src/csl_mmcsd.c",line 6795,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#109))), AR1 ; |6795| 
        AND #0x00ff, AR1, AC0 ; |6795| 
        MOV AC0, *AR3(#15) ; |6795| 
	.dwpsn	file "src/csl_mmcsd.c",line 6796,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#109))), AR1 ; |6796| 
        MOV AR1, *AR3(#16) ; |6796| 
	.dwpsn	file "src/csl_mmcsd.c",line 6797,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#108))), AR1 ; |6797| 
        AND #0x00ff, AR1, AC0 ; |6797| 
        MOV AC0, *AR3(#17) ; |6797| 
	.dwpsn	file "src/csl_mmcsd.c",line 6798,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#108))), AR1 ; |6798| 
        MOV AR1, *AR3(#18) ; |6798| 
	.dwpsn	file "src/csl_mmcsd.c",line 6799,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#107))), AR1 ; |6799| 
        AND #0x00ff, AR1, AC0 ; |6799| 
        MOV AC0, *AR3(#19) ; |6799| 
	.dwpsn	file "src/csl_mmcsd.c",line 6800,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#106))), AR1 ; |6800| 
        AND #0x00ff, AR1, AC0 ; |6800| 
        MOV AC0, *AR3(#20) ; |6800| 
	.dwpsn	file "src/csl_mmcsd.c",line 6801,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#106))), AR1 ; |6801| 
        MOV AR1, *AR3(#21) ; |6801| 
	.dwpsn	file "src/csl_mmcsd.c",line 6802,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#105))), AR1 ; |6802| 
        AND #0x00ff, AR1, AC0 ; |6802| 
        MOV AC0, *AR3(#22) ; |6802| 
	.dwpsn	file "src/csl_mmcsd.c",line 6803,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#105))), AR1 ; |6803| 
        MOV AR1, *AR3(#23) ; |6803| 
	.dwpsn	file "src/csl_mmcsd.c",line 6804,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#103))), AR1 ; |6804| 
        MOV AR1, *AR3(#24) ; |6804| 
	.dwpsn	file "src/csl_mmcsd.c",line 6805,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#102))), AR1 ; |6805| 
        MOV AR1, *AR3(#25) ; |6805| 
	.dwpsn	file "src/csl_mmcsd.c",line 6806,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*SP(#101))), AR1 ; |6806| 
        MOV AR1, *AR3(#26) ; |6806| 
	.dwpsn	file "src/csl_mmcsd.c",line 6807,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#100))), AR1 ; |6807| 
        AND #0x00ff, AR1, AC0 ; |6807| 
        MOV AC0, *AR3(#27) ; |6807| 
	.dwpsn	file "src/csl_mmcsd.c",line 6808,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#99))), AR1 ; |6808| 
        AND #0x00ff, AR1, AC0 ; |6808| 
        MOV AC0, *AR3(#28) ; |6808| 
	.dwpsn	file "src/csl_mmcsd.c",line 6809,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#98))), AR1 ; |6809| 
        AND #0x00ff, AR1, AC0 ; |6809| 
        MOV AC0, *AR3(#29) ; |6809| 
	.dwpsn	file "src/csl_mmcsd.c",line 6810,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#97))), AR1 ; |6810| 
        AND #0x00ff, AR1, AC0 ; |6810| 
        MOV AC0, *AR3(#30) ; |6810| 
	.dwpsn	file "src/csl_mmcsd.c",line 6811,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#96))), AR1 ; |6811| 
        AND #0x00ff, AR1, AC0 ; |6811| 
        MOV AC0, *AR3(#31) ; |6811| 
	.dwpsn	file "src/csl_mmcsd.c",line 6812,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#95))), AR1 ; |6812| 
        AND #0x00ff, AR1, AC0 ; |6812| 
        MOV AC0, *AR3(#32) ; |6812| 
	.dwpsn	file "src/csl_mmcsd.c",line 6813,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#94))), AR1 ; |6813| 
        AND #0x00ff, AR1, AC0 ; |6813| 
        MOV AC0, *AR3(#33) ; |6813| 
	.dwpsn	file "src/csl_mmcsd.c",line 6814,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#93))), AR1 ; |6814| 
        AND #0x00ff, AR1, AC0 ; |6814| 
        MOV AC0, *AR3(#34) ; |6814| 
	.dwpsn	file "src/csl_mmcsd.c",line 6815,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*SP(#92))), AR1 ; |6815| 
        AND #0x00ff, AR1, AC0 ; |6815| 
        MOV AC0, *AR3(#35) ; |6815| 
	.dwpsn	file "src/csl_mmcsd.c",line 6817,column 2,is_stmt
        MOV *SP(#4), T0 ; |6817| 
$C$L439:    
	.dwpsn	file "src/csl_mmcsd.c",line 6818,column 1,is_stmt
        ADD #270, mmap(SP)
	.dwcfi	cfa_offset, 2
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$848	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$848, DW_AT_low_pc(0x00)
	.dwattr $C$DW$848, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$849	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$849, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L433:1:1714639441")
	.dwattr $C$DW$849, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$849, DW_AT_TI_begin_line(0x1a67)
	.dwattr $C$DW$849, DW_AT_TI_end_line(0x1a7a)
$C$DW$850	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$850, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$10$B)
	.dwattr $C$DW$850, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$10$E)
$C$DW$851	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$851, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$14$B)
	.dwattr $C$DW$851, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$14$E)
$C$DW$852	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$852, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$16$B)
	.dwattr $C$DW$852, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$16$E)

$C$DW$853	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$853, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L434:2:1714639441")
	.dwattr $C$DW$853, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$853, DW_AT_TI_begin_line(0x1a69)
	.dwattr $C$DW$853, DW_AT_TI_end_line(0x1a70)
$C$DW$854	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$854, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$11$B)
	.dwattr $C$DW$854, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$11$E)
$C$DW$855	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$855, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$13$B)
	.dwattr $C$DW$855, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$13$E)
	.dwendtag $C$DW$853


$C$DW$856	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$856, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L437:2:1714639441")
	.dwattr $C$DW$856, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$856, DW_AT_TI_begin_line(0x1a72)
	.dwattr $C$DW$856, DW_AT_TI_end_line(0x1a76)
$C$DW$857	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$857, DW_AT_low_pc($C$DW$L$_MMC_getCardExtCsd$15$B)
	.dwattr $C$DW$857, DW_AT_high_pc($C$DW$L$_MMC_getCardExtCsd$15$E)
	.dwendtag $C$DW$856

	.dwendtag $C$DW$849

	.dwattr $C$DW$835, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$835, DW_AT_TI_end_line(0x1aa2)
	.dwattr $C$DW$835, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$835

	.sect	".text"
	.global	_sendCmd

$C$DW$858	.dwtag  DW_TAG_subprogram, DW_AT_name("sendCmd")
	.dwattr $C$DW$858, DW_AT_low_pc(_sendCmd)
	.dwattr $C$DW$858, DW_AT_high_pc(0x00)
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_sendCmd")
	.dwattr $C$DW$858, DW_AT_external
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$858, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$858, DW_AT_TI_begin_line(0x1ab0)
	.dwattr $C$DW$858, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$858, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd.c",line 6835,column 1,is_stmt,address _sendCmd

	.dwfde $C$DW$CIE, _sendCmd
$C$DW$859	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$859, DW_AT_location[DW_OP_reg17]
$C$DW$860	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$860, DW_AT_location[DW_OP_reg19]
$C$DW$861	.dwtag  DW_TAG_formal_parameter, DW_AT_name("argument")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$861, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: sendCmd                                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_sendCmd:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$862	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$862, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$863	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$863, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$864	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$864, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$865	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$865, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$866	.dwtag  DW_TAG_variable, DW_AT_name("mmcStatus")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_mmcStatus")
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$866, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$867	.dwtag  DW_TAG_variable, DW_AT_name("command")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_command")
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$867, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$868	.dwtag  DW_TAG_variable, DW_AT_name("initClk")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_initClk")
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$869	.dwtag  DW_TAG_variable, DW_AT_name("cnt")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$870	.dwtag  DW_TAG_variable, DW_AT_name("dataTrns")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_dataTrns")
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$871	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$871, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV AC0, dbl(*SP(#4)) ; |6835| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6844,column 2,is_stmt
        MOV #0, *SP(#6) ; |6844| 
	.dwpsn	file "src/csl_mmcsd.c",line 6845,column 2,is_stmt
        MOV #0, AC0 ; |6845| 
        MOV AC0, dbl(*SP(#8)) ; |6845| 
	.dwpsn	file "src/csl_mmcsd.c",line 6846,column 2,is_stmt
        MOV #0, *SP(#10) ; |6846| 
	.dwpsn	file "src/csl_mmcsd.c",line 6847,column 2,is_stmt
        MOV #65535, *SP(#11) ; |6847| 
	.dwpsn	file "src/csl_mmcsd.c",line 6848,column 2,is_stmt
        MOV #0, *SP(#12) ; |6848| 
	.dwpsn	file "src/csl_mmcsd.c",line 6850,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |6850| 

        CMPU AC1 != AC0, TC1 ; |6850| 
        BCC $C$L440,TC1 ; |6850| 
                                        ; branchcc occurs ; |6850| 
	.dwpsn	file "src/csl_mmcsd.c",line 6852,column 9,is_stmt
        MOV #-6, T0
        B $C$L450 ; |6852| 
                                        ; branch occurs ; |6852| 
$C$L440:    
	.dwpsn	file "src/csl_mmcsd.c",line 6855,column 5,is_stmt
        MOV *AR3, AR1 ; |6855| 
        BCC $C$L441,AR1 != #0 ; |6855| 
                                        ; branchcc occurs ; |6855| 
	.dwpsn	file "src/csl_mmcsd.c",line 6857,column 9,is_stmt
        MOV #1, *SP(#10) ; |6857| 
$C$L441:    
	.dwpsn	file "src/csl_mmcsd.c",line 6860,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MOV *AR3(short(#5)) << #7, AC0 ; |6860| 
        OR *AR2, AC0, AR1 ; |6860| 
        MOV *AR3(short(#2)), AC0 ; |6860| 
        SFTS AC0, #8, AC1 ; |6860| 

        MOV *AR3(short(#1)) << #9, AC0 ; |6860| 
||      OR AR1, AC1 ; |6860| 

        MOV *SP(#12), AC1 ; |6860| 
||      OR AC1, AC0 ; |6860| 

        MOV *SP(#10), AC1 ; |6860| 
||      OR AC1 << #13, AC0 ; |6860| 

        OR AC1 << #14, AC0 ; |6860| 
        AND #0xffff, AC0, AC0 ; |6860| 
        MOV AC0, dbl(*SP(#8)) ; |6860| 
	.dwpsn	file "src/csl_mmcsd.c",line 6869,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #52, T0 ; |6869| 
        MOV *AR3, AR3 ; |6869| 
        MOV port(*AR3(T0)), AR1 ; |6869| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6869| 
        MOV dbl(*SP(#4)), AC0 ; |6869| 
        MOV #0 << #16, AC1 ; |6869| 
        AND #0xffff, AC0, AC0 ; |6869| 
        OR AC1, AC0 ; |6869| 
        MOV AC0, port(*AR3(T0)) ; |6869| 
	.dwpsn	file "src/csl_mmcsd.c",line 6871,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #53, T0 ; |6871| 
        MOV *AR3, AR3 ; |6871| 
        MOV port(*AR3(T0)), AR1 ; |6871| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6871| 
        MOV dbl(*SP(#4)), AC0 ; |6871| 
        SFTL AC0, #-16, AC0 ; |6871| 
        AND #0xffff, AC0, AC0 ; |6871| 
        OR AC1, AC0 ; |6871| 
        MOV AC0, port(*AR3(T0)) ; |6871| 
	.dwpsn	file "src/csl_mmcsd.c",line 6874,column 6,is_stmt
        MOV #0, *SP(#13) ; |6874| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6874,column 13,is_stmt
        MOV #2000, AR2 ; |6874| 
        MOV *SP(#13), AR1 ; |6874| 
        CMPU AR1 >= AR2, TC1 ; |6874| 
        BCC $C$L443,TC1 ; |6874| 
                                        ; branchcc occurs ; |6874| 
$C$L442:    
$C$DW$L$_sendCmd$6$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6874,column 23,is_stmt
        ADD #1, *SP(#13) ; |6874| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6874,column 13,is_stmt
        MOV *SP(#13), AR1 ; |6874| 
        CMPU AR1 < AR2, TC1 ; |6874| 
        BCC $C$L442,TC1 ; |6874| 
                                        ; branchcc occurs ; |6874| 
$C$DW$L$_sendCmd$6$E:
$C$L443:    
	.dwpsn	file "src/csl_mmcsd.c",line 6876,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |6876| 
        MOV *AR3, AR3 ; |6876| 
        MOV *SP(#9), AR1 ; |6876| 
        MOV AR1, port(*AR3(T0)) ; |6876| 
	.dwpsn	file "src/csl_mmcsd.c",line 6878,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(short(#2)) == #1, TC1 ; |6878| 
        BCC $C$L446,!TC1 ; |6878| 
                                        ; branchcc occurs ; |6878| 
	.dwpsn	file "src/csl_mmcsd.c",line 6880,column 3,is_stmt
        MOV #8, T0
        MOV #0, *SP(#7) ; |6880| 
$C$L444:    
$C$DW$L$_sendCmd$9$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6883,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6883| 
        MOV port(*AR3(T0)), AR1 ; |6883| 
        MOV AR1, *SP(#6) ; |6883| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6885,column 4,is_stmt
        MOV *SP(#6), AR1 ; |6885| 
        AND #0x0004, AR1, AR1 ; |6885| 
        OR *SP(#7), AR1, AR1 ; |6885| 
        MOV AR1, *SP(#7) ; |6885| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6886,column 4,is_stmt
        MOV *SP(#6), AR1 ; |6886| 
        AND #0x0002, AR1, AR1 ; |6886| 
        OR *SP(#7), AR1, AR1 ; |6886| 
        MOV AR1, *SP(#7) ; |6886| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6888,column 4,is_stmt
        BAND *SP(#6), #248, TC1 ; |6888| 
        BCC $C$L445,!TC1 ; |6888| 
                                        ; branchcc occurs ; |6888| 
$C$DW$L$_sendCmd$9$E:
	.dwpsn	file "src/csl_mmcsd.c",line 6890,column 5,is_stmt
        MOV #-10, T0
        B $C$L450 ; |6890| 
                                        ; branch occurs ; |6890| 
$C$L445:    
$C$DW$L$_sendCmd$11$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6892,column 11,is_stmt
        BTST #2, *SP(#7), TC1 ; |6892| 
        BCC $C$L444,!TC1 ; |6892| 
                                        ; branchcc occurs ; |6892| 
$C$DW$L$_sendCmd$11$E:
$C$DW$L$_sendCmd$12$B:
        BTST #1, *SP(#7), TC1 ; |6892| 
        BCC $C$L444,!TC1 ; |6892| 
                                        ; branchcc occurs ; |6892| 
$C$DW$L$_sendCmd$12$E:
	.dwpsn	file "src/csl_mmcsd.c",line 6894,column 2,is_stmt
        B $C$L447 ; |6894| 
                                        ; branch occurs ; |6894| 
$C$L446:    
$C$DW$L$_sendCmd$14$B:
	.dwpsn	file "src/csl_mmcsd.c",line 6899,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |6899| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |6899| 
        MOV AR1, *SP(#6) ; |6899| 
        NOP
        NOP
	.dwpsn	file "src/csl_mmcsd.c",line 6900,column 4,is_stmt
        SUB #1, *SP(#11) ; |6900| 
	.dwpsn	file "src/csl_mmcsd.c",line 6901,column 11,is_stmt
        BAND *SP(#6), #252, TC1 ; |6901| 
        BCC $C$L447,TC1 ; |6901| 
                                        ; branchcc occurs ; |6901| 
$C$DW$L$_sendCmd$14$E:
$C$DW$L$_sendCmd$15$B:
        MOV *SP(#11), AR1 ; |6901| 
        BCC $C$L446,AR1 != #0 ; |6901| 
                                        ; branchcc occurs ; |6901| 
$C$DW$L$_sendCmd$15$E:
$C$L447:    
	.dwpsn	file "src/csl_mmcsd.c",line 6905,column 5,is_stmt
        MOV *SP(#11), AR1 ; |6905| 
        BCC $C$L448,AR1 != #0 ; |6905| 
                                        ; branchcc occurs ; |6905| 
	.dwpsn	file "src/csl_mmcsd.c",line 6907,column 9,is_stmt
        MOV #-10, T0
        B $C$L450 ; |6907| 
                                        ; branch occurs ; |6907| 
$C$L448:    
	.dwpsn	file "src/csl_mmcsd.c",line 6911,column 3,is_stmt
        BAND *SP(#6), #248, TC1 ; |6911| 
        BCC $C$L449,!TC1 ; |6911| 
                                        ; branchcc occurs ; |6911| 
	.dwpsn	file "src/csl_mmcsd.c",line 6913,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#6), AR1 ; |6913| 
        MOV AR1, *AR3(short(#6)) ; |6913| 
	.dwpsn	file "src/csl_mmcsd.c",line 6914,column 4,is_stmt
        MOV #-10, T0
        B $C$L450 ; |6914| 
                                        ; branch occurs ; |6914| 
$C$L449:    
	.dwpsn	file "src/csl_mmcsd.c",line 6918,column 4,is_stmt
        MOV #0, T0
$C$L450:    
	.dwpsn	file "src/csl_mmcsd.c",line 6921,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$872	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$872, DW_AT_low_pc(0x00)
	.dwattr $C$DW$872, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$873	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$873, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L446:1:1714639441")
	.dwattr $C$DW$873, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$873, DW_AT_TI_begin_line(0x1af1)
	.dwattr $C$DW$873, DW_AT_TI_end_line(0x1af5)
$C$DW$874	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$874, DW_AT_low_pc($C$DW$L$_sendCmd$14$B)
	.dwattr $C$DW$874, DW_AT_high_pc($C$DW$L$_sendCmd$14$E)
$C$DW$875	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$875, DW_AT_low_pc($C$DW$L$_sendCmd$15$B)
	.dwattr $C$DW$875, DW_AT_high_pc($C$DW$L$_sendCmd$15$E)
	.dwendtag $C$DW$873


$C$DW$876	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$876, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L444:1:1714639441")
	.dwattr $C$DW$876, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$876, DW_AT_TI_begin_line(0x1ae1)
	.dwattr $C$DW$876, DW_AT_TI_end_line(0x1aec)
$C$DW$877	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$877, DW_AT_low_pc($C$DW$L$_sendCmd$9$B)
	.dwattr $C$DW$877, DW_AT_high_pc($C$DW$L$_sendCmd$9$E)
$C$DW$878	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$878, DW_AT_low_pc($C$DW$L$_sendCmd$12$B)
	.dwattr $C$DW$878, DW_AT_high_pc($C$DW$L$_sendCmd$12$E)
$C$DW$879	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$879, DW_AT_low_pc($C$DW$L$_sendCmd$11$B)
	.dwattr $C$DW$879, DW_AT_high_pc($C$DW$L$_sendCmd$11$E)
	.dwendtag $C$DW$876


$C$DW$880	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$880, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_mmcsd.asm:$C$L442:1:1714639441")
	.dwattr $C$DW$880, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$880, DW_AT_TI_begin_line(0x1ada)
	.dwattr $C$DW$880, DW_AT_TI_end_line(0x1ada)
$C$DW$881	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$881, DW_AT_low_pc($C$DW$L$_sendCmd$6$B)
	.dwattr $C$DW$881, DW_AT_high_pc($C$DW$L$_sendCmd$6$E)
	.dwendtag $C$DW$880

	.dwattr $C$DW$858, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$858, DW_AT_TI_end_line(0x1b09)
	.dwattr $C$DW$858, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$858

	.sect	".text"
	.global	_MMC_setEMMCBusWidth

$C$DW$882	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_setEMMCBusWidth")
	.dwattr $C$DW$882, DW_AT_low_pc(_MMC_setEMMCBusWidth)
	.dwattr $C$DW$882, DW_AT_high_pc(0x00)
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_MMC_setEMMCBusWidth")
	.dwattr $C$DW$882, DW_AT_external
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$882, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$882, DW_AT_TI_begin_line(0x1b19)
	.dwattr $C$DW$882, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$882, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_mmcsd.c",line 6939,column 1,is_stmt,address _MMC_setEMMCBusWidth

	.dwfde $C$DW$CIE, _MMC_setEMMCBusWidth
$C$DW$883	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$883, DW_AT_location[DW_OP_reg17]
$C$DW$884	.dwtag  DW_TAG_formal_parameter, DW_AT_name("busWidth")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_busWidth")
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$884, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MMC_setEMMCBusWidth                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_setEMMCBusWidth:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$885	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$885, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$886	.dwtag  DW_TAG_variable, DW_AT_name("busWidth")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_busWidth")
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$886, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$887	.dwtag  DW_TAG_variable, DW_AT_name("argument")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_argument")
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$887, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$888	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$888, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$889	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$889, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#2) ; |6939| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6944,column 2,is_stmt
        MOV #0, *SP(#6) ; |6944| 
	.dwpsn	file "src/csl_mmcsd.c",line 6946,column 2,is_stmt
        MOV *SP(#2), AR1 ; |6946| 
        BCC $C$L451,AR1 == #0 ; |6946| 
                                        ; branchcc occurs ; |6946| 
        CMP *SP(#2) == #1, TC1 ; |6946| 
        BCC $C$L455,!TC1 ; |6946| 
                                        ; branchcc occurs ; |6946| 
$C$L451:    
	.dwpsn	file "src/csl_mmcsd.c",line 6948,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        CMP *AR3(#18) == #1, TC1 ; |6948| 
        BCC $C$L452,TC1 ; |6948| 
                                        ; branchcc occurs ; |6948| 
	.dwpsn	file "src/csl_mmcsd.c",line 6951,column 4,is_stmt
        MOV #1, *SP(#9) ; |6951| 
	.dwpsn	file "src/csl_mmcsd.c",line 6952,column 4,is_stmt
        MOV #0, *SP(#12) ; |6952| 
	.dwpsn	file "src/csl_mmcsd.c",line 6953,column 4,is_stmt
        MOV #1, *SP(#8) ; |6953| 
	.dwpsn	file "src/csl_mmcsd.c",line 6954,column 4,is_stmt
        MOV #6, *SP(#7) ; |6954| 
	.dwpsn	file "src/csl_mmcsd.c",line 6955,column 4,is_stmt
        MOV *SP(#2), AC0 ; |6955| 
        SFTL AC0, #8, AC0 ; |6955| 
        AND #0xffff, AC0, AC1 ; |6955| 
        MOV #951 << #16, AC0 ; |6955| 
        OR AC1, AC0 ; |6955| 
        MOV AC0, dbl(*SP(#4)) ; |6955| 
	.dwpsn	file "src/csl_mmcsd.c",line 6957,column 4,is_stmt
        AMAR *SP(#7), XAR1
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#4)), AC0 ; |6957| 
$C$DW$890	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$890, DW_AT_low_pc(0x00)
	.dwattr $C$DW$890, DW_AT_name("_sendCmd")
	.dwattr $C$DW$890, DW_AT_TI_call
        CALL #_sendCmd ; |6957| 
                                        ; call occurs [#_sendCmd] ; |6957| 
        MOV T0, *SP(#6) ; |6957| 
	.dwpsn	file "src/csl_mmcsd.c",line 6958,column 4,is_stmt
        MOV T0, AR1
        BCC $C$L453,AR1 == #0 ; |6958| 
                                        ; branchcc occurs ; |6958| 
	.dwpsn	file "src/csl_mmcsd.c",line 6960,column 5,is_stmt
        B $C$L457 ; |6960| 
                                        ; branch occurs ; |6960| 
$C$L452:    
	.dwpsn	file "src/csl_mmcsd.c",line 6965,column 4,is_stmt
        MOV #-1, *SP(#6) ; |6965| 
$C$L453:    
	.dwpsn	file "src/csl_mmcsd.c",line 6968,column 3,is_stmt
        MOV *SP(#2), AR1 ; |6968| 
        BCC $C$L454,AR1 != #0 ; |6968| 
                                        ; branchcc occurs ; |6968| 
	.dwpsn	file "src/csl_mmcsd.c",line 6970,column 4,is_stmt
        AND #0xfffb, *port(#14848) ; |6970| 
	.dwpsn	file "src/csl_mmcsd.c",line 6971,column 3,is_stmt
        B $C$L456 ; |6971| 
                                        ; branch occurs ; |6971| 
$C$L454:    
	.dwpsn	file "src/csl_mmcsd.c",line 6974,column 4,is_stmt
        OR #0x0004, *port(#14848) ; |6974| 
	.dwpsn	file "src/csl_mmcsd.c",line 6976,column 2,is_stmt
        B $C$L456 ; |6976| 
                                        ; branch occurs ; |6976| 
$C$L455:    
	.dwpsn	file "src/csl_mmcsd.c",line 6979,column 3,is_stmt
        MOV #-6, *SP(#6) ; |6979| 
$C$L456:    
	.dwpsn	file "src/csl_mmcsd.c",line 6982,column 5,is_stmt
        MOV *SP(#6), T0 ; |6982| 
$C$L457:    
	.dwpsn	file "src/csl_mmcsd.c",line 6983,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$891	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$891, DW_AT_low_pc(0x00)
	.dwattr $C$DW$891, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$882, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$882, DW_AT_TI_end_line(0x1b47)
	.dwattr $C$DW$882, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$882

	.sect	".text"
	.global	_MMC_initCtrl

$C$DW$892	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_initCtrl")
	.dwattr $C$DW$892, DW_AT_low_pc(_MMC_initCtrl)
	.dwattr $C$DW$892, DW_AT_high_pc(0x00)
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_MMC_initCtrl")
	.dwattr $C$DW$892, DW_AT_external
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$892, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$892, DW_AT_TI_begin_line(0x1b49)
	.dwattr $C$DW$892, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$892, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 6986,column 1,is_stmt,address _MMC_initCtrl

	.dwfde $C$DW$CIE, _MMC_initCtrl
$C$DW$893	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$893, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_initCtrl                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_initCtrl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$894	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$894, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 6996,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L458,AC0 != #0 ; |6996| 
                                        ; branchcc occurs ; |6996| 
	.dwpsn	file "src/csl_mmcsd.c",line 6998,column 4,is_stmt
        MOV #-5, T0
        B $C$L459 ; |6998| 
                                        ; branch occurs ; |6998| 
$C$L458:    
	.dwpsn	file "src/csl_mmcsd.c",line 7002,column 5,is_stmt
        MOV *AR3, AR3 ; |7002| 
        MOV port(*AR3), AR1 ; |7002| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7002| 
        BCLR @#1, AR1 ; |7002| 
        BSET @#1, AR1 ; |7002| 
        MOV AR1, port(*AR3) ; |7002| 
	.dwpsn	file "src/csl_mmcsd.c",line 7003,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7003| 
        MOV port(*AR3), AR1 ; |7003| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7003| 
        BCLR @#0, AR1 ; |7003| 
        BSET @#0, AR1 ; |7003| 
        MOV AR1, port(*AR3) ; |7003| 
	.dwpsn	file "src/csl_mmcsd.c",line 7006,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #20, T0 ; |7006| 
        MOV *AR3, AR3 ; |7006| 
        MOV #65535, port(*AR3(T0)) ; |7006| 
	.dwpsn	file "src/csl_mmcsd.c",line 7007,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #24, T0 ; |7007| 
        MOV *AR3, AR3 ; |7007| 
        MOV #65535, port(*AR3(T0)) ; |7007| 
	.dwpsn	file "src/csl_mmcsd.c",line 7015,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7015| 
        MOV port(*AR3(short(#4))), AR1 ; |7015| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7015| 
        BCLR @#8, AR1 ; |7015| 
        MOV AR1, port(*AR3(short(#4))) ; |7015| 
	.dwpsn	file "src/csl_mmcsd.c",line 7016,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7016| 
        MOV port(*AR3(short(#4))), AR1 ; |7016| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7016| 
        AND #0xff00, AR1, AR1 ; |7016| 
        OR #0x0054, AR1, AR1 ; |7016| 
        MOV AR1, port(*AR3(short(#4))) ; |7016| 
	.dwpsn	file "src/csl_mmcsd.c",line 7018,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7018| 
        MOV port(*AR3(short(#4))), AR1 ; |7018| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7018| 
        BCLR @#8, AR1 ; |7018| 
        BSET @#8, AR1 ; |7018| 
        MOV AR1, port(*AR3(short(#4))) ; |7018| 
	.dwpsn	file "src/csl_mmcsd.c",line 7021,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7021| 
        MOV port(*AR3), AR1 ; |7021| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7021| 
        BCLR @#1, AR1 ; |7021| 
        MOV AR1, port(*AR3) ; |7021| 
	.dwpsn	file "src/csl_mmcsd.c",line 7022,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7022| 
        MOV port(*AR3), AR1 ; |7022| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7022| 
        BCLR @#0, AR1 ; |7022| 
        MOV AR1, port(*AR3) ; |7022| 
	.dwpsn	file "src/csl_mmcsd.c",line 7024,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #48, T0 ; |7024| 
        MOV *AR3, AR3 ; |7024| 
        MOV #0, port(*AR3(T0)) ; |7024| 
	.dwpsn	file "src/csl_mmcsd.c",line 7026,column 5,is_stmt
        MOV #0, T0
$C$L459:    
	.dwpsn	file "src/csl_mmcsd.c",line 7027,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$895	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$895, DW_AT_low_pc(0x00)
	.dwattr $C$DW$895, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$892, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$892, DW_AT_TI_end_line(0x1b73)
	.dwattr $C$DW$892, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$892

	.sect	".text"
	.global	_MMC_configFifo

$C$DW$896	.dwtag  DW_TAG_subprogram, DW_AT_name("MMC_configFifo")
	.dwattr $C$DW$896, DW_AT_low_pc(_MMC_configFifo)
	.dwattr $C$DW$896, DW_AT_high_pc(0x00)
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_MMC_configFifo")
	.dwattr $C$DW$896, DW_AT_external
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$896, DW_AT_TI_begin_file("src/csl_mmcsd.c")
	.dwattr $C$DW$896, DW_AT_TI_begin_line(0x1b75)
	.dwattr $C$DW$896, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$896, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_mmcsd.c",line 7030,column 1,is_stmt,address _MMC_configFifo

	.dwfde $C$DW$CIE, _MMC_configFifo
$C$DW$897	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hMmcsd")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$897, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MMC_configFifo                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MMC_configFifo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$898	.dwtag  DW_TAG_variable, DW_AT_name("hMmcsd")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_hMmcsd")
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$898, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_mmcsd.c",line 7031,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L460,AC0 == #0 ; |7031| 
                                        ; branchcc occurs ; |7031| 
	.dwpsn	file "src/csl_mmcsd.c",line 7033,column 3,is_stmt
        MOV #28, T0 ; |7033| 
        MOV *AR3, AR3 ; |7033| 
        MOV port(*AR3(T0)), AR1 ; |7033| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7033| 
        AND #0xf000, AR1, AC0 ; |7033| 
        BSET @#9, AC0 ; |7033| 
        MOV AC0, port(*AR3(T0)) ; |7033| 
	.dwpsn	file "src/csl_mmcsd.c",line 7034,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |7034| 
        MOV *AR3, AR3 ; |7034| 
        MOV port(*AR3(T0)), AR1 ; |7034| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7034| 
        MOV #0, port(*AR3(T0)) ; |7034| 
	.dwpsn	file "src/csl_mmcsd.c",line 7037,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7037| 
        MOV port(*AR3), AR1 ; |7037| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7037| 
        BCLR @#9, AR1 ; |7037| 
        MOV AR1, port(*AR3) ; |7037| 
	.dwpsn	file "src/csl_mmcsd.c",line 7040,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #116, T0 ; |7040| 
        MOV *AR3, AR3 ; |7040| 
        MOV port(*AR3(T0)), AR1 ; |7040| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7040| 
        BCLR @#0, AR1 ; |7040| 
        BSET @#0, AR1 ; |7040| 
        MOV AR1, port(*AR3(T0)) ; |7040| 
	.dwpsn	file "src/csl_mmcsd.c",line 7042,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7042| 
        MOV port(*AR3(T0)), AR1 ; |7042| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7042| 
        BCLR @#1, AR1 ; |7042| 
        MOV AR1, port(*AR3(T0)) ; |7042| 
	.dwpsn	file "src/csl_mmcsd.c",line 7044,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7044| 
        MOV port(*AR3(T0)), AR1 ; |7044| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7044| 
        AND #0xffe7, AR1, AC0 ; |7044| 
        BSET @#4, AC0 ; |7044| 
        MOV AC0, port(*AR3(T0)) ; |7044| 
	.dwpsn	file "src/csl_mmcsd.c",line 7046,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7046| 
        MOV port(*AR3(T0)), AR1 ; |7046| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |7046| 
        BCLR @#2, AR1 ; |7046| 
        BSET @#2, AR1 ; |7046| 
        MOV AR1, port(*AR3(T0)) ; |7046| 
	.dwpsn	file "src/csl_mmcsd.c",line 7047,column 2,is_stmt
        B $C$L461 ; |7047| 
                                        ; branch occurs ; |7047| 
$C$L460:    
	.dwpsn	file "src/csl_mmcsd.c",line 7050,column 3,is_stmt
        MOV #-5, T0
        B $C$L462 ; |7050| 
                                        ; branch occurs ; |7050| 
$C$L461:    
	.dwpsn	file "src/csl_mmcsd.c",line 7053,column 2,is_stmt
        MOV #0, T0
$C$L462:    
	.dwpsn	file "src/csl_mmcsd.c",line 7054,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$899	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$899, DW_AT_low_pc(0x00)
	.dwattr $C$DW$899, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$896, DW_AT_TI_end_file("src/csl_mmcsd.c")
	.dwattr $C$DW$896, DW_AT_TI_end_line(0x1b8e)
	.dwattr $C$DW$896, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$896

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DMA_close
	.global	_DMA_config
	.global	_DMA_start
	.global	_DMA_stop
	.global	_DMA_swapWords
	.global	_IRQ_globalDisable
	.global	_IRQ_globalRestore
	.global	_SYS_peripheralReset
	.global	__mpyli
	.global	__divu

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$900	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN0"), DW_AT_const_value(0x00)
$C$DW$901	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN1"), DW_AT_const_value(0x01)
$C$DW$902	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN2"), DW_AT_const_value(0x02)
$C$DW$903	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN3"), DW_AT_const_value(0x03)
$C$DW$904	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN4"), DW_AT_const_value(0x04)
$C$DW$905	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN5"), DW_AT_const_value(0x05)
$C$DW$906	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN6"), DW_AT_const_value(0x06)
$C$DW$907	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN7"), DW_AT_const_value(0x07)
$C$DW$908	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN8"), DW_AT_const_value(0x08)
$C$DW$909	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN9"), DW_AT_const_value(0x09)
$C$DW$910	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN10"), DW_AT_const_value(0x0a)
$C$DW$911	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN11"), DW_AT_const_value(0x0b)
$C$DW$912	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN12"), DW_AT_const_value(0x0c)
$C$DW$913	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN13"), DW_AT_const_value(0x0d)
$C$DW$914	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN14"), DW_AT_const_value(0x0e)
$C$DW$915	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN15"), DW_AT_const_value(0x0f)
$C$DW$916	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN_INV"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanNum")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$917	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE0"), DW_AT_const_value(0x00)
$C$DW$918	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE1"), DW_AT_const_value(0x01)
$C$DW$919	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE2"), DW_AT_const_value(0x02)
$C$DW$920	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE3"), DW_AT_const_value(0x03)
$C$DW$921	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINEINV"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEngineId")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$922	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_READ"), DW_AT_const_value(0x00)
$C$DW$923	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_WRITE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanDir")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$924	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_SOFTWARE_TRIGGER"), DW_AT_const_value(0x00)
$C$DW$925	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVENT_TRIGGER"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATriggerType")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$926	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_IO_MEMORY"), DW_AT_const_value(0x00)
$C$DW$927	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_MEMORY"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATransferType")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$928	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$929	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAInterruptState")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$930	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_DISABLE"), DW_AT_const_value(0x00)
$C$DW$931	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAPingPongMode")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$932	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_DISABLE"), DW_AT_const_value(0x00)
$C$DW$933	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAAutoReloadMode")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$934	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_1WORD"), DW_AT_const_value(0x00)
$C$DW$935	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_2WORD"), DW_AT_const_value(0x01)
$C$DW$936	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_4WORD"), DW_AT_const_value(0x02)
$C$DW$937	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_8WORD"), DW_AT_const_value(0x03)
$C$DW$938	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_16WORD"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATxBurstLen")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$939	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_NONE"), DW_AT_const_value(0x00)
$C$DW$940	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_TX"), DW_AT_const_value(0x01)
$C$DW$941	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_RX"), DW_AT_const_value(0x02)
$C$DW$942	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_TX"), DW_AT_const_value(0x01)
$C$DW$943	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_RX"), DW_AT_const_value(0x02)
$C$DW$944	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_TX"), DW_AT_const_value(0x01)
$C$DW$945	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_RX"), DW_AT_const_value(0x02)
$C$DW$946	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_TX"), DW_AT_const_value(0x04)
$C$DW$947	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_RX"), DW_AT_const_value(0x05)
$C$DW$948	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TX"), DW_AT_const_value(0x01)
$C$DW$949	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RX"), DW_AT_const_value(0x02)
$C$DW$950	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TXA"), DW_AT_const_value(0x03)
$C$DW$951	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RXA"), DW_AT_const_value(0x04)
$C$DW$952	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_TX"), DW_AT_const_value(0x05)
$C$DW$953	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_RX"), DW_AT_const_value(0x06)
$C$DW$954	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_TX"), DW_AT_const_value(0x07)
$C$DW$955	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_RX"), DW_AT_const_value(0x08)
$C$DW$956	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER0"), DW_AT_const_value(0x0c)
$C$DW$957	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER1"), DW_AT_const_value(0x0d)
$C$DW$958	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER2"), DW_AT_const_value(0x0e)
$C$DW$959	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_TX"), DW_AT_const_value(0x05)
$C$DW$960	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_RX"), DW_AT_const_value(0x06)
$C$DW$961	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_TX"), DW_AT_const_value(0x01)
$C$DW$962	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_RX"), DW_AT_const_value(0x02)
$C$DW$963	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_SAR_AD"), DW_AT_const_value(0x03)
$C$DW$964	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_RX"), DW_AT_const_value(0x03)
$C$DW$965	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_TX"), DW_AT_const_value(0x04)
$C$DW$966	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_RX"), DW_AT_const_value(0x09)
$C$DW$967	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_TX"), DW_AT_const_value(0x0a)
$C$DW$968	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_RX"), DW_AT_const_value(0x0b)
$C$DW$969	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_TX"), DW_AT_const_value(0x0f)
$C$DW$970	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_INVALID"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEvtType")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$971	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_CARD_NONE"), DW_AT_const_value(0x00)
$C$DW$972	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SD_CARD"), DW_AT_const_value(0x01)
$C$DW$973	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMC_CARD"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CardType")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$974	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$975	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$976	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_DMA"), DW_AT_const_value(0x02)
$C$DW$977	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_OPMODE_NONE"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$85

$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDOpMode")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$978	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ENDIAN_LITTLE"), DW_AT_const_value(0x00)
$C$DW$979	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ENDIAN_BIG"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdEndianMode")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$980	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_NO"), DW_AT_const_value(0x00)
$C$DW$981	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R1"), DW_AT_const_value(0x01)
$C$DW$982	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R2"), DW_AT_const_value(0x02)
$C$DW$983	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R3"), DW_AT_const_value(0x03)
$C$DW$984	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R4"), DW_AT_const_value(0x04)
$C$DW$985	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R5"), DW_AT_const_value(0x05)
$C$DW$986	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPTYPE_R6"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$103

$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRespType")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$987	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPBUSY_NO"), DW_AT_const_value(0x00)
$C$DW$988	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RESPBUSY_YES"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$105

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRespBusy")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$107	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$989	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_CMDTYPE_BC"), DW_AT_const_value(0x00)
$C$DW$990	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_CMDTYPE_BCR"), DW_AT_const_value(0x01)
$C$DW$991	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_CMDTYPE_AC"), DW_AT_const_value(0x02)
$C$DW$992	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_CMDTYPE_ADTC"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$107

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdCmdType")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)

$C$DW$T$109	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$993	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_DIR_WRITE"), DW_AT_const_value(0x00)
$C$DW$994	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_DIR_READ"), DW_AT_const_value(0x01)
$C$DW$995	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_DIR_DONTCARE"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$109

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdDir")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)

$C$DW$T$111	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$996	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_LINECHR_PUSHPULL"), DW_AT_const_value(0x00)
$C$DW$997	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_LINECHR_OPENDRAIN"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$111

$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdLineChr")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)

$C$DW$T$119	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x01)
$C$DW$998	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$999	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$1000	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$119

$C$DW$T$120	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)

$C$DW$T$121	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$1001	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD0_INST"), DW_AT_const_value(0x00)
$C$DW$1002	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD1_INST"), DW_AT_const_value(0x01)
$C$DW$1003	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_INST_INV"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$121

$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdInstId")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)

$C$DW$T$123	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$1004	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_EDATDNE_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$1005	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_EBSYDNE_INTERRUPT"), DW_AT_const_value(0x02)
$C$DW$1006	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ERSPDNE_INTERRUPT"), DW_AT_const_value(0x04)
$C$DW$1007	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ETOUTRD_INTERRUPT"), DW_AT_const_value(0x08)
$C$DW$1008	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ETOUTRS_INTERRUPT"), DW_AT_const_value(0x10)
$C$DW$1009	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ECRCWR_INTERRUPT"), DW_AT_const_value(0x20)
$C$DW$1010	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ECRCRD_INTERRUPT"), DW_AT_const_value(0x40)
$C$DW$1011	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ECRCRS_INTERRUPT"), DW_AT_const_value(0x80)
$C$DW$1012	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_RSV_BIT"), DW_AT_const_value(0x100)
$C$DW$1013	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_EDXRDY_INTERRUPT"), DW_AT_const_value(0x200)
$C$DW$1014	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_EDRRDY_INTERRUPT"), DW_AT_const_value(0x400)
$C$DW$1015	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_EDATED_INTERRUPT"), DW_AT_const_value(0x800)
$C$DW$1016	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_ETRNDNE_INTERRUPT"), DW_AT_const_value(0x1000)
$C$DW$1017	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_INTERRUPT_NONE"), DW_AT_const_value(0x2000)
	.dwendtag $C$DW$T$123

$C$DW$T$124	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDEventType")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$1018	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_BOOT_BUS_WIDTH_1BIT"), DW_AT_const_value(0x00)
$C$DW$1019	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MMCSD_BOOT_BUS_WIDTH_4BIT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$125

$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdBootBusWidth")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x66)
$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1020, DW_AT_name("DMACH0SSAL")
	.dwattr $C$DW$1020, DW_AT_TI_symbol_name("_DMACH0SSAL")
	.dwattr $C$DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1021, DW_AT_name("DMACH0SSAU")
	.dwattr $C$DW$1021, DW_AT_TI_symbol_name("_DMACH0SSAU")
	.dwattr $C$DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1022, DW_AT_name("DMACH0DSAL")
	.dwattr $C$DW$1022, DW_AT_TI_symbol_name("_DMACH0DSAL")
	.dwattr $C$DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1023, DW_AT_name("DMACH0DSAU")
	.dwattr $C$DW$1023, DW_AT_TI_symbol_name("_DMACH0DSAU")
	.dwattr $C$DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1024, DW_AT_name("DMACH0TCR1")
	.dwattr $C$DW$1024, DW_AT_TI_symbol_name("_DMACH0TCR1")
	.dwattr $C$DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1025, DW_AT_name("DMACH0TCR2")
	.dwattr $C$DW$1025, DW_AT_TI_symbol_name("_DMACH0TCR2")
	.dwattr $C$DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1026, DW_AT_name("RSVD0")
	.dwattr $C$DW$1026, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1027, DW_AT_name("DMACH1SSAL")
	.dwattr $C$DW$1027, DW_AT_TI_symbol_name("_DMACH1SSAL")
	.dwattr $C$DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1028, DW_AT_name("DMACH1SSAU")
	.dwattr $C$DW$1028, DW_AT_TI_symbol_name("_DMACH1SSAU")
	.dwattr $C$DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1029, DW_AT_name("DMACH1DSAL")
	.dwattr $C$DW$1029, DW_AT_TI_symbol_name("_DMACH1DSAL")
	.dwattr $C$DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1030, DW_AT_name("DMACH1DSAU")
	.dwattr $C$DW$1030, DW_AT_TI_symbol_name("_DMACH1DSAU")
	.dwattr $C$DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1031, DW_AT_name("DMACH1TCR1")
	.dwattr $C$DW$1031, DW_AT_TI_symbol_name("_DMACH1TCR1")
	.dwattr $C$DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1032, DW_AT_name("DMACH1TCR2")
	.dwattr $C$DW$1032, DW_AT_TI_symbol_name("_DMACH1TCR2")
	.dwattr $C$DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1033, DW_AT_name("RSVD1")
	.dwattr $C$DW$1033, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1034, DW_AT_name("DMACH2SSAL")
	.dwattr $C$DW$1034, DW_AT_TI_symbol_name("_DMACH2SSAL")
	.dwattr $C$DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1035, DW_AT_name("DMACH2SSAU")
	.dwattr $C$DW$1035, DW_AT_TI_symbol_name("_DMACH2SSAU")
	.dwattr $C$DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1036	.dwtag  DW_TAG_member
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1036, DW_AT_name("DMACH2DSAL")
	.dwattr $C$DW$1036, DW_AT_TI_symbol_name("_DMACH2DSAL")
	.dwattr $C$DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$1036, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1037	.dwtag  DW_TAG_member
	.dwattr $C$DW$1037, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1037, DW_AT_name("DMACH2DSAU")
	.dwattr $C$DW$1037, DW_AT_TI_symbol_name("_DMACH2DSAU")
	.dwattr $C$DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$1037, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1038	.dwtag  DW_TAG_member
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1038, DW_AT_name("DMACH2TCR1")
	.dwattr $C$DW$1038, DW_AT_TI_symbol_name("_DMACH2TCR1")
	.dwattr $C$DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$1038, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1039	.dwtag  DW_TAG_member
	.dwattr $C$DW$1039, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1039, DW_AT_name("DMACH2TCR2")
	.dwattr $C$DW$1039, DW_AT_TI_symbol_name("_DMACH2TCR2")
	.dwattr $C$DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$1039, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1040	.dwtag  DW_TAG_member
	.dwattr $C$DW$1040, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1040, DW_AT_name("RSVD2")
	.dwattr $C$DW$1040, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$1040, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1041	.dwtag  DW_TAG_member
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1041, DW_AT_name("DMACH3SSAL")
	.dwattr $C$DW$1041, DW_AT_TI_symbol_name("_DMACH3SSAL")
	.dwattr $C$DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$1041, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1042	.dwtag  DW_TAG_member
	.dwattr $C$DW$1042, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1042, DW_AT_name("DMACH3SSAU")
	.dwattr $C$DW$1042, DW_AT_TI_symbol_name("_DMACH3SSAU")
	.dwattr $C$DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$1042, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1043	.dwtag  DW_TAG_member
	.dwattr $C$DW$1043, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1043, DW_AT_name("DMACH3DSAL")
	.dwattr $C$DW$1043, DW_AT_TI_symbol_name("_DMACH3DSAL")
	.dwattr $C$DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$1043, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1044	.dwtag  DW_TAG_member
	.dwattr $C$DW$1044, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1044, DW_AT_name("DMACH3DSAU")
	.dwattr $C$DW$1044, DW_AT_TI_symbol_name("_DMACH3DSAU")
	.dwattr $C$DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x63]
	.dwattr $C$DW$1044, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1045	.dwtag  DW_TAG_member
	.dwattr $C$DW$1045, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1045, DW_AT_name("DMACH3TCR1")
	.dwattr $C$DW$1045, DW_AT_TI_symbol_name("_DMACH3TCR1")
	.dwattr $C$DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$1045, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1046	.dwtag  DW_TAG_member
	.dwattr $C$DW$1046, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1046, DW_AT_name("DMACH3TCR2")
	.dwattr $C$DW$1046, DW_AT_TI_symbol_name("_DMACH3TCR2")
	.dwattr $C$DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$1046, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$1047	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1047, DW_AT_type(*$C$DW$T$23)
$C$DW$1048	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$1048, DW_AT_type(*$C$DW$1047)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$1048)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x09)
$C$DW$1049	.dwtag  DW_TAG_member
	.dwattr $C$DW$1049, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1049, DW_AT_name("dmaRegs")
	.dwattr $C$DW$1049, DW_AT_TI_symbol_name("_dmaRegs")
	.dwattr $C$DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1049, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1050	.dwtag  DW_TAG_member
	.dwattr $C$DW$1050, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$1050, DW_AT_name("chanNum")
	.dwattr $C$DW$1050, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1050, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1051	.dwtag  DW_TAG_member
	.dwattr $C$DW$1051, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$1051, DW_AT_name("dmaInstNum")
	.dwattr $C$DW$1051, DW_AT_TI_symbol_name("_dmaInstNum")
	.dwattr $C$DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1051, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1052	.dwtag  DW_TAG_member
	.dwattr $C$DW$1052, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1052, DW_AT_name("isChanFree")
	.dwattr $C$DW$1052, DW_AT_TI_symbol_name("_isChanFree")
	.dwattr $C$DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1052, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1053	.dwtag  DW_TAG_member
	.dwattr $C$DW$1053, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1053, DW_AT_name("chanDir")
	.dwattr $C$DW$1053, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1053, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1054	.dwtag  DW_TAG_member
	.dwattr $C$DW$1054, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1054, DW_AT_name("trigger")
	.dwattr $C$DW$1054, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1054, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1055	.dwtag  DW_TAG_member
	.dwattr $C$DW$1055, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$1055, DW_AT_name("trfType")
	.dwattr $C$DW$1055, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1055, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1056	.dwtag  DW_TAG_member
	.dwattr $C$DW$1056, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1056, DW_AT_name("dmaInt")
	.dwattr $C$DW$1056, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1056, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1057	.dwtag  DW_TAG_member
	.dwattr $C$DW$1057, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1057, DW_AT_name("pingPongEnabled")
	.dwattr $C$DW$1057, DW_AT_TI_symbol_name("_pingPongEnabled")
	.dwattr $C$DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1057, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_ChannelObj")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Handle")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x0e)
$C$DW$1058	.dwtag  DW_TAG_member
	.dwattr $C$DW$1058, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$1058, DW_AT_name("pingPongMode")
	.dwattr $C$DW$1058, DW_AT_TI_symbol_name("_pingPongMode")
	.dwattr $C$DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1058, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1059	.dwtag  DW_TAG_member
	.dwattr $C$DW$1059, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1059, DW_AT_name("autoMode")
	.dwattr $C$DW$1059, DW_AT_TI_symbol_name("_autoMode")
	.dwattr $C$DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1059, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1060	.dwtag  DW_TAG_member
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$1060, DW_AT_name("burstLen")
	.dwattr $C$DW$1060, DW_AT_TI_symbol_name("_burstLen")
	.dwattr $C$DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1060, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1061	.dwtag  DW_TAG_member
	.dwattr $C$DW$1061, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$1061, DW_AT_name("trigger")
	.dwattr $C$DW$1061, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1061, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1062	.dwtag  DW_TAG_member
	.dwattr $C$DW$1062, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$1062, DW_AT_name("dmaEvt")
	.dwattr $C$DW$1062, DW_AT_TI_symbol_name("_dmaEvt")
	.dwattr $C$DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1062, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1063	.dwtag  DW_TAG_member
	.dwattr $C$DW$1063, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1063, DW_AT_name("dmaInt")
	.dwattr $C$DW$1063, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1063, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1064	.dwtag  DW_TAG_member
	.dwattr $C$DW$1064, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1064, DW_AT_name("chanDir")
	.dwattr $C$DW$1064, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1064, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1065	.dwtag  DW_TAG_member
	.dwattr $C$DW$1065, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$1065, DW_AT_name("trfType")
	.dwattr $C$DW$1065, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1065, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1066	.dwtag  DW_TAG_member
	.dwattr $C$DW$1066, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1066, DW_AT_name("dataLen")
	.dwattr $C$DW$1066, DW_AT_TI_symbol_name("_dataLen")
	.dwattr $C$DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1066, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1067	.dwtag  DW_TAG_member
	.dwattr $C$DW$1067, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1067, DW_AT_name("srcAddr")
	.dwattr $C$DW$1067, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1067, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1068	.dwtag  DW_TAG_member
	.dwattr $C$DW$1068, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1068, DW_AT_name("destAddr")
	.dwattr $C$DW$1068, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1068, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Config")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x17)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x75)
$C$DW$1069	.dwtag  DW_TAG_member
	.dwattr $C$DW$1069, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1069, DW_AT_name("MMCCTL")
	.dwattr $C$DW$1069, DW_AT_TI_symbol_name("_MMCCTL")
	.dwattr $C$DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1069, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1070	.dwtag  DW_TAG_member
	.dwattr $C$DW$1070, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1070, DW_AT_name("RSVD0")
	.dwattr $C$DW$1070, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1070, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1071	.dwtag  DW_TAG_member
	.dwattr $C$DW$1071, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1071, DW_AT_name("MMCCLK")
	.dwattr $C$DW$1071, DW_AT_TI_symbol_name("_MMCCLK")
	.dwattr $C$DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1071, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1072	.dwtag  DW_TAG_member
	.dwattr $C$DW$1072, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1072, DW_AT_name("RSVD1")
	.dwattr $C$DW$1072, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1072, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1073	.dwtag  DW_TAG_member
	.dwattr $C$DW$1073, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1073, DW_AT_name("MMCST0")
	.dwattr $C$DW$1073, DW_AT_TI_symbol_name("_MMCST0")
	.dwattr $C$DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1073, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1074	.dwtag  DW_TAG_member
	.dwattr $C$DW$1074, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1074, DW_AT_name("RSVD2")
	.dwattr $C$DW$1074, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1074, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1075	.dwtag  DW_TAG_member
	.dwattr $C$DW$1075, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1075, DW_AT_name("MMCST1")
	.dwattr $C$DW$1075, DW_AT_TI_symbol_name("_MMCST1")
	.dwattr $C$DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1075, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1076	.dwtag  DW_TAG_member
	.dwattr $C$DW$1076, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1076, DW_AT_name("RSVD3")
	.dwattr $C$DW$1076, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1076, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1077	.dwtag  DW_TAG_member
	.dwattr $C$DW$1077, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1077, DW_AT_name("MMCIM")
	.dwattr $C$DW$1077, DW_AT_TI_symbol_name("_MMCIM")
	.dwattr $C$DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1077, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1078	.dwtag  DW_TAG_member
	.dwattr $C$DW$1078, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1078, DW_AT_name("RSVD4")
	.dwattr $C$DW$1078, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1078, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1079	.dwtag  DW_TAG_member
	.dwattr $C$DW$1079, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1079, DW_AT_name("MMCTOR")
	.dwattr $C$DW$1079, DW_AT_TI_symbol_name("_MMCTOR")
	.dwattr $C$DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1079, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1080	.dwtag  DW_TAG_member
	.dwattr $C$DW$1080, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1080, DW_AT_name("RSVD5")
	.dwattr $C$DW$1080, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1080, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1081	.dwtag  DW_TAG_member
	.dwattr $C$DW$1081, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1081, DW_AT_name("MMCTOD")
	.dwattr $C$DW$1081, DW_AT_TI_symbol_name("_MMCTOD")
	.dwattr $C$DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1081, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1082	.dwtag  DW_TAG_member
	.dwattr $C$DW$1082, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1082, DW_AT_name("RSVD6")
	.dwattr $C$DW$1082, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1082, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1083	.dwtag  DW_TAG_member
	.dwattr $C$DW$1083, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1083, DW_AT_name("MMCBLEN")
	.dwattr $C$DW$1083, DW_AT_TI_symbol_name("_MMCBLEN")
	.dwattr $C$DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1083, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1084	.dwtag  DW_TAG_member
	.dwattr $C$DW$1084, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1084, DW_AT_name("RSVD7")
	.dwattr $C$DW$1084, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$1084, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1085	.dwtag  DW_TAG_member
	.dwattr $C$DW$1085, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1085, DW_AT_name("MMCNBLK")
	.dwattr $C$DW$1085, DW_AT_TI_symbol_name("_MMCNBLK")
	.dwattr $C$DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1085, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1086	.dwtag  DW_TAG_member
	.dwattr $C$DW$1086, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1086, DW_AT_name("RSVD8")
	.dwattr $C$DW$1086, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$1086, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$1086, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1087	.dwtag  DW_TAG_member
	.dwattr $C$DW$1087, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1087, DW_AT_name("MMCNBLC")
	.dwattr $C$DW$1087, DW_AT_TI_symbol_name("_MMCNBLC")
	.dwattr $C$DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1087, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1088	.dwtag  DW_TAG_member
	.dwattr $C$DW$1088, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1088, DW_AT_name("RSVD9")
	.dwattr $C$DW$1088, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$1088, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1089	.dwtag  DW_TAG_member
	.dwattr $C$DW$1089, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1089, DW_AT_name("MMCDRR1")
	.dwattr $C$DW$1089, DW_AT_TI_symbol_name("_MMCDRR1")
	.dwattr $C$DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$1089, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1090	.dwtag  DW_TAG_member
	.dwattr $C$DW$1090, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1090, DW_AT_name("MMCDRR2")
	.dwattr $C$DW$1090, DW_AT_TI_symbol_name("_MMCDRR2")
	.dwattr $C$DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$1090, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1091	.dwtag  DW_TAG_member
	.dwattr $C$DW$1091, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1091, DW_AT_name("RSVD10")
	.dwattr $C$DW$1091, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1091, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1092	.dwtag  DW_TAG_member
	.dwattr $C$DW$1092, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1092, DW_AT_name("MMCDXR1")
	.dwattr $C$DW$1092, DW_AT_TI_symbol_name("_MMCDXR1")
	.dwattr $C$DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1092, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1093	.dwtag  DW_TAG_member
	.dwattr $C$DW$1093, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1093, DW_AT_name("MMCDXR2")
	.dwattr $C$DW$1093, DW_AT_TI_symbol_name("_MMCDXR2")
	.dwattr $C$DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$1093, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1094	.dwtag  DW_TAG_member
	.dwattr $C$DW$1094, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1094, DW_AT_name("RSVD11")
	.dwattr $C$DW$1094, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$1094, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1095	.dwtag  DW_TAG_member
	.dwattr $C$DW$1095, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1095, DW_AT_name("MMCCMD1")
	.dwattr $C$DW$1095, DW_AT_TI_symbol_name("_MMCCMD1")
	.dwattr $C$DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$1095, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1096	.dwtag  DW_TAG_member
	.dwattr $C$DW$1096, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1096, DW_AT_name("MMCCMD2")
	.dwattr $C$DW$1096, DW_AT_TI_symbol_name("_MMCCMD2")
	.dwattr $C$DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$1096, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1097	.dwtag  DW_TAG_member
	.dwattr $C$DW$1097, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1097, DW_AT_name("RSVD12")
	.dwattr $C$DW$1097, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$1097, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1098	.dwtag  DW_TAG_member
	.dwattr $C$DW$1098, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1098, DW_AT_name("MMCARG1")
	.dwattr $C$DW$1098, DW_AT_TI_symbol_name("_MMCARG1")
	.dwattr $C$DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$1098, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1099	.dwtag  DW_TAG_member
	.dwattr $C$DW$1099, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1099, DW_AT_name("MMCARG2")
	.dwattr $C$DW$1099, DW_AT_TI_symbol_name("_MMCARG2")
	.dwattr $C$DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$1099, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1100	.dwtag  DW_TAG_member
	.dwattr $C$DW$1100, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1100, DW_AT_name("RSVD13")
	.dwattr $C$DW$1100, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$1100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1101	.dwtag  DW_TAG_member
	.dwattr $C$DW$1101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1101, DW_AT_name("MMCRSP0")
	.dwattr $C$DW$1101, DW_AT_TI_symbol_name("_MMCRSP0")
	.dwattr $C$DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$1101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1102	.dwtag  DW_TAG_member
	.dwattr $C$DW$1102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1102, DW_AT_name("MMCRSP1")
	.dwattr $C$DW$1102, DW_AT_TI_symbol_name("_MMCRSP1")
	.dwattr $C$DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$1102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1103	.dwtag  DW_TAG_member
	.dwattr $C$DW$1103, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1103, DW_AT_name("RSVD14")
	.dwattr $C$DW$1103, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$1103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1104	.dwtag  DW_TAG_member
	.dwattr $C$DW$1104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1104, DW_AT_name("MMCRSP2")
	.dwattr $C$DW$1104, DW_AT_TI_symbol_name("_MMCRSP2")
	.dwattr $C$DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$1104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1105	.dwtag  DW_TAG_member
	.dwattr $C$DW$1105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1105, DW_AT_name("MMCRSP3")
	.dwattr $C$DW$1105, DW_AT_TI_symbol_name("_MMCRSP3")
	.dwattr $C$DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$1105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1106	.dwtag  DW_TAG_member
	.dwattr $C$DW$1106, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1106, DW_AT_name("RSVD15")
	.dwattr $C$DW$1106, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$1106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1107	.dwtag  DW_TAG_member
	.dwattr $C$DW$1107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1107, DW_AT_name("MMCRSP4")
	.dwattr $C$DW$1107, DW_AT_TI_symbol_name("_MMCRSP4")
	.dwattr $C$DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$1107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1108	.dwtag  DW_TAG_member
	.dwattr $C$DW$1108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1108, DW_AT_name("MMCRSP5")
	.dwattr $C$DW$1108, DW_AT_TI_symbol_name("_MMCRSP5")
	.dwattr $C$DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$1108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1109	.dwtag  DW_TAG_member
	.dwattr $C$DW$1109, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1109, DW_AT_name("RSVD16")
	.dwattr $C$DW$1109, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$1109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1110	.dwtag  DW_TAG_member
	.dwattr $C$DW$1110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1110, DW_AT_name("MMCRSP6")
	.dwattr $C$DW$1110, DW_AT_TI_symbol_name("_MMCRSP6")
	.dwattr $C$DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$1110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1111	.dwtag  DW_TAG_member
	.dwattr $C$DW$1111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1111, DW_AT_name("MMCRSP7")
	.dwattr $C$DW$1111, DW_AT_TI_symbol_name("_MMCRSP7")
	.dwattr $C$DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$1111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1112	.dwtag  DW_TAG_member
	.dwattr $C$DW$1112, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1112, DW_AT_name("RSVD17")
	.dwattr $C$DW$1112, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$1112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1113	.dwtag  DW_TAG_member
	.dwattr $C$DW$1113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1113, DW_AT_name("MMCDRSP")
	.dwattr $C$DW$1113, DW_AT_TI_symbol_name("_MMCDRSP")
	.dwattr $C$DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$1113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1114	.dwtag  DW_TAG_member
	.dwattr $C$DW$1114, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$1114, DW_AT_name("RSVD18")
	.dwattr $C$DW$1114, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$1114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1115	.dwtag  DW_TAG_member
	.dwattr $C$DW$1115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1115, DW_AT_name("MMCCIDX")
	.dwattr $C$DW$1115, DW_AT_TI_symbol_name("_MMCCIDX")
	.dwattr $C$DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$1115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1116	.dwtag  DW_TAG_member
	.dwattr $C$DW$1116, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$1116, DW_AT_name("RSVD19")
	.dwattr $C$DW$1116, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$1116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1117	.dwtag  DW_TAG_member
	.dwattr $C$DW$1117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1117, DW_AT_name("SDIOCTL")
	.dwattr $C$DW$1117, DW_AT_TI_symbol_name("_SDIOCTL")
	.dwattr $C$DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$1117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1118	.dwtag  DW_TAG_member
	.dwattr $C$DW$1118, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1118, DW_AT_name("RSVD20")
	.dwattr $C$DW$1118, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$1118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1119	.dwtag  DW_TAG_member
	.dwattr $C$DW$1119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1119, DW_AT_name("SDIOST0")
	.dwattr $C$DW$1119, DW_AT_TI_symbol_name("_SDIOST0")
	.dwattr $C$DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$1119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1120	.dwtag  DW_TAG_member
	.dwattr $C$DW$1120, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1120, DW_AT_name("RSVD21")
	.dwattr $C$DW$1120, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0x69]
	.dwattr $C$DW$1120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1121	.dwtag  DW_TAG_member
	.dwattr $C$DW$1121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1121, DW_AT_name("SDIOIEN")
	.dwattr $C$DW$1121, DW_AT_TI_symbol_name("_SDIOIEN")
	.dwattr $C$DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$1121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1122	.dwtag  DW_TAG_member
	.dwattr $C$DW$1122, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1122, DW_AT_name("RSVD22")
	.dwattr $C$DW$1122, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6d]
	.dwattr $C$DW$1122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1123, DW_AT_name("SDIOIST")
	.dwattr $C$DW$1123, DW_AT_TI_symbol_name("_SDIOIST")
	.dwattr $C$DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$1124, DW_AT_name("RSVD23")
	.dwattr $C$DW$1124, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1125, DW_AT_name("MMCFIFOCTL")
	.dwattr $C$DW$1125, DW_AT_TI_symbol_name("_MMCFIFOCTL")
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegs")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$1126	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$77)
$C$DW$1127	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$1126)
$C$DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$1127)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x10)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdRegsOvly")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x10)
$C$DW$1128	.dwtag  DW_TAG_member
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1128, DW_AT_name("mfgId")
	.dwattr $C$DW$1128, DW_AT_TI_symbol_name("_mfgId")
	.dwattr $C$DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1129	.dwtag  DW_TAG_member
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1129, DW_AT_name("oemAppId")
	.dwattr $C$DW$1129, DW_AT_TI_symbol_name("_oemAppId")
	.dwattr $C$DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$1130, DW_AT_name("productName")
	.dwattr $C$DW$1130, DW_AT_TI_symbol_name("_productName")
	.dwattr $C$DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1131, DW_AT_name("productRev")
	.dwattr $C$DW$1131, DW_AT_TI_symbol_name("_productRev")
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1132, DW_AT_name("serialNumber")
	.dwattr $C$DW$1132, DW_AT_TI_symbol_name("_serialNumber")
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1133, DW_AT_name("month")
	.dwattr $C$DW$1133, DW_AT_TI_symbol_name("_month")
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1134, DW_AT_name("year")
	.dwattr $C$DW$1134, DW_AT_TI_symbol_name("_year")
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1135, DW_AT_name("checksum")
	.dwattr $C$DW$1135, DW_AT_TI_symbol_name("_checksum")
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardIdObj")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x17)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x22)
$C$DW$1136	.dwtag  DW_TAG_member
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1136, DW_AT_name("csdStruct")
	.dwattr $C$DW$1136, DW_AT_TI_symbol_name("_csdStruct")
	.dwattr $C$DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1137	.dwtag  DW_TAG_member
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1137, DW_AT_name("mmcProt")
	.dwattr $C$DW$1137, DW_AT_TI_symbol_name("_mmcProt")
	.dwattr $C$DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1138	.dwtag  DW_TAG_member
	.dwattr $C$DW$1138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1138, DW_AT_name("taac")
	.dwattr $C$DW$1138, DW_AT_TI_symbol_name("_taac")
	.dwattr $C$DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1139	.dwtag  DW_TAG_member
	.dwattr $C$DW$1139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1139, DW_AT_name("nsac")
	.dwattr $C$DW$1139, DW_AT_TI_symbol_name("_nsac")
	.dwattr $C$DW$1139, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1140	.dwtag  DW_TAG_member
	.dwattr $C$DW$1140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1140, DW_AT_name("tranSpeed")
	.dwattr $C$DW$1140, DW_AT_TI_symbol_name("_tranSpeed")
	.dwattr $C$DW$1140, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1141	.dwtag  DW_TAG_member
	.dwattr $C$DW$1141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1141, DW_AT_name("ccc")
	.dwattr $C$DW$1141, DW_AT_TI_symbol_name("_ccc")
	.dwattr $C$DW$1141, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1142	.dwtag  DW_TAG_member
	.dwattr $C$DW$1142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1142, DW_AT_name("readBlLen")
	.dwattr $C$DW$1142, DW_AT_TI_symbol_name("_readBlLen")
	.dwattr $C$DW$1142, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1143	.dwtag  DW_TAG_member
	.dwattr $C$DW$1143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1143, DW_AT_name("readBlPartial")
	.dwattr $C$DW$1143, DW_AT_TI_symbol_name("_readBlPartial")
	.dwattr $C$DW$1143, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1144	.dwtag  DW_TAG_member
	.dwattr $C$DW$1144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1144, DW_AT_name("writeBlkMisalign")
	.dwattr $C$DW$1144, DW_AT_TI_symbol_name("_writeBlkMisalign")
	.dwattr $C$DW$1144, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1145	.dwtag  DW_TAG_member
	.dwattr $C$DW$1145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1145, DW_AT_name("readBlkMisalign")
	.dwattr $C$DW$1145, DW_AT_TI_symbol_name("_readBlkMisalign")
	.dwattr $C$DW$1145, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1146	.dwtag  DW_TAG_member
	.dwattr $C$DW$1146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1146, DW_AT_name("dsrImp")
	.dwattr $C$DW$1146, DW_AT_TI_symbol_name("_dsrImp")
	.dwattr $C$DW$1146, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1147	.dwtag  DW_TAG_member
	.dwattr $C$DW$1147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1147, DW_AT_name("cSize")
	.dwattr $C$DW$1147, DW_AT_TI_symbol_name("_cSize")
	.dwattr $C$DW$1147, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1148	.dwtag  DW_TAG_member
	.dwattr $C$DW$1148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1148, DW_AT_name("vddRCurrMin")
	.dwattr $C$DW$1148, DW_AT_TI_symbol_name("_vddRCurrMin")
	.dwattr $C$DW$1148, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1149	.dwtag  DW_TAG_member
	.dwattr $C$DW$1149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1149, DW_AT_name("vddRCurrMax")
	.dwattr $C$DW$1149, DW_AT_TI_symbol_name("_vddRCurrMax")
	.dwattr $C$DW$1149, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1150	.dwtag  DW_TAG_member
	.dwattr $C$DW$1150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1150, DW_AT_name("vddWCurrMin")
	.dwattr $C$DW$1150, DW_AT_TI_symbol_name("_vddWCurrMin")
	.dwattr $C$DW$1150, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1151	.dwtag  DW_TAG_member
	.dwattr $C$DW$1151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1151, DW_AT_name("vddWCurrMax")
	.dwattr $C$DW$1151, DW_AT_TI_symbol_name("_vddWCurrMax")
	.dwattr $C$DW$1151, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1152	.dwtag  DW_TAG_member
	.dwattr $C$DW$1152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1152, DW_AT_name("cSizeMult")
	.dwattr $C$DW$1152, DW_AT_TI_symbol_name("_cSizeMult")
	.dwattr $C$DW$1152, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1153	.dwtag  DW_TAG_member
	.dwattr $C$DW$1153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1153, DW_AT_name("eraseBlkEnable")
	.dwattr $C$DW$1153, DW_AT_TI_symbol_name("_eraseBlkEnable")
	.dwattr $C$DW$1153, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1154	.dwtag  DW_TAG_member
	.dwattr $C$DW$1154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1154, DW_AT_name("eraseGrpSize")
	.dwattr $C$DW$1154, DW_AT_TI_symbol_name("_eraseGrpSize")
	.dwattr $C$DW$1154, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1155	.dwtag  DW_TAG_member
	.dwattr $C$DW$1155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1155, DW_AT_name("eraseGrpMult")
	.dwattr $C$DW$1155, DW_AT_TI_symbol_name("_eraseGrpMult")
	.dwattr $C$DW$1155, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$1155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1156	.dwtag  DW_TAG_member
	.dwattr $C$DW$1156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1156, DW_AT_name("wpGrpSize")
	.dwattr $C$DW$1156, DW_AT_TI_symbol_name("_wpGrpSize")
	.dwattr $C$DW$1156, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1157	.dwtag  DW_TAG_member
	.dwattr $C$DW$1157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1157, DW_AT_name("wpGrpEnable")
	.dwattr $C$DW$1157, DW_AT_TI_symbol_name("_wpGrpEnable")
	.dwattr $C$DW$1157, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1158	.dwtag  DW_TAG_member
	.dwattr $C$DW$1158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1158, DW_AT_name("defaultEcc")
	.dwattr $C$DW$1158, DW_AT_TI_symbol_name("_defaultEcc")
	.dwattr $C$DW$1158, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1159	.dwtag  DW_TAG_member
	.dwattr $C$DW$1159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1159, DW_AT_name("r2wFactor")
	.dwattr $C$DW$1159, DW_AT_TI_symbol_name("_r2wFactor")
	.dwattr $C$DW$1159, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1160	.dwtag  DW_TAG_member
	.dwattr $C$DW$1160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1160, DW_AT_name("writeBlLen")
	.dwattr $C$DW$1160, DW_AT_TI_symbol_name("_writeBlLen")
	.dwattr $C$DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1161	.dwtag  DW_TAG_member
	.dwattr $C$DW$1161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1161, DW_AT_name("writeBlPartial")
	.dwattr $C$DW$1161, DW_AT_TI_symbol_name("_writeBlPartial")
	.dwattr $C$DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1162	.dwtag  DW_TAG_member
	.dwattr $C$DW$1162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1162, DW_AT_name("contProtApp")
	.dwattr $C$DW$1162, DW_AT_TI_symbol_name("_contProtApp")
	.dwattr $C$DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1163	.dwtag  DW_TAG_member
	.dwattr $C$DW$1163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1163, DW_AT_name("fileFmtGrp")
	.dwattr $C$DW$1163, DW_AT_TI_symbol_name("_fileFmtGrp")
	.dwattr $C$DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$1163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1164	.dwtag  DW_TAG_member
	.dwattr $C$DW$1164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1164, DW_AT_name("copyFlag")
	.dwattr $C$DW$1164, DW_AT_TI_symbol_name("_copyFlag")
	.dwattr $C$DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1165	.dwtag  DW_TAG_member
	.dwattr $C$DW$1165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1165, DW_AT_name("permWriteProtect")
	.dwattr $C$DW$1165, DW_AT_TI_symbol_name("_permWriteProtect")
	.dwattr $C$DW$1165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$1165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1166	.dwtag  DW_TAG_member
	.dwattr $C$DW$1166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1166, DW_AT_name("tmpWriteProtect")
	.dwattr $C$DW$1166, DW_AT_TI_symbol_name("_tmpWriteProtect")
	.dwattr $C$DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1167	.dwtag  DW_TAG_member
	.dwattr $C$DW$1167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1167, DW_AT_name("fileFmt")
	.dwattr $C$DW$1167, DW_AT_TI_symbol_name("_fileFmt")
	.dwattr $C$DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$1167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1168	.dwtag  DW_TAG_member
	.dwattr $C$DW$1168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1168, DW_AT_name("ecc")
	.dwattr $C$DW$1168, DW_AT_TI_symbol_name("_ecc")
	.dwattr $C$DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1169	.dwtag  DW_TAG_member
	.dwattr $C$DW$1169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1169, DW_AT_name("crc")
	.dwattr $C$DW$1169, DW_AT_TI_symbol_name("_crc")
	.dwattr $C$DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$1169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardCsdObj")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x17)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x06)
$C$DW$1170	.dwtag  DW_TAG_member
	.dwattr $C$DW$1170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1170, DW_AT_name("securitySysId")
	.dwattr $C$DW$1170, DW_AT_TI_symbol_name("_securitySysId")
	.dwattr $C$DW$1170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1171	.dwtag  DW_TAG_member
	.dwattr $C$DW$1171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1171, DW_AT_name("securitySysVers")
	.dwattr $C$DW$1171, DW_AT_TI_symbol_name("_securitySysVers")
	.dwattr $C$DW$1171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1172	.dwtag  DW_TAG_member
	.dwattr $C$DW$1172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1172, DW_AT_name("maxLicenses")
	.dwattr $C$DW$1172, DW_AT_TI_symbol_name("_maxLicenses")
	.dwattr $C$DW$1172, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1173	.dwtag  DW_TAG_member
	.dwattr $C$DW$1173, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1173, DW_AT_name("xStatus")
	.dwattr $C$DW$1173, DW_AT_TI_symbol_name("_xStatus")
	.dwattr $C$DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardXCsdObj")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x17)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x1e)
$C$DW$1174	.dwtag  DW_TAG_member
	.dwattr $C$DW$1174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1174, DW_AT_name("rca")
	.dwattr $C$DW$1174, DW_AT_TI_symbol_name("_rca")
	.dwattr $C$DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1175	.dwtag  DW_TAG_member
	.dwattr $C$DW$1175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1175, DW_AT_name("ST0")
	.dwattr $C$DW$1175, DW_AT_TI_symbol_name("_ST0")
	.dwattr $C$DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1176	.dwtag  DW_TAG_member
	.dwattr $C$DW$1176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1176, DW_AT_name("ST1")
	.dwattr $C$DW$1176, DW_AT_TI_symbol_name("_ST1")
	.dwattr $C$DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1177	.dwtag  DW_TAG_member
	.dwattr $C$DW$1177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1177, DW_AT_name("cardIndex")
	.dwattr $C$DW$1177, DW_AT_TI_symbol_name("_cardIndex")
	.dwattr $C$DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1178	.dwtag  DW_TAG_member
	.dwattr $C$DW$1178, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1178, DW_AT_name("maxXfrRate")
	.dwattr $C$DW$1178, DW_AT_TI_symbol_name("_maxXfrRate")
	.dwattr $C$DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1179	.dwtag  DW_TAG_member
	.dwattr $C$DW$1179, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1179, DW_AT_name("readAccessTime")
	.dwattr $C$DW$1179, DW_AT_TI_symbol_name("_readAccessTime")
	.dwattr $C$DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1180	.dwtag  DW_TAG_member
	.dwattr $C$DW$1180, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1180, DW_AT_name("cardCapacity")
	.dwattr $C$DW$1180, DW_AT_TI_symbol_name("_cardCapacity")
	.dwattr $C$DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1181	.dwtag  DW_TAG_member
	.dwattr $C$DW$1181, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1181, DW_AT_name("blockLength")
	.dwattr $C$DW$1181, DW_AT_TI_symbol_name("_blockLength")
	.dwattr $C$DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1182	.dwtag  DW_TAG_member
	.dwattr $C$DW$1182, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1182, DW_AT_name("totalSectors")
	.dwattr $C$DW$1182, DW_AT_TI_symbol_name("_totalSectors")
	.dwattr $C$DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1183	.dwtag  DW_TAG_member
	.dwattr $C$DW$1183, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1183, DW_AT_name("lastAddrRead")
	.dwattr $C$DW$1183, DW_AT_TI_symbol_name("_lastAddrRead")
	.dwattr $C$DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1184	.dwtag  DW_TAG_member
	.dwattr $C$DW$1184, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1184, DW_AT_name("lastAddrWritten")
	.dwattr $C$DW$1184, DW_AT_TI_symbol_name("_lastAddrWritten")
	.dwattr $C$DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1185	.dwtag  DW_TAG_member
	.dwattr $C$DW$1185, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$1185, DW_AT_name("cardType")
	.dwattr $C$DW$1185, DW_AT_TI_symbol_name("_cardType")
	.dwattr $C$DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1186	.dwtag  DW_TAG_member
	.dwattr $C$DW$1186, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1186, DW_AT_name("cid")
	.dwattr $C$DW$1186, DW_AT_TI_symbol_name("_cid")
	.dwattr $C$DW$1186, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1187	.dwtag  DW_TAG_member
	.dwattr $C$DW$1187, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$1187, DW_AT_name("csd")
	.dwattr $C$DW$1187, DW_AT_TI_symbol_name("_csd")
	.dwattr $C$DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1188	.dwtag  DW_TAG_member
	.dwattr $C$DW$1188, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$1188, DW_AT_name("xcsd")
	.dwattr $C$DW$1188, DW_AT_TI_symbol_name("_xcsd")
	.dwattr $C$DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1189	.dwtag  DW_TAG_member
	.dwattr $C$DW$1189, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1189, DW_AT_name("sdHcDetected")
	.dwattr $C$DW$1189, DW_AT_TI_symbol_name("_sdHcDetected")
	.dwattr $C$DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1190	.dwtag  DW_TAG_member
	.dwattr $C$DW$1190, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1190, DW_AT_name("mmcHcDetected")
	.dwattr $C$DW$1190, DW_AT_TI_symbol_name("_mmcHcDetected")
	.dwattr $C$DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$1190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1191	.dwtag  DW_TAG_member
	.dwattr $C$DW$1191, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1191, DW_AT_name("cardAtaFsOpen")
	.dwattr $C$DW$1191, DW_AT_TI_symbol_name("_cardAtaFsOpen")
	.dwattr $C$DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1192	.dwtag  DW_TAG_member
	.dwattr $C$DW$1192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1192, DW_AT_name("cardMscStatus")
	.dwattr $C$DW$1192, DW_AT_TI_symbol_name("_cardMscStatus")
	.dwattr $C$DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$1192, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardObj")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x17)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x18)
$C$DW$1193	.dwtag  DW_TAG_member
	.dwattr $C$DW$1193, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$1193, DW_AT_name("isr")
	.dwattr $C$DW$1193, DW_AT_TI_symbol_name("_isr")
	.dwattr $C$DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCallBackObj")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x08)
$C$DW$1194	.dwtag  DW_TAG_member
	.dwattr $C$DW$1194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1194, DW_AT_name("slice127_112")
	.dwattr $C$DW$1194, DW_AT_TI_symbol_name("_slice127_112")
	.dwattr $C$DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1195	.dwtag  DW_TAG_member
	.dwattr $C$DW$1195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1195, DW_AT_name("slice111_96")
	.dwattr $C$DW$1195, DW_AT_TI_symbol_name("_slice111_96")
	.dwattr $C$DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1196	.dwtag  DW_TAG_member
	.dwattr $C$DW$1196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1196, DW_AT_name("slice95_80")
	.dwattr $C$DW$1196, DW_AT_TI_symbol_name("_slice95_80")
	.dwattr $C$DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1197	.dwtag  DW_TAG_member
	.dwattr $C$DW$1197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1197, DW_AT_name("slice79_64")
	.dwattr $C$DW$1197, DW_AT_TI_symbol_name("_slice79_64")
	.dwattr $C$DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1198	.dwtag  DW_TAG_member
	.dwattr $C$DW$1198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1198, DW_AT_name("slice63_48")
	.dwattr $C$DW$1198, DW_AT_TI_symbol_name("_slice63_48")
	.dwattr $C$DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1199	.dwtag  DW_TAG_member
	.dwattr $C$DW$1199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1199, DW_AT_name("slice47_32")
	.dwattr $C$DW$1199, DW_AT_TI_symbol_name("_slice47_32")
	.dwattr $C$DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1200	.dwtag  DW_TAG_member
	.dwattr $C$DW$1200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1200, DW_AT_name("slice31_16")
	.dwattr $C$DW$1200, DW_AT_TI_symbol_name("_slice31_16")
	.dwattr $C$DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1201	.dwtag  DW_TAG_member
	.dwattr $C$DW$1201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1201, DW_AT_name("slice15_0")
	.dwattr $C$DW$1201, DW_AT_TI_symbol_name("_slice15_0")
	.dwattr $C$DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$75

$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDCidStruct")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x08)
$C$DW$1202	.dwtag  DW_TAG_member
	.dwattr $C$DW$1202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1202, DW_AT_name("slice127_112")
	.dwattr $C$DW$1202, DW_AT_TI_symbol_name("_slice127_112")
	.dwattr $C$DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1203	.dwtag  DW_TAG_member
	.dwattr $C$DW$1203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1203, DW_AT_name("slice111_96")
	.dwattr $C$DW$1203, DW_AT_TI_symbol_name("_slice111_96")
	.dwattr $C$DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1204	.dwtag  DW_TAG_member
	.dwattr $C$DW$1204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1204, DW_AT_name("slice95_80")
	.dwattr $C$DW$1204, DW_AT_TI_symbol_name("_slice95_80")
	.dwattr $C$DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1205	.dwtag  DW_TAG_member
	.dwattr $C$DW$1205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1205, DW_AT_name("slice79_64")
	.dwattr $C$DW$1205, DW_AT_TI_symbol_name("_slice79_64")
	.dwattr $C$DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1206	.dwtag  DW_TAG_member
	.dwattr $C$DW$1206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1206, DW_AT_name("slice63_48")
	.dwattr $C$DW$1206, DW_AT_TI_symbol_name("_slice63_48")
	.dwattr $C$DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1207	.dwtag  DW_TAG_member
	.dwattr $C$DW$1207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1207, DW_AT_name("slice47_32")
	.dwattr $C$DW$1207, DW_AT_TI_symbol_name("_slice47_32")
	.dwattr $C$DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1208	.dwtag  DW_TAG_member
	.dwattr $C$DW$1208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1208, DW_AT_name("slice31_16")
	.dwattr $C$DW$1208, DW_AT_TI_symbol_name("_slice31_16")
	.dwattr $C$DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1209	.dwtag  DW_TAG_member
	.dwattr $C$DW$1209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1209, DW_AT_name("slice15_0")
	.dwattr $C$DW$1209, DW_AT_TI_symbol_name("_slice15_0")
	.dwattr $C$DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSDCsdStruct")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x40)
$C$DW$1210	.dwtag  DW_TAG_member
	.dwattr $C$DW$1210, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$1210, DW_AT_name("mmcRegs")
	.dwattr $C$DW$1210, DW_AT_TI_symbol_name("_mmcRegs")
	.dwattr $C$DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1211	.dwtag  DW_TAG_member
	.dwattr $C$DW$1211, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$1211, DW_AT_name("cardObj")
	.dwattr $C$DW$1211, DW_AT_TI_symbol_name("_cardObj")
	.dwattr $C$DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1212	.dwtag  DW_TAG_member
	.dwattr $C$DW$1212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1212, DW_AT_name("numCardsActive")
	.dwattr $C$DW$1212, DW_AT_TI_symbol_name("_numCardsActive")
	.dwattr $C$DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1213	.dwtag  DW_TAG_member
	.dwattr $C$DW$1213, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$1213, DW_AT_name("callBackTbl")
	.dwattr $C$DW$1213, DW_AT_TI_symbol_name("_callBackTbl")
	.dwattr $C$DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1214	.dwtag  DW_TAG_member
	.dwattr $C$DW$1214, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$1214, DW_AT_name("opMode")
	.dwattr $C$DW$1214, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1215	.dwtag  DW_TAG_member
	.dwattr $C$DW$1215, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$1215, DW_AT_name("hDmaWrite")
	.dwattr $C$DW$1215, DW_AT_TI_symbol_name("_hDmaWrite")
	.dwattr $C$DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1216	.dwtag  DW_TAG_member
	.dwattr $C$DW$1216, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$1216, DW_AT_name("hDmaRead")
	.dwattr $C$DW$1216, DW_AT_TI_symbol_name("_hDmaRead")
	.dwattr $C$DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1217	.dwtag  DW_TAG_member
	.dwattr $C$DW$1217, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$1217, DW_AT_name("dmaWriteCfg")
	.dwattr $C$DW$1217, DW_AT_TI_symbol_name("_dmaWriteCfg")
	.dwattr $C$DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1218	.dwtag  DW_TAG_member
	.dwattr $C$DW$1218, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$1218, DW_AT_name("dmaReadCfg")
	.dwattr $C$DW$1218, DW_AT_TI_symbol_name("_dmaReadCfg")
	.dwattr $C$DW$1218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1219	.dwtag  DW_TAG_member
	.dwattr $C$DW$1219, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$1219, DW_AT_name("dataTransferCallback")
	.dwattr $C$DW$1219, DW_AT_TI_symbol_name("_dataTransferCallback")
	.dwattr $C$DW$1219, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1220	.dwtag  DW_TAG_member
	.dwattr $C$DW$1220, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1220, DW_AT_name("isCallbackSet")
	.dwattr $C$DW$1220, DW_AT_TI_symbol_name("_isCallbackSet")
	.dwattr $C$DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1221	.dwtag  DW_TAG_member
	.dwattr $C$DW$1221, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$1221, DW_AT_name("cidSliceInfo")
	.dwattr $C$DW$1221, DW_AT_TI_symbol_name("_cidSliceInfo")
	.dwattr $C$DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$1221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1222	.dwtag  DW_TAG_member
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$1222, DW_AT_name("csdSliceInfo")
	.dwattr $C$DW$1222, DW_AT_TI_symbol_name("_csdSliceInfo")
	.dwattr $C$DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$1222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1223	.dwtag  DW_TAG_member
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$1223, DW_AT_name("readEndianMode")
	.dwattr $C$DW$1223, DW_AT_TI_symbol_name("_readEndianMode")
	.dwattr $C$DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$1223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1224	.dwtag  DW_TAG_member
	.dwattr $C$DW$1224, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$1224, DW_AT_name("writeEndianMode")
	.dwattr $C$DW$1224, DW_AT_TI_symbol_name("_writeEndianMode")
	.dwattr $C$DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$1224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1225	.dwtag  DW_TAG_member
	.dwattr $C$DW$1225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1225, DW_AT_name("blockLen")
	.dwattr $C$DW$1225, DW_AT_TI_symbol_name("_blockLen")
	.dwattr $C$DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x3f]
	.dwattr $C$DW$1225, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$98

$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCControllerObj")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x17)
$C$DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdHandle")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x07)
$C$DW$1226	.dwtag  DW_TAG_member
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1226, DW_AT_name("dmaEnable")
	.dwattr $C$DW$1226, DW_AT_TI_symbol_name("_dmaEnable")
	.dwattr $C$DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1227	.dwtag  DW_TAG_member
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1227, DW_AT_name("dat3EdgeDetection")
	.dwattr $C$DW$1227, DW_AT_TI_symbol_name("_dat3EdgeDetection")
	.dwattr $C$DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1228	.dwtag  DW_TAG_member
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1228, DW_AT_name("enableClkPin")
	.dwattr $C$DW$1228, DW_AT_TI_symbol_name("_enableClkPin")
	.dwattr $C$DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1229	.dwtag  DW_TAG_member
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1229, DW_AT_name("cdiv")
	.dwattr $C$DW$1229, DW_AT_TI_symbol_name("_cdiv")
	.dwattr $C$DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1230	.dwtag  DW_TAG_member
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1230, DW_AT_name("rspTimeout")
	.dwattr $C$DW$1230, DW_AT_TI_symbol_name("_rspTimeout")
	.dwattr $C$DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1231	.dwtag  DW_TAG_member
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1231, DW_AT_name("dataTimeout")
	.dwattr $C$DW$1231, DW_AT_TI_symbol_name("_dataTimeout")
	.dwattr $C$DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1232	.dwtag  DW_TAG_member
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1232, DW_AT_name("blockLen")
	.dwattr $C$DW$1232, DW_AT_TI_symbol_name("_blockLen")
	.dwattr $C$DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1232, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$99

$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCSetupNative")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x17)

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x07)
$C$DW$1233	.dwtag  DW_TAG_member
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1233, DW_AT_name("mmcctl")
	.dwattr $C$DW$1233, DW_AT_TI_symbol_name("_mmcctl")
	.dwattr $C$DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1234	.dwtag  DW_TAG_member
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1234, DW_AT_name("mmcclk")
	.dwattr $C$DW$1234, DW_AT_TI_symbol_name("_mmcclk")
	.dwattr $C$DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1235	.dwtag  DW_TAG_member
	.dwattr $C$DW$1235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1235, DW_AT_name("mmcim")
	.dwattr $C$DW$1235, DW_AT_TI_symbol_name("_mmcim")
	.dwattr $C$DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1236	.dwtag  DW_TAG_member
	.dwattr $C$DW$1236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1236, DW_AT_name("mmctor")
	.dwattr $C$DW$1236, DW_AT_TI_symbol_name("_mmctor")
	.dwattr $C$DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1237	.dwtag  DW_TAG_member
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1237, DW_AT_name("mmctod")
	.dwattr $C$DW$1237, DW_AT_TI_symbol_name("_mmctod")
	.dwattr $C$DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1238	.dwtag  DW_TAG_member
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1238, DW_AT_name("mmcblen")
	.dwattr $C$DW$1238, DW_AT_TI_symbol_name("_mmcblen")
	.dwattr $C$DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1239	.dwtag  DW_TAG_member
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1239, DW_AT_name("mmcnblk")
	.dwattr $C$DW$1239, DW_AT_TI_symbol_name("_mmcnblk")
	.dwattr $C$DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1239, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$100

$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCConfig")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
$C$DW$T$138	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$138, DW_AT_address_class(0x17)

$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x05)
$C$DW$1240	.dwtag  DW_TAG_member
	.dwattr $C$DW$1240, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1240, DW_AT_name("pingPongEnable")
	.dwattr $C$DW$1240, DW_AT_TI_symbol_name("_pingPongEnable")
	.dwattr $C$DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1241	.dwtag  DW_TAG_member
	.dwattr $C$DW$1241, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1241, DW_AT_name("autoMode")
	.dwattr $C$DW$1241, DW_AT_TI_symbol_name("_autoMode")
	.dwattr $C$DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1242	.dwtag  DW_TAG_member
	.dwattr $C$DW$1242, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$1242, DW_AT_name("burstLen")
	.dwattr $C$DW$1242, DW_AT_TI_symbol_name("_burstLen")
	.dwattr $C$DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1243	.dwtag  DW_TAG_member
	.dwattr $C$DW$1243, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1243, DW_AT_name("dmaInt")
	.dwattr $C$DW$1243, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1244	.dwtag  DW_TAG_member
	.dwattr $C$DW$1244, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$1244, DW_AT_name("chanDir")
	.dwattr $C$DW$1244, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$101

$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdDmaConfig")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
$C$DW$T$140	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_address_class(0x17)

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x24)
$C$DW$1245	.dwtag  DW_TAG_member
	.dwattr $C$DW$1245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1245, DW_AT_name("supCmdSet")
	.dwattr $C$DW$1245, DW_AT_TI_symbol_name("_supCmdSet")
	.dwattr $C$DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1246	.dwtag  DW_TAG_member
	.dwattr $C$DW$1246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1246, DW_AT_name("bootInfo")
	.dwattr $C$DW$1246, DW_AT_TI_symbol_name("_bootInfo")
	.dwattr $C$DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1247	.dwtag  DW_TAG_member
	.dwattr $C$DW$1247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1247, DW_AT_name("bootPartSize")
	.dwattr $C$DW$1247, DW_AT_TI_symbol_name("_bootPartSize")
	.dwattr $C$DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1248	.dwtag  DW_TAG_member
	.dwattr $C$DW$1248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1248, DW_AT_name("accessSize")
	.dwattr $C$DW$1248, DW_AT_TI_symbol_name("_accessSize")
	.dwattr $C$DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1249	.dwtag  DW_TAG_member
	.dwattr $C$DW$1249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1249, DW_AT_name("hcEraseUnitSize")
	.dwattr $C$DW$1249, DW_AT_TI_symbol_name("_hcEraseUnitSize")
	.dwattr $C$DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1250	.dwtag  DW_TAG_member
	.dwattr $C$DW$1250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1250, DW_AT_name("hcEraseTimeout")
	.dwattr $C$DW$1250, DW_AT_TI_symbol_name("_hcEraseTimeout")
	.dwattr $C$DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1251	.dwtag  DW_TAG_member
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1251, DW_AT_name("reliableWrSectCnt")
	.dwattr $C$DW$1251, DW_AT_TI_symbol_name("_reliableWrSectCnt")
	.dwattr $C$DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1252	.dwtag  DW_TAG_member
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1252, DW_AT_name("hcWrProtGrpSize")
	.dwattr $C$DW$1252, DW_AT_TI_symbol_name("_hcWrProtGrpSize")
	.dwattr $C$DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1253	.dwtag  DW_TAG_member
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1253, DW_AT_name("sleepCurrVCC")
	.dwattr $C$DW$1253, DW_AT_TI_symbol_name("_sleepCurrVCC")
	.dwattr $C$DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1254	.dwtag  DW_TAG_member
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1254, DW_AT_name("sleepCurrVCCQ")
	.dwattr $C$DW$1254, DW_AT_TI_symbol_name("_sleepCurrVCCQ")
	.dwattr $C$DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1255	.dwtag  DW_TAG_member
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1255, DW_AT_name("sleepAwakeTimeout")
	.dwattr $C$DW$1255, DW_AT_TI_symbol_name("_sleepAwakeTimeout")
	.dwattr $C$DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1256	.dwtag  DW_TAG_member
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$1256, DW_AT_name("sectCnt")
	.dwattr $C$DW$1256, DW_AT_TI_symbol_name("_sectCnt")
	.dwattr $C$DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1257	.dwtag  DW_TAG_member
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1257, DW_AT_name("minWrPerFor8bitAt52MHz")
	.dwattr $C$DW$1257, DW_AT_TI_symbol_name("_minWrPerFor8bitAt52MHz")
	.dwattr $C$DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1258	.dwtag  DW_TAG_member
	.dwattr $C$DW$1258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1258, DW_AT_name("minRdPerFor8bitAt52MHz")
	.dwattr $C$DW$1258, DW_AT_TI_symbol_name("_minRdPerFor8bitAt52MHz")
	.dwattr $C$DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1259	.dwtag  DW_TAG_member
	.dwattr $C$DW$1259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1259, DW_AT_name("minWrPerFor8bitAt26MHz")
	.dwattr $C$DW$1259, DW_AT_TI_symbol_name("_minWrPerFor8bitAt26MHz")
	.dwattr $C$DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1260	.dwtag  DW_TAG_member
	.dwattr $C$DW$1260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1260, DW_AT_name("minRdPerFor8bitAt26MHz")
	.dwattr $C$DW$1260, DW_AT_TI_symbol_name("_minRdPerFor8bitAt26MHz")
	.dwattr $C$DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1261	.dwtag  DW_TAG_member
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1261, DW_AT_name("minWrPerFor4bitAt26MHz")
	.dwattr $C$DW$1261, DW_AT_TI_symbol_name("_minWrPerFor4bitAt26MHz")
	.dwattr $C$DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1262	.dwtag  DW_TAG_member
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1262, DW_AT_name("minRdPerFor4bitAt26MHz")
	.dwattr $C$DW$1262, DW_AT_TI_symbol_name("_minRdPerFor4bitAt26MHz")
	.dwattr $C$DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$1262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1263	.dwtag  DW_TAG_member
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1263, DW_AT_name("powClassFor26MHzAt3_6V")
	.dwattr $C$DW$1263, DW_AT_TI_symbol_name("_powClassFor26MHzAt3_6V")
	.dwattr $C$DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1264	.dwtag  DW_TAG_member
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1264, DW_AT_name("powClassFor52MHzAt3_6V")
	.dwattr $C$DW$1264, DW_AT_TI_symbol_name("_powClassFor52MHzAt3_6V")
	.dwattr $C$DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1265	.dwtag  DW_TAG_member
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1265, DW_AT_name("powClassFor26MHzAt1_95V")
	.dwattr $C$DW$1265, DW_AT_TI_symbol_name("_powClassFor26MHzAt1_95V")
	.dwattr $C$DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1266	.dwtag  DW_TAG_member
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1266, DW_AT_name("powClassFor52MHzAt1_95V")
	.dwattr $C$DW$1266, DW_AT_TI_symbol_name("_powClassFor52MHzAt1_95V")
	.dwattr $C$DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1267	.dwtag  DW_TAG_member
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1267, DW_AT_name("cardType")
	.dwattr $C$DW$1267, DW_AT_TI_symbol_name("_cardType")
	.dwattr $C$DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1267, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1268	.dwtag  DW_TAG_member
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1268, DW_AT_name("csdVer")
	.dwattr $C$DW$1268, DW_AT_TI_symbol_name("_csdVer")
	.dwattr $C$DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1269	.dwtag  DW_TAG_member
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1269, DW_AT_name("extCsdVer")
	.dwattr $C$DW$1269, DW_AT_TI_symbol_name("_extCsdVer")
	.dwattr $C$DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1269, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1270	.dwtag  DW_TAG_member
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1270, DW_AT_name("cmdSet")
	.dwattr $C$DW$1270, DW_AT_TI_symbol_name("_cmdSet")
	.dwattr $C$DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$1270, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1271	.dwtag  DW_TAG_member
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1271, DW_AT_name("cmdSetRev")
	.dwattr $C$DW$1271, DW_AT_TI_symbol_name("_cmdSetRev")
	.dwattr $C$DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1271, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1272	.dwtag  DW_TAG_member
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1272, DW_AT_name("powClass")
	.dwattr $C$DW$1272, DW_AT_TI_symbol_name("_powClass")
	.dwattr $C$DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$1272, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1273	.dwtag  DW_TAG_member
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1273, DW_AT_name("highSpeedIfTiming")
	.dwattr $C$DW$1273, DW_AT_TI_symbol_name("_highSpeedIfTiming")
	.dwattr $C$DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1273, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1274	.dwtag  DW_TAG_member
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1274, DW_AT_name("busWidthMode")
	.dwattr $C$DW$1274, DW_AT_TI_symbol_name("_busWidthMode")
	.dwattr $C$DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$1274, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1275	.dwtag  DW_TAG_member
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1275, DW_AT_name("erasedMemContent")
	.dwattr $C$DW$1275, DW_AT_TI_symbol_name("_erasedMemContent")
	.dwattr $C$DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1275, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1276	.dwtag  DW_TAG_member
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1276, DW_AT_name("bootCfg")
	.dwattr $C$DW$1276, DW_AT_TI_symbol_name("_bootCfg")
	.dwattr $C$DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$1276, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1277	.dwtag  DW_TAG_member
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1277, DW_AT_name("bootBusWidth")
	.dwattr $C$DW$1277, DW_AT_TI_symbol_name("_bootBusWidth")
	.dwattr $C$DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1277, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1278	.dwtag  DW_TAG_member
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1278, DW_AT_name("highDensEraseGrpDef")
	.dwattr $C$DW$1278, DW_AT_TI_symbol_name("_highDensEraseGrpDef")
	.dwattr $C$DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$1278, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$102

$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCardExtCsdObj")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
$C$DW$T$142	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_address_class(0x17)

$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x07)
$C$DW$1279	.dwtag  DW_TAG_member
	.dwattr $C$DW$1279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1279, DW_AT_name("idx")
	.dwattr $C$DW$1279, DW_AT_TI_symbol_name("_idx")
	.dwattr $C$DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1279, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1280	.dwtag  DW_TAG_member
	.dwattr $C$DW$1280, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$1280, DW_AT_name("respType")
	.dwattr $C$DW$1280, DW_AT_TI_symbol_name("_respType")
	.dwattr $C$DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1280, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1281	.dwtag  DW_TAG_member
	.dwattr $C$DW$1281, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$1281, DW_AT_name("busy")
	.dwattr $C$DW$1281, DW_AT_TI_symbol_name("_busy")
	.dwattr $C$DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1281, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1282	.dwtag  DW_TAG_member
	.dwattr $C$DW$1282, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$1282, DW_AT_name("type")
	.dwattr $C$DW$1282, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1282, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1283	.dwtag  DW_TAG_member
	.dwattr $C$DW$1283, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$1283, DW_AT_name("dir")
	.dwattr $C$DW$1283, DW_AT_TI_symbol_name("_dir")
	.dwattr $C$DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1283, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1284	.dwtag  DW_TAG_member
	.dwattr $C$DW$1284, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$1284, DW_AT_name("lineChr")
	.dwattr $C$DW$1284, DW_AT_TI_symbol_name("_lineChr")
	.dwattr $C$DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1284, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1285	.dwtag  DW_TAG_member
	.dwattr $C$DW$1285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1285, DW_AT_name("cmdErr")
	.dwattr $C$DW$1285, DW_AT_TI_symbol_name("_cmdErr")
	.dwattr $C$DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$113

$C$DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MmcsdCmd")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
$C$DW$T$144	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x17)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x48)
$C$DW$1286	.dwtag  DW_TAG_member
	.dwattr $C$DW$1286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1286, DW_AT_name("EBSR")
	.dwattr $C$DW$1286, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1287	.dwtag  DW_TAG_member
	.dwattr $C$DW$1287, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1287, DW_AT_name("RSVD0")
	.dwattr $C$DW$1287, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1288	.dwtag  DW_TAG_member
	.dwattr $C$DW$1288, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1288, DW_AT_name("PCGCR1")
	.dwattr $C$DW$1288, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1288, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1289	.dwtag  DW_TAG_member
	.dwattr $C$DW$1289, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1289, DW_AT_name("PCGCR2")
	.dwattr $C$DW$1289, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$1289, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1289, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1290	.dwtag  DW_TAG_member
	.dwattr $C$DW$1290, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1290, DW_AT_name("PSRCR")
	.dwattr $C$DW$1290, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1290, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1291	.dwtag  DW_TAG_member
	.dwattr $C$DW$1291, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1291, DW_AT_name("PRCR")
	.dwattr $C$DW$1291, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1291, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1292	.dwtag  DW_TAG_member
	.dwattr $C$DW$1292, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$1292, DW_AT_name("RSVD1")
	.dwattr $C$DW$1292, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1292, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1293	.dwtag  DW_TAG_member
	.dwattr $C$DW$1293, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1293, DW_AT_name("TIAFR")
	.dwattr $C$DW$1293, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1294	.dwtag  DW_TAG_member
	.dwattr $C$DW$1294, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1294, DW_AT_name("RSVD2")
	.dwattr $C$DW$1294, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1294, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1295	.dwtag  DW_TAG_member
	.dwattr $C$DW$1295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1295, DW_AT_name("ODSCR")
	.dwattr $C$DW$1295, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$1295, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1295, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1296	.dwtag  DW_TAG_member
	.dwattr $C$DW$1296, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1296, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$1296, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1297	.dwtag  DW_TAG_member
	.dwattr $C$DW$1297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1297, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$1297, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1298	.dwtag  DW_TAG_member
	.dwattr $C$DW$1298, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1298, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$1298, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1299	.dwtag  DW_TAG_member
	.dwattr $C$DW$1299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1299, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$1299, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1300	.dwtag  DW_TAG_member
	.dwattr $C$DW$1300, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1300, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$1300, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$1300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1301	.dwtag  DW_TAG_member
	.dwattr $C$DW$1301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1301, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$1301, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1302	.dwtag  DW_TAG_member
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1302, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$1302, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$1302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1303	.dwtag  DW_TAG_member
	.dwattr $C$DW$1303, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1303, DW_AT_name("CCR1")
	.dwattr $C$DW$1303, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1304	.dwtag  DW_TAG_member
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1304, DW_AT_name("CCR2")
	.dwattr $C$DW$1304, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$1304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1305	.dwtag  DW_TAG_member
	.dwattr $C$DW$1305, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1305, DW_AT_name("CGCR1")
	.dwattr $C$DW$1305, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1306	.dwtag  DW_TAG_member
	.dwattr $C$DW$1306, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1306, DW_AT_name("CGCR2")
	.dwattr $C$DW$1306, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$1306, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1307	.dwtag  DW_TAG_member
	.dwattr $C$DW$1307, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1307, DW_AT_name("CGCR3")
	.dwattr $C$DW$1307, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1308	.dwtag  DW_TAG_member
	.dwattr $C$DW$1308, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1308, DW_AT_name("CGCR4")
	.dwattr $C$DW$1308, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$1308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1309	.dwtag  DW_TAG_member
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1309, DW_AT_name("CCSSR")
	.dwattr $C$DW$1309, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1310	.dwtag  DW_TAG_member
	.dwattr $C$DW$1310, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1310, DW_AT_name("RSVD3")
	.dwattr $C$DW$1310, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$1310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1311	.dwtag  DW_TAG_member
	.dwattr $C$DW$1311, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1311, DW_AT_name("ECDR")
	.dwattr $C$DW$1311, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1312	.dwtag  DW_TAG_member
	.dwattr $C$DW$1312, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1312, DW_AT_name("RSVD4")
	.dwattr $C$DW$1312, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$1312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1313	.dwtag  DW_TAG_member
	.dwattr $C$DW$1313, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1313, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$1313, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$1313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1314	.dwtag  DW_TAG_member
	.dwattr $C$DW$1314, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1314, DW_AT_name("RSVD5")
	.dwattr $C$DW$1314, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$1314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1315	.dwtag  DW_TAG_member
	.dwattr $C$DW$1315, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1315, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$1315, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1316	.dwtag  DW_TAG_member
	.dwattr $C$DW$1316, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1316, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$1316, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$1316, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1317	.dwtag  DW_TAG_member
	.dwattr $C$DW$1317, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1317, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$1317, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1318	.dwtag  DW_TAG_member
	.dwattr $C$DW$1318, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1318, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$1318, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$1318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1319	.dwtag  DW_TAG_member
	.dwattr $C$DW$1319, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1319, DW_AT_name("RSVD6")
	.dwattr $C$DW$1319, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$1319, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1320	.dwtag  DW_TAG_member
	.dwattr $C$DW$1320, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1320, DW_AT_name("DMAIFR")
	.dwattr $C$DW$1320, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$1320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1321	.dwtag  DW_TAG_member
	.dwattr $C$DW$1321, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1321, DW_AT_name("DMAIER")
	.dwattr $C$DW$1321, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$1321, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1322	.dwtag  DW_TAG_member
	.dwattr $C$DW$1322, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1322, DW_AT_name("USBSCR")
	.dwattr $C$DW$1322, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$1322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1323	.dwtag  DW_TAG_member
	.dwattr $C$DW$1323, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1323, DW_AT_name("ESCR")
	.dwattr $C$DW$1323, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$1323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1324	.dwtag  DW_TAG_member
	.dwattr $C$DW$1324, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1324, DW_AT_name("RSVD7")
	.dwattr $C$DW$1324, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$1324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1325	.dwtag  DW_TAG_member
	.dwattr $C$DW$1325, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1325, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$1325, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$1325, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1326	.dwtag  DW_TAG_member
	.dwattr $C$DW$1326, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1326, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$1326, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$1326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1327	.dwtag  DW_TAG_member
	.dwattr $C$DW$1327, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1327, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$1327, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$1327, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1328	.dwtag  DW_TAG_member
	.dwattr $C$DW$1328, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1328, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$1328, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$1328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1329	.dwtag  DW_TAG_member
	.dwattr $C$DW$1329, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1329, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$1329, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$1329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1330	.dwtag  DW_TAG_member
	.dwattr $C$DW$1330, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$1330, DW_AT_name("RSVD8")
	.dwattr $C$DW$1330, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$1330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1331	.dwtag  DW_TAG_member
	.dwattr $C$DW$1331, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1331, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$1331, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$1331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1332	.dwtag  DW_TAG_member
	.dwattr $C$DW$1332, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1332, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$1332, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$1332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1333	.dwtag  DW_TAG_member
	.dwattr $C$DW$1333, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1333, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$1333, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$1333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1334	.dwtag  DW_TAG_member
	.dwattr $C$DW$1334, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1334, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$1334, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$1334, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1335	.dwtag  DW_TAG_member
	.dwattr $C$DW$1335, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1335, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$1335, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$1335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1336	.dwtag  DW_TAG_member
	.dwattr $C$DW$1336, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1336, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$1336, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$1336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1337	.dwtag  DW_TAG_member
	.dwattr $C$DW$1337, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1337, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$1337, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$1337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1338	.dwtag  DW_TAG_member
	.dwattr $C$DW$1338, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1338, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$1338, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$1338, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
$C$DW$1339	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1339, DW_AT_type(*$C$DW$T$145)
$C$DW$1340	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$1340, DW_AT_type(*$C$DW$1339)
$C$DW$T$146	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$1340)
$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x10)
$C$DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x4c)
$C$DW$1341	.dwtag  DW_TAG_member
	.dwattr $C$DW$1341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1341, DW_AT_name("IER0")
	.dwattr $C$DW$1341, DW_AT_TI_symbol_name("_IER0")
	.dwattr $C$DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1342	.dwtag  DW_TAG_member
	.dwattr $C$DW$1342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1342, DW_AT_name("IFR0")
	.dwattr $C$DW$1342, DW_AT_TI_symbol_name("_IFR0")
	.dwattr $C$DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1343	.dwtag  DW_TAG_member
	.dwattr $C$DW$1343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1343, DW_AT_name("ST0_55")
	.dwattr $C$DW$1343, DW_AT_TI_symbol_name("_ST0_55")
	.dwattr $C$DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1344	.dwtag  DW_TAG_member
	.dwattr $C$DW$1344, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1344, DW_AT_name("ST1_55")
	.dwattr $C$DW$1344, DW_AT_TI_symbol_name("_ST1_55")
	.dwattr $C$DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1345	.dwtag  DW_TAG_member
	.dwattr $C$DW$1345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1345, DW_AT_name("ST3_55")
	.dwattr $C$DW$1345, DW_AT_TI_symbol_name("_ST3_55")
	.dwattr $C$DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1346	.dwtag  DW_TAG_member
	.dwattr $C$DW$1346, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$1346, DW_AT_name("RSVD0")
	.dwattr $C$DW$1346, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1347	.dwtag  DW_TAG_member
	.dwattr $C$DW$1347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1347, DW_AT_name("IER1")
	.dwattr $C$DW$1347, DW_AT_TI_symbol_name("_IER1")
	.dwattr $C$DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$1347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1348	.dwtag  DW_TAG_member
	.dwattr $C$DW$1348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1348, DW_AT_name("IFR1")
	.dwattr $C$DW$1348, DW_AT_TI_symbol_name("_IFR1")
	.dwattr $C$DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$1348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1349	.dwtag  DW_TAG_member
	.dwattr $C$DW$1349, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$1349, DW_AT_name("RSVD1")
	.dwattr $C$DW$1349, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$1349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1350	.dwtag  DW_TAG_member
	.dwattr $C$DW$1350, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1350, DW_AT_name("IVPD")
	.dwattr $C$DW$1350, DW_AT_TI_symbol_name("_IVPD")
	.dwattr $C$DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$1350, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1351	.dwtag  DW_TAG_member
	.dwattr $C$DW$1351, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1351, DW_AT_name("IVPH")
	.dwattr $C$DW$1351, DW_AT_TI_symbol_name("_IVPH")
	.dwattr $C$DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$1351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$1352	.dwtag  DW_TAG_member
	.dwattr $C$DW$1352, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1352, DW_AT_name("ST2_55")
	.dwattr $C$DW$1352, DW_AT_TI_symbol_name("_ST2_55")
	.dwattr $C$DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4b]
	.dwattr $C$DW$1352, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$118

$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CpuRegs")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$1353	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1353, DW_AT_type(*$C$DW$T$149)
$C$DW$T$150	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$1353)
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x17)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CpuRegsOvly")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)

$C$DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x20)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCCallBackPtr")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$73	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x18)
$C$DW$1354	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1354, DW_AT_upper_bound(0x0b)
	.dwendtag $C$DW$T$73


$C$DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$1355	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$1355, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$91

$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MMCDataTxferCallBackPtr")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
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
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x06)
$C$DW$1356	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1356, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$57

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x17)
$C$DW$1357	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1357, DW_AT_type(*$C$DW$T$131)
$C$DW$T$202	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$1357)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$1358	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1358, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$1358)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x1a)
$C$DW$1359	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1359, DW_AT_upper_bound(0x19)
	.dwendtag $C$DW$T$21


$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x03)
$C$DW$1360	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1360, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$1361	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1361, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x07)
$C$DW$1362	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1362, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x13)
$C$DW$1363	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1363, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$54


$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x0e)
$C$DW$1364	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1364, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$114


$C$DW$T$115	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x05)
$C$DW$1365	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1365, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$115


$C$DW$T$117	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x40)
$C$DW$1366	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1366, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$117

$C$DW$T$161	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$161, DW_AT_address_class(0x17)

$C$DW$T$210	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$210, DW_AT_byte_size(0x100)
$C$DW$1367	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1367, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$210

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
$C$DW$1368	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1368, DW_AT_type(*$C$DW$T$49)
$C$DW$T$212	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$1368)
$C$DW$T$190	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x17)
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

$C$DW$1369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1369, DW_AT_location[DW_OP_reg0]
$C$DW$1370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$1370, DW_AT_location[DW_OP_reg1]
$C$DW$1371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$1371, DW_AT_location[DW_OP_reg2]
$C$DW$1372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1372, DW_AT_location[DW_OP_reg3]
$C$DW$1373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$1373, DW_AT_location[DW_OP_reg4]
$C$DW$1374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$1374, DW_AT_location[DW_OP_reg5]
$C$DW$1375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1375, DW_AT_location[DW_OP_reg6]
$C$DW$1376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$1376, DW_AT_location[DW_OP_reg7]
$C$DW$1377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$1377, DW_AT_location[DW_OP_reg8]
$C$DW$1378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1378, DW_AT_location[DW_OP_reg9]
$C$DW$1379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$1379, DW_AT_location[DW_OP_reg10]
$C$DW$1380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$1380, DW_AT_location[DW_OP_reg11]
$C$DW$1381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$1381, DW_AT_location[DW_OP_reg12]
$C$DW$1382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$1382, DW_AT_location[DW_OP_reg13]
$C$DW$1383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$1383, DW_AT_location[DW_OP_reg14]
$C$DW$1384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$1384, DW_AT_location[DW_OP_reg15]
$C$DW$1385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$1385, DW_AT_location[DW_OP_reg16]
$C$DW$1386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$1386, DW_AT_location[DW_OP_reg17]
$C$DW$1387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$1387, DW_AT_location[DW_OP_reg18]
$C$DW$1388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$1388, DW_AT_location[DW_OP_reg19]
$C$DW$1389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$1389, DW_AT_location[DW_OP_reg20]
$C$DW$1390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$1390, DW_AT_location[DW_OP_reg21]
$C$DW$1391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$1391, DW_AT_location[DW_OP_reg22]
$C$DW$1392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$1392, DW_AT_location[DW_OP_reg23]
$C$DW$1393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$1393, DW_AT_location[DW_OP_reg24]
$C$DW$1394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$1394, DW_AT_location[DW_OP_reg25]
$C$DW$1395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$1395, DW_AT_location[DW_OP_reg26]
$C$DW$1396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$1396, DW_AT_location[DW_OP_reg27]
$C$DW$1397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$1397, DW_AT_location[DW_OP_reg28]
$C$DW$1398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$1398, DW_AT_location[DW_OP_reg29]
$C$DW$1399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$1399, DW_AT_location[DW_OP_reg30]
$C$DW$1400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$1400, DW_AT_location[DW_OP_reg31]
$C$DW$1401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$1401, DW_AT_location[DW_OP_regx 0x20]
$C$DW$1402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$1402, DW_AT_location[DW_OP_regx 0x21]
$C$DW$1403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$1403, DW_AT_location[DW_OP_regx 0x22]
$C$DW$1404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$1404, DW_AT_location[DW_OP_regx 0x23]
$C$DW$1405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$1405, DW_AT_location[DW_OP_regx 0x24]
$C$DW$1406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$1406, DW_AT_location[DW_OP_regx 0x25]
$C$DW$1407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$1407, DW_AT_location[DW_OP_regx 0x26]
$C$DW$1408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$1408, DW_AT_location[DW_OP_regx 0x27]
$C$DW$1409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$1409, DW_AT_location[DW_OP_regx 0x28]
$C$DW$1410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$1410, DW_AT_location[DW_OP_regx 0x29]
$C$DW$1411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$1411, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$1412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$1412, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$1413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$1413, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$1414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$1414, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$1415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$1415, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$1416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$1416, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$1417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$1417, DW_AT_location[DW_OP_regx 0x30]
$C$DW$1418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$1418, DW_AT_location[DW_OP_regx 0x31]
$C$DW$1419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$1419, DW_AT_location[DW_OP_regx 0x32]
$C$DW$1420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$1420, DW_AT_location[DW_OP_regx 0x33]
$C$DW$1421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$1421, DW_AT_location[DW_OP_regx 0x34]
$C$DW$1422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$1422, DW_AT_location[DW_OP_regx 0x35]
$C$DW$1423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$1423, DW_AT_location[DW_OP_regx 0x36]
$C$DW$1424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$1424, DW_AT_location[DW_OP_regx 0x37]
$C$DW$1425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$1425, DW_AT_location[DW_OP_regx 0x38]
$C$DW$1426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$1426, DW_AT_location[DW_OP_regx 0x39]
$C$DW$1427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$1427, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$1428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$1428, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$1429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$1429, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$1430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$1430, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$1431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$1431, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$1432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$1432, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$1433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$1433, DW_AT_location[DW_OP_regx 0x40]
$C$DW$1434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$1434, DW_AT_location[DW_OP_regx 0x41]
$C$DW$1435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$1435, DW_AT_location[DW_OP_regx 0x42]
$C$DW$1436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$1436, DW_AT_location[DW_OP_regx 0x43]
$C$DW$1437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$1437, DW_AT_location[DW_OP_regx 0x44]
$C$DW$1438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$1438, DW_AT_location[DW_OP_regx 0x45]
$C$DW$1439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$1439, DW_AT_location[DW_OP_regx 0x46]
$C$DW$1440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$1440, DW_AT_location[DW_OP_regx 0x47]
$C$DW$1441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$1441, DW_AT_location[DW_OP_regx 0x48]
$C$DW$1442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$1442, DW_AT_location[DW_OP_regx 0x49]
$C$DW$1443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$1443, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$1444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$1444, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$1445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$1445, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$1446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$1446, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$1447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$1447, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$1448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$1448, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$1449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$1449, DW_AT_location[DW_OP_regx 0x50]
$C$DW$1450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$1450, DW_AT_location[DW_OP_regx 0x51]
$C$DW$1451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$1451, DW_AT_location[DW_OP_regx 0x52]
$C$DW$1452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$1452, DW_AT_location[DW_OP_regx 0x53]
$C$DW$1453	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$1453, DW_AT_location[DW_OP_regx 0x54]
$C$DW$1454	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$1454, DW_AT_location[DW_OP_regx 0x55]
$C$DW$1455	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$1455, DW_AT_location[DW_OP_regx 0x56]
$C$DW$1456	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$1456, DW_AT_location[DW_OP_regx 0x57]
$C$DW$1457	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$1457, DW_AT_location[DW_OP_regx 0x58]
$C$DW$1458	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$1458, DW_AT_location[DW_OP_regx 0x59]
$C$DW$1459	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$1459, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$1460	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$1460, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

