;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:43:52 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_dma.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17288yK4AqO 
	.sect	".text"
	.global	_DMA_init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_init")
	.dwattr $C$DW$1, DW_AT_low_pc(_DMA_init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DMA_init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x01)
	.dwpsn	file "src/csl_dma.c",line 102,column 1,is_stmt,address _DMA_init

	.dwfde $C$DW$CIE, _DMA_init
;*******************************************************************************
;* FUNCTION NAME: DMA_init                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 1 word                                               *
;*                        (1 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
	.dwpsn	file "src/csl_dma.c",line 104,column 2,is_stmt
        MOV #0, AC0 ; |104| 
        MOV *port(#7172), AR1 ; |104| 
        BSET @#5, AC0 ; |104| 
        MOV AC0, *port(#7172) ; |104| 
	.dwpsn	file "src/csl_dma.c",line 106,column 5,is_stmt
        MOV *port(#7173), AR1 ; |106| 
        BCLR @#4, AR1 ; |106| 
        BSET @#4, AR1 ; |106| 
        MOV AR1, *port(#7173) ; |106| 
	.dwpsn	file "src/csl_dma.c",line 109,column 5,is_stmt
        AND #0xfff7, *port(#7170) ; |109| 
	.dwpsn	file "src/csl_dma.c",line 110,column 5,is_stmt
        AND #0xfff7, *port(#7171) ; |110| 
	.dwpsn	file "src/csl_dma.c",line 111,column 5,is_stmt
        AND #0xffef, *port(#7171) ; |111| 
	.dwpsn	file "src/csl_dma.c",line 112,column 5,is_stmt
        AND #0xffdf, *port(#7171) ; |112| 
	.dwpsn	file "src/csl_dma.c",line 118,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "src/csl_dma.c",line 119,column 1,is_stmt
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_DMA_open

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_open")
	.dwattr $C$DW$3, DW_AT_low_pc(_DMA_open)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_DMA_open")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_dma.c",line 173,column 1,is_stmt,address _DMA_open

	.dwfde $C$DW$CIE, _DMA_open
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("chanNum")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pDmaChanObj")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_pDmaChanObj")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg17]
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DMA_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("pDmaChanObj")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_pDmaChanObj")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$10	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |173| 
	.dwpsn	file "src/csl_dma.c",line 176,column 5,is_stmt

        MOV T0, AR1 ; |176| 
||      MOV #16, AR2 ; |176| 

        CMP AR1 >= AR2, TC1 ; |176| 
        BCC $C$L1,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L2,AC0 != #0 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$L1:    
	.dwpsn	file "src/csl_dma.c",line 178,column 5,is_stmt
        MOV #0, AC0 ; |178| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 179,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L9,AC0 == #0 ; |179| 
                                        ; branchcc occurs ; |179| 
	.dwpsn	file "src/csl_dma.c",line 181,column 10,is_stmt
        MOV #-6, *AR3 ; |181| 
	.dwpsn	file "src/csl_dma.c",line 183,column 5,is_stmt
        B $C$L9   ; |183| 
                                        ; branch occurs ; |183| 
$C$L2:    
	.dwpsn	file "src/csl_dma.c",line 184,column 10,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L3,AC0 != #0 ; |184| 
                                        ; branchcc occurs ; |184| 
	.dwpsn	file "src/csl_dma.c",line 186,column 3,is_stmt
        MOV #0, AC0 ; |186| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 187,column 2,is_stmt
        B $C$L9   ; |187| 
                                        ; branch occurs ; |187| 
$C$L3:    
	.dwpsn	file "src/csl_dma.c",line 190,column 9,is_stmt
        MOV #0, *AR3 ; |190| 
	.dwpsn	file "src/csl_dma.c",line 191,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#0), AR1 ; |191| 
        MOV AR1, *AR3(short(#1)) ; |191| 
	.dwpsn	file "src/csl_dma.c",line 192,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#3)) ; |192| 
	.dwpsn	file "src/csl_dma.c",line 194,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#4)) ; |194| 
	.dwpsn	file "src/csl_dma.c",line 195,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#5)) ; |195| 
	.dwpsn	file "src/csl_dma.c",line 196,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#6)) ; |196| 
	.dwpsn	file "src/csl_dma.c",line 198,column 9,is_stmt
        B $C$L8   ; |198| 
                                        ; branch occurs ; |198| 
$C$L4:    
	.dwpsn	file "src/csl_dma.c",line 204,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3072, *AR3 ; |204| 
	.dwpsn	file "src/csl_dma.c",line 205,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(short(#2)) ; |205| 
	.dwpsn	file "src/csl_dma.c",line 206,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 207,column 18,is_stmt
        B $C$L9   ; |207| 
                                        ; branch occurs ; |207| 
$C$L5:    
	.dwpsn	file "src/csl_dma.c",line 213,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3328, *AR3 ; |213| 
	.dwpsn	file "src/csl_dma.c",line 214,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(short(#2)) ; |214| 
	.dwpsn	file "src/csl_dma.c",line 215,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 216,column 18,is_stmt
        B $C$L9   ; |216| 
                                        ; branch occurs ; |216| 
$C$L6:    
	.dwpsn	file "src/csl_dma.c",line 222,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3584, *AR3 ; |222| 
	.dwpsn	file "src/csl_dma.c",line 223,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3(short(#2)) ; |223| 
	.dwpsn	file "src/csl_dma.c",line 224,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 225,column 18,is_stmt
        B $C$L9   ; |225| 
                                        ; branch occurs ; |225| 
$C$L7:    
	.dwpsn	file "src/csl_dma.c",line 231,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3840, *AR3 ; |231| 
	.dwpsn	file "src/csl_dma.c",line 232,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #3, *AR3(short(#2)) ; |232| 
	.dwpsn	file "src/csl_dma.c",line 233,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_dma.c",line 234,column 18,is_stmt
        B $C$L9   ; |234| 
                                        ; branch occurs ; |234| 
$C$L8:    
	.dwpsn	file "src/csl_dma.c",line 198,column 9,is_stmt

        MOV *SP(#0), AR1 ; |198| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |198| 
        BCC $C$L4,TC1 ; |198| 
                                        ; branchcc occurs ; |198| 

        SUB #4, AR1, AR2 ; |198| 
||      MOV #3, AR3

        CMPU AR2 <= AR3, TC1 ; |198| 
        BCC $C$L5,TC1 ; |198| 
                                        ; branchcc occurs ; |198| 
        SUB #8, AR1, AR2 ; |198| 
        CMPU AR2 <= AR3, TC1 ; |198| 
        BCC $C$L6,TC1 ; |198| 
                                        ; branchcc occurs ; |198| 

        SUB #12, AR1, AR1 ; |198| 
||      MOV #3, AR2

        CMPU AR1 <= AR2, TC1 ; |198| 
        BCC $C$L7,TC1 ; |198| 
                                        ; branchcc occurs ; |198| 
$C$L9:    
	.dwpsn	file "src/csl_dma.c",line 238,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
	.dwpsn	file "src/csl_dma.c",line 239,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$3, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.global	_DMA_close

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_close")
	.dwattr $C$DW$12, DW_AT_low_pc(_DMA_close)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_DMA_close")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x11a)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_dma.c",line 285,column 1,is_stmt,address _DMA_close

	.dwfde $C$DW$CIE, _DMA_close
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DMA_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 0]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 286,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L10,AC0 != #0 ; |286| 
                                        ; branchcc occurs ; |286| 
	.dwpsn	file "src/csl_dma.c",line 288,column 3,is_stmt
        MOV #-5, T0
        B $C$L11  ; |288| 
                                        ; branch occurs ; |288| 
$C$L10:    
	.dwpsn	file "src/csl_dma.c",line 292,column 9,is_stmt
        MOV #0, *AR3(short(#3)) ; |292| 
	.dwpsn	file "src/csl_dma.c",line 293,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3 ; |293| 
	.dwpsn	file "src/csl_dma.c",line 294,column 9,is_stmt
        MOV #0, T0
$C$L11:    
	.dwpsn	file "src/csl_dma.c",line 296,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$12, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x128)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.global	_DMA_config

$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_config")
	.dwattr $C$DW$16, DW_AT_low_pc(_DMA_config)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_DMA_config")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x16f)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "src/csl_dma.c",line 371,column 1,is_stmt,address _DMA_config

	.dwfde $C$DW$CIE, _DMA_config
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg17]
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pConfig")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DMA_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("pConfig")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrLSB")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_srcAddrLSB")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrMSB")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_srcAddrMSB")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("destAddrLSB")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_destAddrLSB")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("destAddrMSB")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_destAddrMSB")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("src_addrMode")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_src_addrMode")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("dest_addrMode")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_dest_addrMode")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("src_address")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_src_address")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("dest_address")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_dest_address")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 382,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L13,AC0 == #0 ; |382| 
                                        ; branchcc occurs ; |382| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L13,AC0 == #0 ; |382| 
                                        ; branchcc occurs ; |382| 
	.dwpsn	file "src/csl_dma.c",line 384,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |384| 
        MOV AR1, *SP(#4) ; |384| 
	.dwpsn	file "src/csl_dma.c",line 385,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |385| 
        BCC $C$L15,TC1 ; |385| 
                                        ; branchcc occurs ; |385| 
$C$L12:    
$C$DW$L$_DMA_config$4$B:
	.dwpsn	file "src/csl_dma.c",line 387,column 13,is_stmt
        SUB #4, *SP(#4) ; |387| 
	.dwpsn	file "src/csl_dma.c",line 385,column 15,is_stmt
        MOV *SP(#4), AR1 ; |385| 
        CMPU AR1 >= AR2, TC1 ; |385| 
        BCC $C$L12,TC1 ; |385| 
                                        ; branchcc occurs ; |385| 
$C$DW$L$_DMA_config$4$E:
	.dwpsn	file "src/csl_dma.c",line 390,column 5,is_stmt
        B $C$L15  ; |390| 
                                        ; branch occurs ; |390| 
$C$L13:    
	.dwpsn	file "src/csl_dma.c",line 393,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L14,AC0 != #0 ; |393| 
                                        ; branchcc occurs ; |393| 
	.dwpsn	file "src/csl_dma.c",line 395,column 13,is_stmt
        MOV #-5, T0
        B $C$L80  ; |395| 
                                        ; branch occurs ; |395| 
$C$L14:    
	.dwpsn	file "src/csl_dma.c",line 399,column 13,is_stmt
        MOV #-6, T0
        B $C$L80  ; |399| 
                                        ; branch occurs ; |399| 
$C$L15:    
	.dwpsn	file "src/csl_dma.c",line 403,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |403| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#5)) ; |403| 
	.dwpsn	file "src/csl_dma.c",line 404,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#6)), AR1 ; |404| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#4)) ; |404| 
	.dwpsn	file "src/csl_dma.c",line 405,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#7)), AR1 ; |405| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#6)) ; |405| 
	.dwpsn	file "src/csl_dma.c",line 406,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)), AR1 ; |406| 
        MOV dbl(*SP(#0)), XAR3
        MOV AR1, *AR3(short(#7)) ; |406| 
	.dwpsn	file "src/csl_dma.c",line 410,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3 == #1, TC1 ; |410| 
        BCC $C$L16,!TC1 ; |410| 
                                        ; branchcc occurs ; |410| 
	.dwpsn	file "src/csl_dma.c",line 412,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#8) ; |412| 
	.dwpsn	file "src/csl_dma.c",line 413,column 2,is_stmt
        B $C$L17  ; |413| 
                                        ; branch occurs ; |413| 
$C$L16:    
	.dwpsn	file "src/csl_dma.c",line 416,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#8) ; |416| 
$C$L17:    
	.dwpsn	file "src/csl_dma.c",line 422,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), AC0 ; |422| 
        MOV AC0, dbl(*SP(#12)) ; |422| 
	.dwpsn	file "src/csl_dma.c",line 423,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |423| 
        MOV AC0, dbl(*SP(#14)) ; |423| 
	.dwpsn	file "src/csl_dma.c",line 426,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV *AR3(short(#7)), AR1 ; |426| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |426| 
        BCC $C$L34,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
	.dwpsn	file "src/csl_dma.c",line 428,column 9,is_stmt
        MOV #96, AC0 ; |428| 
        MOV dbl(*SP(#12)), AC1 ; |428| 
        CMPU AC1 < AC0, TC1 ; |428| 
        BCC $C$L18,TC1 ; |428| 
                                        ; branchcc occurs ; |428| 
        MOV #32767, AC0 ; |428| 
        MOV dbl(*SP(#12)), AC1 ; |428| 
        CMPU AC1 > AC0, TC1 ; |428| 
        BCC $C$L18,TC1 ; |428| 
                                        ; branchcc occurs ; |428| 
	.dwpsn	file "src/csl_dma.c",line 431,column 13,is_stmt
        AMOV #65536, XAR3 ; |431| 
        MOV dbl(*SP(#12)), AC1 ; |431| 

        SFTL AC1, #1 ; |431| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |431| 
        MOV AC0, dbl(*SP(#12)) ; |431| 
	.dwpsn	file "src/csl_dma.c",line 433,column 9,is_stmt
        B $C$L25  ; |433| 
                                        ; branch occurs ; |433| 
$C$L18:    
	.dwpsn	file "src/csl_dma.c",line 434,column 14,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |434| 
||      MOV #0, AC0 ; |434| 

        OR #0x8000, AC0, AC0 ; |434| 
        CMPU AC1 < AC0, TC1 ; |434| 
        BCC $C$L19,TC1 ; |434| 
                                        ; branchcc occurs ; |434| 
        AMOV #163839, XAR3 ; |434| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |434| 
        CMPU AC1 > AC0, TC1 ; |434| 
        BCC $C$L19,TC1 ; |434| 
                                        ; branchcc occurs ; |434| 
	.dwpsn	file "src/csl_dma.c",line 437,column 13,is_stmt
        AMOV #524288, XAR3 ; |437| 
        MOV dbl(*SP(#12)), AC1 ; |437| 

        SFTL AC1, #1 ; |437| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |437| 
        MOV AC0, dbl(*SP(#12)) ; |437| 
	.dwpsn	file "src/csl_dma.c",line 439,column 9,is_stmt
        B $C$L25  ; |439| 
                                        ; branch occurs ; |439| 
$C$L19:    
	.dwpsn	file "src/csl_dma.c",line 440,column 14,is_stmt
        AMOV #163840, XAR3 ; |440| 
        MOV dbl(*SP(#12)), AC1 ; |440| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |440| 
        BCC $C$L20,TC1 ; |440| 
                                        ; branchcc occurs ; |440| 
        AMOV #4194303, XAR3 ; |440| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |440| 
        CMPU AC1 > AC0, TC1 ; |440| 
        BCC $C$L20,TC1 ; |440| 
                                        ; branchcc occurs ; |440| 
	.dwpsn	file "src/csl_dma.c",line 443,column 13,is_stmt
        AMOV #163840, XAR3 ; |443| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |443| 
        MOV AC0, dbl(*SP(#12)) ; |443| 
	.dwpsn	file "src/csl_dma.c",line 444,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |444| 

        SFTL AC0, #1 ; |444| 
||      MOV #256 << #16, AC1 ; |444| 

        ADD AC0, AC1 ; |444| 
        MOV AC1, dbl(*SP(#12)) ; |444| 
	.dwpsn	file "src/csl_dma.c",line 446,column 9,is_stmt
        B $C$L25  ; |446| 
                                        ; branch occurs ; |446| 
$C$L20:    
	.dwpsn	file "src/csl_dma.c",line 447,column 14,is_stmt
        AMOV #4194304, XAR3 ; |447| 
        MOV dbl(*SP(#12)), AC1 ; |447| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |447| 
        BCC $C$L21,TC1 ; |447| 
                                        ; branchcc occurs ; |447| 
        AMOV #6291455, XAR3 ; |447| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |447| 
        CMPU AC1 > AC0, TC1 ; |447| 
        BCC $C$L21,TC1 ; |447| 
                                        ; branchcc occurs ; |447| 
	.dwpsn	file "src/csl_dma.c",line 450,column 13,is_stmt
        AMOV #4194304, XAR3 ; |450| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |450| 
        MOV AC0, dbl(*SP(#12)) ; |450| 
	.dwpsn	file "src/csl_dma.c",line 451,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |451| 

        SFTL AC0, #1 ; |451| 
||      MOV #512 << #16, AC1 ; |451| 

        ADD AC0, AC1 ; |451| 
        MOV AC1, dbl(*SP(#12)) ; |451| 
	.dwpsn	file "src/csl_dma.c",line 453,column 9,is_stmt
        B $C$L25  ; |453| 
                                        ; branch occurs ; |453| 
$C$L21:    
	.dwpsn	file "src/csl_dma.c",line 454,column 14,is_stmt
        AMOV #6291456, XAR3 ; |454| 
        MOV dbl(*SP(#12)), AC1 ; |454| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |454| 
        BCC $C$L22,TC1 ; |454| 
                                        ; branchcc occurs ; |454| 
        AMOV #7340031, XAR3 ; |454| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |454| 
        CMPU AC1 > AC0, TC1 ; |454| 
        BCC $C$L22,TC1 ; |454| 
                                        ; branchcc occurs ; |454| 
	.dwpsn	file "src/csl_dma.c",line 457,column 13,is_stmt
        AMOV #6291456, XAR3 ; |457| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |457| 
        MOV AC0, dbl(*SP(#12)) ; |457| 
	.dwpsn	file "src/csl_dma.c",line 458,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |458| 

        SFTL AC0, #1 ; |458| 
||      MOV #768 << #16, AC1 ; |458| 

        ADD AC0, AC1 ; |458| 
        MOV AC1, dbl(*SP(#12)) ; |458| 
	.dwpsn	file "src/csl_dma.c",line 460,column 9,is_stmt
        B $C$L25  ; |460| 
                                        ; branch occurs ; |460| 
$C$L22:    
	.dwpsn	file "src/csl_dma.c",line 461,column 14,is_stmt
        AMOV #7340032, XAR3 ; |461| 
        MOV dbl(*SP(#12)), AC1 ; |461| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |461| 
        BCC $C$L23,TC1 ; |461| 
                                        ; branchcc occurs ; |461| 
        AMOV #7864319, XAR3 ; |461| 
        MOV dbl(*SP(#12)), AC1 ; |461| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |461| 
        BCC $C$L23,TC1 ; |461| 
                                        ; branchcc occurs ; |461| 
	.dwpsn	file "src/csl_dma.c",line 464,column 13,is_stmt
        AMOV #7340032, XAR3 ; |464| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |464| 
        MOV AC0, dbl(*SP(#12)) ; |464| 
	.dwpsn	file "src/csl_dma.c",line 465,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |465| 

        SFTL AC0, #1 ; |465| 
||      MOV #1024 << #16, AC1 ; |465| 

        ADD AC0, AC1 ; |465| 
        MOV AC1, dbl(*SP(#12)) ; |465| 
	.dwpsn	file "src/csl_dma.c",line 467,column 9,is_stmt
        B $C$L25  ; |467| 
                                        ; branch occurs ; |467| 
$C$L23:    
	.dwpsn	file "src/csl_dma.c",line 468,column 14,is_stmt
        MOV #128 << #16, AC0 ; |468| 
        MOV dbl(*SP(#12)), AC1 ; |468| 
        CMPU AC1 < AC0, TC1 ; |468| 
        BCC $C$L24,TC1 ; |468| 
                                        ; branchcc occurs ; |468| 
        MOV #255 << #16, AC0 ; |468| 
        MOV dbl(*SP(#12)), AC1 ; |468| 
        OR #0xffff, AC0, AC0 ; |468| 
        CMPU AC1 > AC0, TC1 ; |468| 
        BCC $C$L24,TC1 ; |468| 
                                        ; branchcc occurs ; |468| 
	.dwpsn	file "src/csl_dma.c",line 471,column 13,is_stmt
        MOV #128 << #16, AC0 ; |471| 
        SUB AC0, dbl(*SP(#12)), AC0 ; |471| 
        MOV AC0, dbl(*SP(#12)) ; |471| 
	.dwpsn	file "src/csl_dma.c",line 472,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |472| 

        SFTL AC0, #1 ; |472| 
||      MOV #1280 << #16, AC1 ; |472| 

        ADD AC0, AC1 ; |472| 
        MOV AC1, dbl(*SP(#12)) ; |472| 
	.dwpsn	file "src/csl_dma.c",line 474,column 9,is_stmt
        B $C$L25  ; |474| 
                                        ; branch occurs ; |474| 
$C$L24:    
	.dwpsn	file "src/csl_dma.c",line 477,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), AC0 ; |477| 
        MOV AC0, dbl(*SP(#12)) ; |477| 
$C$L25:    
	.dwpsn	file "src/csl_dma.c",line 480,column 9,is_stmt
        MOV #96, AC0 ; |480| 
        MOV dbl(*SP(#14)), AC1 ; |480| 
        CMPU AC1 < AC0, TC1 ; |480| 
        BCC $C$L26,TC1 ; |480| 
                                        ; branchcc occurs ; |480| 
        MOV #32767, AC0 ; |480| 
        MOV dbl(*SP(#14)), AC1 ; |480| 
        CMPU AC1 > AC0, TC1 ; |480| 
        BCC $C$L26,TC1 ; |480| 
                                        ; branchcc occurs ; |480| 
	.dwpsn	file "src/csl_dma.c",line 483,column 13,is_stmt
        AMOV #65536, XAR3 ; |483| 
        MOV dbl(*SP(#14)), AC1 ; |483| 

        SFTL AC1, #1 ; |483| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |483| 
        MOV AC0, dbl(*SP(#14)) ; |483| 
	.dwpsn	file "src/csl_dma.c",line 485,column 9,is_stmt
        B $C$L33  ; |485| 
                                        ; branch occurs ; |485| 
$C$L26:    
	.dwpsn	file "src/csl_dma.c",line 486,column 14,is_stmt

        MOV dbl(*SP(#14)), AC1 ; |486| 
||      MOV #0, AC0 ; |486| 

        OR #0x8000, AC0, AC0 ; |486| 
        CMPU AC1 < AC0, TC1 ; |486| 
        BCC $C$L27,TC1 ; |486| 
                                        ; branchcc occurs ; |486| 
        AMOV #163839, XAR3 ; |486| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |486| 
        CMPU AC1 > AC0, TC1 ; |486| 
        BCC $C$L27,TC1 ; |486| 
                                        ; branchcc occurs ; |486| 
	.dwpsn	file "src/csl_dma.c",line 489,column 13,is_stmt
        AMOV #524288, XAR3 ; |489| 
        MOV dbl(*SP(#14)), AC1 ; |489| 

        SFTL AC1, #1 ; |489| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |489| 
        MOV AC0, dbl(*SP(#14)) ; |489| 
	.dwpsn	file "src/csl_dma.c",line 491,column 9,is_stmt
        B $C$L33  ; |491| 
                                        ; branch occurs ; |491| 
$C$L27:    
	.dwpsn	file "src/csl_dma.c",line 492,column 14,is_stmt
        AMOV #163840, XAR3 ; |492| 
        MOV dbl(*SP(#14)), AC1 ; |492| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |492| 
        BCC $C$L28,TC1 ; |492| 
                                        ; branchcc occurs ; |492| 
        AMOV #4194303, XAR3 ; |492| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |492| 
        CMPU AC1 > AC0, TC1 ; |492| 
        BCC $C$L28,TC1 ; |492| 
                                        ; branchcc occurs ; |492| 
	.dwpsn	file "src/csl_dma.c",line 495,column 13,is_stmt
        AMOV #163840, XAR3 ; |495| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |495| 
        MOV AC0, dbl(*SP(#14)) ; |495| 
	.dwpsn	file "src/csl_dma.c",line 496,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |496| 

        SFTL AC0, #1 ; |496| 
||      MOV #256 << #16, AC1 ; |496| 

        ADD AC0, AC1 ; |496| 
        MOV AC1, dbl(*SP(#14)) ; |496| 
	.dwpsn	file "src/csl_dma.c",line 498,column 9,is_stmt
        B $C$L33  ; |498| 
                                        ; branch occurs ; |498| 
$C$L28:    
	.dwpsn	file "src/csl_dma.c",line 499,column 14,is_stmt
        AMOV #4194304, XAR3 ; |499| 
        MOV dbl(*SP(#14)), AC1 ; |499| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |499| 
        BCC $C$L29,TC1 ; |499| 
                                        ; branchcc occurs ; |499| 
        AMOV #6291455, XAR3 ; |499| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |499| 
        CMPU AC1 > AC0, TC1 ; |499| 
        BCC $C$L29,TC1 ; |499| 
                                        ; branchcc occurs ; |499| 
	.dwpsn	file "src/csl_dma.c",line 502,column 13,is_stmt
        AMOV #4194304, XAR3 ; |502| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |502| 
        MOV AC0, dbl(*SP(#14)) ; |502| 
	.dwpsn	file "src/csl_dma.c",line 503,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |503| 

        SFTL AC0, #1 ; |503| 
||      MOV #512 << #16, AC1 ; |503| 

        ADD AC0, AC1 ; |503| 
        MOV AC1, dbl(*SP(#14)) ; |503| 
	.dwpsn	file "src/csl_dma.c",line 505,column 9,is_stmt
        B $C$L33  ; |505| 
                                        ; branch occurs ; |505| 
$C$L29:    
	.dwpsn	file "src/csl_dma.c",line 506,column 14,is_stmt
        AMOV #4194304, XAR3 ; |506| 
        MOV dbl(*SP(#14)), AC1 ; |506| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |506| 
        BCC $C$L30,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
        AMOV #6291455, XAR3 ; |506| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |506| 
        CMPU AC1 > AC0, TC1 ; |506| 
        BCC $C$L30,TC1 ; |506| 
                                        ; branchcc occurs ; |506| 
	.dwpsn	file "src/csl_dma.c",line 509,column 13,is_stmt
        AMOV #4194304, XAR3 ; |509| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |509| 
        MOV AC0, dbl(*SP(#14)) ; |509| 
	.dwpsn	file "src/csl_dma.c",line 510,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |510| 

        SFTL AC0, #1 ; |510| 
||      MOV #512 << #16, AC1 ; |510| 

        ADD AC0, AC1 ; |510| 
        MOV AC1, dbl(*SP(#14)) ; |510| 
	.dwpsn	file "src/csl_dma.c",line 512,column 9,is_stmt
        B $C$L33  ; |512| 
                                        ; branch occurs ; |512| 
$C$L30:    
	.dwpsn	file "src/csl_dma.c",line 513,column 14,is_stmt
        AMOV #4194304, XAR3 ; |513| 
        MOV dbl(*SP(#14)), AC1 ; |513| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |513| 
        BCC $C$L31,TC1 ; |513| 
                                        ; branchcc occurs ; |513| 
        AMOV #6291455, XAR3 ; |513| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |513| 
        CMPU AC1 > AC0, TC1 ; |513| 
        BCC $C$L31,TC1 ; |513| 
                                        ; branchcc occurs ; |513| 
	.dwpsn	file "src/csl_dma.c",line 516,column 13,is_stmt
        AMOV #4194304, XAR3 ; |516| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |516| 
        MOV AC0, dbl(*SP(#14)) ; |516| 
	.dwpsn	file "src/csl_dma.c",line 517,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |517| 

        SFTL AC0, #1 ; |517| 
||      MOV #512 << #16, AC1 ; |517| 

        ADD AC0, AC1 ; |517| 
        MOV AC1, dbl(*SP(#14)) ; |517| 
	.dwpsn	file "src/csl_dma.c",line 519,column 9,is_stmt
        B $C$L33  ; |519| 
                                        ; branch occurs ; |519| 
$C$L31:    
	.dwpsn	file "src/csl_dma.c",line 520,column 14,is_stmt
        AMOV #4194304, XAR3 ; |520| 
        MOV dbl(*SP(#14)), AC1 ; |520| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |520| 
        BCC $C$L32,TC1 ; |520| 
                                        ; branchcc occurs ; |520| 
        AMOV #6291455, XAR3 ; |520| 
        MOV dbl(*SP(#14)), AC1 ; |520| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |520| 
        BCC $C$L32,TC1 ; |520| 
                                        ; branchcc occurs ; |520| 
	.dwpsn	file "src/csl_dma.c",line 523,column 13,is_stmt
        AMOV #4194304, XAR3 ; |523| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |523| 
        MOV AC0, dbl(*SP(#14)) ; |523| 
	.dwpsn	file "src/csl_dma.c",line 524,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |524| 

        SFTL AC0, #1 ; |524| 
||      MOV #512 << #16, AC1 ; |524| 

        ADD AC0, AC1 ; |524| 
        MOV AC1, dbl(*SP(#14)) ; |524| 
	.dwpsn	file "src/csl_dma.c",line 526,column 9,is_stmt
        B $C$L33  ; |526| 
                                        ; branch occurs ; |526| 
$C$L32:    
	.dwpsn	file "src/csl_dma.c",line 529,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |529| 
        MOV AC0, dbl(*SP(#14)) ; |529| 
$C$L33:    
	.dwpsn	file "src/csl_dma.c",line 532,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |532| 
        AND #0xffff, AC0, AC0 ; |532| 
        MOV AC0, *SP(#5) ; |532| 
	.dwpsn	file "src/csl_dma.c",line 533,column 9,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |533| 
        MOV HI(AC0), *SP(#6) ; |533| 
	.dwpsn	file "src/csl_dma.c",line 534,column 9,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |534| 
        AND #0xffff, AC0, AC0 ; |534| 
        MOV AC0, *SP(#7) ; |534| 
	.dwpsn	file "src/csl_dma.c",line 535,column 9,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |535| 
        MOV HI(AC0), *SP(#8) ; |535| 
	.dwpsn	file "src/csl_dma.c",line 536,column 9,is_stmt
        MOV #0, *SP(#9) ; |536| 
	.dwpsn	file "src/csl_dma.c",line 537,column 3,is_stmt
        MOV #0, *SP(#10) ; |537| 
	.dwpsn	file "src/csl_dma.c",line 538,column 5,is_stmt
        B $C$L56  ; |538| 
                                        ; branch occurs ; |538| 
$C$L34:    
	.dwpsn	file "src/csl_dma.c",line 542,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |542| 
        BCC $C$L43,AR1 != #0 ; |542| 
                                        ; branchcc occurs ; |542| 
	.dwpsn	file "src/csl_dma.c",line 544,column 13,is_stmt
        MOV #96, AC0 ; |544| 
        MOV dbl(*SP(#14)), AC1 ; |544| 
        CMPU AC1 < AC0, TC1 ; |544| 
        BCC $C$L35,TC1 ; |544| 
                                        ; branchcc occurs ; |544| 
        MOV #32767, AC0 ; |544| 
        MOV dbl(*SP(#14)), AC1 ; |544| 
        CMPU AC1 > AC0, TC1 ; |544| 
        BCC $C$L35,TC1 ; |544| 
                                        ; branchcc occurs ; |544| 
	.dwpsn	file "src/csl_dma.c",line 547,column 17,is_stmt
        AMOV #65536, XAR3 ; |547| 
        MOV dbl(*SP(#14)), AC1 ; |547| 

        SFTL AC1, #1 ; |547| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |547| 
        MOV AC0, dbl(*SP(#14)) ; |547| 
	.dwpsn	file "src/csl_dma.c",line 549,column 13,is_stmt
        B $C$L42  ; |549| 
                                        ; branch occurs ; |549| 
$C$L35:    
	.dwpsn	file "src/csl_dma.c",line 550,column 18,is_stmt

        MOV dbl(*SP(#14)), AC1 ; |550| 
||      MOV #0, AC0 ; |550| 

        OR #0x8000, AC0, AC0 ; |550| 
        CMPU AC1 < AC0, TC1 ; |550| 
        BCC $C$L36,TC1 ; |550| 
                                        ; branchcc occurs ; |550| 
        AMOV #163839, XAR3 ; |550| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |550| 
        CMPU AC1 > AC0, TC1 ; |550| 
        BCC $C$L36,TC1 ; |550| 
                                        ; branchcc occurs ; |550| 
	.dwpsn	file "src/csl_dma.c",line 553,column 17,is_stmt
        AMOV #524288, XAR3 ; |553| 
        MOV dbl(*SP(#14)), AC1 ; |553| 

        SFTL AC1, #1 ; |553| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |553| 
        MOV AC0, dbl(*SP(#14)) ; |553| 
	.dwpsn	file "src/csl_dma.c",line 555,column 13,is_stmt
        B $C$L42  ; |555| 
                                        ; branch occurs ; |555| 
$C$L36:    
	.dwpsn	file "src/csl_dma.c",line 556,column 9,is_stmt
        AMOV #163840, XAR3 ; |556| 
        MOV dbl(*SP(#14)), AC1 ; |556| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |556| 
        BCC $C$L37,TC1 ; |556| 
                                        ; branchcc occurs ; |556| 
        AMOV #4194303, XAR3 ; |556| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |556| 
        CMPU AC1 > AC0, TC1 ; |556| 
        BCC $C$L37,TC1 ; |556| 
                                        ; branchcc occurs ; |556| 
	.dwpsn	file "src/csl_dma.c",line 559,column 5,is_stmt
        AMOV #163840, XAR3 ; |559| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |559| 
        MOV AC0, dbl(*SP(#14)) ; |559| 
	.dwpsn	file "src/csl_dma.c",line 560,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |560| 

        SFTL AC0, #1 ; |560| 
||      MOV #256 << #16, AC1 ; |560| 

        ADD AC0, AC1 ; |560| 
        MOV AC1, dbl(*SP(#14)) ; |560| 
	.dwpsn	file "src/csl_dma.c",line 562,column 4,is_stmt
        B $C$L42  ; |562| 
                                        ; branch occurs ; |562| 
$C$L37:    
	.dwpsn	file "src/csl_dma.c",line 563,column 9,is_stmt
        AMOV #4194304, XAR3 ; |563| 
        MOV dbl(*SP(#14)), AC1 ; |563| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |563| 
        BCC $C$L38,TC1 ; |563| 
                                        ; branchcc occurs ; |563| 
        AMOV #6291455, XAR3 ; |563| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |563| 
        CMPU AC1 > AC0, TC1 ; |563| 
        BCC $C$L38,TC1 ; |563| 
                                        ; branchcc occurs ; |563| 
	.dwpsn	file "src/csl_dma.c",line 566,column 5,is_stmt
        AMOV #4194304, XAR3 ; |566| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |566| 
        MOV AC0, dbl(*SP(#14)) ; |566| 
	.dwpsn	file "src/csl_dma.c",line 567,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |567| 

        SFTL AC0, #1 ; |567| 
||      MOV #512 << #16, AC1 ; |567| 

        ADD AC0, AC1 ; |567| 
        MOV AC1, dbl(*SP(#14)) ; |567| 
	.dwpsn	file "src/csl_dma.c",line 569,column 4,is_stmt
        B $C$L42  ; |569| 
                                        ; branch occurs ; |569| 
$C$L38:    
	.dwpsn	file "src/csl_dma.c",line 570,column 9,is_stmt
        AMOV #6291456, XAR3 ; |570| 
        MOV dbl(*SP(#14)), AC1 ; |570| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |570| 
        BCC $C$L39,TC1 ; |570| 
                                        ; branchcc occurs ; |570| 
        AMOV #7340031, XAR3 ; |570| 
        MOV XAR3, AC0
        MOV dbl(*SP(#14)), AC1 ; |570| 
        CMPU AC1 > AC0, TC1 ; |570| 
        BCC $C$L39,TC1 ; |570| 
                                        ; branchcc occurs ; |570| 
	.dwpsn	file "src/csl_dma.c",line 573,column 5,is_stmt
        AMOV #6291456, XAR3 ; |573| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |573| 
        MOV AC0, dbl(*SP(#14)) ; |573| 
	.dwpsn	file "src/csl_dma.c",line 574,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |574| 

        SFTL AC0, #1 ; |574| 
||      MOV #768 << #16, AC1 ; |574| 

        ADD AC0, AC1 ; |574| 
        MOV AC1, dbl(*SP(#14)) ; |574| 
	.dwpsn	file "src/csl_dma.c",line 576,column 4,is_stmt
        B $C$L42  ; |576| 
                                        ; branch occurs ; |576| 
$C$L39:    
	.dwpsn	file "src/csl_dma.c",line 577,column 9,is_stmt
        AMOV #7340032, XAR3 ; |577| 
        MOV dbl(*SP(#14)), AC1 ; |577| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |577| 
        BCC $C$L40,TC1 ; |577| 
                                        ; branchcc occurs ; |577| 
        AMOV #7864319, XAR3 ; |577| 
        MOV dbl(*SP(#14)), AC1 ; |577| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |577| 
        BCC $C$L40,TC1 ; |577| 
                                        ; branchcc occurs ; |577| 
	.dwpsn	file "src/csl_dma.c",line 580,column 5,is_stmt
        AMOV #7340032, XAR3 ; |580| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#14)), AC0 ; |580| 
        MOV AC0, dbl(*SP(#14)) ; |580| 
	.dwpsn	file "src/csl_dma.c",line 581,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |581| 

        SFTL AC0, #1 ; |581| 
||      MOV #1024 << #16, AC1 ; |581| 

        ADD AC0, AC1 ; |581| 
        MOV AC1, dbl(*SP(#14)) ; |581| 
	.dwpsn	file "src/csl_dma.c",line 583,column 4,is_stmt
        B $C$L42  ; |583| 
                                        ; branch occurs ; |583| 
$C$L40:    
	.dwpsn	file "src/csl_dma.c",line 584,column 9,is_stmt
        MOV #128 << #16, AC0 ; |584| 
        MOV dbl(*SP(#14)), AC1 ; |584| 
        CMPU AC1 < AC0, TC1 ; |584| 
        BCC $C$L41,TC1 ; |584| 
                                        ; branchcc occurs ; |584| 
        MOV #255 << #16, AC0 ; |584| 
        MOV dbl(*SP(#14)), AC1 ; |584| 
        OR #0xffff, AC0, AC0 ; |584| 
        CMPU AC1 > AC0, TC1 ; |584| 
        BCC $C$L41,TC1 ; |584| 
                                        ; branchcc occurs ; |584| 
	.dwpsn	file "src/csl_dma.c",line 587,column 5,is_stmt
        MOV #128 << #16, AC0 ; |587| 
        SUB AC0, dbl(*SP(#14)), AC0 ; |587| 
        MOV AC0, dbl(*SP(#14)) ; |587| 
	.dwpsn	file "src/csl_dma.c",line 588,column 5,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |588| 

        SFTL AC0, #1 ; |588| 
||      MOV #1280 << #16, AC1 ; |588| 

        ADD AC0, AC1 ; |588| 
        MOV AC1, dbl(*SP(#14)) ; |588| 
	.dwpsn	file "src/csl_dma.c",line 590,column 4,is_stmt
        B $C$L42  ; |590| 
                                        ; branch occurs ; |590| 
$C$L41:    
	.dwpsn	file "src/csl_dma.c",line 593,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |593| 
        MOV AC0, dbl(*SP(#14)) ; |593| 
$C$L42:    
	.dwpsn	file "src/csl_dma.c",line 595,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |595| 
        AND #0xffff, AC0, AC0 ; |595| 
        MOV AC0, *SP(#5) ; |595| 
	.dwpsn	file "src/csl_dma.c",line 596,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |596| 
        MOV HI(AC0), *SP(#6) ; |596| 
	.dwpsn	file "src/csl_dma.c",line 597,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |597| 
        AND #0xffff, AC0, AC0 ; |597| 
        MOV AC0, *SP(#7) ; |597| 
	.dwpsn	file "src/csl_dma.c",line 598,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |598| 
        MOV HI(AC0), *SP(#8) ; |598| 
	.dwpsn	file "src/csl_dma.c",line 602,column 13,is_stmt
        MOV #2, *SP(#9) ; |602| 
	.dwpsn	file "src/csl_dma.c",line 603,column 13,is_stmt
        MOV #0, *SP(#10) ; |603| 
$C$L43:    
	.dwpsn	file "src/csl_dma.c",line 606,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#4)) == #1, TC1 ; |606| 
        BCC $C$L56,!TC1 ; |606| 
                                        ; branchcc occurs ; |606| 
	.dwpsn	file "src/csl_dma.c",line 608,column 13,is_stmt
        MOV #96, AC0 ; |608| 
        MOV dbl(*SP(#12)), AC1 ; |608| 
        CMPU AC1 < AC0, TC1 ; |608| 
        BCC $C$L44,TC1 ; |608| 
                                        ; branchcc occurs ; |608| 
        MOV #32767, AC0 ; |608| 
        MOV dbl(*SP(#12)), AC1 ; |608| 
        CMPU AC1 > AC0, TC1 ; |608| 
        BCC $C$L44,TC1 ; |608| 
                                        ; branchcc occurs ; |608| 
	.dwpsn	file "src/csl_dma.c",line 611,column 17,is_stmt
        AMOV #65536, XAR3 ; |611| 
        MOV dbl(*SP(#12)), AC1 ; |611| 

        SFTL AC1, #1 ; |611| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |611| 
        MOV AC0, dbl(*SP(#12)) ; |611| 
	.dwpsn	file "src/csl_dma.c",line 613,column 13,is_stmt
        B $C$L51  ; |613| 
                                        ; branch occurs ; |613| 
$C$L44:    
	.dwpsn	file "src/csl_dma.c",line 614,column 18,is_stmt

        MOV dbl(*SP(#12)), AC1 ; |614| 
||      MOV #0, AC0 ; |614| 

        OR #0x8000, AC0, AC0 ; |614| 
        CMPU AC1 < AC0, TC1 ; |614| 
        BCC $C$L45,TC1 ; |614| 
                                        ; branchcc occurs ; |614| 
        AMOV #163839, XAR3 ; |614| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |614| 
        CMPU AC1 > AC0, TC1 ; |614| 
        BCC $C$L45,TC1 ; |614| 
                                        ; branchcc occurs ; |614| 
	.dwpsn	file "src/csl_dma.c",line 617,column 17,is_stmt
        AMOV #524288, XAR3 ; |617| 
        MOV dbl(*SP(#12)), AC1 ; |617| 

        SFTL AC1, #1 ; |617| 
||      MOV XAR3, AC0

        ADD AC1, AC0 ; |617| 
        MOV AC0, dbl(*SP(#12)) ; |617| 
	.dwpsn	file "src/csl_dma.c",line 619,column 13,is_stmt
        B $C$L51  ; |619| 
                                        ; branch occurs ; |619| 
$C$L45:    
	.dwpsn	file "src/csl_dma.c",line 620,column 9,is_stmt
        AMOV #163840, XAR3 ; |620| 
        MOV dbl(*SP(#12)), AC1 ; |620| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |620| 
        BCC $C$L46,TC1 ; |620| 
                                        ; branchcc occurs ; |620| 
        AMOV #4194303, XAR3 ; |620| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |620| 
        CMPU AC1 > AC0, TC1 ; |620| 
        BCC $C$L46,TC1 ; |620| 
                                        ; branchcc occurs ; |620| 
	.dwpsn	file "src/csl_dma.c",line 623,column 5,is_stmt
        AMOV #163840, XAR3 ; |623| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |623| 
        MOV AC0, dbl(*SP(#12)) ; |623| 
	.dwpsn	file "src/csl_dma.c",line 624,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |624| 

        SFTL AC0, #1 ; |624| 
||      MOV #256 << #16, AC1 ; |624| 

        ADD AC0, AC1 ; |624| 
        MOV AC1, dbl(*SP(#12)) ; |624| 
	.dwpsn	file "src/csl_dma.c",line 626,column 4,is_stmt
        B $C$L51  ; |626| 
                                        ; branch occurs ; |626| 
$C$L46:    
	.dwpsn	file "src/csl_dma.c",line 627,column 9,is_stmt
        AMOV #4194304, XAR3 ; |627| 
        MOV dbl(*SP(#12)), AC1 ; |627| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |627| 
        BCC $C$L47,TC1 ; |627| 
                                        ; branchcc occurs ; |627| 
        AMOV #6291455, XAR3 ; |627| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |627| 
        CMPU AC1 > AC0, TC1 ; |627| 
        BCC $C$L47,TC1 ; |627| 
                                        ; branchcc occurs ; |627| 
	.dwpsn	file "src/csl_dma.c",line 630,column 5,is_stmt
        AMOV #4194304, XAR3 ; |630| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |630| 
        MOV AC0, dbl(*SP(#12)) ; |630| 
	.dwpsn	file "src/csl_dma.c",line 631,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |631| 

        SFTL AC0, #1 ; |631| 
||      MOV #512 << #16, AC1 ; |631| 

        ADD AC0, AC1 ; |631| 
        MOV AC1, dbl(*SP(#12)) ; |631| 
	.dwpsn	file "src/csl_dma.c",line 633,column 4,is_stmt
        B $C$L51  ; |633| 
                                        ; branch occurs ; |633| 
$C$L47:    
	.dwpsn	file "src/csl_dma.c",line 634,column 9,is_stmt
        AMOV #6291456, XAR3 ; |634| 
        MOV dbl(*SP(#12)), AC1 ; |634| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |634| 
        BCC $C$L48,TC1 ; |634| 
                                        ; branchcc occurs ; |634| 
        AMOV #7340031, XAR3 ; |634| 
        MOV XAR3, AC0
        MOV dbl(*SP(#12)), AC1 ; |634| 
        CMPU AC1 > AC0, TC1 ; |634| 
        BCC $C$L48,TC1 ; |634| 
                                        ; branchcc occurs ; |634| 
	.dwpsn	file "src/csl_dma.c",line 637,column 5,is_stmt
        AMOV #6291456, XAR3 ; |637| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |637| 
        MOV AC0, dbl(*SP(#12)) ; |637| 
	.dwpsn	file "src/csl_dma.c",line 638,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |638| 

        SFTL AC0, #1 ; |638| 
||      MOV #768 << #16, AC1 ; |638| 

        ADD AC0, AC1 ; |638| 
        MOV AC1, dbl(*SP(#12)) ; |638| 
	.dwpsn	file "src/csl_dma.c",line 640,column 4,is_stmt
        B $C$L51  ; |640| 
                                        ; branch occurs ; |640| 
$C$L48:    
	.dwpsn	file "src/csl_dma.c",line 641,column 9,is_stmt
        AMOV #7340032, XAR3 ; |641| 
        MOV dbl(*SP(#12)), AC1 ; |641| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |641| 
        BCC $C$L49,TC1 ; |641| 
                                        ; branchcc occurs ; |641| 
        AMOV #7864319, XAR3 ; |641| 
        MOV dbl(*SP(#12)), AC1 ; |641| 
        MOV XAR3, AC0
        CMPU AC1 > AC0, TC1 ; |641| 
        BCC $C$L49,TC1 ; |641| 
                                        ; branchcc occurs ; |641| 
	.dwpsn	file "src/csl_dma.c",line 644,column 5,is_stmt
        AMOV #7340032, XAR3 ; |644| 
        MOV XAR3, AC0
        SUB AC0, dbl(*SP(#12)), AC0 ; |644| 
        MOV AC0, dbl(*SP(#12)) ; |644| 
	.dwpsn	file "src/csl_dma.c",line 645,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |645| 

        SFTL AC0, #1 ; |645| 
||      MOV #1024 << #16, AC1 ; |645| 

        ADD AC0, AC1 ; |645| 
        MOV AC1, dbl(*SP(#12)) ; |645| 
	.dwpsn	file "src/csl_dma.c",line 647,column 4,is_stmt
        B $C$L51  ; |647| 
                                        ; branch occurs ; |647| 
$C$L49:    
	.dwpsn	file "src/csl_dma.c",line 648,column 9,is_stmt
        MOV #128 << #16, AC0 ; |648| 
        MOV dbl(*SP(#12)), AC1 ; |648| 
        CMPU AC1 < AC0, TC1 ; |648| 
        BCC $C$L50,TC1 ; |648| 
                                        ; branchcc occurs ; |648| 
        MOV #255 << #16, AC0 ; |648| 
        MOV dbl(*SP(#12)), AC1 ; |648| 
        OR #0xffff, AC0, AC0 ; |648| 
        CMPU AC1 > AC0, TC1 ; |648| 
        BCC $C$L50,TC1 ; |648| 
                                        ; branchcc occurs ; |648| 
	.dwpsn	file "src/csl_dma.c",line 651,column 5,is_stmt
        MOV #128 << #16, AC0 ; |651| 
        SUB AC0, dbl(*SP(#12)), AC0 ; |651| 
        MOV AC0, dbl(*SP(#12)) ; |651| 
	.dwpsn	file "src/csl_dma.c",line 652,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |652| 

        SFTL AC0, #1 ; |652| 
||      MOV #1280 << #16, AC1 ; |652| 

        ADD AC0, AC1 ; |652| 
        MOV AC1, dbl(*SP(#12)) ; |652| 
	.dwpsn	file "src/csl_dma.c",line 654,column 4,is_stmt
        B $C$L51  ; |654| 
                                        ; branch occurs ; |654| 
$C$L50:    
	.dwpsn	file "src/csl_dma.c",line 657,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#10)), AC0 ; |657| 
        MOV AC0, dbl(*SP(#12)) ; |657| 
$C$L51:    
	.dwpsn	file "src/csl_dma.c",line 659,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |659| 
        AND #0xffff, AC0, AC0 ; |659| 
        MOV AC0, *SP(#5) ; |659| 
	.dwpsn	file "src/csl_dma.c",line 660,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |660| 
        MOV HI(AC0), *SP(#6) ; |660| 
	.dwpsn	file "src/csl_dma.c",line 661,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |661| 
        AND #0xffff, AC0, AC0 ; |661| 
        MOV AC0, *SP(#7) ; |661| 
	.dwpsn	file "src/csl_dma.c",line 662,column 13,is_stmt
        MOV dbl(*SP(#14)), AC0 ; |662| 
        MOV HI(AC0), *SP(#8) ; |662| 
	.dwpsn	file "src/csl_dma.c",line 666,column 13,is_stmt
        MOV #0, *SP(#9) ; |666| 
	.dwpsn	file "src/csl_dma.c",line 667,column 13,is_stmt
        MOV #2, *SP(#10) ; |667| 
	.dwpsn	file "src/csl_dma.c",line 671,column 5,is_stmt
        B $C$L56  ; |671| 
                                        ; branch occurs ; |671| 
$C$L52:    
	.dwpsn	file "src/csl_dma.c",line 678,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |678| 
        AND #0x7ffb, port(*AR3(short(#5))) ; |678| 
	.dwpsn	file "src/csl_dma.c",line 682,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |682| 
        MOV port(*AR3), AR1 ; |682| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |682| 
        MOV *SP(#5), AR1 ; |682| 
        OR #0x0000, AR1, AR1 ; |682| 
        MOV AR1, port(*AR3) ; |682| 
	.dwpsn	file "src/csl_dma.c",line 684,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |684| 
        MOV port(*AR3(short(#1))), AR1 ; |684| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |684| 
        MOV *SP(#6), AR1 ; |684| 
        OR #0x0000, AR1, AR1 ; |684| 
        MOV AR1, port(*AR3(short(#1))) ; |684| 
	.dwpsn	file "src/csl_dma.c",line 686,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |686| 
        MOV port(*AR3(short(#2))), AR1 ; |686| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |686| 
        MOV *SP(#7), AR1 ; |686| 
        OR #0x0000, AR1, AR1 ; |686| 
        MOV AR1, port(*AR3(short(#2))) ; |686| 
	.dwpsn	file "src/csl_dma.c",line 688,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |688| 
        MOV port(*AR3(short(#3))), AR1 ; |688| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |688| 
        MOV *SP(#8), AR1 ; |688| 
        OR #0x0000, AR1, AR1 ; |688| 
        MOV AR1, port(*AR3(short(#3))) ; |688| 
	.dwpsn	file "src/csl_dma.c",line 697,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |697| 
        MOV port(*AR3(short(#5))), AR1 ; |697| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #12, AC0 ; |697| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |697| 
        BCLR @#12, AR1 ; |697| 
        AND #0x1000, AC0, AR2 ; |697| 
        OR AR1, AR2 ; |697| 
        MOV AR2, port(*AR3(short(#5))) ; |697| 
	.dwpsn	file "src/csl_dma.c",line 699,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |699| 
        MOV port(*AR3(short(#5))), AR1 ; |699| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #3, AC0 ; |699| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |699| 
        AND #0xffc7, AR1, AR1 ; |699| 
        AND #0x0038, AC0, AR2 ; |699| 
        OR AR1, AR2 ; |699| 
        MOV AR2, port(*AR3(short(#5))) ; |699| 
	.dwpsn	file "src/csl_dma.c",line 707,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |707| 
        MOV port(*AR3(short(#5))), AR1 ; |707| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR2 ; |707| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |707| 
        BCLR @#0, AR1 ; |707| 
        AND #0x0001, AR2, AR2 ; |707| 
        OR AR1, AR2 ; |707| 
        MOV AR2, port(*AR3(short(#5))) ; |707| 
	.dwpsn	file "src/csl_dma.c",line 717,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |717| 
        MOV port(*AR3(short(#5))), AR1 ; |717| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |717| 
        MOV *SP(#9), AC0 ; |717| 

        AND #0xff3f, AR1, AR2 ; |717| 
||      SFTL AC0, #6, AC0 ; |717| 

        AND #0x00c0, AC0, AR1 ; |717| 
        OR AR2, AR1 ; |717| 
        MOV AR1, port(*AR3(short(#5))) ; |717| 
	.dwpsn	file "src/csl_dma.c",line 719,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |719| 
        MOV port(*AR3(short(#5))), AR1 ; |719| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |719| 
        MOV *SP(#10), AC0 ; |719| 

        AND #0xfcff, AR1, AR2 ; |719| 
||      SFTL AC0, #8, AC0 ; |719| 

        AND #0x0300, AC0, AR1 ; |719| 
        OR AR2, AR1 ; |719| 
        MOV AR1, port(*AR3(short(#5))) ; |719| 
	.dwpsn	file "src/csl_dma.c",line 727,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |727| 
        MOV port(*AR3(short(#4))), AR1 ; |727| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |727| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |727| 
        OR #0x0000, AR1, AR1 ; |727| 
        MOV AR1, port(*AR3(short(#4))) ; |727| 
	.dwpsn	file "src/csl_dma.c",line 730,column 14,is_stmt
        B $C$L73  ; |730| 
                                        ; branch occurs ; |730| 
$C$L53:    
	.dwpsn	file "src/csl_dma.c",line 737,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |737| 
        MOV *AR3, AR3 ; |737| 
        AND #0x7ffb, port(*AR3(T0)) ; |737| 
	.dwpsn	file "src/csl_dma.c",line 741,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |741| 
        MOV *AR3, AR3 ; |741| 
        MOV port(*AR3(T0)), AR1 ; |741| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |741| 
        MOV *SP(#5), AR1 ; |741| 
        OR #0x0000, AR1, AR1 ; |741| 
        MOV AR1, port(*AR3(T0)) ; |741| 
	.dwpsn	file "src/csl_dma.c",line 743,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |743| 
        MOV *AR3, AR3 ; |743| 
        MOV port(*AR3(T0)), AR1 ; |743| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |743| 
        MOV *SP(#6), AR1 ; |743| 
        OR #0x0000, AR1, AR1 ; |743| 
        MOV AR1, port(*AR3(T0)) ; |743| 
	.dwpsn	file "src/csl_dma.c",line 745,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |745| 
        MOV *AR3, AR3 ; |745| 
        MOV port(*AR3(T0)), AR1 ; |745| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |745| 
        MOV *SP(#7), AR1 ; |745| 
        OR #0x0000, AR1, AR1 ; |745| 
        MOV AR1, port(*AR3(T0)) ; |745| 
	.dwpsn	file "src/csl_dma.c",line 747,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |747| 
        MOV *AR3, AR3 ; |747| 
        MOV port(*AR3(T0)), AR1 ; |747| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |747| 
        MOV *SP(#8), AR1 ; |747| 
        OR #0x0000, AR1, AR1 ; |747| 
        MOV AR1, port(*AR3(T0)) ; |747| 
	.dwpsn	file "src/csl_dma.c",line 756,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |756| 
        MOV *AR3, AR3 ; |756| 
        MOV port(*AR3(T0)), AR1 ; |756| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #12, AC0 ; |756| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |756| 
        BCLR @#12, AR1 ; |756| 
        AND #0x1000, AC0, AR2 ; |756| 
        OR AR1, AR2 ; |756| 
        MOV AR2, port(*AR3(T0)) ; |756| 
	.dwpsn	file "src/csl_dma.c",line 758,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |758| 
        MOV port(*AR3(T0)), AR1 ; |758| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #3, AC0 ; |758| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |758| 
        AND #0xffc7, AR1, AR2 ; |758| 
        AND #0x0038, AC0, AR1 ; |758| 
        OR AR2, AR1 ; |758| 
        MOV AR1, port(*AR3(T0)) ; |758| 
	.dwpsn	file "src/csl_dma.c",line 766,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |766| 
        MOV port(*AR3(T0)), AR2 ; |766| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |766| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |766| 
        BCLR @#0, AR2 ; |766| 
        AND #0x0001, AR1, AR1 ; |766| 
        OR AR2, AR1 ; |766| 
        MOV AR1, port(*AR3(T0)) ; |766| 
	.dwpsn	file "src/csl_dma.c",line 776,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |776| 
        MOV port(*AR3(T0)), AR1 ; |776| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |776| 
        MOV *SP(#9), AC0 ; |776| 

        AND #0xff3f, AR1, AR2 ; |776| 
||      SFTL AC0, #6, AC0 ; |776| 

        AND #0x00c0, AC0, AR1 ; |776| 
        OR AR2, AR1 ; |776| 
        MOV AR1, port(*AR3(T0)) ; |776| 
	.dwpsn	file "src/csl_dma.c",line 778,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |778| 
        MOV port(*AR3(T0)), AR1 ; |778| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |778| 
        MOV *SP(#10), AC0 ; |778| 

        AND #0xfcff, AR1, AR2 ; |778| 
||      SFTL AC0, #8, AC0 ; |778| 

        AND #0x0300, AC0, AR1 ; |778| 
        OR AR2, AR1 ; |778| 
        MOV AR1, port(*AR3(T0)) ; |778| 
	.dwpsn	file "src/csl_dma.c",line 786,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |786| 
        MOV *AR3, AR3 ; |786| 
        MOV port(*AR3(T0)), AR1 ; |786| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |786| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |786| 
        OR #0x0000, AR1, AR1 ; |786| 
        MOV AR1, port(*AR3(T0)) ; |786| 
	.dwpsn	file "src/csl_dma.c",line 789,column 14,is_stmt
        B $C$L73  ; |789| 
                                        ; branch occurs ; |789| 
$C$L54:    
	.dwpsn	file "src/csl_dma.c",line 796,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |796| 
        MOV *AR3, AR3 ; |796| 
        AND #0x7ffb, port(*AR3(T0)) ; |796| 
	.dwpsn	file "src/csl_dma.c",line 800,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |800| 
        MOV *AR3, AR3 ; |800| 
        MOV port(*AR3(T0)), AR1 ; |800| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |800| 
        MOV *SP(#5), AR1 ; |800| 
        OR #0x0000, AR1, AR1 ; |800| 
        MOV AR1, port(*AR3(T0)) ; |800| 
	.dwpsn	file "src/csl_dma.c",line 802,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |802| 
        MOV *AR3, AR3 ; |802| 
        MOV port(*AR3(T0)), AR1 ; |802| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |802| 
        MOV *SP(#6), AR1 ; |802| 
        OR #0x0000, AR1, AR1 ; |802| 
        MOV AR1, port(*AR3(T0)) ; |802| 
	.dwpsn	file "src/csl_dma.c",line 804,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |804| 
        MOV *AR3, AR3 ; |804| 
        MOV port(*AR3(T0)), AR1 ; |804| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |804| 
        MOV *SP(#7), AR1 ; |804| 
        OR #0x0000, AR1, AR1 ; |804| 
        MOV AR1, port(*AR3(T0)) ; |804| 
	.dwpsn	file "src/csl_dma.c",line 806,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |806| 
        MOV *AR3, AR3 ; |806| 
        MOV port(*AR3(T0)), AR1 ; |806| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |806| 
        MOV *SP(#8), AR1 ; |806| 
        OR #0x0000, AR1, AR1 ; |806| 
        MOV AR1, port(*AR3(T0)) ; |806| 
	.dwpsn	file "src/csl_dma.c",line 815,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |815| 
        MOV *AR3, AR3 ; |815| 
        MOV port(*AR3(T0)), AR1 ; |815| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #12, AC0 ; |815| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |815| 
        BCLR @#12, AR1 ; |815| 
        AND #0x1000, AC0, AR2 ; |815| 
        OR AR1, AR2 ; |815| 
        MOV AR2, port(*AR3(T0)) ; |815| 
	.dwpsn	file "src/csl_dma.c",line 817,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |817| 
        MOV port(*AR3(T0)), AR1 ; |817| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #3, AC0 ; |817| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |817| 
        AND #0xffc7, AR1, AR2 ; |817| 
        AND #0x0038, AC0, AR1 ; |817| 
        OR AR2, AR1 ; |817| 
        MOV AR1, port(*AR3(T0)) ; |817| 
	.dwpsn	file "src/csl_dma.c",line 825,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |825| 
        MOV port(*AR3(T0)), AR2 ; |825| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |825| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |825| 
        BCLR @#0, AR2 ; |825| 
        AND #0x0001, AR1, AR1 ; |825| 
        OR AR2, AR1 ; |825| 
        MOV AR1, port(*AR3(T0)) ; |825| 
	.dwpsn	file "src/csl_dma.c",line 837,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |837| 
        MOV port(*AR3(T0)), AR1 ; |837| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |837| 
        MOV *SP(#9), AC0 ; |837| 

        AND #0xff3f, AR1, AR2 ; |837| 
||      SFTL AC0, #6, AC0 ; |837| 

        AND #0x00c0, AC0, AR1 ; |837| 
        OR AR2, AR1 ; |837| 
        MOV AR1, port(*AR3(T0)) ; |837| 
	.dwpsn	file "src/csl_dma.c",line 839,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |839| 
        MOV port(*AR3(T0)), AR1 ; |839| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |839| 
        MOV *SP(#10), AC0 ; |839| 

        AND #0xfcff, AR1, AR2 ; |839| 
||      SFTL AC0, #8, AC0 ; |839| 

        AND #0x0300, AC0, AR1 ; |839| 
        OR AR2, AR1 ; |839| 
        MOV AR1, port(*AR3(T0)) ; |839| 
	.dwpsn	file "src/csl_dma.c",line 841,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |841| 
        MOV *AR3, AR3 ; |841| 
        MOV port(*AR3(T0)), AR1 ; |841| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |841| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |841| 
        OR #0x0000, AR1, AR1 ; |841| 
        MOV AR1, port(*AR3(T0)) ; |841| 
	.dwpsn	file "src/csl_dma.c",line 844,column 14,is_stmt
        B $C$L73  ; |844| 
                                        ; branch occurs ; |844| 
$C$L55:    
	.dwpsn	file "src/csl_dma.c",line 851,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |851| 
        MOV *AR3, AR3 ; |851| 
        AND #0x7ffb, port(*AR3(T0)) ; |851| 
	.dwpsn	file "src/csl_dma.c",line 855,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |855| 
        MOV *AR3, AR3 ; |855| 
        MOV port(*AR3(T0)), AR1 ; |855| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |855| 
        MOV *SP(#5), AR1 ; |855| 
        OR #0x0000, AR1, AR1 ; |855| 
        MOV AR1, port(*AR3(T0)) ; |855| 
	.dwpsn	file "src/csl_dma.c",line 857,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |857| 
        MOV *AR3, AR3 ; |857| 
        MOV port(*AR3(T0)), AR1 ; |857| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |857| 
        MOV *SP(#6), AR1 ; |857| 
        OR #0x0000, AR1, AR1 ; |857| 
        MOV AR1, port(*AR3(T0)) ; |857| 
	.dwpsn	file "src/csl_dma.c",line 859,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |859| 
        MOV *AR3, AR3 ; |859| 
        MOV port(*AR3(T0)), AR1 ; |859| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |859| 
        MOV *SP(#7), AR1 ; |859| 
        OR #0x0000, AR1, AR1 ; |859| 
        MOV AR1, port(*AR3(T0)) ; |859| 
	.dwpsn	file "src/csl_dma.c",line 861,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |861| 
        MOV *AR3, AR3 ; |861| 
        MOV port(*AR3(T0)), AR1 ; |861| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |861| 
        MOV *SP(#8), AR1 ; |861| 
        OR #0x0000, AR1, AR1 ; |861| 
        MOV AR1, port(*AR3(T0)) ; |861| 
	.dwpsn	file "src/csl_dma.c",line 870,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |870| 
        MOV *AR3, AR3 ; |870| 
        MOV port(*AR3(T0)), AR1 ; |870| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #12, AC0 ; |870| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |870| 
        BCLR @#12, AR1 ; |870| 
        AND #0x1000, AC0, AR2 ; |870| 
        OR AR1, AR2 ; |870| 
        MOV AR2, port(*AR3(T0)) ; |870| 
	.dwpsn	file "src/csl_dma.c",line 872,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |872| 
        MOV port(*AR3(T0)), AR1 ; |872| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #3, AC0 ; |872| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |872| 
        AND #0xffc7, AR1, AR2 ; |872| 
        AND #0x0038, AC0, AR1 ; |872| 
        OR AR2, AR1 ; |872| 
        MOV AR1, port(*AR3(T0)) ; |872| 
	.dwpsn	file "src/csl_dma.c",line 880,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |880| 
        MOV port(*AR3(T0)), AR2 ; |880| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |880| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |880| 
        BCLR @#0, AR2 ; |880| 
        AND #0x0001, AR1, AR1 ; |880| 
        OR AR2, AR1 ; |880| 
        MOV AR1, port(*AR3(T0)) ; |880| 
	.dwpsn	file "src/csl_dma.c",line 892,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |892| 
        MOV port(*AR3(T0)), AR1 ; |892| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |892| 
        MOV *SP(#9), AC0 ; |892| 

        AND #0xff3f, AR1, AR2 ; |892| 
||      SFTL AC0, #6, AC0 ; |892| 

        AND #0x00c0, AC0, AR1 ; |892| 
        OR AR2, AR1 ; |892| 
        MOV AR1, port(*AR3(T0)) ; |892| 
	.dwpsn	file "src/csl_dma.c",line 894,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |894| 
        MOV port(*AR3(T0)), AR1 ; |894| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |894| 
        MOV *SP(#10), AC0 ; |894| 

        AND #0xfcff, AR1, AR2 ; |894| 
||      SFTL AC0, #8, AC0 ; |894| 

        AND #0x0300, AC0, AR1 ; |894| 
        OR AR2, AR1 ; |894| 
        MOV AR1, port(*AR3(T0)) ; |894| 
	.dwpsn	file "src/csl_dma.c",line 896,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |896| 
        MOV *AR3, AR3 ; |896| 
        MOV port(*AR3(T0)), AR1 ; |896| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#8), AR1 ; |896| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |896| 
        OR #0x0000, AR1, AR1 ; |896| 
        MOV AR1, port(*AR3(T0)) ; |896| 
	.dwpsn	file "src/csl_dma.c",line 899,column 14,is_stmt
        B $C$L73  ; |899| 
                                        ; branch occurs ; |899| 
$C$L56:    
	.dwpsn	file "src/csl_dma.c",line 671,column 5,is_stmt
        MOV *SP(#4), AR1 ; |671| 
        BCC $C$L52,AR1 == #0 ; |671| 
                                        ; branchcc occurs ; |671| 
        CMPU AR1 == AR2, TC1 ; |671| 
        BCC $C$L53,TC1 ; |671| 
                                        ; branchcc occurs ; |671| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |671| 
        BCC $C$L54,TC1 ; |671| 
                                        ; branchcc occurs ; |671| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |671| 
        BCC $C$L55,TC1 ; |671| 
                                        ; branchcc occurs ; |671| 
        B $C$L73  ; |671| 
                                        ; branch occurs ; |671| 
$C$L57:    
	.dwpsn	file "src/csl_dma.c",line 906,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7194), AR2 ; |906| 
        AND #0xfff0, AR2, AR2 ; |906| 
        MOV *AR3(short(#4)), AR1 ; |906| 
        AND #0x000f, AR1, AR1 ; |906| 
        OR AR2, AR1 ; |906| 
        MOV AR1, *port(#7194) ; |906| 
	.dwpsn	file "src/csl_dma.c",line 910,column 3,is_stmt
        MOV #1, *port(#7216) ; |910| 
	.dwpsn	file "src/csl_dma.c",line 912,column 8,is_stmt
        MOV *AR3(short(#5)), AR1 ; |912| 
        AND #0x0001, AR1, AR2 ; |912| 
        MOV *port(#7217), AR1 ; |912| 
        BCLR @#0, AR1 ; |912| 
        OR AR1, AR2 ; |912| 
        MOV AR2, *port(#7217) ; |912| 
	.dwpsn	file "src/csl_dma.c",line 915,column 13,is_stmt
        B $C$L78  ; |915| 
                                        ; branch occurs ; |915| 
$C$L58:    
	.dwpsn	file "src/csl_dma.c",line 918,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7194), AR2 ; |918| 
        AND #0xf0ff, AR2, AR2 ; |918| 
        MOV *AR3(short(#4)) << #8, AC0 ; |918| 
        AND #0x0f00, AC0, AR1 ; |918| 
        OR AR2, AR1 ; |918| 
        MOV AR1, *port(#7194) ; |918| 
	.dwpsn	file "src/csl_dma.c",line 922,column 3,is_stmt
        MOV #2, *port(#7216) ; |922| 
	.dwpsn	file "src/csl_dma.c",line 924,column 9,is_stmt
        MOV *AR3(short(#5)), AR1 ; |924| 
        SFTL AR1, #1 ; |924| 
        AND #0x0002, AR1, AR2 ; |924| 
        MOV *port(#7217), AR1 ; |924| 
        BCLR @#1, AR1 ; |924| 
        OR AR1, AR2 ; |924| 
        MOV AR2, *port(#7217) ; |924| 
	.dwpsn	file "src/csl_dma.c",line 927,column 14,is_stmt
        B $C$L78  ; |927| 
                                        ; branch occurs ; |927| 
$C$L59:    
	.dwpsn	file "src/csl_dma.c",line 929,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7195), AR2 ; |929| 
        AND #0xfff0, AR2, AR2 ; |929| 
        MOV *AR3(short(#4)), AR1 ; |929| 
        AND #0x000f, AR1, AR1 ; |929| 
        OR AR2, AR1 ; |929| 
        MOV AR1, *port(#7195) ; |929| 
	.dwpsn	file "src/csl_dma.c",line 933,column 3,is_stmt
        MOV #4, *port(#7216) ; |933| 
	.dwpsn	file "src/csl_dma.c",line 935,column 9,is_stmt
        MOV *port(#7217), AR1 ; |935| 
        BCLR @#2, AR1 ; |935| 
        MOV *AR3(short(#5)) << #2, AC0 ; |935| 
        AND #0x0004, AC0, AR2 ; |935| 
        OR AR1, AR2 ; |935| 
        MOV AR2, *port(#7217) ; |935| 
	.dwpsn	file "src/csl_dma.c",line 938,column 14,is_stmt
        B $C$L78  ; |938| 
                                        ; branch occurs ; |938| 
$C$L60:    
	.dwpsn	file "src/csl_dma.c",line 941,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7195), AR2 ; |941| 
        AND #0xf0ff, AR2, AR2 ; |941| 
        MOV *AR3(short(#4)) << #8, AC0 ; |941| 
        AND #0x0f00, AC0, AR1 ; |941| 
        OR AR2, AR1 ; |941| 
        MOV AR1, *port(#7195) ; |941| 
	.dwpsn	file "src/csl_dma.c",line 945,column 3,is_stmt
        MOV #8, *port(#7216) ; |945| 
	.dwpsn	file "src/csl_dma.c",line 947,column 9,is_stmt
        MOV *port(#7217), AR1 ; |947| 
        BCLR @#3, AR1 ; |947| 
        MOV *AR3(short(#5)) << #3, AC0 ; |947| 
        AND #0x0008, AC0, AR2 ; |947| 
        OR AR1, AR2 ; |947| 
        MOV AR2, *port(#7217) ; |947| 
	.dwpsn	file "src/csl_dma.c",line 950,column 14,is_stmt
        B $C$L78  ; |950| 
                                        ; branch occurs ; |950| 
$C$L61:    
	.dwpsn	file "src/csl_dma.c",line 953,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7196), AR2 ; |953| 
        AND #0xfff0, AR2, AR2 ; |953| 
        MOV *AR3(short(#4)), AR1 ; |953| 
        AND #0x000f, AR1, AR1 ; |953| 
        OR AR2, AR1 ; |953| 
        MOV AR1, *port(#7196) ; |953| 
	.dwpsn	file "src/csl_dma.c",line 957,column 3,is_stmt
        MOV #16, *port(#7216) ; |957| 
	.dwpsn	file "src/csl_dma.c",line 959,column 9,is_stmt
        MOV *port(#7217), AR1 ; |959| 
        BCLR @#4, AR1 ; |959| 
        MOV *AR3(short(#5)) << #4, AC0 ; |959| 
        AND #0x0010, AC0, AR2 ; |959| 
        OR AR1, AR2 ; |959| 
        MOV AR2, *port(#7217) ; |959| 
	.dwpsn	file "src/csl_dma.c",line 962,column 14,is_stmt
        B $C$L78  ; |962| 
                                        ; branch occurs ; |962| 
$C$L62:    
	.dwpsn	file "src/csl_dma.c",line 965,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7196), AR2 ; |965| 
        AND #0xf0ff, AR2, AR2 ; |965| 
        MOV *AR3(short(#4)) << #8, AC0 ; |965| 
        AND #0x0f00, AC0, AR1 ; |965| 
        OR AR2, AR1 ; |965| 
        MOV AR1, *port(#7196) ; |965| 
	.dwpsn	file "src/csl_dma.c",line 969,column 3,is_stmt
        MOV #32, *port(#7216) ; |969| 
	.dwpsn	file "src/csl_dma.c",line 971,column 9,is_stmt
        MOV *port(#7217), AR1 ; |971| 
        BCLR @#5, AR1 ; |971| 
        MOV *AR3(short(#5)) << #5, AC0 ; |971| 
        AND #0x0020, AC0, AR2 ; |971| 
        OR AR1, AR2 ; |971| 
        MOV AR2, *port(#7217) ; |971| 
	.dwpsn	file "src/csl_dma.c",line 974,column 14,is_stmt
        B $C$L78  ; |974| 
                                        ; branch occurs ; |974| 
$C$L63:    
	.dwpsn	file "src/csl_dma.c",line 977,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7197), AR2 ; |977| 
        AND #0xfff0, AR2, AR2 ; |977| 
        MOV *AR3(short(#4)), AR1 ; |977| 
        AND #0x000f, AR1, AR1 ; |977| 
        OR AR2, AR1 ; |977| 
        MOV AR1, *port(#7197) ; |977| 
	.dwpsn	file "src/csl_dma.c",line 981,column 3,is_stmt
        MOV #64, *port(#7216) ; |981| 
	.dwpsn	file "src/csl_dma.c",line 983,column 9,is_stmt
        MOV *port(#7217), AR1 ; |983| 
        BCLR @#6, AR1 ; |983| 
        MOV *AR3(short(#5)) << #6, AC0 ; |983| 
        AND #0x0040, AC0, AR2 ; |983| 
        OR AR1, AR2 ; |983| 
        MOV AR2, *port(#7217) ; |983| 
	.dwpsn	file "src/csl_dma.c",line 986,column 14,is_stmt
        B $C$L78  ; |986| 
                                        ; branch occurs ; |986| 
$C$L64:    
	.dwpsn	file "src/csl_dma.c",line 989,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7197), AR2 ; |989| 
        AND #0xf0ff, AR2, AR2 ; |989| 
        MOV *AR3(short(#4)) << #8, AC0 ; |989| 
        AND #0x0f00, AC0, AR1 ; |989| 
        OR AR2, AR1 ; |989| 
        MOV AR1, *port(#7197) ; |989| 
	.dwpsn	file "src/csl_dma.c",line 993,column 3,is_stmt
        MOV #128, *port(#7216) ; |993| 
	.dwpsn	file "src/csl_dma.c",line 995,column 9,is_stmt
        MOV *port(#7217), AR1 ; |995| 
        BCLR @#7, AR1 ; |995| 
        MOV *AR3(short(#5)) << #7, AC0 ; |995| 
        AND #0x0080, AC0, AR2 ; |995| 
        OR AR1, AR2 ; |995| 
        MOV AR2, *port(#7217) ; |995| 
	.dwpsn	file "src/csl_dma.c",line 998,column 14,is_stmt
        B $C$L78  ; |998| 
                                        ; branch occurs ; |998| 
$C$L65:    
	.dwpsn	file "src/csl_dma.c",line 1001,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7222), AR2 ; |1001| 
        AND #0xfff0, AR2, AR2 ; |1001| 
        MOV *AR3(short(#4)), AR1 ; |1001| 
        AND #0x000f, AR1, AR1 ; |1001| 
        OR AR2, AR1 ; |1001| 
        MOV AR1, *port(#7222) ; |1001| 
	.dwpsn	file "src/csl_dma.c",line 1005,column 3,is_stmt
        MOV #256, *port(#7216) ; |1005| 
	.dwpsn	file "src/csl_dma.c",line 1007,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1007| 
        BCLR @#8, AR1 ; |1007| 
        MOV *AR3(short(#5)) << #8, AC0 ; |1007| 
        AND #0x0100, AC0, AR2 ; |1007| 
        OR AR1, AR2 ; |1007| 
        MOV AR2, *port(#7217) ; |1007| 
	.dwpsn	file "src/csl_dma.c",line 1010,column 14,is_stmt
        B $C$L78  ; |1010| 
                                        ; branch occurs ; |1010| 
$C$L66:    
	.dwpsn	file "src/csl_dma.c",line 1013,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7222), AR2 ; |1013| 
        AND #0xf0ff, AR2, AR2 ; |1013| 
        MOV *AR3(short(#4)) << #8, AC0 ; |1013| 
        AND #0x0f00, AC0, AR1 ; |1013| 
        OR AR2, AR1 ; |1013| 
        MOV AR1, *port(#7222) ; |1013| 
	.dwpsn	file "src/csl_dma.c",line 1017,column 3,is_stmt
        MOV #512, *port(#7216) ; |1017| 
	.dwpsn	file "src/csl_dma.c",line 1019,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1019| 
        BCLR @#9, AR1 ; |1019| 
        MOV *AR3(short(#5)) << #9, AC0 ; |1019| 
        AND #0x0200, AC0, AR2 ; |1019| 
        OR AR1, AR2 ; |1019| 
        MOV AR2, *port(#7217) ; |1019| 
	.dwpsn	file "src/csl_dma.c",line 1022,column 14,is_stmt
        B $C$L78  ; |1022| 
                                        ; branch occurs ; |1022| 
$C$L67:    
	.dwpsn	file "src/csl_dma.c",line 1025,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7223), AR2 ; |1025| 
        AND #0xfff0, AR2, AR2 ; |1025| 
        MOV *AR3(short(#4)), AR1 ; |1025| 
        AND #0x000f, AR1, AR1 ; |1025| 
        OR AR2, AR1 ; |1025| 
        MOV AR1, *port(#7223) ; |1025| 
	.dwpsn	file "src/csl_dma.c",line 1029,column 3,is_stmt
        MOV #1024, *port(#7216) ; |1029| 
	.dwpsn	file "src/csl_dma.c",line 1031,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1031| 
        BCLR @#10, AR1 ; |1031| 
        MOV *AR3(short(#5)) << #10, AC0 ; |1031| 
        AND #0x0400, AC0, AR2 ; |1031| 
        OR AR1, AR2 ; |1031| 
        MOV AR2, *port(#7217) ; |1031| 
	.dwpsn	file "src/csl_dma.c",line 1034,column 14,is_stmt
        B $C$L78  ; |1034| 
                                        ; branch occurs ; |1034| 
$C$L68:    
	.dwpsn	file "src/csl_dma.c",line 1037,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7223), AR2 ; |1037| 
        AND #0xf0ff, AR2, AR2 ; |1037| 
        MOV *AR3(short(#4)) << #8, AC0 ; |1037| 
        AND #0x0f00, AC0, AR1 ; |1037| 
        OR AR2, AR1 ; |1037| 
        MOV AR1, *port(#7223) ; |1037| 
	.dwpsn	file "src/csl_dma.c",line 1041,column 3,is_stmt
        MOV #2048, *port(#7216) ; |1041| 
	.dwpsn	file "src/csl_dma.c",line 1043,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1043| 
        BCLR @#11, AR1 ; |1043| 
        MOV *AR3(short(#5)) << #11, AC0 ; |1043| 
        AND #0x0800, AC0, AR2 ; |1043| 
        OR AR1, AR2 ; |1043| 
        MOV AR2, *port(#7217) ; |1043| 
	.dwpsn	file "src/csl_dma.c",line 1046,column 14,is_stmt
        B $C$L78  ; |1046| 
                                        ; branch occurs ; |1046| 
$C$L69:    
	.dwpsn	file "src/csl_dma.c",line 1049,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7224), AR2 ; |1049| 
        AND #0xfff0, AR2, AR2 ; |1049| 
        MOV *AR3(short(#4)), AR1 ; |1049| 
        AND #0x000f, AR1, AR1 ; |1049| 
        OR AR2, AR1 ; |1049| 
        MOV AR1, *port(#7224) ; |1049| 
	.dwpsn	file "src/csl_dma.c",line 1053,column 3,is_stmt
        MOV #4096, *port(#7216) ; |1053| 
	.dwpsn	file "src/csl_dma.c",line 1055,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1055| 
        BCLR @#12, AR1 ; |1055| 
        MOV *AR3(short(#5)) << #12, AC0 ; |1055| 
        AND #0x1000, AC0, AR2 ; |1055| 
        OR AR1, AR2 ; |1055| 
        MOV AR2, *port(#7217) ; |1055| 
	.dwpsn	file "src/csl_dma.c",line 1058,column 14,is_stmt
        B $C$L78  ; |1058| 
                                        ; branch occurs ; |1058| 
$C$L70:    
	.dwpsn	file "src/csl_dma.c",line 1061,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7224), AR2 ; |1061| 
        AND #0xf0ff, AR2, AR2 ; |1061| 
        MOV *AR3(short(#4)) << #8, AC0 ; |1061| 
        AND #0x0f00, AC0, AR1 ; |1061| 
        OR AR2, AR1 ; |1061| 
        MOV AR1, *port(#7224) ; |1061| 
	.dwpsn	file "src/csl_dma.c",line 1065,column 3,is_stmt
        MOV #8192, *port(#7216) ; |1065| 
	.dwpsn	file "src/csl_dma.c",line 1067,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1067| 
        BCLR @#13, AR1 ; |1067| 
        MOV *AR3(short(#5)) << #13, AC0 ; |1067| 
        AND #0x2000, AC0, AR2 ; |1067| 
        OR AR1, AR2 ; |1067| 
        MOV AR2, *port(#7217) ; |1067| 
	.dwpsn	file "src/csl_dma.c",line 1070,column 14,is_stmt
        B $C$L78  ; |1070| 
                                        ; branch occurs ; |1070| 
$C$L71:    
	.dwpsn	file "src/csl_dma.c",line 1073,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7225), AR2 ; |1073| 
        AND #0xfff0, AR2, AR2 ; |1073| 
        MOV *AR3(short(#4)), AR1 ; |1073| 
        AND #0x000f, AR1, AR1 ; |1073| 
        OR AR2, AR1 ; |1073| 
        MOV AR1, *port(#7225) ; |1073| 
	.dwpsn	file "src/csl_dma.c",line 1077,column 3,is_stmt
        MOV #16384, *port(#7216) ; |1077| 
	.dwpsn	file "src/csl_dma.c",line 1079,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1079| 
        BCLR @#14, AR1 ; |1079| 
        MOV *AR3(short(#5)) << #14, AC0 ; |1079| 
        AND #0x4000, AC0, AR2 ; |1079| 
        OR AR1, AR2 ; |1079| 
        MOV AR2, *port(#7217) ; |1079| 
	.dwpsn	file "src/csl_dma.c",line 1082,column 14,is_stmt
        B $C$L78  ; |1082| 
                                        ; branch occurs ; |1082| 
$C$L72:    
	.dwpsn	file "src/csl_dma.c",line 1085,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7225), AR2 ; |1085| 
        AND #0xf0ff, AR2, AR2 ; |1085| 
        MOV *AR3(short(#4)) << #8, AC0 ; |1085| 
        AND #0x0f00, AC0, AR1 ; |1085| 
        OR AR2, AR1 ; |1085| 
        MOV AR1, *port(#7225) ; |1085| 
	.dwpsn	file "src/csl_dma.c",line 1089,column 3,is_stmt
        MOV #32768, *port(#7216) ; |1089| 
	.dwpsn	file "src/csl_dma.c",line 1091,column 9,is_stmt
        MOV *port(#7217), AR1 ; |1091| 
        BCLR @#15, AR1 ; |1091| 
        MOV *AR3(short(#5)) << #15, AC0 ; |1091| 
        AND #0x8000, AC0, AR2 ; |1091| 
        OR AR1, AR2 ; |1091| 
        MOV AR2, *port(#7217) ; |1091| 
	.dwpsn	file "src/csl_dma.c",line 1094,column 14,is_stmt
        B $C$L78  ; |1094| 
                                        ; branch occurs ; |1094| 
$C$L73:    
	.dwpsn	file "src/csl_dma.c",line 903,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AC0 ; |903| 

        MOV AC0, AR1 ; |903| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |903| 
        BCC $C$L78,!TC1 ; |903| 
                                        ; branchcc occurs ; |903| 
        SFTS AC0, #1, AC0 ; |903| 
        MOV mmap(AC0L), AC1 ; |903| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |903| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |903| 
        ADD AC1, AC0 ; |903| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |903| 
        B AC0     ; |903| 
                                        ; branch occurs ; |903| 
	.sect	".switch:_DMA_config"
	.clink
$C$SW1:	.long	$C$L57	; 0
	.long	$C$L58	; 1
	.long	$C$L59	; 2
	.long	$C$L60	; 3
	.long	$C$L61	; 4
	.long	$C$L62	; 5
	.long	$C$L63	; 6
	.long	$C$L64	; 7
	.long	$C$L65	; 8
	.long	$C$L66	; 9
	.long	$C$L67	; 10
	.long	$C$L68	; 11
	.long	$C$L69	; 12
	.long	$C$L70	; 13
	.long	$C$L71	; 14
	.long	$C$L72	; 15
	.sect	".text"
$C$L74:    
	.dwpsn	file "src/csl_dma.c",line 1105,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1105| 
        MOV port(*AR3(short(#5))), AR1 ; |1105| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #13, AC0 ; |1105| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1105| 
        BCLR @#13, AR1 ; |1105| 
        AND #0x2000, AC0, AR2 ; |1105| 
        OR AR1, AR2 ; |1105| 
        MOV AR2, port(*AR3(short(#5))) ; |1105| 
	.dwpsn	file "src/csl_dma.c",line 1108,column 14,is_stmt
        B $C$L79  ; |1108| 
                                        ; branch occurs ; |1108| 
$C$L75:    
	.dwpsn	file "src/csl_dma.c",line 1115,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |1115| 
        MOV *AR3, AR3 ; |1115| 
        MOV port(*AR3(T0)), AR1 ; |1115| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #13, AC0 ; |1115| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1115| 
        BCLR @#13, AR1 ; |1115| 
        AND #0x2000, AC0, AR2 ; |1115| 
        OR AR1, AR2 ; |1115| 
        MOV AR2, port(*AR3(T0)) ; |1115| 
	.dwpsn	file "src/csl_dma.c",line 1118,column 14,is_stmt
        B $C$L79  ; |1118| 
                                        ; branch occurs ; |1118| 
$C$L76:    
	.dwpsn	file "src/csl_dma.c",line 1125,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1125| 
        MOV *AR3, AR3 ; |1125| 
        MOV port(*AR3(T0)), AR1 ; |1125| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #13, AC0 ; |1125| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1125| 
        BCLR @#13, AR1 ; |1125| 
        AND #0x2000, AC0, AR2 ; |1125| 
        OR AR1, AR2 ; |1125| 
        MOV AR2, port(*AR3(T0)) ; |1125| 
	.dwpsn	file "src/csl_dma.c",line 1128,column 14,is_stmt
        B $C$L79  ; |1128| 
                                        ; branch occurs ; |1128| 
$C$L77:    
	.dwpsn	file "src/csl_dma.c",line 1135,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |1135| 
        MOV *AR3, AR3 ; |1135| 
        MOV port(*AR3(T0)), AR1 ; |1135| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#5)) << #13, AC0 ; |1135| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1135| 
        BCLR @#13, AR1 ; |1135| 
        AND #0x2000, AC0, AR2 ; |1135| 
        OR AR1, AR2 ; |1135| 
        MOV AR2, port(*AR3(T0)) ; |1135| 
	.dwpsn	file "src/csl_dma.c",line 1138,column 14,is_stmt
        B $C$L79  ; |1138| 
                                        ; branch occurs ; |1138| 
$C$L78:    
	.dwpsn	file "src/csl_dma.c",line 1098,column 5,is_stmt
        MOV *SP(#4), AR1 ; |1098| 
        BCC $C$L74,AR1 == #0 ; |1098| 
                                        ; branchcc occurs ; |1098| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |1098| 
        BCC $C$L75,TC1 ; |1098| 
                                        ; branchcc occurs ; |1098| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1098| 
        BCC $C$L76,TC1 ; |1098| 
                                        ; branchcc occurs ; |1098| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1098| 
        BCC $C$L77,TC1 ; |1098| 
                                        ; branchcc occurs ; |1098| 
$C$L79:    
	.dwpsn	file "src/csl_dma.c",line 1141,column 5,is_stmt
        MOV #0, T0
$C$L80:    
	.dwpsn	file "src/csl_dma.c",line 1142,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$31	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$31, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L12:1:1714639432")
	.dwattr $C$DW$31, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x181)
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x184)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_DMA_config$4$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_DMA_config$4$E)
	.dwendtag $C$DW$31

	.dwattr $C$DW$16, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x476)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.global	_DMA_getConfig

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_getConfig")
	.dwattr $C$DW$33, DW_AT_low_pc(_DMA_getConfig)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_DMA_getConfig")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$33, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x4a2)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_dma.c",line 1190,column 1,is_stmt,address _DMA_getConfig

	.dwfde $C$DW$CIE, _DMA_getConfig
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg17]
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pConfig")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DMA_getConfig                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_getConfig:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("pConfig")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_pConfig")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrLSB")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_srcAddrLSB")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("srcAddrMSB")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_srcAddrMSB")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("destAddrLSB")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_destAddrLSB")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("destAddrMSB")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_destAddrMSB")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("srcAddr")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("destAddr")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 1199,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L82,AC0 == #0 ; |1199| 
                                        ; branchcc occurs ; |1199| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L82,AC0 == #0 ; |1199| 
                                        ; branchcc occurs ; |1199| 
	.dwpsn	file "src/csl_dma.c",line 1201,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AR1 ; |1201| 
        MOV AR1, *SP(#4) ; |1201| 
	.dwpsn	file "src/csl_dma.c",line 1202,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |1202| 
        BCC $C$L84,TC1 ; |1202| 
                                        ; branchcc occurs ; |1202| 
$C$L81:    
$C$DW$L$_DMA_getConfig$4$B:
	.dwpsn	file "src/csl_dma.c",line 1204,column 13,is_stmt
        SUB #4, *SP(#4) ; |1204| 
	.dwpsn	file "src/csl_dma.c",line 1202,column 15,is_stmt
        MOV *SP(#4), AR1 ; |1202| 
        CMPU AR1 >= AR2, TC1 ; |1202| 
        BCC $C$L81,TC1 ; |1202| 
                                        ; branchcc occurs ; |1202| 
$C$DW$L$_DMA_getConfig$4$E:
	.dwpsn	file "src/csl_dma.c",line 1207,column 5,is_stmt
        B $C$L84  ; |1207| 
                                        ; branch occurs ; |1207| 
$C$L82:    
	.dwpsn	file "src/csl_dma.c",line 1210,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L83,AC0 != #0 ; |1210| 
                                        ; branchcc occurs ; |1210| 
	.dwpsn	file "src/csl_dma.c",line 1212,column 13,is_stmt
        MOV #-5, T0
        B $C$L130 ; |1212| 
                                        ; branch occurs ; |1212| 
$C$L83:    
	.dwpsn	file "src/csl_dma.c",line 1216,column 13,is_stmt
        MOV #-6, T0
        B $C$L130 ; |1216| 
                                        ; branch occurs ; |1216| 
$C$L84:    
	.dwpsn	file "src/csl_dma.c",line 1220,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#5)), AR1 ; |1220| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#3)) ; |1220| 
	.dwpsn	file "src/csl_dma.c",line 1221,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#4)), AR1 ; |1221| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#6)) ; |1221| 
	.dwpsn	file "src/csl_dma.c",line 1222,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#6)), AR1 ; |1222| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(short(#7)) ; |1222| 
	.dwpsn	file "src/csl_dma.c",line 1223,column 5,is_stmt
        B $C$L89  ; |1223| 
                                        ; branch occurs ; |1223| 
$C$L85:    
	.dwpsn	file "src/csl_dma.c",line 1227,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1227| 
        MOV port(*AR3), AR1 ; |1227| 
        MOV AR1, *SP(#5) ; |1227| 
	.dwpsn	file "src/csl_dma.c",line 1228,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1228| 
        MOV port(*AR3(short(#1))), AR1 ; |1228| 
        MOV AR1, *SP(#6) ; |1228| 
	.dwpsn	file "src/csl_dma.c",line 1229,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1229| 
        MOV port(*AR3(short(#2))), AR1 ; |1229| 
        MOV AR1, *SP(#7) ; |1229| 
	.dwpsn	file "src/csl_dma.c",line 1230,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1230| 
        MOV port(*AR3(short(#3))), AR1 ; |1230| 
        MOV AR1, *SP(#8) ; |1230| 
	.dwpsn	file "src/csl_dma.c",line 1245,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1245| 
        MOV port(*AR3(short(#4))), AR1 ; |1245| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#8) ; |1245| 
	.dwpsn	file "src/csl_dma.c",line 1248,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1248| 
        MOV port(*AR3(short(#5))), AR1 ; |1248| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x1000, AR1, AC0 ; |1248| 
        SFTS AC0, #-12, AC0 ; |1248| 
        MOV AC0, *AR3(short(#1)) ; |1248| 
	.dwpsn	file "src/csl_dma.c",line 1250,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1250| 
        MOV port(*AR3(short(#5))), AR1 ; |1250| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0038, AR1, AC0 ; |1250| 
        SFTS AC0, #-3, AC0 ; |1250| 
        MOV AC0, *AR3(short(#2)) ; |1250| 
	.dwpsn	file "src/csl_dma.c",line 1252,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1252| 
        MOV port(*AR3(short(#5))), AR1 ; |1252| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x2000, AR1, AC0 ; |1252| 
        SFTS AC0, #-13, AC0 ; |1252| 
        MOV AC0, *AR3(short(#5)) ; |1252| 
	.dwpsn	file "src/csl_dma.c",line 1260,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1260| 
        MOV port(*AR3(short(#5))), AR1 ; |1260| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0001, AR1, AC0 ; |1260| 
        MOV AC0, *AR3 ; |1260| 
	.dwpsn	file "src/csl_dma.c",line 1263,column 14,is_stmt
        B $C$L106 ; |1263| 
                                        ; branch occurs ; |1263| 
$C$L86:    
	.dwpsn	file "src/csl_dma.c",line 1267,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |1267| 
        MOV *AR3, AR3 ; |1267| 
        MOV port(*AR3(T0)), AR1 ; |1267| 
        MOV AR1, *SP(#5) ; |1267| 
	.dwpsn	file "src/csl_dma.c",line 1268,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |1268| 
        MOV *AR3, AR3 ; |1268| 
        MOV port(*AR3(T0)), AR1 ; |1268| 
        MOV AR1, *SP(#6) ; |1268| 
	.dwpsn	file "src/csl_dma.c",line 1269,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |1269| 
        MOV *AR3, AR3 ; |1269| 
        MOV port(*AR3(T0)), AR1 ; |1269| 
        MOV AR1, *SP(#7) ; |1269| 
	.dwpsn	file "src/csl_dma.c",line 1270,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |1270| 
        MOV *AR3, AR3 ; |1270| 
        MOV port(*AR3(T0)), AR1 ; |1270| 
        MOV AR1, *SP(#8) ; |1270| 
	.dwpsn	file "src/csl_dma.c",line 1282,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |1282| 
        MOV *AR3, AR3 ; |1282| 
        MOV port(*AR3(T0)), AR1 ; |1282| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#8) ; |1282| 
	.dwpsn	file "src/csl_dma.c",line 1284,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |1284| 
        MOV *AR3, AR3 ; |1284| 
        MOV port(*AR3(T0)), AR1 ; |1284| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x1000, AR1, AC0 ; |1284| 
        SFTS AC0, #-12, AC0 ; |1284| 
        MOV AC0, *AR3(short(#1)) ; |1284| 
	.dwpsn	file "src/csl_dma.c",line 1286,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1286| 
        MOV port(*AR3(T0)), AR1 ; |1286| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0038, AR1, AC0 ; |1286| 
        SFTS AC0, #-3, AC0 ; |1286| 
        MOV AC0, *AR3(short(#2)) ; |1286| 
	.dwpsn	file "src/csl_dma.c",line 1288,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1288| 
        MOV port(*AR3(T0)), AR1 ; |1288| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x2000, AR1, AC0 ; |1288| 
        SFTS AC0, #-13, AC0 ; |1288| 
        MOV AC0, *AR3(short(#5)) ; |1288| 
	.dwpsn	file "src/csl_dma.c",line 1296,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1296| 
        MOV port(*AR3(T0)), AR1 ; |1296| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0001, AR1, AC0 ; |1296| 
        MOV AC0, *AR3 ; |1296| 
	.dwpsn	file "src/csl_dma.c",line 1299,column 14,is_stmt
        B $C$L106 ; |1299| 
                                        ; branch occurs ; |1299| 
$C$L87:    
	.dwpsn	file "src/csl_dma.c",line 1303,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |1303| 
        MOV *AR3, AR3 ; |1303| 
        MOV port(*AR3(T0)), AR1 ; |1303| 
        MOV AR1, *SP(#5) ; |1303| 
	.dwpsn	file "src/csl_dma.c",line 1304,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |1304| 
        MOV *AR3, AR3 ; |1304| 
        MOV port(*AR3(T0)), AR1 ; |1304| 
        MOV AR1, *SP(#6) ; |1304| 
	.dwpsn	file "src/csl_dma.c",line 1305,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |1305| 
        MOV *AR3, AR3 ; |1305| 
        MOV port(*AR3(T0)), AR1 ; |1305| 
        MOV AR1, *SP(#7) ; |1305| 
	.dwpsn	file "src/csl_dma.c",line 1306,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |1306| 
        MOV *AR3, AR3 ; |1306| 
        MOV port(*AR3(T0)), AR1 ; |1306| 
        MOV AR1, *SP(#8) ; |1306| 
	.dwpsn	file "src/csl_dma.c",line 1318,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |1318| 
        MOV *AR3, AR3 ; |1318| 
        MOV port(*AR3(T0)), AR1 ; |1318| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#8) ; |1318| 
	.dwpsn	file "src/csl_dma.c",line 1320,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |1320| 
        MOV *AR3, AR3 ; |1320| 
        MOV port(*AR3(T0)), AR1 ; |1320| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x1000, AR1, AC0 ; |1320| 
        SFTS AC0, #-12, AC0 ; |1320| 
        MOV AC0, *AR3(short(#1)) ; |1320| 
	.dwpsn	file "src/csl_dma.c",line 1322,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1322| 
        MOV port(*AR3(T0)), AR1 ; |1322| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0038, AR1, AC0 ; |1322| 
        SFTS AC0, #-3, AC0 ; |1322| 
        MOV AC0, *AR3(short(#2)) ; |1322| 
	.dwpsn	file "src/csl_dma.c",line 1324,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1324| 
        MOV port(*AR3(T0)), AR1 ; |1324| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x2000, AR1, AC0 ; |1324| 
        SFTS AC0, #-13, AC0 ; |1324| 
        MOV AC0, *AR3(short(#5)) ; |1324| 
	.dwpsn	file "src/csl_dma.c",line 1332,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1332| 
        MOV port(*AR3(T0)), AR1 ; |1332| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0001, AR1, AC0 ; |1332| 
        MOV AC0, *AR3 ; |1332| 
	.dwpsn	file "src/csl_dma.c",line 1336,column 14,is_stmt
        B $C$L106 ; |1336| 
                                        ; branch occurs ; |1336| 
$C$L88:    
	.dwpsn	file "src/csl_dma.c",line 1340,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |1340| 
        MOV *AR3, AR3 ; |1340| 
        MOV port(*AR3(T0)), AR1 ; |1340| 
        MOV AR1, *SP(#5) ; |1340| 
	.dwpsn	file "src/csl_dma.c",line 1341,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |1341| 
        MOV *AR3, AR3 ; |1341| 
        MOV port(*AR3(T0)), AR1 ; |1341| 
        MOV AR1, *SP(#6) ; |1341| 
	.dwpsn	file "src/csl_dma.c",line 1342,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |1342| 
        MOV *AR3, AR3 ; |1342| 
        MOV port(*AR3(T0)), AR1 ; |1342| 
        MOV AR1, *SP(#7) ; |1342| 
	.dwpsn	file "src/csl_dma.c",line 1343,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |1343| 
        MOV *AR3, AR3 ; |1343| 
        MOV port(*AR3(T0)), AR1 ; |1343| 
        MOV AR1, *SP(#8) ; |1343| 
	.dwpsn	file "src/csl_dma.c",line 1356,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |1356| 
        MOV *AR3, AR3 ; |1356| 
        MOV port(*AR3(T0)), AR1 ; |1356| 
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, *AR3(#8) ; |1356| 
	.dwpsn	file "src/csl_dma.c",line 1358,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |1358| 
        MOV *AR3, AR3 ; |1358| 
        MOV port(*AR3(T0)), AR1 ; |1358| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x1000, AR1, AC0 ; |1358| 
        SFTS AC0, #-12, AC0 ; |1358| 
        MOV AC0, *AR3(short(#1)) ; |1358| 
	.dwpsn	file "src/csl_dma.c",line 1360,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1360| 
        MOV port(*AR3(T0)), AR1 ; |1360| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0038, AR1, AC0 ; |1360| 
        SFTS AC0, #-3, AC0 ; |1360| 
        MOV AC0, *AR3(short(#2)) ; |1360| 
	.dwpsn	file "src/csl_dma.c",line 1362,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1362| 
        MOV port(*AR3(T0)), AR1 ; |1362| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x2000, AR1, AC0 ; |1362| 
        SFTS AC0, #-13, AC0 ; |1362| 
        MOV AC0, *AR3(short(#5)) ; |1362| 
	.dwpsn	file "src/csl_dma.c",line 1370,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1370| 
        MOV port(*AR3(T0)), AR1 ; |1370| 
        MOV dbl(*SP(#2)), XAR3
        AND #0x0001, AR1, AC0 ; |1370| 
        MOV AC0, *AR3 ; |1370| 
	.dwpsn	file "src/csl_dma.c",line 1374,column 14,is_stmt
        B $C$L106 ; |1374| 
                                        ; branch occurs ; |1374| 
$C$L89:    
	.dwpsn	file "src/csl_dma.c",line 1223,column 5,is_stmt
        MOV *SP(#4), AR1 ; |1223| 
        BCC $C$L85,AR1 == #0 ; |1223| 
                                        ; branchcc occurs ; |1223| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |1223| 
        BCC $C$L86,TC1 ; |1223| 
                                        ; branchcc occurs ; |1223| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1223| 
        BCC $C$L87,TC1 ; |1223| 
                                        ; branchcc occurs ; |1223| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1223| 
        BCC $C$L88,TC1 ; |1223| 
                                        ; branchcc occurs ; |1223| 
        B $C$L106 ; |1223| 
                                        ; branch occurs ; |1223| 
$C$L90:    
	.dwpsn	file "src/csl_dma.c",line 1381,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7194), AR1 ; |1381| 
        AND #0x000f, AR1, AC0 ; |1381| 
        MOV AC0, *AR3(short(#4)) ; |1381| 
	.dwpsn	file "src/csl_dma.c",line 1383,column 14,is_stmt
        B $C$L107 ; |1383| 
                                        ; branch occurs ; |1383| 
$C$L91:    
	.dwpsn	file "src/csl_dma.c",line 1386,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7194), AR1 ; |1386| 
        AND #0x0f00, AR1, AC0 ; |1386| 
        SFTS AC0, #-8, AC0 ; |1386| 
        MOV AC0, *AR3(short(#4)) ; |1386| 
	.dwpsn	file "src/csl_dma.c",line 1388,column 14,is_stmt
        B $C$L107 ; |1388| 
                                        ; branch occurs ; |1388| 
$C$L92:    
	.dwpsn	file "src/csl_dma.c",line 1390,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7195), AR1 ; |1390| 
        AND #0x000f, AR1, AC0 ; |1390| 
        MOV AC0, *AR3(short(#4)) ; |1390| 
	.dwpsn	file "src/csl_dma.c",line 1392,column 14,is_stmt
        B $C$L107 ; |1392| 
                                        ; branch occurs ; |1392| 
$C$L93:    
	.dwpsn	file "src/csl_dma.c",line 1395,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7195), AR1 ; |1395| 
        AND #0x0f00, AR1, AC0 ; |1395| 
        SFTS AC0, #-8, AC0 ; |1395| 
        MOV AC0, *AR3(short(#4)) ; |1395| 
	.dwpsn	file "src/csl_dma.c",line 1397,column 14,is_stmt
        B $C$L107 ; |1397| 
                                        ; branch occurs ; |1397| 
$C$L94:    
	.dwpsn	file "src/csl_dma.c",line 1400,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7196), AR1 ; |1400| 
        AND #0x000f, AR1, AC0 ; |1400| 
        MOV AC0, *AR3(short(#4)) ; |1400| 
	.dwpsn	file "src/csl_dma.c",line 1402,column 14,is_stmt
        B $C$L107 ; |1402| 
                                        ; branch occurs ; |1402| 
$C$L95:    
	.dwpsn	file "src/csl_dma.c",line 1405,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7196), AR1 ; |1405| 
        AND #0x0f00, AR1, AC0 ; |1405| 
        SFTS AC0, #-8, AC0 ; |1405| 
        MOV AC0, *AR3(short(#4)) ; |1405| 
	.dwpsn	file "src/csl_dma.c",line 1407,column 14,is_stmt
        B $C$L107 ; |1407| 
                                        ; branch occurs ; |1407| 
$C$L96:    
	.dwpsn	file "src/csl_dma.c",line 1410,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7197), AR1 ; |1410| 
        AND #0x000f, AR1, AC0 ; |1410| 
        MOV AC0, *AR3(short(#4)) ; |1410| 
	.dwpsn	file "src/csl_dma.c",line 1412,column 14,is_stmt
        B $C$L107 ; |1412| 
                                        ; branch occurs ; |1412| 
$C$L97:    
	.dwpsn	file "src/csl_dma.c",line 1415,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7197), AR1 ; |1415| 
        AND #0x0f00, AR1, AC0 ; |1415| 
        SFTS AC0, #-8, AC0 ; |1415| 
        MOV AC0, *AR3(short(#4)) ; |1415| 
	.dwpsn	file "src/csl_dma.c",line 1417,column 14,is_stmt
        B $C$L107 ; |1417| 
                                        ; branch occurs ; |1417| 
$C$L98:    
	.dwpsn	file "src/csl_dma.c",line 1420,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7222), AR1 ; |1420| 
        AND #0x000f, AR1, AC0 ; |1420| 
        MOV AC0, *AR3(short(#4)) ; |1420| 
	.dwpsn	file "src/csl_dma.c",line 1422,column 14,is_stmt
        B $C$L107 ; |1422| 
                                        ; branch occurs ; |1422| 
$C$L99:    
	.dwpsn	file "src/csl_dma.c",line 1425,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7222), AR1 ; |1425| 
        AND #0x0f00, AR1, AC0 ; |1425| 
        SFTS AC0, #-8, AC0 ; |1425| 
        MOV AC0, *AR3(short(#4)) ; |1425| 
	.dwpsn	file "src/csl_dma.c",line 1427,column 14,is_stmt
        B $C$L107 ; |1427| 
                                        ; branch occurs ; |1427| 
$C$L100:    
	.dwpsn	file "src/csl_dma.c",line 1430,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7223), AR1 ; |1430| 
        AND #0x000f, AR1, AC0 ; |1430| 
        MOV AC0, *AR3(short(#4)) ; |1430| 
	.dwpsn	file "src/csl_dma.c",line 1432,column 14,is_stmt
        B $C$L107 ; |1432| 
                                        ; branch occurs ; |1432| 
$C$L101:    
	.dwpsn	file "src/csl_dma.c",line 1435,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7223), AR1 ; |1435| 
        AND #0x0f00, AR1, AC0 ; |1435| 
        SFTS AC0, #-8, AC0 ; |1435| 
        MOV AC0, *AR3(short(#4)) ; |1435| 
	.dwpsn	file "src/csl_dma.c",line 1437,column 14,is_stmt
        B $C$L107 ; |1437| 
                                        ; branch occurs ; |1437| 
$C$L102:    
	.dwpsn	file "src/csl_dma.c",line 1440,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7224), AR1 ; |1440| 
        AND #0x000f, AR1, AC0 ; |1440| 
        MOV AC0, *AR3(short(#4)) ; |1440| 
	.dwpsn	file "src/csl_dma.c",line 1442,column 14,is_stmt
        B $C$L107 ; |1442| 
                                        ; branch occurs ; |1442| 
$C$L103:    
	.dwpsn	file "src/csl_dma.c",line 1445,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7224), AR1 ; |1445| 
        AND #0x0f00, AR1, AC0 ; |1445| 
        SFTS AC0, #-8, AC0 ; |1445| 
        MOV AC0, *AR3(short(#4)) ; |1445| 
	.dwpsn	file "src/csl_dma.c",line 1447,column 14,is_stmt
        B $C$L107 ; |1447| 
                                        ; branch occurs ; |1447| 
$C$L104:    
	.dwpsn	file "src/csl_dma.c",line 1450,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7225), AR1 ; |1450| 
        AND #0x000f, AR1, AC0 ; |1450| 
        MOV AC0, *AR3(short(#4)) ; |1450| 
	.dwpsn	file "src/csl_dma.c",line 1452,column 14,is_stmt
        B $C$L107 ; |1452| 
                                        ; branch occurs ; |1452| 
$C$L105:    
	.dwpsn	file "src/csl_dma.c",line 1455,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *port(#7225), AR1 ; |1455| 
        AND #0x0f00, AR1, AC0 ; |1455| 
        SFTS AC0, #-8, AC0 ; |1455| 
        MOV AC0, *AR3(short(#4)) ; |1455| 
	.dwpsn	file "src/csl_dma.c",line 1457,column 14,is_stmt
        B $C$L107 ; |1457| 
                                        ; branch occurs ; |1457| 
$C$L106:    
	.dwpsn	file "src/csl_dma.c",line 1378,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AC0 ; |1378| 

        MOV AC0, AR1 ; |1378| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |1378| 
        BCC $C$L107,!TC1 ; |1378| 
                                        ; branchcc occurs ; |1378| 
        SFTS AC0, #1, AC0 ; |1378| 
        MOV mmap(AC0L), AC1 ; |1378| 
        MOV #($C$SW3 >> 16) << #16, AC0 ; |1378| 
        OR #($C$SW3 & 0xffff), AC0, AC0 ; |1378| 
        ADD AC1, AC0 ; |1378| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |1378| 
        B AC0     ; |1378| 
                                        ; branch occurs ; |1378| 
	.sect	".switch:_DMA_getConfig"
	.clink
$C$SW3:	.long	$C$L90	; 0
	.long	$C$L91	; 1
	.long	$C$L92	; 2
	.long	$C$L93	; 3
	.long	$C$L94	; 4
	.long	$C$L95	; 5
	.long	$C$L96	; 6
	.long	$C$L97	; 7
	.long	$C$L98	; 8
	.long	$C$L99	; 9
	.long	$C$L100	; 10
	.long	$C$L101	; 11
	.long	$C$L102	; 12
	.long	$C$L103	; 13
	.long	$C$L104	; 14
	.long	$C$L105	; 15
	.sect	".text"
$C$L107:    
	.dwpsn	file "src/csl_dma.c",line 1461,column 5,is_stmt
        MOV uns(*SP(#6)), AC0 ; |1461| 
        MOV AC0, dbl(*SP(#10)) ; |1461| 
	.dwpsn	file "src/csl_dma.c",line 1462,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1462| 
        SFTL AC0, #16, AC0 ; |1462| 
        MOV AC0, dbl(*SP(#10)) ; |1462| 
	.dwpsn	file "src/csl_dma.c",line 1463,column 5,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1463| 
        OR *SP(#5), AC0, AC0 ; |1463| 
        MOV AC0, dbl(*SP(#10)) ; |1463| 
	.dwpsn	file "src/csl_dma.c",line 1465,column 5,is_stmt
        MOV uns(*SP(#8)), AC0 ; |1465| 
        MOV AC0, dbl(*SP(#12)) ; |1465| 
	.dwpsn	file "src/csl_dma.c",line 1466,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1466| 
        SFTL AC0, #16, AC0 ; |1466| 
        MOV AC0, dbl(*SP(#12)) ; |1466| 
	.dwpsn	file "src/csl_dma.c",line 1467,column 5,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1467| 
        OR *SP(#7), AC0, AC0 ; |1467| 
        MOV AC0, dbl(*SP(#12)) ; |1467| 
	.dwpsn	file "src/csl_dma.c",line 1469,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#6)), AR1 ; |1469| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |1469| 
        BCC $C$L123,TC1 ; |1469| 
                                        ; branchcc occurs ; |1469| 
	.dwpsn	file "src/csl_dma.c",line 1471,column 9,is_stmt
        MOV #1280 << #16, AC0 ; |1471| 
        MOV dbl(*SP(#10)), AC1 ; |1471| 
        CMPU AC1 < AC0, TC1 ; |1471| 
        BCC $C$L108,TC1 ; |1471| 
                                        ; branchcc occurs ; |1471| 
	.dwpsn	file "src/csl_dma.c",line 1473,column 4,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1473| 
        MOV AC0, dbl(*SP(#10)) ; |1473| 
	.dwpsn	file "src/csl_dma.c",line 1474,column 4,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1474| 
        SFTL AC0, #-1 ; |1474| 
        MOV AC0, dbl(*SP(#10)) ; |1474| 
	.dwpsn	file "src/csl_dma.c",line 1475,column 13,is_stmt
        MOV #128 << #16, AC0 ; |1475| 
        ADD dbl(*SP(#10)), AC0, AC0 ; |1475| 
        MOV AC0, dbl(*SP(#10)) ; |1475| 
	.dwpsn	file "src/csl_dma.c",line 1476,column 9,is_stmt
        B $C$L115 ; |1476| 
                                        ; branch occurs ; |1476| 
$C$L108:    
	.dwpsn	file "src/csl_dma.c",line 1477,column 14,is_stmt
        MOV #1024 << #16, AC0 ; |1477| 
        MOV dbl(*SP(#10)), AC1 ; |1477| 
        CMPU AC1 < AC0, TC1 ; |1477| 
        BCC $C$L109,TC1 ; |1477| 
                                        ; branchcc occurs ; |1477| 
	.dwpsn	file "src/csl_dma.c",line 1479,column 4,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1479| 
        MOV AC0, dbl(*SP(#10)) ; |1479| 
	.dwpsn	file "src/csl_dma.c",line 1480,column 4,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1480| 
        SFTL AC0, #-1 ; |1480| 
        MOV AC0, dbl(*SP(#10)) ; |1480| 
	.dwpsn	file "src/csl_dma.c",line 1481,column 13,is_stmt
        AMOV #7340032, XAR3 ; |1481| 
        MOV XAR3, AC0
        ADD dbl(*SP(#10)), AC0, AC0 ; |1481| 
        MOV AC0, dbl(*SP(#10)) ; |1481| 
	.dwpsn	file "src/csl_dma.c",line 1482,column 9,is_stmt
        B $C$L115 ; |1482| 
                                        ; branch occurs ; |1482| 
$C$L109:    
	.dwpsn	file "src/csl_dma.c",line 1483,column 14,is_stmt
        MOV #768 << #16, AC0 ; |1483| 
        MOV dbl(*SP(#10)), AC1 ; |1483| 
        CMPU AC1 < AC0, TC1 ; |1483| 
        BCC $C$L110,TC1 ; |1483| 
                                        ; branchcc occurs ; |1483| 
	.dwpsn	file "src/csl_dma.c",line 1485,column 4,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1485| 
        MOV AC0, dbl(*SP(#10)) ; |1485| 
	.dwpsn	file "src/csl_dma.c",line 1486,column 4,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1486| 
        SFTL AC0, #-1 ; |1486| 
        MOV AC0, dbl(*SP(#10)) ; |1486| 
	.dwpsn	file "src/csl_dma.c",line 1487,column 13,is_stmt
        AMOV #6291456, XAR3 ; |1487| 
        MOV XAR3, AC0
        ADD dbl(*SP(#10)), AC0, AC0 ; |1487| 
        MOV AC0, dbl(*SP(#10)) ; |1487| 
	.dwpsn	file "src/csl_dma.c",line 1488,column 9,is_stmt
        B $C$L115 ; |1488| 
                                        ; branch occurs ; |1488| 
$C$L110:    
	.dwpsn	file "src/csl_dma.c",line 1489,column 14,is_stmt
        MOV #512 << #16, AC0 ; |1489| 
        MOV dbl(*SP(#10)), AC1 ; |1489| 
        CMPU AC1 < AC0, TC1 ; |1489| 
        BCC $C$L111,TC1 ; |1489| 
                                        ; branchcc occurs ; |1489| 
	.dwpsn	file "src/csl_dma.c",line 1491,column 4,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1491| 
        MOV AC0, dbl(*SP(#10)) ; |1491| 
	.dwpsn	file "src/csl_dma.c",line 1492,column 4,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1492| 
        SFTL AC0, #-1 ; |1492| 
        MOV AC0, dbl(*SP(#10)) ; |1492| 
	.dwpsn	file "src/csl_dma.c",line 1493,column 13,is_stmt
        AMOV #4194304, XAR3 ; |1493| 
        MOV XAR3, AC0
        ADD dbl(*SP(#10)), AC0, AC0 ; |1493| 
        MOV AC0, dbl(*SP(#10)) ; |1493| 
	.dwpsn	file "src/csl_dma.c",line 1494,column 9,is_stmt
        B $C$L115 ; |1494| 
                                        ; branch occurs ; |1494| 
$C$L111:    
	.dwpsn	file "src/csl_dma.c",line 1495,column 14,is_stmt
        MOV #256 << #16, AC0 ; |1495| 
        MOV dbl(*SP(#10)), AC1 ; |1495| 
        CMPU AC1 < AC0, TC1 ; |1495| 
        BCC $C$L112,TC1 ; |1495| 
                                        ; branchcc occurs ; |1495| 
	.dwpsn	file "src/csl_dma.c",line 1497,column 4,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1497| 
        MOV AC0, dbl(*SP(#10)) ; |1497| 
	.dwpsn	file "src/csl_dma.c",line 1498,column 4,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1498| 
        SFTL AC0, #-1 ; |1498| 
        MOV AC0, dbl(*SP(#10)) ; |1498| 
	.dwpsn	file "src/csl_dma.c",line 1499,column 13,is_stmt
        AMOV #163840, XAR3 ; |1499| 
        MOV XAR3, AC0
        ADD dbl(*SP(#10)), AC0, AC0 ; |1499| 
        MOV AC0, dbl(*SP(#10)) ; |1499| 
	.dwpsn	file "src/csl_dma.c",line 1500,column 9,is_stmt
        B $C$L115 ; |1500| 
                                        ; branch occurs ; |1500| 
$C$L112:    
	.dwpsn	file "src/csl_dma.c",line 1501,column 14,is_stmt
        AMOV #524288, XAR3 ; |1501| 
        MOV dbl(*SP(#10)), AC1 ; |1501| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1501| 
        BCC $C$L113,TC1 ; |1501| 
                                        ; branchcc occurs ; |1501| 
	.dwpsn	file "src/csl_dma.c",line 1503,column 13,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1503| 
        SFTL AC0, #-1 ; |1503| 
        MOV AC0, dbl(*SP(#10)) ; |1503| 
	.dwpsn	file "src/csl_dma.c",line 1505,column 9,is_stmt
        B $C$L115 ; |1505| 
                                        ; branch occurs ; |1505| 
$C$L113:    
	.dwpsn	file "src/csl_dma.c",line 1506,column 14,is_stmt
        AMOV #65536, XAR3 ; |1506| 
        MOV dbl(*SP(#10)), AC1 ; |1506| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1506| 
        BCC $C$L114,TC1 ; |1506| 
                                        ; branchcc occurs ; |1506| 
	.dwpsn	file "src/csl_dma.c",line 1508,column 13,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1508| 
        SFTL AC0, #-1 ; |1508| 
        MOV AC0, dbl(*SP(#10)) ; |1508| 
	.dwpsn	file "src/csl_dma.c",line 1510,column 9,is_stmt
        B $C$L115 ; |1510| 
                                        ; branch occurs ; |1510| 
$C$L114:    
	.dwpsn	file "src/csl_dma.c",line 1513,column 13,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1513| 
        MOV AC0, dbl(*SP(#10)) ; |1513| 
$C$L115:    
	.dwpsn	file "src/csl_dma.c",line 1516,column 9,is_stmt
        MOV #1280 << #16, AC0 ; |1516| 
        MOV dbl(*SP(#12)), AC1 ; |1516| 
        CMPU AC1 < AC0, TC1 ; |1516| 
        BCC $C$L116,TC1 ; |1516| 
                                        ; branchcc occurs ; |1516| 
	.dwpsn	file "src/csl_dma.c",line 1518,column 4,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1518| 
        MOV AC0, dbl(*SP(#12)) ; |1518| 
	.dwpsn	file "src/csl_dma.c",line 1519,column 4,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1519| 
        SFTL AC0, #-1 ; |1519| 
        MOV AC0, dbl(*SP(#12)) ; |1519| 
	.dwpsn	file "src/csl_dma.c",line 1520,column 13,is_stmt
        MOV #128 << #16, AC0 ; |1520| 
        ADD dbl(*SP(#12)), AC0, AC0 ; |1520| 
        MOV AC0, dbl(*SP(#12)) ; |1520| 
	.dwpsn	file "src/csl_dma.c",line 1521,column 9,is_stmt
        B $C$L129 ; |1521| 
                                        ; branch occurs ; |1521| 
$C$L116:    
	.dwpsn	file "src/csl_dma.c",line 1522,column 14,is_stmt
        MOV #1024 << #16, AC0 ; |1522| 
        MOV dbl(*SP(#12)), AC1 ; |1522| 
        CMPU AC1 < AC0, TC1 ; |1522| 
        BCC $C$L117,TC1 ; |1522| 
                                        ; branchcc occurs ; |1522| 
	.dwpsn	file "src/csl_dma.c",line 1524,column 4,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1524| 
        MOV AC0, dbl(*SP(#12)) ; |1524| 
	.dwpsn	file "src/csl_dma.c",line 1525,column 4,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1525| 
        SFTL AC0, #-1 ; |1525| 
        MOV AC0, dbl(*SP(#12)) ; |1525| 
	.dwpsn	file "src/csl_dma.c",line 1526,column 13,is_stmt
        AMOV #7340032, XAR3 ; |1526| 
        MOV XAR3, AC0
        ADD dbl(*SP(#12)), AC0, AC0 ; |1526| 
        MOV AC0, dbl(*SP(#12)) ; |1526| 
	.dwpsn	file "src/csl_dma.c",line 1527,column 9,is_stmt
        B $C$L129 ; |1527| 
                                        ; branch occurs ; |1527| 
$C$L117:    
	.dwpsn	file "src/csl_dma.c",line 1528,column 14,is_stmt
        MOV #768 << #16, AC0 ; |1528| 
        MOV dbl(*SP(#12)), AC1 ; |1528| 
        CMPU AC1 < AC0, TC1 ; |1528| 
        BCC $C$L118,TC1 ; |1528| 
                                        ; branchcc occurs ; |1528| 
	.dwpsn	file "src/csl_dma.c",line 1530,column 4,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1530| 
        MOV AC0, dbl(*SP(#12)) ; |1530| 
	.dwpsn	file "src/csl_dma.c",line 1531,column 4,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1531| 
        SFTL AC0, #-1 ; |1531| 
        MOV AC0, dbl(*SP(#12)) ; |1531| 
	.dwpsn	file "src/csl_dma.c",line 1532,column 13,is_stmt
        AMOV #6291456, XAR3 ; |1532| 
        MOV XAR3, AC0
        ADD dbl(*SP(#12)), AC0, AC0 ; |1532| 
        MOV AC0, dbl(*SP(#12)) ; |1532| 
	.dwpsn	file "src/csl_dma.c",line 1533,column 9,is_stmt
        B $C$L129 ; |1533| 
                                        ; branch occurs ; |1533| 
$C$L118:    
	.dwpsn	file "src/csl_dma.c",line 1534,column 14,is_stmt
        MOV #512 << #16, AC0 ; |1534| 
        MOV dbl(*SP(#12)), AC1 ; |1534| 
        CMPU AC1 < AC0, TC1 ; |1534| 
        BCC $C$L119,TC1 ; |1534| 
                                        ; branchcc occurs ; |1534| 
	.dwpsn	file "src/csl_dma.c",line 1536,column 4,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1536| 
        MOV AC0, dbl(*SP(#12)) ; |1536| 
	.dwpsn	file "src/csl_dma.c",line 1537,column 4,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1537| 
        SFTL AC0, #-1 ; |1537| 
        MOV AC0, dbl(*SP(#12)) ; |1537| 
	.dwpsn	file "src/csl_dma.c",line 1538,column 13,is_stmt
        AMOV #4194304, XAR3 ; |1538| 
        MOV XAR3, AC0
        ADD dbl(*SP(#12)), AC0, AC0 ; |1538| 
        MOV AC0, dbl(*SP(#12)) ; |1538| 
	.dwpsn	file "src/csl_dma.c",line 1539,column 9,is_stmt
        B $C$L129 ; |1539| 
                                        ; branch occurs ; |1539| 
$C$L119:    
	.dwpsn	file "src/csl_dma.c",line 1540,column 14,is_stmt
        MOV #256 << #16, AC0 ; |1540| 
        MOV dbl(*SP(#12)), AC1 ; |1540| 
        CMPU AC1 < AC0, TC1 ; |1540| 
        BCC $C$L120,TC1 ; |1540| 
                                        ; branchcc occurs ; |1540| 
	.dwpsn	file "src/csl_dma.c",line 1542,column 4,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1542| 
        MOV AC0, dbl(*SP(#12)) ; |1542| 
	.dwpsn	file "src/csl_dma.c",line 1543,column 4,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1543| 
        SFTL AC0, #-1 ; |1543| 
        MOV AC0, dbl(*SP(#12)) ; |1543| 
	.dwpsn	file "src/csl_dma.c",line 1544,column 13,is_stmt
        AMOV #163840, XAR3 ; |1544| 
        MOV XAR3, AC0
        ADD dbl(*SP(#12)), AC0, AC0 ; |1544| 
        MOV AC0, dbl(*SP(#12)) ; |1544| 
	.dwpsn	file "src/csl_dma.c",line 1545,column 9,is_stmt
        B $C$L129 ; |1545| 
                                        ; branch occurs ; |1545| 
$C$L120:    
	.dwpsn	file "src/csl_dma.c",line 1546,column 14,is_stmt
        AMOV #524288, XAR3 ; |1546| 
        MOV dbl(*SP(#12)), AC1 ; |1546| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1546| 
        BCC $C$L121,TC1 ; |1546| 
                                        ; branchcc occurs ; |1546| 
	.dwpsn	file "src/csl_dma.c",line 1548,column 13,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1548| 
        SFTL AC0, #-1 ; |1548| 
        MOV AC0, dbl(*SP(#12)) ; |1548| 
	.dwpsn	file "src/csl_dma.c",line 1550,column 9,is_stmt
        B $C$L129 ; |1550| 
                                        ; branch occurs ; |1550| 
$C$L121:    
	.dwpsn	file "src/csl_dma.c",line 1551,column 14,is_stmt
        AMOV #65536, XAR3 ; |1551| 
        MOV dbl(*SP(#12)), AC1 ; |1551| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1551| 
        BCC $C$L122,TC1 ; |1551| 
                                        ; branchcc occurs ; |1551| 
	.dwpsn	file "src/csl_dma.c",line 1553,column 13,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1553| 
        SFTL AC0, #-1 ; |1553| 
        MOV AC0, dbl(*SP(#12)) ; |1553| 
	.dwpsn	file "src/csl_dma.c",line 1555,column 9,is_stmt
        B $C$L129 ; |1555| 
                                        ; branch occurs ; |1555| 
$C$L122:    
	.dwpsn	file "src/csl_dma.c",line 1558,column 13,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1558| 
        MOV AC0, dbl(*SP(#12)) ; |1558| 
	.dwpsn	file "src/csl_dma.c",line 1560,column 5,is_stmt
        B $C$L129 ; |1560| 
                                        ; branch occurs ; |1560| 
$C$L123:    
	.dwpsn	file "src/csl_dma.c",line 1565,column 9,is_stmt
        MOV *AR3(short(#4)), AR1 ; |1565| 
        BCC $C$L126,AR1 != #0 ; |1565| 
                                        ; branchcc occurs ; |1565| 
	.dwpsn	file "src/csl_dma.c",line 1567,column 13,is_stmt
        AMOV #524288, XAR3 ; |1567| 
        MOV dbl(*SP(#12)), AC1 ; |1567| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1567| 
        BCC $C$L124,TC1 ; |1567| 
                                        ; branchcc occurs ; |1567| 
	.dwpsn	file "src/csl_dma.c",line 1569,column 17,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1569| 
        SFTL AC0, #-1 ; |1569| 
        MOV AC0, dbl(*SP(#12)) ; |1569| 
	.dwpsn	file "src/csl_dma.c",line 1571,column 13,is_stmt
        B $C$L126 ; |1571| 
                                        ; branch occurs ; |1571| 
$C$L124:    
	.dwpsn	file "src/csl_dma.c",line 1572,column 18,is_stmt
        AMOV #65536, XAR3 ; |1572| 
        MOV dbl(*SP(#12)), AC1 ; |1572| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1572| 
        BCC $C$L125,TC1 ; |1572| 
                                        ; branchcc occurs ; |1572| 
	.dwpsn	file "src/csl_dma.c",line 1574,column 17,is_stmt
        SUB AC0, dbl(*SP(#12)), AC0 ; |1574| 
        SFTL AC0, #-1 ; |1574| 
        MOV AC0, dbl(*SP(#12)) ; |1574| 
	.dwpsn	file "src/csl_dma.c",line 1576,column 13,is_stmt
        B $C$L126 ; |1576| 
                                        ; branch occurs ; |1576| 
$C$L125:    
	.dwpsn	file "src/csl_dma.c",line 1579,column 17,is_stmt
        MOV dbl(*SP(#12)), AC0 ; |1579| 
        MOV AC0, dbl(*SP(#12)) ; |1579| 
$C$L126:    
	.dwpsn	file "src/csl_dma.c",line 1583,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(short(#4)) == #1, TC1 ; |1583| 
        BCC $C$L129,!TC1 ; |1583| 
                                        ; branchcc occurs ; |1583| 
	.dwpsn	file "src/csl_dma.c",line 1585,column 13,is_stmt
        AMOV #524288, XAR3 ; |1585| 
        MOV dbl(*SP(#10)), AC1 ; |1585| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1585| 
        BCC $C$L127,TC1 ; |1585| 
                                        ; branchcc occurs ; |1585| 
	.dwpsn	file "src/csl_dma.c",line 1587,column 17,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1587| 
        SFTL AC0, #-1 ; |1587| 
        MOV AC0, dbl(*SP(#10)) ; |1587| 
	.dwpsn	file "src/csl_dma.c",line 1589,column 13,is_stmt
        B $C$L129 ; |1589| 
                                        ; branch occurs ; |1589| 
$C$L127:    
	.dwpsn	file "src/csl_dma.c",line 1590,column 18,is_stmt
        AMOV #65536, XAR3 ; |1590| 
        MOV dbl(*SP(#10)), AC1 ; |1590| 
        MOV XAR3, AC0
        CMPU AC1 < AC0, TC1 ; |1590| 
        BCC $C$L128,TC1 ; |1590| 
                                        ; branchcc occurs ; |1590| 
	.dwpsn	file "src/csl_dma.c",line 1592,column 17,is_stmt
        SUB AC0, dbl(*SP(#10)), AC0 ; |1592| 
        SFTL AC0, #-1 ; |1592| 
        MOV AC0, dbl(*SP(#10)) ; |1592| 
	.dwpsn	file "src/csl_dma.c",line 1594,column 13,is_stmt
        B $C$L129 ; |1594| 
                                        ; branch occurs ; |1594| 
$C$L128:    
	.dwpsn	file "src/csl_dma.c",line 1597,column 17,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |1597| 
        MOV AC0, dbl(*SP(#10)) ; |1597| 
$C$L129:    
	.dwpsn	file "src/csl_dma.c",line 1601,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#10)), AC0 ; |1601| 
        MOV AC0, dbl(*AR3(#10)) ; |1601| 
	.dwpsn	file "src/csl_dma.c",line 1602,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#12)), AC0 ; |1602| 
        MOV AC0, dbl(*AR3(#12)) ; |1602| 
	.dwpsn	file "src/csl_dma.c",line 1604,column 5,is_stmt
        MOV #0, T0
$C$L130:    
	.dwpsn	file "src/csl_dma.c",line 1605,column 1,is_stmt
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$46	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$46, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L81:1:1714639432")
	.dwattr $C$DW$46, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x4b2)
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x4b5)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_DMA_getConfig$4$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_DMA_getConfig$4$E)
	.dwendtag $C$DW$46

	.dwattr $C$DW$33, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x645)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.global	_DMA_start

$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_start")
	.dwattr $C$DW$48, DW_AT_low_pc(_DMA_start)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_DMA_start")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$48, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x688)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_dma.c",line 1678,column 1,is_stmt,address _DMA_start

	.dwfde $C$DW$CIE, _DMA_start
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DMA_start                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 1681,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L131,AC0 != #0 ; |1681| 
                                        ; branchcc occurs ; |1681| 
	.dwpsn	file "src/csl_dma.c",line 1683,column 3,is_stmt
        MOV #-5, T0
        B $C$L145 ; |1683| 
                                        ; branch occurs ; |1683| 
$C$L131:    
	.dwpsn	file "src/csl_dma.c",line 1687,column 9,is_stmt
        MOV *AR3(short(#1)), AR1 ; |1687| 
        MOV AR1, *SP(#2) ; |1687| 
	.dwpsn	file "src/csl_dma.c",line 1689,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |1689| 
        BCC $C$L133,TC1 ; |1689| 
                                        ; branchcc occurs ; |1689| 
$C$L132:    
$C$DW$L$_DMA_start$5$B:
	.dwpsn	file "src/csl_dma.c",line 1691,column 13,is_stmt
        SUB #4, *SP(#2) ; |1691| 
	.dwpsn	file "src/csl_dma.c",line 1689,column 15,is_stmt
        MOV *SP(#2), AR1 ; |1689| 
        CMPU AR1 >= AR2, TC1 ; |1689| 
        BCC $C$L132,TC1 ; |1689| 
                                        ; branchcc occurs ; |1689| 
$C$DW$L$_DMA_start$5$E:
$C$L133:    
	.dwpsn	file "src/csl_dma.c",line 1694,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#5)), AR1 ; |1694| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |1694| 
        BCC $C$L143,TC1 ; |1694| 
                                        ; branchcc occurs ; |1694| 
	.dwpsn	file "src/csl_dma.c",line 1696,column 13,is_stmt
        B $C$L138 ; |1696| 
                                        ; branch occurs ; |1696| 
$C$L134:    
	.dwpsn	file "src/csl_dma.c",line 1713,column 15,is_stmt
        MOV *AR3, AR3 ; |1713| 
        OR #0x8004, port(*AR3(short(#5))) ; |1713| 
	.dwpsn	file "src/csl_dma.c",line 1714,column 20,is_stmt
        B $C$L144 ; |1714| 
                                        ; branch occurs ; |1714| 
$C$L135:    
	.dwpsn	file "src/csl_dma.c",line 1716,column 15,is_stmt
        MOV #37, T0 ; |1716| 
        MOV *AR3, AR3 ; |1716| 
        OR #0x8004, port(*AR3(T0)) ; |1716| 
	.dwpsn	file "src/csl_dma.c",line 1717,column 20,is_stmt
        B $C$L144 ; |1717| 
                                        ; branch occurs ; |1717| 
$C$L136:    
	.dwpsn	file "src/csl_dma.c",line 1719,column 15,is_stmt
        MOV #69, T0 ; |1719| 
        MOV *AR3, AR3 ; |1719| 
        OR #0x8004, port(*AR3(T0)) ; |1719| 
	.dwpsn	file "src/csl_dma.c",line 1720,column 20,is_stmt
        B $C$L144 ; |1720| 
                                        ; branch occurs ; |1720| 
$C$L137:    
	.dwpsn	file "src/csl_dma.c",line 1722,column 15,is_stmt
        MOV #101, T0 ; |1722| 
        MOV *AR3, AR3 ; |1722| 
        OR #0x8004, port(*AR3(T0)) ; |1722| 
	.dwpsn	file "src/csl_dma.c",line 1723,column 20,is_stmt
        B $C$L144 ; |1723| 
                                        ; branch occurs ; |1723| 
$C$L138:    
	.dwpsn	file "src/csl_dma.c",line 1696,column 13,is_stmt
        MOV *SP(#2), AR1 ; |1696| 
        BCC $C$L134,AR1 == #0 ; |1696| 
                                        ; branchcc occurs ; |1696| 
        CMPU AR1 == AR2, TC1 ; |1696| 
        BCC $C$L135,TC1 ; |1696| 
                                        ; branchcc occurs ; |1696| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1696| 
        BCC $C$L136,TC1 ; |1696| 
                                        ; branchcc occurs ; |1696| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1696| 
        BCC $C$L137,TC1 ; |1696| 
                                        ; branchcc occurs ; |1696| 
        B $C$L144 ; |1696| 
                                        ; branch occurs ; |1696| 
$C$L139:    
	.dwpsn	file "src/csl_dma.c",line 1750,column 17,is_stmt
        MOV *AR3, AR3 ; |1750| 
        MOV port(*AR3(short(#5))), AR1 ; |1750| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1750| 
        BCLR @#15, AR1 ; |1750| 
        BSET @#15, AR1 ; |1750| 
        MOV AR1, port(*AR3(short(#5))) ; |1750| 
	.dwpsn	file "src/csl_dma.c",line 1752,column 22,is_stmt
        B $C$L144 ; |1752| 
                                        ; branch occurs ; |1752| 
$C$L140:    
	.dwpsn	file "src/csl_dma.c",line 1754,column 17,is_stmt
        MOV #37, T0 ; |1754| 
        MOV *AR3, AR3 ; |1754| 
        MOV port(*AR3(T0)), AR1 ; |1754| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1754| 
        BCLR @#15, AR1 ; |1754| 
        BSET @#15, AR1 ; |1754| 
        MOV AR1, port(*AR3(T0)) ; |1754| 
	.dwpsn	file "src/csl_dma.c",line 1756,column 22,is_stmt
        B $C$L144 ; |1756| 
                                        ; branch occurs ; |1756| 
$C$L141:    
	.dwpsn	file "src/csl_dma.c",line 1758,column 17,is_stmt
        MOV #69, T0 ; |1758| 
        MOV *AR3, AR3 ; |1758| 
        MOV port(*AR3(T0)), AR1 ; |1758| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1758| 
        BCLR @#15, AR1 ; |1758| 
        BSET @#15, AR1 ; |1758| 
        MOV AR1, port(*AR3(T0)) ; |1758| 
	.dwpsn	file "src/csl_dma.c",line 1760,column 22,is_stmt
        B $C$L144 ; |1760| 
                                        ; branch occurs ; |1760| 
$C$L142:    
	.dwpsn	file "src/csl_dma.c",line 1762,column 17,is_stmt
        MOV #101, T0 ; |1762| 
        MOV *AR3, AR3 ; |1762| 
        MOV port(*AR3(T0)), AR1 ; |1762| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1762| 
        BCLR @#15, AR1 ; |1762| 
        BSET @#15, AR1 ; |1762| 
        MOV AR1, port(*AR3(T0)) ; |1762| 
	.dwpsn	file "src/csl_dma.c",line 1764,column 22,is_stmt
        B $C$L144 ; |1764| 
                                        ; branch occurs ; |1764| 
$C$L143:    
	.dwpsn	file "src/csl_dma.c",line 1729,column 13,is_stmt
        MOV *SP(#2), AR1 ; |1729| 
        BCC $C$L139,AR1 == #0 ; |1729| 
                                        ; branchcc occurs ; |1729| 
        CMPU AR1 == AR2, TC1 ; |1729| 
        BCC $C$L140,TC1 ; |1729| 
                                        ; branchcc occurs ; |1729| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1729| 
        BCC $C$L141,TC1 ; |1729| 
                                        ; branchcc occurs ; |1729| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1729| 
        BCC $C$L142,TC1 ; |1729| 
                                        ; branchcc occurs ; |1729| 
$C$L144:    
	.dwpsn	file "src/csl_dma.c",line 1768,column 9,is_stmt
        MOV #0, T0
$C$L145:    
	.dwpsn	file "src/csl_dma.c",line 1770,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$53	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$53, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L132:1:1714639432")
	.dwattr $C$DW$53, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0x699)
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x69c)
$C$DW$54	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$54, DW_AT_low_pc($C$DW$L$_DMA_start$5$B)
	.dwattr $C$DW$54, DW_AT_high_pc($C$DW$L$_DMA_start$5$E)
	.dwendtag $C$DW$53

	.dwattr $C$DW$48, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x6ea)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text"
	.global	_DMA_stop

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_stop")
	.dwattr $C$DW$55, DW_AT_low_pc(_DMA_stop)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_DMA_stop")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$55, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x732)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_dma.c",line 1848,column 1,is_stmt,address _DMA_stop

	.dwfde $C$DW$CIE, _DMA_stop
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DMA_stop                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 1851,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L146,AC0 != #0 ; |1851| 
                                        ; branchcc occurs ; |1851| 
	.dwpsn	file "src/csl_dma.c",line 1853,column 3,is_stmt
        MOV #-5, T0
        B $C$L160 ; |1853| 
                                        ; branch occurs ; |1853| 
$C$L146:    
	.dwpsn	file "src/csl_dma.c",line 1857,column 9,is_stmt
        MOV *AR3(short(#1)), AR1 ; |1857| 
        MOV AR1, *SP(#2) ; |1857| 
	.dwpsn	file "src/csl_dma.c",line 1859,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |1859| 
        BCC $C$L148,TC1 ; |1859| 
                                        ; branchcc occurs ; |1859| 
$C$L147:    
$C$DW$L$_DMA_stop$5$B:
	.dwpsn	file "src/csl_dma.c",line 1861,column 13,is_stmt
        SUB #4, *SP(#2) ; |1861| 
	.dwpsn	file "src/csl_dma.c",line 1859,column 15,is_stmt
        MOV *SP(#2), AR1 ; |1859| 
        CMPU AR1 >= AR2, TC1 ; |1859| 
        BCC $C$L147,TC1 ; |1859| 
                                        ; branchcc occurs ; |1859| 
$C$DW$L$_DMA_stop$5$E:
$C$L148:    
	.dwpsn	file "src/csl_dma.c",line 1864,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV *AR3(short(#5)), AR1 ; |1864| 
||      MOV #1, AR2

        CMP AR2 != AR1, TC1 ; |1864| 
        BCC $C$L158,TC1 ; |1864| 
                                        ; branchcc occurs ; |1864| 
	.dwpsn	file "src/csl_dma.c",line 1866,column 13,is_stmt
        B $C$L153 ; |1866| 
                                        ; branch occurs ; |1866| 
$C$L149:    
	.dwpsn	file "src/csl_dma.c",line 1883,column 15,is_stmt
        MOV *AR3, AR3 ; |1883| 
        AND #0x7ffb, port(*AR3(short(#5))) ; |1883| 
	.dwpsn	file "src/csl_dma.c",line 1884,column 20,is_stmt
        B $C$L159 ; |1884| 
                                        ; branch occurs ; |1884| 
$C$L150:    
	.dwpsn	file "src/csl_dma.c",line 1886,column 15,is_stmt
        MOV #37, T0 ; |1886| 
        MOV *AR3, AR3 ; |1886| 
        AND #0x7ffb, port(*AR3(T0)) ; |1886| 
	.dwpsn	file "src/csl_dma.c",line 1887,column 20,is_stmt
        B $C$L159 ; |1887| 
                                        ; branch occurs ; |1887| 
$C$L151:    
	.dwpsn	file "src/csl_dma.c",line 1889,column 15,is_stmt
        MOV #69, T0 ; |1889| 
        MOV *AR3, AR3 ; |1889| 
        AND #0x7ffb, port(*AR3(T0)) ; |1889| 
	.dwpsn	file "src/csl_dma.c",line 1890,column 20,is_stmt
        B $C$L159 ; |1890| 
                                        ; branch occurs ; |1890| 
$C$L152:    
	.dwpsn	file "src/csl_dma.c",line 1892,column 15,is_stmt
        MOV #101, T0 ; |1892| 
        MOV *AR3, AR3 ; |1892| 
        AND #0x7ffb, port(*AR3(T0)) ; |1892| 
	.dwpsn	file "src/csl_dma.c",line 1893,column 20,is_stmt
        B $C$L159 ; |1893| 
                                        ; branch occurs ; |1893| 
$C$L153:    
	.dwpsn	file "src/csl_dma.c",line 1866,column 13,is_stmt
        MOV *SP(#2), AR1 ; |1866| 
        BCC $C$L149,AR1 == #0 ; |1866| 
                                        ; branchcc occurs ; |1866| 
        CMPU AR1 == AR2, TC1 ; |1866| 
        BCC $C$L150,TC1 ; |1866| 
                                        ; branchcc occurs ; |1866| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1866| 
        BCC $C$L151,TC1 ; |1866| 
                                        ; branchcc occurs ; |1866| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1866| 
        BCC $C$L152,TC1 ; |1866| 
                                        ; branchcc occurs ; |1866| 
        B $C$L159 ; |1866| 
                                        ; branch occurs ; |1866| 
$C$L154:    
	.dwpsn	file "src/csl_dma.c",line 1920,column 17,is_stmt
        MOV *AR3, AR3 ; |1920| 
        MOV port(*AR3(short(#5))), AR1 ; |1920| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1920| 
        BCLR @#15, AR1 ; |1920| 
        MOV AR1, port(*AR3(short(#5))) ; |1920| 
	.dwpsn	file "src/csl_dma.c",line 1922,column 22,is_stmt
        B $C$L159 ; |1922| 
                                        ; branch occurs ; |1922| 
$C$L155:    
	.dwpsn	file "src/csl_dma.c",line 1924,column 17,is_stmt
        MOV #37, T0 ; |1924| 
        MOV *AR3, AR3 ; |1924| 
        MOV port(*AR3(T0)), AR1 ; |1924| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1924| 
        BCLR @#15, AR1 ; |1924| 
        MOV AR1, port(*AR3(T0)) ; |1924| 
	.dwpsn	file "src/csl_dma.c",line 1926,column 22,is_stmt
        B $C$L159 ; |1926| 
                                        ; branch occurs ; |1926| 
$C$L156:    
	.dwpsn	file "src/csl_dma.c",line 1928,column 17,is_stmt
        MOV #69, T0 ; |1928| 
        MOV *AR3, AR3 ; |1928| 
        MOV port(*AR3(T0)), AR1 ; |1928| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1928| 
        BCLR @#15, AR1 ; |1928| 
        MOV AR1, port(*AR3(T0)) ; |1928| 
	.dwpsn	file "src/csl_dma.c",line 1930,column 22,is_stmt
        B $C$L159 ; |1930| 
                                        ; branch occurs ; |1930| 
$C$L157:    
	.dwpsn	file "src/csl_dma.c",line 1932,column 17,is_stmt
        MOV #101, T0 ; |1932| 
        MOV *AR3, AR3 ; |1932| 
        MOV port(*AR3(T0)), AR1 ; |1932| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |1932| 
        BCLR @#15, AR1 ; |1932| 
        MOV AR1, port(*AR3(T0)) ; |1932| 
	.dwpsn	file "src/csl_dma.c",line 1934,column 22,is_stmt
        B $C$L159 ; |1934| 
                                        ; branch occurs ; |1934| 
$C$L158:    
	.dwpsn	file "src/csl_dma.c",line 1899,column 13,is_stmt
        MOV *SP(#2), AR1 ; |1899| 
        BCC $C$L154,AR1 == #0 ; |1899| 
                                        ; branchcc occurs ; |1899| 
        CMPU AR1 == AR2, TC1 ; |1899| 
        BCC $C$L155,TC1 ; |1899| 
                                        ; branchcc occurs ; |1899| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1899| 
        BCC $C$L156,TC1 ; |1899| 
                                        ; branchcc occurs ; |1899| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1899| 
        BCC $C$L157,TC1 ; |1899| 
                                        ; branchcc occurs ; |1899| 
$C$L159:    
	.dwpsn	file "src/csl_dma.c",line 1938,column 9,is_stmt
        MOV #0, T0
$C$L160:    
	.dwpsn	file "src/csl_dma.c",line 1940,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$60	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$60, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L147:1:1714639432")
	.dwattr $C$DW$60, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$60, DW_AT_TI_begin_line(0x743)
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x746)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_DMA_stop$5$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_DMA_stop$5$E)
	.dwendtag $C$DW$60

	.dwattr $C$DW$55, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x794)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.global	_DMA_reset

$C$DW$62	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_reset")
	.dwattr $C$DW$62, DW_AT_low_pc(_DMA_reset)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_DMA_reset")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$62, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x7bc)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_dma.c",line 1983,column 1,is_stmt,address _DMA_reset

	.dwfde $C$DW$CIE, _DMA_reset
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: DMA_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,     *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 1986,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L161,AC0 != #0 ; |1986| 
                                        ; branchcc occurs ; |1986| 
	.dwpsn	file "src/csl_dma.c",line 1988,column 3,is_stmt
        MOV #-5, T0
        B $C$L186 ; |1988| 
                                        ; branch occurs ; |1988| 
$C$L161:    
	.dwpsn	file "src/csl_dma.c",line 1992,column 6,is_stmt
        MOV *AR3(short(#1)), AR1 ; |1992| 
        MOV AR1, *SP(#2) ; |1992| 
	.dwpsn	file "src/csl_dma.c",line 1993,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |1993| 
        BCC $C$L167,TC1 ; |1993| 
                                        ; branchcc occurs ; |1993| 
$C$L162:    
$C$DW$L$_DMA_reset$5$B:
	.dwpsn	file "src/csl_dma.c",line 1995,column 13,is_stmt
        SUB #4, *SP(#2) ; |1995| 
	.dwpsn	file "src/csl_dma.c",line 1993,column 15,is_stmt
        MOV *SP(#2), AR1 ; |1993| 
        CMPU AR1 >= AR2, TC1 ; |1993| 
        BCC $C$L162,TC1 ; |1993| 
                                        ; branchcc occurs ; |1993| 
$C$DW$L$_DMA_reset$5$E:
	.dwpsn	file "src/csl_dma.c",line 1997,column 9,is_stmt
        B $C$L167 ; |1997| 
                                        ; branch occurs ; |1997| 
$C$L163:    
	.dwpsn	file "src/csl_dma.c",line 2000,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2000| 
        MOV #0, port(*AR3) ; |2000| 
	.dwpsn	file "src/csl_dma.c",line 2001,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2001| 
        MOV #0, port(*AR3(short(#1))) ; |2001| 
	.dwpsn	file "src/csl_dma.c",line 2002,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2002| 
        MOV #0, port(*AR3(short(#2))) ; |2002| 
	.dwpsn	file "src/csl_dma.c",line 2003,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2003| 
        MOV #0, port(*AR3(short(#3))) ; |2003| 
	.dwpsn	file "src/csl_dma.c",line 2009,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2009| 
        MOV #0, port(*AR3(short(#4))) ; |2009| 
	.dwpsn	file "src/csl_dma.c",line 2010,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2010| 
        MOV #0, port(*AR3(short(#5))) ; |2010| 
	.dwpsn	file "src/csl_dma.c",line 2012,column 18,is_stmt
        B $C$L184 ; |2012| 
                                        ; branch occurs ; |2012| 
$C$L164:    
	.dwpsn	file "src/csl_dma.c",line 2015,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T0 ; |2015| 
        MOV *AR3, AR3 ; |2015| 
        MOV #0, port(*AR3(T0)) ; |2015| 
	.dwpsn	file "src/csl_dma.c",line 2016,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #33, T0 ; |2016| 
        MOV *AR3, AR3 ; |2016| 
        MOV #0, port(*AR3(T0)) ; |2016| 
	.dwpsn	file "src/csl_dma.c",line 2017,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #34, T0 ; |2017| 
        MOV *AR3, AR3 ; |2017| 
        MOV #0, port(*AR3(T0)) ; |2017| 
	.dwpsn	file "src/csl_dma.c",line 2018,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #35, T0 ; |2018| 
        MOV *AR3, AR3 ; |2018| 
        MOV #0, port(*AR3(T0)) ; |2018| 
	.dwpsn	file "src/csl_dma.c",line 2024,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #36, T0 ; |2024| 
        MOV *AR3, AR3 ; |2024| 
        MOV #0, port(*AR3(T0)) ; |2024| 
	.dwpsn	file "src/csl_dma.c",line 2025,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |2025| 
        MOV *AR3, AR3 ; |2025| 
        MOV #0, port(*AR3(T0)) ; |2025| 
	.dwpsn	file "src/csl_dma.c",line 2027,column 18,is_stmt
        B $C$L184 ; |2027| 
                                        ; branch occurs ; |2027| 
$C$L165:    
	.dwpsn	file "src/csl_dma.c",line 2030,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #64, T0 ; |2030| 
        MOV *AR3, AR3 ; |2030| 
        MOV #0, port(*AR3(T0)) ; |2030| 
	.dwpsn	file "src/csl_dma.c",line 2031,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #65, T0 ; |2031| 
        MOV *AR3, AR3 ; |2031| 
        MOV #0, port(*AR3(T0)) ; |2031| 
	.dwpsn	file "src/csl_dma.c",line 2032,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #66, T0 ; |2032| 
        MOV *AR3, AR3 ; |2032| 
        MOV #0, port(*AR3(T0)) ; |2032| 
	.dwpsn	file "src/csl_dma.c",line 2033,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #67, T0 ; |2033| 
        MOV *AR3, AR3 ; |2033| 
        MOV #0, port(*AR3(T0)) ; |2033| 
	.dwpsn	file "src/csl_dma.c",line 2039,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #68, T0 ; |2039| 
        MOV *AR3, AR3 ; |2039| 
        MOV #0, port(*AR3(T0)) ; |2039| 
	.dwpsn	file "src/csl_dma.c",line 2040,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2040| 
        MOV *AR3, AR3 ; |2040| 
        MOV #0, port(*AR3(T0)) ; |2040| 
	.dwpsn	file "src/csl_dma.c",line 2042,column 19,is_stmt
        B $C$L184 ; |2042| 
                                        ; branch occurs ; |2042| 
$C$L166:    
	.dwpsn	file "src/csl_dma.c",line 2045,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #96, T0 ; |2045| 
        MOV *AR3, AR3 ; |2045| 
        MOV #0, port(*AR3(T0)) ; |2045| 
	.dwpsn	file "src/csl_dma.c",line 2046,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #97, T0 ; |2046| 
        MOV *AR3, AR3 ; |2046| 
        MOV #0, port(*AR3(T0)) ; |2046| 
	.dwpsn	file "src/csl_dma.c",line 2047,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #98, T0 ; |2047| 
        MOV *AR3, AR3 ; |2047| 
        MOV #0, port(*AR3(T0)) ; |2047| 
	.dwpsn	file "src/csl_dma.c",line 2048,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #99, T0 ; |2048| 
        MOV *AR3, AR3 ; |2048| 
        MOV #0, port(*AR3(T0)) ; |2048| 
	.dwpsn	file "src/csl_dma.c",line 2054,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #100, T0 ; |2054| 
        MOV *AR3, AR3 ; |2054| 
        MOV #0, port(*AR3(T0)) ; |2054| 
	.dwpsn	file "src/csl_dma.c",line 2055,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |2055| 
        MOV *AR3, AR3 ; |2055| 
        MOV #0, port(*AR3(T0)) ; |2055| 
	.dwpsn	file "src/csl_dma.c",line 2057,column 18,is_stmt
        B $C$L184 ; |2057| 
                                        ; branch occurs ; |2057| 
$C$L167:    
	.dwpsn	file "src/csl_dma.c",line 1997,column 9,is_stmt
        BCC $C$L163,AR1 == #0 ; |1997| 
                                        ; branchcc occurs ; |1997| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |1997| 
        BCC $C$L164,TC1 ; |1997| 
                                        ; branchcc occurs ; |1997| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |1997| 
        BCC $C$L165,TC1 ; |1997| 
                                        ; branchcc occurs ; |1997| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1997| 
        BCC $C$L166,TC1 ; |1997| 
                                        ; branchcc occurs ; |1997| 
        B $C$L184 ; |1997| 
                                        ; branch occurs ; |1997| 
$C$L168:    
	.dwpsn	file "src/csl_dma.c",line 2064,column 13,is_stmt
        AND #0xfff0, *port(#7194) ; |2064| 
	.dwpsn	file "src/csl_dma.c",line 2067,column 13,is_stmt
        AND #0xfffe, *port(#7217) ; |2067| 
	.dwpsn	file "src/csl_dma.c",line 2072,column 4,is_stmt
        MOV #1, *port(#7216) ; |2072| 
	.dwpsn	file "src/csl_dma.c",line 2073,column 18,is_stmt
        B $C$L185 ; |2073| 
                                        ; branch occurs ; |2073| 
$C$L169:    
	.dwpsn	file "src/csl_dma.c",line 2076,column 13,is_stmt
        AND #0xf0ff, *port(#7194) ; |2076| 
	.dwpsn	file "src/csl_dma.c",line 2079,column 13,is_stmt
        AND #0xfffd, *port(#7217) ; |2079| 
	.dwpsn	file "src/csl_dma.c",line 2084,column 4,is_stmt
        MOV #2, *port(#7216) ; |2084| 
	.dwpsn	file "src/csl_dma.c",line 2085,column 18,is_stmt
        B $C$L185 ; |2085| 
                                        ; branch occurs ; |2085| 
$C$L170:    
	.dwpsn	file "src/csl_dma.c",line 2087,column 13,is_stmt
        AND #0xfff0, *port(#7195) ; |2087| 
	.dwpsn	file "src/csl_dma.c",line 2090,column 13,is_stmt
        AND #0xfffb, *port(#7217) ; |2090| 
	.dwpsn	file "src/csl_dma.c",line 2095,column 4,is_stmt
        MOV #4, *port(#7216) ; |2095| 
	.dwpsn	file "src/csl_dma.c",line 2096,column 18,is_stmt
        B $C$L185 ; |2096| 
                                        ; branch occurs ; |2096| 
$C$L171:    
	.dwpsn	file "src/csl_dma.c",line 2099,column 13,is_stmt
        AND #0xf0ff, *port(#7195) ; |2099| 
	.dwpsn	file "src/csl_dma.c",line 2102,column 13,is_stmt
        AND #0xfff7, *port(#7217) ; |2102| 
	.dwpsn	file "src/csl_dma.c",line 2107,column 4,is_stmt
        MOV #8, *port(#7216) ; |2107| 
	.dwpsn	file "src/csl_dma.c",line 2108,column 18,is_stmt
        B $C$L185 ; |2108| 
                                        ; branch occurs ; |2108| 
$C$L172:    
	.dwpsn	file "src/csl_dma.c",line 2111,column 13,is_stmt
        AND #0xfff0, *port(#7196) ; |2111| 
	.dwpsn	file "src/csl_dma.c",line 2114,column 13,is_stmt
        AND #0xffef, *port(#7217) ; |2114| 
	.dwpsn	file "src/csl_dma.c",line 2119,column 4,is_stmt
        MOV #16, *port(#7216) ; |2119| 
	.dwpsn	file "src/csl_dma.c",line 2120,column 18,is_stmt
        B $C$L185 ; |2120| 
                                        ; branch occurs ; |2120| 
$C$L173:    
	.dwpsn	file "src/csl_dma.c",line 2123,column 13,is_stmt
        AND #0xf0ff, *port(#7196) ; |2123| 
	.dwpsn	file "src/csl_dma.c",line 2126,column 13,is_stmt
        AND #0xffdf, *port(#7217) ; |2126| 
	.dwpsn	file "src/csl_dma.c",line 2131,column 4,is_stmt
        MOV #32, *port(#7216) ; |2131| 
	.dwpsn	file "src/csl_dma.c",line 2132,column 18,is_stmt
        B $C$L185 ; |2132| 
                                        ; branch occurs ; |2132| 
$C$L174:    
	.dwpsn	file "src/csl_dma.c",line 2135,column 13,is_stmt
        AND #0xfff0, *port(#7197) ; |2135| 
	.dwpsn	file "src/csl_dma.c",line 2138,column 13,is_stmt
        AND #0xffbf, *port(#7217) ; |2138| 
	.dwpsn	file "src/csl_dma.c",line 2143,column 4,is_stmt
        MOV #64, *port(#7216) ; |2143| 
	.dwpsn	file "src/csl_dma.c",line 2144,column 18,is_stmt
        B $C$L185 ; |2144| 
                                        ; branch occurs ; |2144| 
$C$L175:    
	.dwpsn	file "src/csl_dma.c",line 2147,column 13,is_stmt
        AND #0xf0ff, *port(#7197) ; |2147| 
	.dwpsn	file "src/csl_dma.c",line 2150,column 13,is_stmt
        AND #0xff7f, *port(#7217) ; |2150| 
	.dwpsn	file "src/csl_dma.c",line 2155,column 4,is_stmt
        MOV #128, *port(#7216) ; |2155| 
	.dwpsn	file "src/csl_dma.c",line 2156,column 18,is_stmt
        B $C$L185 ; |2156| 
                                        ; branch occurs ; |2156| 
$C$L176:    
	.dwpsn	file "src/csl_dma.c",line 2159,column 13,is_stmt
        AND #0xfff0, *port(#7222) ; |2159| 
	.dwpsn	file "src/csl_dma.c",line 2162,column 13,is_stmt
        AND #0xfeff, *port(#7217) ; |2162| 
	.dwpsn	file "src/csl_dma.c",line 2167,column 4,is_stmt
        MOV #256, *port(#7216) ; |2167| 
	.dwpsn	file "src/csl_dma.c",line 2168,column 18,is_stmt
        B $C$L185 ; |2168| 
                                        ; branch occurs ; |2168| 
$C$L177:    
	.dwpsn	file "src/csl_dma.c",line 2171,column 13,is_stmt
        AND #0xf0ff, *port(#7222) ; |2171| 
	.dwpsn	file "src/csl_dma.c",line 2174,column 13,is_stmt
        AND #0xfdff, *port(#7217) ; |2174| 
	.dwpsn	file "src/csl_dma.c",line 2179,column 4,is_stmt
        MOV #512, *port(#7216) ; |2179| 
	.dwpsn	file "src/csl_dma.c",line 2180,column 18,is_stmt
        B $C$L185 ; |2180| 
                                        ; branch occurs ; |2180| 
$C$L178:    
	.dwpsn	file "src/csl_dma.c",line 2183,column 13,is_stmt
        AND #0xfff0, *port(#7223) ; |2183| 
	.dwpsn	file "src/csl_dma.c",line 2186,column 13,is_stmt
        AND #0xfbff, *port(#7217) ; |2186| 
	.dwpsn	file "src/csl_dma.c",line 2191,column 4,is_stmt
        MOV #1024, *port(#7216) ; |2191| 
	.dwpsn	file "src/csl_dma.c",line 2192,column 18,is_stmt
        B $C$L185 ; |2192| 
                                        ; branch occurs ; |2192| 
$C$L179:    
	.dwpsn	file "src/csl_dma.c",line 2195,column 13,is_stmt
        AND #0xf0ff, *port(#7223) ; |2195| 
	.dwpsn	file "src/csl_dma.c",line 2198,column 13,is_stmt
        AND #0x7fff, *port(#7217) ; |2198| 
	.dwpsn	file "src/csl_dma.c",line 2203,column 4,is_stmt
        MOV #2048, *port(#7216) ; |2203| 
	.dwpsn	file "src/csl_dma.c",line 2204,column 18,is_stmt
        B $C$L185 ; |2204| 
                                        ; branch occurs ; |2204| 
$C$L180:    
	.dwpsn	file "src/csl_dma.c",line 2207,column 13,is_stmt
        AND #0xfff0, *port(#7224) ; |2207| 
	.dwpsn	file "src/csl_dma.c",line 2210,column 13,is_stmt
        AND #0xefff, *port(#7217) ; |2210| 
	.dwpsn	file "src/csl_dma.c",line 2215,column 4,is_stmt
        MOV #4096, *port(#7216) ; |2215| 
	.dwpsn	file "src/csl_dma.c",line 2216,column 18,is_stmt
        B $C$L185 ; |2216| 
                                        ; branch occurs ; |2216| 
$C$L181:    
	.dwpsn	file "src/csl_dma.c",line 2219,column 13,is_stmt
        AND #0xf0ff, *port(#7224) ; |2219| 
	.dwpsn	file "src/csl_dma.c",line 2222,column 13,is_stmt
        AND #0xdfff, *port(#7217) ; |2222| 
	.dwpsn	file "src/csl_dma.c",line 2227,column 4,is_stmt
        MOV #8192, *port(#7216) ; |2227| 
	.dwpsn	file "src/csl_dma.c",line 2228,column 18,is_stmt
        B $C$L185 ; |2228| 
                                        ; branch occurs ; |2228| 
$C$L182:    
	.dwpsn	file "src/csl_dma.c",line 2231,column 13,is_stmt
        AND #0xfff0, *port(#7225) ; |2231| 
	.dwpsn	file "src/csl_dma.c",line 2234,column 13,is_stmt
        AND #0xbfff, *port(#7217) ; |2234| 
	.dwpsn	file "src/csl_dma.c",line 2239,column 4,is_stmt
        MOV #16384, *port(#7216) ; |2239| 
	.dwpsn	file "src/csl_dma.c",line 2240,column 18,is_stmt
        B $C$L185 ; |2240| 
                                        ; branch occurs ; |2240| 
$C$L183:    
	.dwpsn	file "src/csl_dma.c",line 2243,column 13,is_stmt
        AND #0xf0ff, *port(#7225) ; |2243| 
	.dwpsn	file "src/csl_dma.c",line 2246,column 13,is_stmt
        AND #0x7fff, *port(#7217) ; |2246| 
	.dwpsn	file "src/csl_dma.c",line 2251,column 4,is_stmt
        MOV #32768, *port(#7216) ; |2251| 
	.dwpsn	file "src/csl_dma.c",line 2252,column 18,is_stmt
        B $C$L185 ; |2252| 
                                        ; branch occurs ; |2252| 
$C$L184:    
	.dwpsn	file "src/csl_dma.c",line 2061,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#1)), AC0 ; |2061| 

        MOV AC0, AR1 ; |2061| 
||      MOV #15, AR2

        CMPU AR1 <= AR2, TC1 ; |2061| 
        BCC $C$L185,!TC1 ; |2061| 
                                        ; branchcc occurs ; |2061| 
        SFTS AC0, #1, AC0 ; |2061| 
        MOV mmap(AC0L), AC1 ; |2061| 
        MOV #($C$SW5 >> 16) << #16, AC0 ; |2061| 
        OR #($C$SW5 & 0xffff), AC0, AC0 ; |2061| 
        ADD AC1, AC0 ; |2061| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |2061| 
        B AC0     ; |2061| 
                                        ; branch occurs ; |2061| 
	.sect	".switch:_DMA_reset"
	.clink
$C$SW5:	.long	$C$L168	; 0
	.long	$C$L169	; 1
	.long	$C$L170	; 2
	.long	$C$L171	; 3
	.long	$C$L172	; 4
	.long	$C$L173	; 5
	.long	$C$L174	; 6
	.long	$C$L175	; 7
	.long	$C$L176	; 8
	.long	$C$L177	; 9
	.long	$C$L178	; 10
	.long	$C$L179	; 11
	.long	$C$L180	; 12
	.long	$C$L181	; 13
	.long	$C$L182	; 14
	.long	$C$L183	; 15
	.sect	".text"
$C$L185:    
	.dwpsn	file "src/csl_dma.c",line 2254,column 9,is_stmt
        MOV #0, T0
$C$L186:    
	.dwpsn	file "src/csl_dma.c",line 2256,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$67	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$67, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L162:1:1714639432")
	.dwattr $C$DW$67, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x7c9)
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x7cc)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_DMA_reset$5$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_DMA_reset$5$E)
	.dwendtag $C$DW$67

	.dwattr $C$DW$62, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x8d0)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.global	_DMA_swapWords

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_swapWords")
	.dwattr $C$DW$69, DW_AT_low_pc(_DMA_swapWords)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_DMA_swapWords")
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x8f6)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_dma.c",line 2296,column 1,is_stmt,address _DMA_swapWords

	.dwfde $C$DW$CIE, _DMA_swapWords
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataBuffer")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_dataBuffer")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataLength")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]
;*******************************************************************************
;* FUNCTION NAME: DMA_swapWords                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_swapWords:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("dataBuffer")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_dataBuffer")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("dataLength")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_dataLength")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("tempData")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_tempData")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV AC0, dbl(*SP(#2)) ; |2296| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 2301,column 2,is_stmt
        MOV #0, *SP(#4) ; |2301| 
	.dwpsn	file "src/csl_dma.c",line 2304,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L188,AC0 == #0 ; |2304| 
                                        ; branchcc occurs ; |2304| 
        MOV dbl(*SP(#2)), AC0 ; |2304| 
        BCC $C$L188,AC0 == #0 ; |2304| 
                                        ; branchcc occurs ; |2304| 
	.dwpsn	file "src/csl_dma.c",line 2307,column 8,is_stmt
        MOV #0, AC0 ; |2307| 
        MOV AC0, dbl(*SP(#6)) ; |2307| 
	.dwpsn	file "src/csl_dma.c",line 2307,column 20,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2307| 
        MOV dbl(*SP(#2)), AC0 ; |2307| 
        CMPU AC1 >= AC0, TC1 ; |2307| 
        BCC $C$L189,TC1 ; |2307| 
                                        ; branchcc occurs ; |2307| 
$C$L187:    
$C$DW$L$_DMA_swapWords$4$B:
	.dwpsn	file "src/csl_dma.c",line 2309,column 4,is_stmt
        MOV *SP(#7), T0 ; |2309| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |2309| 
        MOV AR1, *SP(#8) ; |2309| 
	.dwpsn	file "src/csl_dma.c",line 2310,column 4,is_stmt
        MOV *SP(#7), AR1 ; |2310| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR2
        MOV dbl(*SP(#6)), AC0 ; |2310| 
        ADD #1, AC0 ; |2310| 
        MOV AC0, T0 ; |2310| 
        AADD AR1, AR3 ; |2310| 
        MOV *AR2(T0), *AR3 ; |2310| 
	.dwpsn	file "src/csl_dma.c",line 2311,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#6)), AC0 ; |2311| 
        ADD #1, AC0 ; |2311| 
        MOV AC0, T0 ; |2311| 
        MOV *SP(#8), AR1 ; |2311| 
        MOV AR1, *AR3(T0) ; |2311| 
	.dwpsn	file "src/csl_dma.c",line 2307,column 41,is_stmt
        MOV dbl(*SP(#6)), AC0 ; |2307| 
        ADD #2, AC0 ; |2307| 
        MOV AC0, dbl(*SP(#6)) ; |2307| 
	.dwpsn	file "src/csl_dma.c",line 2307,column 20,is_stmt
        MOV dbl(*SP(#6)), AC1 ; |2307| 
        MOV dbl(*SP(#2)), AC0 ; |2307| 
        CMPU AC1 < AC0, TC1 ; |2307| 
        BCC $C$L187,TC1 ; |2307| 
                                        ; branchcc occurs ; |2307| 
$C$DW$L$_DMA_swapWords$4$E:
	.dwpsn	file "src/csl_dma.c",line 2313,column 2,is_stmt
        B $C$L189 ; |2313| 
                                        ; branch occurs ; |2313| 
$C$L188:    
	.dwpsn	file "src/csl_dma.c",line 2316,column 3,is_stmt
        MOV #-6, *SP(#4) ; |2316| 
$C$L189:    
	.dwpsn	file "src/csl_dma.c",line 2319,column 2,is_stmt
        MOV *SP(#4), T0 ; |2319| 
	.dwpsn	file "src/csl_dma.c",line 2320,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$78	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$78, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L187:1:1714639432")
	.dwattr $C$DW$78, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x903)
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x908)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_DMA_swapWords$4$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_DMA_swapWords$4$E)
	.dwendtag $C$DW$78

	.dwattr $C$DW$69, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x910)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"
	.global	_DMA_getLastTransferType

$C$DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("DMA_getLastTransferType")
	.dwattr $C$DW$80, DW_AT_low_pc(_DMA_getLastTransferType)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_DMA_getLastTransferType")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$80, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x93f)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_dma.c",line 2369,column 1,is_stmt,address _DMA_getLastTransferType

	.dwfde $C$DW$CIE, _DMA_getLastTransferType
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hDMA")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg17]
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: DMA_getLastTransferType                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_DMA_getLastTransferType:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("hDMA")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_hDMA")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("txferStatus")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_txferStatus")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("chanNum")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 5]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_dma.c",line 2373,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3 ; |2373| 
	.dwpsn	file "src/csl_dma.c",line 2375,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L190,AC0 != #0 ; |2375| 
                                        ; branchcc occurs ; |2375| 
	.dwpsn	file "src/csl_dma.c",line 2377,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #-5, *AR3 ; |2377| 
	.dwpsn	file "src/csl_dma.c",line 2378,column 5,is_stmt
        B $C$L197 ; |2378| 
                                        ; branch occurs ; |2378| 
$C$L190:    
	.dwpsn	file "src/csl_dma.c",line 2381,column 9,is_stmt
        MOV *AR3(short(#1)), AR1 ; |2381| 
        MOV AR1, *SP(#5) ; |2381| 
	.dwpsn	file "src/csl_dma.c",line 2383,column 15,is_stmt
        MOV #4, AR2
        CMPU AR1 < AR2, TC1 ; |2383| 
        BCC $C$L196,TC1 ; |2383| 
                                        ; branchcc occurs ; |2383| 
$C$L191:    
$C$DW$L$_DMA_getLastTransferType$4$B:
	.dwpsn	file "src/csl_dma.c",line 2385,column 13,is_stmt
        SUB #4, *SP(#5) ; |2385| 
	.dwpsn	file "src/csl_dma.c",line 2383,column 15,is_stmt
        MOV *SP(#5), AR1 ; |2383| 
        CMPU AR1 >= AR2, TC1 ; |2383| 
        BCC $C$L191,TC1 ; |2383| 
                                        ; branchcc occurs ; |2383| 
$C$DW$L$_DMA_getLastTransferType$4$E:
	.dwpsn	file "src/csl_dma.c",line 2388,column 3,is_stmt
        B $C$L196 ; |2388| 
                                        ; branch occurs ; |2388| 
$C$L192:    
	.dwpsn	file "src/csl_dma.c",line 2411,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR3 ; |2411| 
        MOV port(*AR3(short(#5))), AR1 ; |2411| 
        AND #0x0002, AR1, AR1 ; |2411| 
        SFTL AR1, #-1 ; |2411| 
        MOV AR1, *SP(#4) ; |2411| 
	.dwpsn	file "src/csl_dma.c",line 2413,column 17,is_stmt
        B $C$L197 ; |2413| 
                                        ; branch occurs ; |2413| 
$C$L193:    
	.dwpsn	file "src/csl_dma.c",line 2415,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #37, T0 ; |2415| 
        MOV *AR3, AR3 ; |2415| 
        MOV port(*AR3(T0)), AR1 ; |2415| 
        AND #0x0002, AR1, AR1 ; |2415| 
        SFTL AR1, #-1 ; |2415| 
        MOV AR1, *SP(#4) ; |2415| 
	.dwpsn	file "src/csl_dma.c",line 2417,column 17,is_stmt
        B $C$L197 ; |2417| 
                                        ; branch occurs ; |2417| 
$C$L194:    
	.dwpsn	file "src/csl_dma.c",line 2420,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #69, T0 ; |2420| 
        MOV *AR3, AR3 ; |2420| 
        MOV port(*AR3(T0)), AR1 ; |2420| 
        AND #0x0002, AR1, AR1 ; |2420| 
        SFTL AR1, #-1 ; |2420| 
        MOV AR1, *SP(#4) ; |2420| 
	.dwpsn	file "src/csl_dma.c",line 2422,column 17,is_stmt
        B $C$L197 ; |2422| 
                                        ; branch occurs ; |2422| 
$C$L195:    
	.dwpsn	file "src/csl_dma.c",line 2425,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #101, T0 ; |2425| 
        MOV *AR3, AR3 ; |2425| 
        MOV port(*AR3(T0)), AR1 ; |2425| 
        AND #0x0002, AR1, AR1 ; |2425| 
        SFTL AR1, #-1 ; |2425| 
        MOV AR1, *SP(#4) ; |2425| 
	.dwpsn	file "src/csl_dma.c",line 2427,column 17,is_stmt
        B $C$L197 ; |2427| 
                                        ; branch occurs ; |2427| 
$C$L196:    
	.dwpsn	file "src/csl_dma.c",line 2388,column 3,is_stmt
        BCC $C$L192,AR1 == #0 ; |2388| 
                                        ; branchcc occurs ; |2388| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |2388| 
        BCC $C$L193,TC1 ; |2388| 
                                        ; branchcc occurs ; |2388| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |2388| 
        BCC $C$L194,TC1 ; |2388| 
                                        ; branchcc occurs ; |2388| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |2388| 
        BCC $C$L195,TC1 ; |2388| 
                                        ; branchcc occurs ; |2388| 
$C$L197:    
	.dwpsn	file "src/csl_dma.c",line 2432,column 2,is_stmt
        MOV *SP(#4), T0 ; |2432| 
	.dwpsn	file "src/csl_dma.c",line 2433,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$88	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$88, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_dma.asm:$C$L191:1:1714639432")
	.dwattr $C$DW$88, DW_AT_TI_begin_file("src/csl_dma.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x94f)
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x952)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_DMA_getLastTransferType$4$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_DMA_getLastTransferType$4$E)
	.dwendtag $C$DW$88

	.dwattr $C$DW$80, DW_AT_TI_end_file("src/csl_dma.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x981)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$90	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN0"), DW_AT_const_value(0x00)
$C$DW$91	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN1"), DW_AT_const_value(0x01)
$C$DW$92	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN2"), DW_AT_const_value(0x02)
$C$DW$93	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN3"), DW_AT_const_value(0x03)
$C$DW$94	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN4"), DW_AT_const_value(0x04)
$C$DW$95	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN5"), DW_AT_const_value(0x05)
$C$DW$96	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN6"), DW_AT_const_value(0x06)
$C$DW$97	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN7"), DW_AT_const_value(0x07)
$C$DW$98	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN8"), DW_AT_const_value(0x08)
$C$DW$99	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN9"), DW_AT_const_value(0x09)
$C$DW$100	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN10"), DW_AT_const_value(0x0a)
$C$DW$101	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN11"), DW_AT_const_value(0x0b)
$C$DW$102	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN12"), DW_AT_const_value(0x0c)
$C$DW$103	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN13"), DW_AT_const_value(0x0d)
$C$DW$104	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN14"), DW_AT_const_value(0x0e)
$C$DW$105	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN15"), DW_AT_const_value(0x0f)
$C$DW$106	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_CHAN_INV"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$27

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanNum")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$107	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE0"), DW_AT_const_value(0x00)
$C$DW$108	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE1"), DW_AT_const_value(0x01)
$C$DW$109	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE2"), DW_AT_const_value(0x02)
$C$DW$110	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINE3"), DW_AT_const_value(0x03)
$C$DW$111	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_ENGINEINV"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEngineId")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$112	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_READ"), DW_AT_const_value(0x00)
$C$DW$113	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_WRITE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$32

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAChanDir")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$114	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_SOFTWARE_TRIGGER"), DW_AT_const_value(0x00)
$C$DW$115	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVENT_TRIGGER"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$34

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATriggerType")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$116	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_IO_MEMORY"), DW_AT_const_value(0x00)
$C$DW$117	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TRANSFER_MEMORY"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATransferType")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$118	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_DISABLE"), DW_AT_const_value(0x00)
$C$DW$119	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_INTERRUPT_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAInterruptState")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$120	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_DISABLE"), DW_AT_const_value(0x00)
$C$DW$121	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_PING_PONG_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAPingPongMode")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$122	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_DISABLE"), DW_AT_const_value(0x00)
$C$DW$123	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_AUTORELOAD_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAAutoReloadMode")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$124	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_1WORD"), DW_AT_const_value(0x00)
$C$DW$125	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_2WORD"), DW_AT_const_value(0x01)
$C$DW$126	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_4WORD"), DW_AT_const_value(0x02)
$C$DW$127	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_8WORD"), DW_AT_const_value(0x03)
$C$DW$128	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_TXBURST_16WORD"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMATxBurstLen")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$129	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_NONE"), DW_AT_const_value(0x00)
$C$DW$130	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_TX"), DW_AT_const_value(0x01)
$C$DW$131	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S0_RX"), DW_AT_const_value(0x02)
$C$DW$132	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_TX"), DW_AT_const_value(0x01)
$C$DW$133	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S1_RX"), DW_AT_const_value(0x02)
$C$DW$134	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_TX"), DW_AT_const_value(0x01)
$C$DW$135	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S2_RX"), DW_AT_const_value(0x02)
$C$DW$136	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_TX"), DW_AT_const_value(0x04)
$C$DW$137	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2S3_RX"), DW_AT_const_value(0x05)
$C$DW$138	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TX"), DW_AT_const_value(0x01)
$C$DW$139	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RX"), DW_AT_const_value(0x02)
$C$DW$140	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_TXA"), DW_AT_const_value(0x03)
$C$DW$141	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCBSP_RXA"), DW_AT_const_value(0x04)
$C$DW$142	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_TX"), DW_AT_const_value(0x05)
$C$DW$143	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD0_RX"), DW_AT_const_value(0x06)
$C$DW$144	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_TX"), DW_AT_const_value(0x07)
$C$DW$145	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MMC_SD1_RX"), DW_AT_const_value(0x08)
$C$DW$146	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER0"), DW_AT_const_value(0x0c)
$C$DW$147	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER1"), DW_AT_const_value(0x0d)
$C$DW$148	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_TIMER2"), DW_AT_const_value(0x0e)
$C$DW$149	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_TX"), DW_AT_const_value(0x05)
$C$DW$150	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_UART_RX"), DW_AT_const_value(0x06)
$C$DW$151	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_TX"), DW_AT_const_value(0x01)
$C$DW$152	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_I2C_RX"), DW_AT_const_value(0x02)
$C$DW$153	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_SAR_AD"), DW_AT_const_value(0x03)
$C$DW$154	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_RX"), DW_AT_const_value(0x03)
$C$DW$155	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH0_TX"), DW_AT_const_value(0x04)
$C$DW$156	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_RX"), DW_AT_const_value(0x09)
$C$DW$157	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH1_TX"), DW_AT_const_value(0x0a)
$C$DW$158	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_RX"), DW_AT_const_value(0x0b)
$C$DW$159	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_MCSPI_CH2_TX"), DW_AT_const_value(0x0f)
$C$DW$160	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_DMA_EVT_INVALID"), DW_AT_const_value(0x10)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMAEvtType")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x66)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$161, DW_AT_name("DMACH0SSAL")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_DMACH0SSAL")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$162, DW_AT_name("DMACH0SSAU")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_DMACH0SSAU")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$163, DW_AT_name("DMACH0DSAL")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_DMACH0DSAL")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_name("DMACH0DSAU")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_DMACH0DSAU")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$165, DW_AT_name("DMACH0TCR1")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_DMACH0TCR1")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$166, DW_AT_name("DMACH0TCR2")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_DMACH0TCR2")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_name("RSVD0")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$168, DW_AT_name("DMACH1SSAL")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_DMACH1SSAL")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_name("DMACH1SSAU")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_DMACH1SSAU")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_name("DMACH1DSAL")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_DMACH1DSAL")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_name("DMACH1DSAU")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_DMACH1DSAU")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$172, DW_AT_name("DMACH1TCR1")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_DMACH1TCR1")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_name("DMACH1TCR2")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_DMACH1TCR2")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$174, DW_AT_name("RSVD1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("DMACH2SSAL")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_DMACH2SSAL")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("DMACH2SSAU")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_DMACH2SSAU")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_name("DMACH2DSAL")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_DMACH2DSAL")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("DMACH2DSAU")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_DMACH2DSAU")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("DMACH2TCR1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_DMACH2TCR1")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$180, DW_AT_name("DMACH2TCR2")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_DMACH2TCR2")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$181, DW_AT_name("RSVD2")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_name("DMACH3SSAL")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_DMACH3SSAL")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_name("DMACH3SSAU")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_DMACH3SSAU")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x61]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$184, DW_AT_name("DMACH3DSAL")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_DMACH3DSAL")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$185, DW_AT_name("DMACH3DSAU")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_DMACH3DSAU")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x63]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$186, DW_AT_name("DMACH3TCR1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_DMACH3TCR1")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_name("DMACH3TCR2")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_DMACH3TCR2")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x65]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$188	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$23)
$C$DW$189	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$188)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$189)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DmaRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x09)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$190, DW_AT_name("dmaRegs")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_dmaRegs")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$191, DW_AT_name("chanNum")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_chanNum")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$192, DW_AT_name("dmaInstNum")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_dmaInstNum")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$193, DW_AT_name("isChanFree")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_isChanFree")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$194, DW_AT_name("chanDir")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$195, DW_AT_name("trigger")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$196, DW_AT_name("trfType")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$197, DW_AT_name("dmaInt")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$198, DW_AT_name("pingPongEnabled")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_pingPongEnabled")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_ChannelObj")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Handle")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x0e)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$199, DW_AT_name("pingPongMode")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_pingPongMode")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$200, DW_AT_name("autoMode")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_autoMode")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$201, DW_AT_name("burstLen")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_burstLen")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$202, DW_AT_name("trigger")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$203, DW_AT_name("dmaEvt")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_dmaEvt")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$204, DW_AT_name("dmaInt")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_dmaInt")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$205, DW_AT_name("chanDir")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_chanDir")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$206, DW_AT_name("trfType")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_trfType")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("dataLen")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_dataLen")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$208, DW_AT_name("srcAddr")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_srcAddr")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$209, DW_AT_name("destAddr")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_destAddr")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_DMA_Config")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x48)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$210, DW_AT_name("EBSR")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_name("RSVD0")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$212, DW_AT_name("PCGCR1")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$213, DW_AT_name("PCGCR2")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$214, DW_AT_name("PSRCR")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$215, DW_AT_name("PRCR")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$216, DW_AT_name("RSVD1")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_name("TIAFR")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_name("RSVD2")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_name("ODSCR")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$220, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$223, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$227, DW_AT_name("CCR1")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_name("CCR2")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("CGCR1")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$230, DW_AT_name("CGCR2")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("CGCR3")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$232, DW_AT_name("CGCR4")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_name("CCSSR")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$234, DW_AT_name("RSVD3")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$235, DW_AT_name("ECDR")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_name("RSVD4")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$238, DW_AT_name("RSVD5")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$243, DW_AT_name("RSVD6")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("DMAIFR")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_name("DMAIER")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_name("USBSCR")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$247, DW_AT_name("ESCR")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$248, DW_AT_name("RSVD7")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$250, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$251, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$252, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$254, DW_AT_name("RSVD8")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$255, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$259, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$260, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$261, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$54

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$263	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$64)
$C$DW$264	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$263)
$C$DW$T$65	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$264)
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
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x17)
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
$C$DW$265	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$265)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x1a)
$C$DW$266	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$266, DW_AT_upper_bound(0x19)
	.dwendtag $C$DW$T$21


$C$DW$T$51	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x0e)
$C$DW$267	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$267, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$268	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$268, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x05)
$C$DW$269	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$269, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$53

$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x17)
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

$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg0]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg1]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg2]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg3]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg4]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg5]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg6]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg7]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg8]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg9]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg10]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg11]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg12]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg13]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg14]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg15]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg16]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg17]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg18]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg19]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg20]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg21]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg22]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg23]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg24]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg25]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg26]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg27]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg28]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg29]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg30]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg31]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x20]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x21]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x22]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x23]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x24]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x25]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x26]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x27]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x28]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x29]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x30]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x31]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x32]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x33]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x34]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x35]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x36]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x37]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x38]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x39]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x40]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x41]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x42]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x43]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x44]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x45]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x46]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x47]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x48]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x49]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x50]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x51]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x52]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x53]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x54]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x55]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x56]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x57]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x58]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x59]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

