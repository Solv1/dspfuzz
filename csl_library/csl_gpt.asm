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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_gpt.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")
;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17335VZoLNL 
	.sect	".text"
	.global	_GPT_open

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_open")
	.dwattr $C$DW$1, DW_AT_low_pc(_GPT_open)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_GPT_open")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$1, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_gpt.c",line 103,column 1,is_stmt,address _GPT_open

	.dwfde $C$DW$CIE, _GPT_open
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("instance")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_instance")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("gptObj")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_gptObj")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg17]
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPT_open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("instance")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_instance")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("gptObj")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_gptObj")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |103| 
	.dwpsn	file "src/csl_gpt.c",line 107,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3 ; |107| 
	.dwpsn	file "src/csl_gpt.c",line 108,column 2,is_stmt
        MOV #0, AC0 ; |108| 
        MOV AC0, dbl(*SP(#6))
	.dwpsn	file "src/csl_gpt.c",line 110,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |110| 

        CMPU AC1 != AC0, TC1 ; |110| 
        BCC $C$L1,TC1 ; |110| 
                                        ; branchcc occurs ; |110| 
	.dwpsn	file "src/csl_gpt.c",line 112,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-5, *AR3 ; |112| 
	.dwpsn	file "src/csl_gpt.c",line 113,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR0
        B $C$L10  ; |113| 
                                        ; branch occurs ; |113| 
$C$L1:    
	.dwpsn	file "src/csl_gpt.c",line 116,column 2,is_stmt
        MOV *SP(#0), AR1 ; |116| 
        BCC $C$L2,AR1 < #0 ; |116| 
                                        ; branchcc occurs ; |116| 
        MOV #3, AR2
        CMP AR1 < AR2, TC1 ; |116| 
        BCC $C$L3,TC1 ; |116| 
                                        ; branchcc occurs ; |116| 
$C$L2:    
	.dwpsn	file "src/csl_gpt.c",line 118,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |118| 
	.dwpsn	file "src/csl_gpt.c",line 119,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR0
        B $C$L10  ; |119| 
                                        ; branch occurs ; |119| 
$C$L3:    
	.dwpsn	file "src/csl_gpt.c",line 122,column 2,is_stmt
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_gpt.c",line 123,column 2,is_stmt
        MOV #7168, *SP(#8) ; |123| 
	.dwpsn	file "src/csl_gpt.c",line 124,column 2,is_stmt
        B $C$L8   ; |124| 
                                        ; branch occurs ; |124| 
$C$L4:    
	.dwpsn	file "src/csl_gpt.c",line 127,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3 ; |127| 
	.dwpsn	file "src/csl_gpt.c",line 128,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #6160, *AR3(short(#2)) ; |128| 
	.dwpsn	file "src/csl_gpt.c",line 129,column 4,is_stmt
        MOV *SP(#8), AR3 ; |129| 
        MOV port(*AR3(short(#2))), AR1 ; |129| 
        BCLR @#10, AR1 ; |129| 
        MOV AR1, port(*AR3(short(#2))) ; |129| 
	.dwpsn	file "src/csl_gpt.c",line 131,column 9,is_stmt
        B $C$L9   ; |131| 
                                        ; branch occurs ; |131| 
$C$L5:    
	.dwpsn	file "src/csl_gpt.c",line 133,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3 ; |133| 
	.dwpsn	file "src/csl_gpt.c",line 134,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #6224, *AR3(short(#2)) ; |134| 
	.dwpsn	file "src/csl_gpt.c",line 135,column 4,is_stmt
        MOV *SP(#8), AR3 ; |135| 
        MOV port(*AR3(short(#2))), AR1 ; |135| 
        BCLR @#12, AR1 ; |135| 
        MOV AR1, port(*AR3(short(#2))) ; |135| 
	.dwpsn	file "src/csl_gpt.c",line 137,column 9,is_stmt
        B $C$L9   ; |137| 
                                        ; branch occurs ; |137| 
$C$L6:    
	.dwpsn	file "src/csl_gpt.c",line 139,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #2, *AR3 ; |139| 
	.dwpsn	file "src/csl_gpt.c",line 140,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #6288, *AR3(short(#2)) ; |140| 
	.dwpsn	file "src/csl_gpt.c",line 141,column 4,is_stmt
        MOV *SP(#8), AR3 ; |141| 
        MOV port(*AR3(short(#2))), AR1 ; |141| 
        BCLR @#13, AR1 ; |141| 
        MOV AR1, port(*AR3(short(#2))) ; |141| 
	.dwpsn	file "src/csl_gpt.c",line 143,column 9,is_stmt
        B $C$L9   ; |143| 
                                        ; branch occurs ; |143| 
$C$L7:    
	.dwpsn	file "src/csl_gpt.c",line 145,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #-6, *AR3 ; |145| 
        B $C$L9   ; |145| 
                                        ; branch occurs ; |145| 
$C$L8:    
	.dwpsn	file "src/csl_gpt.c",line 124,column 2,is_stmt
        MOV *SP(#0), AR1 ; |124| 
        BCC $C$L4,AR1 == #0 ; |124| 
                                        ; branchcc occurs ; |124| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |124| 
        BCC $C$L5,TC1 ; |124| 
                                        ; branchcc occurs ; |124| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |124| 
        BCC $C$L6,TC1 ; |124| 
                                        ; branchcc occurs ; |124| 
        B $C$L7   ; |124| 
                                        ; branch occurs ; |124| 
$C$L9:    
	.dwpsn	file "src/csl_gpt.c",line 148,column 2,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$L10:    
	.dwpsn	file "src/csl_gpt.c",line 149,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$1, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.global	_GPT_reset

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_reset")
	.dwattr $C$DW$11, DW_AT_low_pc(_GPT_reset)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_GPT_reset")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xbb)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpt.c",line 188,column 1,is_stmt,address _GPT_reset

	.dwfde $C$DW$CIE, _GPT_reset
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPT_reset                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_reset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$13	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$14	.dwtag  DW_TAG_variable, DW_AT_name("regPtr")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_regPtr")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("iafrReg")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_iafrReg")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 192,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |192| 

        CMPU AC1 != AC0, TC1 ; |192| 
        BCC $C$L11,TC1 ; |192| 
                                        ; branchcc occurs ; |192| 
	.dwpsn	file "src/csl_gpt.c",line 194,column 3,is_stmt
        MOV #-5, T0
        B $C$L18  ; |194| 
                                        ; branch occurs ; |194| 
$C$L11:    
	.dwpsn	file "src/csl_gpt.c",line 197,column 2,is_stmt
        MOV *AR3(short(#2)), AR1 ; |197| 
        MOV AR1, *SP(#2) ; |197| 
	.dwpsn	file "src/csl_gpt.c",line 200,column 2,is_stmt
        MOV AR1, AR3
        MOV #0, port(*AR3) ; |200| 
	.dwpsn	file "src/csl_gpt.c",line 202,column 2,is_stmt
        MOV *SP(#2), AR3 ; |202| 
        MOV #0, port(*AR3(short(#4))) ; |202| 
	.dwpsn	file "src/csl_gpt.c",line 204,column 2,is_stmt
        MOV *SP(#2), AR3 ; |204| 
        MOV #0, port(*AR3(short(#5))) ; |204| 
	.dwpsn	file "src/csl_gpt.c",line 206,column 2,is_stmt
        MOV *SP(#2), AR3 ; |206| 
        MOV #0, port(*AR3(short(#2))) ; |206| 
	.dwpsn	file "src/csl_gpt.c",line 208,column 2,is_stmt
        MOV *SP(#2), AR3 ; |208| 
        MOV #0, port(*AR3(short(#3))) ; |208| 
	.dwpsn	file "src/csl_gpt.c",line 213,column 2,is_stmt
        MOV #7188, *SP(#3) ; |213| 
	.dwpsn	file "src/csl_gpt.c",line 214,column 2,is_stmt
        B $C$L16  ; |214| 
                                        ; branch occurs ; |214| 
$C$L12:    
	.dwpsn	file "src/csl_gpt.c",line 217,column 4,is_stmt
        MOV *SP(#3), AR3 ; |217| 
        MOV #1, port(*AR3) ; |217| 
	.dwpsn	file "src/csl_gpt.c",line 218,column 9,is_stmt
        B $C$L17  ; |218| 
                                        ; branch occurs ; |218| 
$C$L13:    
	.dwpsn	file "src/csl_gpt.c",line 220,column 4,is_stmt
        MOV *SP(#3), AR3 ; |220| 
        MOV #2, port(*AR3) ; |220| 
	.dwpsn	file "src/csl_gpt.c",line 221,column 9,is_stmt
        B $C$L17  ; |221| 
                                        ; branch occurs ; |221| 
$C$L14:    
	.dwpsn	file "src/csl_gpt.c",line 223,column 4,is_stmt
        MOV *SP(#3), AR3 ; |223| 
        MOV #4, port(*AR3) ; |223| 
	.dwpsn	file "src/csl_gpt.c",line 224,column 9,is_stmt
        B $C$L17  ; |224| 
                                        ; branch occurs ; |224| 
$C$L15:    
	.dwpsn	file "src/csl_gpt.c",line 227,column 4,is_stmt
        MOV #-6, T0
        B $C$L18  ; |227| 
                                        ; branch occurs ; |227| 
$C$L16:    
	.dwpsn	file "src/csl_gpt.c",line 214,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |214| 
        BCC $C$L12,AR1 == #0 ; |214| 
                                        ; branchcc occurs ; |214| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |214| 
        BCC $C$L13,TC1 ; |214| 
                                        ; branchcc occurs ; |214| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |214| 
        BCC $C$L14,TC1 ; |214| 
                                        ; branchcc occurs ; |214| 
        B $C$L15  ; |214| 
                                        ; branch occurs ; |214| 
$C$L17:    
	.dwpsn	file "src/csl_gpt.c",line 230,column 2,is_stmt
        MOV #0, T0
$C$L18:    
	.dwpsn	file "src/csl_gpt.c",line 231,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$11, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xe7)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.global	_GPT_close

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_close")
	.dwattr $C$DW$17, DW_AT_low_pc(_GPT_close)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_GPT_close")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$17, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x10d)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_gpt.c",line 270,column 1,is_stmt,address _GPT_close

	.dwfde $C$DW$CIE, _GPT_close
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPT_close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("sysRegs")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_sysRegs")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 273,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |273| 

        CMPU AC1 != AC0, TC1 ; |273| 
        BCC $C$L19,TC1 ; |273| 
                                        ; branchcc occurs ; |273| 
	.dwpsn	file "src/csl_gpt.c",line 275,column 3,is_stmt
        MOV #-5, T0
        B $C$L25  ; |275| 
                                        ; branch occurs ; |275| 
$C$L19:    
	.dwpsn	file "src/csl_gpt.c",line 277,column 2,is_stmt
        MOV #7168, *SP(#2) ; |277| 
	.dwpsn	file "src/csl_gpt.c",line 280,column 2,is_stmt
        B $C$L23  ; |280| 
                                        ; branch occurs ; |280| 
$C$L20:    
	.dwpsn	file "src/csl_gpt.c",line 283,column 4,is_stmt
        MOV *SP(#2), AR3 ; |283| 
        MOV port(*AR3(short(#2))), AR1 ; |283| 
        BCLR @#10, AR1 ; |283| 
        BSET @#10, AR1 ; |283| 
        MOV AR1, port(*AR3(short(#2))) ; |283| 
	.dwpsn	file "src/csl_gpt.c",line 285,column 9,is_stmt
        B $C$L24  ; |285| 
                                        ; branch occurs ; |285| 
$C$L21:    
	.dwpsn	file "src/csl_gpt.c",line 287,column 4,is_stmt
        MOV *SP(#2), AR3 ; |287| 
        MOV port(*AR3(short(#2))), AR1 ; |287| 
        BCLR @#12, AR1 ; |287| 
        BSET @#12, AR1 ; |287| 
        MOV AR1, port(*AR3(short(#2))) ; |287| 
	.dwpsn	file "src/csl_gpt.c",line 289,column 9,is_stmt
        B $C$L24  ; |289| 
                                        ; branch occurs ; |289| 
$C$L22:    
	.dwpsn	file "src/csl_gpt.c",line 291,column 4,is_stmt
        MOV *SP(#2), AR3 ; |291| 
        MOV port(*AR3(short(#2))), AR1 ; |291| 
        BCLR @#13, AR1 ; |291| 
        BSET @#13, AR1 ; |291| 
        MOV AR1, port(*AR3(short(#2))) ; |291| 
	.dwpsn	file "src/csl_gpt.c",line 293,column 9,is_stmt
        B $C$L24  ; |293| 
                                        ; branch occurs ; |293| 
$C$L23:    
	.dwpsn	file "src/csl_gpt.c",line 280,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3, AR1 ; |280| 
        BCC $C$L20,AR1 == #0 ; |280| 
                                        ; branchcc occurs ; |280| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |280| 
        BCC $C$L21,TC1 ; |280| 
                                        ; branchcc occurs ; |280| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |280| 
        BCC $C$L22,TC1 ; |280| 
                                        ; branchcc occurs ; |280| 
$C$L24:    
	.dwpsn	file "src/csl_gpt.c",line 297,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(short(#2)) ; |297| 
	.dwpsn	file "src/csl_gpt.c",line 298,column 2,is_stmt
        MOV #0, AC0 ; |298| 
        MOV AC0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 300,column 2,is_stmt
        MOV #0, T0
$C$L25:    
	.dwpsn	file "src/csl_gpt.c",line 301,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$17, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x12d)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.global	_GPT_start

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_start")
	.dwattr $C$DW$22, DW_AT_low_pc(_GPT_start)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_GPT_start")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x154)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_gpt.c",line 341,column 1,is_stmt,address _GPT_start

	.dwfde $C$DW$CIE, _GPT_start
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPT_start                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_start:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$24	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$25	.dwtag  DW_TAG_variable, DW_AT_name("regPtr")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_regPtr")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 344,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |344| 

        CMPU AC1 != AC0, TC1 ; |344| 
        BCC $C$L26,TC1 ; |344| 
                                        ; branchcc occurs ; |344| 
	.dwpsn	file "src/csl_gpt.c",line 346,column 3,is_stmt
        MOV #-5, T0
        B $C$L27  ; |346| 
                                        ; branch occurs ; |346| 
$C$L26:    
	.dwpsn	file "src/csl_gpt.c",line 349,column 2,is_stmt
        MOV *AR3(short(#2)), AR1 ; |349| 
        MOV AR1, *SP(#2) ; |349| 
	.dwpsn	file "src/csl_gpt.c",line 351,column 2,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |351| 
        BCLR @#0, AR1 ; |351| 
        BSET @#0, AR1 ; |351| 
        MOV AR1, port(*AR3) ; |351| 
	.dwpsn	file "src/csl_gpt.c",line 353,column 2,is_stmt
        MOV #0, T0
$C$L27:    
	.dwpsn	file "src/csl_gpt.c",line 354,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$22, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x162)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.global	_GPT_stop

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_stop")
	.dwattr $C$DW$27, DW_AT_low_pc(_GPT_stop)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_GPT_stop")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x189)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "src/csl_gpt.c",line 394,column 1,is_stmt,address _GPT_stop

	.dwfde $C$DW$CIE, _GPT_stop
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: GPT_stop                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_stop:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("regPtr")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_regPtr")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_bregx 0x24 2]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 397,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |397| 

        CMPU AC1 != AC0, TC1 ; |397| 
        BCC $C$L28,TC1 ; |397| 
                                        ; branchcc occurs ; |397| 
	.dwpsn	file "src/csl_gpt.c",line 399,column 3,is_stmt
        MOV #-5, T0
        B $C$L29  ; |399| 
                                        ; branch occurs ; |399| 
$C$L28:    
	.dwpsn	file "src/csl_gpt.c",line 402,column 2,is_stmt
        MOV *AR3(short(#2)), AR1 ; |402| 
        MOV AR1, *SP(#2) ; |402| 
	.dwpsn	file "src/csl_gpt.c",line 405,column 2,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |405| 
        BCLR @#0, AR1 ; |405| 
        MOV AR1, port(*AR3) ; |405| 
	.dwpsn	file "src/csl_gpt.c",line 409,column 2,is_stmt
        MOV #0, T0
$C$L29:    
	.dwpsn	file "src/csl_gpt.c",line 410,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$27, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x19a)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.global	_GPT_getCnt

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_getCnt")
	.dwattr $C$DW$32, DW_AT_low_pc(_GPT_getCnt)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_GPT_getCnt")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x1c2)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_gpt.c",line 451,column 1,is_stmt,address _GPT_getCnt

	.dwfde $C$DW$CIE, _GPT_getCnt
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg17]
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_name("timeCnt")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_timeCnt")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPT_getCnt                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_getCnt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("timeCnt")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_timeCnt")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("tim1")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_tim1")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("tim2")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_tim2")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("regPtr")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_regPtr")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 456,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |456| 

        CMPU AC1 != AC0, TC1 ; |456| 
        BCC $C$L30,TC1 ; |456| 
                                        ; branchcc occurs ; |456| 
	.dwpsn	file "src/csl_gpt.c",line 458,column 3,is_stmt
        MOV #-5, T0
        B $C$L31  ; |458| 
                                        ; branch occurs ; |458| 
$C$L30:    
	.dwpsn	file "src/csl_gpt.c",line 461,column 2,is_stmt
        MOV *AR3(short(#2)), AR1 ; |461| 
        MOV AR1, *SP(#6) ; |461| 
	.dwpsn	file "src/csl_gpt.c",line 463,column 2,is_stmt
        MOV AR1, AR3
        MOV port(*AR3(short(#4))), AR1 ; |463| 
        MOV AR1, *SP(#4) ; |463| 
	.dwpsn	file "src/csl_gpt.c",line 464,column 2,is_stmt
        MOV *SP(#6), AR3 ; |464| 
        MOV port(*AR3(short(#5))), AR1 ; |464| 
        MOV AR1, *SP(#5) ; |464| 
	.dwpsn	file "src/csl_gpt.c",line 466,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV AR1, HI(AC0) ; |466| 
        OR *SP(#4), AC0, AC0 ; |466| 
        MOV AC0, dbl(*AR3) ; |466| 
	.dwpsn	file "src/csl_gpt.c",line 468,column 2,is_stmt
        MOV #0, T0
$C$L31:    
	.dwpsn	file "src/csl_gpt.c",line 469,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$32, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x1d5)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.global	_GPT_config

$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("GPT_config")
	.dwattr $C$DW$41, DW_AT_low_pc(_GPT_config)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_GPT_config")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("src/csl_gpt.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x202)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_gpt.c",line 515,column 1,is_stmt,address _GPT_config

	.dwfde $C$DW$CIE, _GPT_config
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hGpt")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg17]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hwConfig")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_hwConfig")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: GPT_config                                                   *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_GPT_config:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("hGpt")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_hGpt")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("hwConfig")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_hwConfig")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("regPtr")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_regPtr")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_gpt.c",line 518,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |518| 

        CMPU AC1 != AC0, TC1 ; |518| 
        BCC $C$L32,TC1 ; |518| 
                                        ; branchcc occurs ; |518| 
	.dwpsn	file "src/csl_gpt.c",line 520,column 3,is_stmt
        MOV #-5, T0
        B $C$L34  ; |520| 
                                        ; branch occurs ; |520| 
$C$L32:    
	.dwpsn	file "src/csl_gpt.c",line 523,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        CMPU AC1 != AC0, TC1 ; |523| 
        BCC $C$L33,TC1 ; |523| 
                                        ; branchcc occurs ; |523| 
	.dwpsn	file "src/csl_gpt.c",line 525,column 3,is_stmt
        MOV #-6, T0
        B $C$L34  ; |525| 
                                        ; branch occurs ; |525| 
$C$L33:    
	.dwpsn	file "src/csl_gpt.c",line 528,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |528| 
        MOV AR1, *SP(#4) ; |528| 
	.dwpsn	file "src/csl_gpt.c",line 531,column 2,is_stmt
        MOV AR1, AR3
        MOV port(*AR3), AR1 ; |531| 
        BCLR @#15, AR1 ; |531| 
        MOV AR1, port(*AR3) ; |531| 
	.dwpsn	file "src/csl_gpt.c",line 533,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#1)) << #2, AC0 ; |533| 
        MOV *SP(#4), AR3 ; |533| 
        AND #0x003c, AC0, AR1 ; |533| 
        MOV port(*AR3), AR2 ; |533| 
        AND #0xffc3, AR2, AR2 ; |533| 
        OR AR2, AR1 ; |533| 
        MOV AR1, port(*AR3) ; |533| 
	.dwpsn	file "src/csl_gpt.c",line 535,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3, AR1 ; |535| 
        MOV *SP(#4), AR3 ; |535| 
        SFTL AR1, #1 ; |535| 
        AND #0x0002, AR1, AR1 ; |535| 
        MOV port(*AR3), AR2 ; |535| 
        BCLR @#1, AR2 ; |535| 
        OR AR2, AR1 ; |535| 
        MOV AR1, port(*AR3) ; |535| 
	.dwpsn	file "src/csl_gpt.c",line 537,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#2)) << #15, AC0 ; |537| 
        MOV *SP(#4), AR3 ; |537| 
        AND #0x8000, AC0, AR1 ; |537| 
        MOV port(*AR3), AR2 ; |537| 
        BCLR @#15, AR2 ; |537| 
        OR AR2, AR1 ; |537| 
        MOV AR1, port(*AR3) ; |537| 
	.dwpsn	file "src/csl_gpt.c",line 540,column 2,is_stmt
        MOV *SP(#4), AR3 ; |540| 
        MOV #0, port(*AR3(short(#4))) ; |540| 
	.dwpsn	file "src/csl_gpt.c",line 541,column 2,is_stmt
        MOV *SP(#4), AR3 ; |541| 
        MOV #0, port(*AR3(short(#5))) ; |541| 
	.dwpsn	file "src/csl_gpt.c",line 544,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#3)), AR1 ; |544| 
        MOV *SP(#4), AR3 ; |544| 
        MOV AR1, port(*AR3(short(#2))) ; |544| 
	.dwpsn	file "src/csl_gpt.c",line 545,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(short(#4)), AR1 ; |545| 
        MOV *SP(#4), AR3 ; |545| 
        MOV AR1, port(*AR3(short(#3))) ; |545| 
	.dwpsn	file "src/csl_gpt.c",line 547,column 2,is_stmt
        MOV #0, T0
$C$L34:    
	.dwpsn	file "src/csl_gpt.c",line 548,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$41, DW_AT_TI_end_file("src/csl_gpt.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x224)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41


;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$48	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_0"), DW_AT_const_value(0x00)
$C$DW$49	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_1"), DW_AT_const_value(0x01)
$C$DW$50	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_2"), DW_AT_const_value(0x02)
$C$DW$51	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_INVALID"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Instance")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$52	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_DISABLE"), DW_AT_const_value(0x00)
$C$DW$53	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_AUTO_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_AutoReLoad")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$54	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_0"), DW_AT_const_value(0x00)
$C$DW$55	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_1"), DW_AT_const_value(0x01)
$C$DW$56	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_2"), DW_AT_const_value(0x02)
$C$DW$57	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_3"), DW_AT_const_value(0x03)
$C$DW$58	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_4"), DW_AT_const_value(0x04)
$C$DW$59	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_5"), DW_AT_const_value(0x05)
$C$DW$60	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_6"), DW_AT_const_value(0x06)
$C$DW$61	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_7"), DW_AT_const_value(0x07)
$C$DW$62	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_8"), DW_AT_const_value(0x08)
$C$DW$63	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_9"), DW_AT_const_value(0x09)
$C$DW$64	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_10"), DW_AT_const_value(0x0a)
$C$DW$65	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_11"), DW_AT_const_value(0x0b)
$C$DW$66	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_12"), DW_AT_const_value(0x0c)
$C$DW$67	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_PRE_SC_DIV_RESERVE"), DW_AT_const_value(0x0d)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_PreScale")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$68	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_DISABLE"), DW_AT_const_value(0x00)
$C$DW$69	.dwtag  DW_TAG_enumerator, DW_AT_name("GPT_TIMER_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_CtrlTimer")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$70, DW_AT_name("TCR")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("RSVD0")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("TIMPRD1")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_TIMPRD1")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("TIMPRD2")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_TIMPRD2")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("TIMCNT1")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_TIMCNT1")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("TIMCNT2")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_TIMCNT2")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegs")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$76	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$24)
$C$DW$77	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$76)
$C$DW$T$25	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$77)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x10)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_TimRegsOvly")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x03)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$78, DW_AT_name("Instance")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_Instance")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("EventId")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_EventId")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$80, DW_AT_name("regs")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GptObj")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Handle")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x05)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$81, DW_AT_name("autoLoad")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_autoLoad")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$82, DW_AT_name("preScaleDiv")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_preScaleDiv")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$83, DW_AT_name("ctrlTim")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ctrlTim")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("prdLow")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_prdLow")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("prdHigh")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_prdHigh")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Config")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x17)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x48)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("EBSR")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_EBSR")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("RSVD0")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("PCGCR1")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_PCGCR1")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("PCGCR2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_PCGCR2")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("PSRCR")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_PSRCR")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("PRCR")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_PRCR")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$92, DW_AT_name("RSVD1")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_RSVD1")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("TIAFR")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_TIAFR")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("RSVD2")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_RSVD2")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_name("ODSCR")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_ODSCR")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$96, DW_AT_name("PDINHIBR1")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_PDINHIBR1")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$97, DW_AT_name("PDINHIBR2")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_PDINHIBR2")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_name("PDINHIBR3")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_PDINHIBR3")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("DMA0CESR1")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_DMA0CESR1")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("DMA0CESR2")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_DMA0CESR2")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("DMA1CESR1")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_DMA1CESR1")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_name("DMA1CESR2")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_DMA1CESR2")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_name("CCR1")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_CCR1")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$104, DW_AT_name("CCR2")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_CCR2")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_name("CGCR1")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_CGCR1")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_name("CGCR2")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_CGCR2")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_name("CGCR3")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_CGCR3")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_name("CGCR4")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_CGCR4")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_name("CCSSR")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_CCSSR")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_name("RSVD3")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_RSVD3")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("ECDR")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_ECDR")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("RSVD4")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_RSVD4")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_name("RAMSLPMDCNTLR1")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR1")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_name("RSVD5")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_RSVD5")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("RAMSLPMDCNTLR2")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR2")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("RAMSLPMDCNTLR3")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR3")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_name("RAMSLPMDCNTLR4")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR4")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_name("RAMSLPMDCNTLR5")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_RAMSLPMDCNTLR5")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$119, DW_AT_name("RSVD6")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_RSVD6")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("DMAIFR")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_DMAIFR")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("DMAIER")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_DMAIER")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("USBSCR")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_USBSCR")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("ESCR")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_ESCR")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$124, DW_AT_name("RSVD7")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_RSVD7")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("DMA2CESR1")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_DMA2CESR1")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("DMA2CESR2")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_DMA2CESR2")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_name("DMA3CESR1")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_DMA3CESR1")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_name("DMA3CESR2")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_DMA3CESR2")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_name("CLKSTOP")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_CLKSTOP")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$130, DW_AT_name("RSVD8")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_RSVD8")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("DIEIDR0")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_DIEIDR0")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("DIEIDR1")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_DIEIDR1")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("DIEIDR2")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_DIEIDR2")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_name("DIEIDR3")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_DIEIDR3")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("DIEIDR4")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_DIEIDR4")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_name("DIEIDR5")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_DIEIDR5")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x45]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_name("DIEIDR6")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_DIEIDR6")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_name("DIEIDR7")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_DIEIDR7")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x47]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_SysRegs")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$139	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$49)
$C$DW$140	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$139)
$C$DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$140)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x10)
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
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$141	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$141)

$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0e)
$C$DW$142	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$142, DW_AT_upper_bound(0x0d)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$143	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$143, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x05)
$C$DW$144	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$144, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$38

$C$DW$145	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
$C$DW$146	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$145)
$C$DW$T$57	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$146)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x10)
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
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)
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

$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg0]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg1]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg2]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg3]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg4]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg5]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg6]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg7]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg8]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg9]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg10]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg11]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg12]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg13]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg14]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg15]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg16]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg17]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg18]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg19]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg20]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg21]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg22]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg23]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg24]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg25]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg26]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg27]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg28]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg29]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg30]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg31]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x20]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x21]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x22]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x23]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x24]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x25]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x26]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x27]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x28]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x29]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x30]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x31]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x32]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x33]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x34]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x35]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x36]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x37]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x38]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x39]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x40]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x41]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x42]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x43]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x44]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x45]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x46]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x47]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x48]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x49]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x50]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x51]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x52]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x53]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x54]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x55]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x56]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x57]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x58]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x59]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

