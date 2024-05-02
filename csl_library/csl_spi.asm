;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:14 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_spi.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SYS_peripheralReset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$47)
	.dwendtag $C$DW$1

	.bss	_SPI_Instance,3,0,0
$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("SPI_Instance")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_SPI_Instance")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _SPI_Instance]
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17569PcABI0 
	.sect	".text"
	.global	_SPI_init

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_init")
	.dwattr $C$DW$4, DW_AT_low_pc(_SPI_init)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SPI_init")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_spi.c",line 92,column 1,is_stmt,address _SPI_init

	.dwfde $C$DW$CIE, _SPI_init
;*******************************************************************************
;* FUNCTION NAME: SPI_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,AR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_spi.c",line 96,column 2,is_stmt
        MOV #7168, *SP(#0) ; |96| 
	.dwpsn	file "src/csl_spi.c",line 97,column 2,is_stmt
        MOV *SP(#0), AR3 ; |97| 
        MOV port(*AR3(short(#2))), AR1 ; |97| 
        BCLR @#1, AR1 ; |97| 
        MOV AR1, port(*AR3(short(#2))) ; |97| 
	.dwpsn	file "src/csl_spi.c",line 100,column 2,is_stmt
        MOV *SP(#0), AR3 ; |100| 
        MOV #0, AC0 ; |100| 
        BSET @#5, AC0 ; |100| 
        MOV port(*AR3(short(#4))), AR1 ; |100| 
        MOV AC0, port(*AR3(short(#4))) ; |100| 
	.dwpsn	file "src/csl_spi.c",line 102,column 2,is_stmt
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("_SYS_peripheralReset")
	.dwattr $C$DW$6, DW_AT_TI_call

        CALL #_SYS_peripheralReset ; |102| 
||      MOV #0, T0

                                        ; call occurs [#_SYS_peripheralReset] ; |102| 
	.dwpsn	file "src/csl_spi.c",line 113,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_spi.c",line 114,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$4, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x72)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.global	_SPI_open

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_open")
	.dwattr $C$DW$8, DW_AT_low_pc(_SPI_open)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_SPI_open")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$8, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x9e)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x0f)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_spi.c",line 159,column 1,is_stmt,address _SPI_open

	.dwfde $C$DW$CIE, _SPI_open
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("csNum")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_csNum")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("opMode")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SPI_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA, *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("csNum")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_csNum")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("opMode")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV T1, *SP(#1) ; |159| 
        MOV T0, *SP(#0) ; |159| 
	.dwpsn	file "src/csl_spi.c",line 162,column 2,is_stmt
        AMOV #_SPI_Instance, XAR3 ; |162| 
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_spi.c",line 164,column 2,is_stmt
        CMP *AR3 == #1, TC1 ; |164| 
        BCC $C$L1,!TC1 ; |164| 
                                        ; branchcc occurs ; |164| 
	.dwpsn	file "src/csl_spi.c",line 166,column 3,is_stmt
        MOV #0, *AR3 ; |166| 
	.dwpsn	file "src/csl_spi.c",line 167,column 3,is_stmt
        MOV #0, AC0 ; |167| 
        MOV AC0, dbl(*SP(#2))
	.dwpsn	file "src/csl_spi.c",line 168,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
        B $C$L2   ; |168| 
                                        ; branch occurs ; |168| 
$C$L1:    
	.dwpsn	file "src/csl_spi.c",line 171,column 2,is_stmt
        MOV *SP(#0), AR1 ; |171| 
        MOV AR1, *AR3(short(#1)) ; |171| 
	.dwpsn	file "src/csl_spi.c",line 172,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#1), AR1 ; |172| 
        MOV AR1, *AR3(short(#2)) ; |172| 
	.dwpsn	file "src/csl_spi.c",line 173,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$L2:    
	.dwpsn	file "src/csl_spi.c",line 174,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$8, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xae)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.global	_SPI_close

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_close")
	.dwattr $C$DW$15, DW_AT_low_pc(_SPI_close)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_SPI_close")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_spi.c",line 210,column 1,is_stmt,address _SPI_close

	.dwfde $C$DW$CIE, _SPI_close
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSpi")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: SPI_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_spi.c",line 211,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |211| 

        CMPU AC1 != AC0, TC1 ; |211| 
        BCC $C$L3,TC1 ; |211| 
                                        ; branchcc occurs ; |211| 
	.dwpsn	file "src/csl_spi.c",line 213,column 3,is_stmt
        MOV #-5, T0
        B $C$L5   ; |213| 
                                        ; branch occurs ; |213| 
$C$L3:    
	.dwpsn	file "src/csl_spi.c",line 216,column 2,is_stmt

        MOV #1, AR2
||      MOV *AR3, AR1 ; |216| 

        CMPU AR2 != AR1, TC1 ; |216| 
        BCC $C$L4,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
	.dwpsn	file "src/csl_spi.c",line 218,column 3,is_stmt
        MOV #0, *AR3 ; |218| 
	.dwpsn	file "src/csl_spi.c",line 219,column 3,is_stmt
        MOV #0, AC0 ; |219| 
        MOV AC0, dbl(*SP(#0))
$C$L4:    
	.dwpsn	file "src/csl_spi.c",line 222,column 2,is_stmt
        MOV #0, T0
$C$L5:    
	.dwpsn	file "src/csl_spi.c",line 223,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$15, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.global	_SPI_config

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_config")
	.dwattr $C$DW$19, DW_AT_low_pc(_SPI_config)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_SPI_config")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x10b)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_spi.c",line 270,column 1,is_stmt,address _SPI_config

	.dwfde $C$DW$CIE, _SPI_config
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSpi")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg17]
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("spiHwConfig")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_spiHwConfig")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: SPI_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("spiHwConfig")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_spiHwConfig")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("sysClkDiv")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_sysClkDiv")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("spicmd2")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_spicmd2")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_spi.c",line 275,column 2,is_stmt
        MOV #0, *SP(#4) ; |275| 
	.dwpsn	file "src/csl_spi.c",line 276,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |276| 

        CMPU AC1 != AC0, TC1 ; |276| 
        BCC $C$L6,TC1 ; |276| 
                                        ; branchcc occurs ; |276| 
	.dwpsn	file "src/csl_spi.c",line 278,column 3,is_stmt
        MOV #-5, T0
        B $C$L19  ; |278| 
                                        ; branch occurs ; |278| 
$C$L6:    
	.dwpsn	file "src/csl_spi.c",line 281,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |281| 
        BCC $C$L7,TC1 ; |281| 
                                        ; branchcc occurs ; |281| 
	.dwpsn	file "src/csl_spi.c",line 283,column 3,is_stmt
        MOV #-6, T0
        B $C$L19  ; |283| 
                                        ; branch occurs ; |283| 
$C$L7:    
	.dwpsn	file "src/csl_spi.c",line 287,column 2,is_stmt
        MOV #0, *port(#12289) ; |287| 
	.dwpsn	file "src/csl_spi.c",line 290,column 2,is_stmt
        AND #0xbfff, *port(#12289) ; |290| 
	.dwpsn	file "src/csl_spi.c",line 293,column 2,is_stmt

        MOV *AR3, AR1 ; |293| 
||      MOV #2, AR2

        CMPU AR1 <= AR2, TC1 ; |293| 
        BCC $C$L8,TC1 ; |293| 
                                        ; branchcc occurs ; |293| 
	.dwpsn	file "src/csl_spi.c",line 295,column 3,is_stmt
        MOV *AR3, AR1 ; |295| 
        SUB #1, AR1 ; |295| 
        MOV AR1, *SP(#5) ; |295| 
	.dwpsn	file "src/csl_spi.c",line 296,column 2,is_stmt
        B $C$L9   ; |296| 
                                        ; branch occurs ; |296| 
$C$L8:    
	.dwpsn	file "src/csl_spi.c",line 299,column 3,is_stmt
        MOV #2, *SP(#5) ; |299| 
$C$L9:    
	.dwpsn	file "src/csl_spi.c",line 303,column 2,is_stmt
        MOV *port(#12288), AR1 ; |303| 
        MOV *SP(#5), AR1 ; |303| 
        OR #0x0000, AR1, AR1 ; |303| 
        MOV AR1, *port(#12288) ; |303| 
	.dwpsn	file "src/csl_spi.c",line 309,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #3, AC0 ; |309| 
        MOV AC0, *SP(#6) ; |309| 
	.dwpsn	file "src/csl_spi.c",line 318,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#12292), AR2 ; |318| 
        AND #0xf000, AR2, AR2 ; |318| 
        MOV *AR3(short(#2)), AR1 ; |318| 
        SUB #1, AR1 ; |318| 
        AND #0x0fff, AR1, AR1 ; |318| 
        OR AR2, AR1 ; |318| 
        MOV AR1, *port(#12292) ; |318| 
	.dwpsn	file "src/csl_spi.c",line 325,column 2,is_stmt
        MOV *port(#12292), AR1 ; |325| 
        BCLR @#14, AR1 ; |325| 
        MOV *AR3(short(#3)) << #14, AC0 ; |325| 
        AND #0x4000, AC0, AR2 ; |325| 
        OR AR1, AR2 ; |325| 
        MOV AR2, *port(#12292) ; |325| 
	.dwpsn	file "src/csl_spi.c",line 330,column 2,is_stmt
        MOV #32768, *port(#12289) ; |330| 
	.dwpsn	file "src/csl_spi.c",line 337,column 2,is_stmt
        MOV *port(#12292), AR1 ; |337| 
        BCLR @#15, AR1 ; |337| 
        MOV *AR3(short(#4)) << #15, AC0 ; |337| 
        AND #0x8000, AC0, AR2 ; |337| 
        OR AR1, AR2 ; |337| 
        MOV AR2, *port(#12292) ; |337| 
	.dwpsn	file "src/csl_spi.c",line 345,column 2,is_stmt
        MOV *AR3(short(#5)) << #12, AC0 ; |345| 
        OR *SP(#6), AC0, AR1 ; |345| 
        MOV AR1, *SP(#6) ; |345| 
	.dwpsn	file "src/csl_spi.c",line 346,column 2,is_stmt
        MOV AR1, *port(#12293) ; |346| 
	.dwpsn	file "src/csl_spi.c",line 351,column 2,is_stmt
        B $C$L15  ; |351| 
                                        ; branch occurs ; |351| 
$C$L10:    
	.dwpsn	file "src/csl_spi.c",line 396,column 4,is_stmt
        MOV *port(#12290), AR2 ; |396| 
        MOV *AR3(short(#6)) << #3, AC0 ; |396| 
        AND #0xffe7, AR2, AR2 ; |396| 
        AND #0x0018, AC0, AR1 ; |396| 
        OR AR2, AR1 ; |396| 
        MOV AR1, *port(#12290) ; |396| 
	.dwpsn	file "src/csl_spi.c",line 398,column 4,is_stmt
        MOV *AR3(#8), AR1 ; |398| 
        SFTL AR1, #1 ; |398| 
        AND #0x0002, AR1, AR2 ; |398| 
        MOV *port(#12290), AR1 ; |398| 
        BCLR @#1, AR1 ; |398| 
        OR AR1, AR2 ; |398| 
        MOV AR2, *port(#12290) ; |398| 
	.dwpsn	file "src/csl_spi.c",line 400,column 4,is_stmt
        MOV *AR3(short(#7)), AR1 ; |400| 
        AND #0x0001, AR1, AR2 ; |400| 
        MOV *port(#12290), AR1 ; |400| 
        BCLR @#0, AR1 ; |400| 
        OR AR1, AR2 ; |400| 
        MOV AR2, *port(#12290) ; |400| 
	.dwpsn	file "src/csl_spi.c",line 402,column 4,is_stmt
        MOV *AR3(#9) << #2, AC0 ; |402| 
        MOV *port(#12290), AR1 ; |402| 
        AND #0x0004, AC0, AR2 ; |402| 
        BCLR @#2, AR1 ; |402| 
        OR AR1, AR2 ; |402| 
        MOV AR2, *port(#12290) ; |402| 
	.dwpsn	file "src/csl_spi.c",line 404,column 9,is_stmt
        B $C$L16  ; |404| 
                                        ; branch occurs ; |404| 
$C$L11:    
	.dwpsn	file "src/csl_spi.c",line 406,column 4,is_stmt
        MOV *port(#12290), AR2 ; |406| 
        MOV *AR3(short(#6)) << #11, AC0 ; |406| 
        AND #0xe7ff, AR2, AR2 ; |406| 
        AND #0x1800, AC0, AR1 ; |406| 
        OR AR2, AR1 ; |406| 
        MOV AR1, *port(#12290) ; |406| 
	.dwpsn	file "src/csl_spi.c",line 408,column 4,is_stmt
        MOV *AR3(#8) << #9, AC0 ; |408| 
        MOV *port(#12290), AR1 ; |408| 
        BCLR @#9, AR1 ; |408| 
        AND #0x0200, AC0, AR2 ; |408| 
        OR AR1, AR2 ; |408| 
        MOV AR2, *port(#12290) ; |408| 
	.dwpsn	file "src/csl_spi.c",line 410,column 4,is_stmt
        MOV *AR3(short(#7)) << #8, AC0 ; |410| 
        MOV *port(#12290), AR1 ; |410| 
        AND #0x0100, AC0, AR2 ; |410| 
        BCLR @#8, AR1 ; |410| 
        OR AR1, AR2 ; |410| 
        MOV AR2, *port(#12290) ; |410| 
	.dwpsn	file "src/csl_spi.c",line 412,column 4,is_stmt
        MOV *AR3(#9) << #10, AC0 ; |412| 
        MOV *port(#12290), AR1 ; |412| 
        AND #0x0400, AC0, AR2 ; |412| 
        BCLR @#10, AR1 ; |412| 
        OR AR1, AR2 ; |412| 
        MOV AR2, *port(#12290) ; |412| 
	.dwpsn	file "src/csl_spi.c",line 414,column 9,is_stmt
        B $C$L16  ; |414| 
                                        ; branch occurs ; |414| 
$C$L12:    
	.dwpsn	file "src/csl_spi.c",line 416,column 4,is_stmt
        MOV *port(#12291), AR2 ; |416| 
        MOV *AR3(short(#6)) << #3, AC0 ; |416| 
        AND #0xffe7, AR2, AR2 ; |416| 
        AND #0x0018, AC0, AR1 ; |416| 
        OR AR2, AR1 ; |416| 
        MOV AR1, *port(#12291) ; |416| 
	.dwpsn	file "src/csl_spi.c",line 418,column 4,is_stmt
        MOV *AR3(#8), AR1 ; |418| 
        SFTL AR1, #1 ; |418| 
        AND #0x0002, AR1, AR2 ; |418| 
        MOV *port(#12291), AR1 ; |418| 
        BCLR @#1, AR1 ; |418| 
        OR AR1, AR2 ; |418| 
        MOV AR2, *port(#12291) ; |418| 
	.dwpsn	file "src/csl_spi.c",line 420,column 4,is_stmt
        MOV *AR3(short(#7)), AR1 ; |420| 
        AND #0x0001, AR1, AR2 ; |420| 
        MOV *port(#12291), AR1 ; |420| 
        BCLR @#0, AR1 ; |420| 
        OR AR1, AR2 ; |420| 
        MOV AR2, *port(#12291) ; |420| 
	.dwpsn	file "src/csl_spi.c",line 422,column 4,is_stmt
        MOV *AR3(#9) << #2, AC0 ; |422| 
        MOV *port(#12291), AR1 ; |422| 
        AND #0x0004, AC0, AR2 ; |422| 
        BCLR @#2, AR1 ; |422| 
        OR AR1, AR2 ; |422| 
        MOV AR2, *port(#12291) ; |422| 
	.dwpsn	file "src/csl_spi.c",line 424,column 9,is_stmt
        B $C$L16  ; |424| 
                                        ; branch occurs ; |424| 
$C$L13:    
	.dwpsn	file "src/csl_spi.c",line 426,column 4,is_stmt
        MOV *port(#12291), AR2 ; |426| 
        MOV *AR3(short(#6)) << #11, AC0 ; |426| 
        AND #0xe7ff, AR2, AR2 ; |426| 
        AND #0x1800, AC0, AR1 ; |426| 
        OR AR2, AR1 ; |426| 
        MOV AR1, *port(#12291) ; |426| 
	.dwpsn	file "src/csl_spi.c",line 428,column 4,is_stmt
        MOV *AR3(#8) << #9, AC0 ; |428| 
        MOV *port(#12291), AR1 ; |428| 
        BCLR @#9, AR1 ; |428| 
        AND #0x0200, AC0, AR2 ; |428| 
        OR AR1, AR2 ; |428| 
        MOV AR2, *port(#12291) ; |428| 
	.dwpsn	file "src/csl_spi.c",line 430,column 4,is_stmt
        MOV *AR3(short(#7)) << #8, AC0 ; |430| 
        MOV *port(#12291), AR1 ; |430| 
        AND #0x0100, AC0, AR2 ; |430| 
        BCLR @#8, AR1 ; |430| 
        OR AR1, AR2 ; |430| 
        MOV AR2, *port(#12291) ; |430| 
	.dwpsn	file "src/csl_spi.c",line 432,column 4,is_stmt
        MOV *AR3(#9) << #10, AC0 ; |432| 
        MOV *port(#12291), AR1 ; |432| 
        AND #0x0400, AC0, AR2 ; |432| 
        BCLR @#10, AR1 ; |432| 
        OR AR1, AR2 ; |432| 
        MOV AR2, *port(#12291) ; |432| 
	.dwpsn	file "src/csl_spi.c",line 434,column 9,is_stmt
        B $C$L16  ; |434| 
                                        ; branch occurs ; |434| 
$C$L14:    
	.dwpsn	file "src/csl_spi.c",line 437,column 4,is_stmt
        MOV #-6, *SP(#4) ; |437| 
        B $C$L16  ; |437| 
                                        ; branch occurs ; |437| 
$C$L15:    
	.dwpsn	file "src/csl_spi.c",line 351,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |351| 
        BCC $C$L10,AR1 == #0 ; |351| 
                                        ; branchcc occurs ; |351| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |351| 
        BCC $C$L11,TC1 ; |351| 
                                        ; branchcc occurs ; |351| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |351| 
        BCC $C$L12,TC1 ; |351| 
                                        ; branchcc occurs ; |351| 
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |351| 
        BCC $C$L13,TC1 ; |351| 
                                        ; branchcc occurs ; |351| 
        B $C$L14  ; |351| 
                                        ; branch occurs ; |351| 
$C$L16:    
	.dwpsn	file "src/csl_spi.c",line 440,column 2,is_stmt

        MOV #-6, AR2
||      MOV *SP(#4), AR1 ; |440| 

        CMP AR2 == AR1, TC1 ; |440| 
        BCC $C$L17,TC1 ; |440| 
                                        ; branchcc occurs ; |440| 
	.dwpsn	file "src/csl_spi.c",line 442,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3 ; |442| 
	.dwpsn	file "src/csl_spi.c",line 443,column 2,is_stmt
        B $C$L18  ; |443| 
                                        ; branch occurs ; |443| 
$C$L17:    
	.dwpsn	file "src/csl_spi.c",line 446,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |446| 
$C$L18:    
	.dwpsn	file "src/csl_spi.c",line 449,column 2,is_stmt
        MOV *SP(#4), T0 ; |449| 
$C$L19:    
	.dwpsn	file "src/csl_spi.c",line 450,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$19, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x1c2)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.global	_SPI_deInit

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_deInit")
	.dwattr $C$DW$28, DW_AT_low_pc(_SPI_deInit)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_SPI_deInit")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x1e7)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "src/csl_spi.c",line 488,column 1,is_stmt,address _SPI_deInit

	.dwfde $C$DW$CIE, _SPI_deInit
;*******************************************************************************
;* FUNCTION NAME: SPI_deInit                                                   *
;*                                                                             *
;*   Function Uses Regs : T0,AR1,AR2,AR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (1 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_deInit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "src/csl_spi.c",line 491,column 2,is_stmt
        MOV *(#_SPI_Instance), AR1 ; |491| 
        MOV #1, AR2
        CMPU AR2 != AR1, TC1 ; |491| 
        BCC $C$L20,TC1 ; |491| 
                                        ; branchcc occurs ; |491| 
	.dwpsn	file "src/csl_spi.c",line 493,column 3,is_stmt
        MOV #0, *(#_SPI_Instance) ; |493| 
$C$L20:    
	.dwpsn	file "src/csl_spi.c",line 496,column 2,is_stmt
        MOV #7168, *SP(#0) ; |496| 
	.dwpsn	file "src/csl_spi.c",line 498,column 2,is_stmt
        MOV *SP(#0), AR3 ; |498| 
        MOV port(*AR3(short(#2))), AR1 ; |498| 
        BCLR @#1, AR1 ; |498| 
        BSET @#1, AR1 ; |498| 
        MOV AR1, port(*AR3(short(#2))) ; |498| 
	.dwpsn	file "src/csl_spi.c",line 500,column 2,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_spi.c",line 501,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x1f5)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_SPI_read

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_read")
	.dwattr $C$DW$31, DW_AT_low_pc(_SPI_read)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_SPI_read")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x21d)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_spi.c",line 544,column 1,is_stmt,address _SPI_read

	.dwfde $C$DW$CIE, _SPI_read
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSpi")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg17]
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readBuffer")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_readBuffer")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg19]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufLen")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_bufLen")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SPI_read                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_read:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("readBuffer")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_readBuffer")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("bufLen")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_bufLen")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("getWLen")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_getWLen")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("bufIndex")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_bufIndex")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("spiStatusReg")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_spiStatusReg")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |544| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_spi.c",line 552,column 2,is_stmt
        MOV #0, *SP(#6) ; |552| 
	.dwpsn	file "src/csl_spi.c",line 553,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |553| 

        CMPU AC1 == AC0, TC1 ; |553| 
        BCC $C$L21,TC1 ; |553| 
                                        ; branchcc occurs ; |553| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |553| 

        CMPU AR2 != AR1, TC1 ; |553| 
        BCC $C$L22,TC1 ; |553| 
                                        ; branchcc occurs ; |553| 
$C$L21:    
	.dwpsn	file "src/csl_spi.c",line 555,column 3,is_stmt
        MOV #-6, T0
        B $C$L30  ; |555| 
                                        ; branch occurs ; |555| 
$C$L22:    
	.dwpsn	file "src/csl_spi.c",line 562,column 2,is_stmt
        MOV *port(#12293), AR1 ; |562| 
        AND #0x00f8, AR1, AC0 ; |562| 
        SFTS AC0, #-3, AC0 ; |562| 
        ADD #1, AC0 ; |562| 
        MOV AC0, *SP(#5) ; |562| 
	.dwpsn	file "src/csl_spi.c",line 565,column 2,is_stmt

        MOV AC0, AR1 ; |565| 
||      MOV #32, AR2 ; |565| 

        CMP AR1 < AR2, TC1 ; |565| 
        BCC $C$L23,TC1 ; |565| 
                                        ; branchcc occurs ; |565| 
	.dwpsn	file "src/csl_spi.c",line 567,column 3,is_stmt
        MOV #-6, T0
        B $C$L30  ; |567| 
                                        ; branch occurs ; |567| 
$C$L23:    
	.dwpsn	file "src/csl_spi.c",line 571,column 8,is_stmt
        MOV *SP(#4), AR1 ; |571| 
        MOV *SP(#6), AR2 ; |571| 
        CMPU AR2 >= AR1, TC1 ; |571| 
        BCC $C$L29,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
$C$L24:    
$C$DW$L$_SPI_read$7$B:
	.dwpsn	file "src/csl_spi.c",line 579,column 3,is_stmt
        MOV *port(#12293), AR1 ; |579| 
        AND #0xfffc, AR1, AC0 ; |579| 
        BSET @#0, AC0 ; |579| 
        MOV AC0, *port(#12293) ; |579| 
$C$DW$L$_SPI_read$7$E:
$C$L25:    
$C$DW$L$_SPI_read$8$B:
	.dwpsn	file "src/csl_spi.c",line 589,column 10,is_stmt
        MOV *port(#12294), AR1 ; |589| 
        AND #0x0002, AR1, AR1 ; |589| 
        SFTL AR1, #-1 ; |589| 
        MOV AR1, *SP(#7) ; |589| 
	.dwpsn	file "src/csl_spi.c",line 591,column 13,is_stmt
        BTST #0, *SP(#7), TC1 ; |591| 
        BCC $C$L25,!TC1 ; |591| 
                                        ; branchcc occurs ; |591| 
$C$DW$L$_SPI_read$8$E:
$C$L26:    
$C$DW$L$_SPI_read$9$B:
	.dwpsn	file "src/csl_spi.c",line 597,column 10,is_stmt
        MOV *port(#12294), AR1 ; |597| 
        AND #0x0001, AR1, AC0 ; |597| 
        MOV AC0, *SP(#7) ; |597| 
	.dwpsn	file "src/csl_spi.c",line 599,column 13,is_stmt
        MOV AC0, AR1

        AND #0x0001, AR1, AR1 ; |599| 
||      MOV #1, AR2

        CMP AR1 == AR2, TC1 ; |599| 
        BCC $C$L26,TC1 ; |599| 
                                        ; branchcc occurs ; |599| 
$C$DW$L$_SPI_read$9$E:
$C$DW$L$_SPI_read$10$B:
	.dwpsn	file "src/csl_spi.c",line 601,column 3,is_stmt
        CMP *SP(#5) == #16, TC1 ; |601| 
        BCC $C$L27,!TC1 ; |601| 
                                        ; branchcc occurs ; |601| 
$C$DW$L$_SPI_read$10$E:
$C$DW$L$_SPI_read$11$B:
	.dwpsn	file "src/csl_spi.c",line 606,column 4,is_stmt
        MOV *SP(#6), T0 ; |606| 
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#12296), AR1 ; |606| 
        MOV AR1, *AR3(T0) ; |606| 
	.dwpsn	file "src/csl_spi.c",line 608,column 4,is_stmt
        ADD #1, *SP(#6) ; |608| 
	.dwpsn	file "src/csl_spi.c",line 609,column 3,is_stmt
        B $C$L28  ; |609| 
                                        ; branch occurs ; |609| 
$C$DW$L$_SPI_read$11$E:
$C$L27:    
$C$DW$L$_SPI_read$12$B:
	.dwpsn	file "src/csl_spi.c",line 610,column 8,is_stmt
        CMP *SP(#5) == #8, TC1 ; |610| 
        BCC $C$L28,!TC1 ; |610| 
                                        ; branchcc occurs ; |610| 
$C$DW$L$_SPI_read$12$E:
$C$DW$L$_SPI_read$13$B:
	.dwpsn	file "src/csl_spi.c",line 615,column 4,is_stmt
        MOV *SP(#6), T0 ; |615| 
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*port(#12296))), AR1 ; |615| 
        MOV AR1, *AR3(T0) ; |615| 
	.dwpsn	file "src/csl_spi.c",line 617,column 4,is_stmt
        ADD #1, *SP(#6) ; |617| 
$C$DW$L$_SPI_read$13$E:
$C$L28:    
$C$DW$L$_SPI_read$14$B:
	.dwpsn	file "src/csl_spi.c",line 571,column 8,is_stmt
        MOV *SP(#4), AR1 ; |571| 
        MOV *SP(#6), AR2 ; |571| 
        CMPU AR2 < AR1, TC1 ; |571| 
        BCC $C$L24,TC1 ; |571| 
                                        ; branchcc occurs ; |571| 
$C$DW$L$_SPI_read$14$E:
$C$L29:    
	.dwpsn	file "src/csl_spi.c",line 620,column 2,is_stmt
        MOV #0, T0
$C$L30:    
	.dwpsn	file "src/csl_spi.c",line 621,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$42	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$42, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L24:1:1714639454")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x23b)
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x26b)
$C$DW$43	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$43, DW_AT_low_pc($C$DW$L$_SPI_read$7$B)
	.dwattr $C$DW$43, DW_AT_high_pc($C$DW$L$_SPI_read$7$E)
$C$DW$44	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$44, DW_AT_low_pc($C$DW$L$_SPI_read$10$B)
	.dwattr $C$DW$44, DW_AT_high_pc($C$DW$L$_SPI_read$10$E)
$C$DW$45	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$45, DW_AT_low_pc($C$DW$L$_SPI_read$11$B)
	.dwattr $C$DW$45, DW_AT_high_pc($C$DW$L$_SPI_read$11$E)
$C$DW$46	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$46, DW_AT_low_pc($C$DW$L$_SPI_read$12$B)
	.dwattr $C$DW$46, DW_AT_high_pc($C$DW$L$_SPI_read$12$E)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_SPI_read$13$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_SPI_read$13$E)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_SPI_read$14$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_SPI_read$14$E)

$C$DW$49	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$49, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L25:2:1714639454")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x249)
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x24f)
$C$DW$50	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$50, DW_AT_low_pc($C$DW$L$_SPI_read$8$B)
	.dwattr $C$DW$50, DW_AT_high_pc($C$DW$L$_SPI_read$8$E)
	.dwendtag $C$DW$49


$C$DW$51	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$51, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L26:2:1714639454")
	.dwattr $C$DW$51, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x251)
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x257)
$C$DW$52	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$52, DW_AT_low_pc($C$DW$L$_SPI_read$9$B)
	.dwattr $C$DW$52, DW_AT_high_pc($C$DW$L$_SPI_read$9$E)
	.dwendtag $C$DW$51

	.dwendtag $C$DW$42

	.dwattr $C$DW$31, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x26d)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.global	_SPI_write

$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_write")
	.dwattr $C$DW$53, DW_AT_low_pc(_SPI_write)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_SPI_write")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$53, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0x295)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_spi.c",line 664,column 1,is_stmt,address _SPI_write

	.dwfde $C$DW$CIE, _SPI_write
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSpi")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg17]
$C$DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("writeBuffer")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_writeBuffer")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg19]
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufLen")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_bufLen")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: SPI_write                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_write:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("writeBuffer")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_writeBuffer")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("bufLen")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_bufLen")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("getWLen")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_getWLen")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("bufIndex")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_bufIndex")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("spiStatusReg")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_spiStatusReg")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |664| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_spi.c",line 672,column 2,is_stmt
        MOV #0, *SP(#6) ; |672| 
	.dwpsn	file "src/csl_spi.c",line 673,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |673| 

        CMPU AC1 == AC0, TC1 ; |673| 
        BCC $C$L31,TC1 ; |673| 
                                        ; branchcc occurs ; |673| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |673| 

        CMPU AR2 != AR1, TC1 ; |673| 
        BCC $C$L32,TC1 ; |673| 
                                        ; branchcc occurs ; |673| 
$C$L31:    
	.dwpsn	file "src/csl_spi.c",line 675,column 3,is_stmt
        MOV #-6, T0
        B $C$L40  ; |675| 
                                        ; branch occurs ; |675| 
$C$L32:    
	.dwpsn	file "src/csl_spi.c",line 682,column 2,is_stmt
        MOV *port(#12293), AR1 ; |682| 
        AND #0x00f8, AR1, AC0 ; |682| 
        SFTS AC0, #-3, AC0 ; |682| 
        ADD #1, AC0 ; |682| 
        MOV AC0, *SP(#5) ; |682| 
	.dwpsn	file "src/csl_spi.c",line 685,column 2,is_stmt

        MOV AC0, AR1 ; |685| 
||      MOV #32, AR2 ; |685| 

        CMPU AR1 < AR2, TC1 ; |685| 
        BCC $C$L33,TC1 ; |685| 
                                        ; branchcc occurs ; |685| 
	.dwpsn	file "src/csl_spi.c",line 687,column 3,is_stmt
        MOV #-6, T0
        B $C$L40  ; |687| 
                                        ; branch occurs ; |687| 
$C$L33:    
	.dwpsn	file "src/csl_spi.c",line 691,column 8,is_stmt
        MOV *SP(#4), AR1 ; |691| 
        MOV *SP(#6), AR2 ; |691| 
        CMPU AR2 >= AR1, TC1 ; |691| 
        BCC $C$L39,TC1 ; |691| 
                                        ; branchcc occurs ; |691| 
$C$L34:    
$C$DW$L$_SPI_write$7$B:
	.dwpsn	file "src/csl_spi.c",line 694,column 3,is_stmt
        CMP *SP(#5) == #16, TC1 ; |694| 
        BCC $C$L35,!TC1 ; |694| 
                                        ; branchcc occurs ; |694| 
$C$DW$L$_SPI_write$7$E:
$C$DW$L$_SPI_write$8$B:
	.dwpsn	file "src/csl_spi.c",line 700,column 4,is_stmt
        MOV *SP(#6), T0 ; |700| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |700| 
        MOV AR1, *port(#12297) ; |700| 
	.dwpsn	file "src/csl_spi.c",line 701,column 4,is_stmt
        MOV #0, *port(#12296) ; |701| 
	.dwpsn	file "src/csl_spi.c",line 703,column 4,is_stmt
        ADD #1, *SP(#6) ; |703| 
	.dwpsn	file "src/csl_spi.c",line 704,column 3,is_stmt
        B $C$L36  ; |704| 
                                        ; branch occurs ; |704| 
$C$DW$L$_SPI_write$8$E:
$C$L35:    
$C$DW$L$_SPI_write$9$B:
	.dwpsn	file "src/csl_spi.c",line 706,column 8,is_stmt
        CMP *SP(#5) == #8, TC1 ; |706| 
        BCC $C$L36,!TC1 ; |706| 
                                        ; branchcc occurs ; |706| 
$C$DW$L$_SPI_write$9$E:
$C$DW$L$_SPI_write$10$B:
	.dwpsn	file "src/csl_spi.c",line 712,column 4,is_stmt
        MOV *SP(#6), T0 ; |712| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AC0 ; |712| 
        SFTL AC0, #8, AC0 ; |712| 
        MOV AC0, *port(#12297) ; |712| 
	.dwpsn	file "src/csl_spi.c",line 713,column 4,is_stmt
        MOV #0, *port(#12296) ; |713| 
	.dwpsn	file "src/csl_spi.c",line 715,column 4,is_stmt
        ADD #1, *SP(#6) ; |715| 
$C$DW$L$_SPI_write$10$E:
$C$L36:    
$C$DW$L$_SPI_write$11$B:
	.dwpsn	file "src/csl_spi.c",line 722,column 3,is_stmt
        MOV *port(#12293), AR1 ; |722| 
        AND #0xfffc, AR1, AC0 ; |722| 
        BSET @#1, AC0 ; |722| 
        MOV AC0, *port(#12293) ; |722| 
$C$DW$L$_SPI_write$11$E:
$C$L37:    
$C$DW$L$_SPI_write$12$B:
	.dwpsn	file "src/csl_spi.c",line 731,column 10,is_stmt
        MOV *port(#12294), AR1 ; |731| 
        AND #0x0002, AR1, AR1 ; |731| 
        SFTL AR1, #-1 ; |731| 
        MOV AR1, *SP(#7) ; |731| 
	.dwpsn	file "src/csl_spi.c",line 733,column 13,is_stmt
        BTST #0, *SP(#7), TC1 ; |733| 
        BCC $C$L37,!TC1 ; |733| 
                                        ; branchcc occurs ; |733| 
$C$DW$L$_SPI_write$12$E:
$C$L38:    
$C$DW$L$_SPI_write$13$B:
	.dwpsn	file "src/csl_spi.c",line 739,column 10,is_stmt
        MOV *port(#12294), AR1 ; |739| 
        AND #0x0001, AR1, AC0 ; |739| 
        MOV AC0, *SP(#7) ; |739| 
	.dwpsn	file "src/csl_spi.c",line 741,column 13,is_stmt
        MOV AC0, AR1

        AND #0x0001, AR1, AR1 ; |741| 
||      MOV #1, AR2

        CMPU AR1 == AR2, TC1 ; |741| 
        BCC $C$L38,TC1 ; |741| 
                                        ; branchcc occurs ; |741| 
$C$DW$L$_SPI_write$13$E:
$C$DW$L$_SPI_write$14$B:
	.dwpsn	file "src/csl_spi.c",line 691,column 8,is_stmt
        MOV *SP(#4), AR1 ; |691| 
        MOV *SP(#6), AR2 ; |691| 
        CMPU AR2 < AR1, TC1 ; |691| 
        BCC $C$L34,TC1 ; |691| 
                                        ; branchcc occurs ; |691| 
$C$DW$L$_SPI_write$14$E:
$C$L39:    
	.dwpsn	file "src/csl_spi.c",line 744,column 2,is_stmt
        MOV #0, T0
$C$L40:    
	.dwpsn	file "src/csl_spi.c",line 745,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$64	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$64, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L34:1:1714639454")
	.dwattr $C$DW$64, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x2b3)
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x2e7)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_SPI_write$7$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_SPI_write$7$E)
$C$DW$66	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$66, DW_AT_low_pc($C$DW$L$_SPI_write$8$B)
	.dwattr $C$DW$66, DW_AT_high_pc($C$DW$L$_SPI_write$8$E)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_SPI_write$9$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_SPI_write$9$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_SPI_write$10$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_SPI_write$10$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_SPI_write$11$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_SPI_write$11$E)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_SPI_write$14$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_SPI_write$14$E)

$C$DW$71	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$71, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L37:2:1714639454")
	.dwattr $C$DW$71, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x2d7)
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x2dd)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_SPI_write$12$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_SPI_write$12$E)
	.dwendtag $C$DW$71


$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_spi.asm:$C$L38:2:1714639454")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x2df)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x2e5)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_SPI_write$13$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_SPI_write$13$E)
	.dwendtag $C$DW$73

	.dwendtag $C$DW$64

	.dwattr $C$DW$53, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x2e9)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text"
	.global	_SPI_dataTransaction

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("SPI_dataTransaction")
	.dwattr $C$DW$75, DW_AT_low_pc(_SPI_dataTransaction)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_SPI_dataTransaction")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$75, DW_AT_TI_begin_file("src/csl_spi.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x315)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_spi.c",line 793,column 1,is_stmt,address _SPI_dataTransaction

	.dwfde $C$DW$CIE, _SPI_dataTransaction
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hSpi")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg17]
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rwBuffer")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_rwBuffer")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg19]
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rwBufLen")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_rwBufLen")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("readOrWrite")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_readOrWrite")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: SPI_dataTransaction                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_SPI_dataTransaction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("hSpi")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_hSpi")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("rwBuffer")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_rwBuffer")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("rwBufLen")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_rwBufLen")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("readOrWrite")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_readOrWrite")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T1, *SP(#5) ; |793| 
        MOV T0, *SP(#4) ; |793| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_spi.c",line 796,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |796| 

        CMPU AC1 != AC0, TC1 ; |796| 
        BCC $C$L41,TC1 ; |796| 
                                        ; branchcc occurs ; |796| 
	.dwpsn	file "src/csl_spi.c",line 798,column 3,is_stmt
        MOV #-5, T0
        B $C$L48  ; |798| 
                                        ; branch occurs ; |798| 
$C$L41:    
	.dwpsn	file "src/csl_spi.c",line 801,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 == AC0, TC1 ; |801| 
        BCC $C$L42,TC1 ; |801| 
                                        ; branchcc occurs ; |801| 

        MOV #0, AR2
||      MOV *SP(#4), AR1 ; |801| 

        CMPU AR2 != AR1, TC1 ; |801| 
        BCC $C$L43,TC1 ; |801| 
                                        ; branchcc occurs ; |801| 
$C$L42:    
	.dwpsn	file "src/csl_spi.c",line 803,column 3,is_stmt
        MOV #-6, T0
        B $C$L48  ; |803| 
                                        ; branch occurs ; |803| 
$C$L43:    
	.dwpsn	file "src/csl_spi.c",line 806,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |806| 
        CMPU AR2 != AR1, TC1 ; |806| 
        BCC $C$L44,TC1 ; |806| 
                                        ; branchcc occurs ; |806| 
	.dwpsn	file "src/csl_spi.c",line 808,column 3,is_stmt
        MOV #-6, T0
        B $C$L48  ; |808| 
                                        ; branch occurs ; |808| 
$C$L44:    
	.dwpsn	file "src/csl_spi.c",line 812,column 2,is_stmt

        MOV #1, AR2
||      MOV *SP(#5), AR1 ; |812| 

        CMPU AR2 != AR1, TC1 ; |812| 
        BCC $C$L45,TC1 ; |812| 
                                        ; branchcc occurs ; |812| 
	.dwpsn	file "src/csl_spi.c",line 814,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#4), T0 ; |814| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_SPI_read")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_SPI_read ; |814| 
                                        ; call occurs [#_SPI_read] ; |814| 
        MOV T0, *SP(#6) ; |814| 
	.dwpsn	file "src/csl_spi.c",line 815,column 2,is_stmt
        B $C$L47  ; |815| 
                                        ; branch occurs ; |815| 
$C$L45:    
	.dwpsn	file "src/csl_spi.c",line 817,column 7,is_stmt
        MOV #2, AR2
        CMPU AR2 != AR1, TC1 ; |817| 
        BCC $C$L46,TC1 ; |817| 
                                        ; branchcc occurs ; |817| 
	.dwpsn	file "src/csl_spi.c",line 819,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#4), T0 ; |819| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_SPI_write")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_SPI_write ; |819| 
                                        ; call occurs [#_SPI_write] ; |819| 
        MOV T0, *SP(#6) ; |819| 
	.dwpsn	file "src/csl_spi.c",line 820,column 2,is_stmt
        B $C$L47  ; |820| 
                                        ; branch occurs ; |820| 
$C$L46:    
	.dwpsn	file "src/csl_spi.c",line 823,column 3,is_stmt
        MOV #-6, *SP(#6) ; |823| 
$C$L47:    
	.dwpsn	file "src/csl_spi.c",line 826,column 2,is_stmt
        MOV *SP(#6), T0 ; |826| 
$C$L48:    
	.dwpsn	file "src/csl_spi.c",line 827,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$75, DW_AT_TI_end_file("src/csl_spi.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x33b)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_SYS_peripheralReset

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$88	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CS_NUM_0"), DW_AT_const_value(0x00)
$C$DW$89	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CS_NUM_1"), DW_AT_const_value(0x01)
$C$DW$90	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CS_NUM_2"), DW_AT_const_value(0x02)
$C$DW$91	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CS_NUM_3"), DW_AT_const_value(0x03)
$C$DW$92	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CS_NUM_INVALID"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$20

$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_HwMode")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$93	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_POLLING_MODE"), DW_AT_const_value(0x00)
$C$DW$94	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_INTERRUPT_MODE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_OperMode")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_1"), DW_AT_const_value(0x00)
$C$DW$96	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_2"), DW_AT_const_value(0x01)
$C$DW$97	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_3"), DW_AT_const_value(0x02)
$C$DW$98	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_4"), DW_AT_const_value(0x03)
$C$DW$99	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_5"), DW_AT_const_value(0x04)
$C$DW$100	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_6"), DW_AT_const_value(0x05)
$C$DW$101	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_7"), DW_AT_const_value(0x06)
$C$DW$102	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_8"), DW_AT_const_value(0x07)
$C$DW$103	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_9"), DW_AT_const_value(0x08)
$C$DW$104	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_10"), DW_AT_const_value(0x09)
$C$DW$105	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_11"), DW_AT_const_value(0x0a)
$C$DW$106	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_12"), DW_AT_const_value(0x0b)
$C$DW$107	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_13"), DW_AT_const_value(0x0c)
$C$DW$108	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_14"), DW_AT_const_value(0x0d)
$C$DW$109	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_15"), DW_AT_const_value(0x0e)
$C$DW$110	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_16"), DW_AT_const_value(0x0f)
$C$DW$111	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_17"), DW_AT_const_value(0x10)
$C$DW$112	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_18"), DW_AT_const_value(0x11)
$C$DW$113	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_19"), DW_AT_const_value(0x12)
$C$DW$114	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_20"), DW_AT_const_value(0x13)
$C$DW$115	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_21"), DW_AT_const_value(0x14)
$C$DW$116	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_22"), DW_AT_const_value(0x15)
$C$DW$117	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_23"), DW_AT_const_value(0x16)
$C$DW$118	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_24"), DW_AT_const_value(0x17)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_25"), DW_AT_const_value(0x18)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_26"), DW_AT_const_value(0x19)
$C$DW$121	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_27"), DW_AT_const_value(0x1a)
$C$DW$122	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_28"), DW_AT_const_value(0x1b)
$C$DW$123	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_29"), DW_AT_const_value(0x1c)
$C$DW$124	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_30"), DW_AT_const_value(0x1d)
$C$DW$125	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_31"), DW_AT_const_value(0x1e)
$C$DW$126	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_LENGTH_32"), DW_AT_const_value(0x1f)
$C$DW$127	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_MAX_WORD_LEN"), DW_AT_const_value(0x20)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_WordLen")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$128	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_IRQ_DISABLE"), DW_AT_const_value(0x00)
$C$DW$129	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WORD_IRQ_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_WordCntEnb")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$130	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_FRAME_IRQ_DISABLE"), DW_AT_const_value(0x00)
$C$DW$131	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_FRAME_IRQ_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_FrameCntEnb")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$132	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_DATA_DLY_0"), DW_AT_const_value(0x00)
$C$DW$133	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_DATA_DLY_1"), DW_AT_const_value(0x01)
$C$DW$134	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_DATA_DLY_2"), DW_AT_const_value(0x02)
$C$DW$135	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_DATA_DLY_3"), DW_AT_const_value(0x03)
$C$DW$136	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_DATA_DLY_UNKNOWN"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_DataDly")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$137	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CLKP_LOW_AT_IDLE"), DW_AT_const_value(0x00)
$C$DW$138	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CLKP_HIGH_AT_IDLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_ClkPolarity")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$139	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CSP_ACTIVE_LOW"), DW_AT_const_value(0x00)
$C$DW$140	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CSP_ACTIVE_HIGH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_ChipSelPol")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$141	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CLK_PH_FALL_EDGE"), DW_AT_const_value(0x00)
$C$DW$142	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_CLK_PH_RISE_EDGE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$37

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_ClkPh")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$143	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG4"), DW_AT_const_value(0x00)
$C$DW$144	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG3"), DW_AT_const_value(0x01)
$C$DW$145	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_SYS_PG1"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysPGFlags")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x03)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("configured")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_configured")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$147, DW_AT_name("mode")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$148, DW_AT_name("opMode")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SpiObj")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$49	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_address_class(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SpiHandle")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0a)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("spiClkDiv")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_spiClkDiv")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$150, DW_AT_name("wLen")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_wLen")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("frLen")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_frLen")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$152, DW_AT_name("wcEnable")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_wcEnable")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$153, DW_AT_name("fcEnable")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_fcEnable")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$154, DW_AT_name("csNum")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_csNum")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$155, DW_AT_name("dataDelay")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_dataDelay")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$156, DW_AT_name("clkPol")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_clkPol")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$157, DW_AT_name("csPol")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_csPol")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$158, DW_AT_name("clkPh")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_clkPh")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_Config")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x17)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x48)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$159, DW_AT_name("EBSR")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$160, DW_AT_name("RSVD0")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$161, DW_AT_name("PCGCR1")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$162, DW_AT_name("PCGCR2")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$163, DW_AT_name("PSRCR")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$164, DW_AT_name("PRCR")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$165, DW_AT_name("RSVD1")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$166, DW_AT_name("TIAFR")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$167, DW_AT_name("RSVD2")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$168, DW_AT_name("ODSCR")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$169, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$170, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$171, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$172, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$173, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$174, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$175, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$176, DW_AT_name("CCR1")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$177, DW_AT_name("CCR2")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$178, DW_AT_name("CGCR1")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$179, DW_AT_name("CGCR2")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$180, DW_AT_name("CGCR3")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$181, DW_AT_name("CGCR4")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$182, DW_AT_name("CCSSR")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$183, DW_AT_name("RSVD3")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$184, DW_AT_name("ECDR")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$185, DW_AT_name("RSVD4")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$186, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$187, DW_AT_name("RSVD5")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$188, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$189, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$190, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$191, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$192, DW_AT_name("RSVD6")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$193, DW_AT_name("DMAIFR")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$194, DW_AT_name("DMAIER")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$195, DW_AT_name("USBSCR")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$196, DW_AT_name("ESCR")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$197, DW_AT_name("RSVD7")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$198, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$199, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$200, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$201, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$202, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$203, DW_AT_name("RSVD8")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$204, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$205, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$206, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$207, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$208, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$209, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$210, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$211, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$212	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$54)
$C$DW$213	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$212)
$C$DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$213)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x10)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x0a)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$214, DW_AT_name("SPICDR")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_SPICDR")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$215, DW_AT_name("SPICCR")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_SPICCR")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$216, DW_AT_name("SPIDCR1")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_SPIDCR1")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$217, DW_AT_name("SPIDCR2")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_SPIDCR2")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$218, DW_AT_name("SPICMD1")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_SPICMD1")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$219, DW_AT_name("SPICMD2")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_SPICMD2")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$220, DW_AT_name("SPISTAT1")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_SPISTAT1")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$221, DW_AT_name("SPISTAT2")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_SPISTAT2")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$222, DW_AT_name("SPIDR1")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_SPIDR1")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$223, DW_AT_name("SPIDR2")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_SPIDR2")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$45

$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SpiRegs")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$224	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$57)
$C$DW$225	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$224)
$C$DW$T$58	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$225)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x10)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SpiRegsOvly")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_name("SPI_Command")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$226	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_RSVD_CMD"), DW_AT_const_value(0x00)
$C$DW$227	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_READ"), DW_AT_const_value(0x01)
$C$DW$228	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_WRITE"), DW_AT_const_value(0x02)
$C$DW$229	.dwtag  DW_TAG_enumerator, DW_AT_name("SPI_RSVD1_CMD"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("SPI_Command")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
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
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$230	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
$C$DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$230)

$C$DW$T$41	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x0e)
$C$DW$231	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$231, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$232	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$232, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x05)
$C$DW$233	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$233, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$43

$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x17)
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

$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg0]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg1]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg2]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg3]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg4]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg5]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg6]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg7]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg8]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg9]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg10]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg11]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg12]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg13]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg14]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg15]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg16]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg17]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg18]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg19]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg20]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg21]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg22]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg23]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg24]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg25]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg26]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg27]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg28]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg29]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg30]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg31]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x20]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x21]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x22]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x23]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x24]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x25]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x26]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x27]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x28]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x29]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x30]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x31]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x32]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x33]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x34]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x35]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x36]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x37]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x38]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x39]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x40]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x41]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x42]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x43]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x44]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x45]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x46]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x47]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x48]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x49]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x50]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x51]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x52]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x53]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x54]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x55]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x56]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x57]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x58]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x59]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

