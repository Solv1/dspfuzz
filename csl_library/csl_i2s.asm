;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:59 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_i2s.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_fsError+0,24
	.field  	0,8
	.field	0,16			; _fsError @ 0

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_ouError+0,24
	.field  	0,8
	.field	0,16			; _ouError @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$1

	.bss	_I2S_InstanceNum,40,0,0
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("I2S_InstanceNum")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_I2S_InstanceNum")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _I2S_InstanceNum]
	.global	_fsError
	.bss	_fsError,1,0,0
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("fsError")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_fsError")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _fsError]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_external
	.global	_ouError
	.bss	_ouError,1,0,0
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("ouError")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_ouError")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _ouError]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_external
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17375OGkITO 
	.sect	".text"
	.global	_I2S_open

$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_open")
	.dwattr $C$DW$6, DW_AT_low_pc(_I2S_open)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_I2S_open")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$6, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x0f)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_i2s.c",line 114,column 1,is_stmt,address _I2S_open

	.dwfde $C$DW$CIE, _I2S_open
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2sInstNum")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_i2sInstNum")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opMode")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg13]
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chType")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_chType")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg16]
;*******************************************************************************
;* FUNCTION NAME: I2S_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1,M40,  *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("i2sInstNum")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_i2sInstNum")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("opMode")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("chType")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_chType")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV AR0, *SP(#2) ; |114| 
        MOV T1, *SP(#1) ; |114| 
        MOV T0, *SP(#0) ; |114| 
	.dwpsn	file "src/csl_i2s.c",line 118,column 2,is_stmt
        MOV #0, AC0 ; |118| 
        MOV AC0, dbl(*SP(#4))
	.dwpsn	file "src/csl_i2s.c",line 126,column 2,is_stmt
        CMP *SP(#0) == #4, TC1 ; |126| 
        BCC $C$L1,!TC1 ; |126| 
                                        ; branchcc occurs ; |126| 
	.dwpsn	file "src/csl_i2s.c",line 128,column 3,is_stmt
        AMOV #0, XAR0 ; |128| 
        B $C$L10  ; |128| 
                                        ; branch occurs ; |128| 
$C$L1:    
	.dwpsn	file "src/csl_i2s.c",line 132,column 2,is_stmt
        MPYMK *SP(#0), #10, AC0 ; |132| 
        MOV AC0, AR1 ; |132| 
        AMOV #_I2S_InstanceNum, XAR3 ; |132| 

        MOV XAR3, dbl(*SP(#4))
||      AADD AR1, AR3 ; |132| 

	.dwpsn	file "src/csl_i2s.c",line 134,column 2,is_stmt

        MOV *SP(#0), AR2 ; |134| 
||      MOV #3, AR3

        CMP AR2 > AR3, TC1 ; |134| 

        BCC $C$L2,TC1 ; |134| 
||      MOV #0, AR1

                                        ; branchcc occurs ; |134| 
        MOV #1, AR1
$C$L2:    
        MOV #0, AR3
        BCC $C$L3,AR2 < #0 ; |134| 
                                        ; branchcc occurs ; |134| 
        MOV #1, AR3
$C$L3:    
        AND AR3, AR1 ; |134| 
        BCC $C$L9,AR1 == #0 ; |134| 
                                        ; branchcc occurs ; |134| 
	.dwpsn	file "src/csl_i2s.c",line 136,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV AR2, AR1
        MOV AR1, *AR3 ; |136| 
	.dwpsn	file "src/csl_i2s.c",line 137,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#2), AR1 ; |137| 
        MOV AR1, *AR3(short(#2)) ; |137| 
	.dwpsn	file "src/csl_i2s.c",line 138,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#1), AR1 ; |138| 
        MOV AR1, *AR3(short(#1)) ; |138| 
	.dwpsn	file "src/csl_i2s.c",line 139,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(#9) ; |139| 
	.dwpsn	file "src/csl_i2s.c",line 141,column 3,is_stmt
        MOV #7168, *SP(#6) ; |141| 
	.dwpsn	file "src/csl_i2s.c",line 147,column 3,is_stmt
        B $C$L8   ; |147| 
                                        ; branch occurs ; |147| 
$C$L4:    
	.dwpsn	file "src/csl_i2s.c",line 150,column 5,is_stmt
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$15, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |150| 
||      MOV #1, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |150| 
	.dwpsn	file "src/csl_i2s.c",line 151,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #10240, *AR3(short(#3)) ; |151| 
	.dwpsn	file "src/csl_i2s.c",line 152,column 5,is_stmt
        MOV *SP(#6), AR3 ; |152| 
        MOV port(*AR3(short(#2))), AR1 ; |152| 
        BCLR @#8, AR1 ; |152| 
        MOV AR1, port(*AR3(short(#2))) ; |152| 
	.dwpsn	file "src/csl_i2s.c",line 156,column 10,is_stmt
        B $C$L9   ; |156| 
                                        ; branch occurs ; |156| 
$C$L5:    
	.dwpsn	file "src/csl_i2s.c",line 159,column 5,is_stmt
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$16, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |159| 
||      MOV #1, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |159| 
	.dwpsn	file "src/csl_i2s.c",line 160,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #10496, *AR3(short(#3)) ; |160| 
	.dwpsn	file "src/csl_i2s.c",line 161,column 5,is_stmt
        MOV *SP(#6), AR3 ; |161| 
        MOV port(*AR3(short(#2))), AR1 ; |161| 
        BCLR @#9, AR1 ; |161| 
        MOV AR1, port(*AR3(short(#2))) ; |161| 
	.dwpsn	file "src/csl_i2s.c",line 165,column 10,is_stmt
        B $C$L9   ; |165| 
                                        ; branch occurs ; |165| 
$C$L6:    
	.dwpsn	file "src/csl_i2s.c",line 168,column 5,is_stmt
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$17, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |168| 
||      MOV #0, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |168| 
	.dwpsn	file "src/csl_i2s.c",line 169,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #10752, *AR3(short(#3)) ; |169| 
	.dwpsn	file "src/csl_i2s.c",line 170,column 5,is_stmt
        MOV *SP(#6), AR3 ; |170| 
        MOV port(*AR3(short(#2))), AR1 ; |170| 
        BCLR @#14, AR1 ; |170| 
        MOV AR1, port(*AR3(short(#2))) ; |170| 
	.dwpsn	file "src/csl_i2s.c",line 174,column 10,is_stmt
        B $C$L9   ; |174| 
                                        ; branch occurs ; |174| 
$C$L7:    
	.dwpsn	file "src/csl_i2s.c",line 176,column 5,is_stmt
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$18, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |176| 
||      MOV #0, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |176| 
	.dwpsn	file "src/csl_i2s.c",line 177,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #11008, *AR3(short(#3)) ; |177| 
	.dwpsn	file "src/csl_i2s.c",line 178,column 5,is_stmt
        MOV *SP(#6), AR3 ; |178| 
        MOV port(*AR3(short(#2))), AR1 ; |178| 
        BCLR @#0, AR1 ; |178| 
        MOV AR1, port(*AR3(short(#2))) ; |178| 
	.dwpsn	file "src/csl_i2s.c",line 182,column 10,is_stmt
        B $C$L9   ; |182| 
                                        ; branch occurs ; |182| 
$C$L8:    
	.dwpsn	file "src/csl_i2s.c",line 147,column 3,is_stmt
        MOV *SP(#0), AR1 ; |147| 
        BCC $C$L4,AR1 == #0 ; |147| 
                                        ; branchcc occurs ; |147| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |147| 
        BCC $C$L5,TC1 ; |147| 
                                        ; branchcc occurs ; |147| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |147| 
        BCC $C$L6,TC1 ; |147| 
                                        ; branchcc occurs ; |147| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |147| 
        BCC $C$L7,TC1 ; |147| 
                                        ; branchcc occurs ; |147| 
$C$L9:    
	.dwpsn	file "src/csl_i2s.c",line 187,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#4)) ; |187| 
	.dwpsn	file "src/csl_i2s.c",line 188,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$L10:    
	.dwpsn	file "src/csl_i2s.c",line 189,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$6, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0xbd)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.global	_I2S_setup

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_setup")
	.dwattr $C$DW$20, DW_AT_low_pc(_I2S_setup)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_I2S_setup")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$20, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_i2s.c",line 235,column 1,is_stmt,address _I2S_setup

	.dwfde $C$DW$CIE, _I2S_setup
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg17]
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2sHwConfig")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_i2sHwConfig")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: I2S_setup                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("i2sHwConfig")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_i2sHwConfig")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("regs")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 238,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |238| 

        CMPU AC1 != AC0, TC1 ; |238| 
        BCC $C$L11,TC1 ; |238| 
                                        ; branchcc occurs ; |238| 
	.dwpsn	file "src/csl_i2s.c",line 240,column 3,is_stmt
        MOV #-5, T0
        B $C$L18  ; |240| 
                                        ; branch occurs ; |240| 
$C$L11:    
	.dwpsn	file "src/csl_i2s.c",line 243,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |243| 
        BCC $C$L12,TC1 ; |243| 
                                        ; branchcc occurs ; |243| 
	.dwpsn	file "src/csl_i2s.c",line 245,column 3,is_stmt
        MOV #-6, T0
        B $C$L18  ; |245| 
                                        ; branch occurs ; |245| 
$C$L12:    
	.dwpsn	file "src/csl_i2s.c",line 248,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#4)), AR1 ; |248| 
||      MOV #1, AR2

        CMPU AR2 == AR1, TC1 ; |248| 
        BCC $C$L17,TC1 ; |248| 
                                        ; branchcc occurs ; |248| 
	.dwpsn	file "src/csl_i2s.c",line 250,column 3,is_stmt
        MOV *AR3(short(#3)), AR1 ; |250| 
        MOV AR1, *SP(#4) ; |250| 
	.dwpsn	file "src/csl_i2s.c",line 252,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#10), AR1 ; |252| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#6)) ; |252| 
	.dwpsn	file "src/csl_i2s.c",line 253,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)), AR1 ; |253| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(#8) ; |253| 
	.dwpsn	file "src/csl_i2s.c",line 254,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |254| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#5)) ; |254| 
	.dwpsn	file "src/csl_i2s.c",line 255,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |255| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#7)) ; |255| 
	.dwpsn	file "src/csl_i2s.c",line 258,column 3,is_stmt
        MOV *SP(#4), AR3 ; |258| 
        MOV port(*AR3), AR1 ; |258| 
        MOV #0, port(*AR3) ; |258| 
	.dwpsn	file "src/csl_i2s.c",line 259,column 3,is_stmt
        MOV *SP(#4), AR3 ; |259| 
        MOV port(*AR3(short(#4))), AR1 ; |259| 
        MOV #0, port(*AR3(short(#4))) ; |259| 
	.dwpsn	file "src/csl_i2s.c",line 267,column 3,is_stmt
        MOV *SP(#4), AR3 ; |267| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |267| 
        MOV #0, port(*AR3(T0)) ; |267| 
	.dwpsn	file "src/csl_i2s.c",line 268,column 3,is_stmt
        MOV *SP(#4), AR3 ; |268| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |268| 
        MOV #0, port(*AR3(T0)) ; |268| 
	.dwpsn	file "src/csl_i2s.c",line 269,column 3,is_stmt
        MOV *SP(#4), AR3 ; |269| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |269| 
        MOV #0, port(*AR3(T0)) ; |269| 
	.dwpsn	file "src/csl_i2s.c",line 270,column 3,is_stmt
        MOV *SP(#4), AR3 ; |270| 
        AMOV #13, T0
        MOV port(*AR3(T0)), AR1 ; |270| 
        MOV #0, port(*AR3(T0)) ; |270| 
	.dwpsn	file "src/csl_i2s.c",line 273,column 3,is_stmt
        MOV #16, T0 ; |273| 
        MOV *SP(#4), AR3 ; |273| 
        MOV port(*AR3(T0)), AR1 ; |273| 
        MOV #0, port(*AR3(T0)) ; |273| 
	.dwpsn	file "src/csl_i2s.c",line 274,column 3,is_stmt
        MOV #20, T0 ; |274| 
        MOV *SP(#4), AR3 ; |274| 
        MOV port(*AR3(T0)), AR1 ; |274| 
        MOV #0, port(*AR3(T0)) ; |274| 
	.dwpsn	file "src/csl_i2s.c",line 282,column 3,is_stmt
        MOV #40, T0 ; |282| 
        MOV *SP(#4), AR3 ; |282| 
        MOV port(*AR3(T0)), AR1 ; |282| 
        MOV #0, port(*AR3(T0)) ; |282| 
	.dwpsn	file "src/csl_i2s.c",line 283,column 3,is_stmt
        MOV #41, T0 ; |283| 
        MOV *SP(#4), AR3 ; |283| 
        MOV port(*AR3(T0)), AR1 ; |283| 
        MOV #0, port(*AR3(T0)) ; |283| 
	.dwpsn	file "src/csl_i2s.c",line 284,column 3,is_stmt
        MOV #44, T0 ; |284| 
        MOV *SP(#4), AR3 ; |284| 
        MOV port(*AR3(T0)), AR1 ; |284| 
        MOV #0, port(*AR3(T0)) ; |284| 
	.dwpsn	file "src/csl_i2s.c",line 285,column 3,is_stmt
        MOV #45, T0 ; |285| 
        MOV *SP(#4), AR3 ; |285| 
        MOV port(*AR3(T0)), AR1 ; |285| 
        MOV #0, port(*AR3(T0)) ; |285| 
	.dwpsn	file "src/csl_i2s.c",line 289,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3 << #12, AC0 ; |289| 
        MOV *SP(#4), AR3 ; |289| 
        AND #0x1000, AC0, AR1 ; |289| 
        MOV port(*AR3), AR2 ; |289| 
        BCLR @#12, AR2 ; |289| 
        OR AR2, AR1 ; |289| 
        MOV AR1, port(*AR3) ; |289| 
	.dwpsn	file "src/csl_i2s.c",line 292,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #11, AC0 ; |292| 
        MOV *SP(#4), AR3 ; |292| 
        AND #0x0800, AC0, AR1 ; |292| 
        MOV port(*AR3), AR2 ; |292| 
        BCLR @#11, AR2 ; |292| 
        OR AR2, AR1 ; |292| 
        MOV AR1, port(*AR3) ; |292| 
	.dwpsn	file "src/csl_i2s.c",line 295,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #10, AC0 ; |295| 
        MOV *SP(#4), AR3 ; |295| 
        AND #0x0400, AC0, AR1 ; |295| 
        MOV port(*AR3), AR2 ; |295| 
        BCLR @#10, AR2 ; |295| 
        OR AR2, AR1 ; |295| 
        MOV AR1, port(*AR3) ; |295| 
	.dwpsn	file "src/csl_i2s.c",line 298,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)) << #9, AC0 ; |298| 
        MOV *SP(#4), AR3 ; |298| 
        AND #0x0200, AC0, AR1 ; |298| 
        MOV port(*AR3), AR2 ; |298| 
        BCLR @#9, AR2 ; |298| 
        OR AR2, AR1 ; |298| 
        MOV AR1, port(*AR3) ; |298| 
	.dwpsn	file "src/csl_i2s.c",line 301,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)) << #8, AC0 ; |301| 
        MOV *SP(#4), AR3 ; |301| 
        AND #0x0100, AC0, AR1 ; |301| 
        MOV port(*AR3), AR2 ; |301| 
        BCLR @#8, AR2 ; |301| 
        OR AR2, AR1 ; |301| 
        MOV AR1, port(*AR3) ; |301| 
	.dwpsn	file "src/csl_i2s.c",line 304,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #7, AC0 ; |304| 
        MOV *SP(#4), AR3 ; |304| 
        AND #0x0080, AC0, AR1 ; |304| 
        MOV port(*AR3), AR2 ; |304| 
        BCLR @#7, AR2 ; |304| 
        OR AR2, AR1 ; |304| 
        MOV AR1, port(*AR3) ; |304| 
	.dwpsn	file "src/csl_i2s.c",line 307,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)) << #6, AC0 ; |307| 
        MOV *SP(#4), AR3 ; |307| 
        AND #0x0040, AC0, AR1 ; |307| 
        MOV port(*AR3), AR2 ; |307| 
        BCLR @#6, AR2 ; |307| 
        OR AR2, AR1 ; |307| 
        MOV AR1, port(*AR3) ; |307| 
	.dwpsn	file "src/csl_i2s.c",line 310,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)) << #2, AC0 ; |310| 
        MOV *SP(#4), AR3 ; |310| 
        AND #0x003c, AC0, AR1 ; |310| 
        MOV port(*AR3), AR2 ; |310| 
        AND #0xffc3, AR2, AR2 ; |310| 
        OR AR2, AR1 ; |310| 
        MOV AR1, port(*AR3) ; |310| 
	.dwpsn	file "src/csl_i2s.c",line 313,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |313| 
        BCC $C$L13,AR1 != #0 ; |313| 
                                        ; branchcc occurs ; |313| 
	.dwpsn	file "src/csl_i2s.c",line 315,column 4,is_stmt
        MOV *SP(#4), AR3 ; |315| 
        MOV port(*AR3), AR1 ; |315| 
        BCLR @#1, AR1 ; |315| 
        MOV AR1, port(*AR3) ; |315| 
	.dwpsn	file "src/csl_i2s.c",line 316,column 3,is_stmt
        B $C$L14  ; |316| 
                                        ; branch occurs ; |316| 
$C$L13:    
	.dwpsn	file "src/csl_i2s.c",line 319,column 4,is_stmt
        MOV *SP(#4), AR3 ; |319| 
        MOV port(*AR3), AR1 ; |319| 
        BCLR @#1, AR1 ; |319| 
        BSET @#1, AR1 ; |319| 
        MOV AR1, port(*AR3) ; |319| 
$C$L14:    
	.dwpsn	file "src/csl_i2s.c",line 323,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |323| 
        BCC $C$L15,AR1 != #0 ; |323| 
                                        ; branchcc occurs ; |323| 
	.dwpsn	file "src/csl_i2s.c",line 325,column 4,is_stmt
        MOV *SP(#4), AR3 ; |325| 
        MOV port(*AR3), AR1 ; |325| 
        BCLR @#0, AR1 ; |325| 
        BSET @#0, AR1 ; |325| 
        MOV AR1, port(*AR3) ; |325| 
	.dwpsn	file "src/csl_i2s.c",line 327,column 4,is_stmt
        MOV #20, T0 ; |327| 
        MOV *SP(#4), AR3 ; |327| 
        MOV port(*AR3(T0)), AR1 ; |327| 
        BCLR @#5, AR1 ; |327| 
        MOV AR1, port(*AR3(T0)) ; |327| 
	.dwpsn	file "src/csl_i2s.c",line 328,column 4,is_stmt
        MOV *SP(#4), AR3 ; |328| 
        MOV port(*AR3(T0)), AR1 ; |328| 
        BCLR @#4, AR1 ; |328| 
        BSET @#4, AR1 ; |328| 
        MOV AR1, port(*AR3(T0)) ; |328| 
	.dwpsn	file "src/csl_i2s.c",line 329,column 4,is_stmt
        MOV *SP(#4), AR3 ; |329| 
        MOV port(*AR3(T0)), AR1 ; |329| 
        BCLR @#3, AR1 ; |329| 
        MOV AR1, port(*AR3(T0)) ; |329| 
	.dwpsn	file "src/csl_i2s.c",line 330,column 4,is_stmt
        MOV *SP(#4), AR3 ; |330| 
        MOV port(*AR3(T0)), AR1 ; |330| 
        BCLR @#2, AR1 ; |330| 
        BSET @#2, AR1 ; |330| 
        MOV AR1, port(*AR3(T0)) ; |330| 
	.dwpsn	file "src/csl_i2s.c",line 331,column 3,is_stmt
        B $C$L16  ; |331| 
                                        ; branch occurs ; |331| 
$C$L15:    
	.dwpsn	file "src/csl_i2s.c",line 334,column 4,is_stmt
        MOV *SP(#4), AR3 ; |334| 
        MOV port(*AR3), AR1 ; |334| 
        BCLR @#0, AR1 ; |334| 
        MOV AR1, port(*AR3) ; |334| 
	.dwpsn	file "src/csl_i2s.c",line 336,column 4,is_stmt
        MOV #20, T0 ; |336| 
        MOV *SP(#4), AR3 ; |336| 
        MOV port(*AR3(T0)), AR1 ; |336| 
        BCLR @#5, AR1 ; |336| 
        BSET @#5, AR1 ; |336| 
        MOV AR1, port(*AR3(T0)) ; |336| 
	.dwpsn	file "src/csl_i2s.c",line 337,column 4,is_stmt
        MOV *SP(#4), AR3 ; |337| 
        MOV port(*AR3(T0)), AR1 ; |337| 
        BCLR @#4, AR1 ; |337| 
        MOV AR1, port(*AR3(T0)) ; |337| 
	.dwpsn	file "src/csl_i2s.c",line 338,column 4,is_stmt
        MOV *SP(#4), AR3 ; |338| 
        MOV port(*AR3(T0)), AR1 ; |338| 
        BCLR @#3, AR1 ; |338| 
        BSET @#3, AR1 ; |338| 
        MOV AR1, port(*AR3(T0)) ; |338| 
	.dwpsn	file "src/csl_i2s.c",line 339,column 4,is_stmt
        MOV *SP(#4), AR3 ; |339| 
        MOV port(*AR3(T0)), AR1 ; |339| 
        BCLR @#2, AR1 ; |339| 
        MOV AR1, port(*AR3(T0)) ; |339| 
$C$L16:    
	.dwpsn	file "src/csl_i2s.c",line 343,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#10) << #3, AC0 ; |343| 
        MOV *SP(#4), AR3 ; |343| 
        AND #0x0038, AC0, AR1 ; |343| 
        MOV port(*AR3(short(#4))), AR2 ; |343| 
        AND #0xffc7, AR2, AR2 ; |343| 
        OR AR2, AR1 ; |343| 
        MOV AR1, port(*AR3(short(#4))) ; |343| 
	.dwpsn	file "src/csl_i2s.c",line 346,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#11), AR1 ; |346| 
        MOV *SP(#4), AR3 ; |346| 
        AND #0x0007, AR1, AR1 ; |346| 
        MOV port(*AR3(short(#4))), AR2 ; |346| 
        AND #0xfff8, AR2, AR2 ; |346| 
        OR AR2, AR1 ; |346| 
        MOV AR1, port(*AR3(short(#4))) ; |346| 
	.dwpsn	file "src/csl_i2s.c",line 349,column 3,is_stmt
        MOV *SP(#4), AR3 ; |349| 
        MOV port(*AR3(T0)), AR2 ; |349| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#12), AR1 ; |349| 
        MOV *SP(#4), AR3 ; |349| 
        SFTL AR1, #1 ; |349| 
        BCLR @#1, AR2 ; |349| 
        AND #0x0002, AR1, AR1 ; |349| 
        OR AR2, AR1 ; |349| 
        MOV AR1, port(*AR3(T0)) ; |349| 
	.dwpsn	file "src/csl_i2s.c",line 352,column 3,is_stmt
        MOV *SP(#4), AR3 ; |352| 
        MOV port(*AR3(T0)), AR2 ; |352| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#13), AR1 ; |352| 
        MOV *SP(#4), AR3 ; |352| 
        BCLR @#0, AR2 ; |352| 
        AND #0x0001, AR1, AR1 ; |352| 
        OR AR2, AR1 ; |352| 
        MOV AR1, port(*AR3(T0)) ; |352| 
	.dwpsn	file "src/csl_i2s.c",line 355,column 3,is_stmt
        MOV #16, T0 ; |355| 
        MOV *SP(#4), AR3 ; |355| 
        MOV port(*AR3(T0)), AR1 ; |355| 
        MOV #0, port(*AR3(T0)) ; |355| 
	.dwpsn	file "src/csl_i2s.c",line 357,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(short(#4)) ; |357| 
$C$L17:    
	.dwpsn	file "src/csl_i2s.c",line 359,column 2,is_stmt
        MOV #0, T0
$C$L18:    
	.dwpsn	file "src/csl_i2s.c",line 360,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$20, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.global	_I2S_close

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_close")
	.dwattr $C$DW$27, DW_AT_low_pc(_I2S_close)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_I2S_close")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x18b)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_i2s.c",line 396,column 1,is_stmt,address _I2S_close

	.dwfde $C$DW$CIE, _I2S_close
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2S_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 400,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |400| 

        CMPU AC1 != AC0, TC1 ; |400| 
        BCC $C$L19,TC1 ; |400| 
                                        ; branchcc occurs ; |400| 
	.dwpsn	file "src/csl_i2s.c",line 402,column 3,is_stmt
        MOV #-5, T0
        B $C$L26  ; |402| 
                                        ; branch occurs ; |402| 
$C$L19:    
	.dwpsn	file "src/csl_i2s.c",line 405,column 2,is_stmt
        MOV #7168, *SP(#3) ; |405| 
	.dwpsn	file "src/csl_i2s.c",line 407,column 2,is_stmt
        B $C$L24  ; |407| 
                                        ; branch occurs ; |407| 
$C$L20:    
	.dwpsn	file "src/csl_i2s.c",line 410,column 4,is_stmt
        MOV *SP(#3), AR3 ; |410| 
        MOV port(*AR3(short(#2))), AR1 ; |410| 
        BCLR @#8, AR1 ; |410| 
        BSET @#8, AR1 ; |410| 
        MOV AR1, port(*AR3(short(#2))) ; |410| 
	.dwpsn	file "src/csl_i2s.c",line 412,column 9,is_stmt
        B $C$L25  ; |412| 
                                        ; branch occurs ; |412| 
$C$L21:    
	.dwpsn	file "src/csl_i2s.c",line 415,column 4,is_stmt
        MOV *SP(#3), AR3 ; |415| 
        MOV port(*AR3(short(#2))), AR1 ; |415| 
        BCLR @#9, AR1 ; |415| 
        BSET @#9, AR1 ; |415| 
        MOV AR1, port(*AR3(short(#2))) ; |415| 
	.dwpsn	file "src/csl_i2s.c",line 417,column 9,is_stmt
        B $C$L25  ; |417| 
                                        ; branch occurs ; |417| 
$C$L22:    
	.dwpsn	file "src/csl_i2s.c",line 420,column 4,is_stmt
        MOV *SP(#3), AR3 ; |420| 
        MOV port(*AR3(short(#2))), AR1 ; |420| 
        BCLR @#14, AR1 ; |420| 
        BSET @#14, AR1 ; |420| 
        MOV AR1, port(*AR3(short(#2))) ; |420| 
	.dwpsn	file "src/csl_i2s.c",line 422,column 9,is_stmt
        B $C$L25  ; |422| 
                                        ; branch occurs ; |422| 
$C$L23:    
	.dwpsn	file "src/csl_i2s.c",line 424,column 4,is_stmt
        MOV *SP(#3), AR3 ; |424| 
        MOV port(*AR3(short(#2))), AR1 ; |424| 
        BCLR @#0, AR1 ; |424| 
        BSET @#0, AR1 ; |424| 
        MOV AR1, port(*AR3(short(#2))) ; |424| 
	.dwpsn	file "src/csl_i2s.c",line 426,column 9,is_stmt
        B $C$L25  ; |426| 
                                        ; branch occurs ; |426| 
$C$L24:    
	.dwpsn	file "src/csl_i2s.c",line 407,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |407| 
        BCC $C$L20,AR1 == #0 ; |407| 
                                        ; branchcc occurs ; |407| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |407| 
        BCC $C$L21,TC1 ; |407| 
                                        ; branchcc occurs ; |407| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |407| 
        BCC $C$L22,TC1 ; |407| 
                                        ; branchcc occurs ; |407| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |407| 
        BCC $C$L23,TC1 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$L25:    
	.dwpsn	file "src/csl_i2s.c",line 429,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *AR3, #10, AC0 ; |429| 
        MOV AC0, T0 ; |429| 
        AMOV #(_I2S_InstanceNum+3), XAR3 ; |429| 
        MOV #0, *AR3(T0) ; |429| 
	.dwpsn	file "src/csl_i2s.c",line 432,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3 ; |432| 
	.dwpsn	file "src/csl_i2s.c",line 435,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#4)) ; |435| 
	.dwpsn	file "src/csl_i2s.c",line 436,column 2,is_stmt
        MOV #0, AC0 ; |436| 
        MOV AC0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 437,column 2,is_stmt
        MOV #0, *SP(#2) ; |437| 
	.dwpsn	file "src/csl_i2s.c",line 439,column 2,is_stmt
        MOV *SP(#2), T0 ; |439| 
$C$L26:    
	.dwpsn	file "src/csl_i2s.c",line 440,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$27, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x1b8)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.global	_I2S_read

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_read")
	.dwattr $C$DW$33, DW_AT_low_pc(_I2S_read)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_I2S_read")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x1e4)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_i2s.c",line 486,column 1,is_stmt,address _I2S_read

	.dwfde $C$DW$CIE, _I2S_read
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg17]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readBuff")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_readBuff")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg19]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffLen")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2S_read                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("readBuff")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_readBuff")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("buffLen")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("regs")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("i2sIrStatus")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_i2sIrStatus")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("latency")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_latency")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("dummyData")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_dummyData")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |486| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 492,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |492| 

        CMPU AC1 != AC0, TC1 ; |492| 
        BCC $C$L27,TC1 ; |492| 
                                        ; branchcc occurs ; |492| 
	.dwpsn	file "src/csl_i2s.c",line 494,column 3,is_stmt
        MOV #-5, T0
        B $C$L57  ; |494| 
                                        ; branch occurs ; |494| 
$C$L27:    
	.dwpsn	file "src/csl_i2s.c",line 497,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |497| 
        BCC $C$L28,TC1 ; |497| 
                                        ; branchcc occurs ; |497| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |497| 

        CMPU AR2 != AR1, TC1 ; |497| 
        BCC $C$L29,TC1 ; |497| 
                                        ; branchcc occurs ; |497| 
$C$L28:    
	.dwpsn	file "src/csl_i2s.c",line 499,column 3,is_stmt
        MOV #-6, T0
        B $C$L57  ; |499| 
                                        ; branch occurs ; |499| 
$C$L29:    
	.dwpsn	file "src/csl_i2s.c",line 502,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |502| 
        MOV AR1, *SP(#5) ; |502| 
	.dwpsn	file "src/csl_i2s.c",line 504,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#9) == #1, TC1 ; |504| 
        BCC $C$L44,!TC1 ; |504| 
                                        ; branchcc occurs ; |504| 
        MOV *AR3(short(#1)), AR1 ; |504| 
        BCC $C$L44,AR1 != #0 ; |504| 
                                        ; branchcc occurs ; |504| 
	.dwpsn	file "src/csl_i2s.c",line 506,column 3,is_stmt
        MOV #0, *AR3(#9) ; |506| 
	.dwpsn	file "src/csl_i2s.c",line 508,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#8) == #1, TC1 ; |508| 
        BCC $C$L37,!TC1 ; |508| 
                                        ; branchcc occurs ; |508| 
	.dwpsn	file "src/csl_i2s.c",line 510,column 4,is_stmt
        CMP *AR3(short(#5)) == #1, TC1 ; |510| 
        BCC $C$L34,!TC1 ; |510| 
                                        ; branchcc occurs ; |510| 
	.dwpsn	file "src/csl_i2s.c",line 512,column 5,is_stmt
        B $C$L33  ; |512| 
                                        ; branch occurs ; |512| 
$C$L30:    
	.dwpsn	file "src/csl_i2s.c",line 515,column 7,is_stmt
        MOV *AR3(short(#6)), AR1 ; |515| 
        BCC $C$L31,AR1 != #0 ; |515| 
                                        ; branchcc occurs ; |515| 
	.dwpsn	file "src/csl_i2s.c",line 517,column 8,is_stmt
        MOV #6, *SP(#7) ; |517| 
	.dwpsn	file "src/csl_i2s.c",line 518,column 7,is_stmt
        B $C$L38  ; |518| 
                                        ; branch occurs ; |518| 
$C$L31:    
	.dwpsn	file "src/csl_i2s.c",line 521,column 8,is_stmt
        MOV #5, *SP(#7) ; |521| 
	.dwpsn	file "src/csl_i2s.c",line 524,column 12,is_stmt
        B $C$L38  ; |524| 
                                        ; branch occurs ; |524| 
$C$L32:    
	.dwpsn	file "src/csl_i2s.c",line 530,column 7,is_stmt
        MOV #6, *SP(#7) ; |530| 
	.dwpsn	file "src/csl_i2s.c",line 531,column 12,is_stmt
        B $C$L38  ; |531| 
                                        ; branch occurs ; |531| 
$C$L33:    
	.dwpsn	file "src/csl_i2s.c",line 512,column 5,is_stmt
        MOV *AR3(short(#7)), AR1 ; |512| 
        BCC $C$L30,AR1 == #0 ; |512| 
                                        ; branchcc occurs ; |512| 

        SUB #1, AR1, AR1 ; |512| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |512| 
        BCC $C$L32,TC1 ; |512| 
                                        ; branchcc occurs ; |512| 
        B $C$L38  ; |512| 
                                        ; branch occurs ; |512| 
$C$L34:    
	.dwpsn	file "src/csl_i2s.c",line 539,column 5,is_stmt
        MOV #2, *SP(#7) ; |539| 
	.dwpsn	file "src/csl_i2s.c",line 541,column 3,is_stmt
        B $C$L38  ; |541| 
                                        ; branch occurs ; |541| 
$C$L35:    
	.dwpsn	file "src/csl_i2s.c",line 551,column 6,is_stmt
        MOV #2, *SP(#7) ; |551| 
	.dwpsn	file "src/csl_i2s.c",line 552,column 11,is_stmt
        B $C$L38  ; |552| 
                                        ; branch occurs ; |552| 
$C$L36:    
	.dwpsn	file "src/csl_i2s.c",line 558,column 6,is_stmt
        MOV #3, *SP(#7) ; |558| 
	.dwpsn	file "src/csl_i2s.c",line 559,column 11,is_stmt
        B $C$L38  ; |559| 
                                        ; branch occurs ; |559| 
$C$L37:    
	.dwpsn	file "src/csl_i2s.c",line 544,column 4,is_stmt
        MOV *AR3(short(#7)), AR1 ; |544| 
        BCC $C$L35,AR1 == #0 ; |544| 
                                        ; branchcc occurs ; |544| 

        SUB #1, AR1, AR2 ; |544| 
||      MOV #3, AR3

        CMPU AR2 <= AR3, TC1 ; |544| 
        BCC $C$L36,TC1 ; |544| 
                                        ; branchcc occurs ; |544| 

        SUB #5, AR1, AR1 ; |544| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |544| 
        BCC $C$L35,TC1 ; |544| 
                                        ; branchcc occurs ; |544| 
$C$L38:    
	.dwpsn	file "src/csl_i2s.c",line 567,column 9,is_stmt
        MOV *SP(#7), AR1 ; |567| 
        BCC $C$L43,AR1 <= #0 ; |567| 
                                        ; branchcc occurs ; |567| 
$C$L39:    
$C$DW$L$_I2S_read$30$B:
	.dwpsn	file "src/csl_i2s.c",line 569,column 4,is_stmt
        MOV #16, T0 ; |569| 
        MOV *SP(#5), AR3 ; |569| 
        MOV port(*AR3(T0)), AR1 ; |569| 
        MOV AR1, *SP(#6) ; |569| 
	.dwpsn	file "src/csl_i2s.c",line 571,column 4,is_stmt
        BTST #2, *SP(#6), TC1 ; |571| 
        BCC $C$L40,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
$C$DW$L$_I2S_read$30$E:
$C$DW$L$_I2S_read$31$B:
        BTST #3, *SP(#6), TC1 ; |571| 
        BCC $C$L42,!TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
$C$DW$L$_I2S_read$31$E:
$C$L40:    
$C$DW$L$_I2S_read$32$B:
	.dwpsn	file "src/csl_i2s.c",line 579,column 5,is_stmt
        MOV #41, T0 ; |579| 
        MOV *SP(#5), AR3 ; |579| 
        MOV port(*AR3(T0)), AR1 ; |579| 
        MOV AR1, *SP(#8) ; |579| 
	.dwpsn	file "src/csl_i2s.c",line 580,column 5,is_stmt
        MOV #40, T0 ; |580| 
        MOV *SP(#5), AR3 ; |580| 
        MOV port(*AR3(T0)), AR1 ; |580| 
        MOV AR1, *SP(#8) ; |580| 
	.dwpsn	file "src/csl_i2s.c",line 583,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#2)) == #1, TC1 ; |583| 
        BCC $C$L41,!TC1 ; |583| 
                                        ; branchcc occurs ; |583| 
$C$DW$L$_I2S_read$32$E:
$C$DW$L$_I2S_read$33$B:
	.dwpsn	file "src/csl_i2s.c",line 589,column 6,is_stmt
        MOV #45, T0 ; |589| 
        MOV *SP(#5), AR3 ; |589| 
        MOV port(*AR3(T0)), AR1 ; |589| 
        MOV AR1, *SP(#8) ; |589| 
	.dwpsn	file "src/csl_i2s.c",line 590,column 6,is_stmt
        MOV #44, T0 ; |590| 
        MOV *SP(#5), AR3 ; |590| 
        MOV port(*AR3(T0)), AR1 ; |590| 
        MOV AR1, *SP(#8) ; |590| 
	.dwpsn	file "src/csl_i2s.c",line 594,column 6,is_stmt
        MOV #16, T0 ; |594| 
        MOV *SP(#5), AR3 ; |594| 
        MOV port(*AR3(T0)), AR1 ; |594| 
        BCLR @#3, AR1 ; |594| 
        MOV AR1, port(*AR3(T0)) ; |594| 
$C$DW$L$_I2S_read$33$E:
$C$L41:    
$C$DW$L$_I2S_read$34$B:
	.dwpsn	file "src/csl_i2s.c",line 598,column 5,is_stmt
        MOV #16, T0 ; |598| 
        MOV *SP(#5), AR3 ; |598| 
        MOV port(*AR3(T0)), AR1 ; |598| 
        BCLR @#2, AR1 ; |598| 
        MOV AR1, port(*AR3(T0)) ; |598| 
	.dwpsn	file "src/csl_i2s.c",line 599,column 5,is_stmt
        SUB #1, *SP(#7) ; |599| 
	.dwpsn	file "src/csl_i2s.c",line 600,column 5,is_stmt
        SUB #1, *SP(#7) ; |600| 
$C$DW$L$_I2S_read$34$E:
$C$L42:    
$C$DW$L$_I2S_read$35$B:
	.dwpsn	file "src/csl_i2s.c",line 567,column 9,is_stmt
        MOV *SP(#7), AR1 ; |567| 
        BCC $C$L39,AR1 > #0 ; |567| 
                                        ; branchcc occurs ; |567| 
$C$DW$L$_I2S_read$35$E:
$C$L43:    
	.dwpsn	file "src/csl_i2s.c",line 604,column 3,is_stmt
$C$L44:    
	.dwpsn	file "src/csl_i2s.c",line 608,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#1)) == #2, TC1 ; |608| 
        BCC $C$L45,TC1 ; |608| 
                                        ; branchcc occurs ; |608| 
        CMP *AR3(short(#1)) == #3, TC1 ; |608| 
        BCC $C$L46,!TC1 ; |608| 
                                        ; branchcc occurs ; |608| 
$C$L45:    
	.dwpsn	file "src/csl_i2s.c",line 611,column 3,is_stmt
        MOV #-6, T0
        B $C$L57  ; |611| 
                                        ; branch occurs ; |611| 
$C$L46:    
	.dwpsn	file "src/csl_i2s.c",line 614,column 2,is_stmt
        CMP *AR3(short(#1)) == #1, TC1 ; |614| 
        BCC $C$L55,!TC1 ; |614| 
                                        ; branchcc occurs ; |614| 
	.dwpsn	file "src/csl_i2s.c",line 617,column 9,is_stmt
        MOV *SP(#4), AR1 ; |617| 
        BCC $C$L49,AR1 == #0 ; |617| 
                                        ; branchcc occurs ; |617| 
$C$L47:    
$C$DW$L$_I2S_read$42$B:
	.dwpsn	file "src/csl_i2s.c",line 623,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #41, T0 ; |623| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |623| 
        MOV port(*AR3(T0)), AR1 ; |623| 
        MOV AR1, *AR2 ; |623| 
	.dwpsn	file "src/csl_i2s.c",line 624,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #40, T0 ; |624| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |624| 
        MOV port(*AR3(T0)), AR1 ; |624| 
        MOV AR1, *AR2 ; |624| 
	.dwpsn	file "src/csl_i2s.c",line 627,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#2)) == #1, TC1 ; |627| 
        BCC $C$L48,!TC1 ; |627| 
                                        ; branchcc occurs ; |627| 
$C$DW$L$_I2S_read$42$E:
$C$DW$L$_I2S_read$43$B:
	.dwpsn	file "src/csl_i2s.c",line 633,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #45, T0 ; |633| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |633| 
        MOV port(*AR3(T0)), AR1 ; |633| 
        MOV AR1, *AR2 ; |633| 
	.dwpsn	file "src/csl_i2s.c",line 634,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #44, T0 ; |634| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |634| 
        MOV port(*AR3(T0)), AR1 ; |634| 
        MOV AR1, *AR2 ; |634| 
	.dwpsn	file "src/csl_i2s.c",line 636,column 5,is_stmt
        SUB #2, *SP(#4) ; |636| 
$C$DW$L$_I2S_read$43$E:
$C$L48:    
$C$DW$L$_I2S_read$44$B:
	.dwpsn	file "src/csl_i2s.c",line 638,column 4,is_stmt
        SUB #2, *SP(#4) ; |638| 
	.dwpsn	file "src/csl_i2s.c",line 617,column 9,is_stmt
        MOV *SP(#4), AR1 ; |617| 
        BCC $C$L47,AR1 != #0 ; |617| 
                                        ; branchcc occurs ; |617| 
$C$DW$L$_I2S_read$44$E:
$C$L49:    
	.dwpsn	file "src/csl_i2s.c",line 642,column 3,is_stmt
        MOV #16, T0 ; |642| 
        MOV *SP(#5), AR3 ; |642| 
        MOV port(*AR3(T0)), AR1 ; |642| 
        BCLR @#3, AR1 ; |642| 
        MOV AR1, port(*AR3(T0)) ; |642| 
	.dwpsn	file "src/csl_i2s.c",line 643,column 3,is_stmt
        MOV *SP(#5), AR3 ; |643| 
        MOV port(*AR3(T0)), AR1 ; |643| 
        BCLR @#2, AR1 ; |643| 
        MOV AR1, port(*AR3(T0)) ; |643| 
	.dwpsn	file "src/csl_i2s.c",line 644,column 2,is_stmt
        B $C$L56  ; |644| 
                                        ; branch occurs ; |644| 
$C$L50:    
$C$DW$L$_I2S_read$47$B:
	.dwpsn	file "src/csl_i2s.c",line 650,column 4,is_stmt
        MOV #16, T0 ; |650| 
        MOV *SP(#5), AR3 ; |650| 
        MOV port(*AR3(T0)), AR1 ; |650| 
        MOV AR1, *SP(#6) ; |650| 
	.dwpsn	file "src/csl_i2s.c",line 651,column 4,is_stmt
        BTST #1, *SP(#6), TC1 ; |651| 
        BCC $C$L51,!TC1 ; |651| 
                                        ; branchcc occurs ; |651| 
$C$DW$L$_I2S_read$47$E:
$C$DW$L$_I2S_read$48$B:
	.dwpsn	file "src/csl_i2s.c",line 653,column 5,is_stmt
        ADD #1, *(#_fsError) ; |653| 
$C$DW$L$_I2S_read$48$E:
$C$L51:    
$C$DW$L$_I2S_read$49$B:
	.dwpsn	file "src/csl_i2s.c",line 656,column 4,is_stmt
        BTST #0, *SP(#6), TC1 ; |656| 
        BCC $C$L52,!TC1 ; |656| 
                                        ; branchcc occurs ; |656| 
$C$DW$L$_I2S_read$49$E:
$C$DW$L$_I2S_read$50$B:
	.dwpsn	file "src/csl_i2s.c",line 658,column 5,is_stmt
        ADD #1, *(#_ouError) ; |658| 
$C$DW$L$_I2S_read$50$E:
$C$L52:    
$C$DW$L$_I2S_read$51$B:
	.dwpsn	file "src/csl_i2s.c",line 661,column 4,is_stmt
        BTST #2, *SP(#6), TC1 ; |661| 
        BCC $C$L53,TC1 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$DW$L$_I2S_read$51$E:
$C$DW$L$_I2S_read$52$B:
        BTST #3, *SP(#6), TC1 ; |661| 
        BCC $C$L55,!TC1 ; |661| 
                                        ; branchcc occurs ; |661| 
$C$DW$L$_I2S_read$52$E:
$C$L53:    
$C$DW$L$_I2S_read$53$B:
	.dwpsn	file "src/csl_i2s.c",line 669,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #41, T0 ; |669| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |669| 
        MOV port(*AR3(T0)), AR1 ; |669| 
        MOV AR1, *AR2 ; |669| 
	.dwpsn	file "src/csl_i2s.c",line 670,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #40, T0 ; |670| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |670| 
        MOV port(*AR3(T0)), AR1 ; |670| 
        MOV AR1, *AR2 ; |670| 
	.dwpsn	file "src/csl_i2s.c",line 672,column 5,is_stmt
        BTST #3, *SP(#6), TC1 ; |672| 
        BCC $C$L54,!TC1 ; |672| 
                                        ; branchcc occurs ; |672| 
$C$DW$L$_I2S_read$53$E:
$C$DW$L$_I2S_read$54$B:
	.dwpsn	file "src/csl_i2s.c",line 678,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #45, T0 ; |678| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |678| 
        MOV port(*AR3(T0)), AR1 ; |678| 
        MOV AR1, *AR2 ; |678| 
	.dwpsn	file "src/csl_i2s.c",line 679,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV #44, T0 ; |679| 
        AMAR *AR2, XAR3
        AMAR *AR3+
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |679| 
        MOV port(*AR3(T0)), AR1 ; |679| 
        MOV AR1, *AR2 ; |679| 
	.dwpsn	file "src/csl_i2s.c",line 682,column 6,is_stmt
        MOV #16, T0 ; |682| 
        MOV *SP(#5), AR3 ; |682| 
        MOV port(*AR3(T0)), AR1 ; |682| 
        BCLR @#3, AR1 ; |682| 
        MOV AR1, port(*AR3(T0)) ; |682| 
	.dwpsn	file "src/csl_i2s.c",line 683,column 6,is_stmt
        SUB #2, *SP(#4) ; |683| 
$C$DW$L$_I2S_read$54$E:
$C$L54:    
$C$DW$L$_I2S_read$55$B:
	.dwpsn	file "src/csl_i2s.c",line 686,column 5,is_stmt
        MOV #16, T0 ; |686| 
        MOV *SP(#5), AR3 ; |686| 
        MOV port(*AR3(T0)), AR1 ; |686| 
        BCLR @#2, AR1 ; |686| 
        MOV AR1, port(*AR3(T0)) ; |686| 
	.dwpsn	file "src/csl_i2s.c",line 687,column 5,is_stmt
        SUB #2, *SP(#4) ; |687| 
$C$DW$L$_I2S_read$55$E:
$C$L55:    
$C$DW$L$_I2S_read$56$B:
	.dwpsn	file "src/csl_i2s.c",line 647,column 9,is_stmt
        MOV *SP(#4), AR1 ; |647| 
        BCC $C$L56,AR1 == #0 ; |647| 
                                        ; branchcc occurs ; |647| 
$C$DW$L$_I2S_read$56$E:
$C$DW$L$_I2S_read$57$B:
        MOV *(#_fsError), AR1 ; |647| 
        BCC $C$L56,AR1 != #0 ; |647| 
                                        ; branchcc occurs ; |647| 
$C$DW$L$_I2S_read$57$E:
$C$DW$L$_I2S_read$58$B:
        MOV *(#_ouError), AR1 ; |647| 
        BCC $C$L50,AR1 == #0 ; |647| 
                                        ; branchcc occurs ; |647| 
$C$DW$L$_I2S_read$58$E:
$C$L56:    
	.dwpsn	file "src/csl_i2s.c",line 692,column 2,is_stmt
        MOV #0, *(#_fsError) ; |692| 
	.dwpsn	file "src/csl_i2s.c",line 693,column 2,is_stmt
        MOV #0, *(#_ouError) ; |693| 
	.dwpsn	file "src/csl_i2s.c",line 695,column 2,is_stmt
        MOV #0, T0
$C$L57:    
	.dwpsn	file "src/csl_i2s.c",line 696,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$45	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$45, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2s.asm:$C$L55:1:1714639439")
	.dwattr $C$DW$45, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x287)
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x2af)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$_I2S_read$56$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$_I2S_read$56$E)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_I2S_read$53$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_I2S_read$53$E)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_I2S_read$54$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_I2S_read$54$E)
$C$DW$49	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$49, DW_AT_low_pc($C$DW$L$_I2S_read$57$B)
	.dwattr $C$DW$49, DW_AT_high_pc($C$DW$L$_I2S_read$57$E)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_I2S_read$58$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_I2S_read$58$E)
$C$DW$51	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$51, DW_AT_low_pc($C$DW$L$_I2S_read$47$B)
	.dwattr $C$DW$51, DW_AT_high_pc($C$DW$L$_I2S_read$47$E)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_I2S_read$48$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_I2S_read$48$E)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_I2S_read$49$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_I2S_read$49$E)
$C$DW$54	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$54, DW_AT_low_pc($C$DW$L$_I2S_read$50$B)
	.dwattr $C$DW$54, DW_AT_high_pc($C$DW$L$_I2S_read$50$E)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_I2S_read$51$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_I2S_read$51$E)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$_I2S_read$55$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$_I2S_read$55$E)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_I2S_read$52$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_I2S_read$52$E)
	.dwendtag $C$DW$45


$C$DW$58	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$58, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2s.asm:$C$L47:1:1714639439")
	.dwattr $C$DW$58, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x269)
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x27f)
$C$DW$59	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$59, DW_AT_low_pc($C$DW$L$_I2S_read$42$B)
	.dwattr $C$DW$59, DW_AT_high_pc($C$DW$L$_I2S_read$42$E)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_I2S_read$43$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_I2S_read$43$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_I2S_read$44$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_I2S_read$44$E)
	.dwendtag $C$DW$58


$C$DW$62	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$62, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2s.asm:$C$L39:1:1714639439")
	.dwattr $C$DW$62, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x237)
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x25a)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_I2S_read$30$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_I2S_read$30$E)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_I2S_read$32$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_I2S_read$32$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_I2S_read$33$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_I2S_read$33$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_I2S_read$31$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_I2S_read$31$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_I2S_read$34$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_I2S_read$34$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_I2S_read$35$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_I2S_read$35$E)
	.dwendtag $C$DW$62

	.dwattr $C$DW$33, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x2b8)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_I2S_write

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_write")
	.dwattr $C$DW$69, DW_AT_low_pc(_I2S_write)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_I2S_write")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x2df)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_i2s.c",line 737,column 1,is_stmt,address _I2S_write

	.dwfde $C$DW$CIE, _I2S_write
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeBuff")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_writeBuff")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg19]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffLen")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2S_write                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("writeBuff")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_writeBuff")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("buffLen")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("regs")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("i2sIrStatus")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_i2sIrStatus")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |737| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 742,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L58,AC0 != #0 ; |742| 
                                        ; branchcc occurs ; |742| 
	.dwpsn	file "src/csl_i2s.c",line 744,column 3,is_stmt
        MOV #-5, T0
        B $C$L72  ; |744| 
                                        ; branch occurs ; |744| 
$C$L58:    
	.dwpsn	file "src/csl_i2s.c",line 747,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |747| 

        CMPU AC1 == AC0, TC1 ; |747| 
        BCC $C$L59,TC1 ; |747| 
                                        ; branchcc occurs ; |747| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |747| 

        CMPU AR2 != AR1, TC1 ; |747| 
        BCC $C$L60,TC1 ; |747| 
                                        ; branchcc occurs ; |747| 
$C$L59:    
	.dwpsn	file "src/csl_i2s.c",line 749,column 3,is_stmt
        MOV #-6, T0
        B $C$L72  ; |749| 
                                        ; branch occurs ; |749| 
$C$L60:    
	.dwpsn	file "src/csl_i2s.c",line 753,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#1)) == #2, TC1 ; |753| 
        BCC $C$L61,TC1 ; |753| 
                                        ; branchcc occurs ; |753| 
        CMP *AR3(short(#1)) == #3, TC1 ; |753| 
        BCC $C$L62,!TC1 ; |753| 
                                        ; branchcc occurs ; |753| 
$C$L61:    
	.dwpsn	file "src/csl_i2s.c",line 756,column 3,is_stmt
        MOV #-6, T0
        B $C$L72  ; |756| 
                                        ; branch occurs ; |756| 
$C$L62:    
	.dwpsn	file "src/csl_i2s.c",line 759,column 2,is_stmt
        MOV *AR3(short(#3)), AR1 ; |759| 
        MOV AR1, *SP(#5) ; |759| 
	.dwpsn	file "src/csl_i2s.c",line 761,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#1)) == #1, TC1 ; |761| 
        BCC $C$L70,!TC1 ; |761| 
                                        ; branchcc occurs ; |761| 
	.dwpsn	file "src/csl_i2s.c",line 763,column 9,is_stmt
        MOV *SP(#4), AR1 ; |763| 
        BCC $C$L71,AR1 == #0 ; |763| 
                                        ; branchcc occurs ; |763| 
$C$L63:    
$C$DW$L$_I2S_write$11$B:
	.dwpsn	file "src/csl_i2s.c",line 771,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |771| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |771| 
        AMOV #8, T0
        MOV AR1, port(*AR3(T0)) ; |771| 
	.dwpsn	file "src/csl_i2s.c",line 772,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |772| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |772| 
        AMOV #9, T0
        MOV AR1, port(*AR3(T0)) ; |772| 
	.dwpsn	file "src/csl_i2s.c",line 775,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#2)) == #1, TC1 ; |775| 
        BCC $C$L64,!TC1 ; |775| 
                                        ; branchcc occurs ; |775| 
$C$DW$L$_I2S_write$11$E:
$C$DW$L$_I2S_write$12$B:
	.dwpsn	file "src/csl_i2s.c",line 781,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |781| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |781| 
        AMOV #12, T0
        MOV AR1, port(*AR3(T0)) ; |781| 
	.dwpsn	file "src/csl_i2s.c",line 782,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |782| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |782| 
        AMOV #13, T0
        MOV AR1, port(*AR3(T0)) ; |782| 
	.dwpsn	file "src/csl_i2s.c",line 784,column 5,is_stmt
        SUB #2, *SP(#4) ; |784| 
$C$DW$L$_I2S_write$12$E:
$C$L64:    
$C$DW$L$_I2S_write$13$B:
	.dwpsn	file "src/csl_i2s.c",line 786,column 4,is_stmt
        SUB #2, *SP(#4) ; |786| 
	.dwpsn	file "src/csl_i2s.c",line 763,column 9,is_stmt
        MOV *SP(#4), AR1 ; |763| 
        BCC $C$L63,AR1 != #0 ; |763| 
                                        ; branchcc occurs ; |763| 
$C$DW$L$_I2S_write$13$E:
	.dwpsn	file "src/csl_i2s.c",line 788,column 2,is_stmt
        B $C$L71  ; |788| 
                                        ; branch occurs ; |788| 
$C$L65:    
$C$DW$L$_I2S_write$16$B:
	.dwpsn	file "src/csl_i2s.c",line 794,column 4,is_stmt
        MOV #16, T0 ; |794| 
        MOV *SP(#5), AR3 ; |794| 
        MOV port(*AR3(T0)), AR1 ; |794| 
        MOV AR1, *SP(#6) ; |794| 
	.dwpsn	file "src/csl_i2s.c",line 796,column 4,is_stmt
        BTST #1, *SP(#6), TC1 ; |796| 
        BCC $C$L66,!TC1 ; |796| 
                                        ; branchcc occurs ; |796| 
$C$DW$L$_I2S_write$16$E:
$C$DW$L$_I2S_write$17$B:
	.dwpsn	file "src/csl_i2s.c",line 798,column 5,is_stmt
        ADD #1, *(#_fsError) ; |798| 
$C$DW$L$_I2S_write$17$E:
$C$L66:    
$C$DW$L$_I2S_write$18$B:
	.dwpsn	file "src/csl_i2s.c",line 801,column 4,is_stmt
        BTST #0, *SP(#6), TC1 ; |801| 
        BCC $C$L67,!TC1 ; |801| 
                                        ; branchcc occurs ; |801| 
$C$DW$L$_I2S_write$18$E:
$C$DW$L$_I2S_write$19$B:
	.dwpsn	file "src/csl_i2s.c",line 803,column 5,is_stmt
        ADD #1, *(#_ouError) ; |803| 
$C$DW$L$_I2S_write$19$E:
$C$L67:    
$C$DW$L$_I2S_write$20$B:
	.dwpsn	file "src/csl_i2s.c",line 806,column 4,is_stmt
        BTST #4, *SP(#6), TC1 ; |806| 
        BCC $C$L68,TC1 ; |806| 
                                        ; branchcc occurs ; |806| 
$C$DW$L$_I2S_write$20$E:
$C$DW$L$_I2S_write$21$B:
        BTST #5, *SP(#6), TC1 ; |806| 
        BCC $C$L70,!TC1 ; |806| 
                                        ; branchcc occurs ; |806| 
$C$DW$L$_I2S_write$21$E:
$C$L68:    
$C$DW$L$_I2S_write$22$B:
	.dwpsn	file "src/csl_i2s.c",line 816,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |816| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |816| 
        AMOV #8, T0
        MOV AR1, port(*AR3(T0)) ; |816| 
	.dwpsn	file "src/csl_i2s.c",line 818,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |818| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |818| 
        AMOV #9, T0
        MOV AR1, port(*AR3(T0)) ; |818| 
	.dwpsn	file "src/csl_i2s.c",line 822,column 5,is_stmt
        BTST #5, *SP(#6), TC1 ; |822| 
        BCC $C$L69,!TC1 ; |822| 
                                        ; branchcc occurs ; |822| 
$C$DW$L$_I2S_write$22$E:
$C$DW$L$_I2S_write$23$B:
	.dwpsn	file "src/csl_i2s.c",line 830,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |830| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |830| 
        AMOV #12, T0
        MOV AR1, port(*AR3(T0)) ; |830| 
	.dwpsn	file "src/csl_i2s.c",line 832,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3+, AR1 ; |832| 
        MOV XAR3, dbl(*SP(#2))
        MOV *SP(#5), AR3 ; |832| 
        AMOV #13, T0
        MOV AR1, port(*AR3(T0)) ; |832| 
	.dwpsn	file "src/csl_i2s.c",line 835,column 6,is_stmt
        SUB #2, *SP(#4) ; |835| 
$C$DW$L$_I2S_write$23$E:
$C$L69:    
$C$DW$L$_I2S_write$24$B:
	.dwpsn	file "src/csl_i2s.c",line 837,column 5,is_stmt
        SUB #2, *SP(#4) ; |837| 
$C$DW$L$_I2S_write$24$E:
$C$L70:    
$C$DW$L$_I2S_write$25$B:
	.dwpsn	file "src/csl_i2s.c",line 791,column 9,is_stmt
        MOV *SP(#4), AR1 ; |791| 
        BCC $C$L71,AR1 == #0 ; |791| 
                                        ; branchcc occurs ; |791| 
$C$DW$L$_I2S_write$25$E:
$C$DW$L$_I2S_write$26$B:
        MOV *(#_fsError), AR1 ; |791| 
        BCC $C$L71,AR1 != #0 ; |791| 
                                        ; branchcc occurs ; |791| 
$C$DW$L$_I2S_write$26$E:
$C$DW$L$_I2S_write$27$B:
        MOV *(#_ouError), AR1 ; |791| 
        BCC $C$L65,AR1 == #0 ; |791| 
                                        ; branchcc occurs ; |791| 
$C$DW$L$_I2S_write$27$E:
$C$L71:    
	.dwpsn	file "src/csl_i2s.c",line 842,column 2,is_stmt
        MOV #0, *(#_fsError) ; |842| 
	.dwpsn	file "src/csl_i2s.c",line 843,column 2,is_stmt
        MOV #0, *(#_ouError) ; |843| 
	.dwpsn	file "src/csl_i2s.c",line 845,column 2,is_stmt
        MOV #0, T0
$C$L72:    
	.dwpsn	file "src/csl_i2s.c",line 846,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$79	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$79, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2s.asm:$C$L70:1:1714639439")
	.dwattr $C$DW$79, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x317)
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x345)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_I2S_write$25$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_I2S_write$25$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_I2S_write$22$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_I2S_write$22$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_I2S_write$23$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_I2S_write$23$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_I2S_write$26$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_I2S_write$26$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_I2S_write$27$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_I2S_write$27$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_I2S_write$16$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_I2S_write$16$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_I2S_write$17$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_I2S_write$17$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_I2S_write$18$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_I2S_write$18$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_I2S_write$19$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_I2S_write$19$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_I2S_write$20$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_I2S_write$20$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_I2S_write$24$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_I2S_write$24$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_I2S_write$21$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_I2S_write$21$E)
	.dwendtag $C$DW$79


$C$DW$92	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$92, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_i2s.asm:$C$L63:1:1714639439")
	.dwattr $C$DW$92, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$92, DW_AT_TI_begin_line(0x2fb)
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x313)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$_I2S_write$11$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$_I2S_write$11$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_I2S_write$12$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_I2S_write$12$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_I2S_write$13$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_I2S_write$13$E)
	.dwendtag $C$DW$92

	.dwattr $C$DW$69, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x34e)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_I2S_reset

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_reset")
	.dwattr $C$DW$96, DW_AT_low_pc(_I2S_reset)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_I2S_reset")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$96, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x371)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_i2s.c",line 882,column 1,is_stmt,address _I2S_reset

	.dwfde $C$DW$CIE, _I2S_reset
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: I2S_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("regs")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 885,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L73,AC0 != #0 ; |885| 
                                        ; branchcc occurs ; |885| 
	.dwpsn	file "src/csl_i2s.c",line 887,column 3,is_stmt
        MOV #-5, T0
        B $C$L74  ; |887| 
                                        ; branch occurs ; |887| 
$C$L73:    
	.dwpsn	file "src/csl_i2s.c",line 890,column 2,is_stmt
        MOV *AR3(short(#3)), AR1 ; |890| 
        MOV AR1, *SP(#2) ; |890| 
	.dwpsn	file "src/csl_i2s.c",line 893,column 2,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |893| 
        MOV #0, port(*AR3) ; |893| 
	.dwpsn	file "src/csl_i2s.c",line 894,column 2,is_stmt
        MOV *SP(#2), AR3 ; |894| 
        MOV port(*AR3(short(#4))), AR1 ; |894| 
        MOV #0, port(*AR3(short(#4))) ; |894| 
	.dwpsn	file "src/csl_i2s.c",line 902,column 2,is_stmt
        MOV *SP(#2), AR3 ; |902| 
        AMOV #8, T0
        MOV port(*AR3(T0)), AR1 ; |902| 
        MOV #0, port(*AR3(T0)) ; |902| 
	.dwpsn	file "src/csl_i2s.c",line 903,column 2,is_stmt
        MOV *SP(#2), AR3 ; |903| 
        AMOV #9, T0
        MOV port(*AR3(T0)), AR1 ; |903| 
        MOV #0, port(*AR3(T0)) ; |903| 
	.dwpsn	file "src/csl_i2s.c",line 904,column 2,is_stmt
        MOV *SP(#2), AR3 ; |904| 
        AMOV #12, T0
        MOV port(*AR3(T0)), AR1 ; |904| 
        MOV #0, port(*AR3(T0)) ; |904| 
	.dwpsn	file "src/csl_i2s.c",line 905,column 2,is_stmt
        MOV *SP(#2), AR3 ; |905| 
        AMOV #13, T0
        MOV port(*AR3(T0)), AR1 ; |905| 
        MOV #0, port(*AR3(T0)) ; |905| 
	.dwpsn	file "src/csl_i2s.c",line 908,column 2,is_stmt
        MOV #16, T0 ; |908| 
        MOV *SP(#2), AR3 ; |908| 
        MOV port(*AR3(T0)), AR1 ; |908| 
        MOV #0, port(*AR3(T0)) ; |908| 
	.dwpsn	file "src/csl_i2s.c",line 909,column 2,is_stmt
        MOV #20, T0 ; |909| 
        MOV *SP(#2), AR3 ; |909| 
        MOV port(*AR3(T0)), AR1 ; |909| 
        MOV #0, port(*AR3(T0)) ; |909| 
	.dwpsn	file "src/csl_i2s.c",line 917,column 2,is_stmt
        MOV #40, T0 ; |917| 
        MOV *SP(#2), AR3 ; |917| 
        MOV port(*AR3(T0)), AR1 ; |917| 
        MOV #0, port(*AR3(T0)) ; |917| 
	.dwpsn	file "src/csl_i2s.c",line 918,column 2,is_stmt
        MOV #41, T0 ; |918| 
        MOV *SP(#2), AR3 ; |918| 
        MOV port(*AR3(T0)), AR1 ; |918| 
        MOV #0, port(*AR3(T0)) ; |918| 
	.dwpsn	file "src/csl_i2s.c",line 919,column 2,is_stmt
        MOV #44, T0 ; |919| 
        MOV *SP(#2), AR3 ; |919| 
        MOV port(*AR3(T0)), AR1 ; |919| 
        MOV #0, port(*AR3(T0)) ; |919| 
	.dwpsn	file "src/csl_i2s.c",line 920,column 2,is_stmt
        MOV #45, T0 ; |920| 
        MOV *SP(#2), AR3 ; |920| 
        MOV port(*AR3(T0)), AR1 ; |920| 
        MOV #0, port(*AR3(T0)) ; |920| 
	.dwpsn	file "src/csl_i2s.c",line 923,column 2,is_stmt
        MOV #0, T0
$C$L74:    
	.dwpsn	file "src/csl_i2s.c",line 924,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$96, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x39c)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text"
	.global	_I2S_transEnable

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("I2S_transEnable")
	.dwattr $C$DW$101, DW_AT_low_pc(_I2S_transEnable)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_I2S_transEnable")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("src/csl_i2s.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x3c1)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_i2s.c",line 962,column 1,is_stmt,address _I2S_transEnable

	.dwfde $C$DW$CIE, _I2S_transEnable
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2s")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg17]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("enableBit")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_enableBit")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: I2S_transEnable                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_I2S_transEnable:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("hI2s")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_hI2s")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("enableBit")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_enableBit")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("regs")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |962| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_i2s.c",line 965,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |965| 

        CMPU AC1 != AC0, TC1 ; |965| 
        BCC $C$L75,TC1 ; |965| 
                                        ; branchcc occurs ; |965| 
	.dwpsn	file "src/csl_i2s.c",line 967,column 3,is_stmt
        MOV #-5, T0
        B $C$L78  ; |967| 
                                        ; branch occurs ; |967| 
$C$L75:    
	.dwpsn	file "src/csl_i2s.c",line 970,column 2,is_stmt
        MOV *AR3(short(#3)), AR1 ; |970| 
        MOV AR1, *SP(#3) ; |970| 
	.dwpsn	file "src/csl_i2s.c",line 972,column 2,is_stmt
        CMP *SP(#2) == #1, TC1 ; |972| 
        BCC $C$L76,!TC1 ; |972| 
                                        ; branchcc occurs ; |972| 
	.dwpsn	file "src/csl_i2s.c",line 975,column 3,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |975| 
        BCLR @#15, AR1 ; |975| 
        BSET @#15, AR1 ; |975| 
        MOV AR1, port(*AR3) ; |975| 
	.dwpsn	file "src/csl_i2s.c",line 976,column 2,is_stmt
        B $C$L77  ; |976| 
                                        ; branch occurs ; |976| 
$C$L76:    
	.dwpsn	file "src/csl_i2s.c",line 980,column 3,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |980| 
        BCLR @#15, AR1 ; |980| 
        MOV AR1, port(*AR3) ; |980| 
	.dwpsn	file "src/csl_i2s.c",line 981,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#9) ; |981| 
$C$L77:    
	.dwpsn	file "src/csl_i2s.c",line 983,column 2,is_stmt
        MOV #0, T0
$C$L78:    
	.dwpsn	file "src/csl_i2s.c",line 984,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$101, DW_AT_TI_end_file("src/csl_i2s.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x3d8)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_SYS_peripheralReset

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$108	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INSTANCE0"), DW_AT_const_value(0x00)
$C$DW$109	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INSTANCE1"), DW_AT_const_value(0x01)
$C$DW$110	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INSTANCE2"), DW_AT_const_value(0x02)
$C$DW$111	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INSTANCE3"), DW_AT_const_value(0x03)
$C$DW$112	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INVALID"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_Instance")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_POLLED"), DW_AT_const_value(0x00)
$C$DW$114	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_INTERRUPT"), DW_AT_const_value(0x01)
$C$DW$115	.dwtag  DW_TAG_enumerator, DW_AT_name("DMA_POLLED"), DW_AT_const_value(0x02)
$C$DW$116	.dwtag  DW_TAG_enumerator, DW_AT_name("DMA_INTERRUPT"), DW_AT_const_value(0x03)
$C$DW$117	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_OPMODE_OTHER"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_OpMode")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$118	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CHAN_MONO"), DW_AT_const_value(0x00)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CHAN_STEREO"), DW_AT_const_value(0x01)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CHAN_UNDEF"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_ChanType")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATAPACK_DISABLE"), DW_AT_const_value(0x00)
$C$DW$122	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATAPACK_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_DatapackType")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV8"), DW_AT_const_value(0x00)
$C$DW$124	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV16"), DW_AT_const_value(0x01)
$C$DW$125	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV32"), DW_AT_const_value(0x02)
$C$DW$126	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV64"), DW_AT_const_value(0x03)
$C$DW$127	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV128"), DW_AT_const_value(0x04)
$C$DW$128	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV256"), DW_AT_const_value(0x05)
$C$DW$129	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSDIV_RESERVE"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_Fsdiv")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$130	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_8"), DW_AT_const_value(0x00)
$C$DW$131	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_10"), DW_AT_const_value(0x01)
$C$DW$132	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_12"), DW_AT_const_value(0x02)
$C$DW$133	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_14"), DW_AT_const_value(0x03)
$C$DW$134	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_16"), DW_AT_const_value(0x04)
$C$DW$135	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_18"), DW_AT_const_value(0x05)
$C$DW$136	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_20"), DW_AT_const_value(0x06)
$C$DW$137	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_24"), DW_AT_const_value(0x07)
$C$DW$138	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_32"), DW_AT_const_value(0x08)
$C$DW$139	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_WORDLEN_INVALID"), DW_AT_const_value(0x09)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_WordLen")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$140	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_LOOPBACK_DISABLE"), DW_AT_const_value(0x00)
$C$DW$141	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_LOOPBACK_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$40

$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_LoopbackType")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$142	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_STEREO_ENABLE"), DW_AT_const_value(0x00)
$C$DW$143	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_MONO_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_MonoType")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$144	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSPOL_LOW"), DW_AT_const_value(0x00)
$C$DW$145	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSPOL_HIGH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_FsyncPol")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$146	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_RISING_EDGE"), DW_AT_const_value(0x00)
$C$DW$147	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FALLING_EDGE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$48

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_ClkPol")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$148	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATADELAY_ONEBIT"), DW_AT_const_value(0x00)
$C$DW$149	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATADELAY_TWOBIT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$50

$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_DataDelay")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$150	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_SIGNEXT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$151	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_SIGNEXT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$52

$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_SignextType")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$152	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_SLAVE"), DW_AT_const_value(0x00)
$C$DW$153	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_MASTER"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_Mode")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)

$C$DW$T$56	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$154	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATAFORMAT_LJUST"), DW_AT_const_value(0x00)
$C$DW$155	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_DATAFORMAT_DSP"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$56

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_DataFormat")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$156	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV2"), DW_AT_const_value(0x00)
$C$DW$157	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV4"), DW_AT_const_value(0x01)
$C$DW$158	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV8"), DW_AT_const_value(0x02)
$C$DW$159	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV16"), DW_AT_const_value(0x03)
$C$DW$160	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV32"), DW_AT_const_value(0x04)
$C$DW$161	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV64"), DW_AT_const_value(0x05)
$C$DW$162	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV128"), DW_AT_const_value(0x06)
$C$DW$163	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_CLKDIV256"), DW_AT_const_value(0x07)
	.dwendtag $C$DW$T$58

$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_Clkdiv")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$164	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSERROR_DISABLE"), DW_AT_const_value(0x00)
$C$DW$165	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_FSERROR_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$60

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_FsErr")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$62	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$166	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_OUERROR_DISABLE"), DW_AT_const_value(0x00)
$C$DW$167	.dwtag  DW_TAG_enumerator, DW_AT_name("I2S_OUERROR_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$62

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_OuErr")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$T$68	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$168	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$169	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$170	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x2e)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_name("I2SSCTRL")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_I2SSCTRL")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$172, DW_AT_name("RSVD0")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_name("I2SSRATE")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_I2SSRATE")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$174, DW_AT_name("RSVD1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("I2STXLT0")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_I2STXLT0")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("I2STXLT1")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_I2STXLT1")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$177, DW_AT_name("RSVD2")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("I2STXRT0")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_I2STXRT0")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("I2STXRT1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_I2STXRT1")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$180, DW_AT_name("RSVD3")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$181, DW_AT_name("I2SINTFL")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_I2SINTFL")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$182, DW_AT_name("RSVD4")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_name("I2SINTMASK")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_I2SINTMASK")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$184, DW_AT_name("RSVD5")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$185, DW_AT_name("I2SRXLT0")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_I2SRXLT0")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_name("I2SRXLT1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_I2SRXLT1")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_name("RSVD6")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$188, DW_AT_name("I2SRXRT0")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_I2SRXRT0")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$189, DW_AT_name("I2SRXRT1")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_I2SRXRT1")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2sRegs")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$190	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$31)
$C$DW$191	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$190)
$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$191)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x10)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0a)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$192, DW_AT_name("i2sNum")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_i2sNum")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$193, DW_AT_name("opMode")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$194, DW_AT_name("chType")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_chType")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$195, DW_AT_name("hwRegs")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_hwRegs")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("configured")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_configured")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$197, DW_AT_name("datapack")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_datapack")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$198, DW_AT_name("fsDiv")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_fsDiv")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$199, DW_AT_name("wordLen")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_wordLen")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$200, DW_AT_name("loopBackMode")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_loopBackMode")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$201, DW_AT_name("firstRead")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_firstRead")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2sObj")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_I2sHandle")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x28)
$C$DW$202	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$202, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$74


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x0e)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$203, DW_AT_name("dataType")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_dataType")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$204, DW_AT_name("loopBackMode")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_loopBackMode")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$205, DW_AT_name("fsPol")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_fsPol")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$206, DW_AT_name("clkPol")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_clkPol")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$207, DW_AT_name("datadelay")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_datadelay")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$208, DW_AT_name("datapack")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_datapack")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$209, DW_AT_name("signext")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_signext")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$210, DW_AT_name("wordLen")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_wordLen")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$211, DW_AT_name("i2sMode")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_i2sMode")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$212, DW_AT_name("dataFormat")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_dataFormat")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$213, DW_AT_name("fsDiv")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_fsDiv")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$214, DW_AT_name("clkDiv")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_clkDiv")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$215, DW_AT_name("FError")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_FError")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$216, DW_AT_name("OuError")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_OuError")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("I2S_Config")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x17)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x48)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_name("EBSR")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_name("RSVD0")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_name("PCGCR1")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$220, DW_AT_name("PCGCR2")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_name("PSRCR")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_name("PRCR")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$223, DW_AT_name("RSVD1")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_name("TIAFR")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_name("RSVD2")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_name("ODSCR")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$227, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$232, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$234, DW_AT_name("CCR1")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$235, DW_AT_name("CCR2")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_name("CGCR1")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_name("CGCR2")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$238, DW_AT_name("CGCR3")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_name("CGCR4")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_name("CCSSR")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_name("RSVD3")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("ECDR")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$243, DW_AT_name("RSVD4")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_name("RSVD5")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$247, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$248, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$250, DW_AT_name("RSVD6")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$251, DW_AT_name("DMAIFR")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$252, DW_AT_name("DMAIER")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("USBSCR")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$254, DW_AT_name("ESCR")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$255, DW_AT_name("RSVD7")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$260, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$261, DW_AT_name("RSVD8")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$263, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$265, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$266, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$267, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$270	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$77)
$C$DW$271	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$270)
$C$DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$271)
$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x10)
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
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$272	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$272)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x03)
$C$DW$273	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$273, DW_AT_upper_bound(0x02)
	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$274	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$274, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x13)
$C$DW$275	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$275, DW_AT_upper_bound(0x12)
	.dwendtag $C$DW$T$23


$C$DW$T$65	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x0e)
$C$DW$276	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$276, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x05)
$C$DW$277	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$277, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$66

$C$DW$T$86	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$86, DW_AT_address_class(0x17)
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

$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg0]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg1]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg2]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg3]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg4]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg5]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg6]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg7]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg8]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg9]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg10]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg11]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg12]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg13]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg14]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg15]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg16]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg17]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg18]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg19]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg20]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg21]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg22]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg23]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_reg24]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg25]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_reg26]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg27]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg28]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg29]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg30]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg31]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x20]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x21]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x22]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x23]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x24]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x25]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x26]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x27]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x28]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x29]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x30]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x31]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x32]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x33]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x34]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x35]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x36]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x37]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x38]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x39]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x40]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x41]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x42]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x43]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x44]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x45]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x46]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x47]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x48]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x49]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x50]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x51]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x52]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x53]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x54]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x55]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x56]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x57]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x58]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x59]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

