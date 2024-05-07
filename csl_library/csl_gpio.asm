;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:56 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_gpio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17323vOW3Wo 
	.sect	".text"
	.global	_GPIO_open

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_open")
	.dwattr $C$DW$1, DW_AT_low_pc(_GPIO_open)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_GPIO_open")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x5f)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_gpio.c",line 99,column 1,is_stmt,address _GPIO_open

	.dwfde $C$DW$CIE, _GPIO_open
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("GpioObj")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_GpioObj")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg17]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_open                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("GpioObj")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_GpioObj")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 100,column 17,is_stmt
        MOV #0, AC0 ; |100| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_gpio.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |102| 

        CMPU AC1 != AC0, TC1 ; |102| 
        BCC $C$L1,TC1 ; |102| 
                                        ; branchcc occurs ; |102| 
	.dwpsn	file "src/csl_gpio.c",line 104,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |104| 
	.dwpsn	file "src/csl_gpio.c",line 105,column 9,is_stmt
        AMOV #0, XAR0 ; |105| 
        B $C$L2   ; |105| 
                                        ; branch occurs ; |105| 
$C$L1:    
	.dwpsn	file "src/csl_gpio.c",line 108,column 5,is_stmt
        MOV #32, *AR3(short(#1)) ; |108| 
	.dwpsn	file "src/csl_gpio.c",line 110,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #7168, *AR3 ; |110| 
	.dwpsn	file "src/csl_gpio.c",line 111,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_gpio.c",line 112,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |112| 
	.dwpsn	file "src/csl_gpio.c",line 114,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$L2:    
	.dwpsn	file "src/csl_gpio.c",line 115,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_GPIO_close

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_close")
	.dwattr $C$DW$8, DW_AT_low_pc(_GPIO_close)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_GPIO_close")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_gpio.c",line 153,column 1,is_stmt,address _GPIO_close

	.dwfde $C$DW$CIE, _GPIO_close
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPIO_close                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 155,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |155| 

        CMPU AC1 != AC0, TC1 ; |155| 
        BCC $C$L3,TC1 ; |155| 
                                        ; branchcc occurs ; |155| 
	.dwpsn	file "src/csl_gpio.c",line 157,column 9,is_stmt
        MOV #-5, T0
        B $C$L4   ; |157| 
                                        ; branch occurs ; |157| 
$C$L3:    
	.dwpsn	file "src/csl_gpio.c",line 159,column 5,is_stmt
        MOV #0, *AR3 ; |159| 
	.dwpsn	file "src/csl_gpio.c",line 160,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#1)) ; |160| 
	.dwpsn	file "src/csl_gpio.c",line 162,column 5,is_stmt
        MOV #0, T0
$C$L4:    
	.dwpsn	file "src/csl_gpio.c",line 163,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$8, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xa3)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_GPIO_config

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_config")
	.dwattr $C$DW$12, DW_AT_low_pc(_GPIO_config)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_GPIO_config")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 220,column 1,is_stmt,address _GPIO_config

	.dwfde $C$DW$CIE, _GPIO_config
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg17]
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_config                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 222,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |222| 

        CMPU AC1 != AC0, TC1 ; |222| 
        BCC $C$L5,TC1 ; |222| 
                                        ; branchcc occurs ; |222| 
	.dwpsn	file "src/csl_gpio.c",line 224,column 9,is_stmt
        MOV #-5, T0
        B $C$L7   ; |224| 
                                        ; branch occurs ; |224| 
$C$L5:    
	.dwpsn	file "src/csl_gpio.c",line 226,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |226| 
        BCC $C$L6,TC1 ; |226| 
                                        ; branchcc occurs ; |226| 
	.dwpsn	file "src/csl_gpio.c",line 228,column 9,is_stmt
        MOV #-6, T0
        B $C$L7   ; |228| 
                                        ; branch occurs ; |228| 
$C$L6:    
	.dwpsn	file "src/csl_gpio.c",line 231,column 5,is_stmt
        MOV *AR3, AR1 ; |231| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |231| 
        MOV AR1, port(*AR3(short(#6))) ; |231| 
	.dwpsn	file "src/csl_gpio.c",line 232,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |232| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |232| 
        MOV AR1, port(*AR3(short(#7))) ; |232| 
	.dwpsn	file "src/csl_gpio.c",line 234,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR1 ; |234| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |234| 
        AMOV #12, T0
        MOV AR1, port(*AR3(T0)) ; |234| 
	.dwpsn	file "src/csl_gpio.c",line 235,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |235| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |235| 
        AMOV #13, T0
        MOV AR1, port(*AR3(T0)) ; |235| 
	.dwpsn	file "src/csl_gpio.c",line 237,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |237| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |237| 
        AMOV #14, T0
        MOV AR1, port(*AR3(T0)) ; |237| 
	.dwpsn	file "src/csl_gpio.c",line 238,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |238| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |238| 
        AMOV #15, T0
        MOV AR1, port(*AR3(T0)) ; |238| 
	.dwpsn	file "src/csl_gpio.c",line 240,column 5,is_stmt
        MOV #0, T0
$C$L7:    
	.dwpsn	file "src/csl_gpio.c",line 241,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_GPIO_getConfig

$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_getConfig")
	.dwattr $C$DW$18, DW_AT_low_pc(_GPIO_getConfig)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_GPIO_getConfig")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$18, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 292,column 1,is_stmt,address _GPIO_getConfig

	.dwfde $C$DW$CIE, _GPIO_getConfig
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg17]
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_getConfig                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 294,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |294| 

        CMPU AC1 != AC0, TC1 ; |294| 
        BCC $C$L8,TC1 ; |294| 
                                        ; branchcc occurs ; |294| 
	.dwpsn	file "src/csl_gpio.c",line 296,column 9,is_stmt
        MOV #-5, T0
        B $C$L10  ; |296| 
                                        ; branch occurs ; |296| 
$C$L8:    
	.dwpsn	file "src/csl_gpio.c",line 299,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |299| 
        BCC $C$L9,TC1 ; |299| 
                                        ; branchcc occurs ; |299| 
	.dwpsn	file "src/csl_gpio.c",line 301,column 9,is_stmt
        MOV #-6, T0
        B $C$L10  ; |301| 
                                        ; branch occurs ; |301| 
$C$L9:    
	.dwpsn	file "src/csl_gpio.c",line 304,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |304| 
        MOV port(*AR3(short(#6))), AR1 ; |304| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3 ; |304| 
	.dwpsn	file "src/csl_gpio.c",line 305,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |305| 
        MOV port(*AR3(short(#7))), AR1 ; |305| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#1)) ; |305| 
	.dwpsn	file "src/csl_gpio.c",line 308,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |308| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |308| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#2)) ; |308| 
	.dwpsn	file "src/csl_gpio.c",line 309,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |309| 
        AMOV #13, T0
        MOV port(*AR3(T0)), AR1 ; |309| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#3)) ; |309| 
	.dwpsn	file "src/csl_gpio.c",line 312,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |312| 
        AMOV #14, T0
        MOV port(*AR3(T0)), AR1 ; |312| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#4)) ; |312| 
	.dwpsn	file "src/csl_gpio.c",line 313,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |313| 
        AMOV #15, T0
        MOV port(*AR3(T0)), AR1 ; |313| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#5)) ; |313| 
	.dwpsn	file "src/csl_gpio.c",line 315,column 5,is_stmt
        MOV #0, T0
$C$L10:    
	.dwpsn	file "src/csl_gpio.c",line 316,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$18, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.global	_GPIO_read

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_read")
	.dwattr $C$DW$24, DW_AT_low_pc(_GPIO_read)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_GPIO_read")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$24, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x173)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_gpio.c",line 376,column 1,is_stmt,address _GPIO_read

	.dwfde $C$DW$CIE, _GPIO_read
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_read                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |376| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 379,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |379| 

        CMPU AC1 != AC0, TC1 ; |379| 
        BCC $C$L11,TC1 ; |379| 
                                        ; branchcc occurs ; |379| 
	.dwpsn	file "src/csl_gpio.c",line 381,column 9,is_stmt
        MOV #-5, T0
        B $C$L16  ; |381| 
                                        ; branch occurs ; |381| 
$C$L11:    
	.dwpsn	file "src/csl_gpio.c",line 384,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |384| 
        BCC $C$L12,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
        MOV *SP(#2), AR1 ; |384| 
        MOV #31, AR2 ; |384| 
        CMP AR2 < AR1, TC1 ; |384| 
        BCC $C$L12,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
        BCC $C$L13,AR1 >= #0 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L12:    
	.dwpsn	file "src/csl_gpio.c",line 386,column 9,is_stmt
        MOV #-6, T0
        B $C$L16  ; |386| 
                                        ; branch occurs ; |386| 
$C$L13:    
	.dwpsn	file "src/csl_gpio.c",line 389,column 5,is_stmt
        MOV #16, AR2 ; |389| 
        CMP AR1 >= AR2, TC1 ; |389| 
        BCC $C$L14,TC1 ; |389| 
                                        ; branchcc occurs ; |389| 
	.dwpsn	file "src/csl_gpio.c",line 392,column 9,is_stmt
        MOV *SP(#2), AR1 ; |392| 
        MOV AR1, *SP(#6) ; |392| 
	.dwpsn	file "src/csl_gpio.c",line 393,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |393| 
        AMOV #8, T0
        MOV uns(port(*AR3(T0))), AC0 ; |393| 
        MOV dbl(*SP(#4)), XAR3
        NEG AR1, T1 ; |393| 
        SFTS AC0, T1, AC0 ; |393| 
        AND #0x0001, AC0, AC0 ; |393| 
        MOV AC0, *AR3 ; |393| 
	.dwpsn	file "src/csl_gpio.c",line 394,column 5,is_stmt
        B $C$L15  ; |394| 
                                        ; branch occurs ; |394| 
$C$L14:    
	.dwpsn	file "src/csl_gpio.c",line 398,column 9,is_stmt
        SUB #16, AR1, AR1 ; |398| 
        MOV AR1, *SP(#6) ; |398| 
	.dwpsn	file "src/csl_gpio.c",line 399,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |399| 
        AMOV #9, T0
        MOV uns(port(*AR3(T0))), AC0 ; |399| 
        MOV dbl(*SP(#4)), XAR3
        NEG AR1, T1 ; |399| 
        SFTS AC0, T1, AC0 ; |399| 
        AND #0x0001, AC0, AC0 ; |399| 
        MOV AC0, *AR3 ; |399| 
$C$L15:    
	.dwpsn	file "src/csl_gpio.c",line 401,column 5,is_stmt
        MOV #0, T0
$C$L16:    
	.dwpsn	file "src/csl_gpio.c",line 402,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$24, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x192)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.global	_GPIO_write

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_write")
	.dwattr $C$DW$33, DW_AT_low_pc(_GPIO_write)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_GPIO_write")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x1c8)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 461,column 1,is_stmt,address _GPIO_write

	.dwfde $C$DW$CIE, _GPIO_write
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg17]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: GPIO_write                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#3) ; |461| 
        MOV T0, *SP(#2) ; |461| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 464,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |464| 

        CMPU AC1 != AC0, TC1 ; |464| 
        BCC $C$L17,TC1 ; |464| 
                                        ; branchcc occurs ; |464| 
	.dwpsn	file "src/csl_gpio.c",line 466,column 9,is_stmt
        MOV #-5, T0
        B $C$L23  ; |466| 
                                        ; branch occurs ; |466| 
$C$L17:    
	.dwpsn	file "src/csl_gpio.c",line 469,column 5,is_stmt
        MOV *SP(#2), AR1 ; |469| 
        MOV #31, AR2 ; |469| 
        CMP AR2 < AR1, TC1 ; |469| 
        BCC $C$L18,TC1 ; |469| 
                                        ; branchcc occurs ; |469| 
        BCC $C$L19,AR1 >= #0 ; |469| 
                                        ; branchcc occurs ; |469| 
$C$L18:    
	.dwpsn	file "src/csl_gpio.c",line 471,column 9,is_stmt
        MOV #-6, T0
        B $C$L23  ; |471| 
                                        ; branch occurs ; |471| 
$C$L19:    
	.dwpsn	file "src/csl_gpio.c",line 474,column 5,is_stmt
        CMP *SP(#3) == #1, TC1 ; |474| 
        BCC $C$L20,TC1 ; |474| 
                                        ; branchcc occurs ; |474| 
        MOV *SP(#3), AR1 ; |474| 
        BCC $C$L20,AR1 == #0 ; |474| 
                                        ; branchcc occurs ; |474| 
	.dwpsn	file "src/csl_gpio.c",line 476,column 9,is_stmt
        MOV #-6, T0
        B $C$L23  ; |476| 
                                        ; branch occurs ; |476| 
$C$L20:    
	.dwpsn	file "src/csl_gpio.c",line 479,column 5,is_stmt
        MOV #16, AR2 ; |479| 
        MOV *SP(#2), AR1 ; |479| 
        CMP AR1 >= AR2, TC1 ; |479| 
        BCC $C$L21,TC1 ; |479| 
                                        ; branchcc occurs ; |479| 
	.dwpsn	file "src/csl_gpio.c",line 482,column 9,is_stmt
        MOV *SP(#2), AR1 ; |482| 
        MOV AR1, *SP(#4) ; |482| 
	.dwpsn	file "src/csl_gpio.c",line 486,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |486| 

        MOV *SP(#4), T1 ; |486| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |486| 

        NOT AC0, AR1 ; |486| 
||      AMOV #10, T0

        AND port(*AR3(T0)), AR1, AR1 ; |486| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |486| 
        MOV *SP(#3), AR2 ; |486| 
        AND #0x0001, AR2, AC0 ; |486| 
        SFTL AC0, T1, AC0 ; |486| 
        OR AR1, AC0 ; |486| 
        MOV AC0, port(*AR3(T0)) ; |486| 
	.dwpsn	file "src/csl_gpio.c",line 488,column 5,is_stmt
        B $C$L22  ; |488| 
                                        ; branch occurs ; |488| 
$C$L21:    
	.dwpsn	file "src/csl_gpio.c",line 492,column 9,is_stmt
        SUB #16, AR1, AR1 ; |492| 
        MOV AR1, *SP(#4) ; |492| 
	.dwpsn	file "src/csl_gpio.c",line 496,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |496| 

        MOV *SP(#4), T1 ; |496| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |496| 

        NOT AC0, AR1 ; |496| 
||      AMOV #11, T0

        AND port(*AR3(T0)), AR1, AR1 ; |496| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |496| 
        MOV *SP(#3), AR2 ; |496| 
        AND #0x0001, AR2, AC0 ; |496| 
        SFTL AC0, T1, AC0 ; |496| 
        OR AR1, AC0 ; |496| 
        MOV AC0, port(*AR3(T0)) ; |496| 
$C$L22:    
	.dwpsn	file "src/csl_gpio.c",line 499,column 5,is_stmt
        MOV #0, T0
$C$L23:    
	.dwpsn	file "src/csl_gpio.c",line 500,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$33, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x1f4)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_GPIO_configBit

$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_configBit")
	.dwattr $C$DW$42, DW_AT_low_pc(_GPIO_configBit)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_GPIO_configBit")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$42, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x225)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 553,column 1,is_stmt,address _GPIO_configBit

	.dwfde $C$DW$CIE, _GPIO_configBit
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg17]
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("config")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_configBit                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_configBit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 556,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |556| 

        CMPU AC1 != AC0, TC1 ; |556| 
        BCC $C$L24,TC1 ; |556| 
                                        ; branchcc occurs ; |556| 
	.dwpsn	file "src/csl_gpio.c",line 558,column 9,is_stmt
        MOV #-5, T0
        B $C$L33  ; |558| 
                                        ; branch occurs ; |558| 
$C$L24:    
	.dwpsn	file "src/csl_gpio.c",line 561,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #31, AR2 ; |561| 
        MOV *AR3, AR1 ; |561| 
        CMP AR2 < AR1, TC1 ; |561| 
        BCC $C$L25,TC1 ; |561| 
                                        ; branchcc occurs ; |561| 
        MOV *AR3, AR1 ; |561| 
        BCC $C$L26,AR1 >= #0 ; |561| 
                                        ; branchcc occurs ; |561| 
$C$L25:    
	.dwpsn	file "src/csl_gpio.c",line 563,column 9,is_stmt
        MOV #-6, T0
        B $C$L33  ; |563| 
                                        ; branch occurs ; |563| 
$C$L26:    
	.dwpsn	file "src/csl_gpio.c",line 566,column 5,is_stmt
        MOV *AR3(short(#1)), AR1 ; |566| 
        BCC $C$L27,AR1 == #0 ; |566| 
                                        ; branchcc occurs ; |566| 
        CMP *AR3(short(#1)) == #1, TC1 ; |566| 
        BCC $C$L27,TC1 ; |566| 
                                        ; branchcc occurs ; |566| 
	.dwpsn	file "src/csl_gpio.c",line 569,column 9,is_stmt
        MOV #-6, T0
        B $C$L33  ; |569| 
                                        ; branch occurs ; |569| 
$C$L27:    
	.dwpsn	file "src/csl_gpio.c",line 571,column 5,is_stmt

        MOV #0, AR2
||      MOV *AR3(short(#2)), AR1 ; |571| 

        CMP AR2 == AR1, TC1 ; |571| 
        BCC $C$L28,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 

        MOV #1, AR2
||      MOV *AR3(short(#2)), AR1 ; |571| 

        CMP AR2 == AR1, TC1 ; |571| 
        BCC $C$L28,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 

        MOV #2, AR2
||      MOV *AR3(short(#2)), AR1 ; |571| 

        CMP AR2 == AR1, TC1 ; |571| 
        BCC $C$L28,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
	.dwpsn	file "src/csl_gpio.c",line 575,column 9,is_stmt
        MOV #-6, T0
        B $C$L33  ; |575| 
                                        ; branch occurs ; |575| 
$C$L28:    
	.dwpsn	file "src/csl_gpio.c",line 579,column 5,is_stmt
        MOV #16, AR2 ; |579| 
        MOV *AR3, AR1 ; |579| 
        CMP AR1 >= AR2, TC1 ; |579| 
        BCC $C$L30,TC1 ; |579| 
                                        ; branchcc occurs ; |579| 
	.dwpsn	file "src/csl_gpio.c",line 582,column 9,is_stmt
        MOV *AR3, AR1 ; |582| 
        MOV AR1, *SP(#4) ; |582| 
	.dwpsn	file "src/csl_gpio.c",line 583,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |583| 

        MOV *SP(#4), T1 ; |583| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |583| 
        NOT AC0, AR1 ; |583| 
        AND port(*AR3(short(#6))), AR1, AR1 ; |583| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR2 ; |583| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |583| 
        AND #0x0001, AR2, AC0 ; |583| 
        SFTS AC0, T1, AC0 ; |583| 
        OR AR1, AC0 ; |583| 
        MOV AC0, port(*AR3(short(#6))) ; |583| 
	.dwpsn	file "src/csl_gpio.c",line 585,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#2)), AR1 ; |585| 
||      MOV #1, AR2

        CMP AR2 == AR1, TC1 ; |585| 
        BCC $C$L29,TC1 ; |585| 
                                        ; branchcc occurs ; |585| 

        MOV #0, AR2
||      MOV *AR3(short(#2)), AR1 ; |585| 

        CMP AR2 != AR1, TC1 ; |585| 
        BCC $C$L32,TC1 ; |585| 
                                        ; branchcc occurs ; |585| 
$C$L29:    
	.dwpsn	file "src/csl_gpio.c",line 588,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |588| 

        MOV #1, AC0
||      MOV *SP(#4), T1 ; |588| 

        SFTS AC0, T1, AC0 ; |588| 

        NOT AC0, AR1 ; |588| 
||      AMOV #12, T0

        AND port(*AR3(T0)), AR1, AR1 ; |588| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR2 ; |588| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |588| 
        AND #0x0001, AR2, AC0 ; |588| 
        SFTS AC0, T1, AC0 ; |588| 
        OR AR1, AC0 ; |588| 
        MOV AC0, port(*AR3(T0)) ; |588| 
	.dwpsn	file "src/csl_gpio.c",line 591,column 5,is_stmt
        B $C$L32  ; |591| 
                                        ; branch occurs ; |591| 
$C$L30:    
	.dwpsn	file "src/csl_gpio.c",line 596,column 9,is_stmt
        MOV *AR3, AR1 ; |596| 
        SUB #16, AR1, AR1 ; |596| 
        MOV AR1, *SP(#4) ; |596| 
	.dwpsn	file "src/csl_gpio.c",line 597,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |597| 

        MOV *SP(#4), T1 ; |597| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |597| 
        NOT AC0, AR1 ; |597| 
        AND port(*AR3(short(#7))), AR1, AR1 ; |597| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR2 ; |597| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |597| 
        AND #0x0001, AR2, AC0 ; |597| 
        SFTS AC0, T1, AC0 ; |597| 
        OR AR1, AC0 ; |597| 
        MOV AC0, port(*AR3(short(#7))) ; |597| 
	.dwpsn	file "src/csl_gpio.c",line 599,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#2)), AR1 ; |599| 
||      MOV #1, AR2

        CMP AR2 == AR1, TC1 ; |599| 
        BCC $C$L31,TC1 ; |599| 
                                        ; branchcc occurs ; |599| 

        MOV #0, AR2
||      MOV *AR3(short(#2)), AR1 ; |599| 

        CMP AR2 != AR1, TC1 ; |599| 
        BCC $C$L32,TC1 ; |599| 
                                        ; branchcc occurs ; |599| 
$C$L31:    
	.dwpsn	file "src/csl_gpio.c",line 602,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |602| 

        MOV #1, AC0
||      MOV *SP(#4), T1 ; |602| 

        SFTS AC0, T1, AC0 ; |602| 

        NOT AC0, AR1 ; |602| 
||      AMOV #13, T0

        AND port(*AR3(T0)), AR1, AR1 ; |602| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)), AR2 ; |602| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |602| 
        AND #0x0001, AR2, AC0 ; |602| 
        SFTS AC0, T1, AC0 ; |602| 
        OR AR1, AC0 ; |602| 
        MOV AC0, port(*AR3(T0)) ; |602| 
$C$L32:    
	.dwpsn	file "src/csl_gpio.c",line 607,column 5,is_stmt
        MOV #0, T0
$C$L33:    
	.dwpsn	file "src/csl_gpio.c",line 608,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$42, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x260)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.global	_GPIO_disableInt

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_disableInt")
	.dwattr $C$DW$49, DW_AT_low_pc(_GPIO_disableInt)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_GPIO_disableInt")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x291)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 661,column 1,is_stmt,address _GPIO_disableInt

	.dwfde $C$DW$CIE, _GPIO_disableInt
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: GPIO_disableInt                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_disableInt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |661| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 664,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |664| 

        CMPU AC1 != AC0, TC1 ; |664| 
        BCC $C$L34,TC1 ; |664| 
                                        ; branchcc occurs ; |664| 
	.dwpsn	file "src/csl_gpio.c",line 666,column 9,is_stmt
        MOV #-5, T0
        B $C$L39  ; |666| 
                                        ; branch occurs ; |666| 
$C$L34:    
	.dwpsn	file "src/csl_gpio.c",line 669,column 5,is_stmt
        MOV *SP(#2), AR1 ; |669| 
        MOV #31, AR2 ; |669| 
        CMP AR2 < AR1, TC1 ; |669| 
        BCC $C$L35,TC1 ; |669| 
                                        ; branchcc occurs ; |669| 
        BCC $C$L36,AR1 >= #0 ; |669| 
                                        ; branchcc occurs ; |669| 
$C$L35:    
	.dwpsn	file "src/csl_gpio.c",line 671,column 9,is_stmt
        MOV #-6, T0
        B $C$L39  ; |671| 
                                        ; branch occurs ; |671| 
$C$L36:    
	.dwpsn	file "src/csl_gpio.c",line 674,column 5,is_stmt
        MOV #16, AR2 ; |674| 
        CMP AR1 >= AR2, TC1 ; |674| 
        BCC $C$L37,TC1 ; |674| 
                                        ; branchcc occurs ; |674| 
	.dwpsn	file "src/csl_gpio.c",line 677,column 9,is_stmt
        MOV *SP(#2), AR1 ; |677| 
        MOV AR1, *SP(#3) ; |677| 
	.dwpsn	file "src/csl_gpio.c",line 678,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |678| 

        MOV *SP(#3), T1 ; |678| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |678| 

        NOT AC0, AR1 ; |678| 
||      AMOV #14, T0

        AND port(*AR3(T0)), AR1, AC0 ; |678| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |678| 
        MOV AC0, port(*AR3(T0)) ; |678| 
	.dwpsn	file "src/csl_gpio.c",line 679,column 5,is_stmt
        B $C$L38  ; |679| 
                                        ; branch occurs ; |679| 
$C$L37:    
	.dwpsn	file "src/csl_gpio.c",line 683,column 9,is_stmt
        SUB #16, AR1, AR1 ; |683| 
        MOV AR1, *SP(#3) ; |683| 
	.dwpsn	file "src/csl_gpio.c",line 684,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |684| 

        MOV *SP(#3), T1 ; |684| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |684| 

        NOT AC0, AR1 ; |684| 
||      AMOV #15, T0

        AND port(*AR3(T0)), AR1, AC0 ; |684| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |684| 
        MOV AC0, port(*AR3(T0)) ; |684| 
$C$L38:    
	.dwpsn	file "src/csl_gpio.c",line 687,column 5,is_stmt
        MOV #0, T0
$C$L39:    
	.dwpsn	file "src/csl_gpio.c",line 688,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$49, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x2b0)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_GPIO_enableInt

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_enableInt")
	.dwattr $C$DW$56, DW_AT_low_pc(_GPIO_enableInt)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_GPIO_enableInt")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$56, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x2e2)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 742,column 1,is_stmt,address _GPIO_enableInt

	.dwfde $C$DW$CIE, _GPIO_enableInt
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg17]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: GPIO_enableInt                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_enableInt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |742| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 745,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |745| 

        CMPU AC1 != AC0, TC1 ; |745| 
        BCC $C$L40,TC1 ; |745| 
                                        ; branchcc occurs ; |745| 
	.dwpsn	file "src/csl_gpio.c",line 747,column 9,is_stmt
        MOV #-5, T0
        B $C$L45  ; |747| 
                                        ; branch occurs ; |747| 
$C$L40:    
	.dwpsn	file "src/csl_gpio.c",line 751,column 5,is_stmt
        MOV *SP(#2), AR1 ; |751| 
        MOV #31, AR2 ; |751| 
        CMP AR2 < AR1, TC1 ; |751| 
        BCC $C$L41,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
        BCC $C$L42,AR1 >= #0 ; |751| 
                                        ; branchcc occurs ; |751| 
$C$L41:    
	.dwpsn	file "src/csl_gpio.c",line 753,column 9,is_stmt
        MOV #-6, T0
        B $C$L45  ; |753| 
                                        ; branch occurs ; |753| 
$C$L42:    
	.dwpsn	file "src/csl_gpio.c",line 755,column 5,is_stmt
        MOV #16, AR2 ; |755| 
        CMP AR1 >= AR2, TC1 ; |755| 
        BCC $C$L43,TC1 ; |755| 
                                        ; branchcc occurs ; |755| 
	.dwpsn	file "src/csl_gpio.c",line 758,column 9,is_stmt
        MOV *SP(#2), AR1 ; |758| 
        MOV AR1, *SP(#3) ; |758| 
	.dwpsn	file "src/csl_gpio.c",line 759,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |759| 

        MOV *SP(#3), T1 ; |759| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |759| 

        NOT AC0, AR1 ; |759| 
||      AMOV #14, T0

        AND port(*AR3(T0)), AR1, AR1 ; |759| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |759| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |759| 
        OR AR1, AC0 ; |759| 
        MOV AC0, port(*AR3(T0)) ; |759| 
	.dwpsn	file "src/csl_gpio.c",line 760,column 5,is_stmt
        B $C$L44  ; |760| 
                                        ; branch occurs ; |760| 
$C$L43:    
	.dwpsn	file "src/csl_gpio.c",line 764,column 9,is_stmt
        SUB #16, AR1, AR1 ; |764| 
        MOV AR1, *SP(#3) ; |764| 
	.dwpsn	file "src/csl_gpio.c",line 765,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |765| 

        MOV *SP(#3), T1 ; |765| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |765| 

        NOT AC0, AR1 ; |765| 
||      AMOV #15, T0

        AND port(*AR3(T0)), AR1, AR1 ; |765| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |765| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |765| 
        OR AR1, AC0 ; |765| 
        MOV AC0, port(*AR3(T0)) ; |765| 
$C$L44:    
	.dwpsn	file "src/csl_gpio.c",line 768,column 5,is_stmt
        MOV #0, T0
$C$L45:    
	.dwpsn	file "src/csl_gpio.c",line 769,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$56, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x301)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.global	_GPIO_clearInt

$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_clearInt")
	.dwattr $C$DW$63, DW_AT_low_pc(_GPIO_clearInt)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_GPIO_clearInt")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$63, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x336)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpio.c",line 826,column 1,is_stmt,address _GPIO_clearInt

	.dwfde $C$DW$CIE, _GPIO_clearInt
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg17]
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: GPIO_clearInt                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,  *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_clearInt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |826| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 829,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |829| 

        CMPU AC1 != AC0, TC1 ; |829| 
        BCC $C$L46,TC1 ; |829| 
                                        ; branchcc occurs ; |829| 
	.dwpsn	file "src/csl_gpio.c",line 831,column 9,is_stmt
        MOV #-5, T0
        B $C$L51  ; |831| 
                                        ; branch occurs ; |831| 
$C$L46:    
	.dwpsn	file "src/csl_gpio.c",line 834,column 5,is_stmt
        MOV *SP(#2), AR1 ; |834| 
        MOV #31, AR2 ; |834| 
        CMP AR2 < AR1, TC1 ; |834| 
        BCC $C$L47,TC1 ; |834| 
                                        ; branchcc occurs ; |834| 
        BCC $C$L48,AR1 >= #0 ; |834| 
                                        ; branchcc occurs ; |834| 
$C$L47:    
	.dwpsn	file "src/csl_gpio.c",line 836,column 9,is_stmt
        MOV #-6, T0
        B $C$L51  ; |836| 
                                        ; branch occurs ; |836| 
$C$L48:    
	.dwpsn	file "src/csl_gpio.c",line 838,column 5,is_stmt
        MOV #16, AR2 ; |838| 
        CMP AR1 >= AR2, TC1 ; |838| 
        BCC $C$L49,TC1 ; |838| 
                                        ; branchcc occurs ; |838| 
	.dwpsn	file "src/csl_gpio.c",line 841,column 9,is_stmt
        MOV *SP(#2), AR1 ; |841| 
        MOV AR1, *SP(#3) ; |841| 
	.dwpsn	file "src/csl_gpio.c",line 842,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |842| 
        MOV *AR3, AR3 ; |842| 

        MOV *SP(#3), T1 ; |842| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |842| 
        NOT AC0, AR1 ; |842| 
        AND port(*AR3(T0)), AR1, AR1 ; |842| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |842| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |842| 
        OR AR1, AC0 ; |842| 
        MOV AC0, port(*AR3(T0)) ; |842| 
	.dwpsn	file "src/csl_gpio.c",line 843,column 5,is_stmt
        B $C$L50  ; |843| 
                                        ; branch occurs ; |843| 
$C$L49:    
	.dwpsn	file "src/csl_gpio.c",line 847,column 9,is_stmt
        SUB #16, AR1, AR1 ; |847| 
        MOV AR1, *SP(#3) ; |847| 
	.dwpsn	file "src/csl_gpio.c",line 848,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, T0 ; |848| 
        MOV *AR3, AR3 ; |848| 

        MOV *SP(#3), T1 ; |848| 
||      MOV #1, AC0

        SFTS AC0, T1, AC0 ; |848| 
        NOT AC0, AR1 ; |848| 
        AND port(*AR3(T0)), AR1, AR1 ; |848| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |848| 
        MOV #1, AC0
        SFTS AC0, T1, AC0 ; |848| 
        OR AR1, AC0 ; |848| 
        MOV AC0, port(*AR3(T0)) ; |848| 
$C$L50:    
	.dwpsn	file "src/csl_gpio.c",line 851,column 5,is_stmt
        MOV #0, T0
$C$L51:    
	.dwpsn	file "src/csl_gpio.c",line 853,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$63, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x355)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text"
	.global	_GPIO_statusBit

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_statusBit")
	.dwattr $C$DW$70, DW_AT_low_pc(_GPIO_statusBit)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_GPIO_statusBit")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$70, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x38a)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_gpio.c",line 911,column 1,is_stmt,address _GPIO_statusBit

	.dwfde $C$DW$CIE, _GPIO_statusBit
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg17]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinNum")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPIO_statusBit                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_statusBit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("pinNum")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("flagBit")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_flagBit")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("pin")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_pin")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV XAR1, dbl(*SP(#4))
        MOV T0, *SP(#2) ; |911| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 915,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |915| 

        CMPU AC1 != AC0, TC1 ; |915| 
        BCC $C$L52,TC1 ; |915| 
                                        ; branchcc occurs ; |915| 
	.dwpsn	file "src/csl_gpio.c",line 917,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-5, *AR3 ; |917| 
	.dwpsn	file "src/csl_gpio.c",line 918,column 9,is_stmt
        MOV #-5, T0
        B $C$L57  ; |918| 
                                        ; branch occurs ; |918| 
$C$L52:    
	.dwpsn	file "src/csl_gpio.c",line 922,column 5,is_stmt
        MOV *SP(#2), AR1 ; |922| 
        MOV #31, AR2 ; |922| 
        CMP AR2 < AR1, TC1 ; |922| 
        BCC $C$L53,TC1 ; |922| 
                                        ; branchcc occurs ; |922| 
        BCC $C$L54,AR1 >= #0 ; |922| 
                                        ; branchcc occurs ; |922| 
$C$L53:    
	.dwpsn	file "src/csl_gpio.c",line 924,column 9,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |924| 
	.dwpsn	file "src/csl_gpio.c",line 925,column 9,is_stmt
        MOV #-6, T0
        B $C$L57  ; |925| 
                                        ; branch occurs ; |925| 
$C$L54:    
	.dwpsn	file "src/csl_gpio.c",line 928,column 5,is_stmt
        MOV #16, AR2 ; |928| 
        CMP AR1 >= AR2, TC1 ; |928| 
        BCC $C$L55,TC1 ; |928| 
                                        ; branchcc occurs ; |928| 
	.dwpsn	file "src/csl_gpio.c",line 931,column 9,is_stmt
        MOV *SP(#2), AR1 ; |931| 
        MOV AR1, *SP(#7) ; |931| 
	.dwpsn	file "src/csl_gpio.c",line 932,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |932| 
        MOV *AR3, AR3 ; |932| 
        NEG AR1, T1 ; |932| 
        MOV uns(port(*AR3(T0))), AC0 ; |932| 
        SFTS AC0, T1, AC0 ; |932| 
        AND #0x0001, AC0, AC0 ; |932| 
        MOV AC0, *SP(#6) ; |932| 
	.dwpsn	file "src/csl_gpio.c",line 933,column 5,is_stmt
        B $C$L56  ; |933| 
                                        ; branch occurs ; |933| 
$C$L55:    
	.dwpsn	file "src/csl_gpio.c",line 937,column 9,is_stmt
        SUB #16, AR1, AR1 ; |937| 
        MOV AR1, *SP(#7) ; |937| 
	.dwpsn	file "src/csl_gpio.c",line 938,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, T0 ; |938| 
        MOV *AR3, AR3 ; |938| 
        NEG AR1, T1 ; |938| 
        MOV uns(port(*AR3(T0))), AC0 ; |938| 
        SFTS AC0, T1, AC0 ; |938| 
        AND #0x0001, AC0, AC0 ; |938| 
        MOV AC0, *SP(#6) ; |938| 
$C$L56:    
	.dwpsn	file "src/csl_gpio.c",line 941,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |941| 
	.dwpsn	file "src/csl_gpio.c",line 942,column 5,is_stmt
        MOV *SP(#6), T0 ; |942| 
$C$L57:    
	.dwpsn	file "src/csl_gpio.c",line 943,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$70, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x3af)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.global	_GPIO_reset

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_reset")
	.dwattr $C$DW$80, DW_AT_low_pc(_GPIO_reset)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_GPIO_reset")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$80, DW_AT_TI_begin_file("src/csl_gpio.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x3df)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_gpio.c",line 994,column 1,is_stmt,address _GPIO_reset

	.dwfde $C$DW$CIE, _GPIO_reset
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpio")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPIO_reset                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR3,XAR3,SP,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPIO_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpio.c",line 996,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |996| 

        CMPU AC1 != AC0, TC1 ; |996| 
        BCC $C$L58,TC1 ; |996| 
                                        ; branchcc occurs ; |996| 
	.dwpsn	file "src/csl_gpio.c",line 998,column 9,is_stmt
        MOV #-5, T0
        B $C$L59  ; |998| 
                                        ; branch occurs ; |998| 
$C$L58:    
	.dwpsn	file "src/csl_gpio.c",line 1001,column 2,is_stmt
        MOV *AR3, AR3 ; |1001| 
        AMOV #14, T0
        MOV #0, port(*AR3(T0)) ; |1001| 
	.dwpsn	file "src/csl_gpio.c",line 1002,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1002| 
        AMOV #15, T0
        MOV #0, port(*AR3(T0)) ; |1002| 
	.dwpsn	file "src/csl_gpio.c",line 1004,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #16, T0 ; |1004| 
        MOV *AR3, AR3 ; |1004| 
        MOV #65535, port(*AR3(T0)) ; |1004| 
	.dwpsn	file "src/csl_gpio.c",line 1005,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #17, T0 ; |1005| 
        MOV *AR3, AR3 ; |1005| 
        MOV #65535, port(*AR3(T0)) ; |1005| 
	.dwpsn	file "src/csl_gpio.c",line 1007,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1007| 
        AMOV #12, T0
        MOV #0, port(*AR3(T0)) ; |1007| 
	.dwpsn	file "src/csl_gpio.c",line 1008,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1008| 
        AMOV #13, T0
        MOV #0, port(*AR3(T0)) ; |1008| 
	.dwpsn	file "src/csl_gpio.c",line 1010,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1010| 
        MOV #0, port(*AR3(short(#6))) ; |1010| 
	.dwpsn	file "src/csl_gpio.c",line 1011,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1011| 
        MOV #0, port(*AR3(short(#7))) ; |1011| 
	.dwpsn	file "src/csl_gpio.c",line 1017,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1017| 
        AMOV #10, T0
        MOV #0, port(*AR3(T0)) ; |1017| 
	.dwpsn	file "src/csl_gpio.c",line 1018,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1018| 
        AMOV #11, T0
        MOV #0, port(*AR3(T0)) ; |1018| 
	.dwpsn	file "src/csl_gpio.c",line 1021,column 5,is_stmt
        MOV #0, T0
$C$L59:    
	.dwpsn	file "src/csl_gpio.c",line 1022,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$80, DW_AT_TI_end_file("src/csl_gpio.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x3fe)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$30	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$84	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN0"), DW_AT_const_value(0x00)
$C$DW$85	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN1"), DW_AT_const_value(0x01)
$C$DW$86	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN2"), DW_AT_const_value(0x02)
$C$DW$87	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN3"), DW_AT_const_value(0x03)
$C$DW$88	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN4"), DW_AT_const_value(0x04)
$C$DW$89	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN5"), DW_AT_const_value(0x05)
$C$DW$90	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN6"), DW_AT_const_value(0x06)
$C$DW$91	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN7"), DW_AT_const_value(0x07)
$C$DW$92	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN8"), DW_AT_const_value(0x08)
$C$DW$93	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN9"), DW_AT_const_value(0x09)
$C$DW$94	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN10"), DW_AT_const_value(0x0a)
$C$DW$95	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN11"), DW_AT_const_value(0x0b)
$C$DW$96	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN12"), DW_AT_const_value(0x0c)
$C$DW$97	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN13"), DW_AT_const_value(0x0d)
$C$DW$98	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN14"), DW_AT_const_value(0x0e)
$C$DW$99	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN15"), DW_AT_const_value(0x0f)
$C$DW$100	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN16"), DW_AT_const_value(0x10)
$C$DW$101	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN17"), DW_AT_const_value(0x11)
$C$DW$102	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN18"), DW_AT_const_value(0x12)
$C$DW$103	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN19"), DW_AT_const_value(0x13)
$C$DW$104	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN20"), DW_AT_const_value(0x14)
$C$DW$105	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN21"), DW_AT_const_value(0x15)
$C$DW$106	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN22"), DW_AT_const_value(0x16)
$C$DW$107	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN23"), DW_AT_const_value(0x17)
$C$DW$108	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN24"), DW_AT_const_value(0x18)
$C$DW$109	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN25"), DW_AT_const_value(0x19)
$C$DW$110	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN26"), DW_AT_const_value(0x1a)
$C$DW$111	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN27"), DW_AT_const_value(0x1b)
$C$DW$112	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN28"), DW_AT_const_value(0x1c)
$C$DW$113	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN29"), DW_AT_const_value(0x1d)
$C$DW$114	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN30"), DW_AT_const_value(0x1e)
$C$DW$115	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN31"), DW_AT_const_value(0x1f)
	.dwendtag $C$DW$T$30

$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinNum")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$116	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_INPUT"), DW_AT_const_value(0x00)
$C$DW$117	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_OUTPUT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioDirection")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$118	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_RISING_EDGE"), DW_AT_const_value(0x00)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_FALLING_EDGE"), DW_AT_const_value(0x01)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_CLEAR_EDGE"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioTriggerType")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x12)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_name("RSVD0")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("IODIR1")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_IODIR1")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("IODIR2")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_IODIR2")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_name("IOINDATA1")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_IOINDATA1")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("IOINDATA2")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_IOINDATA2")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("IOOUTDATA1")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_IOOUTDATA1")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_name("IOOUTDATA2")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_IOOUTDATA2")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_name("IOINTEDG1")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_IOINTEDG1")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_name("IOINTEDG2")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_IOINTEDG2")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_name("IOINTEN1")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_IOINTEN1")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("IOINTEN2")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_IOINTEN2")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("IOINTFLG1")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_IOINTFLG1")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("IOINTFLG2")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_IOINTFLG2")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$134	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$23)
$C$DW$135	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$134)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$135)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$136, DW_AT_name("baseAddr")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$137, DW_AT_name("numPins")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_numPins")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioObj")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x17)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("GPIO_Handle")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x06)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_name("GPIODIRL")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIODIRL")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_name("GPIODIRH")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIODIRH")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$140, DW_AT_name("GPIOINTTRIGL")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIOINTTRIGL")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("GPIOINTTRIGH")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIOINTTRIGH")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_name("GPIOINTENAL")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIOINTENAL")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("GPIOINTENAH")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIOINTENAH")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioConfig")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x03)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$144, DW_AT_name("pinNum")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$145, DW_AT_name("direction")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_direction")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$146, DW_AT_name("trigger")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinConfig")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)
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
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$147	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$147)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$148	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$148, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$21

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)
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

$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg0]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg1]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg2]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg3]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg4]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg5]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg6]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg7]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg8]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg9]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg10]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg11]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg12]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg13]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg14]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg15]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg16]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg17]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg18]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg19]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg20]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg21]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg22]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg23]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg24]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg25]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg26]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg27]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg28]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg29]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg30]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg31]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x20]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x21]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x22]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x23]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x24]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x25]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x26]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x27]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x28]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x29]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x30]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x31]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x32]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x33]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x34]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x35]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x36]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x37]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x38]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x39]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x40]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x41]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x42]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x43]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x44]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x45]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x46]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x47]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x48]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x49]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x50]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x51]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x52]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x53]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x54]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x55]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x56]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x57]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x58]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x59]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

