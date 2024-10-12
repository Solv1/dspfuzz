;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sat Oct  5 16:34:18 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_1_0 --silicon_core_1_1 --silicon_core_2_0 --silicon_core_2_1 --silicon_core_2_2 --symdebug:skeletal 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5549  ; code avoids SE CPU_28
	.noremark 5558  ; code avoids SE CPU_33
	.noremark 5570  ; code avoids SE CPU_40
	.noremark 5571  ; code avoids SE CPU_41
	.noremark 5573  ; code avoids SE CPU_43
	.noremark 5584  ; code avoids SE CPU_47
	.noremark 5599  ; code avoids SE CPU_55
	.noremark 5650  ; code avoids SE CPU_68
	.noremark 5503  ; code avoids SE CPU_84 MMR write
	.noremark 5505  ; code avoids SE CPU_84 MMR read
	.noremark 5673  ; code avoids SE CPU_89
	.noremark 5684  ; code avoids SE CPU_116 indirect write
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("./eraser.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$21)
$C$DW$3	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$1

;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/53680038tMo 
	.sect	".text"
	.global	_main

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$4, DW_AT_low_pc(_main)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_TI_begin_file("./eraser.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x05)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x04)
	.dwattr $C$DW$4, DW_AT_frame_base[DW_OP_bregx 0x24 4]
	.dwattr $C$DW$4, DW_AT_TI_skeletal
	.dwpsn	file "./eraser.c",line 5,column 20,is_stmt,address _main
;*******************************************************************************
;* FUNCTION NAME: main                                                         *
;*                                                                             *
;*   Function Uses Regs : T0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_main:
        AMOV #$C$FSL1, XAR3 ; |6| 
        AADD #-3, SP
        MOV XAR3, dbl(*SP(#0))
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_name("_printf")
	.dwattr $C$DW$5, DW_AT_TI_call
        CALL #_printf ; |6| 
                                        ; call occurs [#_printf] ; |6| 
        MOV #0, T0
        AADD #3, SP
	.dwpsn	file "./eraser.c",line 9,column 1,is_stmt
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$4, DW_AT_TI_end_file("./eraser.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x09)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$4

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"Fuzzer... hopefully this works.",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_printf

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
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
$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$19, DW_AT_name("signed char")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$7	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$7)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x17)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$8	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]
$C$DW$9	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg1]
$C$DW$10	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg2]
$C$DW$11	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg3]
$C$DW$12	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg4]
$C$DW$13	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg5]
$C$DW$14	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg6]
$C$DW$15	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg7]
$C$DW$16	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg8]
$C$DW$17	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg9]
$C$DW$18	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg10]
$C$DW$19	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg11]
$C$DW$20	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg12]
$C$DW$21	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg13]
$C$DW$22	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg14]
$C$DW$23	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg15]
$C$DW$24	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg16]
$C$DW$25	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg17]
$C$DW$26	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg18]
$C$DW$27	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg19]
$C$DW$28	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg20]
$C$DW$29	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg21]
$C$DW$30	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg22]
$C$DW$31	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg23]
$C$DW$32	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg24]
$C$DW$33	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg25]
$C$DW$34	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg26]
$C$DW$35	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg27]
$C$DW$36	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg28]
$C$DW$37	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg29]
$C$DW$38	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg30]
$C$DW$39	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg31]
$C$DW$40	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x20]
$C$DW$41	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x21]
$C$DW$42	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x22]
$C$DW$43	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x23]
$C$DW$44	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x24]
$C$DW$45	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x25]
$C$DW$46	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x26]
$C$DW$47	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x27]
$C$DW$48	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x28]
$C$DW$49	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x29]
$C$DW$50	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$51	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$52	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$53	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$54	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$55	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$56	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x30]
$C$DW$57	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x31]
$C$DW$58	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x32]
$C$DW$59	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x33]
$C$DW$60	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x34]
$C$DW$61	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x35]
$C$DW$62	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x36]
$C$DW$63	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x37]
$C$DW$64	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x38]
$C$DW$65	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x39]
$C$DW$66	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$67	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$68	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$69	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$70	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$71	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$72	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x40]
$C$DW$73	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x41]
$C$DW$74	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x42]
$C$DW$75	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x43]
$C$DW$76	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x44]
$C$DW$77	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x45]
$C$DW$78	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x46]
$C$DW$79	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x47]
$C$DW$80	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x48]
$C$DW$81	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x49]
$C$DW$82	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$83	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$84	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$85	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$86	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$87	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$88	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x50]
$C$DW$89	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x51]
$C$DW$90	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x52]
$C$DW$91	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x53]
$C$DW$92	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x54]
$C$DW$93	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x55]
$C$DW$94	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x56]
$C$DW$95	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x57]
$C$DW$96	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x58]
$C$DW$97	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x59]
$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

