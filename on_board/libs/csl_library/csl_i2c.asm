;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:58 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_i2c.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
	.global	_gI2cObj
	.bss	_gI2cObj,16,0,2
$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("gI2cObj")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_gI2cObj")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _gI2cObj]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$1, DW_AT_external
	.global	_i2cHandle
	.bss	_i2cHandle,2,0,2
$C$DW$2	.dwtag  DW_TAG_variable, DW_AT_name("i2cHandle")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_i2cHandle")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _i2cHandle]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$2, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/173611SShqb 
	.sect	".text"
	.global	_I2C_init

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_init")
	.dwattr $C$DW$3, DW_AT_low_pc(_I2C_init)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_I2C_init")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 91,column 1,is_stmt,address _I2C_init

	.dwfde $C$DW$CIE, _I2C_init
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("instanceNum")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_instanceNum")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2C_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("instanceNum")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_instanceNum")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T0, *SP(#0) ; |91| 
	.dwpsn	file "src/csl_i2c.c",line 95,column 2,is_stmt
        MOV #0, *SP(#1) ; |95| 
	.dwpsn	file "src/csl_i2c.c",line 97,column 2,is_stmt
        B $C$L4   ; |97| 
                                        ; branch occurs ; |97| 
$C$L1:    
	.dwpsn	file "src/csl_i2c.c",line 100,column 7,is_stmt
        AMOV #_gI2cObj, XAR3 ; |100| 
        MOV XAR3, dbl(*(#_i2cHandle))
	.dwpsn	file "src/csl_i2c.c",line 101,column 7,is_stmt
        MOV #6656, *AR3 ; |101| 
	.dwpsn	file "src/csl_i2c.c",line 102,column 7,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #7168, *AR3(short(#1)) ; |102| 
	.dwpsn	file "src/csl_i2c.c",line 105,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |105| 
        MOV port(*AR3(short(#2))), AR1 ; |105| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |105| 
        BCLR @#6, AR1 ; |105| 
        MOV AR1, port(*AR3(short(#2))) ; |105| 
	.dwpsn	file "src/csl_i2c.c",line 109,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |109| 
        MOV port(*AR3(short(#4))), AR1 ; |109| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |109| 
        MOV #0, AC0 ; |109| 
        BSET @#5, AC0 ; |109| 
        MOV AC0, port(*AR3(short(#4))) ; |109| 
	.dwpsn	file "src/csl_i2c.c",line 112,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |112| 
        MOV port(*AR3(short(#5))), AR1 ; |112| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3(short(#1)), AR3 ; |112| 
        BCLR @#0, AR1 ; |112| 
        BSET @#0, AR1 ; |112| 
        MOV AR1, port(*AR3(short(#5))) ; |112| 
	.dwpsn	file "src/csl_i2c.c",line 115,column 8,is_stmt
        MOV #0, *SP(#2) ; |115| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 115,column 20,is_stmt
        MOV #500, AR2 ; |115| 
        MOV *SP(#2), AR1 ; |115| 
        CMPU AR1 >= AR2, TC1 ; |115| 
        BCC $C$L5,TC1 ; |115| 
                                        ; branchcc occurs ; |115| 
$C$L2:    
$C$DW$L$_I2C_init$4$B:
	.dwpsn	file "src/csl_i2c.c",line 115,column 50,is_stmt
        ADD #1, *SP(#2) ; |115| 
        NOP
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 115,column 20,is_stmt
        MOV *SP(#2), AR1 ; |115| 
        CMPU AR1 < AR2, TC1 ; |115| 
        BCC $C$L2,TC1 ; |115| 
                                        ; branchcc occurs ; |115| 
$C$DW$L$_I2C_init$4$E:
	.dwpsn	file "src/csl_i2c.c",line 118,column 12,is_stmt
        B $C$L5   ; |118| 
                                        ; branch occurs ; |118| 
$C$L3:    
	.dwpsn	file "src/csl_i2c.c",line 121,column 4,is_stmt
        MOV #-6, *SP(#1) ; |121| 
	.dwpsn	file "src/csl_i2c.c",line 122,column 9,is_stmt
        B $C$L5   ; |122| 
                                        ; branch occurs ; |122| 
$C$L4:    
	.dwpsn	file "src/csl_i2c.c",line 97,column 2,is_stmt
        MOV *SP(#0), AR1 ; |97| 
        BCC $C$L1,AR1 == #0 ; |97| 
                                        ; branchcc occurs ; |97| 
        B $C$L3   ; |97| 
                                        ; branch occurs ; |97| 
$C$L5:    
	.dwpsn	file "src/csl_i2c.c",line 125,column 2,is_stmt
        MOV *SP(#1), T0 ; |125| 
	.dwpsn	file "src/csl_i2c.c",line 126,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$9	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$9, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L2:1:1714639438")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x74)
$C$DW$10	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$10, DW_AT_low_pc($C$DW$L$_I2C_init$4$B)
	.dwattr $C$DW$10, DW_AT_high_pc($C$DW$L$_I2C_init$4$E)
	.dwendtag $C$DW$9

	.dwattr $C$DW$3, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.global	_I2C_config

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_config")
	.dwattr $C$DW$11, DW_AT_low_pc(_I2C_config)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_I2C_config")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 176,column 1,is_stmt,address _I2C_config

	.dwfde $C$DW$CIE, _I2C_config
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cConfig")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_i2cConfig")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2C_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("i2cConfig")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_i2cConfig")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 178,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L6,AC0 == #0 ; |178| 
                                        ; branchcc occurs ; |178| 
	.dwpsn	file "src/csl_i2c.c",line 181,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |181| 
        MOV port(*AR3), AR1 ; |181| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xfc00, AR1, AR2 ; |181| 
        MOV *AR3, AR1 ; |181| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |181| 
        AND #0x03ff, AR1, AR1 ; |181| 
        OR AR2, AR1 ; |181| 
        MOV AR1, port(*AR3) ; |181| 
	.dwpsn	file "src/csl_i2c.c",line 185,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |185| 
        MOV port(*AR3(short(#4))), AR1 ; |185| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xff80, AR1, AR2 ; |185| 
        MOV *AR3(short(#1)), AR1 ; |185| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |185| 
        AND #0x007f, AR1, AR1 ; |185| 
        OR AR2, AR1 ; |185| 
        MOV AR1, port(*AR3(short(#4))) ; |185| 
	.dwpsn	file "src/csl_i2c.c",line 189,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |189| 
        AMOV #8, T0
        MOV #65535, port(*AR3(T0)) ; |189| 
	.dwpsn	file "src/csl_i2c.c",line 192,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |192| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |192| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |192| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |192| 
        OR #0x0000, AR1, AR1 ; |192| 
        MOV AR1, port(*AR3(T0)) ; |192| 
	.dwpsn	file "src/csl_i2c.c",line 196,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #16, T0 ; |196| 
        MOV *AR3, AR3 ; |196| 
        MOV port(*AR3(T0)), AR1 ; |196| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |196| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |196| 
        OR #0x0000, AR1, AR1 ; |196| 
        MOV AR1, port(*AR3(T0)) ; |196| 
	.dwpsn	file "src/csl_i2c.c",line 200,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #20, T0 ; |200| 
        MOV *AR3, AR3 ; |200| 
        MOV port(*AR3(T0)), AR1 ; |200| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |200| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |200| 
        OR #0x0000, AR1, AR1 ; |200| 
        MOV AR1, port(*AR3(T0)) ; |200| 
	.dwpsn	file "src/csl_i2c.c",line 203,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #28, T0 ; |203| 
        MOV *AR3, AR3 ; |203| 
        MOV port(*AR3(T0)), AR1 ; |203| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xfc00, AR1, AR2 ; |203| 
        MOV *AR3(short(#5)), AR1 ; |203| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |203| 
        AND #0x03ff, AR1, AR1 ; |203| 
        OR AR2, AR1 ; |203| 
        MOV AR1, port(*AR3(T0)) ; |203| 
	.dwpsn	file "src/csl_i2c.c",line 206,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #48, T0 ; |206| 
        MOV *AR3, AR3 ; |206| 
        MOV port(*AR3(T0)), AR1 ; |206| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xff00, AR1, AR2 ; |206| 
        MOV uns(low_byte(*AR3(#8))), AR1 ; |206| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |206| 
        OR AR2, AR1 ; |206| 
        MOV AR1, port(*AR3(T0)) ; |206| 
	.dwpsn	file "src/csl_i2c.c",line 209,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #44, T0 ; |209| 
        MOV *AR3, AR3 ; |209| 
        MOV port(*AR3(T0)), AR1 ; |209| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xfffc, AR1, AR2 ; |209| 
        MOV *AR3(short(#7)), AR1 ; |209| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |209| 
        AND #0x0003, AR1, AR1 ; |209| 
        OR AR2, AR1 ; |209| 
        MOV AR1, port(*AR3(T0)) ; |209| 
	.dwpsn	file "src/csl_i2c.c",line 213,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |213| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |213| 
        MOV *AR3, AR3 ; |213| 
        MOV AR1, port(*AR3(T0)) ; |213| 
	.dwpsn	file "src/csl_i2c.c",line 214,column 2,is_stmt
        B $C$L7   ; |214| 
                                        ; branch occurs ; |214| 
$C$L6:    
	.dwpsn	file "src/csl_i2c.c",line 217,column 3,is_stmt
        MOV #-6, T0
        B $C$L8   ; |217| 
                                        ; branch occurs ; |217| 
$C$L7:    
	.dwpsn	file "src/csl_i2c.c",line 220,column 2,is_stmt
        MOV #0, T0
$C$L8:    
	.dwpsn	file "src/csl_i2c.c",line 221,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$11, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_I2C_getConfig

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_getConfig")
	.dwattr $C$DW$15, DW_AT_low_pc(_I2C_getConfig)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_I2C_getConfig")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 274,column 1,is_stmt,address _I2C_getConfig

	.dwfde $C$DW$CIE, _I2C_getConfig
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cgetConfig")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_i2cgetConfig")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2C_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("i2cgetConfig")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_i2cgetConfig")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 276,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L9,AC0 == #0 ; |276| 
                                        ; branchcc occurs ; |276| 
	.dwpsn	file "src/csl_i2c.c",line 279,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |279| 
        MOV port(*AR3), AR1 ; |279| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x03ff, AR1, AC0 ; |279| 
        MOV AC0, *AR3 ; |279| 
	.dwpsn	file "src/csl_i2c.c",line 283,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |283| 
        MOV port(*AR3(short(#4))), AR1 ; |283| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x007f, AR1, AC0 ; |283| 
        MOV AC0, *AR3(short(#1)) ; |283| 
	.dwpsn	file "src/csl_i2c.c",line 288,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |288| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |288| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#2)) ; |288| 
	.dwpsn	file "src/csl_i2c.c",line 292,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #16, T0 ; |292| 
        MOV *AR3, AR3 ; |292| 
        MOV port(*AR3(T0)), AR1 ; |292| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#3)) ; |292| 
	.dwpsn	file "src/csl_i2c.c",line 296,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #20, T0 ; |296| 
        MOV *AR3, AR3 ; |296| 
        MOV port(*AR3(T0)), AR1 ; |296| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#4)) ; |296| 
	.dwpsn	file "src/csl_i2c.c",line 300,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #28, T0 ; |300| 
        MOV *AR3, AR3 ; |300| 
        MOV port(*AR3(T0)), AR1 ; |300| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x03ff, AR1, AC0 ; |300| 
        MOV AC0, *AR3(short(#5)) ; |300| 
	.dwpsn	file "src/csl_i2c.c",line 304,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |304| 
        MOV *AR3, AR3 ; |304| 
        MOV port(*AR3(T0)), AR1 ; |304| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#6)) ; |304| 
	.dwpsn	file "src/csl_i2c.c",line 307,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #44, T0 ; |307| 
        MOV *AR3, AR3 ; |307| 
        MOV port(*AR3(T0)), AR1 ; |307| 
        MOV dbl(*SP(#0)), XAR3
        AND #0x0003, AR1, AC0 ; |307| 
        MOV AC0, *AR3(short(#7)) ; |307| 
	.dwpsn	file "src/csl_i2c.c",line 312,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #48, T0 ; |312| 
        MOV *AR3, AR3 ; |312| 
        MOV uns(low_byte(port(*AR3(T0)))), AR1 ; |312| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#8) ; |312| 
	.dwpsn	file "src/csl_i2c.c",line 314,column 2,is_stmt
        B $C$L10  ; |314| 
                                        ; branch occurs ; |314| 
$C$L9:    
	.dwpsn	file "src/csl_i2c.c",line 317,column 3,is_stmt
        MOV #-6, T0
        B $C$L11  ; |317| 
                                        ; branch occurs ; |317| 
$C$L10:    
	.dwpsn	file "src/csl_i2c.c",line 320,column 2,is_stmt
        MOV #0, T0
$C$L11:    
	.dwpsn	file "src/csl_i2c.c",line 321,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$15, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x141)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.global	_I2C_setup

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_setup")
	.dwattr $C$DW$19, DW_AT_low_pc(_I2C_setup)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_I2C_setup")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x176)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_i2c.c",line 375,column 1,is_stmt,address _I2C_setup

	.dwfde $C$DW$CIE, _I2C_setup
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cSetup")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_i2cSetup")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2C_setup                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,AC2,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("i2cSetup")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_i2cSetup")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("pscValue")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_pscValue")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("clock")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_clock")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("d")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_d")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 380,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L16,AC0 == #0 ; |380| 
                                        ; branchcc occurs ; |380| 
	.dwpsn	file "src/csl_i2c.c",line 383,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |383| 
        MOV *AR3, AR3 ; |383| 
        MOV port(*AR3(T0)), AR1 ; |383| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3 << #8, AC0 ; |383| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |383| 
        BCLR @#8, AR1 ; |383| 
        AND #0x0100, AC0, AR2 ; |383| 
        OR AR1, AR2 ; |383| 
        MOV AR2, port(*AR3(T0)) ; |383| 
	.dwpsn	file "src/csl_i2c.c",line 386,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |386| 
        MOV port(*AR3(T0)), AR1 ; |386| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xfff8, AR1, AR2 ; |386| 
        MOV *AR3(short(#1)), AR1 ; |386| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |386| 
        AND #0x0007, AR1, AR1 ; |386| 
        OR AR2, AR1 ; |386| 
        MOV AR1, port(*AR3(T0)) ; |386| 
	.dwpsn	file "src/csl_i2c.c",line 389,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |389| 
        MOV port(*AR3(T0)), AR1 ; |389| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)) << #6, AC0 ; |389| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |389| 
        BCLR @#6, AR1 ; |389| 
        AND #0x0040, AC0, AR2 ; |389| 
        OR AR1, AR2 ; |389| 
        MOV AR2, port(*AR3(T0)) ; |389| 
	.dwpsn	file "src/csl_i2c.c",line 392,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |392| 
        MOV port(*AR3(T0)), AR1 ; |392| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)) << #14, AC0 ; |392| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |392| 
        BCLR @#14, AR1 ; |392| 
        AND #0x4000, AC0, AR2 ; |392| 
        OR AR1, AR2 ; |392| 
        MOV AR2, port(*AR3(T0)) ; |392| 
	.dwpsn	file "src/csl_i2c.c",line 396,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |396| 
        MOV port(*AR3(T0)), AR1 ; |396| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)) << #7, AC0 ; |396| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |396| 
        BCLR @#7, AR1 ; |396| 
        AND #0x0080, AC0, AR2 ; |396| 
        OR AR1, AR2 ; |396| 
        MOV AR2, port(*AR3(T0)) ; |396| 
	.dwpsn	file "src/csl_i2c.c",line 400,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |400| 
        MOV port(*AR3), AR1 ; |400| 
        MOV dbl(*SP(#0)), XAR3
        AND #0xfc00, AR1, AR2 ; |400| 
        MOV *AR3(short(#5)), AR1 ; |400| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |400| 
        AND #0x03ff, AR1, AR1 ; |400| 
        OR AR2, AR1 ; |400| 
        MOV AR1, port(*AR3) ; |400| 
	.dwpsn	file "src/csl_i2c.c",line 404,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |404| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("__divul")
	.dwattr $C$DW$25, DW_AT_TI_call

        CALL #__divul ; |404| 
||      MOV #12, AC1 ; |404| 

                                        ; call occurs [#__divul] ; |404| 
        MOV AC0, *SP(#2) ; |404| 
	.dwpsn	file "src/csl_i2c.c",line 407,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |407| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__remul")
	.dwattr $C$DW$26, DW_AT_TI_call

        CALL #__remul ; |407| 
||      MOV #12, AC1 ; |407| 

                                        ; call occurs [#__remul] ; |407| 
        MOV uns(*SP(#2)), AC1 ; |407| 
        CMPU AC1 <= AC0, TC1 ; |407| 
        BCC $C$L12,TC1 ; |407| 
                                        ; branchcc occurs ; |407| 
	.dwpsn	file "src/csl_i2c.c",line 409,column 4,is_stmt
        SUB #1, *SP(#2) ; |409| 
$C$L12:    
	.dwpsn	file "src/csl_i2c.c",line 412,column 3,is_stmt
        MOV *SP(#2), AR1 ; |412| 
        BCC $C$L13,AR1 != #0 ; |412| 
                                        ; branchcc occurs ; |412| 
	.dwpsn	file "src/csl_i2c.c",line 414,column 4,is_stmt
        MOV #7, *SP(#4) ; |414| 
	.dwpsn	file "src/csl_i2c.c",line 415,column 3,is_stmt
        B $C$L15  ; |415| 
                                        ; branch occurs ; |415| 
$C$L13:    
	.dwpsn	file "src/csl_i2c.c",line 416,column 8,is_stmt
        CMP *SP(#2) == #1, TC1 ; |416| 
        BCC $C$L14,!TC1 ; |416| 
                                        ; branchcc occurs ; |416| 
	.dwpsn	file "src/csl_i2c.c",line 418,column 4,is_stmt
        MOV #6, *SP(#4) ; |418| 
	.dwpsn	file "src/csl_i2c.c",line 419,column 3,is_stmt
        B $C$L15  ; |419| 
                                        ; branch occurs ; |419| 
$C$L14:    
	.dwpsn	file "src/csl_i2c.c",line 422,column 4,is_stmt
        MOV #5, *SP(#4) ; |422| 
$C$L15:    
	.dwpsn	file "src/csl_i2c.c",line 425,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #48, T0 ; |425| 
        MOV *AR3, AR3 ; |425| 
        MOV port(*AR3(T0)), AR1 ; |425| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |425| 
        AND #0xff00, AR1, AR2 ; |425| 
        MOV uns(low_byte(*SP(#2))), AR1 ; |425| 
        OR AR2, AR1 ; |425| 
        MOV AR1, port(*AR3(T0)) ; |425| 
	.dwpsn	file "src/csl_i2c.c",line 428,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |428| 
        AMOV #1000000, XAR3 ; |428| 
        MOV XAR3, AC1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__mpyli")
	.dwattr $C$DW$27, DW_AT_TI_call
        CALL #__mpyli ; |428| 
                                        ; call occurs [#__mpyli] ; |428| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2), AR1 ; |428| 

        ADD #1, AR1 ; |428| 
||      OR #0, AC0, AC2

        AND #0xffff, AR1, AC0 ; |428| 
        MOV dbl(*AR3(#8)), AC1 ; |428| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("__mpyli")
	.dwattr $C$DW$28, DW_AT_TI_call
        CALL #__mpyli ; |428| 
                                        ; call occurs [#__mpyli] ; |428| 
        MOV #2000, AC1 ; |428| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__mpyli")
	.dwattr $C$DW$29, DW_AT_TI_call
        CALL #__mpyli ; |428| 
                                        ; call occurs [#__mpyli] ; |428| 
        OR #0, AC0, AC1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("__divul")
	.dwattr $C$DW$30, DW_AT_TI_call

        CALL #__divul ; |428| 
||      OR #0, AC2, AC0

                                        ; call occurs [#__divul] ; |428| 
        SUB uns(*SP(#4)), AC0, AC0 ; |428| 
        MOV AC0, *SP(#3) ; |428| 
	.dwpsn	file "src/csl_i2c.c",line 433,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |433| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |433| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |433| 
        MOV AC0, AR1 ; |433| 
        OR #0x0000, AR1, AR1 ; |433| 
        MOV AR1, port(*AR3(T0)) ; |433| 
	.dwpsn	file "src/csl_i2c.c",line 435,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #16, T0 ; |435| 
        MOV *AR3, AR3 ; |435| 
        MOV port(*AR3(T0)), AR1 ; |435| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |435| 
        MOV *SP(#3), AR1 ; |435| 
        OR #0x0000, AR1, AR1 ; |435| 
        MOV AR1, port(*AR3(T0)) ; |435| 
	.dwpsn	file "src/csl_i2c.c",line 438,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |438| 
        MOV *AR3, AR3 ; |438| 
        MOV port(*AR3(T0)), AR1 ; |438| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |438| 
        BCLR @#5, AR1 ; |438| 
        BSET @#5, AR1 ; |438| 
        MOV AR1, port(*AR3(T0)) ; |438| 
	.dwpsn	file "src/csl_i2c.c",line 439,column 2,is_stmt
        B $C$L17  ; |439| 
                                        ; branch occurs ; |439| 
$C$L16:    
	.dwpsn	file "src/csl_i2c.c",line 442,column 3,is_stmt
        MOV #-6, T0
        B $C$L18  ; |442| 
                                        ; branch occurs ; |442| 
$C$L17:    
	.dwpsn	file "src/csl_i2c.c",line 445,column 2,is_stmt
        MOV #0, T0
$C$L18:    
	.dwpsn	file "src/csl_i2c.c",line 446,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$19, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x1be)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_I2C_write

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_write")
	.dwattr $C$DW$32, DW_AT_low_pc(_I2C_write)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_I2C_write")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x200)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_i2c.c",line 518,column 1,is_stmt,address _I2C_write

	.dwfde $C$DW$CIE, _I2C_write
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cWrBuf")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_i2cWrBuf")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg17]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataLength")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("slaveAddr")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_slaveAddr")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg13]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("masterMode")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_masterMode")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg18]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startStopFlag")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_startStopFlag")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg20]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg22]
;*******************************************************************************
;* FUNCTION NAME: I2C_write                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("i2cWrBuf")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_i2cWrBuf")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("dataLength")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("slaveAddr")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_slaveAddr")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("masterMode")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_masterMode")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("startStopFlag")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_startStopFlag")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("timeout")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("dataCount")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_dataCount")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("statusByte")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_statusByte")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV AR3, *SP(#6) ; |518| 
        MOV AR2, *SP(#5) ; |518| 
        MOV AR1, *SP(#4) ; |518| 
        MOV T1, *SP(#3) ; |518| 
        MOV T0, *SP(#2) ; |518| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 523,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L32,AC0 == #0 ; |523| 
                                        ; branchcc occurs ; |523| 
        MOV *SP(#2), AR1 ; |523| 
        BCC $C$L32,AR1 == #0 ; |523| 
                                        ; branchcc occurs ; |523| 
	.dwpsn	file "src/csl_i2c.c",line 526,column 7,is_stmt
        MOV #0, *SP(#7) ; |526| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 526,column 19,is_stmt
        MOV *SP(#6), AR1 ; |526| 
        MOV *SP(#7), AR2 ; |526| 
        CMPU AR2 >= AR1, TC1 ; |526| 
        BCC $C$L20,TC1 ; |526| 
                                        ; branchcc occurs ; |526| 
$C$L19:    
$C$DW$L$_I2C_write$4$B:
	.dwpsn	file "src/csl_i2c.c",line 528,column 7,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |528| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |528| 
        AND #0x1000, AR1, AC0 ; |528| 
        SFTS AC0, #-12, AC0 ; |528| 
        MOV AC0, *SP(#9) ; |528| 
	.dwpsn	file "src/csl_i2c.c",line 529,column 7,is_stmt
        MOV AC0, AR1
        BCC $C$L20,AR1 == #0 ; |529| 
                                        ; branchcc occurs ; |529| 
$C$DW$L$_I2C_write$4$E:
$C$DW$L$_I2C_write$5$B:
	.dwpsn	file "src/csl_i2c.c",line 531,column 5,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 526,column 37,is_stmt
        ADD #1, *SP(#7) ; |526| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 526,column 19,is_stmt
        MOV *SP(#6), AR1 ; |526| 
        MOV *SP(#7), AR2 ; |526| 
        CMPU AR2 < AR1, TC1 ; |526| 
        BCC $C$L19,TC1 ; |526| 
                                        ; branchcc occurs ; |526| 
$C$DW$L$_I2C_write$5$E:
$C$L20:    
	.dwpsn	file "src/csl_i2c.c",line 535,column 6,is_stmt
        MOV *SP(#6), AR1 ; |535| 
        MOV *SP(#7), AR2 ; |535| 
        CMPU AR2 < AR1, TC1 ; |535| 
        BCC $C$L21,TC1 ; |535| 
                                        ; branchcc occurs ; |535| 
	.dwpsn	file "src/csl_i2c.c",line 538,column 7,is_stmt
        MOV #-194, T0 ; |538| 
        B $C$L34  ; |538| 
                                        ; branch occurs ; |538| 
$C$L21:    
	.dwpsn	file "src/csl_i2c.c",line 542,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |542| 
        MOV *AR3, AR3 ; |542| 
        MOV port(*AR3(T0)), AR1 ; |542| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |542| 
        BCLR @#9, AR1 ; |542| 
        BSET @#9, AR1 ; |542| 
        MOV AR1, port(*AR3(T0)) ; |542| 
	.dwpsn	file "src/csl_i2c.c",line 545,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #20, T0 ; |545| 
        MOV *AR3, AR3 ; |545| 
        MOV port(*AR3(T0)), AR1 ; |545| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |545| 
        MOV *SP(#2), AR1 ; |545| 
        OR #0x0000, AR1, AR1 ; |545| 
        MOV AR1, port(*AR3(T0)) ; |545| 
	.dwpsn	file "src/csl_i2c.c",line 547,column 3,is_stmt
        CMP *SP(#4) == #1, TC1 ; |547| 
        BCC $C$L23,!TC1 ; |547| 
                                        ; branchcc occurs ; |547| 
	.dwpsn	file "src/csl_i2c.c",line 550,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #28, T0 ; |550| 
        MOV *AR3, AR3 ; |550| 
        MOV port(*AR3(T0)), AR1 ; |550| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |550| 
        AND #0xfc00, AR1, AR2 ; |550| 
        MOV *SP(#3), AR1 ; |550| 
        AND #0x03ff, AR1, AR1 ; |550| 
        OR AR2, AR1 ; |550| 
        MOV AR1, port(*AR3(T0)) ; |550| 
	.dwpsn	file "src/csl_i2c.c",line 553,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |553| 
        MOV *AR3, AR3 ; |553| 
        MOV port(*AR3(T0)), AR1 ; |553| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |553| 
        BCLR @#10, AR1 ; |553| 
        BSET @#10, AR1 ; |553| 
        MOV AR1, port(*AR3(T0)) ; |553| 
	.dwpsn	file "src/csl_i2c.c",line 556,column 4,is_stmt
        MOV #512, AR2 ; |556| 
        MOV *SP(#5), AR1 ; |556| 
        AND #0x0200, AR1, AR1 ; |556| 
        CMPU AR1 != AR2, TC1 ; |556| 
        BCC $C$L22,TC1 ; |556| 
                                        ; branchcc occurs ; |556| 
	.dwpsn	file "src/csl_i2c.c",line 558,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |558| 
        MOV port(*AR3(T0)), AR1 ; |558| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |558| 
        BCLR @#11, AR1 ; |558| 
        BSET @#11, AR1 ; |558| 
        MOV AR1, port(*AR3(T0)) ; |558| 
$C$L22:    
	.dwpsn	file "src/csl_i2c.c",line 562,column 4,is_stmt
        MOV *SP(#5), AR1 ; |562| 
        MOV #256, AR2 ; |562| 
        AND #0x0100, AR1, AR1 ; |562| 
        CMPU AR1 != AR2, TC1 ; |562| 
        BCC $C$L24,TC1 ; |562| 
                                        ; branchcc occurs ; |562| 
	.dwpsn	file "src/csl_i2c.c",line 564,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |564| 
        MOV port(*AR3(T0)), AR1 ; |564| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |564| 
        BCLR @#13, AR1 ; |564| 
        BSET @#13, AR1 ; |564| 
        MOV AR1, port(*AR3(T0)) ; |564| 
	.dwpsn	file "src/csl_i2c.c",line 566,column 3,is_stmt
        B $C$L24  ; |566| 
                                        ; branch occurs ; |566| 
$C$L23:    
	.dwpsn	file "src/csl_i2c.c",line 570,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |570| 
        MOV *AR3, AR3 ; |570| 
        MOV port(*AR3(T0)), AR1 ; |570| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |570| 
        BCLR @#10, AR1 ; |570| 
        MOV AR1, port(*AR3(T0)) ; |570| 
$C$L24:    
	.dwpsn	file "src/csl_i2c.c",line 573,column 7,is_stmt
        MOV #0, *SP(#8) ; |573| 
	.dwpsn	file "src/csl_i2c.c",line 573,column 22,is_stmt
        MOV *SP(#2), AR1 ; |573| 
        MOV *SP(#8), AR2 ; |573| 
        CMPU AR2 >= AR1, TC1 ; |573| 
        BCC $C$L33,TC1 ; |573| 
                                        ; branchcc occurs ; |573| 
$C$L25:    
$C$DW$L$_I2C_write$15$B:
	.dwpsn	file "src/csl_i2c.c",line 576,column 8,is_stmt
        MOV #0, *SP(#7) ; |576| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 576,column 20,is_stmt
        MOV *SP(#6), AR1 ; |576| 
        MOV *SP(#7), AR2 ; |576| 
        CMPU AR2 >= AR1, TC1 ; |576| 
        BCC $C$L27,TC1 ; |576| 
                                        ; branchcc occurs ; |576| 
$C$DW$L$_I2C_write$15$E:
$C$L26:    
$C$DW$L$_I2C_write$16$B:
	.dwpsn	file "src/csl_i2c.c",line 578,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |578| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |578| 
        AND #0x0010, AR1, AC0 ; |578| 
        SFTS AC0, #-4, AC0 ; |578| 
        MOV AC0, *SP(#9) ; |578| 
	.dwpsn	file "src/csl_i2c.c",line 580,column 5,is_stmt
        CMP *SP(#9) == #1, TC1 ; |580| 
        BCC $C$L27,TC1 ; |580| 
                                        ; branchcc occurs ; |580| 
$C$DW$L$_I2C_write$16$E:
$C$DW$L$_I2C_write$17$B:
	.dwpsn	file "src/csl_i2c.c",line 582,column 6,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 576,column 38,is_stmt
        ADD #1, *SP(#7) ; |576| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 576,column 20,is_stmt
        MOV *SP(#6), AR1 ; |576| 
        MOV *SP(#7), AR2 ; |576| 
        CMPU AR2 < AR1, TC1 ; |576| 
        BCC $C$L26,TC1 ; |576| 
                                        ; branchcc occurs ; |576| 
$C$DW$L$_I2C_write$17$E:
$C$L27:    
$C$DW$L$_I2C_write$18$B:
	.dwpsn	file "src/csl_i2c.c",line 586,column 4,is_stmt
        MOV *SP(#6), AR1 ; |586| 
        MOV *SP(#7), AR2 ; |586| 
        CMPU AR2 < AR1, TC1 ; |586| 
        BCC $C$L28,TC1 ; |586| 
                                        ; branchcc occurs ; |586| 
$C$DW$L$_I2C_write$18$E:
	.dwpsn	file "src/csl_i2c.c",line 588,column 5,is_stmt
        MOV #-200, T0 ; |588| 
        B $C$L34  ; |588| 
                                        ; branch occurs ; |588| 
$C$L28:    
$C$DW$L$_I2C_write$20$B:
	.dwpsn	file "src/csl_i2c.c",line 592,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3+, AR1 ; |592| 
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #32, T0 ; |592| 
        MOV *AR3, AR3 ; |592| 
        MOV port(*AR3(T0)), AR2 ; |592| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |592| 
        AND #0x00ff, AR1, AR1 ; |592| 
        AND #0xff00, AR2, AR2 ; |592| 
        OR AR2, AR1 ; |592| 
        MOV AR1, port(*AR3(T0)) ; |592| 
	.dwpsn	file "src/csl_i2c.c",line 594,column 8,is_stmt
        MOV #0, *SP(#7) ; |594| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 594,column 20,is_stmt
        MOV *SP(#6), AR1 ; |594| 
        MOV *SP(#7), AR2 ; |594| 
        CMPU AR2 >= AR1, TC1 ; |594| 
        BCC $C$L30,TC1 ; |594| 
                                        ; branchcc occurs ; |594| 
$C$DW$L$_I2C_write$20$E:
$C$L29:    
$C$DW$L$_I2C_write$21$B:
	.dwpsn	file "src/csl_i2c.c",line 597,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |597| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |597| 
        AND #0x0002, AR1, AR1 ; |597| 
        SFTL AR1, #-1 ; |597| 
        MOV AR1, *SP(#9) ; |597| 
	.dwpsn	file "src/csl_i2c.c",line 599,column 5,is_stmt
        BCC $C$L30,AR1 == #0 ; |599| 
                                        ; branchcc occurs ; |599| 
$C$DW$L$_I2C_write$21$E:
$C$DW$L$_I2C_write$22$B:
	.dwpsn	file "src/csl_i2c.c",line 601,column 6,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 594,column 38,is_stmt
        ADD #1, *SP(#7) ; |594| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 594,column 20,is_stmt
        MOV *SP(#6), AR1 ; |594| 
        MOV *SP(#7), AR2 ; |594| 
        CMPU AR2 < AR1, TC1 ; |594| 
        BCC $C$L29,TC1 ; |594| 
                                        ; branchcc occurs ; |594| 
$C$DW$L$_I2C_write$22$E:
$C$L30:    
$C$DW$L$_I2C_write$23$B:
	.dwpsn	file "src/csl_i2c.c",line 605,column 4,is_stmt
        MOV *SP(#6), AR1 ; |605| 
        MOV *SP(#7), AR2 ; |605| 
        CMPU AR2 < AR1, TC1 ; |605| 
        BCC $C$L31,TC1 ; |605| 
                                        ; branchcc occurs ; |605| 
$C$DW$L$_I2C_write$23$E:
	.dwpsn	file "src/csl_i2c.c",line 607,column 5,is_stmt
        MOV #-196, T0 ; |607| 
        B $C$L34  ; |607| 
                                        ; branch occurs ; |607| 
$C$L31:    
$C$DW$L$_I2C_write$25$B:
	.dwpsn	file "src/csl_i2c.c",line 573,column 46,is_stmt
        ADD #1, *SP(#8) ; |573| 
	.dwpsn	file "src/csl_i2c.c",line 573,column 22,is_stmt
        MOV *SP(#2), AR1 ; |573| 
        MOV *SP(#8), AR2 ; |573| 
        CMPU AR2 < AR1, TC1 ; |573| 
        BCC $C$L25,TC1 ; |573| 
                                        ; branchcc occurs ; |573| 
$C$DW$L$_I2C_write$25$E:
	.dwpsn	file "src/csl_i2c.c",line 610,column 2,is_stmt
        B $C$L33  ; |610| 
                                        ; branch occurs ; |610| 
$C$L32:    
	.dwpsn	file "src/csl_i2c.c",line 613,column 3,is_stmt
        MOV #-6, T0
        B $C$L34  ; |613| 
                                        ; branch occurs ; |613| 
$C$L33:    
	.dwpsn	file "src/csl_i2c.c",line 616,column 2,is_stmt
        MOV #0, T0
$C$L34:    
	.dwpsn	file "src/csl_i2c.c",line 617,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$49	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$49, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L25:1:1714639438")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x23d)
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x261)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_I2C_write$15$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_I2C_write$15$E)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_I2C_write$18$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_I2C_write$18$E)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_I2C_write$20$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_I2C_write$20$E)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_I2C_write$23$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_I2C_write$23$E)
$C$DW$54	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$54, DW_AT_low_pc($C$DW$L$_I2C_write$25$B)
	.dwattr $C$DW$54, DW_AT_high_pc($C$DW$L$_I2C_write$25$E)

$C$DW$55	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$55, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L26:2:1714639438")
	.dwattr $C$DW$55, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x240)
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x248)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_I2C_write$16$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_I2C_write$16$E)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_I2C_write$17$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_I2C_write$17$E)
	.dwendtag $C$DW$55


$C$DW$58	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$58, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L29:2:1714639438")
	.dwattr $C$DW$58, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x252)
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x25b)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_I2C_write$21$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_I2C_write$21$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_I2C_write$22$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_I2C_write$22$E)
	.dwendtag $C$DW$58

	.dwendtag $C$DW$49


$C$DW$61	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$61, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L19:1:1714639438")
	.dwattr $C$DW$61, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x20e)
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x215)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_I2C_write$4$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_I2C_write$4$E)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_I2C_write$5$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_I2C_write$5$E)
	.dwendtag $C$DW$61

	.dwattr $C$DW$32, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x269)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.global	_I2C_read

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_read")
	.dwattr $C$DW$64, DW_AT_low_pc(_I2C_read)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_I2C_read")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$64, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x2ac)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_i2c.c",line 693,column 1,is_stmt,address _I2C_read

	.dwfde $C$DW$CIE, _I2C_read
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cRdBuf")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_i2cRdBuf")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg17]
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataLength")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg12]
$C$DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("slaveAddr")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_slaveAddr")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg13]
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddr")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_subAddr")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg19]
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddrLength")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_subAddrLength")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg20]
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("masterMode")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_masterMode")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg22]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("startStopFlag")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_startStopFlag")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg24]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeout")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("checkBus")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_checkBus")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 15]
;*******************************************************************************
;* FUNCTION NAME: I2C_read                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,   *
;*                        AR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL         *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("i2cRdBuf")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_i2cRdBuf")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("dataLength")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("slaveAddr")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_slaveAddr")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("subAddr")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_subAddr")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("subAddrLength")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_subAddrLength")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("masterMode")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_masterMode")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("startStopFlag")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_startStopFlag")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("dataCount")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_dataCount")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("statusByte")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_statusByte")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("writeSubAddr")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_writeSubAddr")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV AR4, *SP(#8) ; |693| 
        MOV AR3, *SP(#7) ; |693| 
        MOV AR2, *SP(#6) ; |693| 
        MOV XAR1, dbl(*SP(#4))
        MOV T1, *SP(#3) ; |693| 
        MOV T0, *SP(#2) ; |693| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 700,column 2,is_stmt
        MOV *SP(#6), AR1 ; |700| 
        BCC $C$L35,AR1 == #0 ; |700| 
                                        ; branchcc occurs ; |700| 

        B $C$L36  ; |700| 
||      MOV #1, AR1

                                        ; branch occurs ; |700| 
$C$L35:    
        MOV #0, AR1
$C$L36:    
        MOV AR1, *SP(#12) ; |700| 
	.dwpsn	file "src/csl_i2c.c",line 702,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L62,AC0 == #0 ; |702| 
                                        ; branchcc occurs ; |702| 
        MOV *SP(#2), AR1 ; |702| 
        BCC $C$L62,AR1 == #0 ; |702| 
                                        ; branchcc occurs ; |702| 
	.dwpsn	file "src/csl_i2c.c",line 704,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L51,AC0 == #0 ; |704| 
                                        ; branchcc occurs ; |704| 
        CMP *SP(#12) == #1, TC1 ; |704| 
        BCC $C$L51,!TC1 ; |704| 
                                        ; branchcc occurs ; |704| 
	.dwpsn	file "src/csl_i2c.c",line 707,column 8,is_stmt
        MOV #0, *SP(#9) ; |707| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 707,column 20,is_stmt
        MOV *SP(#14), AR1 ; |707| 
        MOV *SP(#9), AR2 ; |707| 
        CMPU AR2 >= AR1, TC1 ; |707| 
        BCC $C$L38,TC1 ; |707| 
                                        ; branchcc occurs ; |707| 
$C$L37:    
$C$DW$L$_I2C_read$9$B:
	.dwpsn	file "src/csl_i2c.c",line 709,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |709| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |709| 
        AND #0x1000, AR1, AC0 ; |709| 
        SFTS AC0, #-12, AC0 ; |709| 
        MOV AC0, *SP(#11) ; |709| 
	.dwpsn	file "src/csl_i2c.c",line 710,column 5,is_stmt
        MOV AC0, AR1
        BCC $C$L38,AR1 == #0 ; |710| 
                                        ; branchcc occurs ; |710| 
$C$DW$L$_I2C_read$9$E:
$C$DW$L$_I2C_read$10$B:
	.dwpsn	file "src/csl_i2c.c",line 712,column 6,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 707,column 38,is_stmt
        ADD #1, *SP(#9) ; |707| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 707,column 20,is_stmt
        MOV *SP(#14), AR1 ; |707| 
        MOV *SP(#9), AR2 ; |707| 
        CMPU AR2 < AR1, TC1 ; |707| 
        BCC $C$L37,TC1 ; |707| 
                                        ; branchcc occurs ; |707| 
$C$DW$L$_I2C_read$10$E:
$C$L38:    
	.dwpsn	file "src/csl_i2c.c",line 716,column 4,is_stmt
        MOV *SP(#14), AR1 ; |716| 
        MOV *SP(#9), AR2 ; |716| 
        CMPU AR2 < AR1, TC1 ; |716| 
        BCC $C$L39,TC1 ; |716| 
                                        ; branchcc occurs ; |716| 
	.dwpsn	file "src/csl_i2c.c",line 719,column 5,is_stmt
        MOV #-194, T0 ; |719| 
        B $C$L65  ; |719| 
                                        ; branch occurs ; |719| 
$C$L39:    
	.dwpsn	file "src/csl_i2c.c",line 722,column 4,is_stmt
        CMP *SP(#7) == #1, TC1 ; |722| 
        BCC $C$L40,!TC1 ; |722| 
                                        ; branchcc occurs ; |722| 
	.dwpsn	file "src/csl_i2c.c",line 725,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #28, T0 ; |725| 
        MOV *AR3, AR3 ; |725| 
        MOV port(*AR3(T0)), AR1 ; |725| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |725| 
        AND #0xfc00, AR1, AR2 ; |725| 
        MOV *SP(#3), AR1 ; |725| 
        AND #0x03ff, AR1, AR1 ; |725| 
        OR AR2, AR1 ; |725| 
        MOV AR1, port(*AR3(T0)) ; |725| 
	.dwpsn	file "src/csl_i2c.c",line 728,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |728| 
        MOV *AR3, AR3 ; |728| 
        MOV port(*AR3(T0)), AR1 ; |728| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |728| 
        BCLR @#10, AR1 ; |728| 
        BSET @#10, AR1 ; |728| 
        MOV AR1, port(*AR3(T0)) ; |728| 
	.dwpsn	file "src/csl_i2c.c",line 731,column 5,is_stmt
        MOV #256, AR2 ; |731| 
        MOV *SP(#8), AR1 ; |731| 
        AND #0x0100, AR1, AR1 ; |731| 
        CMPU AR1 != AR2, TC1 ; |731| 
        BCC $C$L41,TC1 ; |731| 
                                        ; branchcc occurs ; |731| 
	.dwpsn	file "src/csl_i2c.c",line 733,column 6,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |733| 
        MOV port(*AR3(T0)), AR1 ; |733| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |733| 
        BCLR @#13, AR1 ; |733| 
        BSET @#13, AR1 ; |733| 
        MOV AR1, port(*AR3(T0)) ; |733| 
	.dwpsn	file "src/csl_i2c.c",line 735,column 4,is_stmt
        B $C$L41  ; |735| 
                                        ; branch occurs ; |735| 
$C$L40:    
	.dwpsn	file "src/csl_i2c.c",line 739,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |739| 
        MOV *AR3, AR3 ; |739| 
        MOV port(*AR3(T0)), AR1 ; |739| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |739| 
        BCLR @#10, AR1 ; |739| 
        MOV AR1, port(*AR3(T0)) ; |739| 
$C$L41:    
	.dwpsn	file "src/csl_i2c.c",line 743,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |743| 
        MOV port(*AR3(T0)), AR1 ; |743| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |743| 
        BCLR @#9, AR1 ; |743| 
        BSET @#9, AR1 ; |743| 
        MOV AR1, port(*AR3(T0)) ; |743| 
	.dwpsn	file "src/csl_i2c.c",line 746,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #20, T0 ; |746| 
        MOV *AR3, AR3 ; |746| 
        MOV port(*AR3(T0)), AR1 ; |746| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |746| 
        MOV *SP(#6), AR1 ; |746| 
        OR #0x0000, AR1, AR1 ; |746| 
        MOV AR1, port(*AR3(T0)) ; |746| 
	.dwpsn	file "src/csl_i2c.c",line 748,column 8,is_stmt
        MOV #0, *SP(#10) ; |748| 
	.dwpsn	file "src/csl_i2c.c",line 748,column 23,is_stmt
        MOV *SP(#10), AR2 ; |748| 
        MOV *SP(#6), AR1 ; |748| 
        CMPU AR2 >= AR1, TC1 ; |748| 
        BCC $C$L49,TC1 ; |748| 
                                        ; branchcc occurs ; |748| 
$C$L42:    
$C$DW$L$_I2C_read$18$B:
	.dwpsn	file "src/csl_i2c.c",line 751,column 9,is_stmt
        MOV #0, *SP(#9) ; |751| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 751,column 21,is_stmt
        MOV *SP(#14), AR1 ; |751| 
        MOV *SP(#9), AR2 ; |751| 
        CMPU AR2 >= AR1, TC1 ; |751| 
        BCC $C$L44,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
$C$DW$L$_I2C_read$18$E:
$C$L43:    
$C$DW$L$_I2C_read$19$B:
	.dwpsn	file "src/csl_i2c.c",line 753,column 6,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |753| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |753| 
        AND #0x0010, AR1, AC0 ; |753| 
        SFTS AC0, #-4, AC0 ; |753| 
        MOV AC0, *SP(#11) ; |753| 
	.dwpsn	file "src/csl_i2c.c",line 755,column 6,is_stmt
        CMP *SP(#11) == #1, TC1 ; |755| 
        BCC $C$L44,TC1 ; |755| 
                                        ; branchcc occurs ; |755| 
$C$DW$L$_I2C_read$19$E:
$C$DW$L$_I2C_read$20$B:
	.dwpsn	file "src/csl_i2c.c",line 757,column 7,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 751,column 39,is_stmt
        ADD #1, *SP(#9) ; |751| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 751,column 21,is_stmt
        MOV *SP(#14), AR1 ; |751| 
        MOV *SP(#9), AR2 ; |751| 
        CMPU AR2 < AR1, TC1 ; |751| 
        BCC $C$L43,TC1 ; |751| 
                                        ; branchcc occurs ; |751| 
$C$DW$L$_I2C_read$20$E:
$C$L44:    
$C$DW$L$_I2C_read$21$B:
	.dwpsn	file "src/csl_i2c.c",line 761,column 5,is_stmt
        MOV *SP(#14), AR1 ; |761| 
        MOV *SP(#9), AR2 ; |761| 
        CMPU AR2 < AR1, TC1 ; |761| 
        BCC $C$L45,TC1 ; |761| 
                                        ; branchcc occurs ; |761| 
$C$DW$L$_I2C_read$21$E:
	.dwpsn	file "src/csl_i2c.c",line 763,column 6,is_stmt
        MOV #-200, T0 ; |763| 
        B $C$L65  ; |763| 
                                        ; branch occurs ; |763| 
$C$L45:    
$C$DW$L$_I2C_read$23$B:
	.dwpsn	file "src/csl_i2c.c",line 767,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3+, AR1 ; |767| 
        MOV XAR3, dbl(*SP(#4))
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #32, T0 ; |767| 
        MOV *AR3, AR3 ; |767| 
        MOV port(*AR3(T0)), AR2 ; |767| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |767| 
        AND #0x00ff, AR1, AR1 ; |767| 
        AND #0xff00, AR2, AR2 ; |767| 
        OR AR2, AR1 ; |767| 
        MOV AR1, port(*AR3(T0)) ; |767| 
	.dwpsn	file "src/csl_i2c.c",line 769,column 9,is_stmt
        MOV #0, *SP(#9) ; |769| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 769,column 21,is_stmt
        MOV *SP(#14), AR1 ; |769| 
        MOV *SP(#9), AR2 ; |769| 
        CMPU AR2 >= AR1, TC1 ; |769| 
        BCC $C$L47,TC1 ; |769| 
                                        ; branchcc occurs ; |769| 
$C$DW$L$_I2C_read$23$E:
$C$L46:    
$C$DW$L$_I2C_read$24$B:
	.dwpsn	file "src/csl_i2c.c",line 772,column 6,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |772| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |772| 
        AND #0x0002, AR1, AR1 ; |772| 
        SFTL AR1, #-1 ; |772| 
        MOV AR1, *SP(#11) ; |772| 
	.dwpsn	file "src/csl_i2c.c",line 774,column 6,is_stmt
        BCC $C$L47,AR1 == #0 ; |774| 
                                        ; branchcc occurs ; |774| 
$C$DW$L$_I2C_read$24$E:
$C$DW$L$_I2C_read$25$B:
	.dwpsn	file "src/csl_i2c.c",line 776,column 7,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 769,column 39,is_stmt
        ADD #1, *SP(#9) ; |769| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 769,column 21,is_stmt
        MOV *SP(#14), AR1 ; |769| 
        MOV *SP(#9), AR2 ; |769| 
        CMPU AR2 < AR1, TC1 ; |769| 
        BCC $C$L46,TC1 ; |769| 
                                        ; branchcc occurs ; |769| 
$C$DW$L$_I2C_read$25$E:
$C$L47:    
$C$DW$L$_I2C_read$26$B:
	.dwpsn	file "src/csl_i2c.c",line 780,column 5,is_stmt
        MOV *SP(#14), AR1 ; |780| 
        MOV *SP(#9), AR2 ; |780| 
        CMPU AR2 < AR1, TC1 ; |780| 
        BCC $C$L48,TC1 ; |780| 
                                        ; branchcc occurs ; |780| 
$C$DW$L$_I2C_read$26$E:
	.dwpsn	file "src/csl_i2c.c",line 782,column 6,is_stmt
        MOV #-196, T0 ; |782| 
        B $C$L65  ; |782| 
                                        ; branch occurs ; |782| 
$C$L48:    
$C$DW$L$_I2C_read$28$B:
	.dwpsn	file "src/csl_i2c.c",line 748,column 50,is_stmt
        ADD #1, *SP(#10) ; |748| 
	.dwpsn	file "src/csl_i2c.c",line 748,column 23,is_stmt
        MOV *SP(#6), AR1 ; |748| 
        MOV *SP(#10), AR2 ; |748| 
        CMPU AR2 < AR1, TC1 ; |748| 
        BCC $C$L42,TC1 ; |748| 
                                        ; branchcc occurs ; |748| 
$C$DW$L$_I2C_read$28$E:
$C$L49:    
	.dwpsn	file "src/csl_i2c.c",line 786,column 8,is_stmt
        MOV #0, *SP(#9) ; |786| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 786,column 20,is_stmt
        MOV *SP(#14), AR1 ; |786| 
        MOV *SP(#9), AR2 ; |786| 
        CMPU AR2 >= AR1, TC1 ; |786| 
        BCC $C$L51,TC1 ; |786| 
                                        ; branchcc occurs ; |786| 
$C$L50:    
$C$DW$L$_I2C_read$30$B:
	.dwpsn	file "src/csl_i2c.c",line 786,column 38,is_stmt
        ADD #1, *SP(#9) ; |786| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 786,column 20,is_stmt
        MOV *SP(#14), AR1 ; |786| 
        MOV *SP(#9), AR2 ; |786| 
        CMPU AR2 < AR1, TC1 ; |786| 
        BCC $C$L50,TC1 ; |786| 
                                        ; branchcc occurs ; |786| 
$C$DW$L$_I2C_read$30$E:
$C$L51:    
	.dwpsn	file "src/csl_i2c.c",line 790,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |790| 
        MOV *AR3, AR3 ; |790| 
        MOV port(*AR3(T0)), AR1 ; |790| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |790| 
        BCLR @#9, AR1 ; |790| 
        MOV AR1, port(*AR3(T0)) ; |790| 
	.dwpsn	file "src/csl_i2c.c",line 793,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #20, T0 ; |793| 
        MOV *AR3, AR3 ; |793| 
        MOV port(*AR3(T0)), AR1 ; |793| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |793| 
        MOV *SP(#2), AR1 ; |793| 
        OR #0x0000, AR1, AR1 ; |793| 
        MOV AR1, port(*AR3(T0)) ; |793| 
	.dwpsn	file "src/csl_i2c.c",line 795,column 3,is_stmt
        CMP *SP(#7) == #1, TC1 ; |795| 
        BCC $C$L52,!TC1 ; |795| 
                                        ; branchcc occurs ; |795| 
	.dwpsn	file "src/csl_i2c.c",line 798,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #28, T0 ; |798| 
        MOV *AR3, AR3 ; |798| 
        MOV port(*AR3(T0)), AR1 ; |798| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |798| 
        AND #0xfc00, AR1, AR2 ; |798| 
        MOV *SP(#3), AR1 ; |798| 
        AND #0x03ff, AR1, AR1 ; |798| 
        OR AR2, AR1 ; |798| 
        MOV AR1, port(*AR3(T0)) ; |798| 
	.dwpsn	file "src/csl_i2c.c",line 801,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |801| 
        MOV *AR3, AR3 ; |801| 
        MOV port(*AR3(T0)), AR1 ; |801| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |801| 
        BCLR @#10, AR1 ; |801| 
        BSET @#10, AR1 ; |801| 
        MOV AR1, port(*AR3(T0)) ; |801| 
	.dwpsn	file "src/csl_i2c.c",line 804,column 4,is_stmt
        MOV #256, AR2 ; |804| 
        MOV *SP(#8), AR1 ; |804| 
        AND #0x0100, AR1, AR1 ; |804| 
        CMPU AR1 != AR2, TC1 ; |804| 
        BCC $C$L53,TC1 ; |804| 
                                        ; branchcc occurs ; |804| 
	.dwpsn	file "src/csl_i2c.c",line 806,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |806| 
        MOV port(*AR3(T0)), AR1 ; |806| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |806| 
        BCLR @#13, AR1 ; |806| 
        BSET @#13, AR1 ; |806| 
        MOV AR1, port(*AR3(T0)) ; |806| 
	.dwpsn	file "src/csl_i2c.c",line 808,column 3,is_stmt
        B $C$L53  ; |808| 
                                        ; branch occurs ; |808| 
$C$L52:    
	.dwpsn	file "src/csl_i2c.c",line 812,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |812| 
        MOV *AR3, AR3 ; |812| 
        MOV port(*AR3(T0)), AR1 ; |812| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |812| 
        BCLR @#10, AR1 ; |812| 
        MOV AR1, port(*AR3(T0)) ; |812| 
$C$L53:    
	.dwpsn	file "src/csl_i2c.c",line 815,column 3,is_stmt
        CMP *SP(#15) == #1, TC1 ; |815| 
        BCC $C$L56,!TC1 ; |815| 
                                        ; branchcc occurs ; |815| 
	.dwpsn	file "src/csl_i2c.c",line 818,column 8,is_stmt
        MOV #0, *SP(#9) ; |818| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 818,column 20,is_stmt
        MOV *SP(#14), AR1 ; |818| 
        MOV *SP(#9), AR2 ; |818| 
        CMPU AR2 >= AR1, TC1 ; |818| 
        BCC $C$L55,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
$C$L54:    
$C$DW$L$_I2C_read$37$B:
	.dwpsn	file "src/csl_i2c.c",line 820,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |820| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |820| 
        AND #0x1000, AR1, AC0 ; |820| 
        SFTS AC0, #-12, AC0 ; |820| 
        MOV AC0, *SP(#11) ; |820| 
	.dwpsn	file "src/csl_i2c.c",line 821,column 5,is_stmt
        MOV AC0, AR1
        BCC $C$L55,AR1 == #0 ; |821| 
                                        ; branchcc occurs ; |821| 
$C$DW$L$_I2C_read$37$E:
$C$DW$L$_I2C_read$38$B:
	.dwpsn	file "src/csl_i2c.c",line 823,column 6,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 818,column 38,is_stmt
        ADD #1, *SP(#9) ; |818| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 818,column 20,is_stmt
        MOV *SP(#14), AR1 ; |818| 
        MOV *SP(#9), AR2 ; |818| 
        CMPU AR2 < AR1, TC1 ; |818| 
        BCC $C$L54,TC1 ; |818| 
                                        ; branchcc occurs ; |818| 
$C$DW$L$_I2C_read$38$E:
$C$L55:    
	.dwpsn	file "src/csl_i2c.c",line 827,column 4,is_stmt
        MOV *SP(#14), AR1 ; |827| 
        MOV *SP(#9), AR2 ; |827| 
        CMPU AR2 < AR1, TC1 ; |827| 
        BCC $C$L56,TC1 ; |827| 
                                        ; branchcc occurs ; |827| 
	.dwpsn	file "src/csl_i2c.c",line 830,column 5,is_stmt
        MOV #-194, T0 ; |830| 
        B $C$L65  ; |830| 
                                        ; branch occurs ; |830| 
$C$L56:    
	.dwpsn	file "src/csl_i2c.c",line 834,column 7,is_stmt
        MOV #0, *SP(#10) ; |834| 
	.dwpsn	file "src/csl_i2c.c",line 834,column 22,is_stmt
        MOV *SP(#2), AR1 ; |834| 
        MOV *SP(#10), AR2 ; |834| 
        CMPU AR2 >= AR1, TC1 ; |834| 
        BCC $C$L63,TC1 ; |834| 
                                        ; branchcc occurs ; |834| 
$C$L57:    
$C$DW$L$_I2C_read$42$B:
	.dwpsn	file "src/csl_i2c.c",line 837,column 8,is_stmt
        MOV #0, *SP(#9) ; |837| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 837,column 20,is_stmt
        MOV *SP(#14), AR1 ; |837| 
        MOV *SP(#9), AR2 ; |837| 
        CMPU AR2 >= AR1, TC1 ; |837| 
        BCC $C$L59,TC1 ; |837| 
                                        ; branchcc occurs ; |837| 
$C$DW$L$_I2C_read$42$E:
$C$L58:    
$C$DW$L$_I2C_read$43$B:
	.dwpsn	file "src/csl_i2c.c",line 839,column 5,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |839| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |839| 
        AND #0x0008, AR1, AC0 ; |839| 
        SFTS AC0, #-3, AC0 ; |839| 
        MOV AC0, *SP(#11) ; |839| 
	.dwpsn	file "src/csl_i2c.c",line 841,column 5,is_stmt
        CMP *SP(#11) == #1, TC1 ; |841| 
        BCC $C$L59,TC1 ; |841| 
                                        ; branchcc occurs ; |841| 
$C$DW$L$_I2C_read$43$E:
$C$DW$L$_I2C_read$44$B:
	.dwpsn	file "src/csl_i2c.c",line 843,column 6,is_stmt
	.dwpsn	file "src/csl_i2c.c",line 837,column 38,is_stmt
        ADD #1, *SP(#9) ; |837| 
        NOP
        NOP
	.dwpsn	file "src/csl_i2c.c",line 837,column 20,is_stmt
        MOV *SP(#14), AR1 ; |837| 
        MOV *SP(#9), AR2 ; |837| 
        CMPU AR2 < AR1, TC1 ; |837| 
        BCC $C$L58,TC1 ; |837| 
                                        ; branchcc occurs ; |837| 
$C$DW$L$_I2C_read$44$E:
$C$L59:    
$C$DW$L$_I2C_read$45$B:
	.dwpsn	file "src/csl_i2c.c",line 847,column 4,is_stmt
        MOV *SP(#14), AR1 ; |847| 
        MOV *SP(#9), AR2 ; |847| 
        CMPU AR2 < AR1, TC1 ; |847| 
        BCC $C$L60,TC1 ; |847| 
                                        ; branchcc occurs ; |847| 
$C$DW$L$_I2C_read$45$E:
	.dwpsn	file "src/csl_i2c.c",line 849,column 5,is_stmt
        MOV #-200, T0 ; |849| 
        B $C$L65  ; |849| 
                                        ; branch occurs ; |849| 
$C$L60:    
$C$DW$L$_I2C_read$47$B:
	.dwpsn	file "src/csl_i2c.c",line 853,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR2
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#0))
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #24, T0 ; |853| 
        MOV *AR3, AR3 ; |853| 
        MOV uns(low_byte(port(*AR3(T0)))), AR1 ; |853| 
        MOV AR1, *AR2 ; |853| 
	.dwpsn	file "src/csl_i2c.c",line 856,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |856| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |856| 
        AND #0x0800, AR1, AC0 ; |856| 
        SFTS AC0, #-11, AC0 ; |856| 
        MOV AC0, *SP(#11) ; |856| 
	.dwpsn	file "src/csl_i2c.c",line 857,column 4,is_stmt
        CMP *SP(#11) == #1, TC1 ; |857| 
        BCC $C$L61,!TC1 ; |857| 
                                        ; branchcc occurs ; |857| 
$C$DW$L$_I2C_read$47$E:
	.dwpsn	file "src/csl_i2c.c",line 859,column 5,is_stmt
        MOV #-198, T0 ; |859| 
        B $C$L65  ; |859| 
                                        ; branch occurs ; |859| 
$C$L61:    
$C$DW$L$_I2C_read$49$B:
	.dwpsn	file "src/csl_i2c.c",line 834,column 46,is_stmt
        ADD #1, *SP(#10) ; |834| 
	.dwpsn	file "src/csl_i2c.c",line 834,column 22,is_stmt
        MOV *SP(#2), AR1 ; |834| 
        MOV *SP(#10), AR2 ; |834| 
        CMPU AR2 < AR1, TC1 ; |834| 
        BCC $C$L57,TC1 ; |834| 
                                        ; branchcc occurs ; |834| 
$C$DW$L$_I2C_read$49$E:
	.dwpsn	file "src/csl_i2c.c",line 862,column 2,is_stmt
        B $C$L63  ; |862| 
                                        ; branch occurs ; |862| 
$C$L62:    
	.dwpsn	file "src/csl_i2c.c",line 865,column 3,is_stmt
        MOV #-6, T0
        B $C$L65  ; |865| 
                                        ; branch occurs ; |865| 
$C$L63:    
	.dwpsn	file "src/csl_i2c.c",line 869,column 2,is_stmt
        MOV *SP(#8), AR1 ; |869| 
        MOV #512, AR2 ; |869| 
        AND #0x0200, AR1, AR1 ; |869| 
        CMPU AR1 != AR2, TC1 ; |869| 
        BCC $C$L64,TC1 ; |869| 
                                        ; branchcc occurs ; |869| 
	.dwpsn	file "src/csl_i2c.c",line 871,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #36, T0 ; |871| 
        MOV *AR3, AR3 ; |871| 
        MOV port(*AR3(T0)), AR1 ; |871| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |871| 
        BCLR @#11, AR1 ; |871| 
        BSET @#11, AR1 ; |871| 
        MOV AR1, port(*AR3(T0)) ; |871| 
$C$L64:    
	.dwpsn	file "src/csl_i2c.c",line 874,column 2,is_stmt
        MOV #0, T0
$C$L65:    
	.dwpsn	file "src/csl_i2c.c",line 875,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L57:1:1714639438")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x342)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x35d)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_I2C_read$42$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_I2C_read$42$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_I2C_read$45$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_I2C_read$45$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_I2C_read$47$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_I2C_read$47$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_I2C_read$49$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_I2C_read$49$E)

$C$DW$91	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$91, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L58:2:1714639438")
	.dwattr $C$DW$91, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0x345)
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x34d)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_I2C_read$43$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_I2C_read$43$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_I2C_read$44$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_I2C_read$44$E)
	.dwendtag $C$DW$91

	.dwendtag $C$DW$86


$C$DW$94	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$94, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L54:1:1714639438")
	.dwattr $C$DW$94, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x332)
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x339)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_I2C_read$37$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_I2C_read$37$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_I2C_read$38$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_I2C_read$38$E)
	.dwendtag $C$DW$94


$C$DW$97	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$97, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L50:1:1714639438")
	.dwattr $C$DW$97, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x312)
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x312)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_I2C_read$30$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_I2C_read$30$E)
	.dwendtag $C$DW$97


$C$DW$99	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$99, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L42:1:1714639438")
	.dwattr $C$DW$99, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x2ec)
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x310)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_I2C_read$18$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_I2C_read$18$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_I2C_read$21$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_I2C_read$21$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_I2C_read$23$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_I2C_read$23$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_I2C_read$26$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_I2C_read$26$E)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_I2C_read$28$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_I2C_read$28$E)

$C$DW$105	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$105, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L43:2:1714639438")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x2ef)
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x2f7)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_I2C_read$19$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_I2C_read$19$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_I2C_read$20$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_I2C_read$20$E)
	.dwendtag $C$DW$105


$C$DW$108	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$108, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L46:2:1714639438")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x301)
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x30a)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_I2C_read$24$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_I2C_read$24$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_I2C_read$25$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_I2C_read$25$E)
	.dwendtag $C$DW$108

	.dwendtag $C$DW$99


$C$DW$111	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$111, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2c.asm:$C$L37:1:1714639438")
	.dwattr $C$DW$111, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x2c3)
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x2ca)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_I2C_read$9$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_I2C_read$9$E)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_I2C_read$10$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_I2C_read$10$E)
	.dwendtag $C$DW$111

	.dwattr $C$DW$64, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x36b)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.global	_I2C_eventEnable

$C$DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_eventEnable")
	.dwattr $C$DW$114, DW_AT_low_pc(_I2C_eventEnable)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_I2C_eventEnable")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$114, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x393)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 916,column 1,is_stmt,address _I2C_eventEnable

	.dwfde $C$DW$CIE, _I2C_eventEnable
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cEvent")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_i2cEvent")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2C_eventEnable                                              *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_eventEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("i2cEvent")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_i2cEvent")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |916| 
	.dwpsn	file "src/csl_i2c.c",line 919,column 2,is_stmt
        MOV #0, *SP(#1) ; |919| 
	.dwpsn	file "src/csl_i2c.c",line 921,column 2,is_stmt
        B $C$L74  ; |921| 
                                        ; branch occurs ; |921| 
$C$L66:    
	.dwpsn	file "src/csl_i2c.c",line 925,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |925| 
        MOV port(*AR3(short(#4))), AR1 ; |925| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |925| 
        BCLR @#0, AR1 ; |925| 
        BSET @#0, AR1 ; |925| 
        MOV AR1, port(*AR3(short(#4))) ; |925| 
	.dwpsn	file "src/csl_i2c.c",line 926,column 9,is_stmt
        B $C$L76  ; |926| 
                                        ; branch occurs ; |926| 
$C$L67:    
	.dwpsn	file "src/csl_i2c.c",line 930,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |930| 
        MOV port(*AR3(short(#4))), AR1 ; |930| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |930| 
        BCLR @#1, AR1 ; |930| 
        BSET @#1, AR1 ; |930| 
        MOV AR1, port(*AR3(short(#4))) ; |930| 
	.dwpsn	file "src/csl_i2c.c",line 931,column 9,is_stmt
        B $C$L76  ; |931| 
                                        ; branch occurs ; |931| 
$C$L68:    
	.dwpsn	file "src/csl_i2c.c",line 935,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |935| 
        MOV port(*AR3(short(#4))), AR1 ; |935| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |935| 
        BCLR @#2, AR1 ; |935| 
        BSET @#2, AR1 ; |935| 
        MOV AR1, port(*AR3(short(#4))) ; |935| 
	.dwpsn	file "src/csl_i2c.c",line 936,column 9,is_stmt
        B $C$L76  ; |936| 
                                        ; branch occurs ; |936| 
$C$L69:    
	.dwpsn	file "src/csl_i2c.c",line 940,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |940| 
        MOV port(*AR3(short(#4))), AR1 ; |940| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |940| 
        BCLR @#3, AR1 ; |940| 
        BSET @#3, AR1 ; |940| 
        MOV AR1, port(*AR3(short(#4))) ; |940| 
	.dwpsn	file "src/csl_i2c.c",line 941,column 9,is_stmt
        B $C$L76  ; |941| 
                                        ; branch occurs ; |941| 
$C$L70:    
	.dwpsn	file "src/csl_i2c.c",line 945,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |945| 
        MOV port(*AR3(short(#4))), AR1 ; |945| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |945| 
        BCLR @#4, AR1 ; |945| 
        BSET @#4, AR1 ; |945| 
        MOV AR1, port(*AR3(short(#4))) ; |945| 
	.dwpsn	file "src/csl_i2c.c",line 946,column 9,is_stmt
        B $C$L76  ; |946| 
                                        ; branch occurs ; |946| 
$C$L71:    
	.dwpsn	file "src/csl_i2c.c",line 950,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |950| 
        MOV port(*AR3(short(#4))), AR1 ; |950| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |950| 
        BCLR @#5, AR1 ; |950| 
        BSET @#5, AR1 ; |950| 
        MOV AR1, port(*AR3(short(#4))) ; |950| 
	.dwpsn	file "src/csl_i2c.c",line 951,column 9,is_stmt
        B $C$L76  ; |951| 
                                        ; branch occurs ; |951| 
$C$L72:    
	.dwpsn	file "src/csl_i2c.c",line 955,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |955| 
        MOV port(*AR3(short(#4))), AR1 ; |955| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |955| 
        BCLR @#6, AR1 ; |955| 
        BSET @#6, AR1 ; |955| 
        MOV AR1, port(*AR3(short(#4))) ; |955| 
	.dwpsn	file "src/csl_i2c.c",line 956,column 9,is_stmt
        B $C$L76  ; |956| 
                                        ; branch occurs ; |956| 
$C$L73:    
	.dwpsn	file "src/csl_i2c.c",line 959,column 4,is_stmt
        MOV #-6, *SP(#1) ; |959| 
	.dwpsn	file "src/csl_i2c.c",line 960,column 9,is_stmt
        B $C$L76  ; |960| 
                                        ; branch occurs ; |960| 
$C$L74:    
	.dwpsn	file "src/csl_i2c.c",line 921,column 2,is_stmt

        MOV *SP(#0), AR1 ; |921| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |921| 
        BCC $C$L75,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L69,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        BCC $C$L66,AR1 == #0 ; |921| 
                                        ; branchcc occurs ; |921| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L67,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L68,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        B $C$L73  ; |921| 
                                        ; branch occurs ; |921| 
$C$L75:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L70,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L71,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |921| 
        BCC $C$L72,TC1 ; |921| 
                                        ; branchcc occurs ; |921| 
        B $C$L73  ; |921| 
                                        ; branch occurs ; |921| 
$C$L76:    
	.dwpsn	file "src/csl_i2c.c",line 963,column 2,is_stmt
        MOV *SP(#1), T0 ; |963| 
	.dwpsn	file "src/csl_i2c.c",line 964,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$114, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x3c4)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.global	_I2C_eventDisable

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_eventDisable")
	.dwattr $C$DW$119, DW_AT_low_pc(_I2C_eventDisable)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_I2C_eventDisable")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$119, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x3ef)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 1008,column 1,is_stmt,address _I2C_eventDisable

	.dwfde $C$DW$CIE, _I2C_eventDisable
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cEvent")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_i2cEvent")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2C_eventDisable                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_eventDisable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("i2cEvent")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_i2cEvent")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 1]
        MOV T0, *SP(#0) ; |1008| 
	.dwpsn	file "src/csl_i2c.c",line 1011,column 2,is_stmt
        MOV #0, *SP(#1) ; |1011| 
	.dwpsn	file "src/csl_i2c.c",line 1013,column 2,is_stmt
        B $C$L85  ; |1013| 
                                        ; branch occurs ; |1013| 
$C$L77:    
	.dwpsn	file "src/csl_i2c.c",line 1017,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1017| 
        MOV port(*AR3(short(#4))), AR1 ; |1017| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1017| 
        BCLR @#0, AR1 ; |1017| 
        MOV AR1, port(*AR3(short(#4))) ; |1017| 
	.dwpsn	file "src/csl_i2c.c",line 1018,column 9,is_stmt
        B $C$L87  ; |1018| 
                                        ; branch occurs ; |1018| 
$C$L78:    
	.dwpsn	file "src/csl_i2c.c",line 1022,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1022| 
        MOV port(*AR3(short(#4))), AR1 ; |1022| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1022| 
        BCLR @#1, AR1 ; |1022| 
        MOV AR1, port(*AR3(short(#4))) ; |1022| 
	.dwpsn	file "src/csl_i2c.c",line 1023,column 9,is_stmt
        B $C$L87  ; |1023| 
                                        ; branch occurs ; |1023| 
$C$L79:    
	.dwpsn	file "src/csl_i2c.c",line 1027,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1027| 
        MOV port(*AR3(short(#4))), AR1 ; |1027| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1027| 
        BCLR @#2, AR1 ; |1027| 
        MOV AR1, port(*AR3(short(#4))) ; |1027| 
	.dwpsn	file "src/csl_i2c.c",line 1028,column 9,is_stmt
        B $C$L87  ; |1028| 
                                        ; branch occurs ; |1028| 
$C$L80:    
	.dwpsn	file "src/csl_i2c.c",line 1032,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1032| 
        MOV port(*AR3(short(#4))), AR1 ; |1032| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1032| 
        BCLR @#3, AR1 ; |1032| 
        MOV AR1, port(*AR3(short(#4))) ; |1032| 
	.dwpsn	file "src/csl_i2c.c",line 1033,column 9,is_stmt
        B $C$L87  ; |1033| 
                                        ; branch occurs ; |1033| 
$C$L81:    
	.dwpsn	file "src/csl_i2c.c",line 1037,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1037| 
        MOV port(*AR3(short(#4))), AR1 ; |1037| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1037| 
        BCLR @#4, AR1 ; |1037| 
        MOV AR1, port(*AR3(short(#4))) ; |1037| 
	.dwpsn	file "src/csl_i2c.c",line 1038,column 9,is_stmt
        B $C$L87  ; |1038| 
                                        ; branch occurs ; |1038| 
$C$L82:    
	.dwpsn	file "src/csl_i2c.c",line 1042,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1042| 
        MOV port(*AR3(short(#4))), AR1 ; |1042| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1042| 
        BCLR @#5, AR1 ; |1042| 
        MOV AR1, port(*AR3(short(#4))) ; |1042| 
	.dwpsn	file "src/csl_i2c.c",line 1043,column 9,is_stmt
        B $C$L87  ; |1043| 
                                        ; branch occurs ; |1043| 
$C$L83:    
	.dwpsn	file "src/csl_i2c.c",line 1047,column 4,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1047| 
        MOV port(*AR3(short(#4))), AR1 ; |1047| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV *AR3, AR3 ; |1047| 
        BCLR @#6, AR1 ; |1047| 
        MOV AR1, port(*AR3(short(#4))) ; |1047| 
	.dwpsn	file "src/csl_i2c.c",line 1048,column 9,is_stmt
        B $C$L87  ; |1048| 
                                        ; branch occurs ; |1048| 
$C$L84:    
	.dwpsn	file "src/csl_i2c.c",line 1051,column 4,is_stmt
        MOV #-6, *SP(#1) ; |1051| 
	.dwpsn	file "src/csl_i2c.c",line 1052,column 9,is_stmt
        B $C$L87  ; |1052| 
                                        ; branch occurs ; |1052| 
$C$L85:    
	.dwpsn	file "src/csl_i2c.c",line 1013,column 2,is_stmt

        MOV *SP(#0), AR1 ; |1013| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |1013| 
        BCC $C$L86,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L80,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        BCC $C$L77,AR1 == #0 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L78,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L79,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        B $C$L84  ; |1013| 
                                        ; branch occurs ; |1013| 
$C$L86:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L81,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L82,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        MOV #6, AR2
        CMP AR1 == AR2, TC1 ; |1013| 
        BCC $C$L83,TC1 ; |1013| 
                                        ; branchcc occurs ; |1013| 
        B $C$L84  ; |1013| 
                                        ; branch occurs ; |1013| 
$C$L87:    
	.dwpsn	file "src/csl_i2c.c",line 1055,column 2,is_stmt
        MOV *SP(#1), T0 ; |1055| 
	.dwpsn	file "src/csl_i2c.c",line 1056,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$119, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x420)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.global	_I2C_setCallback

$C$DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_setCallback")
	.dwattr $C$DW$124, DW_AT_low_pc(_I2C_setCallback)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_I2C_setCallback")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$124, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x456)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2c.c",line 1111,column 1,is_stmt,address _I2C_setCallback

	.dwfde $C$DW$CIE, _I2C_setCallback
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2cIsrAddr")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_i2cIsrAddr")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2C_setCallback                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR2,XAR2,AR3,XAR3,SP,M40,SATA,   *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_setCallback:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("i2cIsrAddr")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_i2cIsrAddr")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2c.c",line 1113,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L88,AC0 == #0 ; |1113| 
                                        ; branchcc occurs ; |1113| 
	.dwpsn	file "src/csl_i2c.c",line 1115,column 3,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV dbl(*SP(#0)), XAR2
        AADD #2, AR3 ; |1115| 
        MOV dbl(*AR2), dbl(*AR3) ; |1115| 
	.dwpsn	file "src/csl_i2c.c",line 1117,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#2))), AC0 ; |1117| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV AC0, dbl(*AR3(short(#4))) ; |1117| 
	.dwpsn	file "src/csl_i2c.c",line 1119,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#4))), AC0 ; |1119| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV AC0, dbl(*AR3(short(#6))) ; |1119| 
	.dwpsn	file "src/csl_i2c.c",line 1121,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(short(#6))), AC0 ; |1121| 
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV AC0, dbl(*AR3(#8)) ; |1121| 
	.dwpsn	file "src/csl_i2c.c",line 1123,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*(#_i2cHandle)), XAR2

        AADD #10, AR2 ; |1123| 
||      AADD #8, AR3 ; |1123| 

        MOV dbl(*AR3), dbl(*AR2) ; |1123| 
	.dwpsn	file "src/csl_i2c.c",line 1125,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*(#_i2cHandle)), XAR2

        AADD #12, AR2 ; |1125| 
||      AADD #10, AR3 ; |1125| 

        MOV dbl(*AR3), dbl(*AR2) ; |1125| 
	.dwpsn	file "src/csl_i2c.c",line 1127,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*(#_i2cHandle)), XAR2

        AADD #14, AR2 ; |1127| 
||      AADD #12, AR3 ; |1127| 

        MOV dbl(*AR3), dbl(*AR2) ; |1127| 
	.dwpsn	file "src/csl_i2c.c",line 1129,column 2,is_stmt
        B $C$L89  ; |1129| 
                                        ; branch occurs ; |1129| 
$C$L88:    
	.dwpsn	file "src/csl_i2c.c",line 1132,column 3,is_stmt
        MOV #-6, T0
        B $C$L90  ; |1132| 
                                        ; branch occurs ; |1132| 
$C$L89:    
	.dwpsn	file "src/csl_i2c.c",line 1135,column 2,is_stmt
        MOV #0, T0
$C$L90:    
	.dwpsn	file "src/csl_i2c.c",line 1136,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$124, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x470)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"
	.global	_I2C_getEventId

$C$DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_getEventId")
	.dwattr $C$DW$128, DW_AT_low_pc(_I2C_getEventId)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_I2C_getEventId")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("src/csl_i2c.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x493)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_i2c.c",line 1172,column 1,is_stmt,address _I2C_getEventId

	.dwfde $C$DW$CIE, _I2C_getEventId
;*******************************************************************************
;* FUNCTION NAME: I2C_getEventId                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,   *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2C_getEventId:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("eventId")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_eventId")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_i2c.c",line 1176,column 2,is_stmt
        MOV dbl(*(#_i2cHandle)), XAR3
        MOV #40, T0 ; |1176| 
        MOV *AR3, AR3 ; |1176| 
        MOV port(*AR3(T0)), AR1 ; |1176| 
        AND #0x0007, AR1, AC0 ; |1176| 
        MOV AC0, *SP(#0) ; |1176| 
	.dwpsn	file "src/csl_i2c.c",line 1178,column 2,is_stmt
        MOV AC0, T0
	.dwpsn	file "src/csl_i2c.c",line 1179,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$128, DW_AT_TI_end_file("src/csl_i2c.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x49b)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__divul
	.global	__remul
	.global	__mpyli

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x39)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("ICOAR")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ICOAR")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$132, DW_AT_name("RSVD0")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("ICIMR")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_ICIMR")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$134, DW_AT_name("RSVD1")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("ICSTR")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_ICSTR")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$136, DW_AT_name("RSVD2")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_name("ICCLKL")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_ICCLKL")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$138, DW_AT_name("RSVD3")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_name("ICCLKH")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ICCLKH")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$140, DW_AT_name("RSVD4")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("ICCNT")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_ICCNT")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$142, DW_AT_name("RSVD5")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("ICDRR")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_ICDRR")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$144, DW_AT_name("RSVD6")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_name("ICSAR")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_ICSAR")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$146, DW_AT_name("RSVD7")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_name("ICDXR")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_ICDXR")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$148, DW_AT_name("RSVD8")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_name("ICMDR")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_ICMDR")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$150, DW_AT_name("RSVD9")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_RSVD9")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("ICIVR")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_ICIVR")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$152, DW_AT_name("RSVD10")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_RSVD10")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("ICEMDR")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_ICEMDR")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$154, DW_AT_name("RSVD11")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_RSVD11")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_name("ICPSC")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_ICPSC")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$156, DW_AT_name("RSVD12")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_RSVD12")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_name("ICPID1")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_ICPID1")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$158, DW_AT_name("RSVD13")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_RSVD13")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$159, DW_AT_name("ICPID2")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_ICPID2")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cRegs")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$160	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$32)
$C$DW$161	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$160)
$C$DW$T$33	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$161)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x10)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cRegsOvly")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x48)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$162, DW_AT_name("EBSR")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$163, DW_AT_name("RSVD0")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_name("PCGCR1")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$165, DW_AT_name("PCGCR2")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$166, DW_AT_name("PSRCR")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_name("PRCR")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$168, DW_AT_name("RSVD1")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_name("TIAFR")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_name("RSVD2")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_name("ODSCR")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("CCR1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$180, DW_AT_name("CCR2")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$181, DW_AT_name("CGCR1")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_name("CGCR2")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_name("CGCR3")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$184, DW_AT_name("CGCR4")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$185, DW_AT_name("CCSSR")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_name("RSVD3")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_name("ECDR")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$188, DW_AT_name("RSVD4")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$189, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_name("RSVD5")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$191, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$192, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$193, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$194, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$195, DW_AT_name("RSVD6")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$196, DW_AT_name("DMAIFR")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$197, DW_AT_name("DMAIER")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$198, DW_AT_name("USBSCR")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$199, DW_AT_name("ESCR")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$200, DW_AT_name("RSVD7")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$201, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$202, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$203, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$205, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$206, DW_AT_name("RSVD8")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$207, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$208, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$209, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$210, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$212, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$213, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$214, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$215	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$36)
$C$DW$216	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$215)
$C$DW$T$37	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$216)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x10)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegsOvly")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_name("CSL_I2cAddrMode")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$217	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_ADDR_7BIT"), DW_AT_const_value(0x00)
$C$DW$218	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_ADDR_10BIT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$42

$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cAddrMode")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_name("CSL_I2cBitCount")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$219	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_8BITS"), DW_AT_const_value(0x00)
$C$DW$220	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_RSVD"), DW_AT_const_value(0x01)
$C$DW$221	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_2BITS"), DW_AT_const_value(0x02)
$C$DW$222	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_3BITS"), DW_AT_const_value(0x03)
$C$DW$223	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_4BITS"), DW_AT_const_value(0x04)
$C$DW$224	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_5BITS"), DW_AT_const_value(0x05)
$C$DW$225	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_6BITS"), DW_AT_const_value(0x06)
$C$DW$226	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_BC_7BITS"), DW_AT_const_value(0x07)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cBitCount")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("CSL_I2cConfig")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x09)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("icoar")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_icoar")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("icimr")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_icimr")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("icclkl")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_icclkl")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("icclkh")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_icclkh")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("iccnt")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_iccnt")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("icsar")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_icsar")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("icmdr")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_icmdr")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("icemdr")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_icemdr")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("icpsc")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_icpsc")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cConfig")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$56	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$56, DW_AT_name("CSL_I2cEvent")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$236	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_AL"), DW_AT_const_value(0x00)
$C$DW$237	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_NACK"), DW_AT_const_value(0x01)
$C$DW$238	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_ARDY"), DW_AT_const_value(0x02)
$C$DW$239	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_ICRRDY"), DW_AT_const_value(0x03)
$C$DW$240	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_ICXRDY"), DW_AT_const_value(0x04)
$C$DW$241	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_SCD"), DW_AT_const_value(0x05)
$C$DW$242	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_EVENT_AAS"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$56

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cEvent")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$48, DW_AT_name("CSL_I2cFreeMode")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$243	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_FREEMODE_DISABLE"), DW_AT_const_value(0x00)
$C$DW$244	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_FREEMODE_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$48

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cFreeMode")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("CSL_I2cIsrAddr")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0e)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$245, DW_AT_name("alAddr")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_alAddr")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$246, DW_AT_name("nackAddr")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_nackAddr")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$247, DW_AT_name("ardyAddr")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_ardyAddr")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$248, DW_AT_name("rrdyAddr")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_rrdyAddr")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$249, DW_AT_name("xrdyAddr")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_xrdyAddr")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$250, DW_AT_name("scdAddr")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_scdAddr")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$251, DW_AT_name("aasAddr")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_aasAddr")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cIsrAddr")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_name("CSL_I2cLoopback")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$252	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_LOOPBACK_DISABLE"), DW_AT_const_value(0x00)
$C$DW$253	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_LOOPBACK_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cLoopback")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("CSL_I2cObj")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x10)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$254, DW_AT_name("i2cRegs")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_i2cRegs")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$255, DW_AT_name("sysCtrlRegs")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_sysCtrlRegs")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$256, DW_AT_name("I2C_isrDispatchTable")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_I2C_isrDispatchTable")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cObj")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x10)
$C$DW$257	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$257, DW_AT_upper_bound(0x00)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x17)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("pI2cHandle")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$50, DW_AT_name("CSL_I2cRepeatMode")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$258	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_REPEATMODE_DISABLE"), DW_AT_const_value(0x00)
$C$DW$259	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_I2C_REPEATMODE_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cRepeatMode")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("CSL_I2cSetup")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x0a)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$260, DW_AT_name("addrMode")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_addrMode")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$261, DW_AT_name("bitCount")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_bitCount")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$262, DW_AT_name("loopBack")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_loopBack")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$263, DW_AT_name("freeMode")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_freeMode")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$264, DW_AT_name("repeatMode")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_repeatMode")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("ownAddr")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_ownAddr")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$266, DW_AT_name("sysInputClk")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_sysInputClk")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$267, DW_AT_name("i2cBusFreq")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_i2cBusFreq")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2cSetup")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x17)

$C$DW$T$28	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2C_EVENT_ISR")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x0e)
$C$DW$268	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$268, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$40

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
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$269	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$269)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$270	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$270, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$21


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x0e)
$C$DW$271	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$271, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$272	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$272, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x05)
$C$DW$273	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$273, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$25

$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x17)
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
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
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

$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg0]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg1]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg2]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg3]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg4]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg5]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg6]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg7]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg8]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg9]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg10]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg11]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg12]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg13]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg14]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg15]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg16]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg17]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg18]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg19]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg20]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg21]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg22]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg23]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg24]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg25]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg26]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg27]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg28]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg29]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg30]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg31]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x20]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x21]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x22]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x23]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x24]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x25]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x26]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x27]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x28]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x29]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x30]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x31]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x32]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x33]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x34]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x35]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x36]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x37]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x38]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x39]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x40]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x41]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x42]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x43]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x44]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x45]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x46]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x47]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x48]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x49]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x50]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x51]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x52]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x53]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x54]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x55]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x56]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x57]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x58]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x59]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

