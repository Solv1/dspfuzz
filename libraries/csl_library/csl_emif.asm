;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:54 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_emif.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$75)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("getSysClk")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_getSysClk")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/173064YVQ3Z 
	.sect	".text"
	.global	_EMIF_init

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_init")
	.dwattr $C$DW$4, DW_AT_low_pc(_EMIF_init)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_EMIF_init")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x58)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 89,column 1,is_stmt,address _EMIF_init

	.dwfde $C$DW$CIE, _EMIF_init
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("emifObj")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_emifObj")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: EMIF_init                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("emifObj")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_emifObj")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 93,column 2,is_stmt
        MOV #-6, *SP(#2) ; |93| 
	.dwpsn	file "src/csl_emif.c",line 95,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 == #0 ; |95| 
                                        ; branchcc occurs ; |95| 
	.dwpsn	file "src/csl_emif.c",line 97,column 9,is_stmt
        MOV #7168, *AR3(short(#1)) ; |97| 
	.dwpsn	file "src/csl_emif.c",line 100,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |100| 
        MOV port(*AR3(short(#4))), AR1 ; |100| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |100| 
        MOV #0, AC0 ; |100| 
        BSET @#5, AC0 ; |100| 
        MOV AC0, port(*AR3(short(#4))) ; |100| 
	.dwpsn	file "src/csl_emif.c",line 104,column 3,is_stmt
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$9, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |104| 
||      MOV #2, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |104| 
	.dwpsn	file "src/csl_emif.c",line 107,column 7,is_stmt
        MOV #0, *SP(#3) ; |107| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 107,column 19,is_stmt
        MOV #100, AR2 ; |107| 
        MOV *SP(#3), AR1 ; |107| 
        CMPU AR1 >= AR2, TC1 ; |107| 
        BCC $C$L2,TC1 ; |107| 
                                        ; branchcc occurs ; |107| 
$C$L1:    
$C$DW$L$_EMIF_init$3$B:
	.dwpsn	file "src/csl_emif.c",line 107,column 44,is_stmt
        ADD #1, *SP(#3) ; |107| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 107,column 19,is_stmt
        MOV *SP(#3), AR1 ; |107| 
        CMPU AR1 < AR2, TC1 ; |107| 
        BCC $C$L1,TC1 ; |107| 
                                        ; branchcc occurs ; |107| 
$C$DW$L$_EMIF_init$3$E:
$C$L2:    
	.dwpsn	file "src/csl_emif.c",line 110,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |110| 
        MOV port(*AR3(short(#2))), AR1 ; |110| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |110| 
        BCLR @#11, AR1 ; |110| 
        MOV AR1, port(*AR3(short(#2))) ; |110| 
	.dwpsn	file "src/csl_emif.c",line 113,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |113| 
        MOV *AR3(short(#1)), AR3 ; |113| 
        MOV port(*AR3(T0)), AR1 ; |113| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |113| 
        AND #0xfffc, AR1, AC0 ; |113| 
        MOV AC0, port(*AR3(T0)) ; |113| 
	.dwpsn	file "src/csl_emif.c",line 115,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4096, *AR3 ; |115| 
	.dwpsn	file "src/csl_emif.c",line 116,column 3,is_stmt
        MOV #0, *SP(#2) ; |116| 
$C$L3:    
	.dwpsn	file "src/csl_emif.c",line 119,column 5,is_stmt
        MOV *SP(#2), T0 ; |119| 
	.dwpsn	file "src/csl_emif.c",line 120,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$11	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$11, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L1:1:1714639434")
	.dwattr $C$DW$11, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x6b)
$C$DW$12	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$12, DW_AT_low_pc($C$DW$L$_EMIF_init$3$B)
	.dwattr $C$DW$12, DW_AT_high_pc($C$DW$L$_EMIF_init$3$E)
	.dwendtag $C$DW$11

	.dwattr $C$DW$4, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x78)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.global	_SDRAM_config

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_config")
	.dwattr $C$DW$13, DW_AT_low_pc(_SDRAM_config)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SDRAM_config")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$13, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0xa5)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_emif.c",line 168,column 1,is_stmt,address _SDRAM_config

	.dwfde $C$DW$CIE, _SDRAM_config
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg17]
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdramConfig")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_sdramConfig")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg19]
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdramTimr")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_sdramTimr")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_config                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("sdramConfig")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_sdramConfig")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("sdramTimr")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_sdramTimr")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("sysClock")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_sysClock")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 172,column 5,is_stmt
        MOV #0, *SP(#6) ; |172| 
	.dwpsn	file "src/csl_emif.c",line 174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L6,AC0 == #0 ; |174| 
                                        ; branchcc occurs ; |174| 
	.dwpsn	file "src/csl_emif.c",line 176,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L5,AC0 == #0 ; |176| 
                                        ; branchcc occurs ; |176| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L5,AC0 == #0 ; |176| 
                                        ; branchcc occurs ; |176| 
	.dwpsn	file "src/csl_emif.c",line 179,column 4,is_stmt
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_getSysClk")
	.dwattr $C$DW$22, DW_AT_TI_call
        CALL #_getSysClk ; |179| 
                                        ; call occurs [#_getSysClk] ; |179| 
        MOV AC0, dbl(*SP(#8)) ; |179| 
	.dwpsn	file "src/csl_emif.c",line 184,column 4,is_stmt
        AMOV #100000, XAR3 ; |184| 
        MOV dbl(*SP(#8)), AC1 ; |184| 
        MOV XAR3, AC0
        CMPU AC1 <= AC0, TC1 ; |184| 
        BCC $C$L4,TC1 ; |184| 
                                        ; branchcc occurs ; |184| 
	.dwpsn	file "src/csl_emif.c",line 187,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #38, T0 ; |187| 
        MOV *AR3(short(#1)), AR3 ; |187| 
        MOV port(*AR3(T0)), AR1 ; |187| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |187| 
        BCLR @#0, AR1 ; |187| 
        MOV AR1, port(*AR3(T0)) ; |187| 
$C$L4:    
	.dwpsn	file "src/csl_emif.c",line 191,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |191| 
        MOV *AR3, AR3 ; |191| 
        MOV port(*AR3(T0)), AR1 ; |191| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3, AC0 ; |191| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |191| 

        AND #0x0fff, AR1, AR2 ; |191| 
||      SFTL AC0, #12, AC0 ; |191| 

        AND #0xf000, AC0, AR1 ; |191| 
        OR AR2, AR1 ; |191| 
        MOV AR1, port(*AR3(T0)) ; |191| 
	.dwpsn	file "src/csl_emif.c",line 193,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |193| 
        MOV port(*AR3(T0)), AR1 ; |193| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(short(#1)), AC0 ; |193| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |193| 

        AND #0xf0ff, AR1, AR2 ; |193| 
||      SFTL AC0, #8, AC0 ; |193| 

        AND #0x0f00, AC0, AR1 ; |193| 
        OR AR2, AR1 ; |193| 
        MOV AR1, port(*AR3(T0)) ; |193| 
	.dwpsn	file "src/csl_emif.c",line 195,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |195| 
        MOV port(*AR3(T0)), AR1 ; |195| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(short(#2)), AC0 ; |195| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |195| 

        AND #0xff8f, AR1, AR2 ; |195| 
||      SFTL AC0, #4, AC0 ; |195| 

        AND #0x0070, AC0, AR1 ; |195| 
        OR AR2, AR1 ; |195| 
        MOV AR1, port(*AR3(T0)) ; |195| 
	.dwpsn	file "src/csl_emif.c",line 197,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |197| 
        MOV *AR3, AR3 ; |197| 
        MOV port(*AR3(T0)), AR1 ; |197| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(short(#3)), AC0 ; |197| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |197| 

        AND #0x07ff, AR1, AR2 ; |197| 
||      SFTL AC0, #11, AC0 ; |197| 

        AND #0xf800, AC0, AR1 ; |197| 
        OR AR2, AR1 ; |197| 
        MOV AR1, port(*AR3(T0)) ; |197| 
	.dwpsn	file "src/csl_emif.c",line 199,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |199| 
        MOV port(*AR3(T0)), AR1 ; |199| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(short(#4)), AC0 ; |199| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |199| 

        AND #0xf8ff, AR1, AR2 ; |199| 
||      SFTL AC0, #8, AC0 ; |199| 

        AND #0x0700, AC0, AR1 ; |199| 
        OR AR2, AR1 ; |199| 
        MOV AR1, port(*AR3(T0)) ; |199| 
	.dwpsn	file "src/csl_emif.c",line 201,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |201| 
        MOV port(*AR3(T0)), AR1 ; |201| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(short(#5)), AC0 ; |201| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |201| 

        AND #0xff8f, AR1, AR2 ; |201| 
||      SFTL AC0, #4, AC0 ; |201| 

        AND #0x0070, AC0, AR1 ; |201| 
        OR AR2, AR1 ; |201| 
        MOV AR1, port(*AR3(T0)) ; |201| 
	.dwpsn	file "src/csl_emif.c",line 203,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |203| 
        MOV port(*AR3(T0)), AR1 ; |203| 
        MOV dbl(*SP(#4)), XAR3
        AND #0xfff8, AR1, AR2 ; |203| 
        MOV *AR3(short(#6)), AR1 ; |203| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |203| 
        AND #0x0007, AR1, AR1 ; |203| 
        OR AR2, AR1 ; |203| 
        MOV AR1, port(*AR3(T0)) ; |203| 
	.dwpsn	file "src/csl_emif.c",line 207,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #60, T0 ; |207| 
        MOV *AR3, AR3 ; |207| 
        MOV port(*AR3(T0)), AR1 ; |207| 
        MOV dbl(*SP(#4)), XAR3
        AND #0xffe0, AR1, AR2 ; |207| 
        MOV *AR3(short(#7)), AR1 ; |207| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |207| 
        AND #0x001f, AR1, AR1 ; |207| 
        OR AR2, AR1 ; |207| 
        MOV AR1, port(*AR3(T0)) ; |207| 
	.dwpsn	file "src/csl_emif.c",line 211,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |211| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |211| 
        MOV dbl(*SP(#4)), XAR3
        AND #0xe000, AR1, AR2 ; |211| 
        MOV *AR3(#8), AR1 ; |211| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |211| 
        AND #0x1fff, AR1, AR1 ; |211| 
        OR AR2, AR1 ; |211| 
        MOV AR1, port(*AR3(T0)) ; |211| 
	.dwpsn	file "src/csl_emif.c",line 215,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |215| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |215| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AC0 ; |215| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |215| 

        BCLR @#14, AR1 ; |215| 
||      SFTL AC0, #14, AC0 ; |215| 

        AND #0x4000, AC0, AR2 ; |215| 
        OR AR1, AR2 ; |215| 
        MOV AR2, port(*AR3(T0)) ; |215| 
	.dwpsn	file "src/csl_emif.c",line 217,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |217| 
        MOV port(*AR3(T0)), AR1 ; |217| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#10), AC0 ; |217| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |217| 

        BCLR @#8, AR1 ; |217| 
||      SFTL AC0, #8, AC0 ; |217| 

        AND #0x0100, AC0, AR2 ; |217| 
        OR AR1, AR2 ; |217| 
        MOV AR2, port(*AR3(T0)) ; |217| 
	.dwpsn	file "src/csl_emif.c",line 219,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |219| 
        MOV port(*AR3(T0)), AR1 ; |219| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#9), AC0 ; |219| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |219| 

        AND #0xf1ff, AR1, AR2 ; |219| 
||      SFTL AC0, #9, AC0 ; |219| 

        AND #0x0e00, AC0, AR1 ; |219| 
        OR AR2, AR1 ; |219| 
        MOV AR1, port(*AR3(T0)) ; |219| 
	.dwpsn	file "src/csl_emif.c",line 221,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |221| 
        MOV port(*AR3(T0)), AR1 ; |221| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AC0 ; |221| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |221| 

        AND #0xff8f, AR1, AR2 ; |221| 
||      SFTL AC0, #4, AC0 ; |221| 

        AND #0x0070, AC0, AR1 ; |221| 
        OR AR2, AR1 ; |221| 
        MOV AR1, port(*AR3(T0)) ; |221| 
	.dwpsn	file "src/csl_emif.c",line 223,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |223| 
        MOV port(*AR3(T0)), AR1 ; |223| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#12), AC0 ; |223| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |223| 

        BCLR @#3, AR1 ; |223| 
||      SFTL AC0, #3, AC0 ; |223| 

        AND #0x0008, AC0, AR2 ; |223| 
        OR AR1, AR2 ; |223| 
        MOV AR2, port(*AR3(T0)) ; |223| 
	.dwpsn	file "src/csl_emif.c",line 225,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |225| 
        MOV port(*AR3(T0)), AR1 ; |225| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfff8, AR1, AR2 ; |225| 
        MOV *AR3(#13), AR1 ; |225| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |225| 
        AND #0x0007, AR1, AR1 ; |225| 
        OR AR2, AR1 ; |225| 
        MOV AR1, port(*AR3(T0)) ; |225| 
	.dwpsn	file "src/csl_emif.c",line 228,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |228| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR2 ; |228| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |228| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |228| 
        BCLR @#0, AR2 ; |228| 
        AND #0x0001, AR1, AR1 ; |228| 
        OR AR2, AR1 ; |228| 
        MOV AR1, port(*AR3(T0)) ; |228| 
	.dwpsn	file "src/csl_emif.c",line 230,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |230| 
        MOV port(*AR3(T0)), AR1 ; |230| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AC0 ; |230| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |230| 

        BCLR @#15, AR1 ; |230| 
||      SFTL AC0, #15, AC0 ; |230| 

        AND #0x8000, AC0, AR2 ; |230| 
        OR AR1, AR2 ; |230| 
        MOV AR2, port(*AR3(T0)) ; |230| 
	.dwpsn	file "src/csl_emif.c",line 232,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |232| 
        MOV port(*AR3(T0)), AR1 ; |232| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AC0 ; |232| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |232| 

        BCLR @#14, AR1 ; |232| 
||      SFTL AC0, #14, AC0 ; |232| 

        AND #0x4000, AC0, AR2 ; |232| 
        OR AR1, AR2 ; |232| 
        MOV AR2, port(*AR3(T0)) ; |232| 
	.dwpsn	file "src/csl_emif.c",line 234,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |234| 
        MOV port(*AR3(T0)), AR1 ; |234| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AC0 ; |234| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |234| 

        BCLR @#13, AR1 ; |234| 
||      SFTL AC0, #13, AC0 ; |234| 

        AND #0x2000, AC0, AR2 ; |234| 
        OR AR1, AR2 ; |234| 
        MOV AR2, port(*AR3(T0)) ; |234| 
	.dwpsn	file "src/csl_emif.c",line 236,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |236| 
        MOV port(*AR3(T0)), AR1 ; |236| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AC0 ; |236| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |236| 

        AND #0xfc7f, AR1, AR2 ; |236| 
||      SFTL AC0, #7, AC0 ; |236| 

        AND #0x0380, AC0, AR1 ; |236| 
        OR AR2, AR1 ; |236| 
        MOV AR1, port(*AR3(T0)) ; |236| 
	.dwpsn	file "src/csl_emif.c",line 238,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |238| 
        MOV port(*AR3(T0)), AR1 ; |238| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AC0 ; |238| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |238| 

        AND #0xff8f, AR1, AR2 ; |238| 
||      SFTL AC0, #4, AC0 ; |238| 

        AND #0x0070, AC0, AR1 ; |238| 
        OR AR2, AR1 ; |238| 
        MOV AR1, port(*AR3(T0)) ; |238| 
	.dwpsn	file "src/csl_emif.c",line 240,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |240| 
        MOV port(*AR3(T0)), AR1 ; |240| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AC0 ; |240| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |240| 

        BCLR @#3, AR1 ; |240| 
||      SFTL AC0, #3, AC0 ; |240| 

        AND #0x0008, AC0, AR2 ; |240| 
        OR AR1, AR2 ; |240| 
        MOV AR2, port(*AR3(T0)) ; |240| 
	.dwpsn	file "src/csl_emif.c",line 242,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |242| 
        MOV port(*AR3(T0)), AR1 ; |242| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfff9, AR1, AR2 ; |242| 
        MOV *AR3(short(#6)), AR1 ; |242| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |242| 
        SFTL AR1, #1 ; |242| 
        AND #0x0006, AR1, AR1 ; |242| 
        OR AR2, AR1 ; |242| 
        MOV AR1, port(*AR3(T0)) ; |242| 
	.dwpsn	file "src/csl_emif.c",line 246,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #30, T0 ; |246| 
        MOV *AR3(short(#1)), AR3 ; |246| 
        MOV port(*AR3(T0)), AR1 ; |246| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |246| 
        BCLR @#0, AR1 ; |246| 
        BSET @#0, AR1 ; |246| 
        MOV AR1, port(*AR3(T0)) ; |246| 
	.dwpsn	file "src/csl_emif.c",line 248,column 3,is_stmt
        B $C$L7   ; |248| 
                                        ; branch occurs ; |248| 
$C$L5:    
	.dwpsn	file "src/csl_emif.c",line 251,column 7,is_stmt
        MOV #-6, *SP(#6) ; |251| 
	.dwpsn	file "src/csl_emif.c",line 253,column 5,is_stmt
        B $C$L7   ; |253| 
                                        ; branch occurs ; |253| 
$C$L6:    
	.dwpsn	file "src/csl_emif.c",line 256,column 3,is_stmt
        MOV #-5, *SP(#6) ; |256| 
$C$L7:    
	.dwpsn	file "src/csl_emif.c",line 259,column 5,is_stmt
        MOV *SP(#6), T0 ; |259| 
	.dwpsn	file "src/csl_emif.c",line 260,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$13, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x104)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.global	_SDRAM_enablePowerDownMode

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_enablePowerDownMode")
	.dwattr $C$DW$24, DW_AT_low_pc(_SDRAM_enablePowerDownMode)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_SDRAM_enablePowerDownMode")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$24, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 304,column 1,is_stmt,address _SDRAM_enablePowerDownMode

	.dwfde $C$DW$CIE, _SDRAM_enablePowerDownMode
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_enablePowerDownMode                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_enablePowerDownMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 307,column 5,is_stmt
        MOV #0, *SP(#2) ; |307| 
	.dwpsn	file "src/csl_emif.c",line 309,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L8,AC0 == #0 ; |309| 
                                        ; branchcc occurs ; |309| 
	.dwpsn	file "src/csl_emif.c",line 312,column 3,is_stmt
        MOV #51, T0 ; |312| 
        MOV *AR3(short(#1)), AR3 ; |312| 
        MOV port(*AR3(T0)), AR1 ; |312| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |312| 
        AND #0xfffc, AR1, AC0 ; |312| 
        BSET @#0, AC0 ; |312| 
        MOV AC0, port(*AR3(T0)) ; |312| 
	.dwpsn	file "src/csl_emif.c",line 314,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |314| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |314| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |314| 
        BCLR @#14, AR1 ; |314| 
        BSET @#14, AR1 ; |314| 
        MOV AR1, port(*AR3(T0)) ; |314| 
	.dwpsn	file "src/csl_emif.c",line 316,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |316| 
        MOV port(*AR3(T0)), AR1 ; |316| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |316| 
        BCLR @#13, AR1 ; |316| 
        BSET @#13, AR1 ; |316| 
        MOV AR1, port(*AR3(T0)) ; |316| 
	.dwpsn	file "src/csl_emif.c",line 318,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |318| 
        MOV *AR3(short(#1)), AR3 ; |318| 
        MOV port(*AR3(T0)), AR1 ; |318| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |318| 
        AND #0xfffc, AR1, AC0 ; |318| 
        MOV AC0, port(*AR3(T0)) ; |318| 
	.dwpsn	file "src/csl_emif.c",line 320,column 5,is_stmt
        B $C$L9   ; |320| 
                                        ; branch occurs ; |320| 
$C$L8:    
	.dwpsn	file "src/csl_emif.c",line 323,column 3,is_stmt
        MOV #-5, *SP(#2) ; |323| 
$C$L9:    
	.dwpsn	file "src/csl_emif.c",line 326,column 5,is_stmt
        MOV *SP(#2), T0 ; |326| 
	.dwpsn	file "src/csl_emif.c",line 328,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$24, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x148)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.global	_SDRAM_disablePowerDownMode

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_disablePowerDownMode")
	.dwattr $C$DW$29, DW_AT_low_pc(_SDRAM_disablePowerDownMode)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_SDRAM_disablePowerDownMode")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x177)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 376,column 1,is_stmt,address _SDRAM_disablePowerDownMode

	.dwfde $C$DW$CIE, _SDRAM_disablePowerDownMode
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_disablePowerDownMode                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_disablePowerDownMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 379,column 5,is_stmt
        MOV #0, *SP(#2) ; |379| 
	.dwpsn	file "src/csl_emif.c",line 381,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L10,AC0 == #0 ; |381| 
                                        ; branchcc occurs ; |381| 
	.dwpsn	file "src/csl_emif.c",line 384,column 3,is_stmt
        MOV #51, T0 ; |384| 
        MOV *AR3(short(#1)), AR3 ; |384| 
        MOV port(*AR3(T0)), AR1 ; |384| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |384| 
        AND #0xfffc, AR1, AC0 ; |384| 
        BSET @#0, AC0 ; |384| 
        MOV AC0, port(*AR3(T0)) ; |384| 
	.dwpsn	file "src/csl_emif.c",line 386,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |386| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |386| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |386| 
        BCLR @#14, AR1 ; |386| 
        MOV AR1, port(*AR3(T0)) ; |386| 
	.dwpsn	file "src/csl_emif.c",line 388,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |388| 
        MOV port(*AR3(T0)), AR1 ; |388| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |388| 
        BCLR @#13, AR1 ; |388| 
        MOV AR1, port(*AR3(T0)) ; |388| 
	.dwpsn	file "src/csl_emif.c",line 390,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |390| 
        MOV *AR3(short(#1)), AR3 ; |390| 
        MOV port(*AR3(T0)), AR1 ; |390| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |390| 
        AND #0xfffc, AR1, AC0 ; |390| 
        MOV AC0, port(*AR3(T0)) ; |390| 
	.dwpsn	file "src/csl_emif.c",line 391,column 5,is_stmt
        B $C$L11  ; |391| 
                                        ; branch occurs ; |391| 
$C$L10:    
	.dwpsn	file "src/csl_emif.c",line 394,column 3,is_stmt
        MOV #-5, *SP(#2) ; |394| 
$C$L11:    
	.dwpsn	file "src/csl_emif.c",line 397,column 5,is_stmt
        MOV *SP(#2), T0 ; |397| 
	.dwpsn	file "src/csl_emif.c",line 399,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$29, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x18f)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text"
	.global	_SDRAM_enableSelfRefreshMode

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_enableSelfRefreshMode")
	.dwattr $C$DW$34, DW_AT_low_pc(_SDRAM_enableSelfRefreshMode)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_SDRAM_enableSelfRefreshMode")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x1b9)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 442,column 1,is_stmt,address _SDRAM_enableSelfRefreshMode

	.dwfde $C$DW$CIE, _SDRAM_enableSelfRefreshMode
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_enableSelfRefreshMode                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_enableSelfRefreshMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 445,column 5,is_stmt
        MOV #0, *SP(#2) ; |445| 
	.dwpsn	file "src/csl_emif.c",line 447,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L12,AC0 == #0 ; |447| 
                                        ; branchcc occurs ; |447| 
	.dwpsn	file "src/csl_emif.c",line 450,column 3,is_stmt
        MOV #51, T0 ; |450| 
        MOV *AR3(short(#1)), AR3 ; |450| 
        MOV port(*AR3(T0)), AR1 ; |450| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |450| 
        AND #0xfffc, AR1, AC0 ; |450| 
        BSET @#0, AC0 ; |450| 
        MOV AC0, port(*AR3(T0)) ; |450| 
	.dwpsn	file "src/csl_emif.c",line 452,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |452| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |452| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |452| 
        BCLR @#15, AR1 ; |452| 
        BSET @#15, AR1 ; |452| 
        MOV AR1, port(*AR3(T0)) ; |452| 
	.dwpsn	file "src/csl_emif.c",line 454,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |454| 
        MOV *AR3(short(#1)), AR3 ; |454| 
        MOV port(*AR3(T0)), AR1 ; |454| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |454| 
        AND #0xfffc, AR1, AC0 ; |454| 
        MOV AC0, port(*AR3(T0)) ; |454| 
	.dwpsn	file "src/csl_emif.c",line 455,column 5,is_stmt
        B $C$L13  ; |455| 
                                        ; branch occurs ; |455| 
$C$L12:    
	.dwpsn	file "src/csl_emif.c",line 458,column 3,is_stmt
        MOV #-5, *SP(#2) ; |458| 
$C$L13:    
	.dwpsn	file "src/csl_emif.c",line 461,column 5,is_stmt
        MOV *SP(#2), T0 ; |461| 
	.dwpsn	file "src/csl_emif.c",line 463,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$34, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x1cf)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.global	_SDRAM_disableSelfRefreshMode

$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_disableSelfRefreshMode")
	.dwattr $C$DW$39, DW_AT_low_pc(_SDRAM_disableSelfRefreshMode)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_SDRAM_disableSelfRefreshMode")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x1fd)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 510,column 1,is_stmt,address _SDRAM_disableSelfRefreshMode

	.dwfde $C$DW$CIE, _SDRAM_disableSelfRefreshMode
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_disableSelfRefreshMode                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_disableSelfRefreshMode:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 513,column 5,is_stmt
        MOV #0, *SP(#2) ; |513| 
	.dwpsn	file "src/csl_emif.c",line 515,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L14,AC0 == #0 ; |515| 
                                        ; branchcc occurs ; |515| 
	.dwpsn	file "src/csl_emif.c",line 518,column 3,is_stmt
        MOV #51, T0 ; |518| 
        MOV *AR3(short(#1)), AR3 ; |518| 
        MOV port(*AR3(T0)), AR1 ; |518| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |518| 
        AND #0xfffc, AR1, AC0 ; |518| 
        BSET @#0, AC0 ; |518| 
        MOV AC0, port(*AR3(T0)) ; |518| 
	.dwpsn	file "src/csl_emif.c",line 520,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |520| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |520| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |520| 
        BCLR @#15, AR1 ; |520| 
        MOV AR1, port(*AR3(T0)) ; |520| 
	.dwpsn	file "src/csl_emif.c",line 522,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |522| 
        MOV *AR3(short(#1)), AR3 ; |522| 
        MOV port(*AR3(T0)), AR1 ; |522| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |522| 
        AND #0xfffc, AR1, AC0 ; |522| 
        MOV AC0, port(*AR3(T0)) ; |522| 
	.dwpsn	file "src/csl_emif.c",line 523,column 5,is_stmt
        B $C$L15  ; |523| 
                                        ; branch occurs ; |523| 
$C$L14:    
	.dwpsn	file "src/csl_emif.c",line 526,column 3,is_stmt
        MOV #-5, *SP(#2) ; |526| 
$C$L15:    
	.dwpsn	file "src/csl_emif.c",line 529,column 5,is_stmt
        MOV *SP(#2), T0 ; |529| 
	.dwpsn	file "src/csl_emif.c",line 531,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$39, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x213)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.global	_SDRAM_read

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_read")
	.dwattr $C$DW$44, DW_AT_low_pc(_SDRAM_read)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_SDRAM_read")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$44, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x242)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_emif.c",line 582,column 1,is_stmt,address _SDRAM_read

	.dwfde $C$DW$CIE, _SDRAM_read
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg17]
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numWords")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdramAddr")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_sdramAddr")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg3]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataBuff")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_read                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("numWords")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("sdramAddr")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_sdramAddr")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("dataBuff")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("startAddr")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_startAddr")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |582| 
        MOV AC0, dbl(*SP(#2)) ; |582| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 587,column 5,is_stmt
        MOV #0, *SP(#8) ; |587| 
	.dwpsn	file "src/csl_emif.c",line 588,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_emif.c",line 590,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L18,AC0 == #0 ; |590| 
                                        ; branchcc occurs ; |590| 
	.dwpsn	file "src/csl_emif.c",line 592,column 9,is_stmt
        AMOV #163840, XAR3 ; |592| 
        MOV dbl(*SP(#4)), AC1 ; |592| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |592| 
        BCC $C$L17,TC1 ; |592| 
                                        ; branchcc occurs ; |592| 
        AMOV #4194304, XAR3 ; |592| 
        MOV dbl(*SP(#2)), AC1 ; |592| 
        MOV XAR3, AC0
        ADD dbl(*SP(#4)), AC1, AC1 ; |592| 
        CMPU AC1 >= AC0, TC1 ; |592| 
        BCC $C$L17,TC1 ; |592| 
                                        ; branchcc occurs ; |592| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L17,AC0 == #0 ; |592| 
                                        ; branchcc occurs ; |592| 
        MOV dbl(*SP(#2)), AC0 ; |592| 
        BCC $C$L17,AC0 == #0 ; |592| 
                                        ; branchcc occurs ; |592| 
	.dwpsn	file "src/csl_emif.c",line 597,column 11,is_stmt
        MOV #0, AC0 ; |597| 
        MOV AC0, dbl(*SP(#12)) ; |597| 
	.dwpsn	file "src/csl_emif.c",line 597,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |597| 
        MOV dbl(*SP(#2)), AC0 ; |597| 
        CMPU AC1 >= AC0, TC1 ; |597| 
        BCC $C$L19,TC1 ; |597| 
                                        ; branchcc occurs ; |597| 
$C$L16:    
$C$DW$L$_SDRAM_read$7$B:
	.dwpsn	file "src/csl_emif.c",line 599,column 8,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3+, AR1 ; |599| 
        MOV XAR3, dbl(*SP(#10))
        MOV *SP(#13), T0 ; |599| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(T0) ; |599| 
	.dwpsn	file "src/csl_emif.c",line 597,column 40,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |597| 
        ADD #1, AC0 ; |597| 
        MOV AC0, dbl(*SP(#12)) ; |597| 
	.dwpsn	file "src/csl_emif.c",line 597,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |597| 
        MOV dbl(*SP(#2)), AC0 ; |597| 
        CMPU AC1 < AC0, TC1 ; |597| 
        BCC $C$L16,TC1 ; |597| 
                                        ; branchcc occurs ; |597| 
$C$DW$L$_SDRAM_read$7$E:
	.dwpsn	file "src/csl_emif.c",line 601,column 9,is_stmt
        B $C$L19  ; |601| 
                                        ; branch occurs ; |601| 
$C$L17:    
	.dwpsn	file "src/csl_emif.c",line 604,column 7,is_stmt
        MOV #-6, *SP(#8) ; |604| 
	.dwpsn	file "src/csl_emif.c",line 606,column 5,is_stmt
        B $C$L19  ; |606| 
                                        ; branch occurs ; |606| 
$C$L18:    
	.dwpsn	file "src/csl_emif.c",line 609,column 3,is_stmt
        MOV #-5, *SP(#8) ; |609| 
$C$L19:    
	.dwpsn	file "src/csl_emif.c",line 612,column 2,is_stmt
        MOV *SP(#8), T0 ; |612| 
	.dwpsn	file "src/csl_emif.c",line 613,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$57	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$57, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L16:1:1714639434")
	.dwattr $C$DW$57, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x255)
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x258)
$C$DW$58	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$58, DW_AT_low_pc($C$DW$L$_SDRAM_read$7$B)
	.dwattr $C$DW$58, DW_AT_high_pc($C$DW$L$_SDRAM_read$7$E)
	.dwendtag $C$DW$57

	.dwattr $C$DW$44, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x265)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_SDRAM_write

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("SDRAM_write")
	.dwattr $C$DW$59, DW_AT_low_pc(_SDRAM_write)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_SDRAM_write")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$59, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x294)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_emif.c",line 664,column 1,is_stmt,address _SDRAM_write

	.dwfde $C$DW$CIE, _SDRAM_write
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg17]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numWords")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg0]
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sdramAddr")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_sdramAddr")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg3]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataBuff")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SDRAM_write                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SDRAM_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("numWords")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("sdramAddr")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_sdramAddr")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("dataBuff")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("startAddr")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_startAddr")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |664| 
        MOV AC0, dbl(*SP(#2)) ; |664| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 669,column 5,is_stmt
        MOV #0, *SP(#8) ; |669| 
	.dwpsn	file "src/csl_emif.c",line 670,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_emif.c",line 672,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L22,AC0 == #0 ; |672| 
                                        ; branchcc occurs ; |672| 
	.dwpsn	file "src/csl_emif.c",line 674,column 9,is_stmt
        AMOV #163840, XAR3 ; |674| 
        MOV dbl(*SP(#4)), AC1 ; |674| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |674| 
        BCC $C$L21,TC1 ; |674| 
                                        ; branchcc occurs ; |674| 
        AMOV #4194304, XAR3 ; |674| 
        MOV dbl(*SP(#2)), AC1 ; |674| 
        MOV XAR3, AC0
        ADD dbl(*SP(#4)), AC1, AC1 ; |674| 
        CMPU AC1 >= AC0, TC1 ; |674| 
        BCC $C$L21,TC1 ; |674| 
                                        ; branchcc occurs ; |674| 
	.dwpsn	file "src/csl_emif.c",line 677,column 11,is_stmt
        MOV #0, AC0 ; |677| 
        MOV AC0, dbl(*SP(#12)) ; |677| 
	.dwpsn	file "src/csl_emif.c",line 677,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |677| 
        MOV dbl(*SP(#2)), AC0 ; |677| 
        CMPU AC1 >= AC0, TC1 ; |677| 
        BCC $C$L23,TC1 ; |677| 
                                        ; branchcc occurs ; |677| 
$C$L20:    
$C$DW$L$_SDRAM_write$5$B:
	.dwpsn	file "src/csl_emif.c",line 679,column 8,is_stmt
        MOV dbl(*SP(#10)), XAR3
        AMAR *AR3, XAR2
        AMAR *AR2+
        MOV XAR2, dbl(*SP(#10))
        MOV *SP(#13), T0 ; |679| 
        MOV dbl(*SP(#6)), XAR2
        MOV *AR2(T0), *AR3 ; |679| 
	.dwpsn	file "src/csl_emif.c",line 677,column 40,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |677| 
        ADD #1, AC0 ; |677| 
        MOV AC0, dbl(*SP(#12)) ; |677| 
	.dwpsn	file "src/csl_emif.c",line 677,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |677| 
        MOV dbl(*SP(#2)), AC0 ; |677| 
        CMPU AC1 < AC0, TC1 ; |677| 
        BCC $C$L20,TC1 ; |677| 
                                        ; branchcc occurs ; |677| 
$C$DW$L$_SDRAM_write$5$E:
	.dwpsn	file "src/csl_emif.c",line 681,column 9,is_stmt
        B $C$L23  ; |681| 
                                        ; branch occurs ; |681| 
$C$L21:    
	.dwpsn	file "src/csl_emif.c",line 684,column 7,is_stmt
        MOV #-6, *SP(#8) ; |684| 
	.dwpsn	file "src/csl_emif.c",line 686,column 5,is_stmt
        B $C$L23  ; |686| 
                                        ; branch occurs ; |686| 
$C$L22:    
	.dwpsn	file "src/csl_emif.c",line 689,column 3,is_stmt
        MOV #-5, *SP(#8) ; |689| 
$C$L23:    
	.dwpsn	file "src/csl_emif.c",line 691,column 2,is_stmt
        MOV *SP(#8), T0 ; |691| 
	.dwpsn	file "src/csl_emif.c",line 692,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L20:1:1714639434")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x2a5)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x2a8)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_SDRAM_write$5$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_SDRAM_write$5$E)
	.dwendtag $C$DW$72

	.dwattr $C$DW$59, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x2b4)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.global	_EMIF_asyncConfig

$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_asyncConfig")
	.dwattr $C$DW$74, DW_AT_low_pc(_EMIF_asyncConfig)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_EMIF_asyncConfig")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$74, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x2e5)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_emif.c",line 743,column 1,is_stmt,address _EMIF_asyncConfig

	.dwfde $C$DW$CIE, _EMIF_asyncConfig
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg17]
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("asyncConfig")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_asyncConfig")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: EMIF_asyncConfig                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_asyncConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("asyncConfig")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_asyncConfig")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("asyncCfg0Addr")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_asyncCfg0Addr")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("asyncCfg1Addr")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_asyncCfg1Addr")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 748,column 2,is_stmt
        MOV #0, *SP(#4) ; |748| 
	.dwpsn	file "src/csl_emif.c",line 750,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L32,AC0 == #0 ; |750| 
                                        ; branchcc occurs ; |750| 
	.dwpsn	file "src/csl_emif.c",line 752,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L31,AC0 == #0 ; |752| 
                                        ; branchcc occurs ; |752| 
	.dwpsn	file "src/csl_emif.c",line 754,column 4,is_stmt
        MOV *AR3(short(#1)), AR1 ; |754| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#6)) ; |754| 
	.dwpsn	file "src/csl_emif.c",line 759,column 4,is_stmt
        B $C$L29  ; |759| 
                                        ; branch occurs ; |759| 
$C$L24:    
	.dwpsn	file "src/csl_emif.c",line 763,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |763| 
        MOV port(*AR3(short(#5))), AR1 ; |763| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        AND #0xfffc, AR1, AR2 ; |763| 
        MOV *AR3(short(#1)), AR1 ; |763| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |763| 
        AND #0x0003, AR1, AR1 ; |763| 
        OR AR2, AR1 ; |763| 
        MOV AR1, port(*AR3(short(#5))) ; |763| 
	.dwpsn	file "src/csl_emif.c",line 766,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |766| 

        MOV AR3, *SP(#5) ; |766| 
||      AADD #16, AR3 ; |766| 

	.dwpsn	file "src/csl_emif.c",line 767,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |767| 

        MOV AR3, *SP(#6) ; |767| 
||      AADD #17, AR3 ; |767| 

	.dwpsn	file "src/csl_emif.c",line 769,column 11,is_stmt
        B $C$L30  ; |769| 
                                        ; branch occurs ; |769| 
$C$L25:    
	.dwpsn	file "src/csl_emif.c",line 773,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |773| 
        MOV port(*AR3(short(#5))), AR1 ; |773| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3(short(#1)) << #2, AC0 ; |773| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |773| 
        AND #0xfff3, AR1, AR1 ; |773| 
        AND #0x000c, AC0, AR2 ; |773| 
        OR AR1, AR2 ; |773| 
        MOV AR2, port(*AR3(short(#5))) ; |773| 
	.dwpsn	file "src/csl_emif.c",line 776,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |776| 

        MOV AR3, *SP(#5) ; |776| 
||      AADD #20, AR3 ; |776| 

	.dwpsn	file "src/csl_emif.c",line 777,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |777| 

        MOV AR3, *SP(#6) ; |777| 
||      AADD #21, AR3 ; |777| 

	.dwpsn	file "src/csl_emif.c",line 779,column 11,is_stmt
        B $C$L30  ; |779| 
                                        ; branch occurs ; |779| 
$C$L26:    
	.dwpsn	file "src/csl_emif.c",line 783,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |783| 
        MOV port(*AR3(short(#5))), AR1 ; |783| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3(short(#1)) << #4, AC0 ; |783| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |783| 
        AND #0xffcf, AR1, AR1 ; |783| 
        AND #0x0030, AC0, AR2 ; |783| 
        OR AR1, AR2 ; |783| 
        MOV AR2, port(*AR3(short(#5))) ; |783| 
	.dwpsn	file "src/csl_emif.c",line 786,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |786| 

        MOV AR3, *SP(#5) ; |786| 
||      AADD #24, AR3 ; |786| 

	.dwpsn	file "src/csl_emif.c",line 787,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |787| 

        MOV AR3, *SP(#6) ; |787| 
||      AADD #25, AR3 ; |787| 

	.dwpsn	file "src/csl_emif.c",line 789,column 11,is_stmt
        B $C$L30  ; |789| 
                                        ; branch occurs ; |789| 
$C$L27:    
	.dwpsn	file "src/csl_emif.c",line 793,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |793| 
        MOV port(*AR3(short(#5))), AR1 ; |793| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3(short(#1)) << #6, AC0 ; |793| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |793| 
        AND #0xff3f, AR1, AR1 ; |793| 
        AND #0x00c0, AC0, AR2 ; |793| 
        OR AR1, AR2 ; |793| 
        MOV AR2, port(*AR3(short(#5))) ; |793| 
	.dwpsn	file "src/csl_emif.c",line 796,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |796| 

        MOV AR3, *SP(#5) ; |796| 
||      AADD #28, AR3 ; |796| 

	.dwpsn	file "src/csl_emif.c",line 797,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |797| 

        MOV AR3, *SP(#6) ; |797| 
||      AADD #29, AR3 ; |797| 

	.dwpsn	file "src/csl_emif.c",line 799,column 11,is_stmt
        B $C$L30  ; |799| 
                                        ; branch occurs ; |799| 
$C$L28:    
	.dwpsn	file "src/csl_emif.c",line 802,column 9,is_stmt
        MOV #-6, *SP(#4) ; |802| 
	.dwpsn	file "src/csl_emif.c",line 803,column 11,is_stmt
        B $C$L30  ; |803| 
                                        ; branch occurs ; |803| 
$C$L29:    
	.dwpsn	file "src/csl_emif.c",line 759,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |759| 
        BCC $C$L24,AR1 == #0 ; |759| 
                                        ; branchcc occurs ; |759| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |759| 
        BCC $C$L25,TC1 ; |759| 
                                        ; branchcc occurs ; |759| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |759| 
        BCC $C$L26,TC1 ; |759| 
                                        ; branchcc occurs ; |759| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |759| 
        BCC $C$L27,TC1 ; |759| 
                                        ; branchcc occurs ; |759| 
        B $C$L28  ; |759| 
                                        ; branch occurs ; |759| 
$C$L30:    
	.dwpsn	file "src/csl_emif.c",line 807,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3(short(#1)), T1 ; |807| 
        MOV dbl(*SP(#0)), XAR3
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |807| 
        MOV AC0, *AR3(short(#7)) ; |807| 
	.dwpsn	file "src/csl_emif.c",line 810,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |810| 
        MOV port(*AR3(short(#5))), AR1 ; |810| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3 << #12, AC0 ; |810| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |810| 
        BCLR @#12, AR1 ; |810| 
        AND #0x1000, AC0, AR2 ; |810| 
        OR AR1, AR2 ; |810| 
        MOV AR2, port(*AR3(short(#5))) ; |810| 
	.dwpsn	file "src/csl_emif.c",line 812,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |812| 
        MOV port(*AR3(short(#5))), AR1 ; |812| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3 << #13, AC0 ; |812| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |812| 
        BCLR @#13, AR1 ; |812| 
        AND #0x2000, AC0, AR2 ; |812| 
        OR AR1, AR2 ; |812| 
        MOV AR2, port(*AR3(short(#5))) ; |812| 
	.dwpsn	file "src/csl_emif.c",line 814,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |814| 
        MOV port(*AR3(short(#5))), AR1 ; |814| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3 << #14, AC0 ; |814| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |814| 
        BCLR @#14, AR1 ; |814| 
        AND #0x4000, AC0, AR2 ; |814| 
        OR AR1, AR2 ; |814| 
        MOV AR2, port(*AR3(short(#5))) ; |814| 
	.dwpsn	file "src/csl_emif.c",line 816,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |816| 
        MOV port(*AR3(short(#5))), AR1 ; |816| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        MOV *AR3 << #15, AC0 ; |816| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |816| 
        BCLR @#15, AR1 ; |816| 
        AND #0x8000, AC0, AR2 ; |816| 
        OR AR1, AR2 ; |816| 
        MOV AR2, port(*AR3(short(#5))) ; |816| 
	.dwpsn	file "src/csl_emif.c",line 820,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |820| 
        MOV port(*AR3(short(#4))), AR1 ; |820| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3
        AND #0xff00, AR1, AR2 ; |820| 
        MOV uns(low_byte(*AR3(short(#2)))), AR1 ; |820| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |820| 
        OR AR2, AR1 ; |820| 
        MOV AR1, port(*AR3(short(#4))) ; |820| 
	.dwpsn	file "src/csl_emif.c",line 825,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3, AC0 ; |825| 
        MOV *SP(#6), AR3 ; |825| 
        SFTL AC0, #15, AC0 ; |825| 
        AND #0x8000, AC0, AR1 ; |825| 
        MOV port(*AR3), AR2 ; |825| 
        BCLR @#15, AR2 ; |825| 
        OR AR2, AR1 ; |825| 
        MOV AR1, port(*AR3) ; |825| 
	.dwpsn	file "src/csl_emif.c",line 828,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#1)), AC0 ; |828| 
        MOV *SP(#6), AR3 ; |828| 
        SFTL AC0, #14, AC0 ; |828| 
        AND #0x4000, AC0, AR1 ; |828| 
        MOV port(*AR3), AR2 ; |828| 
        BCLR @#14, AR2 ; |828| 
        OR AR2, AR1 ; |828| 
        MOV AR1, port(*AR3) ; |828| 
	.dwpsn	file "src/csl_emif.c",line 831,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#2)), AC0 ; |831| 
        MOV *SP(#6), AR3 ; |831| 
        SFTL AC0, #10, AC0 ; |831| 
        AND #0x3c00, AC0, AR1 ; |831| 
        MOV port(*AR3), AR2 ; |831| 
        AND #0xc3ff, AR2, AR2 ; |831| 
        OR AR2, AR1 ; |831| 
        MOV AR1, port(*AR3) ; |831| 
	.dwpsn	file "src/csl_emif.c",line 834,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#3)), AC0 ; |834| 
        MOV *SP(#6), AR3 ; |834| 
        SFTL AC0, #4, AC0 ; |834| 
        AND #0x03f0, AC0, AR1 ; |834| 
        MOV port(*AR3), AR2 ; |834| 
        AND #0xfc0f, AR2, AR2 ; |834| 
        OR AR2, AR1 ; |834| 
        MOV AR1, port(*AR3) ; |834| 
	.dwpsn	file "src/csl_emif.c",line 837,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#4)), AR1 ; |837| 
        MOV *SP(#6), AR3 ; |837| 
        SFTL AR1, #1 ; |837| 
        AND #0x000e, AR1, AR1 ; |837| 
        MOV port(*AR3), AR2 ; |837| 
        AND #0xfff1, AR2, AR2 ; |837| 
        OR AR2, AR1 ; |837| 
        MOV AR1, port(*AR3) ; |837| 
	.dwpsn	file "src/csl_emif.c",line 840,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#5)), AC0 ; |840| 
        MOV *SP(#6), AR3 ; |840| 
        BFXTR #0x0008, AC0, AR1 ; |840| 
        MOV port(*AR3), AR2 ; |840| 
        BCLR @#0, AR2 ; |840| 
        OR AR2, AR1 ; |840| 
        MOV AR1, port(*AR3) ; |840| 
	.dwpsn	file "src/csl_emif.c",line 842,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#5)), AC0 ; |842| 
        MOV *SP(#5), AR3 ; |842| 
        SFTL AC0, #13, AC0 ; |842| 
        AND #0xe000, AC0, AR1 ; |842| 
        MOV port(*AR3), AR2 ; |842| 
        AND #0x1fff, AR2, AR2 ; |842| 
        OR AR2, AR1 ; |842| 
        MOV AR1, port(*AR3) ; |842| 
	.dwpsn	file "src/csl_emif.c",line 845,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#6)), AC0 ; |845| 
        MOV *SP(#5), AR3 ; |845| 
        SFTL AC0, #7, AC0 ; |845| 
        AND #0x1f80, AC0, AR1 ; |845| 
        MOV port(*AR3), AR2 ; |845| 
        AND #0xe07f, AR2, AR2 ; |845| 
        OR AR2, AR1 ; |845| 
        MOV AR1, port(*AR3) ; |845| 
	.dwpsn	file "src/csl_emif.c",line 848,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(short(#7)), AC0 ; |848| 
        MOV *SP(#5), AR3 ; |848| 
        SFTL AC0, #4, AC0 ; |848| 
        AND #0x0070, AC0, AR1 ; |848| 
        MOV port(*AR3), AR2 ; |848| 
        AND #0xff8f, AR2, AR2 ; |848| 
        OR AR2, AR1 ; |848| 
        MOV AR1, port(*AR3) ; |848| 
	.dwpsn	file "src/csl_emif.c",line 851,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(#8), AC0 ; |851| 
        MOV *SP(#5), AR3 ; |851| 
        SFTL AC0, #2, AC0 ; |851| 
        AND #0x000c, AC0, AR1 ; |851| 
        MOV port(*AR3), AR2 ; |851| 
        AND #0xfff3, AR2, AR2 ; |851| 
        OR AR2, AR1 ; |851| 
        MOV AR1, port(*AR3) ; |851| 
	.dwpsn	file "src/csl_emif.c",line 854,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV *AR3(#9), AR1 ; |854| 
        MOV *SP(#5), AR3 ; |854| 
        AND #0x0003, AR1, AR1 ; |854| 
        MOV port(*AR3), AR2 ; |854| 
        AND #0xfffc, AR2, AR2 ; |854| 
        OR AR2, AR1 ; |854| 
        MOV AR1, port(*AR3) ; |854| 
	.dwpsn	file "src/csl_emif.c",line 858,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |858| 
        MOV *AR3(short(#1)), AR3 ; |858| 
        MOV port(*AR3(T0)), AR1 ; |858| 
        MOV dbl(*SP(#2)), XAR3
        AND #0xfffc, AR1, AR2 ; |858| 
        MOV *AR3, AR1 ; |858| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |858| 
        AND #0x0003, AR1, AR1 ; |858| 
        OR AR2, AR1 ; |858| 
        MOV AR1, port(*AR3(T0)) ; |858| 
	.dwpsn	file "src/csl_emif.c",line 860,column 3,is_stmt
        B $C$L33  ; |860| 
                                        ; branch occurs ; |860| 
$C$L31:    
	.dwpsn	file "src/csl_emif.c",line 863,column 4,is_stmt
        MOV #-6, *SP(#4) ; |863| 
	.dwpsn	file "src/csl_emif.c",line 865,column 5,is_stmt
        B $C$L33  ; |865| 
                                        ; branch occurs ; |865| 
$C$L32:    
	.dwpsn	file "src/csl_emif.c",line 868,column 3,is_stmt
        MOV #-5, *SP(#4) ; |868| 
$C$L33:    
	.dwpsn	file "src/csl_emif.c",line 871,column 5,is_stmt
        MOV *SP(#4), T0 ; |871| 
	.dwpsn	file "src/csl_emif.c",line 873,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$74, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x369)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.global	_NOR_readNwords

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("NOR_readNwords")
	.dwattr $C$DW$83, DW_AT_low_pc(_NOR_readNwords)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_NOR_readNwords")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0x398)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_emif.c",line 924,column 1,is_stmt,address _NOR_readNwords

	.dwfde $C$DW$CIE, _NOR_readNwords
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg17]
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numWords")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg0]
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("norAddr")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg3]
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataBuff")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: NOR_readNwords                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NOR_readNwords:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("numWords")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("norAddr")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("dataBuff")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("startAddr")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_startAddr")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("baseAddr")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |924| 
        MOV AC0, dbl(*SP(#2)) ; |924| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 930,column 5,is_stmt
        MOV #0, *SP(#8) ; |930| 
	.dwpsn	file "src/csl_emif.c",line 931,column 2,is_stmt
        AMOV #4194304, XAR3 ; |931| 
        MOV XAR3, AC0
        ADD dbl(*SP(#4)), AC0, AC0 ; |931| 
        MOV AC0, dbl(*SP(#10))
	.dwpsn	file "src/csl_emif.c",line 932,column 2,is_stmt
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_emif.c",line 935,column 5,is_stmt
        MOV #255, *AR3 ; |935| 
	.dwpsn	file "src/csl_emif.c",line 937,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L36,AC0 == #0 ; |937| 
                                        ; branchcc occurs ; |937| 
	.dwpsn	file "src/csl_emif.c",line 939,column 9,is_stmt
        MOV *SP(#5), AR1 ; |939| 
        AMOV #4194304, XAR3 ; |939| 

        MOV *SP(#3), AR1 ; |939| 
||      AADD AR1, AR3 ; |939| 

        AADD AR1, AR3 ; |939| 
        MOV XAR3, AC0
        AMOV #6291456, XAR3 ; |939| 
        MOV XAR3, AC1
        CMPU AC0 >= AC1, TC1 ; |939| 
        BCC $C$L35,TC1 ; |939| 
                                        ; branchcc occurs ; |939| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L35,AC0 == #0 ; |939| 
                                        ; branchcc occurs ; |939| 
        MOV dbl(*SP(#2)), AC0 ; |939| 
        BCC $C$L35,AC0 == #0 ; |939| 
                                        ; branchcc occurs ; |939| 
	.dwpsn	file "src/csl_emif.c",line 943,column 11,is_stmt
        MOV #0, AC0 ; |943| 
        MOV AC0, dbl(*SP(#14)) ; |943| 
	.dwpsn	file "src/csl_emif.c",line 943,column 22,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |943| 
        MOV dbl(*SP(#2)), AC0 ; |943| 
        CMPU AC1 >= AC0, TC1 ; |943| 
        BCC $C$L37,TC1 ; |943| 
                                        ; branchcc occurs ; |943| 
$C$L34:    
$C$DW$L$_NOR_readNwords$6$B:
	.dwpsn	file "src/csl_emif.c",line 945,column 8,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV *AR3+, AR1 ; |945| 
        MOV XAR3, dbl(*SP(#10))
        MOV *SP(#15), T0 ; |945| 
        MOV dbl(*SP(#6)), XAR3
        MOV AR1, *AR3(T0) ; |945| 
	.dwpsn	file "src/csl_emif.c",line 943,column 40,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |943| 
        ADD #1, AC0 ; |943| 
        MOV AC0, dbl(*SP(#14)) ; |943| 
	.dwpsn	file "src/csl_emif.c",line 943,column 22,is_stmt
        MOV dbl(*SP(#14)), AC1 ; |943| 
        MOV dbl(*SP(#2)), AC0 ; |943| 
        CMPU AC1 < AC0, TC1 ; |943| 
        BCC $C$L34,TC1 ; |943| 
                                        ; branchcc occurs ; |943| 
$C$DW$L$_NOR_readNwords$6$E:
	.dwpsn	file "src/csl_emif.c",line 947,column 9,is_stmt
        B $C$L37  ; |947| 
                                        ; branch occurs ; |947| 
$C$L35:    
	.dwpsn	file "src/csl_emif.c",line 950,column 7,is_stmt
        MOV #-6, *SP(#8) ; |950| 
	.dwpsn	file "src/csl_emif.c",line 952,column 5,is_stmt
        B $C$L37  ; |952| 
                                        ; branch occurs ; |952| 
$C$L36:    
	.dwpsn	file "src/csl_emif.c",line 955,column 3,is_stmt
        MOV #-5, *SP(#8) ; |955| 
$C$L37:    
	.dwpsn	file "src/csl_emif.c",line 958,column 2,is_stmt
        MOV *SP(#8), T0 ; |958| 
	.dwpsn	file "src/csl_emif.c",line 959,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$97	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$97, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L34:1:1714639434")
	.dwattr $C$DW$97, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x3af)
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x3b2)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_NOR_readNwords$6$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_NOR_readNwords$6$E)
	.dwendtag $C$DW$97

	.dwattr $C$DW$83, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x3bf)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text"
	.global	_NOR_WriteNwords

$C$DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("NOR_WriteNwords")
	.dwattr $C$DW$99, DW_AT_low_pc(_NOR_WriteNwords)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_NOR_WriteNwords")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$99, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x3ee)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_emif.c",line 1010,column 1,is_stmt,address _NOR_WriteNwords

	.dwfde $C$DW$CIE, _NOR_WriteNwords
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg17]
$C$DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numWords")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("norAddr")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg3]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataBuff")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: NOR_WriteNwords                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NOR_WriteNwords:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("numWords")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_numWords")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("norAddr")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("dataBuff")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_dataBuff")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("startAddr")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_startAddr")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#6))
        MOV AC1, dbl(*SP(#4)) ; |1010| 
        MOV AC0, dbl(*SP(#2)) ; |1010| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1015,column 5,is_stmt
        MOV #0, *SP(#8) ; |1015| 
	.dwpsn	file "src/csl_emif.c",line 1016,column 2,is_stmt
        AMOV #4194304, XAR3 ; |1016| 
        MOV XAR3, AC0
        ADD dbl(*SP(#4)), AC0, AC0 ; |1016| 
        MOV AC0, dbl(*SP(#10))
	.dwpsn	file "src/csl_emif.c",line 1018,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L41,AC0 == #0 ; |1018| 
                                        ; branchcc occurs ; |1018| 
	.dwpsn	file "src/csl_emif.c",line 1020,column 9,is_stmt
        MOV *SP(#5), AR1 ; |1020| 
        AMOV #4194304, XAR3 ; |1020| 

        MOV *SP(#3), AR1 ; |1020| 
||      AADD AR1, AR3 ; |1020| 

        AADD AR1, AR3 ; |1020| 
        MOV XAR3, AC0
        AMOV #6291456, XAR3 ; |1020| 
        MOV XAR3, AC1
        CMPU AC0 >= AC1, TC1 ; |1020| 
        BCC $C$L40,TC1 ; |1020| 
                                        ; branchcc occurs ; |1020| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L40,AC0 == #0 ; |1020| 
                                        ; branchcc occurs ; |1020| 
        MOV dbl(*SP(#2)), AC0 ; |1020| 
        BCC $C$L40,AC0 == #0 ; |1020| 
                                        ; branchcc occurs ; |1020| 
	.dwpsn	file "src/csl_emif.c",line 1024,column 11,is_stmt
        MOV #0, AC0 ; |1024| 
        MOV AC0, dbl(*SP(#12)) ; |1024| 
	.dwpsn	file "src/csl_emif.c",line 1024,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |1024| 
        MOV dbl(*SP(#2)), AC0 ; |1024| 
        CMPU AC1 >= AC0, TC1 ; |1024| 
        BCC $C$L42,TC1 ; |1024| 
                                        ; branchcc occurs ; |1024| 
$C$L38:    
$C$DW$L$_NOR_WriteNwords$6$B:
	.dwpsn	file "src/csl_emif.c",line 1026,column 11,is_stmt
        MOV dbl(*SP(#10)), XAR3
        MOV #64, *AR3 ; |1026| 
	.dwpsn	file "src/csl_emif.c",line 1029,column 8,is_stmt
        MOV dbl(*SP(#10)), XAR3
        AMAR *AR3, XAR2
        AMAR *AR2+
        MOV XAR2, dbl(*SP(#10))
        MOV *SP(#13), T0 ; |1029| 
        MOV dbl(*SP(#6)), XAR2
        MOV *AR2(T0), *AR3 ; |1029| 
	.dwpsn	file "src/csl_emif.c",line 1032,column 8,is_stmt
        AMOV #65536, XAR3 ; |1032| 
        MOV XAR3, AC0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_NOR_checkStatus")
	.dwattr $C$DW$111, DW_AT_TI_call
        CALL #_NOR_checkStatus ; |1032| 
                                        ; call occurs [#_NOR_checkStatus] ; |1032| 
        MOV T0, *SP(#8) ; |1032| 
	.dwpsn	file "src/csl_emif.c",line 1033,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L39,AR1 == #0 ; |1033| 
                                        ; branchcc occurs ; |1033| 
$C$DW$L$_NOR_WriteNwords$6$E:
	.dwpsn	file "src/csl_emif.c",line 1035,column 9,is_stmt
        MOV #-1, *SP(#8) ; |1035| 
	.dwpsn	file "src/csl_emif.c",line 1036,column 6,is_stmt
        B $C$L42  ; |1036| 
                                        ; branch occurs ; |1036| 
$C$L39:    
$C$DW$L$_NOR_WriteNwords$8$B:
	.dwpsn	file "src/csl_emif.c",line 1024,column 40,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1024| 
        ADD #1, AC0 ; |1024| 
        MOV AC0, dbl(*SP(#12)) ; |1024| 
	.dwpsn	file "src/csl_emif.c",line 1024,column 22,is_stmt
        MOV dbl(*SP(#12)), AC1 ; |1024| 
        MOV dbl(*SP(#2)), AC0 ; |1024| 
        CMPU AC1 < AC0, TC1 ; |1024| 
        BCC $C$L38,TC1 ; |1024| 
                                        ; branchcc occurs ; |1024| 
$C$DW$L$_NOR_WriteNwords$8$E:
	.dwpsn	file "src/csl_emif.c",line 1039,column 9,is_stmt
        B $C$L42  ; |1039| 
                                        ; branch occurs ; |1039| 
$C$L40:    
	.dwpsn	file "src/csl_emif.c",line 1042,column 7,is_stmt
        MOV #-6, *SP(#8) ; |1042| 
	.dwpsn	file "src/csl_emif.c",line 1044,column 5,is_stmt
        B $C$L42  ; |1044| 
                                        ; branch occurs ; |1044| 
$C$L41:    
	.dwpsn	file "src/csl_emif.c",line 1047,column 3,is_stmt
        MOV #-5, *SP(#8) ; |1047| 
$C$L42:    
	.dwpsn	file "src/csl_emif.c",line 1049,column 2,is_stmt
        MOV *SP(#8), T0 ; |1049| 
	.dwpsn	file "src/csl_emif.c",line 1050,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$113	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$113, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L38:1:1714639434")
	.dwattr $C$DW$113, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x400)
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x40e)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_NOR_WriteNwords$6$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_NOR_WriteNwords$6$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_NOR_WriteNwords$8$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_NOR_WriteNwords$8$E)
	.dwendtag $C$DW$113

	.dwattr $C$DW$99, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x41a)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.global	_NOR_checkStatus

$C$DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("NOR_checkStatus")
	.dwattr $C$DW$116, DW_AT_low_pc(_NOR_checkStatus)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_NOR_checkStatus")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$116, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x43f)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1088,column 1,is_stmt,address _NOR_checkStatus

	.dwfde $C$DW$CIE, _NOR_checkStatus
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeOut")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: NOR_checkStatus                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR3,XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NOR_checkStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("flashAddr")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_flashAddr")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV AC0, dbl(*SP(#0)) ; |1088| 
	.dwpsn	file "src/csl_emif.c",line 1090,column 13,is_stmt
        MOV #-1, *SP(#4) ; |1090| 
	.dwpsn	file "src/csl_emif.c",line 1092,column 2,is_stmt
        AMOV #4194304, XAR3 ; |1092| 
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_emif.c",line 1094,column 5,is_stmt
        MOV #112, *AR3 ; |1094| 
	.dwpsn	file "src/csl_emif.c",line 1096,column 12,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1096| 
        BCC $C$L48,AC0 == #0 ; |1096| 
                                        ; branchcc occurs ; |1096| 
$C$L43:    
$C$DW$L$_NOR_checkStatus$2$B:
	.dwpsn	file "src/csl_emif.c",line 1101,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #7, *AR3, TC1 ; |1101| 
        BCC $C$L44,TC1 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_NOR_checkStatus$2$E:
$C$DW$L$_NOR_checkStatus$3$B:
        BTST #15, *AR3, TC1 ; |1101| 
        BCC $C$L47,!TC1 ; |1101| 
                                        ; branchcc occurs ; |1101| 
$C$DW$L$_NOR_checkStatus$3$E:
$C$L44:    
	.dwpsn	file "src/csl_emif.c",line 1106,column 13,is_stmt
        BAND *AR3, #127, TC1 ; |1106| 
        BCC $C$L45,TC1 ; |1106| 
                                        ; branchcc occurs ; |1106| 
        BAND *AR3, #32512, TC1 ; |1106| 
        BCC $C$L46,!TC1 ; |1106| 
                                        ; branchcc occurs ; |1106| 
$C$L45:    
	.dwpsn	file "src/csl_emif.c",line 1109,column 17,is_stmt
        MOV #255, *AR3 ; |1109| 
	.dwpsn	file "src/csl_emif.c",line 1110,column 17,is_stmt
        MOV #-1, *SP(#4) ; |1110| 
	.dwpsn	file "src/csl_emif.c",line 1111,column 5,is_stmt
        B $C$L48  ; |1111| 
                                        ; branch occurs ; |1111| 
$C$L46:    
	.dwpsn	file "src/csl_emif.c",line 1115,column 17,is_stmt
        MOV #255, *AR3 ; |1115| 
	.dwpsn	file "src/csl_emif.c",line 1116,column 17,is_stmt
        MOV #0, *SP(#4) ; |1116| 
	.dwpsn	file "src/csl_emif.c",line 1117,column 5,is_stmt
        B $C$L48  ; |1117| 
                                        ; branch occurs ; |1117| 
$C$L47:    
$C$DW$L$_NOR_checkStatus$9$B:
	.dwpsn	file "src/csl_emif.c",line 1120,column 9,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1120| 
        SUB #1, AC0 ; |1120| 
        MOV AC0, dbl(*SP(#0)) ; |1120| 
	.dwpsn	file "src/csl_emif.c",line 1096,column 12,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |1096| 
        BCC $C$L43,AC0 != #0 ; |1096| 
                                        ; branchcc occurs ; |1096| 
$C$DW$L$_NOR_checkStatus$9$E:
$C$L48:    
	.dwpsn	file "src/csl_emif.c",line 1124,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #255, *AR3 ; |1124| 
	.dwpsn	file "src/csl_emif.c",line 1126,column 5,is_stmt
        MOV *SP(#4), T0 ; |1126| 
	.dwpsn	file "src/csl_emif.c",line 1127,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$122	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$122, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L43:1:1714639434")
	.dwattr $C$DW$122, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x448)
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x461)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$_NOR_checkStatus$2$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$_NOR_checkStatus$2$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_NOR_checkStatus$3$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_NOR_checkStatus$3$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_NOR_checkStatus$9$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_NOR_checkStatus$9$E)
	.dwendtag $C$DW$122

	.dwattr $C$DW$116, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x467)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.global	_NOR_sendCommand

$C$DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("NOR_sendCommand")
	.dwattr $C$DW$126, DW_AT_low_pc(_NOR_sendCommand)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_NOR_sendCommand")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$126, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0x495)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_emif.c",line 1176,column 1,is_stmt,address _NOR_sendCommand

	.dwfde $C$DW$CIE, _NOR_sendCommand
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg17]
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("norAddr")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg0]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("command")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_command")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NOR_sendCommand                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NOR_sendCommand:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("norAddr")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_norAddr")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("command")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_command")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("startAddr")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_startAddr")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |1176| 
        MOV AC0, dbl(*SP(#2)) ; |1176| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1180,column 5,is_stmt
        MOV #0, *SP(#5) ; |1180| 
	.dwpsn	file "src/csl_emif.c",line 1181,column 2,is_stmt
        AMOV #4194304, XAR3 ; |1181| 
        MOV XAR3, AC0
        ADD dbl(*SP(#2)), AC0, AC0 ; |1181| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_emif.c",line 1183,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L50,AC0 == #0 ; |1183| 
                                        ; branchcc occurs ; |1183| 
	.dwpsn	file "src/csl_emif.c",line 1185,column 6,is_stmt
        MOV #-32 << #16, AC0 ; |1185| 
        MOV dbl(*SP(#2)), AC1 ; |1185| 
        CMPU AC1 >= AC0, TC1 ; |1185| 
        BCC $C$L49,TC1 ; |1185| 
                                        ; branchcc occurs ; |1185| 
	.dwpsn	file "src/csl_emif.c",line 1187,column 10,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV *SP(#4), AR1 ; |1187| 
        MOV AR1, *AR3 ; |1187| 
	.dwpsn	file "src/csl_emif.c",line 1188,column 3,is_stmt
        B $C$L51  ; |1188| 
                                        ; branch occurs ; |1188| 
$C$L49:    
	.dwpsn	file "src/csl_emif.c",line 1191,column 7,is_stmt
        MOV #-6, *SP(#5) ; |1191| 
	.dwpsn	file "src/csl_emif.c",line 1193,column 5,is_stmt
        B $C$L51  ; |1193| 
                                        ; branch occurs ; |1193| 
$C$L50:    
	.dwpsn	file "src/csl_emif.c",line 1196,column 3,is_stmt
        MOV #-5, *SP(#5) ; |1196| 
$C$L51:    
	.dwpsn	file "src/csl_emif.c",line 1198,column 2,is_stmt
        MOV *SP(#5), T0 ; |1198| 
	.dwpsn	file "src/csl_emif.c",line 1199,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$126, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x4af)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.global	_NAND_setup

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_setup")
	.dwattr $C$DW$136, DW_AT_low_pc(_NAND_setup)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_NAND_setup")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x4e0)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1250,column 1,is_stmt,address _NAND_setup

	.dwfde $C$DW$CIE, _NAND_setup
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nandConfig")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_nandConfig")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: NAND_setup                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,TC1,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("nandConfig")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_nandConfig")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1253,column 2,is_stmt
        MOV #0, *SP(#4) ; |1253| 
	.dwpsn	file "src/csl_emif.c",line 1255,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L59,AC0 == #0 ; |1255| 
                                        ; branchcc occurs ; |1255| 
	.dwpsn	file "src/csl_emif.c",line 1257,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L58,AC0 == #0 ; |1257| 
                                        ; branchcc occurs ; |1257| 
	.dwpsn	file "src/csl_emif.c",line 1259,column 4,is_stmt
        MOV *AR3, AR1 ; |1259| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1259| 
	.dwpsn	file "src/csl_emif.c",line 1260,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1260| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#16) ; |1260| 
	.dwpsn	file "src/csl_emif.c",line 1261,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |1261| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#5)) ; |1261| 
	.dwpsn	file "src/csl_emif.c",line 1262,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1262| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#18) ; |1262| 
	.dwpsn	file "src/csl_emif.c",line 1266,column 4,is_stmt
        B $C$L57  ; |1266| 
                                        ; branch occurs ; |1266| 
$C$L52:    
	.dwpsn	file "src/csl_emif.c",line 1271,column 6,is_stmt
        MOV #96, T0 ; |1271| 
        MOV *AR3, AR3 ; |1271| 
        MOV port(*AR3(T0)), AR1 ; |1271| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1271| 
        BCLR @#0, AR1 ; |1271| 
        BSET @#0, AR1 ; |1271| 
        MOV AR1, port(*AR3(T0)) ; |1271| 
	.dwpsn	file "src/csl_emif.c",line 1273,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1273| 
        MOV port(*AR3(T0)), AR1 ; |1273| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1273| 
        BCLR @#1, AR1 ; |1273| 
        MOV AR1, port(*AR3(T0)) ; |1273| 
	.dwpsn	file "src/csl_emif.c",line 1275,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1275| 
        MOV port(*AR3(T0)), AR1 ; |1275| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1275| 
        BCLR @#2, AR1 ; |1275| 
        MOV AR1, port(*AR3(T0)) ; |1275| 
	.dwpsn	file "src/csl_emif.c",line 1277,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1277| 
        MOV port(*AR3(T0)), AR1 ; |1277| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1277| 
        BCLR @#3, AR1 ; |1277| 
        MOV AR1, port(*AR3(T0)) ; |1277| 
	.dwpsn	file "src/csl_emif.c",line 1280,column 11,is_stmt
        B $C$L60  ; |1280| 
                                        ; branch occurs ; |1280| 
$C$L53:    
	.dwpsn	file "src/csl_emif.c",line 1285,column 6,is_stmt
        MOV #96, T0 ; |1285| 
        MOV *AR3, AR3 ; |1285| 
        MOV port(*AR3(T0)), AR1 ; |1285| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1285| 
        BCLR @#0, AR1 ; |1285| 
        MOV AR1, port(*AR3(T0)) ; |1285| 
	.dwpsn	file "src/csl_emif.c",line 1287,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1287| 
        MOV port(*AR3(T0)), AR1 ; |1287| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1287| 
        BCLR @#1, AR1 ; |1287| 
        BSET @#1, AR1 ; |1287| 
        MOV AR1, port(*AR3(T0)) ; |1287| 
	.dwpsn	file "src/csl_emif.c",line 1289,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1289| 
        MOV port(*AR3(T0)), AR1 ; |1289| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1289| 
        BCLR @#2, AR1 ; |1289| 
        MOV AR1, port(*AR3(T0)) ; |1289| 
	.dwpsn	file "src/csl_emif.c",line 1291,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1291| 
        MOV port(*AR3(T0)), AR1 ; |1291| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1291| 
        BCLR @#3, AR1 ; |1291| 
        MOV AR1, port(*AR3(T0)) ; |1291| 
	.dwpsn	file "src/csl_emif.c",line 1294,column 11,is_stmt
        B $C$L60  ; |1294| 
                                        ; branch occurs ; |1294| 
$C$L54:    
	.dwpsn	file "src/csl_emif.c",line 1299,column 6,is_stmt
        MOV #96, T0 ; |1299| 
        MOV *AR3, AR3 ; |1299| 
        MOV port(*AR3(T0)), AR1 ; |1299| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1299| 
        BCLR @#0, AR1 ; |1299| 
        MOV AR1, port(*AR3(T0)) ; |1299| 
	.dwpsn	file "src/csl_emif.c",line 1301,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1301| 
        MOV port(*AR3(T0)), AR1 ; |1301| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1301| 
        BCLR @#1, AR1 ; |1301| 
        MOV AR1, port(*AR3(T0)) ; |1301| 
	.dwpsn	file "src/csl_emif.c",line 1303,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1303| 
        MOV port(*AR3(T0)), AR1 ; |1303| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1303| 
        BCLR @#2, AR1 ; |1303| 
        BSET @#2, AR1 ; |1303| 
        MOV AR1, port(*AR3(T0)) ; |1303| 
	.dwpsn	file "src/csl_emif.c",line 1305,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1305| 
        MOV port(*AR3(T0)), AR1 ; |1305| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1305| 
        BCLR @#3, AR1 ; |1305| 
        MOV AR1, port(*AR3(T0)) ; |1305| 
	.dwpsn	file "src/csl_emif.c",line 1307,column 11,is_stmt
        B $C$L60  ; |1307| 
                                        ; branch occurs ; |1307| 
$C$L55:    
	.dwpsn	file "src/csl_emif.c",line 1312,column 6,is_stmt
        MOV #96, T0 ; |1312| 
        MOV *AR3, AR3 ; |1312| 
        MOV port(*AR3(T0)), AR1 ; |1312| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1312| 
        BCLR @#0, AR1 ; |1312| 
        MOV AR1, port(*AR3(T0)) ; |1312| 
	.dwpsn	file "src/csl_emif.c",line 1314,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1314| 
        MOV port(*AR3(T0)), AR1 ; |1314| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1314| 
        BCLR @#1, AR1 ; |1314| 
        MOV AR1, port(*AR3(T0)) ; |1314| 
	.dwpsn	file "src/csl_emif.c",line 1316,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1316| 
        MOV port(*AR3(T0)), AR1 ; |1316| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1316| 
        BCLR @#2, AR1 ; |1316| 
        MOV AR1, port(*AR3(T0)) ; |1316| 
	.dwpsn	file "src/csl_emif.c",line 1318,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1318| 
        MOV port(*AR3(T0)), AR1 ; |1318| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1318| 
        BCLR @#3, AR1 ; |1318| 
        BSET @#3, AR1 ; |1318| 
        MOV AR1, port(*AR3(T0)) ; |1318| 
	.dwpsn	file "src/csl_emif.c",line 1321,column 11,is_stmt
        B $C$L60  ; |1321| 
                                        ; branch occurs ; |1321| 
$C$L56:    
	.dwpsn	file "src/csl_emif.c",line 1324,column 9,is_stmt
        MOV #-6, *SP(#4) ; |1324| 
	.dwpsn	file "src/csl_emif.c",line 1325,column 11,is_stmt
        B $C$L60  ; |1325| 
                                        ; branch occurs ; |1325| 
$C$L57:    
	.dwpsn	file "src/csl_emif.c",line 1266,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1266| 
        BCC $C$L52,AR1 == #0 ; |1266| 
                                        ; branchcc occurs ; |1266| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1266| 
        BCC $C$L53,TC1 ; |1266| 
                                        ; branchcc occurs ; |1266| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1266| 
        BCC $C$L54,TC1 ; |1266| 
                                        ; branchcc occurs ; |1266| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |1266| 
        BCC $C$L55,TC1 ; |1266| 
                                        ; branchcc occurs ; |1266| 
        B $C$L56  ; |1266| 
                                        ; branch occurs ; |1266| 
$C$L58:    
	.dwpsn	file "src/csl_emif.c",line 1331,column 4,is_stmt
        MOV #-6, *SP(#4) ; |1331| 
	.dwpsn	file "src/csl_emif.c",line 1333,column 5,is_stmt
        B $C$L60  ; |1333| 
                                        ; branch occurs ; |1333| 
$C$L59:    
	.dwpsn	file "src/csl_emif.c",line 1336,column 3,is_stmt
        MOV #-5, *SP(#4) ; |1336| 
$C$L60:    
	.dwpsn	file "src/csl_emif.c",line 1339,column 5,is_stmt
        MOV *SP(#4), T0 ; |1339| 
	.dwpsn	file "src/csl_emif.c",line 1340,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$136, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x53c)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.global	_NAND_getBankInfo

$C$DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_getBankInfo")
	.dwattr $C$DW$143, DW_AT_low_pc(_NAND_getBankInfo)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_NAND_getBankInfo")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$143, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x575)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_emif.c",line 1400,column 1,is_stmt,address _NAND_getBankInfo

	.dwfde $C$DW$CIE, _NAND_getBankInfo
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg17]
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bank")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_bank")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg19]
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bankNum")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_bankNum")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_getBankInfo                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_getBankInfo:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("bank")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_bank")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("bankNum")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_bankNum")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#4) ; |1400| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1403,column 2,is_stmt
        MOV #0, *SP(#5) ; |1403| 
	.dwpsn	file "src/csl_emif.c",line 1405,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L69,AC0 == #0 ; |1405| 
                                        ; branchcc occurs ; |1405| 
	.dwpsn	file "src/csl_emif.c",line 1407,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L68,AC0 == #0 ; |1407| 
                                        ; branchcc occurs ; |1407| 
	.dwpsn	file "src/csl_emif.c",line 1409,column 4,is_stmt
        B $C$L66  ; |1409| 
                                        ; branch occurs ; |1409| 
$C$L61:    
	.dwpsn	file "src/csl_emif.c",line 1412,column 6,is_stmt
        AMOV #4194304, XAR3 ; |1412| 
        MOV XAR3, AC0
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |1412| 
	.dwpsn	file "src/csl_emif.c",line 1413,column 11,is_stmt
        B $C$L67  ; |1413| 
                                        ; branch occurs ; |1413| 
$C$L62:    
	.dwpsn	file "src/csl_emif.c",line 1416,column 6,is_stmt
        AMOV #6291456, XAR3 ; |1416| 
        MOV XAR3, AC0
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |1416| 
	.dwpsn	file "src/csl_emif.c",line 1417,column 11,is_stmt
        B $C$L67  ; |1417| 
                                        ; branch occurs ; |1417| 
$C$L63:    
	.dwpsn	file "src/csl_emif.c",line 1420,column 6,is_stmt
        AMOV #7340032, XAR3 ; |1420| 
        MOV XAR3, AC0
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |1420| 
	.dwpsn	file "src/csl_emif.c",line 1421,column 11,is_stmt
        B $C$L67  ; |1421| 
                                        ; branch occurs ; |1421| 
$C$L64:    
	.dwpsn	file "src/csl_emif.c",line 1424,column 6,is_stmt
        AMOV #7864320, XAR3 ; |1424| 
        MOV XAR3, AC0
        MOV dbl(*SP(#2)), XAR3
        MOV AC0, dbl(*AR3) ; |1424| 
	.dwpsn	file "src/csl_emif.c",line 1425,column 11,is_stmt
        B $C$L67  ; |1425| 
                                        ; branch occurs ; |1425| 
$C$L65:    
	.dwpsn	file "src/csl_emif.c",line 1428,column 9,is_stmt
        MOV #-6, *SP(#5) ; |1428| 
	.dwpsn	file "src/csl_emif.c",line 1429,column 11,is_stmt
        B $C$L67  ; |1429| 
                                        ; branch occurs ; |1429| 
$C$L66:    
	.dwpsn	file "src/csl_emif.c",line 1409,column 4,is_stmt
        MOV *SP(#4), AR1 ; |1409| 
        BCC $C$L61,AR1 == #0 ; |1409| 
                                        ; branchcc occurs ; |1409| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |1409| 
        BCC $C$L62,TC1 ; |1409| 
                                        ; branchcc occurs ; |1409| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1409| 
        BCC $C$L63,TC1 ; |1409| 
                                        ; branchcc occurs ; |1409| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1409| 
        BCC $C$L64,TC1 ; |1409| 
                                        ; branchcc occurs ; |1409| 
        B $C$L65  ; |1409| 
                                        ; branch occurs ; |1409| 
$C$L67:    
	.dwpsn	file "src/csl_emif.c",line 1432,column 4,is_stmt
        MOV *SP(#5), AR1 ; |1432| 
        BCC $C$L70,AR1 != #0 ; |1432| 
                                        ; branchcc occurs ; |1432| 
	.dwpsn	file "src/csl_emif.c",line 1434,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(*SP(#4)), AC0 ; |1434| 
        MOV AC0, dbl(*AR3(short(#6))) ; |1434| 
        NOP
	.dwpsn	file "src/csl_emif.c",line 1437,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #4096, AC0 ; |1437| 
        ADD dbl(*AR3), AC0, AC0 ; |1437| 
        MOV AC0, dbl(*AR3(short(#2))) ; |1437| 
        NOP
	.dwpsn	file "src/csl_emif.c",line 1440,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #8192, AC0 ; |1440| 
        ADD dbl(*AR3), AC0, AC0 ; |1440| 
        MOV AC0, dbl(*AR3(short(#4))) ; |1440| 
	.dwpsn	file "src/csl_emif.c",line 1443,column 3,is_stmt
        B $C$L70  ; |1443| 
                                        ; branch occurs ; |1443| 
$C$L68:    
	.dwpsn	file "src/csl_emif.c",line 1446,column 4,is_stmt
        MOV #-6, *SP(#5) ; |1446| 
	.dwpsn	file "src/csl_emif.c",line 1448,column 5,is_stmt
        B $C$L70  ; |1448| 
                                        ; branch occurs ; |1448| 
$C$L69:    
	.dwpsn	file "src/csl_emif.c",line 1451,column 3,is_stmt
        MOV #-5, *SP(#5) ; |1451| 
$C$L70:    
	.dwpsn	file "src/csl_emif.c",line 1454,column 5,is_stmt
        MOV *SP(#5), T0 ; |1454| 
	.dwpsn	file "src/csl_emif.c",line 1455,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$143, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x5af)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.global	_NAND_setLatchEnableOffset

$C$DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_setLatchEnableOffset")
	.dwattr $C$DW$152, DW_AT_low_pc(_NAND_setLatchEnableOffset)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_NAND_setLatchEnableOffset")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$152, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x5eb)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_emif.c",line 1518,column 1,is_stmt,address _NAND_setLatchEnableOffset

	.dwfde $C$DW$CIE, _NAND_setLatchEnableOffset
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg17]
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addrOffset")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_addrOffset")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg0]
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmdOffset")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_cmdOffset")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg3]
;*******************************************************************************
;* FUNCTION NAME: NAND_setLatchEnableOffset                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,CARRY,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_setLatchEnableOffset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("addrOffset")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_addrOffset")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("cmdOffset")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_cmdOffset")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AC1, dbl(*SP(#4)) ; |1518| 
        MOV AC0, dbl(*SP(#2)) ; |1518| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1521,column 2,is_stmt
        MOV #0, *SP(#6) ; |1521| 
	.dwpsn	file "src/csl_emif.c",line 1523,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L71,AC0 == #0 ; |1523| 
                                        ; branchcc occurs ; |1523| 
	.dwpsn	file "src/csl_emif.c",line 1526,column 3,is_stmt
        MOV dbl(*SP(#2)), AC0 ; |1526| 
        ADD dbl(*AR3(#8)), AC0, AC0 ; |1526| 
        MOV AC0, dbl(*AR3(#10)) ; |1526| 
        NOP
	.dwpsn	file "src/csl_emif.c",line 1528,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1528| 
        ADD dbl(*AR3(#8)), AC0, AC0 ; |1528| 
        MOV AC0, dbl(*AR3(#12)) ; |1528| 
	.dwpsn	file "src/csl_emif.c",line 1529,column 5,is_stmt
        B $C$L72  ; |1529| 
                                        ; branch occurs ; |1529| 
$C$L71:    
	.dwpsn	file "src/csl_emif.c",line 1532,column 3,is_stmt
        MOV #-5, *SP(#6) ; |1532| 
$C$L72:    
	.dwpsn	file "src/csl_emif.c",line 1535,column 5,is_stmt
        MOV *SP(#6), T0 ; |1535| 
	.dwpsn	file "src/csl_emif.c",line 1536,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$152, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x600)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"
	.global	_NAND_isStatusWriteProtected

$C$DW$161	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_isStatusWriteProtected")
	.dwattr $C$DW$161, DW_AT_low_pc(_NAND_isStatusWriteProtected)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_NAND_isStatusWriteProtected")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$161, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x635)
	.dwattr $C$DW$161, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_emif.c",line 1591,column 1,is_stmt,address _NAND_isStatusWriteProtected

	.dwfde $C$DW$CIE, _NAND_isStatusWriteProtected
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg17]
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("WPstatus")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_WPstatus")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: NAND_isStatusWriteProtected                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,    *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_isStatusWriteProtected:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("WPstatus")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_WPstatus")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("timeOut")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_timeOut")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("statusByte")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_statusByte")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("statusSuccess")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_statusSuccess")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1598,column 2,is_stmt
        MOV #0, *SP(#8) ; |1598| 
	.dwpsn	file "src/csl_emif.c",line 1599,column 5,is_stmt
        AMOV #100000, XAR3 ; |1599| 
        MOV XAR3, AC0
        MOV AC0, dbl(*SP(#4)) ; |1599| 
	.dwpsn	file "src/csl_emif.c",line 1601,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L83,AC0 == #0 ; |1601| 
                                        ; branchcc occurs ; |1601| 
	.dwpsn	file "src/csl_emif.c",line 1603,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L82,AC0 == #0 ; |1603| 
                                        ; branchcc occurs ; |1603| 
	.dwpsn	file "src/csl_emif.c",line 1605,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#18) == #2, TC1 ; |1605| 
        BCC $C$L73,!TC1 ; |1605| 
                                        ; branchcc occurs ; |1605| 
	.dwpsn	file "src/csl_emif.c",line 1607,column 5,is_stmt
        MOV #64, *SP(#7) ; |1607| 
	.dwpsn	file "src/csl_emif.c",line 1608,column 4,is_stmt
        B $C$L74  ; |1608| 
                                        ; branch occurs ; |1608| 
$C$L73:    
	.dwpsn	file "src/csl_emif.c",line 1611,column 5,is_stmt
        MOV #64, *SP(#7) ; |1611| 
$C$L74:    
$C$DW$L$_NAND_isStatusWriteProtected$6$B:
	.dwpsn	file "src/csl_emif.c",line 1616,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |1616| 
        MOV AC0, XAR3
        MOV #112, *AR3 ; |1616| 
	.dwpsn	file "src/csl_emif.c",line 1619,column 9,is_stmt
        MOV #0, *SP(#9) ; |1619| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 1619,column 21,is_stmt
        MOV #100, AR2 ; |1619| 
        MOV *SP(#9), AR1 ; |1619| 
        CMPU AR1 >= AR2, TC1 ; |1619| 
        BCC $C$L76,TC1 ; |1619| 
                                        ; branchcc occurs ; |1619| 
$C$DW$L$_NAND_isStatusWriteProtected$6$E:
$C$L75:    
$C$DW$L$_NAND_isStatusWriteProtected$7$B:
	.dwpsn	file "src/csl_emif.c",line 1619,column 46,is_stmt
        ADD #1, *SP(#9) ; |1619| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 1619,column 21,is_stmt
        MOV *SP(#9), AR1 ; |1619| 
        CMPU AR1 < AR2, TC1 ; |1619| 
        BCC $C$L75,TC1 ; |1619| 
                                        ; branchcc occurs ; |1619| 
$C$DW$L$_NAND_isStatusWriteProtected$7$E:
$C$L76:    
$C$DW$L$_NAND_isStatusWriteProtected$8$B:
	.dwpsn	file "src/csl_emif.c",line 1621,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |1621| 
        BCC $C$L77,AR1 != #0 ; |1621| 
                                        ; branchcc occurs ; |1621| 
$C$DW$L$_NAND_isStatusWriteProtected$8$E:
$C$DW$L$_NAND_isStatusWriteProtected$9$B:
        MOV dbl(*AR3(#8)), AC0 ; |1621| 
        MOV AC0, XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |1621| 
        MOV AR1, *SP(#6) ; |1621| 
        NOP
        NOP
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |1621| 
        MOV AC0, XAR3
        MOV *AR3, AC0 ; |1621| 
        MOV *SP(#6), AC1 ; |1621| 
        OR AC1 << #8, AC0 ; |1621| 
        MOV AC0, *SP(#6) ; |1621| 
        B $C$L78  ; |1621| 
                                        ; branch occurs ; |1621| 
$C$DW$L$_NAND_isStatusWriteProtected$9$E:
$C$L77:    
$C$DW$L$_NAND_isStatusWriteProtected$10$B:
        MOV dbl(*AR3(#8)), AC0 ; |1621| 
        MOV AC0, XAR3
        MOV *AR3, AR1 ; |1621| 
        MOV AR1, *SP(#6) ; |1621| 
$C$DW$L$_NAND_isStatusWriteProtected$10$E:
$C$L78:    
$C$DW$L$_NAND_isStatusWriteProtected$11$B:
	.dwpsn	file "src/csl_emif.c",line 1622,column 5,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1622| 
        SUB #1, AC0 ; |1622| 
        MOV AC0, dbl(*SP(#4)) ; |1622| 
        NOP
	.dwpsn	file "src/csl_emif.c",line 1623,column 13,is_stmt
        MOV *SP(#7), AR1 ; |1623| 
        MOV AR1, AR2 ; |1623| 
        AND *SP(#6), AR2, AR2 ; |1623| 
        CMPU AR2 == AR1, TC1 ; |1623| 
        BCC $C$L79,TC1 ; |1623| 
                                        ; branchcc occurs ; |1623| 
$C$DW$L$_NAND_isStatusWriteProtected$11$E:
$C$DW$L$_NAND_isStatusWriteProtected$12$B:
        MOV dbl(*SP(#4)), AC0 ; |1623| 
        BCC $C$L74,AC0 != #0 ; |1623| 
                                        ; branchcc occurs ; |1623| 
$C$DW$L$_NAND_isStatusWriteProtected$12$E:
$C$L79:    
	.dwpsn	file "src/csl_emif.c",line 1626,column 4,is_stmt
        MOV dbl(*SP(#4)), AC0 ; |1626| 
        BCC $C$L80,AC0 == #0 ; |1626| 
                                        ; branchcc occurs ; |1626| 
	.dwpsn	file "src/csl_emif.c",line 1628,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1628| 
	.dwpsn	file "src/csl_emif.c",line 1629,column 5,is_stmt
        MOV *SP(#8), T0 ; |1629| 
        B $C$L85  ; |1629| 
                                        ; branch occurs ; |1629| 
$C$L80:    
	.dwpsn	file "src/csl_emif.c",line 1633,column 5,is_stmt
        CMP *SP(#6) == #128, TC1 ; |1633| 
        BCC $C$L81,TC1 ; |1633| 
                                        ; branchcc occurs ; |1633| 
	.dwpsn	file "src/csl_emif.c",line 1635,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |1635| 
	.dwpsn	file "src/csl_emif.c",line 1636,column 5,is_stmt
        B $C$L84  ; |1636| 
                                        ; branch occurs ; |1636| 
$C$L81:    
	.dwpsn	file "src/csl_emif.c",line 1639,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |1639| 
	.dwpsn	file "src/csl_emif.c",line 1642,column 3,is_stmt
        B $C$L84  ; |1642| 
                                        ; branch occurs ; |1642| 
$C$L82:    
	.dwpsn	file "src/csl_emif.c",line 1645,column 4,is_stmt
        MOV #-6, *SP(#8) ; |1645| 
	.dwpsn	file "src/csl_emif.c",line 1647,column 2,is_stmt
        B $C$L84  ; |1647| 
                                        ; branch occurs ; |1647| 
$C$L83:    
	.dwpsn	file "src/csl_emif.c",line 1650,column 3,is_stmt
        MOV #-5, *SP(#8) ; |1650| 
$C$L84:    
	.dwpsn	file "src/csl_emif.c",line 1653,column 2,is_stmt
        MOV *SP(#8), T0 ; |1653| 
$C$L85:    
	.dwpsn	file "src/csl_emif.c",line 1654,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$172	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$172, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L74:1:1714639434")
	.dwattr $C$DW$172, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x64e)
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x657)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$6$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$6$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$8$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$8$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$9$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$9$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$10$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$10$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$11$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$11$E)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$12$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$12$E)

$C$DW$179	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$179, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L75:2:1714639434")
	.dwattr $C$DW$179, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x653)
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x653)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_NAND_isStatusWriteProtected$7$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_NAND_isStatusWriteProtected$7$E)
	.dwendtag $C$DW$179

	.dwendtag $C$DW$172

	.dwattr $C$DW$161, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x676)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text"
	.global	_NAND_sendCommand

$C$DW$181	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_sendCommand")
	.dwattr $C$DW$181, DW_AT_low_pc(_NAND_sendCommand)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_NAND_sendCommand")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$181, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x6a5)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1703,column 1,is_stmt,address _NAND_sendCommand

	.dwfde $C$DW$CIE, _NAND_sendCommand
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg17]
$C$DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cmd")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_sendCommand                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_sendCommand:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |1703| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1706,column 2,is_stmt
        MOV #0, *SP(#3) ; |1706| 
	.dwpsn	file "src/csl_emif.c",line 1708,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1708| 

        CMPU AC1 == AC0, TC1 ; |1708| 
        BCC $C$L86,TC1 ; |1708| 
                                        ; branchcc occurs ; |1708| 
	.dwpsn	file "src/csl_emif.c",line 1710,column 9,is_stmt
        MOV dbl(*AR3(#12)), AC0 ; |1710| 
        MOV AC0, XAR3
        MOV *SP(#2), AR1 ; |1710| 
        MOV AR1, *AR3 ; |1710| 
	.dwpsn	file "src/csl_emif.c",line 1711,column 5,is_stmt
        B $C$L87  ; |1711| 
                                        ; branch occurs ; |1711| 
$C$L86:    
	.dwpsn	file "src/csl_emif.c",line 1714,column 3,is_stmt
        MOV #-5, *SP(#3) ; |1714| 
$C$L87:    
	.dwpsn	file "src/csl_emif.c",line 1717,column 5,is_stmt
        MOV *SP(#3), T0 ; |1717| 
	.dwpsn	file "src/csl_emif.c",line 1718,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$181, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x6b6)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.global	_NAND_checkCommandStatus

$C$DW$188	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_checkCommandStatus")
	.dwattr $C$DW$188, DW_AT_low_pc(_NAND_checkCommandStatus)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_NAND_checkCommandStatus")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$188, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x6e0)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1761,column 1,is_stmt,address _NAND_checkCommandStatus

	.dwfde $C$DW$CIE, _NAND_checkCommandStatus
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: NAND_checkCommandStatus                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_checkCommandStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1766,column 2,is_stmt
        MOV #0, *SP(#3) ; |1766| 
	.dwpsn	file "src/csl_emif.c",line 1767,column 2,is_stmt
        MOV #0, *SP(#2) ; |1767| 
	.dwpsn	file "src/csl_emif.c",line 1769,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |1769| 

        CMPU AC1 == AC0, TC1 ; |1769| 
        BCC $C$L90,TC1 ; |1769| 
                                        ; branchcc occurs ; |1769| 
$C$L88:    
$C$DW$L$_NAND_checkCommandStatus$2$B:
	.dwpsn	file "src/csl_emif.c",line 1774,column 4,is_stmt
        MOV #100, T0 ; |1774| 
        MOV *AR3, AR3 ; |1774| 
        MOV port(*AR3(T0)), AR1 ; |1774| 
        AND #0x000f, AR1, AC0 ; |1774| 
        MOV AC0, *SP(#4) ; |1774| 
	.dwpsn	file "src/csl_emif.c",line 1775,column 4,is_stmt
        ADD #1, *SP(#3) ; |1775| 
        NOP
	.dwpsn	file "src/csl_emif.c",line 1777,column 10,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#7)), AR1 ; |1777| 
        AND *SP(#4), AR1, AR1 ; |1777| 
        BCC $C$L89,AR1 != #0 ; |1777| 
                                        ; branchcc occurs ; |1777| 
$C$DW$L$_NAND_checkCommandStatus$2$E:
$C$DW$L$_NAND_checkCommandStatus$3$B:
        MOV #32767 << #16, AC0 ; |1777| 
        MOV uns(*SP(#3)), AC1 ; |1777| 
        OR #0xffff, AC0, AC0 ; |1777| 
        CMPU AC1 >= AC0, TC1 ; |1777| 
        BCC $C$L88,!TC1 ; |1777| 
                                        ; branchcc occurs ; |1777| 
$C$DW$L$_NAND_checkCommandStatus$3$E:
$C$L89:    
	.dwpsn	file "src/csl_emif.c",line 1780,column 3,is_stmt
        MOV #32767 << #16, AC0 ; |1780| 
        MOV uns(*SP(#3)), AC1 ; |1780| 
        OR #0xffff, AC0, AC0 ; |1780| 
        CMPU AC1 < AC0, TC1 ; |1780| 
        BCC $C$L91,TC1 ; |1780| 
                                        ; branchcc occurs ; |1780| 
	.dwpsn	file "src/csl_emif.c",line 1782,column 4,is_stmt
        MOV #-353, *SP(#2) ; |1782| 
	.dwpsn	file "src/csl_emif.c",line 1784,column 5,is_stmt
        B $C$L91  ; |1784| 
                                        ; branch occurs ; |1784| 
$C$L90:    
	.dwpsn	file "src/csl_emif.c",line 1787,column 3,is_stmt
        MOV #-5, *SP(#2) ; |1787| 
$C$L91:    
	.dwpsn	file "src/csl_emif.c",line 1790,column 2,is_stmt
        MOV *SP(#2), T0 ; |1790| 
	.dwpsn	file "src/csl_emif.c",line 1791,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$195	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$195, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L88:1:1714639434")
	.dwattr $C$DW$195, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0x6ec)
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x6f1)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_NAND_checkCommandStatus$2$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_NAND_checkCommandStatus$2$E)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_NAND_checkCommandStatus$3$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_NAND_checkCommandStatus$3$E)
	.dwendtag $C$DW$195

	.dwattr $C$DW$188, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x6ff)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".text"
	.global	_NAND_setAddress

$C$DW$198	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_setAddress")
	.dwattr $C$DW$198, DW_AT_low_pc(_NAND_setAddress)
	.dwattr $C$DW$198, DW_AT_high_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_NAND_setAddress")
	.dwattr $C$DW$198, DW_AT_external
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$198, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0x730)
	.dwattr $C$DW$198, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$198, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1842,column 1,is_stmt,address _NAND_setAddress

	.dwfde $C$DW$CIE, _NAND_setAddress
$C$DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg17]
$C$DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addr")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_setAddress                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_setAddress:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("addr")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |1842| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1845,column 2,is_stmt
        MOV #0, *SP(#3) ; |1845| 
	.dwpsn	file "src/csl_emif.c",line 1847,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L94,AC0 == #0 ; |1847| 
                                        ; branchcc occurs ; |1847| 
	.dwpsn	file "src/csl_emif.c",line 1849,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |1849| 
        BCC $C$L92,AR1 != #0 ; |1849| 
                                        ; branchcc occurs ; |1849| 
	.dwpsn	file "src/csl_emif.c",line 1851,column 7,is_stmt
        MOV dbl(*AR3(#10)), AC0 ; |1851| 
        MOV AC0, XAR3
        MOV *SP(#2), AR1 ; |1851| 
        MOV AR1, *AR3 ; |1851| 
	.dwpsn	file "src/csl_emif.c",line 1852,column 3,is_stmt
        B $C$L95  ; |1852| 
                                        ; branch occurs ; |1852| 
$C$L92:    
	.dwpsn	file "src/csl_emif.c",line 1853,column 8,is_stmt
        CMP *AR3(short(#3)) == #1, TC1 ; |1853| 
        BCC $C$L93,!TC1 ; |1853| 
                                        ; branchcc occurs ; |1853| 
	.dwpsn	file "src/csl_emif.c",line 1855,column 7,is_stmt
        MOV dbl(*AR3(#10)), AC0 ; |1855| 
        MOV AC0, XAR3
        MOV *SP(#2), AR1 ; |1855| 
        MOV AR1, *AR3 ; |1855| 
	.dwpsn	file "src/csl_emif.c",line 1856,column 3,is_stmt
        B $C$L95  ; |1856| 
                                        ; branch occurs ; |1856| 
$C$L93:    
	.dwpsn	file "src/csl_emif.c",line 1859,column 4,is_stmt
        MOV #-6, *SP(#3) ; |1859| 
	.dwpsn	file "src/csl_emif.c",line 1861,column 5,is_stmt
        B $C$L95  ; |1861| 
                                        ; branch occurs ; |1861| 
$C$L94:    
	.dwpsn	file "src/csl_emif.c",line 1864,column 3,is_stmt
        MOV #-5, *SP(#3) ; |1864| 
$C$L95:    
	.dwpsn	file "src/csl_emif.c",line 1867,column 5,is_stmt
        MOV *SP(#3), T0 ; |1867| 
	.dwpsn	file "src/csl_emif.c",line 1868,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$198, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$198, DW_AT_TI_end_line(0x74c)
	.dwattr $C$DW$198, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$198

	.sect	".text"
	.global	_NAND_enableHwECC

$C$DW$205	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_enableHwECC")
	.dwattr $C$DW$205, DW_AT_low_pc(_NAND_enableHwECC)
	.dwattr $C$DW$205, DW_AT_high_pc(0x00)
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_NAND_enableHwECC")
	.dwattr $C$DW$205, DW_AT_external
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$205, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$205, DW_AT_TI_begin_line(0x77a)
	.dwattr $C$DW$205, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$205, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 1916,column 1,is_stmt,address _NAND_enableHwECC

	.dwfde $C$DW$CIE, _NAND_enableHwECC
$C$DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg17]
$C$DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_name("csInput")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_enableHwECC                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_enableHwECC:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("csInput")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#2) ; |1916| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 1920,column 2,is_stmt
        MOV #0, *SP(#3) ; |1920| 
	.dwpsn	file "src/csl_emif.c",line 1923,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |1923| 
        MOV *AR3(short(#1)), AR3 ; |1923| 
        MOV port(*AR3(T0)), AR1 ; |1923| 
        AND #0x0003, AR1, AC0 ; |1923| 
        MOV AC0, *SP(#4) ; |1923| 
	.dwpsn	file "src/csl_emif.c",line 1926,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1926| 
        MOV port(*AR3(T0)), AR1 ; |1926| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1926| 
        AND #0xfffc, AR1, AC0 ; |1926| 
        MOV AC0, port(*AR3(T0)) ; |1926| 
	.dwpsn	file "src/csl_emif.c",line 1928,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L102,AC0 == #0 ; |1928| 
                                        ; branchcc occurs ; |1928| 
	.dwpsn	file "src/csl_emif.c",line 1930,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |1930| 
        BCC $C$L101,AR1 != #0 ; |1930| 
                                        ; branchcc occurs ; |1930| 
	.dwpsn	file "src/csl_emif.c",line 1934,column 4,is_stmt
        MOV #96, T0 ; |1934| 
        MOV *AR3, AR3 ; |1934| 
        MOV port(*AR3(T0)), AR1 ; |1934| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1934| 
        MOV *SP(#2) << #4, AC0 ; |1934| 
        AND #0xffcf, AR1, AR2 ; |1934| 
        AND #0x0030, AC0, AR1 ; |1934| 
        OR AR2, AR1 ; |1934| 
        MOV AR1, port(*AR3(T0)) ; |1934| 
	.dwpsn	file "src/csl_emif.c",line 1936,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1936| 
        MOV port(*AR3(T0)), AR1 ; |1936| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1936| 
        BCLR @#12, AR1 ; |1936| 
        BSET @#12, AR1 ; |1936| 
        MOV AR1, port(*AR3(T0)) ; |1936| 
	.dwpsn	file "src/csl_emif.c",line 1937,column 3,is_stmt
        B $C$L103 ; |1937| 
                                        ; branch occurs ; |1937| 
$C$L96:    
	.dwpsn	file "src/csl_emif.c",line 1946,column 6,is_stmt
        MOV #96, T0 ; |1946| 
        MOV *AR3, AR3 ; |1946| 
        MOV port(*AR3(T0)), AR1 ; |1946| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1946| 
        BCLR @#8, AR1 ; |1946| 
        BSET @#8, AR1 ; |1946| 
        MOV AR1, port(*AR3(T0)) ; |1946| 
	.dwpsn	file "src/csl_emif.c",line 1948,column 11,is_stmt
        B $C$L103 ; |1948| 
                                        ; branch occurs ; |1948| 
$C$L97:    
	.dwpsn	file "src/csl_emif.c",line 1951,column 6,is_stmt
        MOV #96, T0 ; |1951| 
        MOV *AR3, AR3 ; |1951| 
        MOV port(*AR3(T0)), AR1 ; |1951| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1951| 
        BCLR @#9, AR1 ; |1951| 
        BSET @#9, AR1 ; |1951| 
        MOV AR1, port(*AR3(T0)) ; |1951| 
	.dwpsn	file "src/csl_emif.c",line 1953,column 11,is_stmt
        B $C$L103 ; |1953| 
                                        ; branch occurs ; |1953| 
$C$L98:    
	.dwpsn	file "src/csl_emif.c",line 1956,column 6,is_stmt
        MOV #96, T0 ; |1956| 
        MOV *AR3, AR3 ; |1956| 
        MOV port(*AR3(T0)), AR1 ; |1956| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1956| 
        BCLR @#10, AR1 ; |1956| 
        BSET @#10, AR1 ; |1956| 
        MOV AR1, port(*AR3(T0)) ; |1956| 
	.dwpsn	file "src/csl_emif.c",line 1958,column 11,is_stmt
        B $C$L103 ; |1958| 
                                        ; branch occurs ; |1958| 
$C$L99:    
	.dwpsn	file "src/csl_emif.c",line 1961,column 6,is_stmt
        MOV #96, T0 ; |1961| 
        MOV *AR3, AR3 ; |1961| 
        MOV port(*AR3(T0)), AR1 ; |1961| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1961| 
        BCLR @#11, AR1 ; |1961| 
        BSET @#11, AR1 ; |1961| 
        MOV AR1, port(*AR3(T0)) ; |1961| 
	.dwpsn	file "src/csl_emif.c",line 1963,column 11,is_stmt
        B $C$L103 ; |1963| 
                                        ; branch occurs ; |1963| 
$C$L100:    
	.dwpsn	file "src/csl_emif.c",line 1965,column 9,is_stmt
        MOV #-6, *SP(#3) ; |1965| 
	.dwpsn	file "src/csl_emif.c",line 1966,column 11,is_stmt
        B $C$L103 ; |1966| 
                                        ; branch occurs ; |1966| 
$C$L101:    
	.dwpsn	file "src/csl_emif.c",line 1942,column 4,is_stmt
        MOV *SP(#2), AR1 ; |1942| 
        BCC $C$L96,AR1 == #0 ; |1942| 
                                        ; branchcc occurs ; |1942| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1942| 
        BCC $C$L97,TC1 ; |1942| 
                                        ; branchcc occurs ; |1942| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1942| 
        BCC $C$L98,TC1 ; |1942| 
                                        ; branchcc occurs ; |1942| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |1942| 
        BCC $C$L99,TC1 ; |1942| 
                                        ; branchcc occurs ; |1942| 
        B $C$L100 ; |1942| 
                                        ; branch occurs ; |1942| 
$C$L102:    
	.dwpsn	file "src/csl_emif.c",line 1972,column 3,is_stmt
        MOV #-5, *SP(#3) ; |1972| 
$C$L103:    
	.dwpsn	file "src/csl_emif.c",line 1976,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |1976| 
        MOV *AR3(short(#1)), AR3 ; |1976| 
        MOV port(*AR3(T0)), AR1 ; |1976| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |1976| 
        AND #0xfffc, AR1, AR2 ; |1976| 
        MOV *SP(#4), AR1 ; |1976| 
        AND #0x0003, AR1, AR1 ; |1976| 
        OR AR2, AR1 ; |1976| 
        MOV AR1, port(*AR3(T0)) ; |1976| 
	.dwpsn	file "src/csl_emif.c",line 1978,column 5,is_stmt
        MOV *SP(#3), T0 ; |1978| 
	.dwpsn	file "src/csl_emif.c",line 1979,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$205, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x7bb)
	.dwattr $C$DW$205, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$205

	.sect	".text"
	.global	_NAND_disableHwECC

$C$DW$213	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_disableHwECC")
	.dwattr $C$DW$213, DW_AT_low_pc(_NAND_disableHwECC)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_NAND_disableHwECC")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$213, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x7e6)
	.dwattr $C$DW$213, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_emif.c",line 2024,column 1,is_stmt,address _NAND_disableHwECC

	.dwfde $C$DW$CIE, _NAND_disableHwECC
$C$DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg17]
$C$DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_name("csInput")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_disableHwECC                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_disableHwECC:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("csInput")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("tempVal")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_tempVal")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#2) ; |2024| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2029,column 2,is_stmt
        MOV #0, *SP(#3) ; |2029| 
	.dwpsn	file "src/csl_emif.c",line 2032,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |2032| 
        MOV *AR3(short(#1)), AR3 ; |2032| 
        MOV port(*AR3(T0)), AR1 ; |2032| 
        AND #0x0003, AR1, AC0 ; |2032| 
        MOV AC0, *SP(#5) ; |2032| 
	.dwpsn	file "src/csl_emif.c",line 2035,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |2035| 
        MOV port(*AR3(T0)), AR1 ; |2035| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |2035| 
        AND #0xfffc, AR1, AC0 ; |2035| 
        MOV AC0, port(*AR3(T0)) ; |2035| 
	.dwpsn	file "src/csl_emif.c",line 2037,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L110,AC0 == #0 ; |2037| 
                                        ; branchcc occurs ; |2037| 
	.dwpsn	file "src/csl_emif.c",line 2039,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |2039| 
        BCC $C$L109,AR1 != #0 ; |2039| 
                                        ; branchcc occurs ; |2039| 
	.dwpsn	file "src/csl_emif.c",line 2043,column 4,is_stmt
        MOV #192, T0 ; |2043| 
        MOV *AR3, AR3 ; |2043| 
        MOV port(*AR3(T0)), AR1 ; |2043| 
        AND #0x03ff, AR1, AC0 ; |2043| 
        MOV AC0, *SP(#4) ; |2043| 
	.dwpsn	file "src/csl_emif.c",line 2045,column 3,is_stmt
        B $C$L111 ; |2045| 
                                        ; branch occurs ; |2045| 
$C$L104:    
	.dwpsn	file "src/csl_emif.c",line 2053,column 6,is_stmt
        MOV #112, T0 ; |2053| 
        MOV *AR3, AR3 ; |2053| 
        MOV port(*AR3(T0)), AR1 ; |2053| 
        AND #0x0fff, AR1, AC0 ; |2053| 
        MOV AC0, *SP(#4) ; |2053| 
	.dwpsn	file "src/csl_emif.c",line 2056,column 11,is_stmt
        B $C$L111 ; |2056| 
                                        ; branch occurs ; |2056| 
$C$L105:    
	.dwpsn	file "src/csl_emif.c",line 2059,column 6,is_stmt
        MOV #116, T0 ; |2059| 
        MOV *AR3, AR3 ; |2059| 
        MOV port(*AR3(T0)), AR1 ; |2059| 
        AND #0x0fff, AR1, AC0 ; |2059| 
        MOV AC0, *SP(#4) ; |2059| 
	.dwpsn	file "src/csl_emif.c",line 2062,column 11,is_stmt
        B $C$L111 ; |2062| 
                                        ; branch occurs ; |2062| 
$C$L106:    
	.dwpsn	file "src/csl_emif.c",line 2065,column 6,is_stmt
        MOV #120, T0 ; |2065| 
        MOV *AR3, AR3 ; |2065| 
        MOV port(*AR3(T0)), AR1 ; |2065| 
        AND #0x0fff, AR1, AC0 ; |2065| 
        MOV AC0, *SP(#4) ; |2065| 
	.dwpsn	file "src/csl_emif.c",line 2068,column 11,is_stmt
        B $C$L111 ; |2068| 
                                        ; branch occurs ; |2068| 
$C$L107:    
	.dwpsn	file "src/csl_emif.c",line 2071,column 6,is_stmt
        MOV #124, T0 ; |2071| 
        MOV *AR3, AR3 ; |2071| 
        MOV port(*AR3(T0)), AR1 ; |2071| 
        AND #0x0fff, AR1, AC0 ; |2071| 
        MOV AC0, *SP(#4) ; |2071| 
	.dwpsn	file "src/csl_emif.c",line 2074,column 11,is_stmt
        B $C$L111 ; |2074| 
                                        ; branch occurs ; |2074| 
$C$L108:    
	.dwpsn	file "src/csl_emif.c",line 2076,column 9,is_stmt
        MOV #-6, *SP(#3) ; |2076| 
	.dwpsn	file "src/csl_emif.c",line 2077,column 11,is_stmt
        B $C$L111 ; |2077| 
                                        ; branch occurs ; |2077| 
$C$L109:    
	.dwpsn	file "src/csl_emif.c",line 2049,column 4,is_stmt
        MOV *SP(#2), AR1 ; |2049| 
        BCC $C$L104,AR1 == #0 ; |2049| 
                                        ; branchcc occurs ; |2049| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |2049| 
        BCC $C$L105,TC1 ; |2049| 
                                        ; branchcc occurs ; |2049| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |2049| 
        BCC $C$L106,TC1 ; |2049| 
                                        ; branchcc occurs ; |2049| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |2049| 
        BCC $C$L107,TC1 ; |2049| 
                                        ; branchcc occurs ; |2049| 
        B $C$L108 ; |2049| 
                                        ; branch occurs ; |2049| 
$C$L110:    
	.dwpsn	file "src/csl_emif.c",line 2084,column 3,is_stmt
        MOV *SP(#4), AR1 ; |2084| 
        MOV AR1, *SP(#3) ; |2084| 
	.dwpsn	file "src/csl_emif.c",line 2085,column 3,is_stmt
        MOV #-5, *SP(#3) ; |2085| 
$C$L111:    
	.dwpsn	file "src/csl_emif.c",line 2089,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #51, T0 ; |2089| 
        MOV *AR3(short(#1)), AR3 ; |2089| 
        MOV port(*AR3(T0)), AR1 ; |2089| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR3 ; |2089| 
        AND #0xfffc, AR1, AR2 ; |2089| 
        MOV *SP(#5), AR1 ; |2089| 
        AND #0x0003, AR1, AR1 ; |2089| 
        OR AR2, AR1 ; |2089| 
        MOV AR1, port(*AR3(T0)) ; |2089| 
	.dwpsn	file "src/csl_emif.c",line 2091,column 5,is_stmt
        MOV *SP(#3), T0 ; |2091| 
	.dwpsn	file "src/csl_emif.c",line 2092,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$213, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x82c)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text"
	.global	_NAND_readECC

$C$DW$222	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_readECC")
	.dwattr $C$DW$222, DW_AT_low_pc(_NAND_readECC)
	.dwattr $C$DW$222, DW_AT_high_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_NAND_readECC")
	.dwattr $C$DW$222, DW_AT_external
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$222, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x85a)
	.dwattr $C$DW$222, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$222, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_emif.c",line 2141,column 1,is_stmt,address _NAND_readECC

	.dwfde $C$DW$CIE, _NAND_readECC
$C$DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg17]
$C$DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eccBuffer")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_eccBuffer")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg19]
$C$DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_name("csInput")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: NAND_readECC                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_readECC:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("eccBuffer")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_eccBuffer")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("csInput")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_csInput")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV T0, *SP(#4) ; |2141| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2144,column 2,is_stmt
        MOV #0, *SP(#5) ; |2144| 
	.dwpsn	file "src/csl_emif.c",line 2146,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2146| 

        CMPU AC1 == AC0, TC1 ; |2146| 
        BCC $C$L119,TC1 ; |2146| 
                                        ; branchcc occurs ; |2146| 
	.dwpsn	file "src/csl_emif.c",line 2148,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |2148| 
        BCC $C$L118,TC1 ; |2148| 
                                        ; branchcc occurs ; |2148| 
	.dwpsn	file "src/csl_emif.c",line 2150,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2150| 
        BCC $C$L117,AR1 != #0 ; |2150| 
                                        ; branchcc occurs ; |2150| 
	.dwpsn	file "src/csl_emif.c",line 2153,column 5,is_stmt
        MOV #192, T0 ; |2153| 
        MOV *AR3, AR3 ; |2153| 
        MOV port(*AR3(T0)), AR1 ; |2153| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2153| 
        MOV AC0, *AR3 ; |2153| 
	.dwpsn	file "src/csl_emif.c",line 2156,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #193, T0 ; |2156| 
        MOV *AR3, AR3 ; |2156| 
        MOV port(*AR3(T0)), AR1 ; |2156| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2156| 
        MOV AC0, *AR3(short(#1)) ; |2156| 
	.dwpsn	file "src/csl_emif.c",line 2159,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #196, T0 ; |2159| 
        MOV *AR3, AR3 ; |2159| 
        MOV port(*AR3(T0)), AR1 ; |2159| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2159| 
        MOV AC0, *AR3(short(#2)) ; |2159| 
	.dwpsn	file "src/csl_emif.c",line 2162,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #197, T0 ; |2162| 
        MOV *AR3, AR3 ; |2162| 
        MOV port(*AR3(T0)), AR1 ; |2162| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2162| 
        MOV AC0, *AR3(short(#3)) ; |2162| 
	.dwpsn	file "src/csl_emif.c",line 2165,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #200, T0 ; |2165| 
        MOV *AR3, AR3 ; |2165| 
        MOV port(*AR3(T0)), AR1 ; |2165| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2165| 
        MOV AC0, *AR3(short(#4)) ; |2165| 
	.dwpsn	file "src/csl_emif.c",line 2168,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #201, T0 ; |2168| 
        MOV *AR3, AR3 ; |2168| 
        MOV port(*AR3(T0)), AR1 ; |2168| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2168| 
        MOV AC0, *AR3(short(#5)) ; |2168| 
	.dwpsn	file "src/csl_emif.c",line 2171,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #204, T0 ; |2171| 
        MOV *AR3, AR3 ; |2171| 
        MOV port(*AR3(T0)), AR1 ; |2171| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2171| 
        MOV AC0, *AR3(short(#6)) ; |2171| 
	.dwpsn	file "src/csl_emif.c",line 2174,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #205, T0 ; |2174| 
        MOV *AR3, AR3 ; |2174| 
        MOV port(*AR3(T0)), AR1 ; |2174| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x03ff, AR1, AC0 ; |2174| 
        MOV AC0, *AR3(short(#7)) ; |2174| 
	.dwpsn	file "src/csl_emif.c",line 2176,column 4,is_stmt
        B $C$L120 ; |2176| 
                                        ; branch occurs ; |2176| 
$C$L112:    
	.dwpsn	file "src/csl_emif.c",line 2183,column 8,is_stmt
        MOV #112, T0 ; |2183| 
        MOV *AR3, AR3 ; |2183| 
        MOV port(*AR3(T0)), AR1 ; |2183| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2183| 
        MOV AC0, *AR3 ; |2183| 
	.dwpsn	file "src/csl_emif.c",line 2187,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #113, T0 ; |2187| 
        MOV *AR3, AR3 ; |2187| 
        MOV port(*AR3(T0)), AR1 ; |2187| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2187| 
        MOV AC0, *AR3(short(#1)) ; |2187| 
	.dwpsn	file "src/csl_emif.c",line 2190,column 13,is_stmt
        B $C$L120 ; |2190| 
                                        ; branch occurs ; |2190| 
$C$L113:    
	.dwpsn	file "src/csl_emif.c",line 2192,column 8,is_stmt
        MOV #116, T0 ; |2192| 
        MOV *AR3, AR3 ; |2192| 
        MOV port(*AR3(T0)), AR1 ; |2192| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2192| 
        MOV AC0, *AR3 ; |2192| 
	.dwpsn	file "src/csl_emif.c",line 2196,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #117, T0 ; |2196| 
        MOV *AR3, AR3 ; |2196| 
        MOV port(*AR3(T0)), AR1 ; |2196| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2196| 
        MOV AC0, *AR3(short(#1)) ; |2196| 
	.dwpsn	file "src/csl_emif.c",line 2199,column 23,is_stmt
$C$L114:    
	.dwpsn	file "src/csl_emif.c",line 2200,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #120, T0 ; |2200| 
        MOV *AR3, AR3 ; |2200| 
        MOV port(*AR3(T0)), AR1 ; |2200| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2200| 
        MOV AC0, *AR3 ; |2200| 
	.dwpsn	file "src/csl_emif.c",line 2204,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #124, T0 ; |2204| 
        MOV *AR3, AR3 ; |2204| 
        MOV port(*AR3(T0)), AR1 ; |2204| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2204| 
        MOV AC0, *AR3(short(#1)) ; |2204| 
	.dwpsn	file "src/csl_emif.c",line 2207,column 13,is_stmt
        B $C$L120 ; |2207| 
                                        ; branch occurs ; |2207| 
$C$L115:    
	.dwpsn	file "src/csl_emif.c",line 2209,column 8,is_stmt
        MOV #124, T0 ; |2209| 
        MOV *AR3, AR3 ; |2209| 
        MOV port(*AR3(T0)), AR1 ; |2209| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2209| 
        MOV AC0, *AR3 ; |2209| 
	.dwpsn	file "src/csl_emif.c",line 2213,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #125, T0 ; |2213| 
        MOV *AR3, AR3 ; |2213| 
        MOV port(*AR3(T0)), AR1 ; |2213| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0fff, AR1, AC0 ; |2213| 
        MOV AC0, *AR3(short(#1)) ; |2213| 
	.dwpsn	file "src/csl_emif.c",line 2216,column 13,is_stmt
        B $C$L120 ; |2216| 
                                        ; branch occurs ; |2216| 
$C$L116:    
	.dwpsn	file "src/csl_emif.c",line 2218,column 8,is_stmt
        MOV #-6, *SP(#5) ; |2218| 
	.dwpsn	file "src/csl_emif.c",line 2219,column 13,is_stmt
        B $C$L120 ; |2219| 
                                        ; branch occurs ; |2219| 
$C$L117:    
	.dwpsn	file "src/csl_emif.c",line 2180,column 5,is_stmt
        MOV *SP(#4), AR1 ; |2180| 
        BCC $C$L112,AR1 == #0 ; |2180| 
                                        ; branchcc occurs ; |2180| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |2180| 
        BCC $C$L113,TC1 ; |2180| 
                                        ; branchcc occurs ; |2180| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |2180| 
        BCC $C$L114,TC1 ; |2180| 
                                        ; branchcc occurs ; |2180| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |2180| 
        BCC $C$L115,TC1 ; |2180| 
                                        ; branchcc occurs ; |2180| 
        B $C$L116 ; |2180| 
                                        ; branch occurs ; |2180| 
$C$L118:    
	.dwpsn	file "src/csl_emif.c",line 2225,column 4,is_stmt
        MOV #-6, *SP(#5) ; |2225| 
	.dwpsn	file "src/csl_emif.c",line 2227,column 2,is_stmt
        B $C$L120 ; |2227| 
                                        ; branch occurs ; |2227| 
$C$L119:    
	.dwpsn	file "src/csl_emif.c",line 2230,column 3,is_stmt
        MOV #-5, *SP(#5) ; |2230| 
$C$L120:    
	.dwpsn	file "src/csl_emif.c",line 2233,column 5,is_stmt
        MOV *SP(#5), T0 ; |2233| 
	.dwpsn	file "src/csl_emif.c",line 2234,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$222, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x8ba)
	.dwattr $C$DW$222, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$222

	.sect	".text"
	.global	_NAND_readNBytes

$C$DW$231	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_readNBytes")
	.dwattr $C$DW$231, DW_AT_low_pc(_NAND_readNBytes)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_NAND_readNBytes")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$231, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x8f5)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_emif.c",line 2298,column 1,is_stmt,address _NAND_readNBytes

	.dwfde $C$DW$CIE, _NAND_readNBytes
$C$DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg17]
$C$DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readRequest")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_readRequest")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg12]
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg19]
$C$DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pack")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_pack")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg13]
$C$DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("spare")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_spare")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: NAND_readNBytes                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_readNBytes:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("readRequest")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_readRequest")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("pReadBuffer")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_pReadBuffer")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("pack")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_pack")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("spare")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_spare")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("loopLimit")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_loopLimit")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AR2, *SP(#7) ; |2298| 
        MOV T1, *SP(#6) ; |2298| 
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |2298| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2303,column 2,is_stmt
        MOV #0, *SP(#10) ; |2303| 
	.dwpsn	file "src/csl_emif.c",line 2304,column 2,is_stmt
        MOV #0, *SP(#8) ; |2304| 
	.dwpsn	file "src/csl_emif.c",line 2306,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2306| 

        CMPU AC1 == AC0, TC1 ; |2306| 
        BCC $C$L131,TC1 ; |2306| 
                                        ; branchcc occurs ; |2306| 
	.dwpsn	file "src/csl_emif.c",line 2308,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L130,AC0 == #0 ; |2308| 
                                        ; branchcc occurs ; |2308| 
	.dwpsn	file "src/csl_emif.c",line 2310,column 4,is_stmt

        MOV #0, AR2
||      MOV *SP(#6), AR1 ; |2310| 

        CMPU AR2 != AR1, TC1 ; |2310| 
        BCC $C$L126,TC1 ; |2310| 
                                        ; branchcc occurs ; |2310| 
	.dwpsn	file "src/csl_emif.c",line 2312,column 5,is_stmt
        MOV *SP(#7), AR1 ; |2312| 
        BCC $C$L121,AR1 != #0 ; |2312| 
                                        ; branchcc occurs ; |2312| 
	.dwpsn	file "src/csl_emif.c",line 2314,column 6,is_stmt
        MOV *SP(#2), AR1 ; |2314| 
        SFTL AR1, #-1 ; |2314| 
        MOV AR1, *SP(#10) ; |2314| 
	.dwpsn	file "src/csl_emif.c",line 2315,column 5,is_stmt
        B $C$L122 ; |2315| 
                                        ; branch occurs ; |2315| 
$C$L121:    
	.dwpsn	file "src/csl_emif.c",line 2318,column 6,is_stmt
        MOV *SP(#2), AR1 ; |2318| 
        MOV AR1, *SP(#10) ; |2318| 
$C$L122:    
	.dwpsn	file "src/csl_emif.c",line 2321,column 10,is_stmt
        MOV #0, *SP(#9) ; |2321| 
	.dwpsn	file "src/csl_emif.c",line 2321,column 21,is_stmt
        MOV *SP(#10), AR1 ; |2321| 
        MOV *SP(#9), AR2 ; |2321| 
        CMPU AR2 >= AR1, TC1 ; |2321| 
        BCC $C$L132,TC1 ; |2321| 
                                        ; branchcc occurs ; |2321| 
$C$L123:    
$C$DW$L$_NAND_readNBytes$8$B:
	.dwpsn	file "src/csl_emif.c",line 2323,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2323| 
        BCC $C$L124,AR1 != #0 ; |2323| 
                                        ; branchcc occurs ; |2323| 
$C$DW$L$_NAND_readNBytes$8$E:
$C$DW$L$_NAND_readNBytes$9$B:
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*AR2(#8)), AC0 ; |2323| 
        MOV AC0, XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |2323| 
        MOV uns(low_byte(*AR2)), AR1 ; |2323| 
        MOV AR1, *AR3(T0) ; |2323| 
        MOV *SP(#9), T0 ; |2323| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(T0), AC1 ; |2323| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2323| 
        MOV AC0, XAR3
        MOV *AR3, AC0 ; |2323| 
        MOV dbl(*SP(#4)), XAR3
        OR AC1 << #8, AC0 ; |2323| 
        MOV AC0, *AR3(T0) ; |2323| 
        B $C$L125 ; |2323| 
                                        ; branch occurs ; |2323| 
$C$DW$L$_NAND_readNBytes$9$E:
$C$L124:    
$C$DW$L$_NAND_readNBytes$10$B:
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#9), T0 ; |2323| 
        MOV dbl(*AR3(#8)), AC0 ; |2323| 
        MOV AC0, XAR3
        MOV *AR3, *AR2(T0) ; |2323| 
$C$DW$L$_NAND_readNBytes$10$E:
$C$L125:    
$C$DW$L$_NAND_readNBytes$11$B:
	.dwpsn	file "src/csl_emif.c",line 2321,column 40,is_stmt
        ADD #1, *SP(#9) ; |2321| 
	.dwpsn	file "src/csl_emif.c",line 2321,column 21,is_stmt
        MOV *SP(#10), AR1 ; |2321| 
        MOV *SP(#9), AR2 ; |2321| 
        CMPU AR2 < AR1, TC1 ; |2321| 
        BCC $C$L123,TC1 ; |2321| 
                                        ; branchcc occurs ; |2321| 
$C$DW$L$_NAND_readNBytes$11$E:
	.dwpsn	file "src/csl_emif.c",line 2325,column 10,is_stmt
        B $C$L132 ; |2325| 
                                        ; branch occurs ; |2325| 
$C$L126:    
	.dwpsn	file "src/csl_emif.c",line 2328,column 10,is_stmt
        MOV #0, *SP(#9) ; |2328| 
	.dwpsn	file "src/csl_emif.c",line 2328,column 21,is_stmt
        MOV *SP(#2), AR1 ; |2328| 

        SFTL AR1, #-1 ; |2328| 
||      MOV *SP(#9), AR2 ; |2328| 

        CMPU AR2 >= AR1, TC1 ; |2328| 
        BCC $C$L132,TC1 ; |2328| 
                                        ; branchcc occurs ; |2328| 
$C$L127:    
$C$DW$L$_NAND_readNBytes$14$B:
	.dwpsn	file "src/csl_emif.c",line 2330,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2330| 
        BCC $C$L128,AR1 != #0 ; |2330| 
                                        ; branchcc occurs ; |2330| 
$C$DW$L$_NAND_readNBytes$14$E:
$C$DW$L$_NAND_readNBytes$15$B:
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*AR2(#8)), AC0 ; |2330| 
        MOV AC0, XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |2330| 
        MOV uns(low_byte(*AR2)), AR1 ; |2330| 
        MOV AR1, *AR3(T0) ; |2330| 
        MOV *SP(#9), T0 ; |2330| 
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(T0), AC1 ; |2330| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2330| 
        MOV AC0, XAR3
        MOV *AR3, AC0 ; |2330| 
        MOV dbl(*SP(#4)), XAR3
        OR AC1 << #8, AC0 ; |2330| 
        MOV AC0, *AR3(T0) ; |2330| 
        B $C$L129 ; |2330| 
                                        ; branch occurs ; |2330| 
$C$DW$L$_NAND_readNBytes$15$E:
$C$L128:    
$C$DW$L$_NAND_readNBytes$16$B:
        MOV dbl(*SP(#4)), XAR2
        MOV *SP(#9), T0 ; |2330| 
        MOV dbl(*AR3(#8)), AC0 ; |2330| 
        MOV AC0, XAR3
        MOV *AR3, *AR2(T0) ; |2330| 
$C$DW$L$_NAND_readNBytes$16$E:
$C$L129:    
$C$DW$L$_NAND_readNBytes$17$B:
	.dwpsn	file "src/csl_emif.c",line 2328,column 46,is_stmt
        ADD #1, *SP(#9) ; |2328| 
	.dwpsn	file "src/csl_emif.c",line 2328,column 21,is_stmt
        MOV *SP(#2), AR1 ; |2328| 

        SFTL AR1, #-1 ; |2328| 
||      MOV *SP(#9), AR2 ; |2328| 

        CMPU AR2 < AR1, TC1 ; |2328| 
        BCC $C$L127,TC1 ; |2328| 
                                        ; branchcc occurs ; |2328| 
$C$DW$L$_NAND_readNBytes$17$E:
	.dwpsn	file "src/csl_emif.c",line 2333,column 3,is_stmt
        B $C$L132 ; |2333| 
                                        ; branch occurs ; |2333| 
$C$L130:    
	.dwpsn	file "src/csl_emif.c",line 2336,column 4,is_stmt
        MOV #-6, *SP(#8) ; |2336| 
	.dwpsn	file "src/csl_emif.c",line 2338,column 2,is_stmt
        B $C$L132 ; |2338| 
                                        ; branch occurs ; |2338| 
$C$L131:    
	.dwpsn	file "src/csl_emif.c",line 2341,column 3,is_stmt
        MOV #-5, *SP(#8) ; |2341| 
$C$L132:    
	.dwpsn	file "src/csl_emif.c",line 2344,column 5,is_stmt
        MOV *SP(#8), T0 ; |2344| 
	.dwpsn	file "src/csl_emif.c",line 2345,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$246	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$246, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L127:1:1714639434")
	.dwattr $C$DW$246, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x918)
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x91b)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$14$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$14$E)
$C$DW$248	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$248, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$15$B)
	.dwattr $C$DW$248, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$15$E)
$C$DW$249	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$249, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$16$B)
	.dwattr $C$DW$249, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$16$E)
$C$DW$250	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$250, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$17$B)
	.dwattr $C$DW$250, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$17$E)
	.dwendtag $C$DW$246


$C$DW$251	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$251, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L123:1:1714639434")
	.dwattr $C$DW$251, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$251, DW_AT_TI_begin_line(0x911)
	.dwattr $C$DW$251, DW_AT_TI_end_line(0x914)
$C$DW$252	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$252, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$8$B)
	.dwattr $C$DW$252, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$8$E)
$C$DW$253	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$253, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$9$B)
	.dwattr $C$DW$253, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$9$E)
$C$DW$254	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$254, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$10$B)
	.dwattr $C$DW$254, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$10$E)
$C$DW$255	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$255, DW_AT_low_pc($C$DW$L$_NAND_readNBytes$11$B)
	.dwattr $C$DW$255, DW_AT_high_pc($C$DW$L$_NAND_readNBytes$11$E)
	.dwendtag $C$DW$251

	.dwattr $C$DW$231, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x929)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text"
	.global	_NAND_writeNBytes

$C$DW$256	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_writeNBytes")
	.dwattr $C$DW$256, DW_AT_low_pc(_NAND_writeNBytes)
	.dwattr $C$DW$256, DW_AT_high_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_NAND_writeNBytes")
	.dwattr $C$DW$256, DW_AT_external
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$256, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x966)
	.dwattr $C$DW$256, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$256, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_emif.c",line 2411,column 1,is_stmt,address _NAND_writeNBytes

	.dwfde $C$DW$CIE, _NAND_writeNBytes
$C$DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg17]
$C$DW$258	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeRequest")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_writeRequest")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg12]
$C$DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pWriteBuffer")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_pWriteBuffer")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg19]
$C$DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg13]
$C$DW$261	.dwtag  DW_TAG_formal_parameter, DW_AT_name("spare")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_spare")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg20]
;*******************************************************************************
;* FUNCTION NAME: NAND_writeNBytes                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_writeNBytes:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("writeRequest")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_writeRequest")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("pWriteBuffer")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_pWriteBuffer")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("val")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_val")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("spare")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_spare")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("countVar")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_countVar")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("loopLimit")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_loopLimit")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV AR2, *SP(#7) ; |2411| 
        MOV T1, *SP(#6) ; |2411| 
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |2411| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2416,column 2,is_stmt
        MOV #0, *SP(#8) ; |2416| 
	.dwpsn	file "src/csl_emif.c",line 2418,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |2418| 

        CMPU AC1 == AC0, TC1 ; |2418| 
        BCC $C$L150,TC1 ; |2418| 
                                        ; branchcc occurs ; |2418| 
	.dwpsn	file "src/csl_emif.c",line 2420,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |2420| 
        BCC $C$L136,TC1 ; |2420| 
                                        ; branchcc occurs ; |2420| 
	.dwpsn	file "src/csl_emif.c",line 2423,column 15,is_stmt
        MOV #0, *SP(#9) ; |2423| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2423,column 29,is_stmt
        MOV *SP(#2), AR1 ; |2423| 
        MOV *SP(#9), AR2 ; |2423| 
        CMPU AR2 >= AR1, TC1 ; |2423| 
        BCC $C$L151,TC1 ; |2423| 
                                        ; branchcc occurs ; |2423| 
$C$L133:    
$C$DW$L$_NAND_writeNBytes$4$B:
	.dwpsn	file "src/csl_emif.c",line 2425,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2425| 
        BCC $C$L134,AR1 != #0 ; |2425| 
                                        ; branchcc occurs ; |2425| 
$C$DW$L$_NAND_writeNBytes$4$E:
$C$DW$L$_NAND_writeNBytes$5$B:
        MOV dbl(*AR3(#8)), AC0 ; |2425| 
        MOV AC0, XAR3
        MOV uns(high_byte(*SP(#6))), AR1 ; |2425| 
        AND #0x00ff, AR1, AC1 ; |2425| 
        MOV AC1, *AR3 ; |2425| 
        NOP
        NOP
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2425| 
        MOV AC0, XAR3
        MOV uns(low_byte(*SP(#6))), AR1 ; |2425| 
        MOV AR1, *AR3 ; |2425| 
        B $C$L135 ; |2425| 
                                        ; branch occurs ; |2425| 
$C$DW$L$_NAND_writeNBytes$5$E:
$C$L134:    
$C$DW$L$_NAND_writeNBytes$6$B:
        MOV dbl(*AR3(#8)), AC0 ; |2425| 
        MOV AC0, XAR3
        MOV *SP(#6), AR1 ; |2425| 
        MOV AR1, *AR3 ; |2425| 
$C$DW$L$_NAND_writeNBytes$6$E:
$C$L135:    
$C$DW$L$_NAND_writeNBytes$7$B:
	.dwpsn	file "src/csl_emif.c",line 2423,column 54,is_stmt
        ADD #1, *SP(#9) ; |2423| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2423,column 29,is_stmt
        MOV *SP(#2), AR1 ; |2423| 
        MOV *SP(#9), AR2 ; |2423| 
        CMPU AR2 < AR1, TC1 ; |2423| 
        BCC $C$L133,TC1 ; |2423| 
                                        ; branchcc occurs ; |2423| 
$C$DW$L$_NAND_writeNBytes$7$E:
	.dwpsn	file "src/csl_emif.c",line 2427,column 3,is_stmt
        B $C$L151 ; |2427| 
                                        ; branch occurs ; |2427| 
$C$L136:    
	.dwpsn	file "src/csl_emif.c",line 2431,column 10,is_stmt

        MOV #1, AR2
||      MOV *SP(#2), AR1 ; |2431| 

        CMPU AR2 != AR1, TC1 ; |2431| 
        BCC $C$L138,TC1 ; |2431| 
                                        ; branchcc occurs ; |2431| 
	.dwpsn	file "src/csl_emif.c",line 2433,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2433| 
        BCC $C$L137,AR1 != #0 ; |2433| 
                                        ; branchcc occurs ; |2433| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(high_byte(*AR3)), AR1 ; |2433| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2433| 
        MOV AC0, XAR3
        AND #0x00ff, AR1, AC1 ; |2433| 
        MOV AC1, *AR3 ; |2433| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(low_byte(*AR3)), AR1 ; |2433| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2433| 
        MOV AC0, XAR3
        MOV AR1, *AR3 ; |2433| 
        B $C$L151 ; |2433| 
                                        ; branch occurs ; |2433| 
$C$L137:    
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#8)), AC0 ; |2433| 
        MOV AC0, XAR3
        MOV *AR2, *AR3 ; |2433| 
	.dwpsn	file "src/csl_emif.c",line 2434,column 4,is_stmt
        B $C$L151 ; |2434| 
                                        ; branch occurs ; |2434| 
$C$L138:    
	.dwpsn	file "src/csl_emif.c",line 2440,column 5,is_stmt
        BTST #0, *SP(#2), TC1 ; |2440| 
        BCC $C$L144,!TC1 ; |2440| 
                                        ; branchcc occurs ; |2440| 
	.dwpsn	file "src/csl_emif.c",line 2442,column 10,is_stmt
        MOV #0, *SP(#9) ; |2442| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2442,column 24,is_stmt
        MOV *SP(#2), AR1 ; |2442| 

        MOV *SP(#9), AR2 ; |2442| 
||      SFTL AR1, #-1 ; |2442| 

        CMPU AR2 >= AR1, TC1 ; |2442| 
        BCC $C$L142,TC1 ; |2442| 
                                        ; branchcc occurs ; |2442| 
$C$L139:    
$C$DW$L$_NAND_writeNBytes$15$B:
	.dwpsn	file "src/csl_emif.c",line 2444,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2444| 
        BCC $C$L140,AR1 != #0 ; |2444| 
                                        ; branchcc occurs ; |2444| 
$C$DW$L$_NAND_writeNBytes$15$E:
$C$DW$L$_NAND_writeNBytes$16$B:
        MOV *SP(#9), T0 ; |2444| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(high_byte(*AR3(T0))), AR1 ; |2444| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2444| 
        MOV AC0, XAR3
        AND #0x00ff, AR1, AC1 ; |2444| 
        MOV AC1, *AR3 ; |2444| 
        NOP
        NOP
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |2444| 
        MOV uns(low_byte(*AR3(T0))), AR1 ; |2444| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2444| 
        MOV AC0, XAR3
        MOV AR1, *AR3 ; |2444| 
        B $C$L141 ; |2444| 
                                        ; branch occurs ; |2444| 
$C$DW$L$_NAND_writeNBytes$16$E:
$C$L140:    
$C$DW$L$_NAND_writeNBytes$17$B:
        MOV *SP(#9), T0 ; |2444| 
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#8)), AC0 ; |2444| 
        MOV AC0, XAR3
        MOV *AR2(T0), *AR3 ; |2444| 
$C$DW$L$_NAND_writeNBytes$17$E:
$C$L141:    
$C$DW$L$_NAND_writeNBytes$18$B:
	.dwpsn	file "src/csl_emif.c",line 2442,column 53,is_stmt
        ADD #1, *SP(#9) ; |2442| 
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2442,column 24,is_stmt
        MOV *SP(#2), AR1 ; |2442| 

        SFTL AR1, #-1 ; |2442| 
||      MOV *SP(#9), AR2 ; |2442| 

        CMPU AR2 < AR1, TC1 ; |2442| 
        BCC $C$L139,TC1 ; |2442| 
                                        ; branchcc occurs ; |2442| 
$C$DW$L$_NAND_writeNBytes$18$E:
$C$L142:    
	.dwpsn	file "src/csl_emif.c",line 2447,column 12,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2447| 
        BCC $C$L143,AR1 != #0 ; |2447| 
                                        ; branchcc occurs ; |2447| 
        MOV *SP(#9), T0 ; |2447| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |2447| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2447| 
        MOV AC0, XAR3
        MOV AR1, *AR3 ; |2447| 
        B $C$L151 ; |2447| 
                                        ; branch occurs ; |2447| 
$C$L143:    
        MOV *SP(#9), T0 ; |2447| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(low_byte(*AR3(T0))), AR1 ; |2447| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2447| 
        MOV AC0, XAR3
        MOV AR1, *AR3 ; |2447| 
	.dwpsn	file "src/csl_emif.c",line 2448,column 6,is_stmt
        B $C$L151 ; |2448| 
                                        ; branch occurs ; |2448| 
$C$L144:    
	.dwpsn	file "src/csl_emif.c",line 2451,column 6,is_stmt
        MOV *SP(#7), AR1 ; |2451| 
        BCC $C$L145,AR1 != #0 ; |2451| 
                                        ; branchcc occurs ; |2451| 
	.dwpsn	file "src/csl_emif.c",line 2453,column 7,is_stmt
        MOV *SP(#2), AR1 ; |2453| 
        SFTL AR1, #-1 ; |2453| 
        MOV AR1, *SP(#10) ; |2453| 
	.dwpsn	file "src/csl_emif.c",line 2454,column 6,is_stmt
        B $C$L146 ; |2454| 
                                        ; branch occurs ; |2454| 
$C$L145:    
	.dwpsn	file "src/csl_emif.c",line 2457,column 7,is_stmt
        MOV *SP(#2), AR1 ; |2457| 
        MOV AR1, *SP(#10) ; |2457| 
$C$L146:    
	.dwpsn	file "src/csl_emif.c",line 2460,column 11,is_stmt
        MOV #0, *SP(#9) ; |2460| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2460,column 25,is_stmt
        MOV *SP(#10), AR1 ; |2460| 
        MOV *SP(#9), AR2 ; |2460| 
        CMPU AR2 >= AR1, TC1 ; |2460| 
        BCC $C$L151,TC1 ; |2460| 
                                        ; branchcc occurs ; |2460| 
$C$L147:    
$C$DW$L$_NAND_writeNBytes$26$B:
	.dwpsn	file "src/csl_emif.c",line 2462,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |2462| 
        BCC $C$L148,AR1 != #0 ; |2462| 
                                        ; branchcc occurs ; |2462| 
$C$DW$L$_NAND_writeNBytes$26$E:
$C$DW$L$_NAND_writeNBytes$27$B:
        MOV *SP(#9), T0 ; |2462| 
        MOV dbl(*SP(#4)), XAR3
        MOV uns(high_byte(*AR3(T0))), AR1 ; |2462| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2462| 
        MOV AC0, XAR3
        AND #0x00ff, AR1, AC1 ; |2462| 
        MOV AC1, *AR3 ; |2462| 
        NOP
        NOP
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#9), T0 ; |2462| 
        MOV uns(low_byte(*AR3(T0))), AR1 ; |2462| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#8)), AC0 ; |2462| 
        MOV AC0, XAR3
        MOV AR1, *AR3 ; |2462| 
        B $C$L149 ; |2462| 
                                        ; branch occurs ; |2462| 
$C$DW$L$_NAND_writeNBytes$27$E:
$C$L148:    
$C$DW$L$_NAND_writeNBytes$28$B:
        MOV *SP(#9), T0 ; |2462| 
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#8)), AC0 ; |2462| 
        MOV AC0, XAR3
        MOV *AR2(T0), *AR3 ; |2462| 
$C$DW$L$_NAND_writeNBytes$28$E:
$C$L149:    
$C$DW$L$_NAND_writeNBytes$29$B:
	.dwpsn	file "src/csl_emif.c",line 2460,column 47,is_stmt
        ADD #1, *SP(#9) ; |2460| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_emif.c",line 2460,column 25,is_stmt
        MOV *SP(#10), AR1 ; |2460| 
        MOV *SP(#9), AR2 ; |2460| 
        CMPU AR2 < AR1, TC1 ; |2460| 
        BCC $C$L147,TC1 ; |2460| 
                                        ; branchcc occurs ; |2460| 
$C$DW$L$_NAND_writeNBytes$29$E:
	.dwpsn	file "src/csl_emif.c",line 2467,column 5,is_stmt
        B $C$L151 ; |2467| 
                                        ; branch occurs ; |2467| 
$C$L150:    
	.dwpsn	file "src/csl_emif.c",line 2470,column 3,is_stmt
        MOV #-5, *SP(#8) ; |2470| 
$C$L151:    
	.dwpsn	file "src/csl_emif.c",line 2473,column 5,is_stmt
        MOV *SP(#8), T0 ; |2473| 
	.dwpsn	file "src/csl_emif.c",line 2474,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$271	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$271, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L147:1:1714639434")
	.dwattr $C$DW$271, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x99c)
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x99f)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$26$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$26$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$27$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$27$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$28$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$28$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$29$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$29$E)
	.dwendtag $C$DW$271


$C$DW$276	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$276, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L139:1:1714639434")
	.dwattr $C$DW$276, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x98a)
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x98d)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$15$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$15$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$16$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$16$E)
$C$DW$279	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$279, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$17$B)
	.dwattr $C$DW$279, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$17$E)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$18$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$18$E)
	.dwendtag $C$DW$276


$C$DW$281	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$281, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_emif.asm:$C$L133:1:1714639434")
	.dwattr $C$DW$281, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$281, DW_AT_TI_begin_line(0x977)
	.dwattr $C$DW$281, DW_AT_TI_end_line(0x97a)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$4$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$4$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$5$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$5$E)
$C$DW$284	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$284, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$6$B)
	.dwattr $C$DW$284, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$6$E)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_NAND_writeNBytes$7$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_NAND_writeNBytes$7$E)
	.dwendtag $C$DW$281

	.dwattr $C$DW$256, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x9aa)
	.dwattr $C$DW$256, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$256

	.sect	".text"
	.global	_NAND_hasRandomRead

$C$DW$286	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_hasRandomRead")
	.dwattr $C$DW$286, DW_AT_low_pc(_NAND_hasRandomRead)
	.dwattr $C$DW$286, DW_AT_high_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_NAND_hasRandomRead")
	.dwattr $C$DW$286, DW_AT_external
	.dwattr $C$DW$286, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$286, DW_AT_TI_begin_line(0x9d2)
	.dwattr $C$DW$286, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$286, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2516,column 1,is_stmt,address _NAND_hasRandomRead

	.dwfde $C$DW$CIE, _NAND_hasRandomRead
$C$DW$287	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nandOptions")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg0]
$C$DW$288	.dwtag  DW_TAG_formal_parameter, DW_AT_name("RRstatus")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_RRstatus")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: NAND_hasRandomRead                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_hasRandomRead:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("nandOptions")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("RRstatus")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_RRstatus")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |2516| 
	.dwpsn	file "src/csl_emif.c",line 2519,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L153,AC0 == #0 ; |2519| 
                                        ; branchcc occurs ; |2519| 
	.dwpsn	file "src/csl_emif.c",line 2521,column 3,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2521| 
        AND #0x0004, AC0, AC0 ; |2521| 
        MOV AC0, *SP(#4) ; |2521| 
	.dwpsn	file "src/csl_emif.c",line 2523,column 3,is_stmt
        CMP *SP(#4) == #4, TC1 ; |2523| 
        BCC $C$L152,!TC1 ; |2523| 
                                        ; branchcc occurs ; |2523| 
	.dwpsn	file "src/csl_emif.c",line 2525,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |2525| 
	.dwpsn	file "src/csl_emif.c",line 2526,column 3,is_stmt
        B $C$L153 ; |2526| 
                                        ; branch occurs ; |2526| 
$C$L152:    
	.dwpsn	file "src/csl_emif.c",line 2529,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |2529| 
	.dwpsn	file "src/csl_emif.c",line 2532,column 1,is_stmt
$C$L153:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$286, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$286, DW_AT_TI_end_line(0x9e4)
	.dwattr $C$DW$286, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$286

	.sect	".text"
	.global	_NAND_hasRandomWrite

$C$DW$293	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_hasRandomWrite")
	.dwattr $C$DW$293, DW_AT_low_pc(_NAND_hasRandomWrite)
	.dwattr $C$DW$293, DW_AT_high_pc(0x00)
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_NAND_hasRandomWrite")
	.dwattr $C$DW$293, DW_AT_external
	.dwattr $C$DW$293, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$293, DW_AT_TI_begin_line(0xa0c)
	.dwattr $C$DW$293, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$293, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2574,column 1,is_stmt,address _NAND_hasRandomWrite

	.dwfde $C$DW$CIE, _NAND_hasRandomWrite
$C$DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nandOptions")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg0]
$C$DW$295	.dwtag  DW_TAG_formal_parameter, DW_AT_name("RWstatus")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_RWstatus")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: NAND_hasRandomWrite                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_hasRandomWrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("nandOptions")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("RWstatus")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_RWstatus")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$298	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |2574| 
	.dwpsn	file "src/csl_emif.c",line 2577,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L155,AC0 == #0 ; |2577| 
                                        ; branchcc occurs ; |2577| 
	.dwpsn	file "src/csl_emif.c",line 2579,column 3,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2579| 
        AND #0x0008, AC0, AC0 ; |2579| 
        MOV AC0, *SP(#4) ; |2579| 
	.dwpsn	file "src/csl_emif.c",line 2581,column 3,is_stmt
        CMP *SP(#4) == #8, TC1 ; |2581| 
        BCC $C$L154,!TC1 ; |2581| 
                                        ; branchcc occurs ; |2581| 
	.dwpsn	file "src/csl_emif.c",line 2583,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |2583| 
	.dwpsn	file "src/csl_emif.c",line 2584,column 3,is_stmt
        B $C$L155 ; |2584| 
                                        ; branch occurs ; |2584| 
$C$L154:    
	.dwpsn	file "src/csl_emif.c",line 2587,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |2587| 
	.dwpsn	file "src/csl_emif.c",line 2590,column 1,is_stmt
$C$L155:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$293, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$293, DW_AT_TI_end_line(0xa1e)
	.dwattr $C$DW$293, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$293

	.sect	".text"
	.global	_NAND_hasCacheProg

$C$DW$300	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_hasCacheProg")
	.dwattr $C$DW$300, DW_AT_low_pc(_NAND_hasCacheProg)
	.dwattr $C$DW$300, DW_AT_high_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_NAND_hasCacheProg")
	.dwattr $C$DW$300, DW_AT_external
	.dwattr $C$DW$300, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$300, DW_AT_TI_begin_line(0xa45)
	.dwattr $C$DW$300, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$300, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2631,column 1,is_stmt,address _NAND_hasCacheProg

	.dwfde $C$DW$CIE, _NAND_hasCacheProg
$C$DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nandOptions")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg0]
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CPstatus")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_CPstatus")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: NAND_hasCacheProg                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_hasCacheProg:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$303	.dwtag  DW_TAG_variable, DW_AT_name("nandOptions")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$304	.dwtag  DW_TAG_variable, DW_AT_name("CPstatus")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_CPstatus")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$305	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |2631| 
	.dwpsn	file "src/csl_emif.c",line 2634,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L157,AC0 == #0 ; |2634| 
                                        ; branchcc occurs ; |2634| 
	.dwpsn	file "src/csl_emif.c",line 2636,column 3,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2636| 
        AND #0x0001, AC0, AC0 ; |2636| 
        MOV AC0, *SP(#4) ; |2636| 
	.dwpsn	file "src/csl_emif.c",line 2638,column 3,is_stmt
        CMP *SP(#4) == #1, TC1 ; |2638| 
        BCC $C$L156,!TC1 ; |2638| 
                                        ; branchcc occurs ; |2638| 
	.dwpsn	file "src/csl_emif.c",line 2640,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |2640| 
	.dwpsn	file "src/csl_emif.c",line 2641,column 3,is_stmt
        B $C$L157 ; |2641| 
                                        ; branch occurs ; |2641| 
$C$L156:    
	.dwpsn	file "src/csl_emif.c",line 2644,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |2644| 
	.dwpsn	file "src/csl_emif.c",line 2647,column 1,is_stmt
$C$L157:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$300, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$300, DW_AT_TI_end_line(0xa57)
	.dwattr $C$DW$300, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$300

	.sect	".text"
	.global	_NAND_hasCopyBack

$C$DW$307	.dwtag  DW_TAG_subprogram, DW_AT_name("NAND_hasCopyBack")
	.dwattr $C$DW$307, DW_AT_low_pc(_NAND_hasCopyBack)
	.dwattr $C$DW$307, DW_AT_high_pc(0x00)
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_NAND_hasCopyBack")
	.dwattr $C$DW$307, DW_AT_external
	.dwattr $C$DW$307, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$307, DW_AT_TI_begin_line(0xa7e)
	.dwattr $C$DW$307, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$307, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2688,column 1,is_stmt,address _NAND_hasCopyBack

	.dwfde $C$DW$CIE, _NAND_hasCopyBack
$C$DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nandOptions")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg0]
$C$DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CBstatus")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_CBstatus")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: NAND_hasCopyBack                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_NAND_hasCopyBack:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$310	.dwtag  DW_TAG_variable, DW_AT_name("nandOptions")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_nandOptions")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$311	.dwtag  DW_TAG_variable, DW_AT_name("CBstatus")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_CBstatus")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$312	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV AC0, dbl(*SP(#0)) ; |2688| 
	.dwpsn	file "src/csl_emif.c",line 2691,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L159,AC0 == #0 ; |2691| 
                                        ; branchcc occurs ; |2691| 
	.dwpsn	file "src/csl_emif.c",line 2693,column 3,is_stmt
        MOV dbl(*SP(#0)), AC0 ; |2693| 
        AND #0x0002, AC0, AC0 ; |2693| 
        MOV AC0, *SP(#4) ; |2693| 
	.dwpsn	file "src/csl_emif.c",line 2695,column 3,is_stmt
        CMP *SP(#4) == #2, TC1 ; |2695| 
        BCC $C$L158,!TC1 ; |2695| 
                                        ; branchcc occurs ; |2695| 
	.dwpsn	file "src/csl_emif.c",line 2697,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3 ; |2697| 
	.dwpsn	file "src/csl_emif.c",line 2698,column 3,is_stmt
        B $C$L159 ; |2698| 
                                        ; branch occurs ; |2698| 
$C$L158:    
	.dwpsn	file "src/csl_emif.c",line 2701,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |2701| 
	.dwpsn	file "src/csl_emif.c",line 2704,column 1,is_stmt
$C$L159:    
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$307, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$307, DW_AT_TI_end_line(0xa90)
	.dwattr $C$DW$307, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$307

	.sect	".text"
	.global	_EMIF_intrEnable

$C$DW$314	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrEnable")
	.dwattr $C$DW$314, DW_AT_low_pc(_EMIF_intrEnable)
	.dwattr $C$DW$314, DW_AT_high_pc(0x00)
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_EMIF_intrEnable")
	.dwattr $C$DW$314, DW_AT_external
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$314, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$314, DW_AT_TI_begin_line(0xab9)
	.dwattr $C$DW$314, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$314, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 2746,column 1,is_stmt,address _EMIF_intrEnable

	.dwfde $C$DW$CIE, _EMIF_intrEnable
$C$DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrEnable                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$316	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$317	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2749,column 2,is_stmt
        MOV #0, *SP(#2) ; |2749| 
	.dwpsn	file "src/csl_emif.c",line 2751,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L160,AC0 == #0 ; |2751| 
                                        ; branchcc occurs ; |2751| 
	.dwpsn	file "src/csl_emif.c",line 2754,column 3,is_stmt
        MOV #72, T0 ; |2754| 
        MOV *AR3, AR3 ; |2754| 
        MOV port(*AR3(T0)), AR1 ; |2754| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2754| 
        AND #0xffc3, AR1, AC0 ; |2754| 
        BSET @#2, AC0 ; |2754| 
        MOV AC0, port(*AR3(T0)) ; |2754| 
	.dwpsn	file "src/csl_emif.c",line 2756,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2756| 
        MOV port(*AR3(T0)), AR1 ; |2756| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2756| 
        BCLR @#1, AR1 ; |2756| 
        BSET @#1, AR1 ; |2756| 
        MOV AR1, port(*AR3(T0)) ; |2756| 
	.dwpsn	file "src/csl_emif.c",line 2758,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2758| 
        MOV port(*AR3(T0)), AR1 ; |2758| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2758| 
        BCLR @#0, AR1 ; |2758| 
        BSET @#0, AR1 ; |2758| 
        MOV AR1, port(*AR3(T0)) ; |2758| 
	.dwpsn	file "src/csl_emif.c",line 2759,column 2,is_stmt
        B $C$L161 ; |2759| 
                                        ; branch occurs ; |2759| 
$C$L160:    
	.dwpsn	file "src/csl_emif.c",line 2762,column 3,is_stmt
        MOV #-5, *SP(#2) ; |2762| 
$C$L161:    
	.dwpsn	file "src/csl_emif.c",line 2765,column 5,is_stmt
        MOV *SP(#2), T0 ; |2765| 
	.dwpsn	file "src/csl_emif.c",line 2766,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$314, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$314, DW_AT_TI_end_line(0xace)
	.dwattr $C$DW$314, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$314

	.sect	".text"
	.global	_EMIF_intrDisable

$C$DW$319	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrDisable")
	.dwattr $C$DW$319, DW_AT_low_pc(_EMIF_intrDisable)
	.dwattr $C$DW$319, DW_AT_high_pc(0x00)
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_EMIF_intrDisable")
	.dwattr $C$DW$319, DW_AT_external
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$319, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$319, DW_AT_TI_begin_line(0xafa)
	.dwattr $C$DW$319, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$319, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 2811,column 1,is_stmt,address _EMIF_intrDisable

	.dwfde $C$DW$CIE, _EMIF_intrDisable
$C$DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrDisable                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$321	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$322	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2814,column 2,is_stmt
        MOV #0, *SP(#2) ; |2814| 
	.dwpsn	file "src/csl_emif.c",line 2816,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L162,AC0 == #0 ; |2816| 
                                        ; branchcc occurs ; |2816| 
	.dwpsn	file "src/csl_emif.c",line 2819,column 3,is_stmt
        MOV #76, T0 ; |2819| 
        MOV *AR3, AR3 ; |2819| 
        MOV port(*AR3(T0)), AR1 ; |2819| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2819| 
        AND #0xffc3, AR1, AC0 ; |2819| 
        BSET @#2, AC0 ; |2819| 
        MOV AC0, port(*AR3(T0)) ; |2819| 
	.dwpsn	file "src/csl_emif.c",line 2821,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2821| 
        MOV port(*AR3(T0)), AR1 ; |2821| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2821| 
        BCLR @#1, AR1 ; |2821| 
        BSET @#1, AR1 ; |2821| 
        MOV AR1, port(*AR3(T0)) ; |2821| 
	.dwpsn	file "src/csl_emif.c",line 2823,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2823| 
        MOV port(*AR3(T0)), AR1 ; |2823| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2823| 
        BCLR @#0, AR1 ; |2823| 
        BSET @#0, AR1 ; |2823| 
        MOV AR1, port(*AR3(T0)) ; |2823| 
	.dwpsn	file "src/csl_emif.c",line 2824,column 2,is_stmt
        B $C$L163 ; |2824| 
                                        ; branch occurs ; |2824| 
$C$L162:    
	.dwpsn	file "src/csl_emif.c",line 2827,column 3,is_stmt
        MOV #-5, *SP(#2) ; |2827| 
$C$L163:    
	.dwpsn	file "src/csl_emif.c",line 2830,column 5,is_stmt
        MOV *SP(#2), T0 ; |2830| 
	.dwpsn	file "src/csl_emif.c",line 2831,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$319, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$319, DW_AT_TI_end_line(0xb0f)
	.dwattr $C$DW$319, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$319

	.sect	".text"
	.global	_EMIF_intrReadAT

$C$DW$324	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrReadAT")
	.dwattr $C$DW$324, DW_AT_low_pc(_EMIF_intrReadAT)
	.dwattr $C$DW$324, DW_AT_high_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_EMIF_intrReadAT")
	.dwattr $C$DW$324, DW_AT_external
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$324, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$324, DW_AT_TI_begin_line(0xb3d)
	.dwattr $C$DW$324, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$324, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2879,column 1,is_stmt,address _EMIF_intrReadAT

	.dwfde $C$DW$CIE, _EMIF_intrReadAT
$C$DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg17]
$C$DW$326	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ATstatus")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_ATstatus")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrReadAT                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrReadAT:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$327	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$328	.dwtag  DW_TAG_variable, DW_AT_name("ATstatus")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_ATstatus")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$329	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2882,column 2,is_stmt
        MOV #0, *SP(#4) ; |2882| 
	.dwpsn	file "src/csl_emif.c",line 2884,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L165,AC0 == #0 ; |2884| 
                                        ; branchcc occurs ; |2884| 
	.dwpsn	file "src/csl_emif.c",line 2886,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L164,AC0 == #0 ; |2886| 
                                        ; branchcc occurs ; |2886| 
	.dwpsn	file "src/csl_emif.c",line 2888,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |2888| 
        MOV *AR3, AR3 ; |2888| 
        MOV port(*AR3(T0)), AR1 ; |2888| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0001, AR1, AC0 ; |2888| 
        MOV AC0, *AR3 ; |2888| 
	.dwpsn	file "src/csl_emif.c",line 2889,column 3,is_stmt
        B $C$L166 ; |2889| 
                                        ; branch occurs ; |2889| 
$C$L164:    
	.dwpsn	file "src/csl_emif.c",line 2892,column 4,is_stmt
        MOV #-6, *SP(#4) ; |2892| 
	.dwpsn	file "src/csl_emif.c",line 2894,column 2,is_stmt
        B $C$L166 ; |2894| 
                                        ; branch occurs ; |2894| 
$C$L165:    
	.dwpsn	file "src/csl_emif.c",line 2897,column 3,is_stmt
        MOV #-5, *SP(#4) ; |2897| 
$C$L166:    
	.dwpsn	file "src/csl_emif.c",line 2900,column 5,is_stmt
        MOV *SP(#4), T0 ; |2900| 
	.dwpsn	file "src/csl_emif.c",line 2901,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$324, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$324, DW_AT_TI_end_line(0xb55)
	.dwattr $C$DW$324, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$324

	.sect	".text"
	.global	_EMIF_intrReadLT

$C$DW$331	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrReadLT")
	.dwattr $C$DW$331, DW_AT_low_pc(_EMIF_intrReadLT)
	.dwattr $C$DW$331, DW_AT_high_pc(0x00)
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_EMIF_intrReadLT")
	.dwattr $C$DW$331, DW_AT_external
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$331, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$331, DW_AT_TI_begin_line(0xb83)
	.dwattr $C$DW$331, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$331, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 2949,column 1,is_stmt,address _EMIF_intrReadLT

	.dwfde $C$DW$CIE, _EMIF_intrReadLT
$C$DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg17]
$C$DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_name("LTstatus")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_LTstatus")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrReadLT                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,CARRY,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrReadLT:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$334	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$335	.dwtag  DW_TAG_variable, DW_AT_name("LTstatus")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_LTstatus")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$336	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 2952,column 2,is_stmt
        MOV #0, *SP(#4) ; |2952| 
	.dwpsn	file "src/csl_emif.c",line 2954,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L168,AC0 == #0 ; |2954| 
                                        ; branchcc occurs ; |2954| 
	.dwpsn	file "src/csl_emif.c",line 2956,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L167,AC0 == #0 ; |2956| 
                                        ; branchcc occurs ; |2956| 
	.dwpsn	file "src/csl_emif.c",line 2958,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |2958| 
        MOV *AR3, AR3 ; |2958| 
        MOV port(*AR3(T0)), AR1 ; |2958| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0002, AR1, AR1 ; |2958| 
        SFTL AR1, #-1 ; |2958| 
        MOV AR1, *AR3 ; |2958| 
	.dwpsn	file "src/csl_emif.c",line 2959,column 3,is_stmt
        B $C$L169 ; |2959| 
                                        ; branch occurs ; |2959| 
$C$L167:    
	.dwpsn	file "src/csl_emif.c",line 2962,column 4,is_stmt
        MOV #-6, *SP(#4) ; |2962| 
	.dwpsn	file "src/csl_emif.c",line 2964,column 2,is_stmt
        B $C$L169 ; |2964| 
                                        ; branch occurs ; |2964| 
$C$L168:    
	.dwpsn	file "src/csl_emif.c",line 2967,column 3,is_stmt
        MOV #-5, *SP(#4) ; |2967| 
$C$L169:    
	.dwpsn	file "src/csl_emif.c",line 2970,column 5,is_stmt
        MOV *SP(#4), T0 ; |2970| 
	.dwpsn	file "src/csl_emif.c",line 2971,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$331, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$331, DW_AT_TI_end_line(0xb9b)
	.dwattr $C$DW$331, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$331

	.sect	".text"
	.global	_EMIF_intrReadWR

$C$DW$338	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrReadWR")
	.dwattr $C$DW$338, DW_AT_low_pc(_EMIF_intrReadWR)
	.dwattr $C$DW$338, DW_AT_high_pc(0x00)
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_EMIF_intrReadWR")
	.dwattr $C$DW$338, DW_AT_external
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$338, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$338, DW_AT_TI_begin_line(0xbc9)
	.dwattr $C$DW$338, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$338, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_emif.c",line 3019,column 1,is_stmt,address _EMIF_intrReadWR

	.dwfde $C$DW$CIE, _EMIF_intrReadWR
$C$DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg17]
$C$DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_name("WRstatus")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_WRstatus")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrReadWR                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrReadWR:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$341	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$342	.dwtag  DW_TAG_variable, DW_AT_name("WRstatus")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_WRstatus")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$343	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 3022,column 2,is_stmt
        MOV #0, *SP(#4) ; |3022| 
	.dwpsn	file "src/csl_emif.c",line 3024,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L171,AC0 == #0 ; |3024| 
                                        ; branchcc occurs ; |3024| 
	.dwpsn	file "src/csl_emif.c",line 3026,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L170,AC0 == #0 ; |3026| 
                                        ; branchcc occurs ; |3026| 
	.dwpsn	file "src/csl_emif.c",line 3028,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |3028| 
        MOV *AR3, AR3 ; |3028| 
        MOV port(*AR3(T0)), AR1 ; |3028| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x003c, AR1, AC0 ; |3028| 
        SFTS AC0, #-2, AC0 ; |3028| 
        MOV AC0, *AR3 ; |3028| 
	.dwpsn	file "src/csl_emif.c",line 3029,column 3,is_stmt
        B $C$L172 ; |3029| 
                                        ; branch occurs ; |3029| 
$C$L170:    
	.dwpsn	file "src/csl_emif.c",line 3032,column 4,is_stmt
        MOV #-6, *SP(#4) ; |3032| 
	.dwpsn	file "src/csl_emif.c",line 3034,column 2,is_stmt
        B $C$L172 ; |3034| 
                                        ; branch occurs ; |3034| 
$C$L171:    
	.dwpsn	file "src/csl_emif.c",line 3037,column 3,is_stmt
        MOV #-5, *SP(#4) ; |3037| 
$C$L172:    
	.dwpsn	file "src/csl_emif.c",line 3040,column 5,is_stmt
        MOV *SP(#4), T0 ; |3040| 
	.dwpsn	file "src/csl_emif.c",line 3041,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$338, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$338, DW_AT_TI_end_line(0xbe1)
	.dwattr $C$DW$338, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$338

	.sect	".text"
	.global	_EMIF_intrClear

$C$DW$345	.dwtag  DW_TAG_subprogram, DW_AT_name("EMIF_intrClear")
	.dwattr $C$DW$345, DW_AT_low_pc(_EMIF_intrClear)
	.dwattr $C$DW$345, DW_AT_high_pc(0x00)
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_EMIF_intrClear")
	.dwattr $C$DW$345, DW_AT_external
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$345, DW_AT_TI_begin_file("src/csl_emif.c")
	.dwattr $C$DW$345, DW_AT_TI_begin_line(0xc0d)
	.dwattr $C$DW$345, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$345, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_emif.c",line 3086,column 1,is_stmt,address _EMIF_intrClear

	.dwfde $C$DW$CIE, _EMIF_intrClear
$C$DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hEmif")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: EMIF_intrClear                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_EMIF_intrClear:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("hEmif")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_hEmif")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("result")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_result")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_emif.c",line 3089,column 2,is_stmt
        MOV #0, *SP(#2) ; |3089| 
	.dwpsn	file "src/csl_emif.c",line 3091,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L173,AC0 == #0 ; |3091| 
                                        ; branchcc occurs ; |3091| 
	.dwpsn	file "src/csl_emif.c",line 3094,column 3,is_stmt
        MOV #68, T0 ; |3094| 
        MOV *AR3, AR3 ; |3094| 
        MOV port(*AR3(T0)), AR1 ; |3094| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3094| 
        AND #0xffc3, AR1, AC0 ; |3094| 
        BSET @#2, AC0 ; |3094| 
        MOV AC0, port(*AR3(T0)) ; |3094| 
	.dwpsn	file "src/csl_emif.c",line 3096,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3096| 
        MOV port(*AR3(T0)), AR1 ; |3096| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3096| 
        BCLR @#1, AR1 ; |3096| 
        BSET @#1, AR1 ; |3096| 
        MOV AR1, port(*AR3(T0)) ; |3096| 
	.dwpsn	file "src/csl_emif.c",line 3098,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3098| 
        MOV port(*AR3(T0)), AR1 ; |3098| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |3098| 
        BCLR @#0, AR1 ; |3098| 
        BSET @#0, AR1 ; |3098| 
        MOV AR1, port(*AR3(T0)) ; |3098| 
	.dwpsn	file "src/csl_emif.c",line 3099,column 2,is_stmt
        B $C$L174 ; |3099| 
                                        ; branch occurs ; |3099| 
$C$L173:    
	.dwpsn	file "src/csl_emif.c",line 3102,column 3,is_stmt
        MOV #-5, *SP(#2) ; |3102| 
$C$L174:    
	.dwpsn	file "src/csl_emif.c",line 3105,column 5,is_stmt
        MOV *SP(#2), T0 ; |3105| 
	.dwpsn	file "src/csl_emif.c",line 3106,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$345, DW_AT_TI_end_file("src/csl_emif.c")
	.dwattr $C$DW$345, DW_AT_TI_end_line(0xc22)
	.dwattr $C$DW$345, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$345

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_SYS_peripheralReset
	.global	_getSysClk

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$350	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_16BIT"), DW_AT_const_value(0x00)
$C$DW$351	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_8BIT_HIGH"), DW_AT_const_value(0x01)
$C$DW$352	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_8BIT_LOW"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifAccess")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$353	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_CS2"), DW_AT_const_value(0x00)
$C$DW$354	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_CS3"), DW_AT_const_value(0x01)
$C$DW$355	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_CS4"), DW_AT_const_value(0x02)
$C$DW$356	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_CS5"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifChipSelect")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$357	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_WP_LOW"), DW_AT_const_value(0x00)
$C$DW$358	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_WP_HIGH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifWaitPol")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$359	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EM_WAIT0"), DW_AT_const_value(0x00)
$C$DW$360	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EM_WAIT1"), DW_AT_const_value(0x01)
$C$DW$361	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EM_WAIT2"), DW_AT_const_value(0x02)
$C$DW$362	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EM_WAIT3"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifWaitPin")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$363	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_8_BIT"), DW_AT_const_value(0x00)
$C$DW$364	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_16_BIT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifWidth")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$365	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$366	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$367	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_EMIF_OPMODE_INTRRUPT"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifOpMode")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$368	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_PAGESZ_256"), DW_AT_const_value(0x00)
$C$DW$369	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_PAGESZ_512"), DW_AT_const_value(0x01)
$C$DW$370	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_PAGESZ_1024"), DW_AT_const_value(0x02)
$C$DW$371	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_PAGESZ_2048"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_NandPageSize")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_NONE"), DW_AT_const_value(0x00)
$C$DW$373	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BIG_BLOCK"), DW_AT_const_value(0x01)
$C$DW$374	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_SMALL_BLOCK"), DW_AT_const_value(0x02)
$C$DW$375	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_INVALID"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$63

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_NandType")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$376	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BANK_0"), DW_AT_const_value(0x00)
$C$DW$377	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BANK_1"), DW_AT_const_value(0x01)
$C$DW$378	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BANK_2"), DW_AT_const_value(0x02)
$C$DW$379	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BANK_3"), DW_AT_const_value(0x03)
$C$DW$380	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_NAND_BANK_MAX"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$69

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_NandBankNo")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$381	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$382	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$383	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$74

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0xde)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$384, DW_AT_name("REV")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_REV")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$385, DW_AT_name("STATUS")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_STATUS")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$386, DW_AT_name("RSVD0")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$387, DW_AT_name("AWCCR1")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_AWCCR1")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$388, DW_AT_name("AWCCR2")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_AWCCR2")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$389, DW_AT_name("RSVD1")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$390, DW_AT_name("SDCR1")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_SDCR1")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$391, DW_AT_name("SDCR2")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_SDCR2")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$392, DW_AT_name("RSVD2")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$393, DW_AT_name("SDRCR")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_SDRCR")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$394, DW_AT_name("RSVD3")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$395, DW_AT_name("ACS2CR1")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_ACS2CR1")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_name("ACS2CR2")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_ACS2CR2")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$397, DW_AT_name("RSVD4")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$398, DW_AT_name("ACS3CR1")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_ACS3CR1")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$399, DW_AT_name("ACS3CR2")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_ACS3CR2")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$400, DW_AT_name("RSVD5")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$401, DW_AT_name("ACS4CR1")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_ACS4CR1")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$402, DW_AT_name("ACS4CR2")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_ACS4CR2")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$403, DW_AT_name("RSVD6")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$404, DW_AT_name("ACS5CR1")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_ACS5CR1")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$405, DW_AT_name("ACS5CR2")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_ACS5CR2")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$406, DW_AT_name("RSVD7")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$407, DW_AT_name("SDTIMR1")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_SDTIMR1")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$408, DW_AT_name("SDTIMR2")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_SDTIMR2")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$409, DW_AT_name("RSVD8")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$410, DW_AT_name("SDSRETR")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_SDSRETR")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$411, DW_AT_name("RSVD9")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x3d]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$412, DW_AT_name("EIRR")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_EIRR")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$413, DW_AT_name("RSVD10")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$414, DW_AT_name("EIMR")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_EIMR")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$415, DW_AT_name("RSVD11")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$416, DW_AT_name("EIMSR")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_EIMSR")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$417, DW_AT_name("RSVD12")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$418, DW_AT_name("EIMCR")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_EIMCR")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$419, DW_AT_name("RSVD13")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x4d]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$420, DW_AT_name("NANDFCR")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_NANDFCR")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$421, DW_AT_name("RSVD14")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_RSVD14")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$422, DW_AT_name("NANDFSR1")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_NANDFSR1")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$423, DW_AT_name("NANDFSR2")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_NANDFSR2")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$424, DW_AT_name("RSVD15")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_RSVD15")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$425, DW_AT_name("PAGEMODCTRL1")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_PAGEMODCTRL1")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$426, DW_AT_name("PAGEMODCTRL2")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_PAGEMODCTRL2")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x69]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$427, DW_AT_name("RSVD16")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_RSVD16")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$428, DW_AT_name("NCS2ECC1")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_NCS2ECC1")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$429, DW_AT_name("NCS2ECC2")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_NCS2ECC2")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x71]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$430, DW_AT_name("RSVD17")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_RSVD17")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$431, DW_AT_name("NCS3ECC1")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_NCS3ECC1")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$432, DW_AT_name("NCS3ECC2")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_NCS3ECC2")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x75]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$433, DW_AT_name("RSVD18")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_RSVD18")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$434, DW_AT_name("NCS4ECC1")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_NCS4ECC1")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$435, DW_AT_name("NCS4ECC2")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_NCS4ECC2")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x79]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$436, DW_AT_name("RSVD19")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_RSVD19")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$437, DW_AT_name("NCS5ECC1")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_NCS5ECC1")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$438, DW_AT_name("NCS5ECC2")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_NCS5ECC2")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x7d]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$439, DW_AT_name("RSVD20")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_RSVD20")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$440, DW_AT_name("NAND4BITECCLOAD")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_NAND4BITECCLOAD")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$441, DW_AT_name("RSVD21")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_RSVD21")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0xbd]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$442, DW_AT_name("NAND4BITECC1")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_NAND4BITECC1")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$443, DW_AT_name("NAND4BITECC2")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_NAND4BITECC2")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0xc1]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$444, DW_AT_name("RSVD22")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_RSVD22")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$445, DW_AT_name("NAND4BITECC3")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_NAND4BITECC3")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$446, DW_AT_name("NAND4BITECC4")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_NAND4BITECC4")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0xc5]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$447, DW_AT_name("RSVD23")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_RSVD23")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$448, DW_AT_name("NAND4BITECC5")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_NAND4BITECC5")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$449, DW_AT_name("NAND4BITECC6")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_NAND4BITECC6")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0xc9]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$450, DW_AT_name("RSVD24")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_RSVD24")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$451, DW_AT_name("NAND4BITECC7")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_NAND4BITECC7")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$452, DW_AT_name("NAND4BITECC8")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_NAND4BITECC8")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0xcd]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$453, DW_AT_name("RSVD25")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_RSVD25")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$454, DW_AT_name("NANDERRADD1")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_NANDERRADD1")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$455, DW_AT_name("NANDERRADD2")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_NANDERRADD2")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0xd1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$456, DW_AT_name("RSVD26")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_RSVD26")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$457, DW_AT_name("NANDERRADD3")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_NANDERRADD3")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$458, DW_AT_name("NANDERRADD4")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_NANDERRADD4")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0xd5]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$459, DW_AT_name("RSVD27")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_RSVD27")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$460, DW_AT_name("NANDERRVAL1")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_NANDERRVAL1")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$461, DW_AT_name("NANDERRVAL2")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_NANDERRVAL2")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$462, DW_AT_name("RSVD28")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_RSVD28")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$463, DW_AT_name("NANDERRVAL3")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_NANDERRVAL3")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$464, DW_AT_name("NANDERRVAL4")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_NANDERRVAL4")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0xdd]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifRegs")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$465	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$46)
$C$DW$466	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$465)
$C$DW$T$47	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$466)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x10)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifRegsOvly")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x48)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$467, DW_AT_name("EBSR")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$468, DW_AT_name("RSVD0")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$469, DW_AT_name("PCGCR1")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$470, DW_AT_name("PCGCR2")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$471, DW_AT_name("PSRCR")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$472, DW_AT_name("PRCR")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$473, DW_AT_name("RSVD1")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$474, DW_AT_name("TIAFR")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$475, DW_AT_name("RSVD2")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_name("ODSCR")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$477, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$478, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$479, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$480, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$481, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$482, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$483, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$484, DW_AT_name("CCR1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$485, DW_AT_name("CCR2")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$486, DW_AT_name("CGCR1")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$487, DW_AT_name("CGCR2")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$488, DW_AT_name("CGCR3")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$489, DW_AT_name("CGCR4")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_name("CCSSR")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$491, DW_AT_name("RSVD3")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$492, DW_AT_name("ECDR")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_name("RSVD4")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("RSVD5")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$498, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$500, DW_AT_name("RSVD6")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$501, DW_AT_name("DMAIFR")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$502, DW_AT_name("DMAIER")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$503, DW_AT_name("USBSCR")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$504, DW_AT_name("ESCR")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$505, DW_AT_name("RSVD7")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$508, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$510, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$511, DW_AT_name("RSVD8")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$512, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$513, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$514, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$515, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$516, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$517, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$518, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$519, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$520	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$50)
$C$DW$521	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$520)
$C$DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$521)
$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x10)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("CSL_AsyncConfig")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x06)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$522, DW_AT_name("emifAccess")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_emifAccess")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$523, DW_AT_name("chipSelect")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_chipSelect")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$524, DW_AT_name("asyncWaitCfg")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_asyncWaitCfg")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$525, DW_AT_name("asyncCfg")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_asyncCfg")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AsyncConfig")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("CSL_EmifAsyncCfg")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x0a)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("selectStrobe")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_selectStrobe")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("ewMode")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_ewMode")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("w_setup")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_w_setup")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("w_strobe")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_w_strobe")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("w_hold")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_w_hold")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("r_setup")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_r_setup")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("r_strobe")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_r_strobe")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("r_hold")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_r_hold")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("turnAround")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_turnAround")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("aSize")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_aSize")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifAsyncCfg")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x17)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("CSL_EmifAsyncWaitCfg")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x03)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$536, DW_AT_name("waitPol")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_waitPol")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$537, DW_AT_name("waitPin")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_waitPin")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("waitCycles")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_waitCycles")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifAsyncWaitCfg")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("CSL_EmifObj")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x14)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$539, DW_AT_name("regs")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$540, DW_AT_name("sysCtrlRegs")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_sysCtrlRegs")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$541, DW_AT_name("emifWidth")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_emifWidth")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$542, DW_AT_name("nandWidth")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_nandWidth")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$543, DW_AT_name("intrNumEmif")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_intrNumEmif")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$544, DW_AT_name("emifOpMode")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_emifOpMode")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$545, DW_AT_name("chipSelect")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_chipSelect")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$546, DW_AT_name("waitPin")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_waitPin")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$547, DW_AT_name("bank")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_bank")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$548, DW_AT_name("nandPageSize")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_nandPageSize")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("addrCycles")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_addrCycles")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$550, DW_AT_name("nandType")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_nandType")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$65

$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifObj")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x17)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_EmifHandle")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("CSL_NandAsyncBank")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x08)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$551, DW_AT_name("CExDATA")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_CExDATA")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$552, DW_AT_name("CExALE")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_CExALE")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$553, DW_AT_name("CExCLE")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_CExCLE")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$554, DW_AT_name("CExNUM")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_CExNUM")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$68

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_NandAsyncBank")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x17)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("CSL_NandConfig")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x05)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$555, DW_AT_name("nandWidth")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_nandWidth")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$556, DW_AT_name("nandPageSize")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_nandPageSize")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$557, DW_AT_name("nandBankNo")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_nandBankNo")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$558, DW_AT_name("emifOpMode")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_emifOpMode")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$559, DW_AT_name("nandType")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_nandType")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_NandConfig")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x17)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("CSL_SdramCfg")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x0e)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("selfRefresh")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_selfRefresh")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("pdMode")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_pdMode")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("pdwr")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_pdwr")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("pasr")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_pasr")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("rowSize")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_rowSize")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("ibankPos")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_ibankPos")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("sdramDrive")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_sdramDrive")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("bit9to1Lock")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_bit9to1Lock")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("NM")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_NM")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("CasLatency")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_CasLatency")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("bit11to9Lock")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_bit11to9Lock")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("num_ibank")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_num_ibank")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("ebank")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_ebank")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("pageSize")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_pageSize")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdramCfg")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("CSL_SdramTimr")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x09)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("tRAS")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_tRAS")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("tRC")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_tRC")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("tRRD")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_tRRD")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("tRFC")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_tRFC")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("tRP")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_tRP")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("tRCD")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_tRCD")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("tWR")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_tWR")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("tXS")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_tXS")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("refRate")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_refRate")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$73

$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SdramTimr")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x17)
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
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$583	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$6)
$C$DW$T$90	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$583)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_VUint8")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$584	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$584)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$585	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$585, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x03)
$C$DW$586	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$586, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1a)
$C$DW$587	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$587, DW_AT_upper_bound(0x19)
	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x13)
$C$DW$588	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$588, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x06)
$C$DW$589	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$589, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x3e)
$C$DW$590	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$590, DW_AT_upper_bound(0x3d)
	.dwendtag $C$DW$T$26


$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0e)
$C$DW$591	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$591, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x05)
$C$DW$592	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$592, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$29

$C$DW$T$117	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$117, DW_AT_address_class(0x17)
$C$DW$593	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
$C$DW$594	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$593)
$C$DW$T$118	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$594)
$C$DW$T$119	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_address_class(0x10)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x17)
$C$DW$595	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$9)
$C$DW$T$109	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$595)
$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_VUint16")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
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
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$596	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$66)
$C$DW$T$67	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$596)
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

$C$DW$597	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$597, DW_AT_location[DW_OP_reg0]
$C$DW$598	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$598, DW_AT_location[DW_OP_reg1]
$C$DW$599	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$599, DW_AT_location[DW_OP_reg2]
$C$DW$600	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$600, DW_AT_location[DW_OP_reg3]
$C$DW$601	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$601, DW_AT_location[DW_OP_reg4]
$C$DW$602	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$602, DW_AT_location[DW_OP_reg5]
$C$DW$603	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$603, DW_AT_location[DW_OP_reg6]
$C$DW$604	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$604, DW_AT_location[DW_OP_reg7]
$C$DW$605	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$605, DW_AT_location[DW_OP_reg8]
$C$DW$606	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$606, DW_AT_location[DW_OP_reg9]
$C$DW$607	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$607, DW_AT_location[DW_OP_reg10]
$C$DW$608	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$608, DW_AT_location[DW_OP_reg11]
$C$DW$609	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$609, DW_AT_location[DW_OP_reg12]
$C$DW$610	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$610, DW_AT_location[DW_OP_reg13]
$C$DW$611	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$611, DW_AT_location[DW_OP_reg14]
$C$DW$612	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$612, DW_AT_location[DW_OP_reg15]
$C$DW$613	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$613, DW_AT_location[DW_OP_reg16]
$C$DW$614	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$614, DW_AT_location[DW_OP_reg17]
$C$DW$615	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$615, DW_AT_location[DW_OP_reg18]
$C$DW$616	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$616, DW_AT_location[DW_OP_reg19]
$C$DW$617	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$617, DW_AT_location[DW_OP_reg20]
$C$DW$618	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$618, DW_AT_location[DW_OP_reg21]
$C$DW$619	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$619, DW_AT_location[DW_OP_reg22]
$C$DW$620	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$620, DW_AT_location[DW_OP_reg23]
$C$DW$621	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg24]
$C$DW$622	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$622, DW_AT_location[DW_OP_reg25]
$C$DW$623	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$623, DW_AT_location[DW_OP_reg26]
$C$DW$624	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg27]
$C$DW$625	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg28]
$C$DW$626	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg29]
$C$DW$627	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg30]
$C$DW$628	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$628, DW_AT_location[DW_OP_reg31]
$C$DW$629	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$629, DW_AT_location[DW_OP_regx 0x20]
$C$DW$630	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$630, DW_AT_location[DW_OP_regx 0x21]
$C$DW$631	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$631, DW_AT_location[DW_OP_regx 0x22]
$C$DW$632	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$632, DW_AT_location[DW_OP_regx 0x23]
$C$DW$633	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$633, DW_AT_location[DW_OP_regx 0x24]
$C$DW$634	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$634, DW_AT_location[DW_OP_regx 0x25]
$C$DW$635	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$635, DW_AT_location[DW_OP_regx 0x26]
$C$DW$636	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$636, DW_AT_location[DW_OP_regx 0x27]
$C$DW$637	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$637, DW_AT_location[DW_OP_regx 0x28]
$C$DW$638	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$638, DW_AT_location[DW_OP_regx 0x29]
$C$DW$639	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$639, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$640	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$641	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$642	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$643	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$644	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$645	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_regx 0x30]
$C$DW$646	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_regx 0x31]
$C$DW$647	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_regx 0x32]
$C$DW$648	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_regx 0x33]
$C$DW$649	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_regx 0x34]
$C$DW$650	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_regx 0x35]
$C$DW$651	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_regx 0x36]
$C$DW$652	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_regx 0x37]
$C$DW$653	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$653, DW_AT_location[DW_OP_regx 0x38]
$C$DW$654	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$654, DW_AT_location[DW_OP_regx 0x39]
$C$DW$655	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$655, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$656	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$656, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$657	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$657, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$658	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$658, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$659	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$659, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$660	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$660, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$661	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$661, DW_AT_location[DW_OP_regx 0x40]
$C$DW$662	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$662, DW_AT_location[DW_OP_regx 0x41]
$C$DW$663	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$663, DW_AT_location[DW_OP_regx 0x42]
$C$DW$664	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$664, DW_AT_location[DW_OP_regx 0x43]
$C$DW$665	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$665, DW_AT_location[DW_OP_regx 0x44]
$C$DW$666	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$666, DW_AT_location[DW_OP_regx 0x45]
$C$DW$667	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$667, DW_AT_location[DW_OP_regx 0x46]
$C$DW$668	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$668, DW_AT_location[DW_OP_regx 0x47]
$C$DW$669	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$669, DW_AT_location[DW_OP_regx 0x48]
$C$DW$670	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_regx 0x49]
$C$DW$671	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$672	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$673	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$674	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$675	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$676	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$677	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_regx 0x50]
$C$DW$678	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_regx 0x51]
$C$DW$679	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_regx 0x52]
$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_regx 0x53]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_regx 0x54]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_regx 0x55]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_regx 0x56]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_regx 0x57]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x58]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x59]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

