;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Thu May  2 04:44:07 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("src/csl_msc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/dspfuzz/on_board/library")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$154)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("strlen")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_strlen")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$218)
	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_init")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_USB_init")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external

$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_open")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_USB_open")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_config")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_USB_config")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$21)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$142)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_requestEndpt")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_USB_requestEndpt")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$21)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$110)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$13


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_configEndpt")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_USB_configEndpt")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$27)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$147)
	.dwendtag $C$DW$17


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_resetDev")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_USB_resetDev")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getEvents")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_USB_getEvents")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$27)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getSetupPacket")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_USB_getSetupPacket")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$21)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$46)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$25


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_postTransaction")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_USB_postTransaction")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$27)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$30)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$3)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$116)
	.dwendtag $C$DW$29


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_isTransactionDone")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_USB_isTransactionDone")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$27)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$34


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_stallEndpt")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_USB_stallEndpt")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortTransaction")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_USB_abortTransaction")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_abortAllTransaction")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_USB_abortAllTransaction")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$41


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_connectDev")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_USB_connectDev")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$43


$C$DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_disconnectDev")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_USB_disconnectDev")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$45


$C$DW$47	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setParams")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_USB_setParams")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$21)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$151)
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$47


$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getMaxPower")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_USB_getMaxPower")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$51


$C$DW$53	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_setFullSpeedMode")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_USB_setFullSpeedMode")
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$21)
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$53


$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("USB_getDataCountReadFromFifo")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_USB_getDataCountReadFromFifo")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$56


$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$218)
$C$DW$60	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$58

;	/home/santiago/ti/55x_Tools/bin/acp55 -@/tmp/17491GwyRHg 
	.sect	".text"

$C$DW$61	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_SetSenseKeys")
	.dwattr $C$DW$61, DW_AT_low_pc(_MSC_SetSenseKeys)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$61, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 121,column 1,is_stmt,address _MSC_SetSenseKeys

	.dwfde $C$DW$CIE, _MSC_SetSenseKeys
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("senseData")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_senseData")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg17]
$C$DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_name("senseKey")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_senseKey")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("addSenseKey")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_addSenseKey")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MSC_SetSenseKeys                                             *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,    *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_SetSenseKeys:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("senseData")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_senseData")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("senseKey")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_senseKey")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("addSenseKey")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_addSenseKey")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T1, *SP(#3) ; |121| 
        MOV T0, *SP(#2) ; |121| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 122,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#2), AR1 ; |122| 
        MOV AR1, *AR3(short(#3)) ; |122| 
	.dwpsn	file "./inc/csl_mscAux.h",line 123,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#3), AR1 ; |123| 
        MOV AR1, *AR3(#8) ; |123| 
	.dwpsn	file "./inc/csl_mscAux.h",line 124,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$61, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x7c)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"

$C$DW$69	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateReset")
	.dwattr $C$DW$69, DW_AT_low_pc(_MSC_HandleStateReset)
	.dwattr $C$DW$69, DW_AT_high_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_MSC_HandleStateReset")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$69, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$69, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$69, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 172,column 1,is_stmt,address _MSC_HandleStateReset

	.dwfde $C$DW$CIE, _MSC_HandleStateReset
$C$DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg17]
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateReset                                         *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateReset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 175,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_USB_abortTransaction")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_USB_abortTransaction ; |175| 
                                        ; call occurs [#_USB_abortTransaction] ; |175| 
        MOV T0, *SP(#4) ; |175| 
	.dwpsn	file "./inc/csl_mscAux.h",line 176,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV #31, T0 ; |176| 
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR1(#296) ; |176| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$76, DW_AT_TI_call

        CALL #_USB_postTransaction ; |176| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |176| 
        MOV T0, *SP(#4) ; |176| 
	.dwpsn	file "./inc/csl_mscAux.h",line 178,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#319) ; |178| 
	.dwpsn	file "./inc/csl_mscAux.h",line 180,column 2,is_stmt
        MOV *SP(#4), T0 ; |180| 
	.dwpsn	file "./inc/csl_mscAux.h",line 181,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$69, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$69, DW_AT_TI_end_line(0xb5)
	.dwattr $C$DW$69, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$69

	.sect	".text"

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStartStopUnit")
	.dwattr $C$DW$78, DW_AT_low_pc(_MSC_HandleStartStopUnit)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_MSC_HandleStartStopUnit")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$78, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0xe5)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./inc/csl_mscAux.h",line 232,column 1,is_stmt,address _MSC_HandleStartStopUnit

	.dwfde $C$DW$CIE, _MSC_HandleStartStopUnit
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg17]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg19]
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunNum")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStartStopUnit                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStartStopUnit:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("lunNum")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("mediaEjectStat")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_mediaEjectStat")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("loadEject")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_loadEject")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |232| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 237,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |237| 
        BCC $C$L1,AC0 == #0 ; |237| 
                                        ; branchcc occurs ; |237| 
	.dwpsn	file "./inc/csl_mscAux.h",line 240,column 3,is_stmt
        MOV #2, *AR3(#319) ; |240| 
	.dwpsn	file "./inc/csl_mscAux.h",line 241,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$88, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |241| 
                                        ; call occurs [#_USB_stallEndpt] ; |241| 
        MOV T0, *SP(#6) ; |241| 
	.dwpsn	file "./inc/csl_mscAux.h",line 242,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$89, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |242| 
                                        ; call occurs [#_USB_stallEndpt] ; |242| 
        MOV T0, *SP(#6) ; |242| 
	.dwpsn	file "./inc/csl_mscAux.h",line 246,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |246| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$90, DW_AT_TI_call

        CALL #_USB_postTransaction ; |246| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |246| 
        OR *SP(#6), T0, AR1 ; |246| 
        MOV AR1, *SP(#6) ; |246| 
	.dwpsn	file "./inc/csl_mscAux.h",line 251,column 3,is_stmt
        MOV AR1, T0
        B $C$L6   ; |251| 
                                        ; branch occurs ; |251| 
$C$L1:    
	.dwpsn	file "./inc/csl_mscAux.h",line 254,column 5,is_stmt
        MOV uns(high_byte(*AR3(#306))), AR1 ; |254| 
        MOV AR1, *SP(#7) ; |254| 
	.dwpsn	file "./inc/csl_mscAux.h",line 255,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |255| 
	.dwpsn	file "./inc/csl_mscAux.h",line 257,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |257| 
	.dwpsn	file "./inc/csl_mscAux.h",line 259,column 5,is_stmt
        CMP *SP(#7) == #2, TC1 ; |259| 
        BCC $C$L4,!TC1 ; |259| 
                                        ; branchcc occurs ; |259| 
	.dwpsn	file "./inc/csl_mscAux.h",line 261,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |261| 
        MOV AC0, AR1 ; |261| 
        AADD AR1, AR3 ; |261| 
        BTST #1, *AR3(#75), TC1 ; |261| 
        BCC $C$L2,!TC1 ; |261| 
                                        ; branchcc occurs ; |261| 
	.dwpsn	file "./inc/csl_mscAux.h",line 263,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #595, T1 ; |263| 
        AMAR *+AR0(#266) ; |263| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$91, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |263| 
||      MOV #6, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |263| 
	.dwpsn	file "./inc/csl_mscAux.h",line 266,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |266| 
	.dwpsn	file "./inc/csl_mscAux.h",line 267,column 9,is_stmt
        B $C$L5   ; |267| 
                                        ; branch occurs ; |267| 
$C$L2:    
	.dwpsn	file "./inc/csl_mscAux.h",line 270,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |270| 
        MOV dbl(*AR3(#8)), AC0 ; |270| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_call
	.dwattr $C$DW$92, DW_AT_TI_indirect
        CALL AC0  ; |270| 
                                        ; call occurs [AC0] ; |270| 
        MOV T0, *SP(#5) ; |270| 
	.dwpsn	file "./inc/csl_mscAux.h",line 271,column 13,is_stmt
        CMP *SP(#5) == #1, TC1 ; |271| 
        BCC $C$L3,!TC1 ; |271| 
                                        ; branchcc occurs ; |271| 
	.dwpsn	file "./inc/csl_mscAux.h",line 274,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |274| 
        MOV AC0, AR1 ; |274| 
        AADD AR1, AR3 ; |274| 
        AADD #18, AR3 ; |274| 
        AND #0xfff6, *AR3(#57) ; |274| 
	.dwpsn	file "./inc/csl_mscAux.h",line 275,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |275| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$93, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |275| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |275| 
	.dwpsn	file "./inc/csl_mscAux.h",line 278,column 13,is_stmt
        B $C$L5   ; |278| 
                                        ; branch occurs ; |278| 
$C$L3:    
	.dwpsn	file "./inc/csl_mscAux.h",line 281,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |281| 
	.dwpsn	file "./inc/csl_mscAux.h",line 282,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #32, T1 ; |282| 
        AMAR *+AR0(#266) ; |282| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$94, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |282| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |282| 
	.dwpsn	file "./inc/csl_mscAux.h",line 287,column 5,is_stmt
        B $C$L5   ; |287| 
                                        ; branch occurs ; |287| 
$C$L4:    
	.dwpsn	file "./inc/csl_mscAux.h",line 290,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |290| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$95, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |290| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |290| 
	.dwpsn	file "./inc/csl_mscAux.h",line 294,column 9,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |294| 
        MOV AC0, AR1 ; |294| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |294| 
        AADD #18, AR3 ; |294| 
        AND #0xfff6, *AR3(#57) ; |294| 
$C$L5:    
	.dwpsn	file "./inc/csl_mscAux.h",line 297,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV #13, T0
        AMAR *+AR1(#282) ; |297| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$96, DW_AT_TI_call

        CALL #_USB_postTransaction ; |297| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |297| 
        MOV T0, *SP(#6) ; |297| 
	.dwpsn	file "./inc/csl_mscAux.h",line 299,column 5,is_stmt
$C$L6:    
	.dwpsn	file "./inc/csl_mscAux.h",line 300,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$78, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x12c)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78

	.sect	".text"

$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateSendCSW")
	.dwattr $C$DW$98, DW_AT_low_pc(_MSC_HandleStateSendCSW)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_MSC_HandleStateSendCSW")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$98, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x15c)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./inc/csl_mscAux.h",line 351,column 1,is_stmt,address _MSC_HandleStateSendCSW

	.dwfde $C$DW$CIE, _MSC_HandleStateSendCSW
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg17]
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg19]
$C$DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg21]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateSendCSW                                       *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateSendCSW:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 354,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *SP(#6), XAR1
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$106, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |354| 
                                        ; call occurs [#_USB_isTransactionDone] ; |354| 
        BCC $C$L7,T0 == #0 ; |354| 
                                        ; branchcc occurs ; |354| 
	.dwpsn	file "./inc/csl_mscAux.h",line 356,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#281) ; |356| 
	.dwpsn	file "./inc/csl_mscAux.h",line 357,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#319) ; |357| 
	.dwpsn	file "./inc/csl_mscAux.h",line 358,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV #31, T0 ; |358| 
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR1(#296) ; |358| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$107, DW_AT_TI_call

        CALL #_USB_postTransaction ; |358| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |358| 
        OR *SP(#6), T0, AR1 ; |358| 
        MOV AR1, *SP(#6) ; |358| 
$C$L7:    
	.dwpsn	file "./inc/csl_mscAux.h",line 362,column 2,is_stmt
        MOV *SP(#6), T0 ; |362| 
	.dwpsn	file "./inc/csl_mscAux.h",line 363,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$98, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x16b)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"

$C$DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateSendData")
	.dwattr $C$DW$109, DW_AT_low_pc(_MSC_HandleStateSendData)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_MSC_HandleStateSendData")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$109, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x19a)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 412,column 1,is_stmt,address _MSC_HandleStateSendData

	.dwfde $C$DW$CIE, _MSC_HandleStateSendData
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg17]
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateSendData                                      *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateSendData:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 415,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        AMAR *SP(#4), XAR1
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$115, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |415| 
                                        ; call occurs [#_USB_isTransactionDone] ; |415| 
        BCC $C$L8,T0 == #0 ; |415| 
                                        ; branchcc occurs ; |415| 
	.dwpsn	file "./inc/csl_mscAux.h",line 417,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV #13, T0
        AMAR *+AR1(#282) ; |417| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$116, DW_AT_TI_call

        CALL #_USB_postTransaction ; |417| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |417| 
        OR *SP(#4), T0, AR1 ; |417| 
        MOV AR1, *SP(#4) ; |417| 
	.dwpsn	file "./inc/csl_mscAux.h",line 419,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |419| 
$C$L8:    
	.dwpsn	file "./inc/csl_mscAux.h",line 422,column 5,is_stmt
        MOV *SP(#4), T0 ; |422| 
	.dwpsn	file "./inc/csl_mscAux.h",line 423,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$109, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x1a7)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateSendStall")
	.dwattr $C$DW$118, DW_AT_low_pc(_MSC_HandleStateSendStall)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_MSC_HandleStateSendStall")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$118, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x1d6)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 472,column 1,is_stmt,address _MSC_HandleStateSendStall

	.dwfde $C$DW$CIE, _MSC_HandleStateSendStall
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg17]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateSendStall                                     *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateSendStall:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 475,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR0
        AMAR *SP(#4), XAR1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$124, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |475| 
                                        ; call occurs [#_USB_isTransactionDone] ; |475| 
        BCC $C$L9,T0 == #0 ; |475| 
                                        ; branchcc occurs ; |475| 
	.dwpsn	file "./inc/csl_mscAux.h",line 477,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV #13, T0
        AMAR *+AR1(#282) ; |477| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$125, DW_AT_TI_call

        CALL #_USB_postTransaction ; |477| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |477| 
        OR *SP(#4), T0, AR1 ; |477| 
        MOV AR1, *SP(#4) ; |477| 
	.dwpsn	file "./inc/csl_mscAux.h",line 479,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |479| 
$C$L9:    
	.dwpsn	file "./inc/csl_mscAux.h",line 482,column 5,is_stmt
        MOV *SP(#4), T0 ; |482| 
	.dwpsn	file "./inc/csl_mscAux.h",line 483,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$118, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x1e3)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateSendingShortPkt")
	.dwattr $C$DW$127, DW_AT_low_pc(_MSC_HandleStateSendingShortPkt)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_MSC_HandleStateSendingShortPkt")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$127, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x212)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 532,column 1,is_stmt,address _MSC_HandleStateSendingShortPkt

	.dwfde $C$DW$CIE, _MSC_HandleStateSendingShortPkt
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg17]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateSendingShortPkt                               *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateSendingShortPkt:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 535,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |535| 
	.dwpsn	file "./inc/csl_mscAux.h",line 537,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$133, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |537| 
                                        ; call occurs [#_USB_stallEndpt] ; |537| 
        MOV T0, *SP(#4) ; |537| 
	.dwpsn	file "./inc/csl_mscAux.h",line 540,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV #32, T1 ; |540| 
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR1(#282) ; |540| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALL #_USB_postTransaction ; |540| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |540| 
        OR *SP(#4), T0, AR1 ; |540| 
        MOV AR1, *SP(#4) ; |540| 
	.dwpsn	file "./inc/csl_mscAux.h",line 544,column 2,is_stmt
        MOV AR1, T0
	.dwpsn	file "./inc/csl_mscAux.h",line 545,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$127, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x221)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"

$C$DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleModeSense6")
	.dwattr $C$DW$136, DW_AT_low_pc(_MSC_HandleModeSense6)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_MSC_HandleModeSense6")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x251)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./inc/csl_mscAux.h",line 596,column 1,is_stmt,address _MSC_HandleModeSense6

	.dwfde $C$DW$CIE, _MSC_HandleModeSense6
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg17]
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg19]
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleModeSense6                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleModeSense6:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("modeSenseLen")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_modeSenseLen")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("smallerLen")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_smallerLen")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |596| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 602,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |602| 

        AND #0x0080, AR1, AR1 ; |602| 
||      MOV #128, AR2 ; |602| 

        CMPU AR1 == AR2, TC1 ; |602| 
        BCC $C$L10,TC1 ; |602| 
                                        ; branchcc occurs ; |602| 
        MOV dbl(*AR3(#16)), AC0 ; |602| 
        BCC $C$L10,AC0 == #0 ; |602| 
                                        ; branchcc occurs ; |602| 
	.dwpsn	file "./inc/csl_mscAux.h",line 606,column 3,is_stmt
        MOV #2, *AR3(#289) ; |606| 
	.dwpsn	file "./inc/csl_mscAux.h",line 609,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |609| 
	.dwpsn	file "./inc/csl_mscAux.h",line 610,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$146, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |610| 
                                        ; call occurs [#_USB_stallEndpt] ; |610| 
        MOV T0, *SP(#5) ; |610| 
	.dwpsn	file "./inc/csl_mscAux.h",line 611,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |611| 
                                        ; call occurs [#_USB_stallEndpt] ; |611| 
        MOV T0, *SP(#5) ; |611| 
	.dwpsn	file "./inc/csl_mscAux.h",line 614,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |614| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$148, DW_AT_TI_call

        CALL #_USB_postTransaction ; |614| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |614| 
        MOV T0, *SP(#5) ; |614| 
	.dwpsn	file "./inc/csl_mscAux.h",line 618,column 3,is_stmt
        B $C$L15  ; |618| 
                                        ; branch occurs ; |618| 
$C$L10:    
	.dwpsn	file "./inc/csl_mscAux.h",line 621,column 2,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |621| 
        BCC $C$L13,AC0 == #0 ; |621| 
                                        ; branchcc occurs ; |621| 
	.dwpsn	file "./inc/csl_mscAux.h",line 623,column 3,is_stmt
        MOV *AR3(#320), AR1 ; |623| 
        MOV AR1, *SP(#6) ; |623| 
	.dwpsn	file "./inc/csl_mscAux.h",line 626,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#6)), AC1 ; |626| 
        MOV dbl(*AR3(#16)), AC0 ; |626| 
        CMPU AC1 >= AC0, TC1 ; |626| 
        BCC $C$L11,TC1 ; |626| 
                                        ; branchcc occurs ; |626| 
	.dwpsn	file "./inc/csl_mscAux.h",line 628,column 4,is_stmt
        MOV AR1, *SP(#7) ; |628| 
	.dwpsn	file "./inc/csl_mscAux.h",line 629,column 3,is_stmt
        B $C$L12  ; |629| 
                                        ; branch occurs ; |629| 
$C$L11:    
	.dwpsn	file "./inc/csl_mscAux.h",line 632,column 4,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |632| 
        AND #0xffff, AC0, AC0 ; |632| 
        MOV AC0, *SP(#7) ; |632| 
$C$L12:    
	.dwpsn	file "./inc/csl_mscAux.h",line 637,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#7)), AC0 ; |637| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |637| 
        MOV AC0, dbl(*AR3(#16)) ; |637| 
	.dwpsn	file "./inc/csl_mscAux.h",line 638,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |638| 
        AND #0xffff, AC0, AC0 ; |638| 
        MOV AC0, *AR3(#287) ; |638| 
	.dwpsn	file "./inc/csl_mscAux.h",line 640,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |640| 
        MOV HI(AC0), *AR3(#288) ; |640| 
	.dwpsn	file "./inc/csl_mscAux.h",line 642,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |642| 
	.dwpsn	file "./inc/csl_mscAux.h",line 643,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#7), T0 ; |643| 
        AMAR *+AR1(#321) ; |643| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$149, DW_AT_TI_call

        CALL #_USB_postTransaction ; |643| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |643| 
        MOV T0, *SP(#5) ; |643| 
	.dwpsn	file "./inc/csl_mscAux.h",line 647,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |647| 
	.dwpsn	file "./inc/csl_mscAux.h",line 648,column 2,is_stmt
        B $C$L14  ; |648| 
                                        ; branch occurs ; |648| 
$C$L13:    
	.dwpsn	file "./inc/csl_mscAux.h",line 651,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |651| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |651| 
        MOV T0, *SP(#5) ; |651| 
$C$L14:    
	.dwpsn	file "./inc/csl_mscAux.h",line 654,column 2,is_stmt
        MOV *SP(#5), T0 ; |654| 
$C$L15:    
	.dwpsn	file "./inc/csl_mscAux.h",line 655,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$136, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x28f)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"

$C$DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleModeSense10")
	.dwattr $C$DW$152, DW_AT_low_pc(_MSC_HandleModeSense10)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_MSC_HandleModeSense10")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$152, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x2bf)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./inc/csl_mscAux.h",line 706,column 1,is_stmt,address _MSC_HandleModeSense10

	.dwfde $C$DW$CIE, _MSC_HandleModeSense10
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg17]
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg19]
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleModeSense10                                        *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleModeSense10:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("modeSenseLen")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_modeSenseLen")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("smallerLen")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_smallerLen")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |706| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 712,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |712| 

        AND #0x0080, AR1, AR1 ; |712| 
||      MOV #128, AR2 ; |712| 

        CMPU AR1 == AR2, TC1 ; |712| 
        BCC $C$L16,TC1 ; |712| 
                                        ; branchcc occurs ; |712| 
        MOV dbl(*AR3(#16)), AC0 ; |712| 
        BCC $C$L16,AC0 == #0 ; |712| 
                                        ; branchcc occurs ; |712| 
	.dwpsn	file "./inc/csl_mscAux.h",line 716,column 3,is_stmt
        MOV #2, *AR3(#289) ; |716| 
	.dwpsn	file "./inc/csl_mscAux.h",line 719,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |719| 
	.dwpsn	file "./inc/csl_mscAux.h",line 720,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$162, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |720| 
                                        ; call occurs [#_USB_stallEndpt] ; |720| 
        MOV T0, *SP(#5) ; |720| 
	.dwpsn	file "./inc/csl_mscAux.h",line 721,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$163, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |721| 
                                        ; call occurs [#_USB_stallEndpt] ; |721| 
        MOV T0, *SP(#5) ; |721| 
	.dwpsn	file "./inc/csl_mscAux.h",line 724,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |724| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$164, DW_AT_TI_call

        CALL #_USB_postTransaction ; |724| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |724| 
        MOV T0, *SP(#5) ; |724| 
	.dwpsn	file "./inc/csl_mscAux.h",line 728,column 3,is_stmt
        B $C$L21  ; |728| 
                                        ; branch occurs ; |728| 
$C$L16:    
	.dwpsn	file "./inc/csl_mscAux.h",line 731,column 2,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |731| 
        BCC $C$L19,AC0 == #0 ; |731| 
                                        ; branchcc occurs ; |731| 
	.dwpsn	file "./inc/csl_mscAux.h",line 733,column 3,is_stmt
        MOV *AR3(#320), AR1 ; |733| 
        MOV AR1, *SP(#6) ; |733| 
	.dwpsn	file "./inc/csl_mscAux.h",line 736,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#6)), AC1 ; |736| 
        MOV dbl(*AR3(#16)), AC0 ; |736| 
        CMPU AC1 >= AC0, TC1 ; |736| 
        BCC $C$L17,TC1 ; |736| 
                                        ; branchcc occurs ; |736| 
	.dwpsn	file "./inc/csl_mscAux.h",line 738,column 4,is_stmt
        MOV AR1, *SP(#7) ; |738| 
	.dwpsn	file "./inc/csl_mscAux.h",line 739,column 3,is_stmt
        B $C$L18  ; |739| 
                                        ; branch occurs ; |739| 
$C$L17:    
	.dwpsn	file "./inc/csl_mscAux.h",line 742,column 4,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |742| 
        AND #0xffff, AC0, AC0 ; |742| 
        MOV AC0, *SP(#7) ; |742| 
$C$L18:    
	.dwpsn	file "./inc/csl_mscAux.h",line 747,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#7)), AC0 ; |747| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |747| 
        MOV AC0, dbl(*AR3(#16)) ; |747| 
	.dwpsn	file "./inc/csl_mscAux.h",line 748,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |748| 
        AND #0xffff, AC0, AC0 ; |748| 
        MOV AC0, *AR3(#287) ; |748| 
	.dwpsn	file "./inc/csl_mscAux.h",line 750,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |750| 
        MOV HI(AC0), *AR3(#288) ; |750| 
	.dwpsn	file "./inc/csl_mscAux.h",line 752,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |752| 
	.dwpsn	file "./inc/csl_mscAux.h",line 753,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#7), T0 ; |753| 
        AMAR *+AR1(#321) ; |753| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$165, DW_AT_TI_call

        CALL #_USB_postTransaction ; |753| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |753| 
        MOV T0, *SP(#5) ; |753| 
	.dwpsn	file "./inc/csl_mscAux.h",line 757,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |757| 
	.dwpsn	file "./inc/csl_mscAux.h",line 758,column 2,is_stmt
        B $C$L20  ; |758| 
                                        ; branch occurs ; |758| 
$C$L19:    
	.dwpsn	file "./inc/csl_mscAux.h",line 761,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |761| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |761| 
        MOV T0, *SP(#5) ; |761| 
$C$L20:    
	.dwpsn	file "./inc/csl_mscAux.h",line 764,column 2,is_stmt
        MOV *SP(#5), T0 ; |764| 
$C$L21:    
	.dwpsn	file "./inc/csl_mscAux.h",line 765,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$152, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x2fd)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"

$C$DW$168	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleInquiry")
	.dwattr $C$DW$168, DW_AT_low_pc(_MSC_HandleInquiry)
	.dwattr $C$DW$168, DW_AT_high_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_MSC_HandleInquiry")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$168, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x32d)
	.dwattr $C$DW$168, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$168, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./inc/csl_mscAux.h",line 816,column 1,is_stmt,address _MSC_HandleInquiry

	.dwfde $C$DW$CIE, _MSC_HandleInquiry
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg17]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg19]
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleInquiry                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleInquiry:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("cbwRespLen")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_cbwRespLen")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("smallerLen")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_smallerLen")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |816| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 822,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |822| 

        AND #0x0080, AR1, AR1 ; |822| 
||      MOV #128, AR2 ; |822| 

        CMPU AR1 == AR2, TC1 ; |822| 
        BCC $C$L22,TC1 ; |822| 
                                        ; branchcc occurs ; |822| 
        MOV dbl(*AR3(#16)), AC0 ; |822| 
        BCC $C$L22,AC0 == #0 ; |822| 
                                        ; branchcc occurs ; |822| 
	.dwpsn	file "./inc/csl_mscAux.h",line 826,column 3,is_stmt
        MOV #128, T0 ; |826| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$178, DW_AT_TI_call
        CALL #_MSC_handleDataDirMisMatch ; |826| 
                                        ; call occurs [#_MSC_handleDataDirMisMatch] ; |826| 
        MOV T0, *SP(#5) ; |826| 
	.dwpsn	file "./inc/csl_mscAux.h",line 828,column 3,is_stmt
        B $C$L27  ; |828| 
                                        ; branch occurs ; |828| 
$C$L22:    
	.dwpsn	file "./inc/csl_mscAux.h",line 831,column 2,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |831| 
        BCC $C$L25,AC0 == #0 ; |831| 
                                        ; branchcc occurs ; |831| 
	.dwpsn	file "./inc/csl_mscAux.h",line 833,column 3,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |833| 
        MOV AC0, AR1 ; |833| 
        AADD AR1, AR3 ; |833| 
        MOV *AR3(#18), AR1 ; |833| 
        MOV AR1, *SP(#6) ; |833| 
	.dwpsn	file "./inc/csl_mscAux.h",line 835,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#6)), AC1 ; |835| 
        MOV dbl(*AR3(#16)), AC0 ; |835| 
        CMPU AC1 >= AC0, TC1 ; |835| 
        BCC $C$L23,TC1 ; |835| 
                                        ; branchcc occurs ; |835| 
	.dwpsn	file "./inc/csl_mscAux.h",line 837,column 4,is_stmt
        MOV AR1, *SP(#7) ; |837| 
	.dwpsn	file "./inc/csl_mscAux.h",line 838,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #7, *AR3(#319) ; |838| 
	.dwpsn	file "./inc/csl_mscAux.h",line 839,column 3,is_stmt
        B $C$L24  ; |839| 
                                        ; branch occurs ; |839| 
$C$L23:    
	.dwpsn	file "./inc/csl_mscAux.h",line 842,column 4,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |842| 
        AND #0xffff, AC0, AC0 ; |842| 
        MOV AC0, *SP(#7) ; |842| 
	.dwpsn	file "./inc/csl_mscAux.h",line 844,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |844| 
$C$L24:    
	.dwpsn	file "./inc/csl_mscAux.h",line 848,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#7)), AC0 ; |848| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |848| 
        MOV AC0, dbl(*AR3(#16)) ; |848| 
	.dwpsn	file "./inc/csl_mscAux.h",line 849,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |849| 
        AND #0xffff, AC0, AC0 ; |849| 
        MOV AC0, *AR3(#287) ; |849| 
	.dwpsn	file "./inc/csl_mscAux.h",line 851,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |851| 
        MOV HI(AC0), *AR3(#288) ; |851| 
	.dwpsn	file "./inc/csl_mscAux.h",line 853,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |853| 
	.dwpsn	file "./inc/csl_mscAux.h",line 855,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MPYMK *SP(#4), #62, AC0 ; |855| 
        MOV AC0, AR2 ; |855| 
        MOV dbl(*SP(#2)), XAR0
        AADD AR2, AR1 ; |855| 

        AADD #19, AR1 ; |855| 
||      MOV *SP(#7), T0 ; |855| 

$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$179, DW_AT_TI_call

        CALL #_USB_postTransaction ; |855| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |855| 
        MOV T0, *SP(#5) ; |855| 
	.dwpsn	file "./inc/csl_mscAux.h",line 858,column 2,is_stmt
        B $C$L26  ; |858| 
                                        ; branch occurs ; |858| 
$C$L25:    
	.dwpsn	file "./inc/csl_mscAux.h",line 861,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$180, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |861| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |861| 
        MOV T0, *SP(#5) ; |861| 
$C$L26:    
	.dwpsn	file "./inc/csl_mscAux.h",line 864,column 2,is_stmt
$C$L27:    
	.dwpsn	file "./inc/csl_mscAux.h",line 865,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$168, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x361)
	.dwattr $C$DW$168, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$168

	.sect	".text"

$C$DW$182	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleRequestSense")
	.dwattr $C$DW$182, DW_AT_low_pc(_MSC_HandleRequestSense)
	.dwattr $C$DW$182, DW_AT_high_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_MSC_HandleRequestSense")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$182, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$182, DW_AT_TI_begin_line(0x390)
	.dwattr $C$DW$182, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$182, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./inc/csl_mscAux.h",line 914,column 1,is_stmt,address _MSC_HandleRequestSense

	.dwfde $C$DW$CIE, _MSC_HandleRequestSense
$C$DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg17]
$C$DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleRequestSense                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleRequestSense:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("cbwRespLen")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_cbwRespLen")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("smallerLen")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_smallerLen")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 920,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |920| 

        AND #0x0080, AR1, AR1 ; |920| 
||      MOV #128, AR2 ; |920| 

        CMPU AR1 == AR2, TC1 ; |920| 
        BCC $C$L28,TC1 ; |920| 
                                        ; branchcc occurs ; |920| 
        MOV dbl(*AR3(#16)), AC0 ; |920| 
        BCC $C$L28,AC0 == #0 ; |920| 
                                        ; branchcc occurs ; |920| 
	.dwpsn	file "./inc/csl_mscAux.h",line 924,column 3,is_stmt
        MOV #128, T0 ; |924| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #_MSC_handleDataDirMisMatch ; |924| 
                                        ; call occurs [#_MSC_handleDataDirMisMatch] ; |924| 
        MOV T0, *SP(#4) ; |924| 
	.dwpsn	file "./inc/csl_mscAux.h",line 926,column 3,is_stmt
        B $C$L33  ; |926| 
                                        ; branch occurs ; |926| 
$C$L28:    
	.dwpsn	file "./inc/csl_mscAux.h",line 929,column 2,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |929| 
        BCC $C$L31,AC0 == #0 ; |929| 
                                        ; branchcc occurs ; |929| 
	.dwpsn	file "./inc/csl_mscAux.h",line 931,column 3,is_stmt
        MOV *AR3(#266), AR1 ; |931| 
        MOV AR1, *SP(#5) ; |931| 
	.dwpsn	file "./inc/csl_mscAux.h",line 934,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#5)), AC1 ; |934| 
        MOV dbl(*AR3(#16)), AC0 ; |934| 
        CMPU AC1 >= AC0, TC1 ; |934| 
        BCC $C$L29,TC1 ; |934| 
                                        ; branchcc occurs ; |934| 
	.dwpsn	file "./inc/csl_mscAux.h",line 936,column 4,is_stmt
        MOV #7, *AR3(#319) ; |936| 
	.dwpsn	file "./inc/csl_mscAux.h",line 937,column 4,is_stmt
        MOV *SP(#5), AR1 ; |937| 
        MOV AR1, *SP(#6) ; |937| 
	.dwpsn	file "./inc/csl_mscAux.h",line 938,column 3,is_stmt
        B $C$L30  ; |938| 
                                        ; branch occurs ; |938| 
$C$L29:    
	.dwpsn	file "./inc/csl_mscAux.h",line 941,column 4,is_stmt
        MOV #3, *AR3(#319) ; |941| 
	.dwpsn	file "./inc/csl_mscAux.h",line 943,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |943| 
        AND #0xffff, AC0, AC0 ; |943| 
        MOV AC0, *SP(#6) ; |943| 
$C$L30:    
	.dwpsn	file "./inc/csl_mscAux.h",line 948,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#6)), AC0 ; |948| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |948| 
        MOV AC0, dbl(*AR3(#16)) ; |948| 
	.dwpsn	file "./inc/csl_mscAux.h",line 949,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |949| 
        AND #0x0010, AC0, AC0 ; |949| 
        MOV AC0, *AR3(#287) ; |949| 
	.dwpsn	file "./inc/csl_mscAux.h",line 951,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |951| 
        MOV HI(AC0), *AR3(#288) ; |951| 
	.dwpsn	file "./inc/csl_mscAux.h",line 953,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |953| 
	.dwpsn	file "./inc/csl_mscAux.h",line 954,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#6), T0 ; |954| 
        AMAR *+AR1(#267) ; |954| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$191, DW_AT_TI_call

        CALL #_USB_postTransaction ; |954| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |954| 
        MOV T0, *SP(#4) ; |954| 
	.dwpsn	file "./inc/csl_mscAux.h",line 957,column 2,is_stmt
        B $C$L32  ; |957| 
                                        ; branch occurs ; |957| 
$C$L31:    
	.dwpsn	file "./inc/csl_mscAux.h",line 960,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |960| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |960| 
        MOV T0, *SP(#4) ; |960| 
$C$L32:    
	.dwpsn	file "./inc/csl_mscAux.h",line 963,column 2,is_stmt
$C$L33:    
	.dwpsn	file "./inc/csl_mscAux.h",line 964,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$182, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$182, DW_AT_TI_end_line(0x3c4)
	.dwattr $C$DW$182, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$182

	.sect	".text"

$C$DW$194	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleVerify10")
	.dwattr $C$DW$194, DW_AT_low_pc(_MSC_HandleVerify10)
	.dwattr $C$DW$194, DW_AT_high_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_MSC_HandleVerify10")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$194, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$194, DW_AT_TI_begin_line(0x3f4)
	.dwattr $C$DW$194, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$194, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "./inc/csl_mscAux.h",line 1015,column 1,is_stmt,address _MSC_HandleVerify10

	.dwfde $C$DW$CIE, _MSC_HandleVerify10
$C$DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg17]
$C$DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg19]
$C$DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleVerify10                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (7 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleVerify10:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("verifyLen")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_verifyLen")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#4) ; |1015| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 1019,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |1019| 
        BCC $C$L34,AC0 == #0 ; |1019| 
                                        ; branchcc occurs ; |1019| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1022,column 3,is_stmt
        MOV #2, *AR3(#319) ; |1022| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1023,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1023| 
                                        ; call occurs [#_USB_stallEndpt] ; |1023| 
        MOV T0, *SP(#5) ; |1023| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1024,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1024| 
                                        ; call occurs [#_USB_stallEndpt] ; |1024| 
        MOV T0, *SP(#5) ; |1024| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1028,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |1028| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$205, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1028| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |1028| 
        OR *SP(#5), T0, AR1 ; |1028| 
        MOV AR1, *SP(#5) ; |1028| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1033,column 3,is_stmt
        MOV AR1, T0
        B $C$L38  ; |1033| 
                                        ; branch occurs ; |1033| 
$C$L34:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1036,column 5,is_stmt
        MOV *AR3(#308), AR1 ; |1036| 
        MOV *AR3(#308), AC1 ; |1036| 
        AND #0xff00, AR1, AC0 ; |1036| 
        BFXTR #0xff00, AC0, AC0 ; |1036| 
        OR AC1 << #8, AC0 ; |1036| 
        MOV AC0, *SP(#6) ; |1036| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1040,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |1040| 
        MOV AC0, AR1 ; |1040| 
        AADD AR1, AR3 ; |1040| 
        MOV *AR3(#78), AR1 ; |1040| 
        BCC $C$L35,AR1 == #0 ; |1040| 
                                        ; branchcc occurs ; |1040| 
        MOV *SP(#6), AR1 ; |1040| 
        BCC $C$L36,AR1 != #0 ; |1040| 
                                        ; branchcc occurs ; |1040| 
$C$L35:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1043,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |1043| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1044,column 5,is_stmt
        B $C$L37  ; |1044| 
                                        ; branch occurs ; |1044| 
$C$L36:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1047,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |1047| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1048,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #29, T1 ; |1048| 
        AMAR *+AR0(#266) ; |1048| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$206, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |1048| 
||      MOV #14, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |1048| 
$C$L37:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1053,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |1053| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1054,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV #13, T0
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR1(#282) ; |1054| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$207, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1054| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |1054| 
        MOV T0, *SP(#5) ; |1054| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1057,column 2,is_stmt
$C$L38:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1058,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$194, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x422)
	.dwattr $C$DW$194, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$194

	.sect	".text"

$C$DW$209	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_reqUnknown")
	.dwattr $C$DW$209, DW_AT_low_pc(_MSC_reqUnknown)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_MSC_reqUnknown")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$209, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x45b)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./inc/csl_mscAux.h",line 1120,column 1,is_stmt,address _MSC_reqUnknown

	.dwfde $C$DW$CIE, _MSC_reqUnknown
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg17]
$C$DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg19]
$C$DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg21]
$C$DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg23]
$C$DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMsc")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: MSC_reqUnknown                                               *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,XAR4,SP,  *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_reqUnknown:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$218	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$219	.dwtag  DW_TAG_variable, DW_AT_name("pMsc")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$220	.dwtag  DW_TAG_variable, DW_AT_name("retStat")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_retStat")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 1124,column 2,is_stmt
        MOV #1, *SP(#10) ; |1124| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1126,column 2,is_stmt
        MOV *SP(#10), T0 ; |1126| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1127,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$209, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x467)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"

$C$DW$222	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_lookupReqHandler")
	.dwattr $C$DW$222, DW_AT_low_pc(_MSC_lookupReqHandler)
	.dwattr $C$DW$222, DW_AT_high_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_MSC_lookupReqHandler")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$222, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x49c)
	.dwattr $C$DW$222, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$222, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./inc/csl_mscAux.h",line 1182,column 1,is_stmt,address _MSC_lookupReqHandler

	.dwfde $C$DW$CIE, _MSC_lookupReqHandler
$C$DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_name("request")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg12]
$C$DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_lookupReqHandler                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_lookupReqHandler:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("pUSB_ReqTable")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_pUSB_ReqTable")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |1182| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1186,column 6,is_stmt
        MOV #0, *SP(#4) ; |1186| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1186,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |1186| 
        MOV AC0, AR1 ; |1186| 
        AADD AR1, AR3 ; |1186| 
        MOV dbl(*AR3(short(#2))), AC0 ; |1186| 
        BCC $C$L41,AC0 == #0 ; |1186| 
                                        ; branchcc occurs ; |1186| 
$C$L39:    
$C$DW$L$_MSC_lookupReqHandler$2$B:
	.dwpsn	file "./inc/csl_mscAux.h",line 1189,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |1189| 
        MOV AC0, T0 ; |1189| 
        MOV *SP(#0), AR1 ; |1189| 
        MOV *AR3(T0), AR2 ; |1189| 
        CMPU AR2 != AR1, TC1 ; |1189| 
        BCC $C$L40,TC1 ; |1189| 
                                        ; branchcc occurs ; |1189| 
$C$DW$L$_MSC_lookupReqHandler$2$E:
	.dwpsn	file "./inc/csl_mscAux.h",line 1191,column 4,is_stmt
        MOV *SP(#4) << #2, AC0 ; |1191| 
        MOV AC0, AR1 ; |1191| 
        AADD AR1, AR3 ; |1191| 
        MOV dbl(*AR3(short(#2))), AC0 ; |1191| 
        B $C$L42  ; |1191| 
                                        ; branch occurs ; |1191| 
$C$L40:    
$C$DW$L$_MSC_lookupReqHandler$4$B:
	.dwpsn	file "./inc/csl_mscAux.h",line 1186,column 64,is_stmt
        ADD #1, *SP(#4) ; |1186| 
	.dwpsn	file "./inc/csl_mscAux.h",line 1186,column 17,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#4) << #2, AC0 ; |1186| 
        MOV AC0, AR1 ; |1186| 
        AADD AR1, AR3 ; |1186| 
        MOV dbl(*AR3(short(#2))), AC0 ; |1186| 
        BCC $C$L39,AC0 != #0 ; |1186| 
                                        ; branchcc occurs ; |1186| 
$C$DW$L$_MSC_lookupReqHandler$4$E:
$C$L41:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1197,column 2,is_stmt
        MOV #(_MSC_reqUnknown >> 16) << #16, AC0 ; |1197| 
        OR #(_MSC_reqUnknown & 0xffff), AC0, AC0 ; |1197| 
$C$L42:    
	.dwpsn	file "./inc/csl_mscAux.h",line 1198,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$229	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$229, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L39:1:1714639447")
	.dwattr $C$DW$229, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$229, DW_AT_TI_begin_line(0x4a2)
	.dwattr $C$DW$229, DW_AT_TI_end_line(0x4a9)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_MSC_lookupReqHandler$2$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_MSC_lookupReqHandler$2$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_MSC_lookupReqHandler$4$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_MSC_lookupReqHandler$4$E)
	.dwendtag $C$DW$229

	.dwattr $C$DW$222, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x4ae)
	.dwattr $C$DW$222, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$222

	.sect	".text"

$C$DW$232	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_verifyCBW")
	.dwattr $C$DW$232, DW_AT_low_pc(_MSC_verifyCBW)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_MSC_verifyCBW")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$232, DW_AT_TI_begin_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$232, DW_AT_TI_begin_line(0x7e8)
	.dwattr $C$DW$232, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./inc/csl_mscAux.h",line 2028,column 1,is_stmt,address _MSC_verifyCBW

	.dwfde $C$DW$CIE, _MSC_verifyCBW
$C$DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg17]
$C$DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg19]
$C$DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg21]
$C$DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg23]
;*******************************************************************************
;* FUNCTION NAME: MSC_verifyCBW                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,TC1,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_verifyCBW:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("cbwSignature")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_cbwSignature")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("cbwSize")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_cbwSize")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./inc/csl_mscAux.h",line 2034,column 2,is_stmt
        MOV #0, AC0 ; |2034| 
        MOV AC0, dbl(*SP(#8)) ; |2034| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2035,column 2,is_stmt
        MOV #0, *SP(#10) ; |2035| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2036,column 2,is_stmt
        MOV #0, *SP(#11) ; |2036| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2037,column 2,is_stmt
        MOV #0, *SP(#12) ; |2037| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2039,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L45,AC0 == #0 ; |2039| 
                                        ; branchcc occurs ; |2039| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR3, AC0
        BCC $C$L45,AC0 == #0 ; |2039| 
                                        ; branchcc occurs ; |2039| 
        MOV dbl(*SP(#6)), XAR3
        MOV XAR3, AC0
        BCC $C$L45,AC0 == #0 ; |2039| 
                                        ; branchcc occurs ; |2039| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2041,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV *AR2(#298), AR1 ; |2041| 
        MOV AR1, HI(AC0) ; |2041| 
        OR *AR3(#297), AC0, AC0 ; |2041| 
        MOV AC0, dbl(*SP(#8)) ; |2041| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2045,column 3,is_stmt
        MOV dbl(*SP(#8)), AC1 ; |2045| 
        MOV #17218 << #16, AC0 ; |2045| 
        OR #0x5355, AC0, AC0 ; |2045| 
        CMPU AC1 == AC0, TC1 ; |2045| 
        BCC $C$L43,TC1 ; |2045| 
                                        ; branchcc occurs ; |2045| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2047,column 4,is_stmt
        MOV #-1, *SP(#10) ; |2047| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2048,column 3,is_stmt
        B $C$L46  ; |2048| 
                                        ; branch occurs ; |2048| 
$C$L43:    
	.dwpsn	file "./inc/csl_mscAux.h",line 2051,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_USB_getDataCountReadFromFifo")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #_USB_getDataCountReadFromFifo ; |2051| 
                                        ; call occurs [#_USB_getDataCountReadFromFifo] ; |2051| 
        MOV T0, *SP(#11) ; |2051| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2052,column 4,is_stmt
        CMP *SP(#11) == #31, TC1 ; |2052| 
        BCC $C$L44,TC1 ; |2052| 
                                        ; branchcc occurs ; |2052| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2054,column 5,is_stmt
        MOV #-1, *SP(#10) ; |2054| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2055,column 4,is_stmt
        B $C$L46  ; |2055| 
                                        ; branch occurs ; |2055| 
$C$L44:    
	.dwpsn	file "./inc/csl_mscAux.h",line 2059,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*AR3(#303))), AR1 ; |2059| 
        MOV AR1, *SP(#12) ; |2059| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2061,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AR2 ; |2061| 
        MOV *AR3(#318), AR1 ; |2061| 
        CMPU AR2 <= AR1, TC1 ; |2061| 
        BCC $C$L46,TC1 ; |2061| 
                                        ; branchcc occurs ; |2061| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2063,column 6,is_stmt
        MOV #-1, *SP(#10) ; |2063| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2067,column 2,is_stmt
        B $C$L46  ; |2067| 
                                        ; branch occurs ; |2067| 
$C$L45:    
	.dwpsn	file "./inc/csl_mscAux.h",line 2070,column 3,is_stmt
        MOV #-1, *SP(#10) ; |2070| 
$C$L46:    
	.dwpsn	file "./inc/csl_mscAux.h",line 2073,column 2,is_stmt
        MOV *SP(#10), T0 ; |2073| 
	.dwpsn	file "./inc/csl_mscAux.h",line 2074,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$232, DW_AT_TI_end_file("./inc/csl_mscAux.h")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x81a)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text"
	.global	_MSC_Open

$C$DW$247	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_Open")
	.dwattr $C$DW$247, DW_AT_low_pc(_MSC_Open)
	.dwattr $C$DW$247, DW_AT_high_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_MSC_Open")
	.dwattr $C$DW$247, DW_AT_external
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$247, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$247, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$247, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$247, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_msc.c",line 109,column 1,is_stmt,address _MSC_Open

	.dwfde $C$DW$CIE, _MSC_Open
$C$DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg17]
$C$DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbConfig")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_Open                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_Open:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 114,column 2,is_stmt
        MOV #0, *SP(#6) ; |114| 
	.dwpsn	file "src/csl_msc.c",line 115,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_msc.c",line 117,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L51,AC0 == #0 ; |117| 
                                        ; branchcc occurs ; |117| 
	.dwpsn	file "src/csl_msc.c",line 119,column 3,is_stmt
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_USB_init")
	.dwattr $C$DW$255, DW_AT_TI_call
        CALL #_USB_init ; |119| 
                                        ; call occurs [#_USB_init] ; |119| 
	.dwpsn	file "src/csl_msc.c",line 121,column 3,is_stmt
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_USB_open")
	.dwattr $C$DW$256, DW_AT_TI_call

        CALL #_USB_open ; |121| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |121| 
        MOV dbl(*SP(#8)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_msc.c",line 122,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |122| 

        CMPU AC1 != AC0, TC1 ; |122| 
        BCC $C$L47,TC1 ; |122| 
                                        ; branchcc occurs ; |122| 
	.dwpsn	file "src/csl_msc.c",line 124,column 4,is_stmt
        MOV #-5, T0
        B $C$L53  ; |124| 
                                        ; branch occurs ; |124| 
$C$L47:    
	.dwpsn	file "src/csl_msc.c",line 127,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_USB_config")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #_USB_config ; |127| 
                                        ; call occurs [#_USB_config] ; |127| 
        MOV T0, *SP(#6) ; |127| 
	.dwpsn	file "src/csl_msc.c",line 128,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |128| 
        BCC $C$L53,!TC1 ; |128| 
                                        ; branchcc occurs ; |128| 
	.dwpsn	file "src/csl_msc.c",line 130,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 134,column 7,is_stmt
        MOV #0, AC0 ; |134| 
        MOV AC0, dbl(*SP(#10)) ; |134| 
        NOP
        NOP
	.dwpsn	file "src/csl_msc.c",line 134,column 19,is_stmt
        AMOV #90000, XAR3 ; |134| 
        MOV dbl(*SP(#10)), AC1 ; |134| 
        MOV XAR3, AC0
        CMPU AC1 >= AC0, TC1 ; |134| 
        BCC $C$L49,TC1 ; |134| 
                                        ; branchcc occurs ; |134| 
$C$L48:    
$C$DW$L$_MSC_Open$6$B:
	.dwpsn	file "src/csl_msc.c",line 134,column 35,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |134| 
        ADD #1, AC0 ; |134| 
        MOV AC0, dbl(*SP(#10)) ; |134| 
        NOP
        NOP
	.dwpsn	file "src/csl_msc.c",line 134,column 19,is_stmt
        MOV XAR3, AC0
        MOV dbl(*SP(#10)), AC1 ; |134| 
        CMPU AC1 < AC0, TC1 ; |134| 
        BCC $C$L48,TC1 ; |134| 
                                        ; branchcc occurs ; |134| 
$C$DW$L$_MSC_Open$6$E:
$C$L49:    
	.dwpsn	file "src/csl_msc.c",line 137,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$258, DW_AT_TI_call
        CALL #_USB_resetDev ; |137| 
                                        ; call occurs [#_USB_resetDev] ; |137| 
        MOV T0, *SP(#6) ; |137| 
	.dwpsn	file "src/csl_msc.c",line 138,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L50,AR1 == #0 ; |138| 
                                        ; branchcc occurs ; |138| 
	.dwpsn	file "src/csl_msc.c",line 140,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |140| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_printf")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #_printf ; |140| 
                                        ; call occurs [#_printf] ; |140| 
	.dwpsn	file "src/csl_msc.c",line 141,column 4,is_stmt
        MOV *SP(#6), T0 ; |141| 
        B $C$L53  ; |141| 
                                        ; branch occurs ; |141| 
$C$L50:    
	.dwpsn	file "src/csl_msc.c",line 144,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_MSC_Setup")
	.dwattr $C$DW$260, DW_AT_TI_call

        CALL #_MSC_Setup ; |144| 
||      MOV #1, T0

                                        ; call occurs [#_MSC_Setup] ; |144| 
        MOV T0, *SP(#6) ; |144| 
	.dwpsn	file "src/csl_msc.c",line 145,column 2,is_stmt
        B $C$L52  ; |145| 
                                        ; branch occurs ; |145| 
$C$L51:    
	.dwpsn	file "src/csl_msc.c",line 148,column 3,is_stmt
        MOV #-5, *SP(#6) ; |148| 
$C$L52:    
	.dwpsn	file "src/csl_msc.c",line 151,column 2,is_stmt
        MOV *SP(#6), T0 ; |151| 
$C$L53:    
	.dwpsn	file "src/csl_msc.c",line 152,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$262	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$262, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L48:1:1714639447")
	.dwattr $C$DW$262, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x86)
$C$DW$263	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$263, DW_AT_low_pc($C$DW$L$_MSC_Open$6$B)
	.dwattr $C$DW$263, DW_AT_high_pc($C$DW$L$_MSC_Open$6$E)
	.dwendtag $C$DW$262

	.dwattr $C$DW$247, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$247, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$247, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$247

	.sect	".text"
	.global	_MSC_OpenFullspeed

$C$DW$264	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_OpenFullspeed")
	.dwattr $C$DW$264, DW_AT_low_pc(_MSC_OpenFullspeed)
	.dwattr $C$DW$264, DW_AT_high_pc(0x00)
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_MSC_OpenFullspeed")
	.dwattr $C$DW$264, DW_AT_external
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$264, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$264, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$264, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$264, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_msc.c",line 202,column 1,is_stmt,address _MSC_OpenFullspeed

	.dwfde $C$DW$CIE, _MSC_OpenFullspeed
$C$DW$265	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg17]
$C$DW$266	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbConfig")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_OpenFullspeed                                            *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (2 function parameters)                              *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_OpenFullspeed:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("usbConfig")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_usbConfig")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("looper")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_looper")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR1, dbl(*SP(#4))
        MOV XAR0, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 207,column 2,is_stmt
        MOV #0, *SP(#6) ; |207| 
	.dwpsn	file "src/csl_msc.c",line 208,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_msc.c",line 210,column 2,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L58,AC0 == #0 ; |210| 
                                        ; branchcc occurs ; |210| 
	.dwpsn	file "src/csl_msc.c",line 212,column 3,is_stmt
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_USB_init")
	.dwattr $C$DW$272, DW_AT_TI_call
        CALL #_USB_init ; |212| 
                                        ; call occurs [#_USB_init] ; |212| 
	.dwpsn	file "src/csl_msc.c",line 214,column 3,is_stmt
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_USB_open")
	.dwattr $C$DW$273, DW_AT_TI_call

        CALL #_USB_open ; |214| 
||      MOV #0, T0

                                        ; call occurs [#_USB_open] ; |214| 
        MOV dbl(*SP(#8)), XAR3
        MOV XAR0, dbl(*AR3)
	.dwpsn	file "src/csl_msc.c",line 215,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |215| 

        CMPU AC1 != AC0, TC1 ; |215| 
        BCC $C$L54,TC1 ; |215| 
                                        ; branchcc occurs ; |215| 
	.dwpsn	file "src/csl_msc.c",line 217,column 4,is_stmt
        MOV #-5, T0
        B $C$L60  ; |217| 
                                        ; branch occurs ; |217| 
$C$L54:    
	.dwpsn	file "src/csl_msc.c",line 220,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_USB_config")
	.dwattr $C$DW$274, DW_AT_TI_call
        CALL #_USB_config ; |220| 
                                        ; call occurs [#_USB_config] ; |220| 
        MOV T0, *SP(#6) ; |220| 
	.dwpsn	file "src/csl_msc.c",line 221,column 3,is_stmt

        MOV T0, AR1
||      MOV #0, AR2

        CMP AR2 == AR1, TC1 ; |221| 
        BCC $C$L60,!TC1 ; |221| 
                                        ; branchcc occurs ; |221| 
	.dwpsn	file "src/csl_msc.c",line 223,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 227,column 7,is_stmt
        MOV #0, AC0 ; |227| 
        MOV AC0, dbl(*SP(#10)) ; |227| 
        NOP
        NOP
	.dwpsn	file "src/csl_msc.c",line 227,column 19,is_stmt
        AMOV #90000, XAR3 ; |227| 
        MOV dbl(*SP(#10)), AC1 ; |227| 
        MOV XAR3, AC0
        CMPU AC1 >= AC0, TC1 ; |227| 
        BCC $C$L56,TC1 ; |227| 
                                        ; branchcc occurs ; |227| 
$C$L55:    
$C$DW$L$_MSC_OpenFullspeed$6$B:
	.dwpsn	file "src/csl_msc.c",line 227,column 35,is_stmt
        MOV dbl(*SP(#10)), AC0 ; |227| 
        ADD #1, AC0 ; |227| 
        MOV AC0, dbl(*SP(#10)) ; |227| 
        NOP
        NOP
	.dwpsn	file "src/csl_msc.c",line 227,column 19,is_stmt
        MOV XAR3, AC0
        MOV dbl(*SP(#10)), AC1 ; |227| 
        CMPU AC1 < AC0, TC1 ; |227| 
        BCC $C$L55,TC1 ; |227| 
                                        ; branchcc occurs ; |227| 
$C$DW$L$_MSC_OpenFullspeed$6$E:
$C$L56:    
	.dwpsn	file "src/csl_msc.c",line 230,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_USB_resetDev")
	.dwattr $C$DW$275, DW_AT_TI_call
        CALL #_USB_resetDev ; |230| 
                                        ; call occurs [#_USB_resetDev] ; |230| 
        MOV T0, *SP(#6) ; |230| 
	.dwpsn	file "src/csl_msc.c",line 231,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L57,AR1 == #0 ; |231| 
                                        ; branchcc occurs ; |231| 
	.dwpsn	file "src/csl_msc.c",line 233,column 4,is_stmt
        AMOV #$C$FSL1, XAR3 ; |233| 
        MOV XAR3, dbl(*SP(#0))
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_printf")
	.dwattr $C$DW$276, DW_AT_TI_call
        CALL #_printf ; |233| 
                                        ; call occurs [#_printf] ; |233| 
	.dwpsn	file "src/csl_msc.c",line 234,column 4,is_stmt
        MOV *SP(#6), T0 ; |234| 
        B $C$L60  ; |234| 
                                        ; branch occurs ; |234| 
$C$L57:    
	.dwpsn	file "src/csl_msc.c",line 237,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR0
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_MSC_Setup")
	.dwattr $C$DW$277, DW_AT_TI_call

        CALL #_MSC_Setup ; |237| 
||      MOV #0, T0

                                        ; call occurs [#_MSC_Setup] ; |237| 
        MOV T0, *SP(#6) ; |237| 
	.dwpsn	file "src/csl_msc.c",line 238,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV #64, T0 ; |238| 
        MOV dbl(*AR3), XAR0
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("_USB_setFullSpeedMode")
	.dwattr $C$DW$278, DW_AT_TI_call
        CALL #_USB_setFullSpeedMode ; |238| 
                                        ; call occurs [#_USB_setFullSpeedMode] ; |238| 
	.dwpsn	file "src/csl_msc.c",line 239,column 2,is_stmt
        B $C$L59  ; |239| 
                                        ; branch occurs ; |239| 
$C$L58:    
	.dwpsn	file "src/csl_msc.c",line 242,column 3,is_stmt
        MOV #-5, *SP(#6) ; |242| 
$C$L59:    
	.dwpsn	file "src/csl_msc.c",line 245,column 2,is_stmt
        MOV *SP(#6), T0 ; |245| 
$C$L60:    
	.dwpsn	file "src/csl_msc.c",line 246,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$280	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$280, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L55:1:1714639447")
	.dwattr $C$DW$280, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0xe3)
	.dwattr $C$DW$280, DW_AT_TI_end_line(0xe3)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_MSC_OpenFullspeed$6$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_MSC_OpenFullspeed$6$E)
	.dwendtag $C$DW$280

	.dwattr $C$DW$264, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$264, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$264, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$264

	.sect	".text"

$C$DW$282	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_Setup")
	.dwattr $C$DW$282, DW_AT_low_pc(_MSC_Setup)
	.dwattr $C$DW$282, DW_AT_high_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_MSC_Setup")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$282, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$282, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$282, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$282, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "src/csl_msc.c",line 298,column 1,is_stmt,address _MSC_Setup

	.dwfde $C$DW$CIE, _MSC_Setup
$C$DW$283	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg17]
$C$DW$284	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_Setup                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,   *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_Setup:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("mediaStatus")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_mediaStatus")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("initLun")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_initLun")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("eventMask")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("maxPktSize")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("usbEpConfig")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_usbEpConfig")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T0, *SP(#2) ; |298| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 307,column 2,is_stmt
        MOV #0, *SP(#7) ; |307| 
	.dwpsn	file "src/csl_msc.c",line 308,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_msc.c",line 310,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L78,AC0 == #0 ; |310| 
                                        ; branchcc occurs ; |310| 
	.dwpsn	file "src/csl_msc.c",line 313,column 3,is_stmt
        MOV *AR3(short(#4)), AR1 ; |313| 
        BCC $C$L61,AR1 == #0 ; |313| 
                                        ; branchcc occurs ; |313| 
	.dwpsn	file "src/csl_msc.c",line 315,column 4,is_stmt
        MOV *AR3(short(#4)), AR1 ; |315| 
        MOV dbl(*SP(#4)), XAR3
        SUB #1, AR1 ; |315| 
        MOV AR1, *AR3(#466) ; |315| 
$C$L61:    
	.dwpsn	file "src/csl_msc.c",line 317,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#4)) ; |317| 
	.dwpsn	file "src/csl_msc.c",line 320,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#8) ; |320| 
	.dwpsn	file "src/csl_msc.c",line 321,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#116) ; |321| 
	.dwpsn	file "src/csl_msc.c",line 324,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3

        MOV XAR2, dbl(*AR3)
||      AADD #112, AR2 ; |324| 

	.dwpsn	file "src/csl_msc.c",line 327,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#136))
	.dwpsn	file "src/csl_msc.c",line 328,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#10)), XAR3
        MOV XAR3, dbl(*AR2(#138))
	.dwpsn	file "src/csl_msc.c",line 329,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#2), AR1 ; |329| 
        MOV AR1, *AR3(#142) ; |329| 
	.dwpsn	file "src/csl_msc.c",line 332,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("_MSC_initCtrlDesc")
	.dwattr $C$DW$294, DW_AT_TI_call
        CALL #_MSC_initCtrlDesc ; |332| 
                                        ; call occurs [#_MSC_initCtrlDesc] ; |332| 
        MOV T0, *SP(#7) ; |332| 
	.dwpsn	file "src/csl_msc.c",line 333,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |333| 
                                        ; branchcc occurs ; |333| 
	.dwpsn	file "src/csl_msc.c",line 335,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 339,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#3)), AR1 ; |339| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(#65) ; |339| 
	.dwpsn	file "src/csl_msc.c",line 340,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(short(#2)), AR1 ; |340| 
        MOV dbl(*SP(#4)), XAR3
        MOV AR1, *AR3(#66) ; |340| 
	.dwpsn	file "src/csl_msc.c",line 343,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#8)), XAR3
        MOV XAR3, dbl(*AR2(#162))
	.dwpsn	file "src/csl_msc.c",line 344,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #148, T0 ; |344| 
        MOV dbl(*SP(#4)), XAR2
        AADD #16, AR3 ; |344| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |344| 
	.dwpsn	file "src/csl_msc.c",line 345,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #150, T0 ; |345| 
        MOV dbl(*SP(#4)), XAR2
        AADD #18, AR3 ; |345| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |345| 
	.dwpsn	file "src/csl_msc.c",line 346,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #152, T0 ; |346| 
        MOV dbl(*SP(#4)), XAR2
        AADD #20, AR3 ; |346| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |346| 
	.dwpsn	file "src/csl_msc.c",line 348,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #154, T0 ; |348| 
        MOV dbl(*SP(#4)), XAR2
        AADD #22, AR3 ; |348| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |348| 
	.dwpsn	file "src/csl_msc.c",line 349,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #156, T0 ; |349| 
        MOV dbl(*SP(#4)), XAR2
        AADD #24, AR3 ; |349| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |349| 
	.dwpsn	file "src/csl_msc.c",line 350,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #158, T0 ; |350| 
        MOV dbl(*SP(#4)), XAR2
        AADD #26, AR3 ; |350| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |350| 
	.dwpsn	file "src/csl_msc.c",line 351,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #160, T0 ; |351| 
        MOV dbl(*SP(#4)), XAR2
        AADD #28, AR3 ; |351| 
        MOV dbl(*AR3), dbl(*AR2(T0)) ; |351| 
	.dwpsn	file "src/csl_msc.c",line 354,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *+AR0(#148) ; |354| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("_MSC_initMscVal")
	.dwattr $C$DW$295, DW_AT_TI_call
        CALL #_MSC_initMscVal ; |354| 
                                        ; call occurs [#_MSC_initMscVal] ; |354| 
        MOV T0, *SP(#7) ; |354| 
	.dwpsn	file "src/csl_msc.c",line 355,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |355| 
                                        ; branchcc occurs ; |355| 
	.dwpsn	file "src/csl_msc.c",line 357,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 361,column 3,is_stmt
        MOV #61, *SP(#9) ; |361| 
	.dwpsn	file "src/csl_msc.c",line 365,column 3,is_stmt
        CMP *SP(#2) == #1, TC1 ; |365| 
        BCC $C$L62,!TC1 ; |365| 
                                        ; branchcc occurs ; |365| 
	.dwpsn	file "src/csl_msc.c",line 367,column 4,is_stmt
        MOV #512, *SP(#10) ; |367| 
	.dwpsn	file "src/csl_msc.c",line 368,column 3,is_stmt
        B $C$L63  ; |368| 
                                        ; branch occurs ; |368| 
$C$L62:    
	.dwpsn	file "src/csl_msc.c",line 371,column 4,is_stmt
        MOV #64, *SP(#10) ; |371| 
$C$L63:    
	.dwpsn	file "src/csl_msc.c",line 383,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#7), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$296, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |383| 
||      MOV #0, T0

                                        ; call occurs [#_USB_requestEndpt] ; |383| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#6)))
	.dwpsn	file "src/csl_msc.c",line 384,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#6))), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |384| 

        CMPU AC1 == AC0, TC1 ; |384| 
        BCC $C$L64,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 

        MOV #0, AR2
||      MOV *SP(#7), AR1 ; |384| 

        CMP AR2 == AR1, TC1 ; |384| 
        BCC $C$L65,TC1 ; |384| 
                                        ; branchcc occurs ; |384| 
$C$L64:    
	.dwpsn	file "src/csl_msc.c",line 386,column 4,is_stmt
        MOV #-1, T0
        B $C$L80  ; |386| 
                                        ; branch occurs ; |386| 
$C$L65:    
	.dwpsn	file "src/csl_msc.c",line 389,column 3,is_stmt
        MOV #0, *SP(#12) ; |389| 
	.dwpsn	file "src/csl_msc.c",line 390,column 3,is_stmt
        MOV #0, *SP(#13) ; |390| 
	.dwpsn	file "src/csl_msc.c",line 391,column 3,is_stmt
        MOV #0, *SP(#14) ; |391| 
	.dwpsn	file "src/csl_msc.c",line 392,column 3,is_stmt
        MOV #64, *SP(#15) ; |392| 
	.dwpsn	file "src/csl_msc.c",line 393,column 3,is_stmt
        MOV *SP(#9), AR1 ; |393| 
        MOV AR1, *SP(#16) ; |393| 
	.dwpsn	file "src/csl_msc.c",line 394,column 3,is_stmt
        MOV #0, *SP(#17) ; |394| 
	.dwpsn	file "src/csl_msc.c",line 395,column 3,is_stmt
        MOV #0, *SP(#18) ; |395| 
	.dwpsn	file "src/csl_msc.c",line 396,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#14)), AC0 ; |396| 
        MOV AC0, dbl(*SP(#20)) ; |396| 
	.dwpsn	file "src/csl_msc.c",line 398,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#12), XAR1
        MOV dbl(*AR3(short(#6))), XAR0
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$297, DW_AT_TI_call
        CALL #_USB_configEndpt ; |398| 
                                        ; call occurs [#_USB_configEndpt] ; |398| 
        MOV T0, *SP(#7) ; |398| 
	.dwpsn	file "src/csl_msc.c",line 402,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |402| 
                                        ; branchcc occurs ; |402| 
	.dwpsn	file "src/csl_msc.c",line 404,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 417,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#7), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$298, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |417| 
||      MOV #8, T0

                                        ; call occurs [#_USB_requestEndpt] ; |417| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(short(#2)))
	.dwpsn	file "src/csl_msc.c",line 418,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#2))), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |418| 

        CMPU AC1 == AC0, TC1 ; |418| 
        BCC $C$L66,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 

        MOV #0, AR2
||      MOV *SP(#7), AR1 ; |418| 

        CMP AR2 == AR1, TC1 ; |418| 
        BCC $C$L67,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 
$C$L66:    
	.dwpsn	file "src/csl_msc.c",line 420,column 4,is_stmt
        MOV #-1, T0
        B $C$L80  ; |420| 
                                        ; branch occurs ; |420| 
$C$L67:    
	.dwpsn	file "src/csl_msc.c",line 423,column 3,is_stmt
        MOV #0, *SP(#12) ; |423| 
	.dwpsn	file "src/csl_msc.c",line 424,column 3,is_stmt
        MOV #8, *SP(#13) ; |424| 
	.dwpsn	file "src/csl_msc.c",line 425,column 3,is_stmt
        MOV #0, *SP(#14) ; |425| 
	.dwpsn	file "src/csl_msc.c",line 426,column 3,is_stmt
        MOV #64, *SP(#15) ; |426| 
	.dwpsn	file "src/csl_msc.c",line 427,column 3,is_stmt
        MOV #32, *SP(#16) ; |427| 
	.dwpsn	file "src/csl_msc.c",line 428,column 3,is_stmt
        MOV #0, *SP(#17) ; |428| 
	.dwpsn	file "src/csl_msc.c",line 429,column 3,is_stmt
        MOV #0, *SP(#18) ; |429| 
	.dwpsn	file "src/csl_msc.c",line 430,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#14)), AC0 ; |430| 
        MOV AC0, dbl(*SP(#20)) ; |430| 
	.dwpsn	file "src/csl_msc.c",line 432,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#12), XAR1
        MOV dbl(*AR3(short(#2))), XAR0
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$299, DW_AT_TI_call
        CALL #_USB_configEndpt ; |432| 
                                        ; call occurs [#_USB_configEndpt] ; |432| 
        MOV T0, *SP(#7) ; |432| 
	.dwpsn	file "src/csl_msc.c",line 436,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |436| 
                                        ; branchcc occurs ; |436| 
	.dwpsn	file "src/csl_msc.c",line 438,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 442,column 3,is_stmt
        MOV #33, *SP(#9) ; |442| 
	.dwpsn	file "src/csl_msc.c",line 452,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#7), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$300, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |452| 
||      MOV #9, T0

                                        ; call occurs [#_USB_requestEndpt] ; |452| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#462))
	.dwpsn	file "src/csl_msc.c",line 453,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#462)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |453| 

        CMPU AC1 == AC0, TC1 ; |453| 
        BCC $C$L68,TC1 ; |453| 
                                        ; branchcc occurs ; |453| 

        MOV #0, AR2
||      MOV *SP(#7), AR1 ; |453| 

        CMP AR2 == AR1, TC1 ; |453| 
        BCC $C$L69,TC1 ; |453| 
                                        ; branchcc occurs ; |453| 
$C$L68:    
	.dwpsn	file "src/csl_msc.c",line 455,column 4,is_stmt
        MOV #-1, T0
        B $C$L80  ; |455| 
                                        ; branch occurs ; |455| 
$C$L69:    
	.dwpsn	file "src/csl_msc.c",line 458,column 3,is_stmt
        MOV #0, *SP(#12) ; |458| 
	.dwpsn	file "src/csl_msc.c",line 459,column 3,is_stmt
        MOV #9, *SP(#13) ; |459| 
	.dwpsn	file "src/csl_msc.c",line 460,column 3,is_stmt
        MOV #1, *SP(#14) ; |460| 
	.dwpsn	file "src/csl_msc.c",line 461,column 3,is_stmt
        MOV *SP(#10), AR1 ; |461| 
        MOV AR1, *SP(#15) ; |461| 
	.dwpsn	file "src/csl_msc.c",line 462,column 3,is_stmt
        MOV *SP(#9), AR1 ; |462| 
        MOV AR1, *SP(#16) ; |462| 
	.dwpsn	file "src/csl_msc.c",line 463,column 3,is_stmt
        MOV #0, *SP(#17) ; |463| 
	.dwpsn	file "src/csl_msc.c",line 464,column 3,is_stmt
        MOV #0, *SP(#18) ; |464| 
	.dwpsn	file "src/csl_msc.c",line 465,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |465| 
        MOV AC0, dbl(*SP(#20)) ; |465| 
	.dwpsn	file "src/csl_msc.c",line 467,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#12), XAR1
        MOV dbl(*AR3(#462)), XAR0
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$301, DW_AT_TI_call
        CALL #_USB_configEndpt ; |467| 
                                        ; call occurs [#_USB_configEndpt] ; |467| 
        MOV T0, *SP(#7) ; |467| 
	.dwpsn	file "src/csl_msc.c",line 471,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |471| 
                                        ; branchcc occurs ; |471| 
	.dwpsn	file "src/csl_msc.c",line 473,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 486,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#7), XAR1
        MOV dbl(*AR3), XAR0
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_USB_requestEndpt")
	.dwattr $C$DW$302, DW_AT_TI_call

        CALL #_USB_requestEndpt ; |486| 
||      MOV #2, T0

                                        ; call occurs [#_USB_requestEndpt] ; |486| 
        MOV dbl(*SP(#4)), XAR3
        MOV XAR0, dbl(*AR3(#464))
	.dwpsn	file "src/csl_msc.c",line 487,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#464)), XAR3

        MOV XAR3, AC0
||      MOV #0, AC1 ; |487| 

        CMPU AC1 == AC0, TC1 ; |487| 
        BCC $C$L70,TC1 ; |487| 
                                        ; branchcc occurs ; |487| 

        MOV #0, AR2
||      MOV *SP(#7), AR1 ; |487| 

        CMP AR2 == AR1, TC1 ; |487| 
        BCC $C$L71,TC1 ; |487| 
                                        ; branchcc occurs ; |487| 
$C$L70:    
	.dwpsn	file "src/csl_msc.c",line 489,column 4,is_stmt
        MOV #-1, T0
        B $C$L80  ; |489| 
                                        ; branch occurs ; |489| 
$C$L71:    
	.dwpsn	file "src/csl_msc.c",line 492,column 3,is_stmt
        MOV #0, *SP(#12) ; |492| 
	.dwpsn	file "src/csl_msc.c",line 493,column 3,is_stmt
        MOV #2, *SP(#13) ; |493| 
	.dwpsn	file "src/csl_msc.c",line 494,column 3,is_stmt
        MOV #1, *SP(#14) ; |494| 
	.dwpsn	file "src/csl_msc.c",line 495,column 3,is_stmt
        MOV *SP(#10), AR1 ; |495| 
        MOV AR1, *SP(#15) ; |495| 
	.dwpsn	file "src/csl_msc.c",line 496,column 3,is_stmt
        MOV #32, *SP(#16) ; |496| 
	.dwpsn	file "src/csl_msc.c",line 497,column 3,is_stmt
        MOV #0, *SP(#17) ; |497| 
	.dwpsn	file "src/csl_msc.c",line 498,column 3,is_stmt
        MOV #0, *SP(#18) ; |498| 
	.dwpsn	file "src/csl_msc.c",line 499,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#12)), AC0 ; |499| 
        MOV AC0, dbl(*SP(#20)) ; |499| 
	.dwpsn	file "src/csl_msc.c",line 501,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        AMAR *SP(#12), XAR1
        MOV dbl(*AR3(#464)), XAR0
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("_USB_configEndpt")
	.dwattr $C$DW$303, DW_AT_TI_call
        CALL #_USB_configEndpt ; |501| 
                                        ; call occurs [#_USB_configEndpt] ; |501| 
        MOV T0, *SP(#7) ; |501| 
	.dwpsn	file "src/csl_msc.c",line 505,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |505| 
                                        ; branchcc occurs ; |505| 
	.dwpsn	file "src/csl_msc.c",line 507,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 511,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#10))
	.dwpsn	file "src/csl_msc.c",line 512,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(short(#2))), XAR3
        MOV XAR3, dbl(*AR2(#12))
	.dwpsn	file "src/csl_msc.c",line 513,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#464)), XAR3
        MOV XAR3, dbl(*AR2(#14))
	.dwpsn	file "src/csl_msc.c",line 514,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*AR3(#462)), XAR3
        MOV XAR3, dbl(*AR2(#16))
	.dwpsn	file "src/csl_msc.c",line 515,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, AC0 ; |515| 
        MOV AC0, dbl(*AR3(#18))
	.dwpsn	file "src/csl_msc.c",line 518,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR2), XAR2
        MOV dbl(*AR3(short(#6))), XAR3
        MOV XAR3, dbl(*AR2(#196))
	.dwpsn	file "src/csl_msc.c",line 519,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR2), XAR2
        MOV dbl(*AR3(short(#2))), XAR3
        MOV XAR3, dbl(*AR2(#198))
	.dwpsn	file "src/csl_msc.c",line 520,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR2), XAR2
        MOV dbl(*AR3(#464)), XAR3
        MOV XAR3, dbl(*AR2(#200))
	.dwpsn	file "src/csl_msc.c",line 521,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR2), XAR2
        MOV dbl(*AR3(#462)), XAR3
        MOV XAR3, dbl(*AR2(#202))
	.dwpsn	file "src/csl_msc.c",line 522,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR3
        MOV AC0, dbl(*AR3(#204))
	.dwpsn	file "src/csl_msc.c",line 525,column 7,is_stmt
        MOV #0, *SP(#8) ; |525| 
	.dwpsn	file "src/csl_msc.c",line 525,column 20,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#8), AR2 ; |525| 
        MOV *AR3(#466), AR1 ; |525| 
        CMPU AR2 > AR1, TC1 ; |525| 
        BCC $C$L77,TC1 ; |525| 
                                        ; branchcc occurs ; |525| 
$C$L72:    
$C$DW$L$_MSC_Setup$26$B:
	.dwpsn	file "src/csl_msc.c",line 527,column 7,is_stmt
        MOV dbl(*AR3(#154)), AC0 ; |527| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_TI_call
	.dwattr $C$DW$304, DW_AT_TI_indirect

        CALL AC0  ; |527| 
||      MOV AR2, T0 ; |527| 

                                        ; call occurs [AC0] ; |527| 
        MOV T0, *SP(#6) ; |527| 
	.dwpsn	file "src/csl_msc.c",line 529,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#8), T0 ; |529| 
        MOV dbl(*AR3(#160)), AC0 ; |529| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_call
	.dwattr $C$DW$305, DW_AT_TI_indirect
        CALL AC0  ; |529| 
                                        ; call occurs [AC0] ; |529| 
        MOV dbl(*SP(#4)), XAR3
        SUB #1, AC0, AC1 ; |529| 
        MPYMK *SP(#8), #62, AC0 ; |529| 
        MOV AC0, AR1 ; |529| 
        AADD AR1, AR3 ; |529| 
        MOV AC1, dbl(*AR3(#216)) ; |529| 
	.dwpsn	file "src/csl_msc.c",line 531,column 7,is_stmt
        CMP *SP(#6) == #1, TC1 ; |531| 
        BCC $C$L73,!TC1 ; |531| 
                                        ; branchcc occurs ; |531| 
$C$DW$L$_MSC_Setup$26$E:
$C$DW$L$_MSC_Setup$27$B:
	.dwpsn	file "src/csl_msc.c",line 533,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#8), #62, AC0 ; |533| 
        MOV AC0, AR1 ; |533| 
        AADD AR1, AR3 ; |533| 
        MOV #1, *AR3(#223) ; |533| 
	.dwpsn	file "src/csl_msc.c",line 535,column 4,is_stmt
        B $C$L76  ; |535| 
                                        ; branch occurs ; |535| 
$C$DW$L$_MSC_Setup$27$E:
$C$L73:    
$C$DW$L$_MSC_Setup$28$B:
	.dwpsn	file "src/csl_msc.c",line 536,column 12,is_stmt
        CMP *SP(#6) == #4, TC1 ; |536| 
        BCC $C$L74,!TC1 ; |536| 
                                        ; branchcc occurs ; |536| 
$C$DW$L$_MSC_Setup$28$E:
$C$DW$L$_MSC_Setup$29$B:
	.dwpsn	file "src/csl_msc.c",line 538,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#8), #62, AC0 ; |538| 
        MOV AC0, AR1 ; |538| 
        AADD AR1, AR3 ; |538| 
        MOV #8, *AR3(#223) ; |538| 
	.dwpsn	file "src/csl_msc.c",line 539,column 5,is_stmt
        MOV #-11, *SP(#7) ; |539| 
	.dwpsn	file "src/csl_msc.c",line 540,column 4,is_stmt
        B $C$L76  ; |540| 
                                        ; branch occurs ; |540| 
$C$DW$L$_MSC_Setup$29$E:
$C$L74:    
$C$DW$L$_MSC_Setup$30$B:
	.dwpsn	file "src/csl_msc.c",line 541,column 12,is_stmt
        CMP *SP(#6) == #2, TC1 ; |541| 
        BCC $C$L75,!TC1 ; |541| 
                                        ; branchcc occurs ; |541| 
$C$DW$L$_MSC_Setup$30$E:
$C$DW$L$_MSC_Setup$31$B:
	.dwpsn	file "src/csl_msc.c",line 543,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#8), #62, AC0 ; |543| 
        MOV AC0, AR1 ; |543| 
        AADD AR1, AR3 ; |543| 
        MOV #0, *AR3(#223) ; |543| 
	.dwpsn	file "src/csl_msc.c",line 544,column 5,is_stmt
        MOV #-12, *SP(#7) ; |544| 
	.dwpsn	file "src/csl_msc.c",line 545,column 4,is_stmt
        B $C$L76  ; |545| 
                                        ; branch occurs ; |545| 
$C$DW$L$_MSC_Setup$31$E:
$C$L75:    
$C$DW$L$_MSC_Setup$32$B:
	.dwpsn	file "src/csl_msc.c",line 550,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MPYMK *SP(#8), #62, AC0 ; |550| 
        MOV AC0, AR1 ; |550| 
        AADD AR1, AR3 ; |550| 
        MOV #0, *AR3(#223) ; |550| 
$C$DW$L$_MSC_Setup$32$E:
$C$L76:    
$C$DW$L$_MSC_Setup$33$B:
	.dwpsn	file "src/csl_msc.c",line 525,column 59,is_stmt
        ADD #1, *SP(#8) ; |525| 
	.dwpsn	file "src/csl_msc.c",line 525,column 20,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#8), AR2 ; |525| 
        MOV *AR3(#466), AR1 ; |525| 
        CMPU AR2 <= AR1, TC1 ; |525| 
        BCC $C$L72,TC1 ; |525| 
                                        ; branchcc occurs ; |525| 
$C$DW$L$_MSC_Setup$33$E:
$C$L77:    
	.dwpsn	file "src/csl_msc.c",line 555,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
        AADD #10, AR1 ; |555| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$306, DW_AT_TI_call

        CALL #_USB_setParams ; |555| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |555| 
        MOV T0, *SP(#7) ; |555| 
	.dwpsn	file "src/csl_msc.c",line 556,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L80,AR1 != #0 ; |556| 
                                        ; branchcc occurs ; |556| 
	.dwpsn	file "src/csl_msc.c",line 558,column 4,is_stmt
	.dwpsn	file "src/csl_msc.c",line 561,column 3,is_stmt
        BCC $C$L79,AR1 != #0 ; |561| 
                                        ; branchcc occurs ; |561| 
	.dwpsn	file "src/csl_msc.c",line 564,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("_USB_connectDev")
	.dwattr $C$DW$307, DW_AT_TI_call
        CALL #_USB_connectDev ; |564| 
                                        ; call occurs [#_USB_connectDev] ; |564| 
	.dwpsn	file "src/csl_msc.c",line 566,column 2,is_stmt
        B $C$L79  ; |566| 
                                        ; branch occurs ; |566| 
$C$L78:    
	.dwpsn	file "src/csl_msc.c",line 569,column 3,is_stmt
        MOV #-5, *SP(#7) ; |569| 
$C$L79:    
	.dwpsn	file "src/csl_msc.c",line 572,column 2,is_stmt
        MOV *SP(#7), T0 ; |572| 
$C$L80:    
	.dwpsn	file "src/csl_msc.c",line 573,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$309	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$309, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L72:1:1714639447")
	.dwattr $C$DW$309, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$309, DW_AT_TI_begin_line(0x20d)
	.dwattr $C$DW$309, DW_AT_TI_end_line(0x228)
$C$DW$310	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$310, DW_AT_low_pc($C$DW$L$_MSC_Setup$26$B)
	.dwattr $C$DW$310, DW_AT_high_pc($C$DW$L$_MSC_Setup$26$E)
$C$DW$311	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$311, DW_AT_low_pc($C$DW$L$_MSC_Setup$30$B)
	.dwattr $C$DW$311, DW_AT_high_pc($C$DW$L$_MSC_Setup$30$E)
$C$DW$312	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$312, DW_AT_low_pc($C$DW$L$_MSC_Setup$28$B)
	.dwattr $C$DW$312, DW_AT_high_pc($C$DW$L$_MSC_Setup$28$E)
$C$DW$313	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$313, DW_AT_low_pc($C$DW$L$_MSC_Setup$27$B)
	.dwattr $C$DW$313, DW_AT_high_pc($C$DW$L$_MSC_Setup$27$E)
$C$DW$314	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$314, DW_AT_low_pc($C$DW$L$_MSC_Setup$29$B)
	.dwattr $C$DW$314, DW_AT_high_pc($C$DW$L$_MSC_Setup$29$E)
$C$DW$315	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$315, DW_AT_low_pc($C$DW$L$_MSC_Setup$31$B)
	.dwattr $C$DW$315, DW_AT_high_pc($C$DW$L$_MSC_Setup$31$E)
$C$DW$316	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$316, DW_AT_low_pc($C$DW$L$_MSC_Setup$32$B)
	.dwattr $C$DW$316, DW_AT_high_pc($C$DW$L$_MSC_Setup$32$E)
$C$DW$317	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$317, DW_AT_low_pc($C$DW$L$_MSC_Setup$33$B)
	.dwattr $C$DW$317, DW_AT_high_pc($C$DW$L$_MSC_Setup$33$E)
	.dwendtag $C$DW$309

	.dwattr $C$DW$282, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$282, DW_AT_TI_end_line(0x23d)
	.dwattr $C$DW$282, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$282

	.sect	".text"
	.global	_MSC_Close

$C$DW$318	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_Close")
	.dwattr $C$DW$318, DW_AT_low_pc(_MSC_Close)
	.dwattr $C$DW$318, DW_AT_high_pc(0x00)
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_MSC_Close")
	.dwattr $C$DW$318, DW_AT_external
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$318, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$318, DW_AT_TI_begin_line(0x26b)
	.dwattr $C$DW$318, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$318, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_msc.c",line 620,column 1,is_stmt,address _MSC_Close

	.dwfde $C$DW$CIE, _MSC_Close
$C$DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_Close                                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,   *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_Close:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$320	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$321	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$322	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 624,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 625,column 2,is_stmt
        MOV #0, *SP(#4) ; |625| 
	.dwpsn	file "src/csl_msc.c",line 627,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L81,AC0 == #0 ; |627| 
                                        ; branchcc occurs ; |627| 
	.dwpsn	file "src/csl_msc.c",line 629,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_USB_disconnectDev")
	.dwattr $C$DW$323, DW_AT_TI_call
        CALL #_USB_disconnectDev ; |629| 
                                        ; call occurs [#_USB_disconnectDev] ; |629| 
        MOV T0, *SP(#4) ; |629| 
	.dwpsn	file "src/csl_msc.c",line 630,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, AC0 ; |630| 
        MOV AC0, dbl(*AR3)
	.dwpsn	file "src/csl_msc.c",line 631,column 2,is_stmt
        B $C$L82  ; |631| 
                                        ; branch occurs ; |631| 
$C$L81:    
	.dwpsn	file "src/csl_msc.c",line 634,column 3,is_stmt
        MOV #-5, *SP(#4) ; |634| 
$C$L82:    
	.dwpsn	file "src/csl_msc.c",line 637,column 2,is_stmt
        MOV *SP(#4), T0 ; |637| 
	.dwpsn	file "src/csl_msc.c",line 638,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$318, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$318, DW_AT_TI_end_line(0x27e)
	.dwattr $C$DW$318, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$318

	.sect	".text"
	.global	_MSC_SetLunAttr

$C$DW$325	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_SetLunAttr")
	.dwattr $C$DW$325, DW_AT_low_pc(_MSC_SetLunAttr)
	.dwattr $C$DW$325, DW_AT_high_pc(0x00)
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_MSC_SetLunAttr")
	.dwattr $C$DW$325, DW_AT_external
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$325, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$325, DW_AT_TI_begin_line(0x2b4)
	.dwattr $C$DW$325, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$325, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_msc.c",line 695,column 1,is_stmt,address _MSC_SetLunAttr

	.dwfde $C$DW$CIE, _MSC_SetLunAttr
$C$DW$326	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg17]
$C$DW$327	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunHandle")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_lunHandle")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg19]
$C$DW$328	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunNum")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_SetLunAttr                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,   *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (13 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_SetLunAttr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$329	.dwtag  DW_TAG_variable, DW_AT_name("pAppClassHandle")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_pAppClassHandle")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$330	.dwtag  DW_TAG_variable, DW_AT_name("lunHandle")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_lunHandle")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$331	.dwtag  DW_TAG_variable, DW_AT_name("lunNum")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$332	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$333	.dwtag  DW_TAG_variable, DW_AT_name("pMscObj")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_pMscObj")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$334	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$335	.dwtag  DW_TAG_variable, DW_AT_name("copyCntdst")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_copyCntdst")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$336	.dwtag  DW_TAG_variable, DW_AT_name("copyCntsrc")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_copyCntsrc")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T0, *SP(#4) ; |695| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 702,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_msc.c",line 703,column 2,is_stmt
        AMAR *+AR3(#148) ; |703| 
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_msc.c",line 704,column 2,is_stmt
        MOV #0, *SP(#10) ; |704| 
	.dwpsn	file "src/csl_msc.c",line 706,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L89,AC0 == #0 ; |706| 
                                        ; branchcc occurs ; |706| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L89,AC0 == #0 ; |706| 
                                        ; branchcc occurs ; |706| 
	.dwpsn	file "src/csl_msc.c",line 709,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV dbl(*SP(#2)), XAR2
        MPYMK *SP(#4), #62, AC0 ; |709| 
        MOV AC0, AR1 ; |709| 

        MOV *AR2(short(#4)), AR1 ; |709| 
||      AADD AR1, AR3 ; |709| 

        MOV AR1, *AR3(#74) ; |709| 
	.dwpsn	file "src/csl_msc.c",line 710,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |710| 
        MOV AC0, AR1 ; |710| 
        MOV dbl(*SP(#2)), XAR2
        AADD AR1, AR3 ; |710| 
        MOV *AR2(#30), AR1 ; |710| 
        MOV AR1, *AR3(#76) ; |710| 
	.dwpsn	file "src/csl_msc.c",line 712,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |712| 
        MOV AC0, AR1 ; |712| 
        MOV dbl(*AR2(short(#2))), AC0 ; |712| 

        SUB #1, AC0 ; |712| 
||      AADD AR1, AR3 ; |712| 

        MOV AC0, dbl(*AR3(#68)) ; |712| 
	.dwpsn	file "src/csl_msc.c",line 713,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |713| 
        MOV AC0, AR1 ; |713| 
        AADD AR1, AR3 ; |713| 
        MOV #0, *AR3(#75) ; |713| 
	.dwpsn	file "src/csl_msc.c",line 714,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |714| 
        MOV AC0, AR1 ; |714| 
        MOV dbl(*SP(#2)), XAR2
        AADD AR1, AR3 ; |714| 
        AADD #72, AR3 ; |714| 
        MOV dbl(*AR2), dbl(*AR3) ; |714| 
	.dwpsn	file "src/csl_msc.c",line 717,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |717| 
        MOV AC0, AR1 ; |717| 
        AADD AR1, AR3 ; |717| 
        MOV #96, *AR3(#18) ; |717| 
	.dwpsn	file "src/csl_msc.c",line 718,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |718| 
        MOV AC0, AR1 ; |718| 
        AADD AR1, AR3 ; |718| 
        MOV #0, *AR3(#19) ; |718| 
	.dwpsn	file "src/csl_msc.c",line 719,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |719| 
        MOV AC0, AR1 ; |719| 
        AADD AR1, AR3 ; |719| 
        MOV #512, *AR3(#21) ; |719| 
	.dwpsn	file "src/csl_msc.c",line 720,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |720| 
        MOV AC0, AR1 ; |720| 
        AADD AR1, AR3 ; |720| 
        MOV #92, *AR3(#22) ; |720| 
	.dwpsn	file "src/csl_msc.c",line 721,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |721| 
        MOV AC0, AR1 ; |721| 
        AADD AR1, AR3 ; |721| 
        MOV #0, *AR3(#23) ; |721| 
	.dwpsn	file "src/csl_msc.c",line 724,column 3,is_stmt
        MOV #0, *SP(#12) ; |724| 
	.dwpsn	file "src/csl_msc.c",line 725,column 7,is_stmt
        MOV #6, *SP(#11) ; |725| 
	.dwpsn	file "src/csl_msc.c",line 726,column 7,is_stmt
        MOV #30, AR2 ; |726| 
        MOV *SP(#11), AR1 ; |726| 
        CMPU AR1 >= AR2, TC1 ; |726| 
        BCC $C$L84,TC1 ; |726| 
                                        ; branchcc occurs ; |726| 
$C$L83:    
$C$DW$L$_MSC_SetLunAttr$4$B:
	.dwpsn	file "src/csl_msc.c",line 728,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), AR1 ; |728| 
        MPYMK *SP(#4), #62, AC0 ; |728| 

        MOV AC0, AR1 ; |728| 
||      AADD AR1, AR3 ; |728| 

        MOV *AR3(short(#5)), AR2 ; |728| 
        MOV dbl(*SP(#8)), XAR3

        MOV *SP(#11), AR1 ; |728| 
||      AADD AR1, AR3 ; |728| 

        AADD AR1, AR3 ; |728| 
        MOV AR2, *AR3(#18) ; |728| 
	.dwpsn	file "src/csl_msc.c",line 726,column 41,is_stmt
        ADD #1, *SP(#11) ; |726| 
        ADD #1, *SP(#12) ; |726| 
	.dwpsn	file "src/csl_msc.c",line 726,column 7,is_stmt
        MOV #30, AR2 ; |726| 
        MOV *SP(#11), AR1 ; |726| 
        CMPU AR1 < AR2, TC1 ; |726| 
        BCC $C$L83,TC1 ; |726| 
                                        ; branchcc occurs ; |726| 
$C$DW$L$_MSC_SetLunAttr$4$E:
$C$L84:    
	.dwpsn	file "src/csl_msc.c",line 733,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |733| 
        MOV AC0, AR1 ; |733| 
        AADD AR1, AR3 ; |733| 
        MOV #0, *AR3(#48) ; |733| 
	.dwpsn	file "src/csl_msc.c",line 735,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |735| 
        MOV AC0, AR1 ; |735| 
        AADD AR1, AR3 ; |735| 
        MOV #8194, *AR3(#49) ; |735| 
	.dwpsn	file "src/csl_msc.c",line 737,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |737| 
        MOV AC0, AR1 ; |737| 
        AADD AR1, AR3 ; |737| 
        MOV #14338, *AR3(#50) ; |737| 
	.dwpsn	file "src/csl_msc.c",line 739,column 8,is_stmt
        MOV #33, *SP(#11) ; |739| 
	.dwpsn	file "src/csl_msc.c",line 740,column 8,is_stmt
        MOV #50, AR2 ; |740| 
        MOV *SP(#11), AR1 ; |740| 
        CMPU AR1 >= AR2, TC1 ; |740| 
        BCC $C$L86,TC1 ; |740| 
                                        ; branchcc occurs ; |740| 
$C$L85:    
$C$DW$L$_MSC_SetLunAttr$6$B:
	.dwpsn	file "src/csl_msc.c",line 742,column 4,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |742| 
        MOV AC0, AR1 ; |742| 

        MOV *SP(#11), AR1 ; |742| 
||      AADD AR1, AR3 ; |742| 

        AADD AR1, AR3 ; |742| 
        MOV #0, *AR3(#18) ; |742| 
	.dwpsn	file "src/csl_msc.c",line 740,column 42,is_stmt
        ADD #1, *SP(#11) ; |740| 
	.dwpsn	file "src/csl_msc.c",line 740,column 8,is_stmt
        MOV *SP(#11), AR1 ; |740| 
        CMPU AR1 < AR2, TC1 ; |740| 
        BCC $C$L85,TC1 ; |740| 
                                        ; branchcc occurs ; |740| 
$C$DW$L$_MSC_SetLunAttr$6$E:
$C$L86:    
	.dwpsn	file "src/csl_msc.c",line 747,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |747| 
        MOV AC0, AR1 ; |747| 
        AADD AR1, AR3 ; |747| 
        MOV *AR3(#74), AR1 ; |747| 
        BCC $C$L87,AR1 == #0 ; |747| 
                                        ; branchcc occurs ; |747| 
	.dwpsn	file "src/csl_msc.c",line 749,column 4,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |749| 
        MOV AC0, AR1 ; |749| 
        AADD AR1, AR3 ; |749| 
        MOV #32768, *AR3(#20) ; |749| 
	.dwpsn	file "src/csl_msc.c",line 750,column 3,is_stmt
        B $C$L88  ; |750| 
                                        ; branch occurs ; |750| 
$C$L87:    
	.dwpsn	file "src/csl_msc.c",line 753,column 4,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |753| 
        MOV AC0, AR1 ; |753| 
        AADD AR1, AR3 ; |753| 
        MOV #0, *AR3(#20) ; |753| 
$C$L88:    
	.dwpsn	file "src/csl_msc.c",line 755,column 3,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |755| 
        MOV AC0, AR1 ; |755| 
        AADD AR1, AR3 ; |755| 
        MOV #0, *AR3(#78) ; |755| 
	.dwpsn	file "src/csl_msc.c",line 756,column 2,is_stmt
        B $C$L90  ; |756| 
                                        ; branch occurs ; |756| 
$C$L89:    
	.dwpsn	file "src/csl_msc.c",line 759,column 3,is_stmt
        MOV #-5, *SP(#10) ; |759| 
$C$L90:    
	.dwpsn	file "src/csl_msc.c",line 762,column 2,is_stmt
        MOV *SP(#10), T0 ; |762| 
	.dwpsn	file "src/csl_msc.c",line 763,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$338	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$338, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L85:1:1714639447")
	.dwattr $C$DW$338, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$338, DW_AT_TI_begin_line(0x2e3)
	.dwattr $C$DW$338, DW_AT_TI_end_line(0x2e8)
$C$DW$339	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$339, DW_AT_low_pc($C$DW$L$_MSC_SetLunAttr$6$B)
	.dwattr $C$DW$339, DW_AT_high_pc($C$DW$L$_MSC_SetLunAttr$6$E)
	.dwendtag $C$DW$338


$C$DW$340	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$340, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L83:1:1714639447")
	.dwattr $C$DW$340, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$340, DW_AT_TI_begin_line(0x2d5)
	.dwattr $C$DW$340, DW_AT_TI_end_line(0x2da)
$C$DW$341	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$341, DW_AT_low_pc($C$DW$L$_MSC_SetLunAttr$4$B)
	.dwattr $C$DW$341, DW_AT_high_pc($C$DW$L$_MSC_SetLunAttr$4$E)
	.dwendtag $C$DW$340

	.dwattr $C$DW$325, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$325, DW_AT_TI_end_line(0x2fb)
	.dwattr $C$DW$325, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$325

	.sect	".text"
	.global	_MSC_Ctrl

$C$DW$342	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_Ctrl")
	.dwattr $C$DW$342, DW_AT_low_pc(_MSC_Ctrl)
	.dwattr $C$DW$342, DW_AT_high_pc(0x00)
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_MSC_Ctrl")
	.dwattr $C$DW$342, DW_AT_external
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$342, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$342, DW_AT_TI_begin_line(0x32c)
	.dwattr $C$DW$342, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$342, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "src/csl_msc.c",line 813,column 1,is_stmt,address _MSC_Ctrl

	.dwfde $C$DW$CIE, _MSC_Ctrl
$C$DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMSC")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_Ctrl                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,T2,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,*
;*                        AR4,XAR4,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL    *
;*   Save On Entry Regs : T2                                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (14 local values)                                    *
;*                        (1 register save area)                               *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_Ctrl:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        AADD #-14, SP
	.dwcfi	cfa_offset, 16
$C$DW$344	.dwtag  DW_TAG_variable, DW_AT_name("pMSC")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$345	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$346	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$347	.dwtag  DW_TAG_variable, DW_AT_name("reqHandlerRet")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_reqHandlerRet")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$348	.dwtag  DW_TAG_variable, DW_AT_name("usbCtrlEvents")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_usbCtrlEvents")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$349	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpIn")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_hCtrlEpIn")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$350	.dwtag  DW_TAG_variable, DW_AT_name("hCtrlEpOut")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_hCtrlEpOut")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$351	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$352	.dwtag  DW_TAG_variable, DW_AT_name("request")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 823,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L91,AC0 != #0 ; |823| 
                                        ; branchcc occurs ; |823| 
	.dwpsn	file "src/csl_msc.c",line 825,column 3,is_stmt
        MOV #-5, T0
        B $C$L104 ; |825| 
                                        ; branch occurs ; |825| 
$C$L91:    
	.dwpsn	file "src/csl_msc.c",line 828,column 5,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 829,column 5,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |829| 

	.dwpsn	file "src/csl_msc.c",line 830,column 5,is_stmt
        MOV dbl(*AR3), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_msc.c",line 831,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(short(#4))), XAR3
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_msc.c",line 832,column 5,is_stmt
        MOV #0, *SP(#6) ; |832| 
	.dwpsn	file "src/csl_msc.c",line 834,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_MSC_reqUnknown >> 16) << #16, AC0 ; |834| 
        OR #(_MSC_reqUnknown & 0xffff), AC0, AC0 ; |834| 
        MOV AC0, dbl(*AR3(#138)) ; |834| 
	.dwpsn	file "src/csl_msc.c",line 836,column 5,is_stmt
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#10)), XAR0
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$353, DW_AT_TI_call
        CALL #_USB_getEvents ; |836| 
                                        ; call occurs [#_USB_getEvents] ; |836| 
        AMAR *SP(#12), XAR1
        MOV dbl(*SP(#8)), XAR0
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$354, DW_AT_TI_call

        CALL #_USB_getEvents ; |836| 
||      MOV T0, T2 ; |836| 

                                        ; call occurs [#_USB_getEvents] ; |836| 
        OR T2, T0 ; |836| 
        MOV T0, *SP(#7) ; |836| 
	.dwpsn	file "src/csl_msc.c",line 841,column 2,is_stmt
        BTST #0, *SP(#7), TC1 ; |841| 
        BCC $C$L92,!TC1 ; |841| 
                                        ; branchcc occurs ; |841| 
	.dwpsn	file "src/csl_msc.c",line 843,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |843| 
	.dwpsn	file "src/csl_msc.c",line 845,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("_USB_abortAllTransaction")
	.dwattr $C$DW$355, DW_AT_TI_call
        CALL #_USB_abortAllTransaction ; |845| 
                                        ; call occurs [#_USB_abortAllTransaction] ; |845| 
        OR *SP(#12), T0, AR1 ; |845| 
        MOV AR1, *SP(#12) ; |845| 
	.dwpsn	file "src/csl_msc.c",line 847,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#2)), XAR3
        AADD #8, AR1 ; |847| 
        MOV dbl(*AR3), XAR0
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("_USB_setParams")
	.dwattr $C$DW$356, DW_AT_TI_call

        CALL #_USB_setParams ; |847| 
||      MOV #0, T0

                                        ; call occurs [#_USB_setParams] ; |847| 
        OR *SP(#12), T0, AR1 ; |847| 
        MOV AR1, *SP(#12) ; |847| 
	.dwpsn	file "src/csl_msc.c",line 850,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#114) ; |850| 
$C$L92:    
	.dwpsn	file "src/csl_msc.c",line 853,column 2,is_stmt
        BTST #2, *SP(#7), TC1 ; |853| 
        BCC $C$L93,!TC1 ; |853| 
                                        ; branchcc occurs ; |853| 
	.dwpsn	file "src/csl_msc.c",line 855,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #1, *AR3(short(#6)) ; |855| 
$C$L93:    
	.dwpsn	file "src/csl_msc.c",line 858,column 2,is_stmt
        BTST #3, *SP(#7), TC1 ; |858| 
        BCC $C$L94,!TC1 ; |858| 
                                        ; branchcc occurs ; |858| 
	.dwpsn	file "src/csl_msc.c",line 860,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(short(#6)) ; |860| 
$C$L94:    
	.dwpsn	file "src/csl_msc.c",line 865,column 3,is_stmt
        MOV *SP(#7), AR1 ; |865| 

        AND #0x0010, AR1, AR1 ; |865| 
||      MOV #16, AR2 ; |865| 

        CMPU AR1 != AR2, TC1 ; |865| 
        BCC $C$L103,TC1 ; |865| 
                                        ; branchcc occurs ; |865| 
	.dwpsn	file "src/csl_msc.c",line 868,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3), XAR0
        AADD #18, AR1 ; |868| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("_USB_getSetupPacket")
	.dwattr $C$DW$357, DW_AT_TI_call

        CALL #_USB_getSetupPacket ; |868| 
||      MOV #0, T0

                                        ; call occurs [#_USB_getSetupPacket] ; |868| 
        OR *SP(#12), T0, AR1 ; |868| 
        MOV AR1, *SP(#12) ; |868| 
	.dwpsn	file "src/csl_msc.c",line 870,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#4)), XAR3
        MOV *AR2(#19), AC0 ; |870| 
        SFTL AC0, #8, AC0 ; |870| 
        AND #0xf000, AC0, AR1 ; |870| 
        OR *AR3(#20), AR1, AR1 ; |870| 
        MOV AR1, *SP(#13) ; |870| 
	.dwpsn	file "src/csl_msc.c",line 874,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#136)), XAR0
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_MSC_lookupReqHandler")
	.dwattr $C$DW$358, DW_AT_TI_call

        CALL #_MSC_lookupReqHandler ; |874| 
||      MOV AR1, T0

                                        ; call occurs [#_MSC_lookupReqHandler] ; |874| 
        MOV dbl(*SP(#4)), XAR3
        MOV AC0, dbl(*AR3(#138)) ; |874| 
	.dwpsn	file "src/csl_msc.c",line 877,column 6,is_stmt
        MOV *SP(#6), AR1 ; |877| 
        BCC $C$L100,AR1 != #0 ; |877| 
                                        ; branchcc occurs ; |877| 
	.dwpsn	file "src/csl_msc.c",line 879,column 4,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*AR3(#138)), AC0 ; |879| 
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*SP(#0)), XAR4
        AADD #18, AR1 ; |879| 
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#10)), XAR3
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_call
	.dwattr $C$DW$359, DW_AT_TI_indirect
        CALL AC0  ; |879| 
                                        ; call occurs [AC0] ; |879| 
        MOV T0, *SP(#6) ; |879| 
	.dwpsn	file "src/csl_msc.c",line 883,column 3,is_stmt
        B $C$L100 ; |883| 
                                        ; branch occurs ; |883| 
$C$L95:    
	.dwpsn	file "src/csl_msc.c",line 888,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
        AMOV #0, XAR1 ; |888| 
        MOV #0, T0
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$360, DW_AT_TI_call

        CALL #_USB_postTransaction ; |888| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |888| 
        OR *SP(#12), T0, AR1 ; |888| 
        MOV AR1, *SP(#12) ; |888| 
	.dwpsn	file "src/csl_msc.c",line 890,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_MSC_reqUnknown >> 16) << #16, AC0 ; |890| 
        OR #(_MSC_reqUnknown & 0xffff), AC0, AC0 ; |890| 
        MOV AC0, dbl(*AR3(#138)) ; |890| 
	.dwpsn	file "src/csl_msc.c",line 891,column 10,is_stmt
        B $C$L102 ; |891| 
                                        ; branch occurs ; |891| 
$C$L96:    
	.dwpsn	file "src/csl_msc.c",line 900,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
        AMOV #0, XAR1 ; |900| 
        MOV #0, T0
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$361, DW_AT_TI_call

        CALL #_USB_postTransaction ; |900| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |900| 
        OR *SP(#12), T0, AR1 ; |900| 
        MOV AR1, *SP(#12) ; |900| 
	.dwpsn	file "src/csl_msc.c",line 902,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_MSC_reqUnknown >> 16) << #16, AC0 ; |902| 
        OR #(_MSC_reqUnknown & 0xffff), AC0, AC0 ; |902| 
        MOV AC0, dbl(*AR3(#138)) ; |902| 
	.dwpsn	file "src/csl_msc.c",line 903,column 10,is_stmt
        B $C$L102 ; |903| 
                                        ; branch occurs ; |903| 
$C$L97:    
	.dwpsn	file "src/csl_msc.c",line 912,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$362, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |912| 
                                        ; call occurs [#_USB_stallEndpt] ; |912| 
        OR *SP(#12), T0, AR1 ; |912| 
        MOV AR1, *SP(#12) ; |912| 
	.dwpsn	file "src/csl_msc.c",line 913,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$363, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |913| 
                                        ; call occurs [#_USB_stallEndpt] ; |913| 
        OR *SP(#12), T0, AR1 ; |913| 
        MOV AR1, *SP(#12) ; |913| 
	.dwpsn	file "src/csl_msc.c",line 914,column 10,is_stmt
        B $C$L102 ; |914| 
                                        ; branch occurs ; |914| 
$C$L98:    
	.dwpsn	file "src/csl_msc.c",line 917,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #(_MSC_reqUnknown >> 16) << #16, AC0 ; |917| 
        OR #(_MSC_reqUnknown & 0xffff), AC0, AC0 ; |917| 
        MOV AC0, dbl(*AR3(#138)) ; |917| 
	.dwpsn	file "src/csl_msc.c",line 918,column 10,is_stmt
        B $C$L102 ; |918| 
                                        ; branch occurs ; |918| 
$C$L99:    
	.dwpsn	file "src/csl_msc.c",line 921,column 5,is_stmt
        MOV #-578, *SP(#12) ; |921| 
	.dwpsn	file "src/csl_msc.c",line 922,column 10,is_stmt
        B $C$L102 ; |922| 
                                        ; branch occurs ; |922| 
$C$L100:    
	.dwpsn	file "src/csl_msc.c",line 883,column 3,is_stmt

        MOV *SP(#6), AR1 ; |883| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |883| 
        BCC $C$L101,TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
        CMP AR1 == AR2, TC1 ; |883| 
        BCC $C$L96,TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
        BCC $C$L98,AR1 == #0 ; |883| 
                                        ; branchcc occurs ; |883| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |883| 
        BCC $C$L97,TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
        MOV #2, AR2
        CMP AR1 == AR2, TC1 ; |883| 
        BCC $C$L95,TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
        B $C$L99  ; |883| 
                                        ; branch occurs ; |883| 
$C$L101:    
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |883| 
        BCC $C$L102,TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
        MOV #5, AR2
        CMP AR1 == AR2, TC1 ; |883| 
        BCC $C$L99,!TC1 ; |883| 
                                        ; branchcc occurs ; |883| 
$C$L102:    
	.dwpsn	file "src/csl_msc.c",line 926,column 6,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#18), AR1 ; |926| 
        BCC $C$L103,AR1 == #0 ; |926| 
                                        ; branchcc occurs ; |926| 
	.dwpsn	file "src/csl_msc.c",line 928,column 4,is_stmt
        MOV #0, *AR3(#18) ; |928| 
$C$L103:    
	.dwpsn	file "src/csl_msc.c",line 932,column 2,is_stmt
        MOV *SP(#12), T0 ; |932| 
$C$L104:    
	.dwpsn	file "src/csl_msc.c",line 933,column 1,is_stmt
        AADD #14, SP
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$342, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$342, DW_AT_TI_end_line(0x3a5)
	.dwattr $C$DW$342, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$342

	.sect	".text"
	.global	_MSC_Bulk

$C$DW$365	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_Bulk")
	.dwattr $C$DW$365, DW_AT_low_pc(_MSC_Bulk)
	.dwattr $C$DW$365, DW_AT_high_pc(0x00)
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_MSC_Bulk")
	.dwattr $C$DW$365, DW_AT_external
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$365, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$365, DW_AT_TI_begin_line(0x3d6)
	.dwattr $C$DW$365, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$365, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "src/csl_msc.c",line 983,column 1,is_stmt,address _MSC_Bulk

	.dwfde $C$DW$CIE, _MSC_Bulk
$C$DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMSC")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_Bulk                                                     *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,*
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_Bulk:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$367	.dwtag  DW_TAG_variable, DW_AT_name("pMSC")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$371	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$372	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$373	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 991,column 2,is_stmt
        MOV #0, *SP(#10) ; |991| 
	.dwpsn	file "src/csl_msc.c",line 993,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L116,AC0 == #0 ; |993| 
                                        ; branchcc occurs ; |993| 
	.dwpsn	file "src/csl_msc.c",line 995,column 3,is_stmt
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 996,column 3,is_stmt
        AMAR *+AR3(#148) ; |996| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_msc.c",line 997,column 3,is_stmt
        MOV dbl(*AR3(#314)), XAR3
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_msc.c",line 998,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3(#316)), XAR3
        MOV XAR3, dbl(*SP(#8))
	.dwpsn	file "src/csl_msc.c",line 1000,column 3,is_stmt
        AMAR *SP(#10), XAR1
        MOV dbl(*SP(#6)), XAR0
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("_USB_getEvents")
	.dwattr $C$DW$374, DW_AT_TI_call
        CALL #_USB_getEvents ; |1000| 
                                        ; call occurs [#_USB_getEvents] ; |1000| 
        BTST @#0, T0, TC1 ; |1000| 
        BCC $C$L105,!TC1 ; |1000| 
                                        ; branchcc occurs ; |1000| 
	.dwpsn	file "src/csl_msc.c",line 1002,column 7,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV #0, *AR3(#319) ; |1002| 
$C$L105:    
	.dwpsn	file "src/csl_msc.c",line 1005,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV uns(high_byte(*AR3(#303))), AR1 ; |1005| 
        MOV AR1, *SP(#11) ; |1005| 
	.dwpsn	file "src/csl_msc.c",line 1008,column 3,is_stmt
        B $C$L115 ; |1008| 
                                        ; branch occurs ; |1008| 
$C$L106:    
	.dwpsn	file "src/csl_msc.c",line 1011,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#8)), XAR1
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("_MSC_HandleStateReset")
	.dwattr $C$DW$375, DW_AT_TI_call
        CALL #_MSC_HandleStateReset ; |1011| 
                                        ; call occurs [#_MSC_HandleStateReset] ; |1011| 
        MOV T0, *SP(#10) ; |1011| 
	.dwpsn	file "src/csl_msc.c",line 1012,column 10,is_stmt
        B $C$L117 ; |1012| 
                                        ; branch occurs ; |1012| 
$C$L107:    
	.dwpsn	file "src/csl_msc.c",line 1015,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*SP(#4)), XAR1
        MOV dbl(*SP(#8)), XAR2
        MOV dbl(*AR3), XAR0
        MOV dbl(*SP(#6)), XAR3
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("_MSC_HandleStateWaitForCBW")
	.dwattr $C$DW$376, DW_AT_TI_call
        CALL #_MSC_HandleStateWaitForCBW ; |1015| 
                                        ; call occurs [#_MSC_HandleStateWaitForCBW] ; |1015| 
        MOV T0, *SP(#10) ; |1015| 
	.dwpsn	file "src/csl_msc.c",line 1019,column 10,is_stmt
        B $C$L117 ; |1019| 
                                        ; branch occurs ; |1019| 
$C$L108:    
	.dwpsn	file "src/csl_msc.c",line 1022,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#8)), XAR1
        MOV dbl(*SP(#6)), XAR2
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("_MSC_HandleStateSendCSW")
	.dwattr $C$DW$377, DW_AT_TI_call
        CALL #_MSC_HandleStateSendCSW ; |1022| 
                                        ; call occurs [#_MSC_HandleStateSendCSW] ; |1022| 
        MOV T0, *SP(#10) ; |1022| 
	.dwpsn	file "src/csl_msc.c",line 1023,column 10,is_stmt
        B $C$L117 ; |1023| 
                                        ; branch occurs ; |1023| 
$C$L109:    
	.dwpsn	file "src/csl_msc.c",line 1026,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("_MSC_HandleStateSendData")
	.dwattr $C$DW$378, DW_AT_TI_call
        CALL #_MSC_HandleStateSendData ; |1026| 
                                        ; call occurs [#_MSC_HandleStateSendData] ; |1026| 
        MOV T0, *SP(#10) ; |1026| 
	.dwpsn	file "src/csl_msc.c",line 1027,column 10,is_stmt
        B $C$L117 ; |1027| 
                                        ; branch occurs ; |1027| 
$C$L110:    
	.dwpsn	file "src/csl_msc.c",line 1030,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("_MSC_HandleStateSendStall")
	.dwattr $C$DW$379, DW_AT_TI_call
        CALL #_MSC_HandleStateSendStall ; |1030| 
                                        ; call occurs [#_MSC_HandleStateSendStall] ; |1030| 
        MOV T0, *SP(#10) ; |1030| 
	.dwpsn	file "src/csl_msc.c",line 1031,column 10,is_stmt
        B $C$L117 ; |1031| 
                                        ; branch occurs ; |1031| 
$C$L111:    
	.dwpsn	file "src/csl_msc.c",line 1034,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#11), T0 ; |1034| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("_MSC_ExecuteRead")
	.dwattr $C$DW$380, DW_AT_TI_call

        CALL #_MSC_ExecuteRead ; |1034| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_ExecuteRead] ; |1034| 
        MOV T0, *SP(#10) ; |1034| 
	.dwpsn	file "src/csl_msc.c",line 1035,column 10,is_stmt
        B $C$L117 ; |1035| 
                                        ; branch occurs ; |1035| 
$C$L112:    
	.dwpsn	file "src/csl_msc.c",line 1038,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#11), T0 ; |1038| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("_MSC_ExecuteWrite")
	.dwattr $C$DW$381, DW_AT_TI_call

        CALL #_MSC_ExecuteWrite ; |1038| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_ExecuteWrite] ; |1038| 
        MOV T0, *SP(#10) ; |1038| 
	.dwpsn	file "src/csl_msc.c",line 1039,column 10,is_stmt
        B $C$L117 ; |1039| 
                                        ; branch occurs ; |1039| 
$C$L113:    
	.dwpsn	file "src/csl_msc.c",line 1042,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("_MSC_HandleStateSendingShortPkt")
	.dwattr $C$DW$382, DW_AT_TI_call
        CALL #_MSC_HandleStateSendingShortPkt ; |1042| 
                                        ; call occurs [#_MSC_HandleStateSendingShortPkt] ; |1042| 
        MOV T0, *SP(#10) ; |1042| 
	.dwpsn	file "src/csl_msc.c",line 1043,column 10,is_stmt
        B $C$L117 ; |1043| 
                                        ; branch occurs ; |1043| 
$C$L114:    
	.dwpsn	file "src/csl_msc.c",line 1046,column 5,is_stmt
        MOV #-6, *SP(#10) ; |1046| 
	.dwpsn	file "src/csl_msc.c",line 1047,column 13,is_stmt
        B $C$L117 ; |1047| 
                                        ; branch occurs ; |1047| 
$C$L115:    
	.dwpsn	file "src/csl_msc.c",line 1008,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *AR3(#319), AC0 ; |1008| 

        MOV AC0, AR1 ; |1008| 
||      MOV #7, AR2

        CMPU AR1 <= AR2, TC1 ; |1008| 
        BCC $C$L114,!TC1 ; |1008| 
                                        ; branchcc occurs ; |1008| 
        SFTL AC0, #1, AC0 ; |1008| 
        AND #0xffff, AC0, AC1 ; |1008| 
        MOV #($C$SW1 >> 16) << #16, AC0 ; |1008| 
        OR #($C$SW1 & 0xffff), AC0, AC0 ; |1008| 
        ADD AC1, AC0 ; |1008| 
        MOV AC0, XAR3
        MOV dbl(*AR3), AC0 ; |1008| 
        B AC0     ; |1008| 
                                        ; branch occurs ; |1008| 
	.sect	".switch:_MSC_Bulk"
	.clink
$C$SW1:	.long	$C$L106	; 0
	.long	$C$L107	; 1
	.long	$C$L110	; 2
	.long	$C$L109	; 3
	.long	$C$L108	; 4
	.long	$C$L111	; 5
	.long	$C$L112	; 6
	.long	$C$L113	; 7
	.sect	".text"
$C$L116:    
	.dwpsn	file "src/csl_msc.c",line 1052,column 3,is_stmt
        MOV #-5, *SP(#10) ; |1052| 
$C$L117:    
	.dwpsn	file "src/csl_msc.c",line 1055,column 2,is_stmt
        MOV *SP(#10), T0 ; |1055| 
	.dwpsn	file "src/csl_msc.c",line 1056,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$365, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$365, DW_AT_TI_end_line(0x420)
	.dwattr $C$DW$365, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$365

	.sect	".text"
	.global	_MSC_GetLunLockedStatus

$C$DW$384	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_GetLunLockedStatus")
	.dwattr $C$DW$384, DW_AT_low_pc(_MSC_GetLunLockedStatus)
	.dwattr $C$DW$384, DW_AT_high_pc(0x00)
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_MSC_GetLunLockedStatus")
	.dwattr $C$DW$384, DW_AT_external
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$384, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$384, DW_AT_TI_begin_line(0x450)
	.dwattr $C$DW$384, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$384, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_msc.c",line 1106,column 1,is_stmt,address _MSC_GetLunLockedStatus

	.dwfde $C$DW$CIE, _MSC_GetLunLockedStatus
$C$DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMSC")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg17]
$C$DW$386	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunNum")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_GetLunLockedStatus                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_GetLunLockedStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$387	.dwtag  DW_TAG_variable, DW_AT_name("pMSC")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$388	.dwtag  DW_TAG_variable, DW_AT_name("lunNum")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$389	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$390	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV T0, *SP(#2) ; |1106| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1110,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_msc.c",line 1111,column 4,is_stmt
        AMAR *+AR3(#148) ; |1111| 
        MOV XAR3, dbl(*SP(#6))
	.dwpsn	file "src/csl_msc.c",line 1113,column 4,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |1113| 
        MOV AC0, AR1 ; |1113| 
        AADD AR1, AR3 ; |1113| 
        BTST #1, *AR3(#75), TC1 ; |1113| 
        BCC $C$L118,!TC1 ; |1113| 
                                        ; branchcc occurs ; |1113| 
	.dwpsn	file "src/csl_msc.c",line 1115,column 8,is_stmt
        MOV #1, T0
        B $C$L119 ; |1115| 
                                        ; branch occurs ; |1115| 
$C$L118:    
	.dwpsn	file "src/csl_msc.c",line 1119,column 8,is_stmt
        MOV #0, T0
$C$L119:    
	.dwpsn	file "src/csl_msc.c",line 1121,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$384, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$384, DW_AT_TI_end_line(0x461)
	.dwattr $C$DW$384, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$384

	.sect	".text"
	.global	_MSC_GetactivityFlagStatus

$C$DW$392	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_GetactivityFlagStatus")
	.dwattr $C$DW$392, DW_AT_low_pc(_MSC_GetactivityFlagStatus)
	.dwattr $C$DW$392, DW_AT_high_pc(0x00)
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_MSC_GetactivityFlagStatus")
	.dwattr $C$DW$392, DW_AT_external
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$392, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$392, DW_AT_TI_begin_line(0x490)
	.dwattr $C$DW$392, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$392, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_msc.c",line 1169,column 1,is_stmt,address _MSC_GetactivityFlagStatus

	.dwfde $C$DW$CIE, _MSC_GetactivityFlagStatus
$C$DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMSC")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_GetactivityFlagStatus                                    *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_GetactivityFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$394	.dwtag  DW_TAG_variable, DW_AT_name("pMSC")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$395	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$396	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1173,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 1174,column 4,is_stmt
        AMAR *+AR3(#148) ; |1174| 
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_msc.c",line 1176,column 4,is_stmt
        MOV *AR3(#281), T0 ; |1176| 
	.dwpsn	file "src/csl_msc.c",line 1177,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$397	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$397, DW_AT_low_pc(0x00)
	.dwattr $C$DW$397, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$392, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$392, DW_AT_TI_end_line(0x499)
	.dwattr $C$DW$392, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$392

	.sect	".text"
	.global	_MSC_GetsuspendFlagStatus

$C$DW$398	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_GetsuspendFlagStatus")
	.dwattr $C$DW$398, DW_AT_low_pc(_MSC_GetsuspendFlagStatus)
	.dwattr $C$DW$398, DW_AT_high_pc(0x00)
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_MSC_GetsuspendFlagStatus")
	.dwattr $C$DW$398, DW_AT_external
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$398, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$398, DW_AT_TI_begin_line(0x4c8)
	.dwattr $C$DW$398, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$398, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "src/csl_msc.c",line 1225,column 1,is_stmt,address _MSC_GetsuspendFlagStatus

	.dwfde $C$DW$CIE, _MSC_GetsuspendFlagStatus
$C$DW$399	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMSC")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_GetsuspendFlagStatus                                     *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR3,XAR3,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (6 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_GetsuspendFlagStatus:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-7, SP
	.dwcfi	cfa_offset, 8
$C$DW$400	.dwtag  DW_TAG_variable, DW_AT_name("pMSC")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_pMSC")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$401	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$402	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1229,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#2))
	.dwpsn	file "src/csl_msc.c",line 1230,column 4,is_stmt

        MOV XAR3, dbl(*SP(#4))
||      AADD #2, AR3 ; |1230| 

	.dwpsn	file "src/csl_msc.c",line 1232,column 4,is_stmt
        MOV *AR3(short(#6)), T0 ; |1232| 
	.dwpsn	file "src/csl_msc.c",line 1233,column 1,is_stmt
        AADD #7, SP
	.dwcfi	cfa_offset, 1
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$398, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$398, DW_AT_TI_end_line(0x4d1)
	.dwattr $C$DW$398, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$398

	.sect	".text"

$C$DW$404	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_initCtrlDesc")
	.dwattr $C$DW$404, DW_AT_low_pc(_MSC_initCtrlDesc)
	.dwattr $C$DW$404, DW_AT_high_pc(0x00)
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_MSC_initCtrlDesc")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$404, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$404, DW_AT_TI_begin_line(0x4f5)
	.dwattr $C$DW$404, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$404, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_msc.c",line 1270,column 1,is_stmt,address _MSC_initCtrlDesc

	.dwfde $C$DW$CIE, _MSC_initCtrlDesc
$C$DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_initCtrlDesc                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,*
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_initCtrlDesc:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$406	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$407	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$408	.dwtag  DW_TAG_variable, DW_AT_name("pHandle")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_pHandle")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$409	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$409, DW_AT_location[DW_OP_bregx 0x24 6]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1275,column 2,is_stmt
        MOV #0, *SP(#2) ; |1275| 
	.dwpsn	file "src/csl_msc.c",line 1276,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, dbl(*SP(#4))
	.dwpsn	file "src/csl_msc.c",line 1277,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3

        MOV XAR3, dbl(*SP(#6))
||      AADD #2, AR3 ; |1277| 

	.dwpsn	file "src/csl_msc.c",line 1279,column 2,is_stmt
        MOV XAR3, AC0
        BCC $C$L122,AC0 == #0 ; |1279| 
                                        ; branchcc occurs ; |1279| 
	.dwpsn	file "src/csl_msc.c",line 1287,column 3,is_stmt
        MOV #0, *AR3(#58) ; |1287| 
	.dwpsn	file "src/csl_msc.c",line 1289,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #274, *AR3(#59) ; |1289| 
	.dwpsn	file "src/csl_msc.c",line 1293,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, *AR3(#60) ; |1293| 
	.dwpsn	file "src/csl_msc.c",line 1295,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#61) ; |1295| 
	.dwpsn	file "src/csl_msc.c",line 1297,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #16384, *AR3(#62) ; |1297| 
	.dwpsn	file "src/csl_msc.c",line 1299,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1105, *AR3(#63) ; |1299| 
	.dwpsn	file "src/csl_msc.c",line 1301,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #36880, *AR3(#64) ; |1301| 
	.dwpsn	file "src/csl_msc.c",line 1303,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3(#65) ; |1303| 
	.dwpsn	file "src/csl_msc.c",line 1305,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #513, *AR3(#66) ; |1305| 
	.dwpsn	file "src/csl_msc.c",line 1307,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #259, *AR3(#67) ; |1307| 
	.dwpsn	file "src/csl_msc.c",line 1310,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#68) ; |1310| 
	.dwpsn	file "src/csl_msc.c",line 1312,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1546, *AR3(#69) ; |1312| 
	.dwpsn	file "src/csl_msc.c",line 1316,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, *AR3(#70) ; |1316| 
	.dwpsn	file "src/csl_msc.c",line 1318,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#71) ; |1318| 
	.dwpsn	file "src/csl_msc.c",line 1320,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #16384, *AR3(#72) ; |1320| 
	.dwpsn	file "src/csl_msc.c",line 1322,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1, *AR3(#73) ; |1322| 
	.dwpsn	file "src/csl_msc.c",line 1325,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#74) ; |1325| 
	.dwpsn	file "src/csl_msc.c",line 1327,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #521, *AR3(#75) ; |1327| 
	.dwpsn	file "src/csl_msc.c",line 1331,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #32, *AR3(#76) ; |1331| 
	.dwpsn	file "src/csl_msc.c",line 1333,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #257, *AR3(#77) ; |1333| 
	.dwpsn	file "src/csl_msc.c",line 1335,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #49156, *AR3(#78) ; |1335| 
	.dwpsn	file "src/csl_msc.c",line 1337,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("_USB_getMaxPower")
	.dwattr $C$DW$410, DW_AT_TI_call
        CALL #_USB_getMaxPower ; |1337| 
                                        ; call occurs [#_USB_getMaxPower] ; |1337| 
        MOV dbl(*SP(#6)), XAR3
        MOV T0, *AR3(#79) ; |1337| 
	.dwpsn	file "src/csl_msc.c",line 1340,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#80) ; |1340| 
	.dwpsn	file "src/csl_msc.c",line 1342,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1033, *AR3(#81) ; |1342| 
	.dwpsn	file "src/csl_msc.c",line 1346,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#82) ; |1346| 
	.dwpsn	file "src/csl_msc.c",line 1348,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #2050, *AR3(#83) ; |1348| 
	.dwpsn	file "src/csl_msc.c",line 1350,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #20486, *AR3(#84) ; |1350| 
	.dwpsn	file "src/csl_msc.c",line 1352,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #5, *AR3(#85) ; |1352| 
	.dwpsn	file "src/csl_msc.c",line 1355,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#86) ; |1355| 
	.dwpsn	file "src/csl_msc.c",line 1358,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1287, *AR3(#87) ; |1358| 
	.dwpsn	file "src/csl_msc.c",line 1362,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #514, *AR3(#88) ; |1362| 
	.dwpsn	file "src/csl_msc.c",line 1365,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #64, *AR3(#89) ; |1365| 
	.dwpsn	file "src/csl_msc.c",line 1368,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#90) ; |1368| 
	.dwpsn	file "src/csl_msc.c",line 1372,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#98) ; |1372| 
	.dwpsn	file "src/csl_msc.c",line 1375,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1287, *AR3(#99) ; |1375| 
	.dwpsn	file "src/csl_msc.c",line 1379,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #642, *AR3(#100) ; |1379| 
	.dwpsn	file "src/csl_msc.c",line 1382,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #64, *AR3(#101) ; |1382| 
	.dwpsn	file "src/csl_msc.c",line 1385,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#102) ; |1385| 
	.dwpsn	file "src/csl_msc.c",line 1399,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#24) ; |1399| 
	.dwpsn	file "src/csl_msc.c",line 1403,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #521, *AR3(#25) ; |1403| 
	.dwpsn	file "src/csl_msc.c",line 1407,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #32, *AR3(#26) ; |1407| 
	.dwpsn	file "src/csl_msc.c",line 1409,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #257, *AR3(#27) ; |1409| 
	.dwpsn	file "src/csl_msc.c",line 1411,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #49156, *AR3(#28) ; |1411| 
	.dwpsn	file "src/csl_msc.c",line 1413,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("_USB_getMaxPower")
	.dwattr $C$DW$411, DW_AT_TI_call
        CALL #_USB_getMaxPower ; |1413| 
                                        ; call occurs [#_USB_getMaxPower] ; |1413| 
        MOV dbl(*SP(#6)), XAR3
        AND #0x00ff, T0, AR1 ; |1413| 
        OR #0x0900, AR1, AR1 ; |1413| 
        MOV AR1, *AR3(#29) ; |1413| 
	.dwpsn	file "src/csl_msc.c",line 1418,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #4, *AR3(#30) ; |1418| 
	.dwpsn	file "src/csl_msc.c",line 1420,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, *AR3(#31) ; |1420| 
	.dwpsn	file "src/csl_msc.c",line 1422,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1544, *AR3(#32) ; |1422| 
	.dwpsn	file "src/csl_msc.c",line 1423,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1360, *AR3(#33) ; |1423| 
	.dwpsn	file "src/csl_msc.c",line 1429,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1287, *AR3(#34) ; |1429| 
	.dwpsn	file "src/csl_msc.c",line 1431,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #514, *AR3(#35) ; |1431| 
	.dwpsn	file "src/csl_msc.c",line 1433,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, *AR3(#36) ; |1433| 
	.dwpsn	file "src/csl_msc.c",line 1435,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1792, *AR3(#37) ; |1435| 
	.dwpsn	file "src/csl_msc.c",line 1437,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #33029, *AR3(#38) ; |1437| 
	.dwpsn	file "src/csl_msc.c",line 1439,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #2, *AR3(#39) ; |1439| 
	.dwpsn	file "src/csl_msc.c",line 1441,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #2, *AR3(#40) ; |1441| 
	.dwpsn	file "src/csl_msc.c",line 1454,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#41) ; |1454| 
	.dwpsn	file "src/csl_msc.c",line 1458,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #521, *AR3(#42) ; |1458| 
	.dwpsn	file "src/csl_msc.c",line 1462,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #32, *AR3(#43) ; |1462| 
	.dwpsn	file "src/csl_msc.c",line 1464,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #257, *AR3(#44) ; |1464| 
	.dwpsn	file "src/csl_msc.c",line 1466,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #49156, *AR3(#45) ; |1466| 
	.dwpsn	file "src/csl_msc.c",line 1468,column 3,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV dbl(*AR3), XAR0
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("_USB_getMaxPower")
	.dwattr $C$DW$412, DW_AT_TI_call
        CALL #_USB_getMaxPower ; |1468| 
                                        ; call occurs [#_USB_getMaxPower] ; |1468| 
        MOV dbl(*SP(#6)), XAR3
        AND #0x00ff, T0, AR1 ; |1468| 
        OR #0x0900, AR1, AR1 ; |1468| 
        MOV AR1, *AR3(#46) ; |1468| 
	.dwpsn	file "src/csl_msc.c",line 1473,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #4, *AR3(#47) ; |1473| 
	.dwpsn	file "src/csl_msc.c",line 1475,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #512, *AR3(#48) ; |1475| 
	.dwpsn	file "src/csl_msc.c",line 1477,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1544, *AR3(#49) ; |1477| 
	.dwpsn	file "src/csl_msc.c",line 1479,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1360, *AR3(#50) ; |1479| 
	.dwpsn	file "src/csl_msc.c",line 1484,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1287, *AR3(#51) ; |1484| 
	.dwpsn	file "src/csl_msc.c",line 1486,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #514, *AR3(#52) ; |1486| 
	.dwpsn	file "src/csl_msc.c",line 1488,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #64, *AR3(#53) ; |1488| 
	.dwpsn	file "src/csl_msc.c",line 1490,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1792, *AR3(#54) ; |1490| 
	.dwpsn	file "src/csl_msc.c",line 1494,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #33029, *AR3(#55) ; |1494| 
	.dwpsn	file "src/csl_msc.c",line 1496,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #16386, *AR3(#56) ; |1496| 
	.dwpsn	file "src/csl_msc.c",line 1498,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#57) ; |1498| 
	.dwpsn	file "src/csl_msc.c",line 1503,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #7, *AR3(#116) ; |1503| 
	.dwpsn	file "src/csl_msc.c",line 1505,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #98, AR3 ; |1505| 
        MOV XAR3, dbl(*AR2(#118))
	.dwpsn	file "src/csl_msc.c",line 1508,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, AC0 ; |1508| 
        MOV AC0, dbl(*AR3(#120))
	.dwpsn	file "src/csl_msc.c",line 1512,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #7, *AR3(#104) ; |1512| 
	.dwpsn	file "src/csl_msc.c",line 1514,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #86, AR3 ; |1514| 
        MOV XAR3, dbl(*AR2(#106))
	.dwpsn	file "src/csl_msc.c",line 1517,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #116, AR3 ; |1517| 
        MOV XAR3, dbl(*AR2(#108))
	.dwpsn	file "src/csl_msc.c",line 1522,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #9, *AR3(#92) ; |1522| 
	.dwpsn	file "src/csl_msc.c",line 1525,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #80, AR3 ; |1525| 
        MOV XAR3, dbl(*AR2(#94))
	.dwpsn	file "src/csl_msc.c",line 1528,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #104, AR3 ; |1528| 
        MOV XAR3, dbl(*AR2(#96))
	.dwpsn	file "src/csl_msc.c",line 1534,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #9, *AR3(#128) ; |1534| 
	.dwpsn	file "src/csl_msc.c",line 1536,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #74, AR3 ; |1536| 
        MOV XAR3, dbl(*AR2(#130))
	.dwpsn	file "src/csl_msc.c",line 1539,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #92, AR3 ; |1539| 
        MOV XAR3, dbl(*AR2(#132))
	.dwpsn	file "src/csl_msc.c",line 1545,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#110) ; |1545| 
	.dwpsn	file "src/csl_msc.c",line 1547,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #772, *AR3(#111) ; |1547| 
	.dwpsn	file "src/csl_msc.c",line 1551,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #1033, *AR3(#112) ; |1551| 
	.dwpsn	file "src/csl_msc.c",line 1552,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV #0, *AR3(#113) ; |1552| 
	.dwpsn	file "src/csl_msc.c",line 1561,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        CMP *AR3(#140) == #1, TC1 ; |1561| 
        BCC $C$L120,!TC1 ; |1561| 
                                        ; branchcc occurs ; |1561| 
	.dwpsn	file "src/csl_msc.c",line 1564,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AADD #24, AR3 ; |1564| 
        MOV XAR3, dbl(*AR2(#142))
	.dwpsn	file "src/csl_msc.c",line 1565,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #41, AR3 ; |1565| 
        MOV XAR3, dbl(*AR2(#144))
	.dwpsn	file "src/csl_msc.c",line 1566,column 3,is_stmt
        B $C$L121 ; |1566| 
                                        ; branch occurs ; |1566| 
$C$L120:    
	.dwpsn	file "src/csl_msc.c",line 1570,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR2
        AADD #41, AR3 ; |1570| 
        MOV XAR3, dbl(*AR2(#142))
	.dwpsn	file "src/csl_msc.c",line 1571,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*SP(#6)), XAR2
        AADD #24, AR3 ; |1571| 
        MOV XAR3, dbl(*AR2(#144))
$C$L121:    
	.dwpsn	file "src/csl_msc.c",line 1575,column 3,is_stmt
        MOV dbl(*SP(#6)), XAR3
        MOV dbl(*AR3(#144)), XAR3
        MOV #1801, *AR3(short(#1)) ; |1575| 
	.dwpsn	file "src/csl_msc.c",line 1578,column 2,is_stmt
        B $C$L123 ; |1578| 
                                        ; branch occurs ; |1578| 
$C$L122:    
	.dwpsn	file "src/csl_msc.c",line 1581,column 3,is_stmt
        MOV #-5, *SP(#2) ; |1581| 
$C$L123:    
	.dwpsn	file "src/csl_msc.c",line 1584,column 2,is_stmt
        MOV *SP(#2), T0 ; |1584| 
	.dwpsn	file "src/csl_msc.c",line 1585,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$404, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$404, DW_AT_TI_end_line(0x631)
	.dwattr $C$DW$404, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$404

	.sect	".text"

$C$DW$414	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_initMscVal")
	.dwattr $C$DW$414, DW_AT_low_pc(_MSC_initMscVal)
	.dwattr $C$DW$414, DW_AT_high_pc(0x00)
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_MSC_initMscVal")
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$414, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$414, DW_AT_TI_begin_line(0x655)
	.dwattr $C$DW$414, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$414, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_msc.c",line 1622,column 1,is_stmt,address _MSC_initMscVal

	.dwfde $C$DW$CIE, _MSC_initMscVal
$C$DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$415, DW_AT_location[DW_OP_reg17]
;*******************************************************************************
;* FUNCTION NAME: MSC_initMscVal                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,AR2,AR3,XAR3,SP,CARRY,TC1,   *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_initMscVal:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$416	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$416, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$417	.dwtag  DW_TAG_variable, DW_AT_name("copyCnt")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_copyCnt")
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$417, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$418	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$418, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1626,column 2,is_stmt
        MOV #0, *SP(#3) ; |1626| 
	.dwpsn	file "src/csl_msc.c",line 1628,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L128,AC0 == #0 ; |1628| 
                                        ; branchcc occurs ; |1628| 
	.dwpsn	file "src/csl_msc.c",line 1630,column 3,is_stmt
        MOV #0, *AR3(#319) ; |1630| 
	.dwpsn	file "src/csl_msc.c",line 1631,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#281) ; |1631| 
	.dwpsn	file "src/csl_msc.c",line 1635,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #26, *AR3(#266) ; |1635| 
	.dwpsn	file "src/csl_msc.c",line 1637,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#267) ; |1637| 
	.dwpsn	file "src/csl_msc.c",line 1639,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #112, *AR3(#268) ; |1639| 
	.dwpsn	file "src/csl_msc.c",line 1641,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#269) ; |1641| 
	.dwpsn	file "src/csl_msc.c",line 1643,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#270) ; |1643| 
	.dwpsn	file "src/csl_msc.c",line 1645,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2816, *AR3(#271) ; |1645| 
	.dwpsn	file "src/csl_msc.c",line 1647,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #8, *AR3(#290) ; |1647| 
	.dwpsn	file "src/csl_msc.c",line 1649,column 7,is_stmt
        MOV #6, *SP(#2) ; |1649| 
	.dwpsn	file "src/csl_msc.c",line 1649,column 20,is_stmt

        MOV *SP(#2), AR1 ; |1649| 
||      MOV #15, AR2

        CMPU AR1 >= AR2, TC1 ; |1649| 
        BCC $C$L125,TC1 ; |1649| 
                                        ; branchcc occurs ; |1649| 
$C$L124:    
$C$DW$L$_MSC_initMscVal$3$B:
	.dwpsn	file "src/csl_msc.c",line 1651,column 4,is_stmt
        MOV *SP(#2), AR1 ; |1651| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |1651| 
        MOV #0, *AR3(#266) ; |1651| 
	.dwpsn	file "src/csl_msc.c",line 1649,column 34,is_stmt
        ADD #1, *SP(#2) ; |1649| 
	.dwpsn	file "src/csl_msc.c",line 1649,column 20,is_stmt
        MOV *SP(#2), AR1 ; |1649| 
        CMPU AR1 < AR2, TC1 ; |1649| 
        BCC $C$L124,TC1 ; |1649| 
                                        ; branchcc occurs ; |1649| 
$C$DW$L$_MSC_initMscVal$3$E:
$C$L125:    
	.dwpsn	file "src/csl_msc.c",line 1656,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#282) ; |1656| 
	.dwpsn	file "src/csl_msc.c",line 1657,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #21333, *AR3(#283) ; |1657| 
	.dwpsn	file "src/csl_msc.c",line 1658,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #21314, *AR3(#284) ; |1658| 
	.dwpsn	file "src/csl_msc.c",line 1659,column 8,is_stmt
        MOV #3, *SP(#2) ; |1659| 
	.dwpsn	file "src/csl_msc.c",line 1659,column 21,is_stmt

        MOV *SP(#2), AR1 ; |1659| 
||      MOV #8, AR2

        CMPU AR1 >= AR2, TC1 ; |1659| 
        BCC $C$L127,TC1 ; |1659| 
                                        ; branchcc occurs ; |1659| 
$C$L126:    
$C$DW$L$_MSC_initMscVal$5$B:
	.dwpsn	file "src/csl_msc.c",line 1661,column 4,is_stmt
        MOV *SP(#2), AR1 ; |1661| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |1661| 
        MOV #0, *AR3(#282) ; |1661| 
	.dwpsn	file "src/csl_msc.c",line 1659,column 34,is_stmt
        ADD #1, *SP(#2) ; |1659| 
	.dwpsn	file "src/csl_msc.c",line 1659,column 21,is_stmt
        MOV *SP(#2), AR1 ; |1659| 
        CMPU AR1 < AR2, TC1 ; |1659| 
        BCC $C$L126,TC1 ; |1659| 
                                        ; branchcc occurs ; |1659| 
$C$DW$L$_MSC_initMscVal$5$E:
$C$L127:    
	.dwpsn	file "src/csl_msc.c",line 1664,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #8, *AR3(#320) ; |1664| 
	.dwpsn	file "src/csl_msc.c",line 1665,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#321) ; |1665| 
	.dwpsn	file "src/csl_msc.c",line 1666,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#322) ; |1666| 
	.dwpsn	file "src/csl_msc.c",line 1667,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#323) ; |1667| 
	.dwpsn	file "src/csl_msc.c",line 1668,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#324) ; |1668| 
	.dwpsn	file "src/csl_msc.c",line 1669,column 2,is_stmt
        B $C$L129 ; |1669| 
                                        ; branch occurs ; |1669| 
$C$L128:    
	.dwpsn	file "src/csl_msc.c",line 1672,column 3,is_stmt
        MOV #-5, *SP(#3) ; |1672| 
$C$L129:    
	.dwpsn	file "src/csl_msc.c",line 1675,column 2,is_stmt
        MOV *SP(#3), T0 ; |1675| 
	.dwpsn	file "src/csl_msc.c",line 1676,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$420	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$420, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L126:1:1714639447")
	.dwattr $C$DW$420, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$420, DW_AT_TI_begin_line(0x67b)
	.dwattr $C$DW$420, DW_AT_TI_end_line(0x67e)
$C$DW$421	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$421, DW_AT_low_pc($C$DW$L$_MSC_initMscVal$5$B)
	.dwattr $C$DW$421, DW_AT_high_pc($C$DW$L$_MSC_initMscVal$5$E)
	.dwendtag $C$DW$420


$C$DW$422	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$422, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L124:1:1714639447")
	.dwattr $C$DW$422, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$422, DW_AT_TI_begin_line(0x671)
	.dwattr $C$DW$422, DW_AT_TI_end_line(0x674)
$C$DW$423	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$423, DW_AT_low_pc($C$DW$L$_MSC_initMscVal$3$B)
	.dwattr $C$DW$423, DW_AT_high_pc($C$DW$L$_MSC_initMscVal$3$E)
	.dwendtag $C$DW$422

	.dwattr $C$DW$414, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$414, DW_AT_TI_end_line(0x68c)
	.dwattr $C$DW$414, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$414

	.sect	".text"
	.global	_MSC_HandleStateWaitForCBW

$C$DW$424	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleStateWaitForCBW")
	.dwattr $C$DW$424, DW_AT_low_pc(_MSC_HandleStateWaitForCBW)
	.dwattr $C$DW$424, DW_AT_high_pc(0x00)
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_MSC_HandleStateWaitForCBW")
	.dwattr $C$DW$424, DW_AT_external
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$424, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$424, DW_AT_TI_begin_line(0x6be)
	.dwattr $C$DW$424, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$424, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_msc.c",line 1730,column 1,is_stmt,address _MSC_HandleStateWaitForCBW

	.dwfde $C$DW$CIE, _MSC_HandleStateWaitForCBW
$C$DW$425	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbDev")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg17]
$C$DW$426	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$426, DW_AT_location[DW_OP_reg19]
$C$DW$427	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_reg21]
$C$DW$428	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg23]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleStateWaitForCBW                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (11 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleStateWaitForCBW:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$429	.dwtag  DW_TAG_variable, DW_AT_name("hUsbDev")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$430	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$431	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$432	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$432, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$433	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$433, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$434	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$434, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$435	.dwtag  DW_TAG_variable, DW_AT_name("scsiCommand")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_scsiCommand")
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$435, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1736,column 2,is_stmt
        MOV dbl(*SP(#4)), XAR0
        AMAR *SP(#8), XAR1
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$436, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |1736| 
                                        ; call occurs [#_USB_isTransactionDone] ; |1736| 
        BCC $C$L149,T0 == #0 ; |1736| 
                                        ; branchcc occurs ; |1736| 
	.dwpsn	file "src/csl_msc.c",line 1738,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#6)), XAR3
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("_MSC_verifyCBW")
	.dwattr $C$DW$437, DW_AT_TI_call
        CALL #_MSC_verifyCBW ; |1738| 
                                        ; call occurs [#_MSC_verifyCBW] ; |1738| 
        MOV T0, *SP(#8) ; |1738| 
	.dwpsn	file "src/csl_msc.c",line 1739,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L130,AR1 == #0 ; |1739| 
                                        ; branchcc occurs ; |1739| 
	.dwpsn	file "src/csl_msc.c",line 1741,column 4,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$438, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1741| 
                                        ; call occurs [#_USB_stallEndpt] ; |1741| 
        MOV T0, *SP(#8) ; |1741| 
	.dwpsn	file "src/csl_msc.c",line 1744,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV #32, T1 ; |1744| 
        MOV dbl(*SP(#6)), XAR0
        AMAR *+AR1(#282) ; |1744| 
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$439, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1744| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |1744| 
        OR *SP(#8), T0, AR1 ; |1744| 
        MOV AR1, *SP(#8) ; |1744| 
	.dwpsn	file "src/csl_msc.c",line 1747,column 3,is_stmt
        B $C$L149 ; |1747| 
                                        ; branch occurs ; |1747| 
$C$L130:    
	.dwpsn	file "src/csl_msc.c",line 1750,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#281) ; |1750| 
	.dwpsn	file "src/csl_msc.c",line 1752,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#299), AR1 ; |1752| 
        MOV AR1, *AR3(#285) ; |1752| 
	.dwpsn	file "src/csl_msc.c",line 1753,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(#300), AR1 ; |1753| 
        MOV AR1, *AR3(#286) ; |1753| 
	.dwpsn	file "src/csl_msc.c",line 1754,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(#289) ; |1754| 
	.dwpsn	file "src/csl_msc.c",line 1756,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR2
        MOV dbl(*SP(#2)), XAR3
        MOV *AR2(#302), AR1 ; |1756| 
        MOV AR1, HI(AC0) ; |1756| 
        ADD uns(*AR3(#301)), AC0, AC0 ; |1756| 
        MOV AC0, dbl(*AR3(#16)) ; |1756| 
	.dwpsn	file "src/csl_msc.c",line 1760,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |1760| 
        AND #0xffff, AC0, AC0 ; |1760| 
        MOV AC0, *AR3(#287) ; |1760| 
	.dwpsn	file "src/csl_msc.c",line 1762,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |1762| 
        MOV HI(AC0), *AR3(#288) ; |1762| 
	.dwpsn	file "src/csl_msc.c",line 1766,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*AR3(#303))), AR1 ; |1766| 
        MOV AR1, *SP(#9) ; |1766| 
	.dwpsn	file "src/csl_msc.c",line 1768,column 4,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(high_byte(*AR3(#304))), AR1 ; |1768| 
        MOV AR1, *SP(#10) ; |1768| 
	.dwpsn	file "src/csl_msc.c",line 1770,column 4,is_stmt
        B $C$L145 ; |1770| 
                                        ; branch occurs ; |1770| 
$C$L131:    
	.dwpsn	file "src/csl_msc.c",line 1773,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1773| 
$C$DW$440	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$440, DW_AT_low_pc(0x00)
	.dwattr $C$DW$440, DW_AT_name("_MSC_HandleInquiry")
	.dwattr $C$DW$440, DW_AT_TI_call
        CALL #_MSC_HandleInquiry ; |1773| 
                                        ; call occurs [#_MSC_HandleInquiry] ; |1773| 
        MOV T0, *SP(#8) ; |1773| 
	.dwpsn	file "src/csl_msc.c",line 1774,column 11,is_stmt
        B $C$L149 ; |1774| 
                                        ; branch occurs ; |1774| 
$C$L132:    
	.dwpsn	file "src/csl_msc.c",line 1777,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$441	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$441, DW_AT_low_pc(0x00)
	.dwattr $C$DW$441, DW_AT_name("_MSC_HandleRequestSense")
	.dwattr $C$DW$441, DW_AT_TI_call
        CALL #_MSC_HandleRequestSense ; |1777| 
                                        ; call occurs [#_MSC_HandleRequestSense] ; |1777| 
        MOV T0, *SP(#8) ; |1777| 
	.dwpsn	file "src/csl_msc.c",line 1778,column 11,is_stmt
        B $C$L149 ; |1778| 
                                        ; branch occurs ; |1778| 
$C$L133:    
	.dwpsn	file "src/csl_msc.c",line 1781,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1781| 
$C$DW$442	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$442, DW_AT_low_pc(0x00)
	.dwattr $C$DW$442, DW_AT_name("_MSC_HandleTestUnitReady")
	.dwattr $C$DW$442, DW_AT_TI_call
        CALL #_MSC_HandleTestUnitReady ; |1781| 
                                        ; call occurs [#_MSC_HandleTestUnitReady] ; |1781| 
        MOV T0, *SP(#8) ; |1781| 
	.dwpsn	file "src/csl_msc.c",line 1783,column 11,is_stmt
        B $C$L149 ; |1783| 
                                        ; branch occurs ; |1783| 
$C$L134:    
	.dwpsn	file "src/csl_msc.c",line 1786,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1786| 
$C$DW$443	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$443, DW_AT_low_pc(0x00)
	.dwattr $C$DW$443, DW_AT_name("_MSC_HandlePreventAllowMediaRemoval")
	.dwattr $C$DW$443, DW_AT_TI_call
        CALL #_MSC_HandlePreventAllowMediaRemoval ; |1786| 
                                        ; call occurs [#_MSC_HandlePreventAllowMediaRemoval] ; |1786| 
        MOV T0, *SP(#8) ; |1786| 
	.dwpsn	file "src/csl_msc.c",line 1789,column 11,is_stmt
        B $C$L149 ; |1789| 
                                        ; branch occurs ; |1789| 
$C$L135:    
	.dwpsn	file "src/csl_msc.c",line 1792,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1792| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_name("_MSC_HandleReadCapacity")
	.dwattr $C$DW$444, DW_AT_TI_call
        CALL #_MSC_HandleReadCapacity ; |1792| 
                                        ; call occurs [#_MSC_HandleReadCapacity] ; |1792| 
        MOV T0, *SP(#8) ; |1792| 
	.dwpsn	file "src/csl_msc.c",line 1794,column 11,is_stmt
        B $C$L149 ; |1794| 
                                        ; branch occurs ; |1794| 
$C$L136:    
	.dwpsn	file "src/csl_msc.c",line 1797,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#9), T0 ; |1797| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_name("_MSC_ExecuteRead")
	.dwattr $C$DW$445, DW_AT_TI_call

        CALL #_MSC_ExecuteRead ; |1797| 
||      MOV #1, T1

                                        ; call occurs [#_MSC_ExecuteRead] ; |1797| 
        MOV T0, *SP(#8) ; |1797| 
	.dwpsn	file "src/csl_msc.c",line 1798,column 11,is_stmt
        B $C$L149 ; |1798| 
                                        ; branch occurs ; |1798| 
$C$L137:    
	.dwpsn	file "src/csl_msc.c",line 1801,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#9), T0 ; |1801| 
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_name("_MSC_ExecuteWrite")
	.dwattr $C$DW$446, DW_AT_TI_call

        CALL #_MSC_ExecuteWrite ; |1801| 
||      MOV #1, T1

                                        ; call occurs [#_MSC_ExecuteWrite] ; |1801| 
        MOV T0, *SP(#8) ; |1801| 
	.dwpsn	file "src/csl_msc.c",line 1802,column 14,is_stmt
        B $C$L149 ; |1802| 
                                        ; branch occurs ; |1802| 
$C$L138:    
	.dwpsn	file "src/csl_msc.c",line 1805,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1805| 
$C$DW$447	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$447, DW_AT_low_pc(0x00)
	.dwattr $C$DW$447, DW_AT_name("_MSC_HandleVerify10")
	.dwattr $C$DW$447, DW_AT_TI_call
        CALL #_MSC_HandleVerify10 ; |1805| 
                                        ; call occurs [#_MSC_HandleVerify10] ; |1805| 
        MOV T0, *SP(#8) ; |1805| 
	.dwpsn	file "src/csl_msc.c",line 1806,column 14,is_stmt
        B $C$L149 ; |1806| 
                                        ; branch occurs ; |1806| 
$C$L139:    
	.dwpsn	file "src/csl_msc.c",line 1809,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1809| 
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_name("_MSC_HandleStartStopUnit")
	.dwattr $C$DW$448, DW_AT_TI_call
        CALL #_MSC_HandleStartStopUnit ; |1809| 
                                        ; call occurs [#_MSC_HandleStartStopUnit] ; |1809| 
        MOV T0, *SP(#8) ; |1809| 
	.dwpsn	file "src/csl_msc.c",line 1811,column 14,is_stmt
        B $C$L149 ; |1811| 
                                        ; branch occurs ; |1811| 
$C$L140:    
	.dwpsn	file "src/csl_msc.c",line 1814,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1814| 
$C$DW$449	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$449, DW_AT_low_pc(0x00)
	.dwattr $C$DW$449, DW_AT_name("_MSC_HandleModeSense6")
	.dwattr $C$DW$449, DW_AT_TI_call
        CALL #_MSC_HandleModeSense6 ; |1814| 
                                        ; call occurs [#_MSC_HandleModeSense6] ; |1814| 
        MOV T0, *SP(#8) ; |1814| 
	.dwpsn	file "src/csl_msc.c",line 1816,column 14,is_stmt
        B $C$L149 ; |1816| 
                                        ; branch occurs ; |1816| 
$C$L141:    
	.dwpsn	file "src/csl_msc.c",line 1819,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#6)), XAR1
        MOV *SP(#9), T0 ; |1819| 
$C$DW$450	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$450, DW_AT_low_pc(0x00)
	.dwattr $C$DW$450, DW_AT_name("_MSC_HandleModeSense10")
	.dwattr $C$DW$450, DW_AT_TI_call
        CALL #_MSC_HandleModeSense10 ; |1819| 
                                        ; call occurs [#_MSC_HandleModeSense10] ; |1819| 
        MOV T0, *SP(#8) ; |1819| 
	.dwpsn	file "src/csl_msc.c",line 1821,column 11,is_stmt
        B $C$L149 ; |1821| 
                                        ; branch occurs ; |1821| 
$C$L142:    
	.dwpsn	file "src/csl_msc.c",line 1823,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV #32, T1 ; |1823| 
        AMAR *+AR0(#266) ; |1823| 
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$451, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |1823| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |1823| 
	.dwpsn	file "src/csl_msc.c",line 1827,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        BTST #7, *AR3(#303), TC1 ; |1827| 
        BCC $C$L143,!TC1 ; |1827| 
                                        ; branchcc occurs ; |1827| 
	.dwpsn	file "src/csl_msc.c",line 1829,column 7,is_stmt
        MOV #1, *AR3(#289) ; |1829| 
	.dwpsn	file "src/csl_msc.c",line 1830,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV #0, T0
        MOV dbl(*SP(#6)), XAR0
        AMAR *+AR1(#282) ; |1830| 
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$452, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1830| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |1830| 
        MOV T0, *SP(#8) ; |1830| 
	.dwpsn	file "src/csl_msc.c",line 1833,column 7,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #7, *AR3(#319) ; |1833| 
	.dwpsn	file "src/csl_msc.c",line 1834,column 6,is_stmt
        B $C$L149 ; |1834| 
                                        ; branch occurs ; |1834| 
$C$L143:    
	.dwpsn	file "src/csl_msc.c",line 1837,column 7,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |1837| 
        BCC $C$L144,AC0 != #0 ; |1837| 
                                        ; branchcc occurs ; |1837| 
	.dwpsn	file "src/csl_msc.c",line 1839,column 10,is_stmt
        MOV #1, *AR3(#289) ; |1839| 
	.dwpsn	file "src/csl_msc.c",line 1840,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #4, *AR3(#319) ; |1840| 
	.dwpsn	file "src/csl_msc.c",line 1843,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV #13, T0
        MOV dbl(*SP(#6)), XAR0
        AMAR *+AR1(#282) ; |1843| 
$C$DW$453	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$453, DW_AT_low_pc(0x00)
	.dwattr $C$DW$453, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$453, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1843| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |1843| 
        MOV T0, *SP(#8) ; |1843| 
	.dwpsn	file "src/csl_msc.c",line 1847,column 7,is_stmt
        B $C$L149 ; |1847| 
                                        ; branch occurs ; |1847| 
$C$L144:    
	.dwpsn	file "src/csl_msc.c",line 1851,column 8,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$454	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$454, DW_AT_low_pc(0x00)
	.dwattr $C$DW$454, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$454, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1851| 
                                        ; call occurs [#_USB_stallEndpt] ; |1851| 
        MOV T0, *SP(#8) ; |1851| 
	.dwpsn	file "src/csl_msc.c",line 1852,column 8,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$455	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$455, DW_AT_low_pc(0x00)
	.dwattr $C$DW$455, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$455, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1852| 
                                        ; call occurs [#_USB_stallEndpt] ; |1852| 
        OR *SP(#8), T0, AR1 ; |1852| 
        MOV AR1, *SP(#8) ; |1852| 
	.dwpsn	file "src/csl_msc.c",line 1854,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #2, *AR3(#319) ; |1854| 
	.dwpsn	file "src/csl_msc.c",line 1857,column 8,is_stmt
        MOV dbl(*SP(#2)), XAR1
        MOV #32, T1 ; |1857| 
        MOV dbl(*SP(#6)), XAR0
        AMAR *+AR1(#282) ; |1857| 
$C$DW$456	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$456, DW_AT_low_pc(0x00)
	.dwattr $C$DW$456, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$456, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1857| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |1857| 
        OR *SP(#8), T0, AR1 ; |1857| 
        MOV AR1, *SP(#8) ; |1857| 
	.dwpsn	file "src/csl_msc.c",line 1862,column 11,is_stmt
        B $C$L149 ; |1862| 
                                        ; branch occurs ; |1862| 
$C$L145:    
	.dwpsn	file "src/csl_msc.c",line 1770,column 4,is_stmt
        MOV #30, AR2 ; |1770| 
        CMP AR1 > AR2, TC1 ; |1770| 
        BCC $C$L147,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        CMP AR1 == AR2, TC1 ; |1770| 
        BCC $C$L134,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #18, AR2 ; |1770| 
        CMP AR1 > AR2, TC1 ; |1770| 
        BCC $C$L146,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        CMP AR1 == AR2, TC1 ; |1770| 
        BCC $C$L131,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        BCC $C$L133,AR1 == #0 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #3, AR2
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L132,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        B $C$L142 ; |1770| 
                                        ; branch occurs ; |1770| 
$C$L146:    
        MOV #26, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L140,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #27, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L139,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        B $C$L142 ; |1770| 
                                        ; branch occurs ; |1770| 
$C$L147:    
        MOV #42, AR2 ; |1770| 
        CMP AR1 > AR2, TC1 ; |1770| 
        BCC $C$L148,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        CMP AR1 == AR2, TC1 ; |1770| 
        BCC $C$L137,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #37, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L135,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #40, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L136,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        B $C$L142 ; |1770| 
                                        ; branch occurs ; |1770| 
$C$L148:    
        MOV #47, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L138,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        MOV #90, AR2 ; |1770| 
        CMPU AR1 == AR2, TC1 ; |1770| 
        BCC $C$L141,TC1 ; |1770| 
                                        ; branchcc occurs ; |1770| 
        B $C$L142 ; |1770| 
                                        ; branch occurs ; |1770| 
$C$L149:    
	.dwpsn	file "src/csl_msc.c",line 1867,column 2,is_stmt
        MOV *SP(#8), T0 ; |1867| 
	.dwpsn	file "src/csl_msc.c",line 1868,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$457	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$457, DW_AT_low_pc(0x00)
	.dwattr $C$DW$457, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$424, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$424, DW_AT_TI_end_line(0x74c)
	.dwattr $C$DW$424, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$424

	.sect	".text"
	.global	_MSC_ExecuteRead

$C$DW$458	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_ExecuteRead")
	.dwattr $C$DW$458, DW_AT_low_pc(_MSC_ExecuteRead)
	.dwattr $C$DW$458, DW_AT_high_pc(0x00)
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_MSC_ExecuteRead")
	.dwattr $C$DW$458, DW_AT_external
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$458, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$458, DW_AT_TI_begin_line(0x782)
	.dwattr $C$DW$458, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$458, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_msc.c",line 1925,column 1,is_stmt,address _MSC_ExecuteRead

	.dwfde $C$DW$CIE, _MSC_ExecuteRead
$C$DW$459	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg17]
$C$DW$460	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunNum")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_reg12]
$C$DW$461	.dwtag  DW_TAG_formal_parameter, DW_AT_name("first")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_first")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MSC_ExecuteRead                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3, *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_ExecuteRead:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$462	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$463	.dwtag  DW_TAG_variable, DW_AT_name("lunNum")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$464	.dwtag  DW_TAG_variable, DW_AT_name("first")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_first")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$465	.dwtag  DW_TAG_variable, DW_AT_name("mediaLba")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_mediaLba")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$466	.dwtag  DW_TAG_variable, DW_AT_name("mediaLbaCount")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_mediaLbaCount")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$467	.dwtag  DW_TAG_variable, DW_AT_name("tempData")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_tempData")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$468	.dwtag  DW_TAG_variable, DW_AT_name("mediaStat")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_mediaStat")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$469	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV T1, *SP(#3) ; |1925| 
        MOV T0, *SP(#2) ; |1925| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 1932,column 2,is_stmt
        MOV #0, *SP(#9) ; |1932| 
	.dwpsn	file "src/csl_msc.c",line 1935,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |1935| 

        AND #0x0080, AR1, AR1 ; |1935| 
||      MOV #128, AR2 ; |1935| 

        CMPU AR1 == AR2, TC1 ; |1935| 
        BCC $C$L150,TC1 ; |1935| 
                                        ; branchcc occurs ; |1935| 
        MOV dbl(*AR3(#16)), AC0 ; |1935| 
        BCC $C$L150,AC0 == #0 ; |1935| 
                                        ; branchcc occurs ; |1935| 
	.dwpsn	file "src/csl_msc.c",line 1939,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #128, T0 ; |1939| 
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$470, DW_AT_TI_call
        CALL #_MSC_handleDataDirMisMatch ; |1939| 
                                        ; call occurs [#_MSC_handleDataDirMisMatch] ; |1939| 
        MOV T0, *SP(#9) ; |1939| 
	.dwpsn	file "src/csl_msc.c",line 1941,column 3,is_stmt
        B $C$L166 ; |1941| 
                                        ; branch occurs ; |1941| 
$C$L150:    
	.dwpsn	file "src/csl_msc.c",line 1944,column 2,is_stmt
        MOV *SP(#3), AR1 ; |1944| 
        BCC $C$L152,AR1 == #0 ; |1944| 
                                        ; branchcc occurs ; |1944| 
	.dwpsn	file "src/csl_msc.c",line 1950,column 3,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |1950| 
        BCC $C$L151,AC0 == #0 ; |1950| 
                                        ; branchcc occurs ; |1950| 
	.dwpsn	file "src/csl_msc.c",line 1952,column 4,is_stmt
        MOV uns(high_byte(*AR3(#305))), AR1 ; |1952| 
        AND #0xffff, AR1, AC0 ; |1952| 
        SFTS AC0, #24, AC0 ; |1952| 
        MOV AC0, dbl(*SP(#4)) ; |1952| 
	.dwpsn	file "src/csl_msc.c",line 1954,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*AR3(#306))), AR1 ; |1954| 

        MOV AR1, HI(AC0) ; |1954| 
||      MOV dbl(*SP(#4)), AC1 ; |1954| 

        OR AC1, AC0 ; |1954| 
        MOV AC0, dbl(*SP(#4)) ; |1954| 
	.dwpsn	file "src/csl_msc.c",line 1956,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |1956| 
        MOV uns(high_byte(*AR3(#306))), AR1 ; |1956| 
        AND #0xffff, AR1, AC1 ; |1956| 
        OR AC1 << #8, AC0 ; |1956| 
        MOV AC0, dbl(*SP(#4)) ; |1956| 
	.dwpsn	file "src/csl_msc.c",line 1958,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#307), AR1 ; |1958| 

        AND #0x00ff, AR1, AC0 ; |1958| 
||      MOV dbl(*SP(#4)), AC1 ; |1958| 

        OR AC1, AC0 ; |1958| 
        MOV AC0, dbl(*SP(#4)) ; |1958| 
	.dwpsn	file "src/csl_msc.c",line 1960,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#308), AC1 ; |1960| 
        MOV uns(high_byte(*AR3(#308))), AC0 ; |1960| 
        OR AC1 << #8, AC0 ; |1960| 
        MOV AC0, *SP(#6) ; |1960| 
	.dwpsn	file "src/csl_msc.c",line 1963,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |1963| 
        MOV AC0, AR1 ; |1963| 

        MOV dbl(*SP(#4)), AC0 ; |1963| 
||      AADD AR1, AR3 ; |1963| 

        MOV AC0, dbl(*AR3(#70)) ; |1963| 
	.dwpsn	file "src/csl_msc.c",line 1964,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |1964| 
        MOV AC0, AR1 ; |1964| 

        MOV *SP(#6), AR1 ; |1964| 
||      AADD AR1, AR3 ; |1964| 

        MOV AR1, *AR3(#77) ; |1964| 
	.dwpsn	file "src/csl_msc.c",line 1965,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |1965| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$471, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |1965| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |1965| 
	.dwpsn	file "src/csl_msc.c",line 1969,column 4,is_stmt
        MOV *SP(#6), AR1 ; |1969| 
        BCC $C$L152,AR1 != #0 ; |1969| 
                                        ; branchcc occurs ; |1969| 
	.dwpsn	file "src/csl_msc.c",line 1971,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |1971| 
        AND #0xffff, AC0, AC0 ; |1971| 
        MOV AC0, *AR3(#287) ; |1971| 
	.dwpsn	file "src/csl_msc.c",line 1973,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |1973| 
        MOV HI(AC0), *AR3(#288) ; |1973| 
	.dwpsn	file "src/csl_msc.c",line 1976,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |1976| 
	.dwpsn	file "src/csl_msc.c",line 1979,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |1979| 
	.dwpsn	file "src/csl_msc.c",line 1980,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$472, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |1980| 
                                        ; call occurs [#_USB_stallEndpt] ; |1980| 
        MOV T0, *SP(#9) ; |1980| 
	.dwpsn	file "src/csl_msc.c",line 1983,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |1983| 
        MOV dbl(*AR3(#14)), XAR1
        MOV dbl(*AR3(#314)), XAR0
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$473, DW_AT_TI_call

        CALL #_USB_postTransaction ; |1983| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |1983| 
        MOV T0, *SP(#9) ; |1983| 
	.dwpsn	file "src/csl_msc.c",line 1988,column 5,is_stmt
        B $C$L166 ; |1988| 
                                        ; branch occurs ; |1988| 
$C$L151:    
	.dwpsn	file "src/csl_msc.c",line 1993,column 4,is_stmt
        MOV dbl(*AR3(#314)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$474, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |1993| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |1993| 
        MOV T0, *SP(#9) ; |1993| 
	.dwpsn	file "src/csl_msc.c",line 1996,column 4,is_stmt
        B $C$L166 ; |1996| 
                                        ; branch occurs ; |1996| 
$C$L152:    
	.dwpsn	file "src/csl_msc.c",line 2000,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *SP(#9), XAR1
        MOV dbl(*AR3(#314)), XAR0
$C$DW$475	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$475, DW_AT_low_pc(0x00)
	.dwattr $C$DW$475, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$475, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |2000| 
                                        ; call occurs [#_USB_isTransactionDone] ; |2000| 
        BCC $C$L165,T0 == #0 ; |2000| 
                                        ; branchcc occurs ; |2000| 
	.dwpsn	file "src/csl_msc.c",line 2004,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2004| 
        MOV AC0, AR1 ; |2004| 
        AADD AR1, AR3 ; |2004| 
        MOV *AR3(#77), AR1 ; |2004| 
        BCC $C$L153,AR1 == #0 ; |2004| 
                                        ; branchcc occurs ; |2004| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2004| 
        BCC $C$L153,AC0 != #0 ; |2004| 
                                        ; branchcc occurs ; |2004| 
	.dwpsn	file "src/csl_msc.c",line 2007,column 4,is_stmt
        MOV dbl(*AR3(#314)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$476, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |2007| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |2007| 
        MOV T0, *SP(#9) ; |2007| 
	.dwpsn	file "src/csl_msc.c",line 2009,column 4,is_stmt
        B $C$L166 ; |2009| 
                                        ; branch occurs ; |2009| 
$C$L153:    
	.dwpsn	file "src/csl_msc.c",line 2013,column 3,is_stmt
        MOV #2, *SP(#8) ; |2013| 
	.dwpsn	file "src/csl_msc.c",line 2016,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2016| 
        MOV AC0, AR1 ; |2016| 
        AADD AR1, AR3 ; |2016| 
        BTST #0, *AR3(#75), TC1 ; |2016| 
        BCC $C$L154,TC1 ; |2016| 
                                        ; branchcc occurs ; |2016| 
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2016| 
        MOV AC0, AR1 ; |2016| 
        AADD AR1, AR3 ; |2016| 
        BTST #3, *AR3(#75), TC1 ; |2016| 
        BCC $C$L155,!TC1 ; |2016| 
                                        ; branchcc occurs ; |2016| 
$C$L154:    
	.dwpsn	file "src/csl_msc.c",line 2019,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2019| 
        MOV AC0, AR1 ; |2019| 
        MPYMK *SP(#2), #62, AC2 ; |2019| 
        MOV dbl(*AR3), AC1 ; |2019| 
        MOV dbl(*AR3(#14)), XAR0

        MOV AC2, AR1 ; |2019| 
||      AADD AR1, AR3 ; |2019| 

        MOV dbl(*AR3(#70)), AC0 ; |2019| 
        MOV dbl(*SP(#0)), XAR3

        AADD AR1, AR3 ; |2019| 
||      MOV *SP(#2), T0 ; |2019| 

        MOV *AR3(#77), T1 ; |2019| 
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_TI_call
	.dwattr $C$DW$477, DW_AT_TI_indirect
        CALL AC1  ; |2019| 
                                        ; call occurs [AC0] ; |2019| 
        MOV T0, *SP(#8) ; |2019| 
$C$L155:    
	.dwpsn	file "src/csl_msc.c",line 2025,column 4,is_stmt
        CMP *SP(#8) == #1, TC1 ; |2025| 
        BCC $C$L161,!TC1 ; |2025| 
                                        ; branchcc occurs ; |2025| 
	.dwpsn	file "src/csl_msc.c",line 2027,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2027| 
        MOV AC0, AR1 ; |2027| 
        AADD AR1, AR3 ; |2027| 
        MOV dbl(*AR3(#72)), AC1 ; |2027| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2027| 
        CMPU AC1 >= AC0, TC1 ; |2027| 
        BCC $C$L156,TC1 ; |2027| 
                                        ; branchcc occurs ; |2027| 
	.dwpsn	file "src/csl_msc.c",line 2029,column 5,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2029| 
        MOV AC0, AR1 ; |2029| 
        AADD AR1, AR3 ; |2029| 
        MOV *AR3(#73), AR1 ; |2029| 
        MOV AR1, *SP(#7) ; |2029| 
	.dwpsn	file "src/csl_msc.c",line 2030,column 4,is_stmt
        B $C$L157 ; |2030| 
                                        ; branch occurs ; |2030| 
$C$L156:    
	.dwpsn	file "src/csl_msc.c",line 2033,column 5,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2033| 
        AND #0xffff, AC0, AC0 ; |2033| 
        MOV AC0, *SP(#7) ; |2033| 
$C$L157:    
	.dwpsn	file "src/csl_msc.c",line 2037,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#7)), AC0 ; |2037| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |2037| 
        MOV AC0, dbl(*AR3(#16)) ; |2037| 
	.dwpsn	file "src/csl_msc.c",line 2038,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2038| 
        AND #0xffff, AC0, AC0 ; |2038| 
        MOV AC0, *AR3(#287) ; |2038| 
	.dwpsn	file "src/csl_msc.c",line 2040,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2040| 
        MOV HI(AC0), *AR3(#288) ; |2040| 
	.dwpsn	file "src/csl_msc.c",line 2044,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #5, *AR3(#319) ; |2044| 
	.dwpsn	file "src/csl_msc.c",line 2045,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2045| 
        MOV AC0, AR1 ; |2045| 
        AADD AR1, AR3 ; |2045| 
        AADD #18, AR3 ; |2045| 
        MOV dbl(*AR3(#52)), AC0 ; |2045| 
        ADD #1, AC0 ; |2045| 
        MOV AC0, dbl(*AR3(#52)) ; |2045| 
	.dwpsn	file "src/csl_msc.c",line 2047,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2047| 
        MOV AC0, AR1 ; |2047| 
        AADD AR1, AR3 ; |2047| 
        MOV *AR3(#77), AR1 ; |2047| 
        BCC $C$L158,AR1 == #0 ; |2047| 
                                        ; branchcc occurs ; |2047| 
	.dwpsn	file "src/csl_msc.c",line 2049,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2049| 
        MOV AC0, AR1 ; |2049| 
        AADD AR1, AR3 ; |2049| 
        AADD #18, AR3 ; |2049| 
        SUB #1, *AR3(#59) ; |2049| 
$C$L158:    
	.dwpsn	file "src/csl_msc.c",line 2052,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2052| 
        MOV AC0, AR1 ; |2052| 
        AADD AR1, AR3 ; |2052| 
        MOV *AR3(#77), AR1 ; |2052| 
        BCC $C$L160,AR1 != #0 ; |2052| 
                                        ; branchcc occurs ; |2052| 
	.dwpsn	file "src/csl_msc.c",line 2056,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2056| 
        BCC $C$L159,AC0 == #0 ; |2056| 
                                        ; branchcc occurs ; |2056| 
	.dwpsn	file "src/csl_msc.c",line 2058,column 6,is_stmt
        MOV #0, *AR3(#289) ; |2058| 
	.dwpsn	file "src/csl_msc.c",line 2061,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |2061| 
	.dwpsn	file "src/csl_msc.c",line 2062,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$478, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |2062| 
                                        ; call occurs [#_USB_stallEndpt] ; |2062| 
        MOV T0, *SP(#9) ; |2062| 
	.dwpsn	file "src/csl_msc.c",line 2065,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |2065| 
        MOV dbl(*AR3(#14)), XAR1
        MOV dbl(*AR3(#314)), XAR0
$C$DW$479	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$479, DW_AT_low_pc(0x00)
	.dwattr $C$DW$479, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$479, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2065| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |2065| 
        MOV T0, *SP(#9) ; |2065| 
	.dwpsn	file "src/csl_msc.c",line 2069,column 6,is_stmt
        B $C$L166 ; |2069| 
                                        ; branch occurs ; |2069| 
$C$L159:    
	.dwpsn	file "src/csl_msc.c",line 2074,column 6,is_stmt
        MOV #0, *AR3(#289) ; |2074| 
	.dwpsn	file "src/csl_msc.c",line 2075,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |2075| 
$C$L160:    
	.dwpsn	file "src/csl_msc.c",line 2080,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2080| 
        MOV AC0, AR1 ; |2080| 
        MOV dbl(*AR3(#314)), XAR0
        AADD AR1, AR3 ; |2080| 
        MOV *AR3(#73), T0 ; |2080| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#14)), XAR1
$C$DW$480	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$480, DW_AT_low_pc(0x00)
	.dwattr $C$DW$480, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$480, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2080| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2080| 
        MOV T0, *SP(#9) ; |2080| 
	.dwpsn	file "src/csl_msc.c",line 2084,column 3,is_stmt
        B $C$L165 ; |2084| 
                                        ; branch occurs ; |2084| 
$C$L161:    
	.dwpsn	file "src/csl_msc.c",line 2088,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2088| 
        AND #0xffff, AC0, AC0 ; |2088| 
        MOV AC0, *AR3(#287) ; |2088| 
	.dwpsn	file "src/csl_msc.c",line 2090,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2090| 
        MOV HI(AC0), *AR3(#288) ; |2090| 
	.dwpsn	file "src/csl_msc.c",line 2092,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2092| 
	.dwpsn	file "src/csl_msc.c",line 2094,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |2094| 
	.dwpsn	file "src/csl_msc.c",line 2096,column 4,is_stmt
        MOV *SP(#8), AR1 ; |2096| 
        BCC $C$L162,AR1 != #0 ; |2096| 
                                        ; branchcc occurs ; |2096| 
	.dwpsn	file "src/csl_msc.c",line 2098,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #33, T1 ; |2098| 
        AMAR *+AR0(#266) ; |2098| 
$C$DW$481	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$481, DW_AT_low_pc(0x00)
	.dwattr $C$DW$481, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$481, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2098| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2098| 
	.dwpsn	file "src/csl_msc.c",line 2101,column 4,is_stmt
        B $C$L164 ; |2101| 
                                        ; branch occurs ; |2101| 
$C$L162:    
	.dwpsn	file "src/csl_msc.c",line 2102,column 9,is_stmt
        CMP *SP(#8) == #2, TC1 ; |2102| 
        BCC $C$L163,!TC1 ; |2102| 
                                        ; branchcc occurs ; |2102| 
	.dwpsn	file "src/csl_msc.c",line 2104,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2104| 
        AMAR *+AR0(#266) ; |2104| 
$C$DW$482	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$482, DW_AT_low_pc(0x00)
	.dwattr $C$DW$482, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$482, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2104| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2104| 
	.dwpsn	file "src/csl_msc.c",line 2108,column 5,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2108| 
        MOV AC0, AR1 ; |2108| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2108| 
        AADD #18, AR3 ; |2108| 
        AND #0xfff6, *AR3(#57) ; |2108| 
	.dwpsn	file "src/csl_msc.c",line 2109,column 4,is_stmt
        B $C$L164 ; |2109| 
                                        ; branch occurs ; |2109| 
$C$L163:    
	.dwpsn	file "src/csl_msc.c",line 2112,column 5,is_stmt
        CMP *SP(#8) == #4, TC1 ; |2112| 
        BCC $C$L164,!TC1 ; |2112| 
                                        ; branchcc occurs ; |2112| 
	.dwpsn	file "src/csl_msc.c",line 2114,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #2, T0
        AMAR *+AR0(#266) ; |2114| 
$C$DW$483	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$483, DW_AT_low_pc(0x00)
	.dwattr $C$DW$483, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$483, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2114| 
||      MOV #4, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2114| 
	.dwpsn	file "src/csl_msc.c",line 2117,column 6,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2117| 
        MOV AC0, AR1 ; |2117| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2117| 
        AADD #18, AR3 ; |2117| 
        AND #0xfffe, *AR3(#57) ; |2117| 
	.dwpsn	file "src/csl_msc.c",line 2119,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2119| 
        MOV AC0, AR1 ; |2119| 
        AADD AR1, AR3 ; |2119| 
        AADD #18, AR3 ; |2119| 
        OR #0x0008, *AR3(#57) ; |2119| 
$C$L164:    
	.dwpsn	file "src/csl_msc.c",line 2124,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#0)), XAR1
        MOV #0, T0
        MOV dbl(*AR3(#314)), XAR0
        AMAR *+AR1(#282) ; |2124| 
$C$DW$484	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$484, DW_AT_low_pc(0x00)
	.dwattr $C$DW$484, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$484, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2124| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2124| 
        MOV T0, *SP(#9) ; |2124| 
$C$L165:    
	.dwpsn	file "src/csl_msc.c",line 2130,column 2,is_stmt
        MOV *SP(#9), T0 ; |2130| 
$C$L166:    
	.dwpsn	file "src/csl_msc.c",line 2131,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$458, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$458, DW_AT_TI_end_line(0x853)
	.dwattr $C$DW$458, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$458

	.sect	".text"
	.global	_MSC_ExecuteWrite

$C$DW$486	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_ExecuteWrite")
	.dwattr $C$DW$486, DW_AT_low_pc(_MSC_ExecuteWrite)
	.dwattr $C$DW$486, DW_AT_high_pc(0x00)
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_MSC_ExecuteWrite")
	.dwattr $C$DW$486, DW_AT_external
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$486, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$486, DW_AT_TI_begin_line(0x889)
	.dwattr $C$DW$486, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$486, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_msc.c",line 2188,column 1,is_stmt,address _MSC_ExecuteWrite

	.dwfde $C$DW$CIE, _MSC_ExecuteWrite
$C$DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg17]
$C$DW$488	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lunNum")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg12]
$C$DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_name("first")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_first")
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: MSC_ExecuteWrite                                             *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,AC2,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3, *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_ExecuteWrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$490	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$490, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$491	.dwtag  DW_TAG_variable, DW_AT_name("lunNum")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_lunNum")
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$491, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$492	.dwtag  DW_TAG_variable, DW_AT_name("first")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_first")
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$492, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$493	.dwtag  DW_TAG_variable, DW_AT_name("mediaLba")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_mediaLba")
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$493, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$494	.dwtag  DW_TAG_variable, DW_AT_name("mediaLbaCount")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_mediaLbaCount")
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$494, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$495	.dwtag  DW_TAG_variable, DW_AT_name("tempData")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_tempData")
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$495, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$496	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$497	.dwtag  DW_TAG_variable, DW_AT_name("mediaStat")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_mediaStat")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV T1, *SP(#3) ; |2188| 
        MOV T0, *SP(#2) ; |2188| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 2195,column 2,is_stmt
        MOV #0, *SP(#8) ; |2195| 
	.dwpsn	file "src/csl_msc.c",line 2198,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        BTST #7, *AR3(#303), TC1 ; |2198| 
        BCC $C$L167,!TC1 ; |2198| 
                                        ; branchcc occurs ; |2198| 
        MOV dbl(*AR3(#16)), AC0 ; |2198| 
        BCC $C$L167,AC0 == #0 ; |2198| 
                                        ; branchcc occurs ; |2198| 
	.dwpsn	file "src/csl_msc.c",line 2202,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR0
$C$DW$498	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$498, DW_AT_low_pc(0x00)
	.dwattr $C$DW$498, DW_AT_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$498, DW_AT_TI_call

        CALL #_MSC_handleDataDirMisMatch ; |2202| 
||      MOV #0, T0

                                        ; call occurs [#_MSC_handleDataDirMisMatch] ; |2202| 
        MOV T0, *SP(#8) ; |2202| 
	.dwpsn	file "src/csl_msc.c",line 2204,column 3,is_stmt
        B $C$L189 ; |2204| 
                                        ; branch occurs ; |2204| 
$C$L167:    
	.dwpsn	file "src/csl_msc.c",line 2207,column 2,is_stmt
        MOV *SP(#3), AR1 ; |2207| 
        BCC $C$L169,AR1 == #0 ; |2207| 
                                        ; branchcc occurs ; |2207| 
	.dwpsn	file "src/csl_msc.c",line 2213,column 3,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2213| 
        BCC $C$L168,AC0 == #0 ; |2213| 
                                        ; branchcc occurs ; |2213| 
	.dwpsn	file "src/csl_msc.c",line 2215,column 4,is_stmt
        MOV uns(high_byte(*AR3(#305))), AR1 ; |2215| 
        AND #0xffff, AR1, AC0 ; |2215| 
        SFTS AC0, #24, AC0 ; |2215| 
        MOV AC0, dbl(*SP(#4)) ; |2215| 
	.dwpsn	file "src/csl_msc.c",line 2217,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(low_byte(*AR3(#306))), AR1 ; |2217| 

        MOV AR1, HI(AC0) ; |2217| 
||      MOV dbl(*SP(#4)), AC1 ; |2217| 

        OR AC1, AC0 ; |2217| 
        MOV AC0, dbl(*SP(#4)) ; |2217| 
	.dwpsn	file "src/csl_msc.c",line 2219,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*SP(#4)), AC0 ; |2219| 
        MOV uns(high_byte(*AR3(#306))), AR1 ; |2219| 
        AND #0xffff, AR1, AC1 ; |2219| 
        OR AC1 << #8, AC0 ; |2219| 
        MOV AC0, dbl(*SP(#4)) ; |2219| 
	.dwpsn	file "src/csl_msc.c",line 2221,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#307), AR1 ; |2221| 

        AND #0x00ff, AR1, AC0 ; |2221| 
||      MOV dbl(*SP(#4)), AC1 ; |2221| 

        OR AC1, AC0 ; |2221| 
        MOV AC0, dbl(*SP(#4)) ; |2221| 
	.dwpsn	file "src/csl_msc.c",line 2223,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#308), AC1 ; |2223| 
        MOV uns(high_byte(*AR3(#308))), AC0 ; |2223| 
        OR AC1 << #8, AC0 ; |2223| 
        MOV AC0, *SP(#6) ; |2223| 
	.dwpsn	file "src/csl_msc.c",line 2225,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2225| 
        MOV AC0, AR1 ; |2225| 

        MOV dbl(*SP(#4)), AC0 ; |2225| 
||      AADD AR1, AR3 ; |2225| 

        MOV AC0, dbl(*AR3(#70)) ; |2225| 
	.dwpsn	file "src/csl_msc.c",line 2226,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2226| 
        MOV AC0, AR1 ; |2226| 

        MOV *SP(#6), AR1 ; |2226| 
||      AADD AR1, AR3 ; |2226| 

        MOV AR1, *AR3(#77) ; |2226| 
	.dwpsn	file "src/csl_msc.c",line 2227,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #6, *AR3(#319) ; |2227| 
	.dwpsn	file "src/csl_msc.c",line 2228,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2228| 
        MOV AC0, AR1 ; |2228| 
        AADD AR1, AR3 ; |2228| 
        MOV #0, *AR3(#78) ; |2228| 
	.dwpsn	file "src/csl_msc.c",line 2229,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#325) ; |2229| 
	.dwpsn	file "src/csl_msc.c",line 2230,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2230| 
        MOV AC0, AR1 ; |2230| 
        AADD AR1, AR3 ; |2230| 
        AADD #18, AR3 ; |2230| 
        AND #0xfffb, *AR3(#57) ; |2230| 
	.dwpsn	file "src/csl_msc.c",line 2232,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2232| 
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$499, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2232| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2232| 
	.dwpsn	file "src/csl_msc.c",line 2235,column 3,is_stmt
        B $C$L169 ; |2235| 
                                        ; branch occurs ; |2235| 
$C$L168:    
	.dwpsn	file "src/csl_msc.c",line 2238,column 4,is_stmt
        MOV dbl(*AR3(#314)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$500, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |2238| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |2238| 
        MOV T0, *SP(#8) ; |2238| 
	.dwpsn	file "src/csl_msc.c",line 2240,column 4,is_stmt
        B $C$L189 ; |2240| 
                                        ; branch occurs ; |2240| 
$C$L169:    
	.dwpsn	file "src/csl_msc.c",line 2244,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        AMAR *SP(#8), XAR1
        MOV dbl(*AR3(#316)), XAR0
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_name("_USB_isTransactionDone")
	.dwattr $C$DW$501, DW_AT_TI_call
        CALL #_USB_isTransactionDone ; |2244| 
                                        ; call occurs [#_USB_isTransactionDone] ; |2244| 
        BCC $C$L188,T0 == #0 ; |2244| 
                                        ; branchcc occurs ; |2244| 
	.dwpsn	file "src/csl_msc.c",line 2246,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(#325) == #1, TC1 ; |2246| 
        BCC $C$L179,!TC1 ; |2246| 
                                        ; branchcc occurs ; |2246| 
	.dwpsn	file "src/csl_msc.c",line 2248,column 4,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2248| 
        MOV AC0, AR1 ; |2248| 
        AADD AR1, AR3 ; |2248| 
        BTST #2, *AR3(#75), TC1 ; |2248| 
        BCC $C$L179,!TC1 ; |2248| 
                                        ; branchcc occurs ; |2248| 
	.dwpsn	file "src/csl_msc.c",line 2250,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2250| 
        MOV AC0, AR1 ; |2250| 
        AADD AR1, AR3 ; |2250| 
        AADD #18, AR3 ; |2250| 
        AND #0xfffb, *AR3(#57) ; |2250| 
	.dwpsn	file "src/csl_msc.c",line 2252,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2252| 
        MOV AC0, AR1 ; |2252| 
        AADD AR1, AR3 ; |2252| 
        MOV *AR3(#78), AR1 ; |2252| 
        BCC $C$L179,AR1 != #0 ; |2252| 
                                        ; branchcc occurs ; |2252| 
	.dwpsn	file "src/csl_msc.c",line 2254,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2254| 
        MOV AC0, AR1 ; |2254| 
        AADD AR1, AR3 ; |2254| 
        BTST #0, *AR3(#76), TC1 ; |2254| 
        BCC $C$L170,TC1 ; |2254| 
                                        ; branchcc occurs ; |2254| 
	.dwpsn	file "src/csl_msc.c",line 2257,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #32, T1 ; |2257| 
        AMAR *+AR0(#266) ; |2257| 
$C$DW$502	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$502, DW_AT_low_pc(0x00)
	.dwattr $C$DW$502, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$502, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2257| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2257| 
	.dwpsn	file "src/csl_msc.c",line 2260,column 7,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2260| 
        MOV AC0, AR1 ; |2260| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2260| 
        MOV #1, *AR3(#78) ; |2260| 
	.dwpsn	file "src/csl_msc.c",line 2261,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2261| 
        AND #0xffff, AC0, AC0 ; |2261| 
        MOV AC0, *AR3(#287) ; |2261| 
	.dwpsn	file "src/csl_msc.c",line 2264,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2264| 
        MOV HI(AC0), *AR3(#288) ; |2264| 
	.dwpsn	file "src/csl_msc.c",line 2267,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2267| 
$C$L170:    
	.dwpsn	file "src/csl_msc.c",line 2270,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2270| 
        MOV AC0, AR1 ; |2270| 
        AADD AR1, AR3 ; |2270| 
        MOV *AR3(#78), AR1 ; |2270| 
        BCC $C$L179,AR1 != #0 ; |2270| 
                                        ; branchcc occurs ; |2270| 
	.dwpsn	file "src/csl_msc.c",line 2273,column 7,is_stmt
        MOV #2, *SP(#9) ; |2273| 
	.dwpsn	file "src/csl_msc.c",line 2275,column 7,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2275| 
        MOV AC0, AR1 ; |2275| 
        AADD AR1, AR3 ; |2275| 
        BTST #0, *AR3(#75), TC1 ; |2275| 
        BCC $C$L171,TC1 ; |2275| 
                                        ; branchcc occurs ; |2275| 
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2275| 
        MOV AC0, AR1 ; |2275| 
        AADD AR1, AR3 ; |2275| 
        BTST #3, *AR3(#75), TC1 ; |2275| 
        BCC $C$L177,!TC1 ; |2275| 
                                        ; branchcc occurs ; |2275| 
$C$L171:    
	.dwpsn	file "src/csl_msc.c",line 2278,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2278| 
        MOV AC0, AR1 ; |2278| 
        MPYMK *SP(#2), #62, AC2 ; |2278| 
        MOV dbl(*AR3(short(#2))), AC1 ; |2278| 
        MOV dbl(*AR3(#14)), XAR0

        MOV AC2, AR1 ; |2278| 
||      AADD AR1, AR3 ; |2278| 

        MOV dbl(*AR3(#70)), AC0 ; |2278| 
        MOV dbl(*SP(#0)), XAR3

        AADD AR1, AR3 ; |2278| 
||      MOV *SP(#2), T0 ; |2278| 

        MOV *AR3(#77), T1 ; |2278| 
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_TI_call
	.dwattr $C$DW$503, DW_AT_TI_indirect
        CALL AC1  ; |2278| 
                                        ; call occurs [AC0] ; |2278| 
        MOV T0, *SP(#9) ; |2278| 
	.dwpsn	file "src/csl_msc.c",line 2284,column 7,is_stmt
        B $C$L177 ; |2284| 
                                        ; branch occurs ; |2284| 
$C$L172:    
	.dwpsn	file "src/csl_msc.c",line 2287,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #33, T1 ; |2287| 
        AMAR *+AR0(#266) ; |2287| 
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$504, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2287| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2287| 
	.dwpsn	file "src/csl_msc.c",line 2290,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2290| 
        AND #0xffff, AC0, AC0 ; |2290| 
        MOV AC0, *AR3(#287) ; |2290| 
	.dwpsn	file "src/csl_msc.c",line 2293,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2293| 
        MOV HI(AC0), *AR3(#288) ; |2293| 
	.dwpsn	file "src/csl_msc.c",line 2296,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2296| 
	.dwpsn	file "src/csl_msc.c",line 2298,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2298| 
        MOV AC0, AR1 ; |2298| 
        AADD AR1, AR3 ; |2298| 
        MOV #1, *AR3(#78) ; |2298| 
	.dwpsn	file "src/csl_msc.c",line 2300,column 16,is_stmt
        B $C$L179 ; |2300| 
                                        ; branch occurs ; |2300| 
$C$L173:    
	.dwpsn	file "src/csl_msc.c",line 2303,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #512, AC0 ; |2303| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |2303| 
        MOV AC0, dbl(*AR3(#16)) ; |2303| 
	.dwpsn	file "src/csl_msc.c",line 2304,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2304| 
        AND #0xffff, AC0, AC0 ; |2304| 
        MOV AC0, *AR3(#287) ; |2304| 
	.dwpsn	file "src/csl_msc.c",line 2307,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2307| 
        MOV HI(AC0), *AR3(#288) ; |2307| 
	.dwpsn	file "src/csl_msc.c",line 2310,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2310| 
	.dwpsn	file "src/csl_msc.c",line 2312,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2312| 
        MOV AC0, AR1 ; |2312| 
        AADD AR1, AR3 ; |2312| 
        MOV #0, *AR3(#78) ; |2312| 
	.dwpsn	file "src/csl_msc.c",line 2314,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2314| 
        MOV AC0, AR1 ; |2314| 
        AADD AR1, AR3 ; |2314| 
        AADD #18, AR3 ; |2314| 
        MOV dbl(*AR3(#52)), AC0 ; |2314| 
        ADD #1, AC0 ; |2314| 
        MOV AC0, dbl(*AR3(#52)) ; |2314| 
	.dwpsn	file "src/csl_msc.c",line 2316,column 16,is_stmt
        B $C$L179 ; |2316| 
                                        ; branch occurs ; |2316| 
$C$L174:    
	.dwpsn	file "src/csl_msc.c",line 2319,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2319| 
        AMAR *+AR0(#266) ; |2319| 
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$505, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2319| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2319| 
	.dwpsn	file "src/csl_msc.c",line 2322,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2322| 
        AND #0xffff, AC0, AC0 ; |2322| 
        MOV AC0, *AR3(#287) ; |2322| 
	.dwpsn	file "src/csl_msc.c",line 2325,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2325| 
        MOV HI(AC0), *AR3(#288) ; |2325| 
	.dwpsn	file "src/csl_msc.c",line 2328,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2328| 
	.dwpsn	file "src/csl_msc.c",line 2330,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2330| 
        MOV AC0, AR1 ; |2330| 
        AADD AR1, AR3 ; |2330| 
        MOV #1, *AR3(#78) ; |2330| 
	.dwpsn	file "src/csl_msc.c",line 2333,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2333| 
        MOV AC0, AR1 ; |2333| 
        AADD AR1, AR3 ; |2333| 
        AADD #18, AR3 ; |2333| 
        AND #0xfff6, *AR3(#57) ; |2333| 
	.dwpsn	file "src/csl_msc.c",line 2336,column 16,is_stmt
        B $C$L179 ; |2336| 
                                        ; branch occurs ; |2336| 
$C$L175:    
	.dwpsn	file "src/csl_msc.c",line 2339,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #39, T1 ; |2339| 
        AMAR *+AR0(#266) ; |2339| 
$C$DW$506	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$506, DW_AT_low_pc(0x00)
	.dwattr $C$DW$506, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$506, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2339| 
||      MOV #7, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2339| 
	.dwpsn	file "src/csl_msc.c",line 2342,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2342| 
        AND #0xffff, AC0, AC0 ; |2342| 
        MOV AC0, *AR3(#287) ; |2342| 
	.dwpsn	file "src/csl_msc.c",line 2345,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2345| 
        MOV HI(AC0), *AR3(#288) ; |2345| 
	.dwpsn	file "src/csl_msc.c",line 2348,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2348| 
	.dwpsn	file "src/csl_msc.c",line 2350,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2350| 
        MOV AC0, AR1 ; |2350| 
        AADD AR1, AR3 ; |2350| 
        MOV #1, *AR3(#78) ; |2350| 
	.dwpsn	file "src/csl_msc.c",line 2353,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2353| 
        MOV AC0, AR1 ; |2353| 
        AADD AR1, AR3 ; |2353| 
        AADD #18, AR3 ; |2353| 
        AND #0xfff6, *AR3(#57) ; |2353| 
	.dwpsn	file "src/csl_msc.c",line 2356,column 16,is_stmt
        B $C$L179 ; |2356| 
                                        ; branch occurs ; |2356| 
$C$L176:    
	.dwpsn	file "src/csl_msc.c",line 2360,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #2, T0
        AMAR *+AR0(#266) ; |2360| 
$C$DW$507	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$507, DW_AT_low_pc(0x00)
	.dwattr $C$DW$507, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$507, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2360| 
||      MOV #4, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2360| 
	.dwpsn	file "src/csl_msc.c",line 2363,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2363| 
        AND #0xffff, AC0, AC0 ; |2363| 
        MOV AC0, *AR3(#287) ; |2363| 
	.dwpsn	file "src/csl_msc.c",line 2366,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2366| 
        MOV HI(AC0), *AR3(#288) ; |2366| 
	.dwpsn	file "src/csl_msc.c",line 2369,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2369| 
	.dwpsn	file "src/csl_msc.c",line 2371,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2371| 
        MOV AC0, AR1 ; |2371| 
        AADD AR1, AR3 ; |2371| 
        MOV #1, *AR3(#78) ; |2371| 
	.dwpsn	file "src/csl_msc.c",line 2373,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2373| 
        MOV AC0, AR1 ; |2373| 
        AADD AR1, AR3 ; |2373| 
        AADD #18, AR3 ; |2373| 
        AND #0xfffe, *AR3(#57) ; |2373| 
	.dwpsn	file "src/csl_msc.c",line 2375,column 11,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2375| 
        MOV AC0, AR1 ; |2375| 
        AADD AR1, AR3 ; |2375| 
        AADD #18, AR3 ; |2375| 
        OR #0x0008, *AR3(#57) ; |2375| 
	.dwpsn	file "src/csl_msc.c",line 2378,column 16,is_stmt
        B $C$L179 ; |2378| 
                                        ; branch occurs ; |2378| 
$C$L177:    
	.dwpsn	file "src/csl_msc.c",line 2284,column 7,is_stmt

        MOV *SP(#9), AR1 ; |2284| 
||      MOV #2, AR2

        CMP AR1 > AR2, TC1 ; |2284| 
        BCC $C$L178,TC1 ; |2284| 
                                        ; branchcc occurs ; |2284| 
        CMP AR1 == AR2, TC1 ; |2284| 
        BCC $C$L174,TC1 ; |2284| 
                                        ; branchcc occurs ; |2284| 
        BCC $C$L172,AR1 == #0 ; |2284| 
                                        ; branchcc occurs ; |2284| 
        MOV #1, AR2
        CMP AR1 == AR2, TC1 ; |2284| 
        BCC $C$L173,TC1 ; |2284| 
                                        ; branchcc occurs ; |2284| 
        B $C$L179 ; |2284| 
                                        ; branch occurs ; |2284| 
$C$L178:    
        MOV #3, AR2
        CMP AR1 == AR2, TC1 ; |2284| 
        BCC $C$L175,TC1 ; |2284| 
                                        ; branchcc occurs ; |2284| 
        MOV #4, AR2
        CMP AR1 == AR2, TC1 ; |2284| 
        BCC $C$L176,TC1 ; |2284| 
                                        ; branchcc occurs ; |2284| 
$C$L179:    
	.dwpsn	file "src/csl_msc.c",line 2387,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2387| 
        MOV AC0, AR1 ; |2387| 
        AADD AR1, AR3 ; |2387| 
        MOV *AR3(#77), AR1 ; |2387| 
        BCC $C$L183,AR1 == #0 ; |2387| 
                                        ; branchcc occurs ; |2387| 
	.dwpsn	file "src/csl_msc.c",line 2391,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2391| 
        BCC $C$L180,AC0 != #0 ; |2391| 
                                        ; branchcc occurs ; |2391| 
	.dwpsn	file "src/csl_msc.c",line 2393,column 5,is_stmt
        MOV dbl(*AR3(#314)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$508	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$508, DW_AT_low_pc(0x00)
	.dwattr $C$DW$508, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$508, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |2393| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |2393| 
        MOV T0, *SP(#8) ; |2393| 
	.dwpsn	file "src/csl_msc.c",line 2395,column 4,is_stmt
        B $C$L188 ; |2395| 
                                        ; branch occurs ; |2395| 
$C$L180:    
	.dwpsn	file "src/csl_msc.c",line 2398,column 5,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2398| 
        MOV AC0, AR1 ; |2398| 
        AADD AR1, AR3 ; |2398| 
        AADD #18, AR3 ; |2398| 
        OR #0x0004, *AR3(#57) ; |2398| 
	.dwpsn	file "src/csl_msc.c",line 2399,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2399| 
        MOV AC0, AR1 ; |2399| 
        AADD AR1, AR3 ; |2399| 
        AADD #18, AR3 ; |2399| 
        SUB #1, *AR3(#59) ; |2399| 
	.dwpsn	file "src/csl_msc.c",line 2400,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2400| 
        MOV AC0, AR1 ; |2400| 
        AADD AR1, AR3 ; |2400| 
        MOV dbl(*AR3(#72)), AC1 ; |2400| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2400| 
        CMPU AC1 >= AC0, TC1 ; |2400| 
        BCC $C$L181,TC1 ; |2400| 
                                        ; branchcc occurs ; |2400| 
	.dwpsn	file "src/csl_msc.c",line 2403,column 6,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2403| 
        MOV AC0, AR1 ; |2403| 
        AADD AR1, AR3 ; |2403| 
        MOV *AR3(#73), AR1 ; |2403| 
        MOV AR1, *SP(#7) ; |2403| 
	.dwpsn	file "src/csl_msc.c",line 2404,column 5,is_stmt
        B $C$L182 ; |2404| 
                                        ; branch occurs ; |2404| 
$C$L181:    
	.dwpsn	file "src/csl_msc.c",line 2407,column 6,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2407| 
        AND #0xffff, AC0, AC0 ; |2407| 
        MOV AC0, *SP(#7) ; |2407| 
$C$L182:    
	.dwpsn	file "src/csl_msc.c",line 2411,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |2411| 
        MOV dbl(*AR3(#316)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$509	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$509, DW_AT_low_pc(0x00)
	.dwattr $C$DW$509, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$509, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2411| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2411| 
        MOV T0, *SP(#8) ; |2411| 
	.dwpsn	file "src/csl_msc.c",line 2415,column 6,is_stmt
        B $C$L188 ; |2415| 
                                        ; branch occurs ; |2415| 
$C$L183:    
	.dwpsn	file "src/csl_msc.c",line 2423,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2423| 
        BCC $C$L187,AC0 == #0 ; |2423| 
                                        ; branchcc occurs ; |2423| 
	.dwpsn	file "src/csl_msc.c",line 2427,column 5,is_stmt
        CMP *AR3(#325) == #1, TC1 ; |2427| 
        BCC $C$L184,!TC1 ; |2427| 
                                        ; branchcc occurs ; |2427| 
	.dwpsn	file "src/csl_msc.c",line 2429,column 6,is_stmt
        MOV #0, *AR3(#325) ; |2429| 
	.dwpsn	file "src/csl_msc.c",line 2430,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2430| 
        AND #0xffff, AC0, AC0 ; |2430| 
        MOV AC0, *AR3(#287) ; |2430| 
	.dwpsn	file "src/csl_msc.c",line 2433,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2433| 
        MOV HI(AC0), *AR3(#288) ; |2433| 
	.dwpsn	file "src/csl_msc.c",line 2436,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2436| 
$C$L184:    
	.dwpsn	file "src/csl_msc.c",line 2440,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#2), #62, AC0 ; |2440| 
        MOV AC0, AR1 ; |2440| 
        AADD AR1, AR3 ; |2440| 
        MOV dbl(*AR3(#72)), AC1 ; |2440| 
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2440| 
        CMPU AC1 >= AC0, TC1 ; |2440| 
        BCC $C$L185,TC1 ; |2440| 
                                        ; branchcc occurs ; |2440| 
	.dwpsn	file "src/csl_msc.c",line 2443,column 6,is_stmt
        MPYMK *SP(#2), #62, AC0 ; |2443| 
        MOV AC0, AR1 ; |2443| 
        AADD AR1, AR3 ; |2443| 
        MOV *AR3(#73), AR1 ; |2443| 
        MOV AR1, *SP(#7) ; |2443| 
	.dwpsn	file "src/csl_msc.c",line 2444,column 5,is_stmt
        B $C$L186 ; |2444| 
                                        ; branch occurs ; |2444| 
$C$L185:    
	.dwpsn	file "src/csl_msc.c",line 2447,column 6,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2447| 
        AND #0xffff, AC0, AC0 ; |2447| 
        MOV AC0, *SP(#7) ; |2447| 
$C$L186:    
	.dwpsn	file "src/csl_msc.c",line 2451,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#7)), AC0 ; |2451| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |2451| 
        MOV AC0, dbl(*AR3(#16)) ; |2451| 
	.dwpsn	file "src/csl_msc.c",line 2453,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), T0 ; |2453| 
        MOV dbl(*AR3(#316)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$510	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$510, DW_AT_low_pc(0x00)
	.dwattr $C$DW$510, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$510, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2453| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2453| 
        MOV T0, *SP(#8) ; |2453| 
	.dwpsn	file "src/csl_msc.c",line 2456,column 4,is_stmt
        B $C$L188 ; |2456| 
                                        ; branch occurs ; |2456| 
$C$L187:    
	.dwpsn	file "src/csl_msc.c",line 2459,column 5,is_stmt
        MOV #4, *AR3(#319) ; |2459| 
	.dwpsn	file "src/csl_msc.c",line 2460,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#0)), XAR3
        MOV #13, T0
        AMAR *+AR1(#282) ; |2460| 
        MOV dbl(*AR3(#314)), XAR0
$C$DW$511	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$511, DW_AT_low_pc(0x00)
	.dwattr $C$DW$511, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$511, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2460| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |2460| 
        MOV T0, *SP(#8) ; |2460| 
$C$L188:    
	.dwpsn	file "src/csl_msc.c",line 2468,column 2,is_stmt
        MOV *SP(#8), T0 ; |2468| 
$C$L189:    
	.dwpsn	file "src/csl_msc.c",line 2469,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$486, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$486, DW_AT_TI_end_line(0x9a5)
	.dwattr $C$DW$486, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$486

	.sect	".text"
	.global	_MSC_HandleTestUnitReady

$C$DW$513	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleTestUnitReady")
	.dwattr $C$DW$513, DW_AT_low_pc(_MSC_HandleTestUnitReady)
	.dwattr $C$DW$513, DW_AT_high_pc(0x00)
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_MSC_HandleTestUnitReady")
	.dwattr $C$DW$513, DW_AT_external
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$513, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$513, DW_AT_TI_begin_line(0x9d4)
	.dwattr $C$DW$513, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$513, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_msc.c",line 2519,column 1,is_stmt,address _MSC_HandleTestUnitReady

	.dwfde $C$DW$CIE, _MSC_HandleTestUnitReady
$C$DW$514	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$514, DW_AT_location[DW_OP_reg17]
$C$DW$515	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$515, DW_AT_location[DW_OP_reg19]
$C$DW$516	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleTestUnitReady                                      *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP, *
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleTestUnitReady:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$517	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$518	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$518, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$519	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$519, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$520	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$520, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$521	.dwtag  DW_TAG_variable, DW_AT_name("mediaPresentStat")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_mediaPresentStat")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$522	.dwtag  DW_TAG_variable, DW_AT_name("mediaInitStat")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_mediaInitStat")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |2519| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 2524,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2524| 
        BCC $C$L190,AC0 == #0 ; |2524| 
                                        ; branchcc occurs ; |2524| 
	.dwpsn	file "src/csl_msc.c",line 2527,column 3,is_stmt
        MOV #2, *AR3(#319) ; |2527| 
	.dwpsn	file "src/csl_msc.c",line 2528,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$523, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |2528| 
                                        ; call occurs [#_USB_stallEndpt] ; |2528| 
        MOV T0, *SP(#5) ; |2528| 
	.dwpsn	file "src/csl_msc.c",line 2529,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$524, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |2529| 
                                        ; call occurs [#_USB_stallEndpt] ; |2529| 
        MOV T0, *SP(#5) ; |2529| 
	.dwpsn	file "src/csl_msc.c",line 2533,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |2533| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$525, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2533| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |2533| 
        OR *SP(#5), T0, AR1 ; |2533| 
        MOV AR1, *SP(#5) ; |2533| 
	.dwpsn	file "src/csl_msc.c",line 2538,column 3,is_stmt
        MOV AR1, T0
        B $C$L197 ; |2538| 
                                        ; branch occurs ; |2538| 
$C$L190:    
	.dwpsn	file "src/csl_msc.c",line 2542,column 2,is_stmt
        MOV dbl(*AR3(short(#4))), AC0 ; |2542| 
        MOV *SP(#4), T0 ; |2542| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_TI_call
	.dwattr $C$DW$526, DW_AT_TI_indirect
        CALL AC0  ; |2542| 
                                        ; call occurs [AC0] ; |2542| 
        MOV T0, *SP(#6) ; |2542| 
	.dwpsn	file "src/csl_msc.c",line 2544,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2544| 
	.dwpsn	file "src/csl_msc.c",line 2546,column 2,is_stmt
        CMP *SP(#6) == #1, TC1 ; |2546| 
        BCC $C$L194,!TC1 ; |2546| 
                                        ; branchcc occurs ; |2546| 
	.dwpsn	file "src/csl_msc.c",line 2549,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2549| 
        MOV AC0, AR1 ; |2549| 
        AADD AR1, AR3 ; |2549| 
        BTST #0, *AR3(#75), TC1 ; |2549| 
        BCC $C$L193,TC1 ; |2549| 
                                        ; branchcc occurs ; |2549| 
	.dwpsn	file "src/csl_msc.c",line 2552,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2552| 
        MOV dbl(*AR3(short(#6))), AC0 ; |2552| 
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_TI_call
	.dwattr $C$DW$527, DW_AT_TI_indirect
        CALL AC0  ; |2552| 
                                        ; call occurs [AC0] ; |2552| 
        MOV T0, *SP(#7) ; |2552| 
	.dwpsn	file "src/csl_msc.c",line 2555,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2555| 
        MOV dbl(*AR3(#12)), AC0 ; |2555| 
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_TI_call
	.dwattr $C$DW$528, DW_AT_TI_indirect
        CALL AC0  ; |2555| 
                                        ; call occurs [AC0] ; |2555| 
        MOV dbl(*SP(#0)), XAR3
        SUB #1, AC0, AC1 ; |2555| 
        MPYMK *SP(#4), #62, AC0 ; |2555| 
        MOV AC0, AR1 ; |2555| 
        AADD AR1, AR3 ; |2555| 
        MOV AC1, dbl(*AR3(#68)) ; |2555| 
	.dwpsn	file "src/csl_msc.c",line 2558,column 4,is_stmt
        CMP *SP(#7) == #1, TC1 ; |2558| 
        BCC $C$L191,!TC1 ; |2558| 
                                        ; branchcc occurs ; |2558| 
	.dwpsn	file "src/csl_msc.c",line 2560,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #40, T1 ; |2560| 
        AMAR *+AR0(#266) ; |2560| 
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$529, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2560| 
||      MOV #6, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2560| 
	.dwpsn	file "src/csl_msc.c",line 2563,column 6,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2563| 
        MOV AC0, AR1 ; |2563| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2563| 
        AADD #18, AR3 ; |2563| 
        OR #0x0001, *AR3(#57) ; |2563| 
	.dwpsn	file "src/csl_msc.c",line 2564,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2564| 
        MOV AC0, AR1 ; |2564| 
        AADD AR1, AR3 ; |2564| 
        AADD #18, AR3 ; |2564| 
        AND #0xfff7, *AR3(#57) ; |2564| 
	.dwpsn	file "src/csl_msc.c",line 2565,column 4,is_stmt
        B $C$L196 ; |2565| 
                                        ; branch occurs ; |2565| 
$C$L191:    
	.dwpsn	file "src/csl_msc.c",line 2566,column 9,is_stmt
        CMP *SP(#7) == #2, TC1 ; |2566| 
        BCC $C$L192,!TC1 ; |2566| 
                                        ; branchcc occurs ; |2566| 
	.dwpsn	file "src/csl_msc.c",line 2568,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2568| 
        AMAR *+AR0(#266) ; |2568| 
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$530, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2568| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2568| 
	.dwpsn	file "src/csl_msc.c",line 2572,column 6,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2572| 
        MOV AC0, AR1 ; |2572| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2572| 
        AADD #18, AR3 ; |2572| 
        AND #0xfff6, *AR3(#57) ; |2572| 
	.dwpsn	file "src/csl_msc.c",line 2574,column 4,is_stmt
        B $C$L196 ; |2574| 
                                        ; branch occurs ; |2574| 
$C$L192:    
	.dwpsn	file "src/csl_msc.c",line 2577,column 5,is_stmt
        CMP *SP(#7) == #4, TC1 ; |2577| 
        BCC $C$L196,!TC1 ; |2577| 
                                        ; branchcc occurs ; |2577| 
	.dwpsn	file "src/csl_msc.c",line 2579,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2579| 
	.dwpsn	file "src/csl_msc.c",line 2581,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #40, T1 ; |2581| 
        AMAR *+AR0(#266) ; |2581| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$531, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2581| 
||      MOV #6, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2581| 
	.dwpsn	file "src/csl_msc.c",line 2584,column 6,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2584| 
        MOV AC0, AR1 ; |2584| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2584| 
        AADD #18, AR3 ; |2584| 
        AND #0xfffe, *AR3(#57) ; |2584| 
	.dwpsn	file "src/csl_msc.c",line 2587,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2587| 
        MOV AC0, AR1 ; |2587| 
        AADD AR1, AR3 ; |2587| 
        AADD #18, AR3 ; |2587| 
        OR #0x0008, *AR3(#57) ; |2587| 
	.dwpsn	file "src/csl_msc.c",line 2591,column 3,is_stmt
        B $C$L196 ; |2591| 
                                        ; branch occurs ; |2591| 
$C$L193:    
	.dwpsn	file "src/csl_msc.c",line 2594,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2594| 
$C$DW$532	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$532, DW_AT_low_pc(0x00)
	.dwattr $C$DW$532, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$532, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2594| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2594| 
	.dwpsn	file "src/csl_msc.c",line 2597,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2597| 
	.dwpsn	file "src/csl_msc.c",line 2599,column 2,is_stmt
        B $C$L196 ; |2599| 
                                        ; branch occurs ; |2599| 
$C$L194:    
	.dwpsn	file "src/csl_msc.c",line 2600,column 7,is_stmt
        CMP *SP(#6) == #2, TC1 ; |2600| 
        BCC $C$L195,!TC1 ; |2600| 
                                        ; branchcc occurs ; |2600| 
	.dwpsn	file "src/csl_msc.c",line 2602,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2602| 
        AMAR *+AR0(#266) ; |2602| 
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$533, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2602| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2602| 
	.dwpsn	file "src/csl_msc.c",line 2606,column 4,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2606| 
        MOV AC0, AR1 ; |2606| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2606| 
        AADD #18, AR3 ; |2606| 
        AND #0xfff6, *AR3(#57) ; |2606| 
	.dwpsn	file "src/csl_msc.c",line 2608,column 2,is_stmt
        B $C$L196 ; |2608| 
                                        ; branch occurs ; |2608| 
$C$L195:    
	.dwpsn	file "src/csl_msc.c",line 2611,column 3,is_stmt
        CMP *SP(#6) == #4, TC1 ; |2611| 
        BCC $C$L196,!TC1 ; |2611| 
                                        ; branchcc occurs ; |2611| 
	.dwpsn	file "src/csl_msc.c",line 2613,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2613| 
	.dwpsn	file "src/csl_msc.c",line 2614,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2614| 
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$534, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2614| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2614| 
	.dwpsn	file "src/csl_msc.c",line 2618,column 4,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2618| 
        MOV AC0, AR1 ; |2618| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2618| 
        AADD #18, AR3 ; |2618| 
        OR #0x0008, *AR3(#57) ; |2618| 
	.dwpsn	file "src/csl_msc.c",line 2619,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2619| 
        MOV AC0, AR1 ; |2619| 
        AADD AR1, AR3 ; |2619| 
        AADD #18, AR3 ; |2619| 
        AND #0xfffe, *AR3(#57) ; |2619| 
$C$L196:    
	.dwpsn	file "src/csl_msc.c",line 2623,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV #13, T0
        AMAR *+AR1(#282) ; |2623| 
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$535, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2623| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2623| 
        MOV T0, *SP(#5) ; |2623| 
	.dwpsn	file "src/csl_msc.c",line 2625,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |2625| 
	.dwpsn	file "src/csl_msc.c",line 2627,column 2,is_stmt
        MOV *SP(#5), T0 ; |2627| 
$C$L197:    
	.dwpsn	file "src/csl_msc.c",line 2628,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$513, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$513, DW_AT_TI_end_line(0xa44)
	.dwattr $C$DW$513, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$513

	.sect	".text"
	.global	_MSC_HandlePreventAllowMediaRemoval

$C$DW$537	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandlePreventAllowMediaRemoval")
	.dwattr $C$DW$537, DW_AT_low_pc(_MSC_HandlePreventAllowMediaRemoval)
	.dwattr $C$DW$537, DW_AT_high_pc(0x00)
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_MSC_HandlePreventAllowMediaRemoval")
	.dwattr $C$DW$537, DW_AT_external
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$537, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$537, DW_AT_TI_begin_line(0xa73)
	.dwattr $C$DW$537, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$537, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "src/csl_msc.c",line 2678,column 1,is_stmt,address _MSC_HandlePreventAllowMediaRemoval

	.dwfde $C$DW$CIE, _MSC_HandlePreventAllowMediaRemoval
$C$DW$538	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$538, DW_AT_location[DW_OP_reg17]
$C$DW$539	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$539, DW_AT_location[DW_OP_reg19]
$C$DW$540	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$540, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandlePreventAllowMediaRemoval                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandlePreventAllowMediaRemoval:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$541	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$541, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$542	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$542, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$543	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$543, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$544	.dwtag  DW_TAG_variable, DW_AT_name("mediaPresentStat")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_mediaPresentStat")
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$544, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$545	.dwtag  DW_TAG_variable, DW_AT_name("mediaLockStat")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_mediaLockStat")
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$545, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$546	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$546, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$547	.dwtag  DW_TAG_variable, DW_AT_name("preventAllowStat")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_preventAllowStat")
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$547, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |2678| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 2684,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2684| 
        BCC $C$L198,AC0 == #0 ; |2684| 
                                        ; branchcc occurs ; |2684| 
	.dwpsn	file "src/csl_msc.c",line 2687,column 3,is_stmt
        MOV #2, *AR3(#319) ; |2687| 
	.dwpsn	file "src/csl_msc.c",line 2688,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$548	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$548, DW_AT_low_pc(0x00)
	.dwattr $C$DW$548, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$548, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |2688| 
                                        ; call occurs [#_USB_stallEndpt] ; |2688| 
        MOV T0, *SP(#7) ; |2688| 
	.dwpsn	file "src/csl_msc.c",line 2689,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$549	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$549, DW_AT_low_pc(0x00)
	.dwattr $C$DW$549, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$549, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |2689| 
                                        ; call occurs [#_USB_stallEndpt] ; |2689| 
        MOV T0, *SP(#7) ; |2689| 
	.dwpsn	file "src/csl_msc.c",line 2693,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |2693| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$550	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$550, DW_AT_low_pc(0x00)
	.dwattr $C$DW$550, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$550, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2693| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |2693| 
        OR *SP(#7), T0, AR1 ; |2693| 
        MOV AR1, *SP(#7) ; |2693| 
	.dwpsn	file "src/csl_msc.c",line 2698,column 3,is_stmt
        MOV AR1, T0
        B $C$L206 ; |2698| 
                                        ; branch occurs ; |2698| 
$C$L198:    
	.dwpsn	file "src/csl_msc.c",line 2702,column 5,is_stmt
        MOV #0, *AR3(#289) ; |2702| 
	.dwpsn	file "src/csl_msc.c",line 2704,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2704| 
$C$DW$551	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$551, DW_AT_low_pc(0x00)
	.dwattr $C$DW$551, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$551, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2704| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2704| 
	.dwpsn	file "src/csl_msc.c",line 2709,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(high_byte(*AR3(#306))), AR1 ; |2709| 
        MOV AR1, *SP(#8) ; |2709| 
	.dwpsn	file "src/csl_msc.c",line 2712,column 5,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2712| 
        MOV AC0, AR1 ; |2712| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2712| 
        MOV *AR3(#74), AR1 ; |2712| 
        BCC $C$L199,AR1 != #0 ; |2712| 
                                        ; branchcc occurs ; |2712| 
	.dwpsn	file "src/csl_msc.c",line 2714,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #32, T1 ; |2714| 
        AMAR *+AR0(#266) ; |2714| 
$C$DW$552	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$552, DW_AT_low_pc(0x00)
	.dwattr $C$DW$552, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$552, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2714| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2714| 
	.dwpsn	file "src/csl_msc.c",line 2717,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2717| 
	.dwpsn	file "src/csl_msc.c",line 2718,column 5,is_stmt
        B $C$L205 ; |2718| 
                                        ; branch occurs ; |2718| 
$C$L199:    
	.dwpsn	file "src/csl_msc.c",line 2722,column 9,is_stmt
        CMP *SP(#8) == #1, TC1 ; |2722| 
        BCC $C$L203,!TC1 ; |2722| 
                                        ; branchcc occurs ; |2722| 
	.dwpsn	file "src/csl_msc.c",line 2725,column 13,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2725| 
        MOV dbl(*AR3(short(#4))), AC0 ; |2725| 
$C$DW$553	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$553, DW_AT_low_pc(0x00)
	.dwattr $C$DW$553, DW_AT_TI_call
	.dwattr $C$DW$553, DW_AT_TI_indirect
        CALL AC0  ; |2725| 
                                        ; call occurs [AC0] ; |2725| 
        MOV T0, *SP(#5) ; |2725| 
	.dwpsn	file "src/csl_msc.c",line 2727,column 13,is_stmt
        CMP *SP(#5) == #1, TC1 ; |2727| 
        BCC $C$L200,TC1 ; |2727| 
                                        ; branchcc occurs ; |2727| 
        CMP *SP(#5) == #4, TC1 ; |2727| 
        BCC $C$L202,!TC1 ; |2727| 
                                        ; branchcc occurs ; |2727| 
$C$L200:    
	.dwpsn	file "src/csl_msc.c",line 2730,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2730| 
        MOV dbl(*AR3(#10)), AC0 ; |2730| 
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_TI_call
	.dwattr $C$DW$554, DW_AT_TI_indirect

        CALL AC0  ; |2730| 
||      MOV #1, T1

                                        ; call occurs [AC0] ; |2730| 
        MOV T0, *SP(#6) ; |2730| 
	.dwpsn	file "src/csl_msc.c",line 2732,column 17,is_stmt
        CMP *SP(#6) == #1, TC1 ; |2732| 
        BCC $C$L201,!TC1 ; |2732| 
                                        ; branchcc occurs ; |2732| 
	.dwpsn	file "src/csl_msc.c",line 2734,column 21,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2734| 
        MOV AC0, AR1 ; |2734| 
        AADD AR1, AR3 ; |2734| 
        AADD #18, AR3 ; |2734| 
        OR #0x0002, *AR3(#57) ; |2734| 
	.dwpsn	file "src/csl_msc.c",line 2736,column 17,is_stmt
        B $C$L205 ; |2736| 
                                        ; branch occurs ; |2736| 
$C$L201:    
	.dwpsn	file "src/csl_msc.c",line 2739,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #32, T1 ; |2739| 
        AMAR *+AR0(#266) ; |2739| 
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$555, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2739| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2739| 
	.dwpsn	file "src/csl_msc.c",line 2742,column 18,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2742| 
	.dwpsn	file "src/csl_msc.c",line 2744,column 13,is_stmt
        B $C$L205 ; |2744| 
                                        ; branch occurs ; |2744| 
$C$L202:    
	.dwpsn	file "src/csl_msc.c",line 2747,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2747| 
        AMAR *+AR0(#266) ; |2747| 
$C$DW$556	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$556, DW_AT_low_pc(0x00)
	.dwattr $C$DW$556, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$556, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2747| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2747| 
	.dwpsn	file "src/csl_msc.c",line 2751,column 17,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2751| 
        MOV AC0, AR1 ; |2751| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2751| 
        AADD #18, AR3 ; |2751| 
        AND #0xfff6, *AR3(#57) ; |2751| 
	.dwpsn	file "src/csl_msc.c",line 2753,column 17,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2753| 
	.dwpsn	file "src/csl_msc.c",line 2755,column 9,is_stmt
        B $C$L205 ; |2755| 
                                        ; branch occurs ; |2755| 
$C$L203:    
	.dwpsn	file "src/csl_msc.c",line 2759,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2759| 
        MOV dbl(*AR3(#10)), AC0 ; |2759| 
$C$DW$557	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$557, DW_AT_low_pc(0x00)
	.dwattr $C$DW$557, DW_AT_TI_call
	.dwattr $C$DW$557, DW_AT_TI_indirect
        CALL AC0  ; |2759| 
                                        ; call occurs [AC0] ; |2759| 
        MOV T0, *SP(#6) ; |2759| 
	.dwpsn	file "src/csl_msc.c",line 2760,column 4,is_stmt
        CMP *SP(#6) == #1, TC1 ; |2760| 
        BCC $C$L204,!TC1 ; |2760| 
                                        ; branchcc occurs ; |2760| 
	.dwpsn	file "src/csl_msc.c",line 2762,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2762| 
        MOV AC0, AR1 ; |2762| 
        AADD AR1, AR3 ; |2762| 
        AADD #18, AR3 ; |2762| 
        AND #0xfffd, *AR3(#57) ; |2762| 
	.dwpsn	file "src/csl_msc.c",line 2764,column 4,is_stmt
        B $C$L205 ; |2764| 
                                        ; branch occurs ; |2764| 
$C$L204:    
	.dwpsn	file "src/csl_msc.c",line 2767,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #32, T1 ; |2767| 
        AMAR *+AR0(#266) ; |2767| 
$C$DW$558	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$558, DW_AT_low_pc(0x00)
	.dwattr $C$DW$558, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$558, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2767| 
||      MOV #5, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2767| 
	.dwpsn	file "src/csl_msc.c",line 2770,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2770| 
$C$L205:    
	.dwpsn	file "src/csl_msc.c",line 2775,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV #13, T0
        AMAR *+AR1(#282) ; |2775| 
$C$DW$559	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$559, DW_AT_low_pc(0x00)
	.dwattr $C$DW$559, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$559, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2775| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |2775| 
        MOV T0, *SP(#7) ; |2775| 
	.dwpsn	file "src/csl_msc.c",line 2777,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |2777| 
	.dwpsn	file "src/csl_msc.c",line 2779,column 5,is_stmt
        MOV *SP(#7), T0 ; |2779| 
$C$L206:    
	.dwpsn	file "src/csl_msc.c",line 2780,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$560	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$560, DW_AT_low_pc(0x00)
	.dwattr $C$DW$560, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$537, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$537, DW_AT_TI_end_line(0xadc)
	.dwattr $C$DW$537, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$537

	.sect	".text"
	.global	_MSC_HandleReadCapacity

$C$DW$561	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_HandleReadCapacity")
	.dwattr $C$DW$561, DW_AT_low_pc(_MSC_HandleReadCapacity)
	.dwattr $C$DW$561, DW_AT_high_pc(0x00)
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_MSC_HandleReadCapacity")
	.dwattr $C$DW$561, DW_AT_external
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$561, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$561, DW_AT_TI_begin_line(0xb0b)
	.dwattr $C$DW$561, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$561, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "src/csl_msc.c",line 2830,column 1,is_stmt,address _MSC_HandleReadCapacity

	.dwfde $C$DW$CIE, _MSC_HandleReadCapacity
$C$DW$562	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_reg17]
$C$DW$563	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_reg19]
$C$DW$564	.dwtag  DW_TAG_formal_parameter, DW_AT_name("logicalUnit")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_HandleReadCapacity                                       *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,*
;*                        SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL             *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_HandleReadCapacity:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$565	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$566	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$567	.dwtag  DW_TAG_variable, DW_AT_name("logicalUnit")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_logicalUnit")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$568	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$568, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$569	.dwtag  DW_TAG_variable, DW_AT_name("capacityHi")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_capacityHi")
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$569, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$570	.dwtag  DW_TAG_variable, DW_AT_name("capacityLo")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_capacityLo")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$571	.dwtag  DW_TAG_variable, DW_AT_name("smallerLen")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_smallerLen")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$572	.dwtag  DW_TAG_variable, DW_AT_name("mediaPresentStat")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_mediaPresentStat")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV T0, *SP(#4) ; |2830| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 2838,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(#303), AR1 ; |2838| 

        AND #0x0080, AR1, AR1 ; |2838| 
||      MOV #128, AR2 ; |2838| 

        CMPU AR1 == AR2, TC1 ; |2838| 
        BCC $C$L207,TC1 ; |2838| 
                                        ; branchcc occurs ; |2838| 
        MOV dbl(*AR3(#16)), AC0 ; |2838| 
        BCC $C$L207,AC0 == #0 ; |2838| 
                                        ; branchcc occurs ; |2838| 
	.dwpsn	file "src/csl_msc.c",line 2842,column 3,is_stmt
        MOV #128, T0 ; |2842| 
$C$DW$573	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$573, DW_AT_low_pc(0x00)
	.dwattr $C$DW$573, DW_AT_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$573, DW_AT_TI_call
        CALL #_MSC_handleDataDirMisMatch ; |2842| 
                                        ; call occurs [#_MSC_handleDataDirMisMatch] ; |2842| 
        MOV T0, *SP(#5) ; |2842| 
	.dwpsn	file "src/csl_msc.c",line 2844,column 3,is_stmt
        B $C$L217 ; |2844| 
                                        ; branch occurs ; |2844| 
$C$L207:    
	.dwpsn	file "src/csl_msc.c",line 2847,column 2,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2847| 
        BCC $C$L215,AC0 == #0 ; |2847| 
                                        ; branchcc occurs ; |2847| 
	.dwpsn	file "src/csl_msc.c",line 2849,column 6,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2849| 
        MOV AC0, AR1 ; |2849| 
        AADD AR1, AR3 ; |2849| 
        MOV dbl(*AR3(#68)), AC0 ; |2849| 
        SFTL AC0, #-16, AC0 ; |2849| 
        AND #0xffff, AC0, AC0 ; |2849| 
        MOV AC0, *SP(#6) ; |2849| 
	.dwpsn	file "src/csl_msc.c",line 2851,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2851| 
        MOV AC0, AR1 ; |2851| 
        AADD AR1, AR3 ; |2851| 
        MOV dbl(*AR3(#68)), AC0 ; |2851| 
        AND #0xffff, AC0, AC0 ; |2851| 
        MOV AC0, *SP(#7) ; |2851| 
	.dwpsn	file "src/csl_msc.c",line 2853,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC1 ; |2853| 
        MOV uns(high_byte(*SP(#6))), AC0 ; |2853| 
        OR AC1 << #8, AC0 ; |2853| 
        MOV AC0, *AR3(#292) ; |2853| 
	.dwpsn	file "src/csl_msc.c",line 2855,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#7), AC1 ; |2855| 
        MOV uns(high_byte(*SP(#7))), AC0 ; |2855| 
        OR AC1 << #8, AC0 ; |2855| 
        MOV AC0, *AR3(#293) ; |2855| 
	.dwpsn	file "src/csl_msc.c",line 2859,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2859| 
        MOV AC0, AR1 ; |2859| 
        AADD AR1, AR3 ; |2859| 
        MOV dbl(*AR3(#72)), AC0 ; |2859| 
        SFTL AC0, #-16, AC0 ; |2859| 
        AND #0xffff, AC0, AC0 ; |2859| 
        MOV AC0, *SP(#6) ; |2859| 
	.dwpsn	file "src/csl_msc.c",line 2861,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2861| 
        MOV AC0, AR1 ; |2861| 
        AADD AR1, AR3 ; |2861| 
        MOV dbl(*AR3(#72)), AC0 ; |2861| 
        AND #0xffff, AC0, AC0 ; |2861| 
        MOV AC0, *SP(#7) ; |2861| 
	.dwpsn	file "src/csl_msc.c",line 2863,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC1 ; |2863| 
        MOV uns(high_byte(*SP(#6))), AC0 ; |2863| 
        OR AC1 << #8, AC0 ; |2863| 
        MOV AC0, *AR3(#294) ; |2863| 
	.dwpsn	file "src/csl_msc.c",line 2865,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(high_byte(*SP(#7))), AC0 ; |2865| 
        MOV *SP(#7), AC1 ; |2865| 
        OR AC1 << #8, AC0 ; |2865| 
        MOV AC0, *AR3(#295) ; |2865| 
	.dwpsn	file "src/csl_msc.c",line 2869,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2869| 
        MOV uns(*AR3(#290)), AC1 ; |2869| 
        CMPU AC1 >= AC0, TC1 ; |2869| 
        BCC $C$L208,TC1 ; |2869| 
                                        ; branchcc occurs ; |2869| 
	.dwpsn	file "src/csl_msc.c",line 2871,column 7,is_stmt
        MOV *AR3(#290), AR1 ; |2871| 
        MOV AR1, *SP(#8) ; |2871| 
	.dwpsn	file "src/csl_msc.c",line 2872,column 3,is_stmt
        B $C$L209 ; |2872| 
                                        ; branch occurs ; |2872| 
$C$L208:    
	.dwpsn	file "src/csl_msc.c",line 2875,column 7,is_stmt
        MOV dbl(*AR3(#16)), AC0 ; |2875| 
        AND #0xffff, AC0, AC0 ; |2875| 
        MOV AC0, *SP(#8) ; |2875| 
$C$L209:    
	.dwpsn	file "src/csl_msc.c",line 2880,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV uns(*SP(#8)), AC0 ; |2880| 
        SUB AC0, dbl(*AR3(#16)), AC0 ; |2880| 
        MOV AC0, dbl(*AR3(#16)) ; |2880| 
	.dwpsn	file "src/csl_msc.c",line 2881,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2881| 
        AND #0xffff, AC0, AC0 ; |2881| 
        MOV AC0, *AR3(#287) ; |2881| 
	.dwpsn	file "src/csl_msc.c",line 2883,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |2883| 
        MOV HI(AC0), *AR3(#288) ; |2883| 
	.dwpsn	file "src/csl_msc.c",line 2887,column 6,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #1, *AR3(#289) ; |2887| 
	.dwpsn	file "src/csl_msc.c",line 2889,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2889| 
        MOV AC0, AR1 ; |2889| 
        AADD AR1, AR3 ; |2889| 
        BTST #0, *AR3(#75), TC1 ; |2889| 
        BCC $C$L212,!TC1 ; |2889| 
                                        ; branchcc occurs ; |2889| 
	.dwpsn	file "src/csl_msc.c",line 2891,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#4), T0 ; |2891| 
        MOV dbl(*AR3(short(#4))), AC0 ; |2891| 
$C$DW$574	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$574, DW_AT_low_pc(0x00)
	.dwattr $C$DW$574, DW_AT_TI_call
	.dwattr $C$DW$574, DW_AT_TI_indirect
        CALL AC0  ; |2891| 
                                        ; call occurs [AC0] ; |2891| 
        MOV T0, *SP(#9) ; |2891| 
	.dwpsn	file "src/csl_msc.c",line 2892,column 4,is_stmt
        CMP *SP(#9) == #1, TC1 ; |2892| 
        BCC $C$L210,!TC1 ; |2892| 
                                        ; branchcc occurs ; |2892| 
	.dwpsn	file "src/csl_msc.c",line 2894,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2894| 
	.dwpsn	file "src/csl_msc.c",line 2895,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2895| 
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$575, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2895| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2895| 
	.dwpsn	file "src/csl_msc.c",line 2898,column 4,is_stmt
        B $C$L214 ; |2898| 
                                        ; branch occurs ; |2898| 
$C$L210:    
	.dwpsn	file "src/csl_msc.c",line 2899,column 9,is_stmt
        CMP *SP(#9) == #4, TC1 ; |2899| 
        BCC $C$L211,!TC1 ; |2899| 
                                        ; branchcc occurs ; |2899| 
	.dwpsn	file "src/csl_msc.c",line 2901,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2901| 
	.dwpsn	file "src/csl_msc.c",line 2902,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2902| 
$C$DW$576	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$576, DW_AT_low_pc(0x00)
	.dwattr $C$DW$576, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$576, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2902| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2902| 
	.dwpsn	file "src/csl_msc.c",line 2905,column 5,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2905| 
        MOV AC0, AR1 ; |2905| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2905| 
        AADD #18, AR3 ; |2905| 
        AND #0xfffe, *AR3(#57) ; |2905| 
	.dwpsn	file "src/csl_msc.c",line 2906,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2906| 
        MOV AC0, AR1 ; |2906| 
        AADD AR1, AR3 ; |2906| 
        AADD #18, AR3 ; |2906| 
        OR #0x0008, *AR3(#57) ; |2906| 
	.dwpsn	file "src/csl_msc.c",line 2907,column 4,is_stmt
        B $C$L214 ; |2907| 
                                        ; branch occurs ; |2907| 
$C$L211:    
	.dwpsn	file "src/csl_msc.c",line 2908,column 9,is_stmt
        CMP *SP(#9) == #2, TC1 ; |2908| 
        BCC $C$L214,!TC1 ; |2908| 
                                        ; branchcc occurs ; |2908| 
	.dwpsn	file "src/csl_msc.c",line 2910,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2910| 
        AMAR *+AR0(#266) ; |2910| 
$C$DW$577	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$577, DW_AT_low_pc(0x00)
	.dwattr $C$DW$577, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$577, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2910| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2910| 
	.dwpsn	file "src/csl_msc.c",line 2914,column 5,is_stmt
        MPYMK *SP(#4), #62, AC0 ; |2914| 
        MOV AC0, AR1 ; |2914| 
        MOV dbl(*SP(#0)), XAR3
        AADD AR1, AR3 ; |2914| 
        AADD #18, AR3 ; |2914| 
        AND #0xfff6, *AR3(#57) ; |2914| 
	.dwpsn	file "src/csl_msc.c",line 2917,column 3,is_stmt
        B $C$L214 ; |2917| 
                                        ; branch occurs ; |2917| 
$C$L212:    
	.dwpsn	file "src/csl_msc.c",line 2918,column 8,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MPYMK *SP(#4), #62, AC0 ; |2918| 
        MOV AC0, AR1 ; |2918| 
        AADD AR1, AR3 ; |2918| 
        BTST #3, *AR3(#75), TC1 ; |2918| 
        BCC $C$L213,!TC1 ; |2918| 
                                        ; branchcc occurs ; |2918| 
	.dwpsn	file "src/csl_msc.c",line 2920,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #0, *AR3(#289) ; |2920| 
	.dwpsn	file "src/csl_msc.c",line 2921,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #0, T0
        AMAR *+AR0(#266) ; |2921| 
$C$DW$578	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$578, DW_AT_low_pc(0x00)
	.dwattr $C$DW$578, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$578, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2921| 
||      MOV #0, T1

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2921| 
	.dwpsn	file "src/csl_msc.c",line 2924,column 3,is_stmt
        B $C$L214 ; |2924| 
                                        ; branch occurs ; |2924| 
$C$L213:    
	.dwpsn	file "src/csl_msc.c",line 2927,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV #58, T1 ; |2927| 
        AMAR *+AR0(#266) ; |2927| 
$C$DW$579	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$579, DW_AT_low_pc(0x00)
	.dwattr $C$DW$579, DW_AT_name("_MSC_SetSenseKeys")
	.dwattr $C$DW$579, DW_AT_TI_call

        CALL #_MSC_SetSenseKeys ; |2927| 
||      MOV #2, T0

                                        ; call occurs [#_MSC_SetSenseKeys] ; |2927| 
$C$L214:    
	.dwpsn	file "src/csl_msc.c",line 2932,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV dbl(*SP(#2)), XAR0
        MOV *SP(#8), T0 ; |2932| 
        AMAR *+AR1(#291) ; |2932| 
$C$DW$580	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$580, DW_AT_low_pc(0x00)
	.dwattr $C$DW$580, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$580, DW_AT_TI_call

        CALL #_USB_postTransaction ; |2932| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |2932| 
        MOV T0, *SP(#5) ; |2932| 
	.dwpsn	file "src/csl_msc.c",line 2935,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #3, *AR3(#319) ; |2935| 
	.dwpsn	file "src/csl_msc.c",line 2936,column 2,is_stmt
        B $C$L216 ; |2936| 
                                        ; branch occurs ; |2936| 
$C$L215:    
	.dwpsn	file "src/csl_msc.c",line 2939,column 3,is_stmt
        MOV dbl(*SP(#2)), XAR1
$C$DW$581	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$581, DW_AT_low_pc(0x00)
	.dwattr $C$DW$581, DW_AT_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$581, DW_AT_TI_call
        CALL #_MSC_sendCswWithPhaseError ; |2939| 
                                        ; call occurs [#_MSC_sendCswWithPhaseError] ; |2939| 
        MOV T0, *SP(#5) ; |2939| 
$C$L216:    
	.dwpsn	file "src/csl_msc.c",line 2942,column 2,is_stmt
        MOV *SP(#5), T0 ; |2942| 
$C$L217:    
	.dwpsn	file "src/csl_msc.c",line 2943,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$582	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$582, DW_AT_low_pc(0x00)
	.dwattr $C$DW$582, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$561, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$561, DW_AT_TI_end_line(0xb7f)
	.dwattr $C$DW$561, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$561

	.sect	".text"
	.global	_MSC_reqGetDescriptor

$C$DW$583	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_reqGetDescriptor")
	.dwattr $C$DW$583, DW_AT_low_pc(_MSC_reqGetDescriptor)
	.dwattr $C$DW$583, DW_AT_high_pc(0x00)
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_MSC_reqGetDescriptor")
	.dwattr $C$DW$583, DW_AT_external
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$583, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$583, DW_AT_TI_begin_line(0xbb4)
	.dwattr $C$DW$583, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$583, DW_AT_TI_max_frame_size(0x58)
	.dwpsn	file "src/csl_msc.c",line 3001,column 1,is_stmt,address _MSC_reqGetDescriptor

	.dwfde $C$DW$CIE, _MSC_reqGetDescriptor
$C$DW$584	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$584, DW_AT_location[DW_OP_reg17]
$C$DW$585	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$585, DW_AT_location[DW_OP_reg19]
$C$DW$586	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$586, DW_AT_location[DW_OP_reg21]
$C$DW$587	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$587, DW_AT_location[DW_OP_reg23]
$C$DW$588	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMsc")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$588, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: MSC_reqGetDescriptor                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,    *
;*                        XAR3,AR4,XAR4,SP,CSR,RPTC,CARRY,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 88 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (87 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_reqGetDescriptor:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-87, SP
	.dwcfi	cfa_offset, 88
$C$DW$589	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$589, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$590	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$590, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$591	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$591, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$592	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$592, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$593	.dwtag  DW_TAG_variable, DW_AT_name("pMsc")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$593, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$594	.dwtag  DW_TAG_variable, DW_AT_name("tempLen")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_tempLen")
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$594, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$595	.dwtag  DW_TAG_variable, DW_AT_name("strLen")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_strLen")
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$595, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$596	.dwtag  DW_TAG_variable, DW_AT_name("inOutFlag")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_inOutFlag")
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$596, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$597	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$597, DW_AT_location[DW_OP_bregx 0x24 13]
$C$DW$598	.dwtag  DW_TAG_variable, DW_AT_name("temp1")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_temp1")
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$598, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$599	.dwtag  DW_TAG_variable, DW_AT_name("temp2")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_temp2")
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$599, DW_AT_location[DW_OP_bregx 0x24 15]
$C$DW$600	.dwtag  DW_TAG_variable, DW_AT_name("unicodeString")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_unicodeString")
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$600, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$601	.dwtag  DW_TAG_variable, DW_AT_name("pMSCClassHdl")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_pMSCClassHdl")
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$601, DW_AT_location[DW_OP_bregx 0x24 82]
$C$DW$602	.dwtag  DW_TAG_variable, DW_AT_name("pCtrlHandle")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_pCtrlHandle")
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$602, DW_AT_location[DW_OP_bregx 0x24 84]
$C$DW$603	.dwtag  DW_TAG_variable, DW_AT_name("descrLen")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_descrLen")
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$603, DW_AT_location[DW_OP_bregx 0x24 86]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 3013,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, dbl(*SP(#82))
	.dwpsn	file "src/csl_msc.c",line 3014,column 2,is_stmt

        MOV XAR3, dbl(*SP(#84))
||      AADD #2, AR3 ; |3014| 

	.dwpsn	file "src/csl_msc.c",line 3015,column 2,is_stmt
        MOV #0, *SP(#13) ; |3015| 
	.dwpsn	file "src/csl_msc.c",line 3017,column 5,is_stmt
        B $C$L243 ; |3017| 
                                        ; branch occurs ; |3017| 
$C$L218:    
	.dwpsn	file "src/csl_msc.c",line 3020,column 10,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV uns(low_byte(*AR3(#59))), AR1 ; |3020| 
        MOV AR1, *SP(#10) ; |3020| 
	.dwpsn	file "src/csl_msc.c",line 3022,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3022| 
        MOV *AR3(short(#5)), AR1 ; |3022| 
        CMPU AR2 >= AR1, TC1 ; |3022| 
        BCC $C$L219,TC1 ; |3022| 
                                        ; branchcc occurs ; |3022| 
        MOV AR2, AR1
        B $C$L220 ; |3022| 
                                        ; branch occurs ; |3022| 
$C$L219:    
        MOV *AR3(short(#5)), AR1 ; |3022| 
$C$L220:    
        MOV AR1, *SP(#10) ; |3022| 
	.dwpsn	file "src/csl_msc.c",line 3024,column 13,is_stmt
        MOV dbl(*SP(#84)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #58, AR1 ; |3024| 
||      MOV *SP(#10), T0 ; |3024| 

$C$DW$604	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$604, DW_AT_low_pc(0x00)
	.dwattr $C$DW$604, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$604, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3024| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3024| 
	.dwpsn	file "src/csl_msc.c",line 3027,column 18,is_stmt
        B $C$L245 ; |3027| 
                                        ; branch occurs ; |3027| 
$C$L221:    
	.dwpsn	file "src/csl_msc.c",line 3030,column 10,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV uns(low_byte(*AR3(#69))), AR1 ; |3030| 
        MOV AR1, *SP(#10) ; |3030| 
	.dwpsn	file "src/csl_msc.c",line 3032,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3032| 
        MOV *AR3(short(#5)), AR1 ; |3032| 
        CMPU AR2 >= AR1, TC1 ; |3032| 
        BCC $C$L222,TC1 ; |3032| 
                                        ; branchcc occurs ; |3032| 
        MOV AR2, AR1
        B $C$L223 ; |3032| 
                                        ; branch occurs ; |3032| 
$C$L222:    
        MOV *AR3(short(#5)), AR1 ; |3032| 
$C$L223:    
        MOV AR1, *SP(#10) ; |3032| 
	.dwpsn	file "src/csl_msc.c",line 3034,column 13,is_stmt
        MOV dbl(*SP(#84)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #68, AR1 ; |3034| 
||      MOV *SP(#10), T0 ; |3034| 

$C$DW$605	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$605, DW_AT_low_pc(0x00)
	.dwattr $C$DW$605, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$605, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3034| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3034| 
	.dwpsn	file "src/csl_msc.c",line 3037,column 18,is_stmt
        B $C$L245 ; |3037| 
                                        ; branch occurs ; |3037| 
$C$L224:    
	.dwpsn	file "src/csl_msc.c",line 3040,column 11,is_stmt
        MOV #12, *SP(#12) ; |3040| 
	.dwpsn	file "src/csl_msc.c",line 3041,column 11,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV dbl(*AR3(#142)), XAR3
        MOV *AR3(short(#2)), AR1 ; |3041| 
        MOV AR1, *SP(#10) ; |3041| 
	.dwpsn	file "src/csl_msc.c",line 3042,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3042| 
        MOV *AR3(short(#5)), AR1 ; |3042| 
        CMPU AR2 != AR1, TC1 ; |3042| 
        BCC $C$L225,TC1 ; |3042| 
                                        ; branchcc occurs ; |3042| 
	.dwpsn	file "src/csl_msc.c",line 3044,column 5,is_stmt
        OR #0x0001, *SP(#12) ; |3044| 
$C$L225:    
	.dwpsn	file "src/csl_msc.c",line 3048,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3048| 
        MOV *AR3(short(#5)), AR1 ; |3048| 
        CMPU AR2 >= AR1, TC1 ; |3048| 
        BCC $C$L226,TC1 ; |3048| 
                                        ; branchcc occurs ; |3048| 

        B $C$L227 ; |3048| 
||      MOV AR2, AR1

                                        ; branch occurs ; |3048| 
$C$L226:    
        MOV *AR3(short(#5)), AR1 ; |3048| 
$C$L227:    
        MOV AR1, *SP(#10) ; |3048| 
	.dwpsn	file "src/csl_msc.c",line 3051,column 11,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |3051| 
        MOV *SP(#12), T1 ; |3051| 
        MOV dbl(*AR3(#142)), XAR1
$C$DW$606	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$606, DW_AT_low_pc(0x00)
	.dwattr $C$DW$606, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$606, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3051| 
                                        ; call occurs [#_USB_postTransaction] ; |3051| 
	.dwpsn	file "src/csl_msc.c",line 3053,column 16,is_stmt
        B $C$L245 ; |3053| 
                                        ; branch occurs ; |3053| 
$C$L228:    
	.dwpsn	file "src/csl_msc.c",line 3057,column 11,is_stmt
        MOV #12, *SP(#12) ; |3057| 
	.dwpsn	file "src/csl_msc.c",line 3058,column 11,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV dbl(*AR3(#144)), XAR3
        MOV *AR3(short(#2)), AR1 ; |3058| 
        MOV AR1, *SP(#10) ; |3058| 
	.dwpsn	file "src/csl_msc.c",line 3059,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3059| 
        MOV *AR3(short(#5)), AR1 ; |3059| 
        CMPU AR2 != AR1, TC1 ; |3059| 
        BCC $C$L229,TC1 ; |3059| 
                                        ; branchcc occurs ; |3059| 
	.dwpsn	file "src/csl_msc.c",line 3061,column 5,is_stmt
        OR #0x0001, *SP(#12) ; |3061| 
$C$L229:    
	.dwpsn	file "src/csl_msc.c",line 3065,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3065| 
        MOV *AR3(short(#5)), AR1 ; |3065| 
        CMPU AR2 >= AR1, TC1 ; |3065| 
        BCC $C$L230,TC1 ; |3065| 
                                        ; branchcc occurs ; |3065| 

        B $C$L231 ; |3065| 
||      MOV AR2, AR1

                                        ; branch occurs ; |3065| 
$C$L230:    
        MOV *AR3(short(#5)), AR1 ; |3065| 
$C$L231:    
        MOV AR1, *SP(#10) ; |3065| 
	.dwpsn	file "src/csl_msc.c",line 3068,column 11,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |3068| 
        MOV *SP(#12), T1 ; |3068| 
        MOV dbl(*AR3(#144)), XAR1
$C$DW$607	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$607, DW_AT_low_pc(0x00)
	.dwattr $C$DW$607, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$607, DW_AT_TI_call
        CALL #_USB_postTransaction ; |3068| 
                                        ; call occurs [#_USB_postTransaction] ; |3068| 
	.dwpsn	file "src/csl_msc.c",line 3071,column 16,is_stmt
        B $C$L245 ; |3071| 
                                        ; branch occurs ; |3071| 
$C$L232:    
	.dwpsn	file "src/csl_msc.c",line 3074,column 11,is_stmt
        MOV #0, AC0 ; |3074| 
        MOV AC0, XAR2

        RPT #65   ; |3074| 
||      AMAR *SP(#16), XAR3

                                            ; loop starts ; |3074| 
$C$L233:    
$C$DW$L$_MSC_reqGetDescriptor$24$B:
            MOV *AR2+, *AR3+ ; |3074| 
                                        ; loop ends ; |3074| 
$C$DW$L$_MSC_reqGetDescriptor$24$E:
$C$L234:    
	.dwpsn	file "src/csl_msc.c",line 3076,column 11,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3(short(#3)))), AR1 ; |3076| 
        BCC $C$L237,AR1 != #0 ; |3076| 
                                        ; branchcc occurs ; |3076| 
	.dwpsn	file "src/csl_msc.c",line 3078,column 12,is_stmt
        MOV dbl(*SP(#84)), XAR3
        MOV uns(low_byte(*AR3(#111))), AR1 ; |3078| 
        MOV AR1, *SP(#10) ; |3078| 
	.dwpsn	file "src/csl_msc.c",line 3080,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#10), AR2 ; |3080| 
        MOV *AR3(short(#5)), AR1 ; |3080| 
        CMPU AR2 >= AR1, TC1 ; |3080| 
        BCC $C$L235,TC1 ; |3080| 
                                        ; branchcc occurs ; |3080| 
        MOV AR2, AR1
        B $C$L236 ; |3080| 
                                        ; branch occurs ; |3080| 
$C$L235:    
        MOV *AR3(short(#5)), AR1 ; |3080| 
$C$L236:    
        MOV AR1, *SP(#10) ; |3080| 
	.dwpsn	file "src/csl_msc.c",line 3082,column 14,is_stmt
        MOV dbl(*SP(#84)), XAR1
        MOV dbl(*SP(#4)), XAR0

        AADD #110, AR1 ; |3082| 
||      MOV *SP(#10), T0 ; |3082| 

$C$DW$608	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$608, DW_AT_low_pc(0x00)
	.dwattr $C$DW$608, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$608, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3082| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3082| 
	.dwpsn	file "src/csl_msc.c",line 3085,column 11,is_stmt
        B $C$L245 ; |3085| 
                                        ; branch occurs ; |3085| 
$C$L237:    
	.dwpsn	file "src/csl_msc.c",line 3089,column 12,is_stmt
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |3089| 
        MOV dbl(*SP(#84)), XAR3
        SFTL T0, #1 ; |3089| 
        MOV dbl(*AR3(#134)), XAR3
        MOV dbl(*AR3(T0)), XAR0
$C$DW$609	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$609, DW_AT_low_pc(0x00)
	.dwattr $C$DW$609, DW_AT_name("_strlen")
	.dwattr $C$DW$609, DW_AT_TI_call
        CALL #_strlen ; |3089| 
                                        ; call occurs [#_strlen] ; |3089| 
        MOV T0, *SP(#11) ; |3089| 
	.dwpsn	file "src/csl_msc.c",line 3094,column 5,is_stmt
        MOV T0, AR1
        SFTL AR1, #1 ; |3094| 
        ADD #2, AR1 ; |3094| 
        MOV AR1, *SP(#86) ; |3094| 
	.dwpsn	file "src/csl_msc.c",line 3097,column 14,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#86), AR2 ; |3097| 
        MOV *AR3(short(#5)), AR1 ; |3097| 
        CMPU AR2 >= AR1, TC1 ; |3097| 
        BCC $C$L238,TC1 ; |3097| 
                                        ; branchcc occurs ; |3097| 

        B $C$L239 ; |3097| 
||      MOV AR2, AR1

                                        ; branch occurs ; |3097| 
$C$L238:    
        MOV *AR3(short(#5)), AR1 ; |3097| 
$C$L239:    
        MOV AR1, *SP(#10) ; |3097| 
	.dwpsn	file "src/csl_msc.c",line 3101,column 18,is_stmt
        MOV #0, *SP(#13) ; |3101| 
	.dwpsn	file "src/csl_msc.c",line 3101,column 29,is_stmt
        MOV *SP(#13), AR2 ; |3101| 
        MOV *SP(#11), AR1 ; |3101| 
        CMPU AR2 >= AR1, TC1 ; |3101| 
        BCC $C$L241,TC1 ; |3101| 
                                        ; branchcc occurs ; |3101| 
$C$L240:    
$C$DW$L$_MSC_reqGetDescriptor$34$B:
	.dwpsn	file "src/csl_msc.c",line 3103,column 6,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV uns(low_byte(*AR3(short(#3)))), T0 ; |3103| 
        MOV dbl(*SP(#84)), XAR3
        SFTL T0, #1 ; |3103| 
        MOV dbl(*AR3(#134)), XAR3
        MOV dbl(*AR3(T0)), XAR3
        MOV *SP(#13), T0 ; |3103| 
        MOV *AR3(T0), AR1 ; |3103| 
        MOV AR1, *SP(#14) ; |3103| 
	.dwpsn	file "src/csl_msc.c",line 3105,column 6,is_stmt
        MOV #0, *SP(#15) ; |3105| 
	.dwpsn	file "src/csl_msc.c",line 3106,column 6,is_stmt
        MOV *SP(#13), T0 ; |3106| 
        ADD #2, T0 ; |3106| 
        MOV *SP(#14), AC0 ; |3106| 
        MOV *SP(#15), AC1 ; |3106| 

        AMAR *SP(#16), XAR3
||      OR AC1 << #8, AC0 ; |3106| 

        MOV AC0, *AR3(T0) ; |3106| 
	.dwpsn	file "src/csl_msc.c",line 3101,column 45,is_stmt
        ADD #1, *SP(#13) ; |3101| 
	.dwpsn	file "src/csl_msc.c",line 3101,column 29,is_stmt
        MOV *SP(#13), AR2 ; |3101| 
        MOV *SP(#11), AR1 ; |3101| 
        CMPU AR2 < AR1, TC1 ; |3101| 
        BCC $C$L240,TC1 ; |3101| 
                                        ; branchcc occurs ; |3101| 
$C$DW$L$_MSC_reqGetDescriptor$34$E:
$C$L241:    
	.dwpsn	file "src/csl_msc.c",line 3109,column 14,is_stmt
        MOV *SP(#86), AR1 ; |3109| 
        OR #0x0300, AR1, AR1 ; |3109| 
        MOV AR1, *SP(#17) ; |3109| 
	.dwpsn	file "src/csl_msc.c",line 3112,column 14,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#10), T0 ; |3112| 
        AMAR *SP(#16), XAR1
$C$DW$610	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$610, DW_AT_low_pc(0x00)
	.dwattr $C$DW$610, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$610, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3112| 
||      MOV #0, T1

                                        ; call occurs [#_USB_postTransaction] ; |3112| 
	.dwpsn	file "src/csl_msc.c",line 3115,column 15,is_stmt
        B $C$L245 ; |3115| 
                                        ; branch occurs ; |3115| 
$C$L242:    
	.dwpsn	file "src/csl_msc.c",line 3118,column 7,is_stmt
        MOV #1, T0
        B $C$L246 ; |3118| 
                                        ; branch occurs ; |3118| 
$C$L243:    
	.dwpsn	file "src/csl_msc.c",line 3017,column 5,is_stmt
        MOV dbl(*SP(#2)), XAR3

        MOV uns(high_byte(*AR3(short(#3)))), AR1 ; |3017| 
||      MOV #3, AR2

        CMP AR1 > AR2, TC1 ; |3017| 
        BCC $C$L244,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        CMP AR1 == AR2, TC1 ; |3017| 
        BCC $C$L232,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        MOV #1, AR2
        CMPU AR1 == AR2, TC1 ; |3017| 
        BCC $C$L218,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        MOV #2, AR2
        CMPU AR1 == AR2, TC1 ; |3017| 
        BCC $C$L224,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        B $C$L242 ; |3017| 
                                        ; branch occurs ; |3017| 
$C$L244:    
        MOV #6, AR2
        CMPU AR1 == AR2, TC1 ; |3017| 
        BCC $C$L221,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        MOV #7, AR2
        CMPU AR1 == AR2, TC1 ; |3017| 
        BCC $C$L228,TC1 ; |3017| 
                                        ; branchcc occurs ; |3017| 
        B $C$L242 ; |3017| 
                                        ; branch occurs ; |3017| 
$C$L245:    
	.dwpsn	file "src/csl_msc.c",line 3121,column 2,is_stmt
        MOV #3, T0
$C$L246:    
	.dwpsn	file "src/csl_msc.c",line 3122,column 1,is_stmt
        AADD #87, SP
	.dwcfi	cfa_offset, 1
$C$DW$611	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$611, DW_AT_low_pc(0x00)
	.dwattr $C$DW$611, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$612	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$612, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L240:1:1714639447")
	.dwattr $C$DW$612, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$612, DW_AT_TI_begin_line(0xc1d)
	.dwattr $C$DW$612, DW_AT_TI_end_line(0xc23)
$C$DW$613	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$613, DW_AT_low_pc($C$DW$L$_MSC_reqGetDescriptor$34$B)
	.dwattr $C$DW$613, DW_AT_high_pc($C$DW$L$_MSC_reqGetDescriptor$34$E)
	.dwendtag $C$DW$612


$C$DW$614	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$614, DW_AT_name("/home/santiago/dspfuzz/on_board/library/csl_msc.asm:$C$L233:1:1714639447")
	.dwattr $C$DW$614, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$614, DW_AT_TI_begin_line(0xc02)
	.dwattr $C$DW$614, DW_AT_TI_end_line(0xc02)
$C$DW$615	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$615, DW_AT_low_pc($C$DW$L$_MSC_reqGetDescriptor$24$B)
	.dwattr $C$DW$615, DW_AT_high_pc($C$DW$L$_MSC_reqGetDescriptor$24$E)
	.dwendtag $C$DW$614

	.dwattr $C$DW$583, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$583, DW_AT_TI_end_line(0xc32)
	.dwattr $C$DW$583, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$583

	.sect	".text"
	.global	_MSC_reqBotMscReset

$C$DW$616	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_reqBotMscReset")
	.dwattr $C$DW$616, DW_AT_low_pc(_MSC_reqBotMscReset)
	.dwattr $C$DW$616, DW_AT_high_pc(0x00)
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_MSC_reqBotMscReset")
	.dwattr $C$DW$616, DW_AT_external
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$616, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$616, DW_AT_TI_begin_line(0xc6b)
	.dwattr $C$DW$616, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$616, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "src/csl_msc.c",line 3184,column 1,is_stmt,address _MSC_reqBotMscReset

	.dwfde $C$DW$CIE, _MSC_reqBotMscReset
$C$DW$617	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devHandle")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$617, DW_AT_location[DW_OP_reg17]
$C$DW$618	.dwtag  DW_TAG_formal_parameter, DW_AT_name("usbSetup")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$618, DW_AT_location[DW_OP_reg19]
$C$DW$619	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hInEp")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$619, DW_AT_location[DW_OP_reg21]
$C$DW$620	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hOutEp")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$620, DW_AT_location[DW_OP_reg23]
$C$DW$621	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMsc")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg25]
;*******************************************************************************
;* FUNCTION NAME: MSC_reqBotMscReset                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR4,  *
;*                        XAR4,SP,M40,SATA,SATD,RDM,FRCT,SMUL                  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (20 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_reqBotMscReset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-21, SP
	.dwcfi	cfa_offset, 22
$C$DW$622	.dwtag  DW_TAG_variable, DW_AT_name("devHandle")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_devHandle")
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$622, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$623	.dwtag  DW_TAG_variable, DW_AT_name("usbSetup")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$623, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$624	.dwtag  DW_TAG_variable, DW_AT_name("hInEp")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_hInEp")
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$624, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$625	.dwtag  DW_TAG_variable, DW_AT_name("hOutEp")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_hOutEp")
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$625, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$626	.dwtag  DW_TAG_variable, DW_AT_name("pMsc")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_pMsc")
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$626, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$627	.dwtag  DW_TAG_variable, DW_AT_name("pMscClassHdl")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_pMscClassHdl")
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$627, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$628	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$628, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$629	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$629, DW_AT_location[DW_OP_bregx 0x24 14]
$C$DW$630	.dwtag  DW_TAG_variable, DW_AT_name("hUsbOutEp")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_hUsbOutEp")
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$630, DW_AT_location[DW_OP_bregx 0x24 16]
$C$DW$631	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$631, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$632	.dwtag  DW_TAG_variable, DW_AT_name("retStatus")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_retStatus")
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$632, DW_AT_location[DW_OP_bregx 0x24 19]
        MOV XAR4, dbl(*SP(#8))
        MOV XAR3, dbl(*SP(#6))
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 3192,column 2,is_stmt
        MOV #0, *SP(#18) ; |3192| 
	.dwpsn	file "src/csl_msc.c",line 3193,column 2,is_stmt
        MOV #1, *SP(#19) ; |3193| 
	.dwpsn	file "src/csl_msc.c",line 3195,column 2,is_stmt
        MOV dbl(*SP(#8)), XAR3
        MOV XAR3, AC0
        BCC $C$L247,AC0 == #0 ; |3195| 
                                        ; branchcc occurs ; |3195| 
	.dwpsn	file "src/csl_msc.c",line 3197,column 3,is_stmt
        MOV XAR3, dbl(*SP(#10))
	.dwpsn	file "src/csl_msc.c",line 3198,column 3,is_stmt
        AMAR *+AR3(#148) ; |3198| 
        MOV XAR3, dbl(*SP(#12))
	.dwpsn	file "src/csl_msc.c",line 3199,column 3,is_stmt
        MOV dbl(*AR3(#316)), XAR3
        MOV XAR3, dbl(*SP(#16))
	.dwpsn	file "src/csl_msc.c",line 3200,column 3,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV dbl(*AR3(#314)), XAR3
        MOV XAR3, dbl(*SP(#14))
	.dwpsn	file "src/csl_msc.c",line 3202,column 3,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$633	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$633, DW_AT_low_pc(0x00)
	.dwattr $C$DW$633, DW_AT_name("_USB_abortTransaction")
	.dwattr $C$DW$633, DW_AT_TI_call
        CALL #_USB_abortTransaction ; |3202| 
                                        ; call occurs [#_USB_abortTransaction] ; |3202| 
        MOV T0, *SP(#18) ; |3202| 
	.dwpsn	file "src/csl_msc.c",line 3203,column 3,is_stmt
        MOV dbl(*SP(#16)), XAR0
$C$DW$634	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$634, DW_AT_low_pc(0x00)
	.dwattr $C$DW$634, DW_AT_name("_USB_abortTransaction")
	.dwattr $C$DW$634, DW_AT_TI_call
        CALL #_USB_abortTransaction ; |3203| 
                                        ; call occurs [#_USB_abortTransaction] ; |3203| 
        MOV T0, *SP(#18) ; |3203| 
	.dwpsn	file "src/csl_msc.c",line 3205,column 3,is_stmt
        MOV dbl(*SP(#12)), XAR3
        MOV #0, *AR3(#319) ; |3205| 
	.dwpsn	file "src/csl_msc.c",line 3207,column 3,is_stmt
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#16)), XAR1
$C$DW$635	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$635, DW_AT_low_pc(0x00)
	.dwattr $C$DW$635, DW_AT_name("_MSC_HandleStateReset")
	.dwattr $C$DW$635, DW_AT_TI_call
        CALL #_MSC_HandleStateReset ; |3207| 
                                        ; call occurs [#_MSC_HandleStateReset] ; |3207| 
        MOV T0, *SP(#18) ; |3207| 
	.dwpsn	file "src/csl_msc.c",line 3208,column 3,is_stmt
        MOV T0, AR1
        BCC $C$L247,AR1 != #0 ; |3208| 
                                        ; branchcc occurs ; |3208| 
	.dwpsn	file "src/csl_msc.c",line 3210,column 4,is_stmt
        MOV #2, *SP(#19) ; |3210| 
$C$L247:    
	.dwpsn	file "src/csl_msc.c",line 3214,column 2,is_stmt
        MOV *SP(#19), T0 ; |3214| 
	.dwpsn	file "src/csl_msc.c",line 3215,column 1,is_stmt
        AADD #21, SP
	.dwcfi	cfa_offset, 1
$C$DW$636	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$636, DW_AT_low_pc(0x00)
	.dwattr $C$DW$636, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$616, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$616, DW_AT_TI_end_line(0xc8f)
	.dwattr $C$DW$616, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$616

	.sect	".text"
	.global	_MSC_sendCswWithPhaseError

$C$DW$637	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_sendCswWithPhaseError")
	.dwattr $C$DW$637, DW_AT_low_pc(_MSC_sendCswWithPhaseError)
	.dwattr $C$DW$637, DW_AT_high_pc(0x00)
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_MSC_sendCswWithPhaseError")
	.dwattr $C$DW$637, DW_AT_external
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$637, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$637, DW_AT_TI_begin_line(0xcc1)
	.dwattr $C$DW$637, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$637, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_msc.c",line 3267,column 1,is_stmt,address _MSC_sendCswWithPhaseError

	.dwfde $C$DW$CIE, _MSC_sendCswWithPhaseError
$C$DW$638	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg17]
$C$DW$639	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg19]
;*******************************************************************************
;* FUNCTION NAME: MSC_sendCswWithPhaseError                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_sendCswWithPhaseError:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$640	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$640, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$641	.dwtag  DW_TAG_variable, DW_AT_name("hUsbInEp")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_hUsbInEp")
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$641, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$642	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$642, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 3270,column 2,is_stmt
        MOV #0, *SP(#4) ; |3270| 
	.dwpsn	file "src/csl_msc.c",line 3272,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L248,AC0 == #0 ; |3272| 
                                        ; branchcc occurs ; |3272| 
        MOV dbl(*SP(#2)), XAR3
        MOV XAR3, AC0
        BCC $C$L248,AC0 == #0 ; |3272| 
                                        ; branchcc occurs ; |3272| 
	.dwpsn	file "src/csl_msc.c",line 3274,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |3274| 
        AND #0xffff, AC0, AC0 ; |3274| 
        MOV AC0, *AR3(#287) ; |3274| 
	.dwpsn	file "src/csl_msc.c",line 3276,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#16)), AC0 ; |3276| 
        MOV HI(AC0), *AR3(#288) ; |3276| 
	.dwpsn	file "src/csl_msc.c",line 3279,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#289) ; |3279| 
	.dwpsn	file "src/csl_msc.c",line 3280,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #4, *AR3(#319) ; |3280| 
	.dwpsn	file "src/csl_msc.c",line 3283,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV #13, T0
        MOV dbl(*SP(#2)), XAR0
        AMAR *+AR1(#282) ; |3283| 
$C$DW$643	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$643, DW_AT_low_pc(0x00)
	.dwattr $C$DW$643, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$643, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3283| 
||      MOV #1, T1

                                        ; call occurs [#_USB_postTransaction] ; |3283| 
        MOV T0, *SP(#4) ; |3283| 
	.dwpsn	file "src/csl_msc.c",line 3286,column 2,is_stmt
        B $C$L249 ; |3286| 
                                        ; branch occurs ; |3286| 
$C$L248:    
	.dwpsn	file "src/csl_msc.c",line 3289,column 3,is_stmt
        MOV #-6, *SP(#4) ; |3289| 
$C$L249:    
	.dwpsn	file "src/csl_msc.c",line 3292,column 2,is_stmt
        MOV *SP(#4), T0 ; |3292| 
	.dwpsn	file "src/csl_msc.c",line 3293,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$644	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$644, DW_AT_low_pc(0x00)
	.dwattr $C$DW$644, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$637, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$637, DW_AT_TI_end_line(0xcdd)
	.dwattr $C$DW$637, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$637

	.sect	".text"
	.global	_MSC_handleDataDirMisMatch

$C$DW$645	.dwtag  DW_TAG_subprogram, DW_AT_name("MSC_handleDataDirMisMatch")
	.dwattr $C$DW$645, DW_AT_low_pc(_MSC_handleDataDirMisMatch)
	.dwattr $C$DW$645, DW_AT_high_pc(0x00)
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_MSC_handleDataDirMisMatch")
	.dwattr $C$DW$645, DW_AT_external
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$645, DW_AT_TI_begin_file("src/csl_msc.c")
	.dwattr $C$DW$645, DW_AT_TI_begin_line(0xd11)
	.dwattr $C$DW$645, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$645, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "src/csl_msc.c",line 3347,column 1,is_stmt,address _MSC_handleDataDirMisMatch

	.dwfde $C$DW$CIE, _MSC_handleDataDirMisMatch
$C$DW$646	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pMscHandle")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg17]
$C$DW$647	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dataDir")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_dataDir")
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: MSC_handleDataDirMisMatch                                    *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_MSC_handleDataDirMisMatch:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$648	.dwtag  DW_TAG_variable, DW_AT_name("pMscHandle")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_pMscHandle")
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$648, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$649	.dwtag  DW_TAG_variable, DW_AT_name("dataDir")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_dataDir")
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$649, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$650	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$650, DW_AT_location[DW_OP_bregx 0x24 3]
        MOV T0, *SP(#2) ; |3347| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "src/csl_msc.c",line 3350,column 2,is_stmt
        MOV #0, *SP(#3) ; |3350| 
	.dwpsn	file "src/csl_msc.c",line 3352,column 2,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L252,AC0 == #0 ; |3352| 
                                        ; branchcc occurs ; |3352| 
	.dwpsn	file "src/csl_msc.c",line 3354,column 3,is_stmt
        MOV #2, *AR3(#289) ; |3354| 
	.dwpsn	file "src/csl_msc.c",line 3357,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #2, *AR3(#319) ; |3357| 
	.dwpsn	file "src/csl_msc.c",line 3359,column 3,is_stmt
        CMP *SP(#2) == #128, TC1 ; |3359| 
        BCC $C$L250,!TC1 ; |3359| 
                                        ; branchcc occurs ; |3359| 
	.dwpsn	file "src/csl_msc.c",line 3361,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$651	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$651, DW_AT_low_pc(0x00)
	.dwattr $C$DW$651, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$651, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3361| 
                                        ; call occurs [#_USB_stallEndpt] ; |3361| 
        MOV T0, *SP(#3) ; |3361| 
	.dwpsn	file "src/csl_msc.c",line 3362,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#316)), XAR0
$C$DW$652	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$652, DW_AT_low_pc(0x00)
	.dwattr $C$DW$652, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$652, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3362| 
                                        ; call occurs [#_USB_stallEndpt] ; |3362| 
        OR *SP(#3), T0, AR1 ; |3362| 
        MOV AR1, *SP(#3) ; |3362| 
	.dwpsn	file "src/csl_msc.c",line 3363,column 3,is_stmt
        B $C$L251 ; |3363| 
                                        ; branch occurs ; |3363| 
$C$L250:    
	.dwpsn	file "src/csl_msc.c",line 3366,column 4,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV dbl(*AR3(#314)), XAR0
$C$DW$653	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$653, DW_AT_low_pc(0x00)
	.dwattr $C$DW$653, DW_AT_name("_USB_stallEndpt")
	.dwattr $C$DW$653, DW_AT_TI_call
        CALL #_USB_stallEndpt ; |3366| 
                                        ; call occurs [#_USB_stallEndpt] ; |3366| 
        MOV T0, *SP(#3) ; |3366| 
$C$L251:    
	.dwpsn	file "src/csl_msc.c",line 3370,column 3,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV #32, T1 ; |3370| 
        MOV dbl(*AR3(#314)), XAR0
        MOV dbl(*AR3(#14)), XAR1
$C$DW$654	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$654, DW_AT_low_pc(0x00)
	.dwattr $C$DW$654, DW_AT_name("_USB_postTransaction")
	.dwattr $C$DW$654, DW_AT_TI_call

        CALL #_USB_postTransaction ; |3370| 
||      MOV #0, T0

                                        ; call occurs [#_USB_postTransaction] ; |3370| 
        OR *SP(#3), T0, AR1 ; |3370| 
        MOV AR1, *SP(#3) ; |3370| 
	.dwpsn	file "src/csl_msc.c",line 3373,column 2,is_stmt
        B $C$L253 ; |3373| 
                                        ; branch occurs ; |3373| 
$C$L252:    
	.dwpsn	file "src/csl_msc.c",line 3376,column 3,is_stmt
        MOV #-5, *SP(#3) ; |3376| 
$C$L253:    
	.dwpsn	file "src/csl_msc.c",line 3379,column 2,is_stmt
        MOV *SP(#3), T0 ; |3379| 
	.dwpsn	file "src/csl_msc.c",line 3380,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$655	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$655, DW_AT_low_pc(0x00)
	.dwattr $C$DW$655, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$645, DW_AT_TI_end_file("src/csl_msc.c")
	.dwattr $C$DW$645, DW_AT_TI_end_line(0xd34)
	.dwattr $C$DW$645, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$645

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"USB Reset failed",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strlen
	.global	_USB_init
	.global	_USB_open
	.global	_USB_config
	.global	_USB_requestEndpt
	.global	_USB_configEndpt
	.global	_USB_resetDev
	.global	_USB_getEvents
	.global	_USB_getSetupPacket
	.global	_USB_postTransaction
	.global	_USB_isTransactionDone
	.global	_USB_stallEndpt
	.global	_USB_abortTransaction
	.global	_USB_abortAllTransaction
	.global	_USB_connectDev
	.global	_USB_disconnectDev
	.global	_USB_setParams
	.global	_USB_getMaxPower
	.global	_USB_setFullSpeedMode
	.global	_USB_getDataCountReadFromFifo
	.global	_printf

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$656	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB0"), DW_AT_const_value(0x00)
$C$DW$657	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB1"), DW_AT_const_value(0x01)
$C$DW$658	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$28

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevNum")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$659	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_DONE"), DW_AT_const_value(0x00)
$C$DW$660	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_STALL"), DW_AT_const_value(0x01)
$C$DW$661	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_SEND_ACK"), DW_AT_const_value(0x02)
$C$DW$662	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_GET_ACK"), DW_AT_const_value(0x03)
$C$DW$663	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_DATA_IN"), DW_AT_const_value(0x04)
$C$DW$664	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_REQUEST_DATA_OUT"), DW_AT_const_value(0x05)
	.dwendtag $C$DW$T$44

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscRequestRet")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
$C$DW$665	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$21)
$C$DW$666	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$46)
$C$DW$667	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$27)
$C$DW$668	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$27)
$C$DW$669	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$47

$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x20)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("fpMSC_REQ_HANDLER")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$670	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_MEDIACCESS_OVERFLOW"), DW_AT_const_value(0x00)
$C$DW$671	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_MEDIACCESS_SUCCESS"), DW_AT_const_value(0x01)
$C$DW$672	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_MEDIACCESS_NOTPRESENT"), DW_AT_const_value(0x02)
$C$DW$673	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_MEDIACCESS_WRITEPROTECT"), DW_AT_const_value(0x03)
$C$DW$674	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_MEDIACCESS_BADMEDIA"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscMediaStatus")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$675	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$30)
$C$DW$676	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$50)
$C$DW$677	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$56)
$C$DW$678	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$57

$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

$C$DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$679	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$59

$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

$C$DW$T$63	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$680	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$30)
$C$DW$681	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$62)
	.dwendtag $C$DW$T$63

$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x20)

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$682	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_UNLOCK"), DW_AT_const_value(0x00)
$C$DW$683	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_MSC_LOCK"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscMediaLockStatus")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$684	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_POLLED"), DW_AT_const_value(0x00)
$C$DW$685	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA"), DW_AT_const_value(0x01)
$C$DW$686	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OPMODE_DMA_TXONLY"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$79

$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbOpMode")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)

$C$DW$T$94	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$687	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_FALSE"), DW_AT_const_value(0x00)
$C$DW$688	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_TRUE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$94

$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBoolean")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$689	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_UNKNOWN_SPEED"), DW_AT_const_value(0x00)
$C$DW$690	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_FULL_SPEED"), DW_AT_const_value(0x02)
$C$DW$691	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BS_HIGH_SPEED"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbBusSpeed")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)

$C$DW$T$98	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$692	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_IDLE"), DW_AT_const_value(0x00)
$C$DW$693	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_STATUS_IN"), DW_AT_const_value(0x01)
$C$DW$694	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_TX"), DW_AT_const_value(0x02)
$C$DW$695	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_EP0_RX"), DW_AT_const_value(0x03)
	.dwendtag $C$DW$T$98

$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEp0State")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$696	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_DETACH"), DW_AT_const_value(0x00)
$C$DW$697	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_DEVICE_ATTACH"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$102

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDeviceEvent")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)

$C$DW$T$109	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$698	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP0"), DW_AT_const_value(0x00)
$C$DW$699	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP1"), DW_AT_const_value(0x01)
$C$DW$700	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP2"), DW_AT_const_value(0x02)
$C$DW$701	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP3"), DW_AT_const_value(0x03)
$C$DW$702	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP4"), DW_AT_const_value(0x04)
$C$DW$703	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP5"), DW_AT_const_value(0x05)
$C$DW$704	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP6"), DW_AT_const_value(0x06)
$C$DW$705	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_OUT_EP7"), DW_AT_const_value(0x07)
$C$DW$706	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP0"), DW_AT_const_value(0x08)
$C$DW$707	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP1"), DW_AT_const_value(0x09)
$C$DW$708	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP2"), DW_AT_const_value(0x0a)
$C$DW$709	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP3"), DW_AT_const_value(0x0b)
$C$DW$710	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP4"), DW_AT_const_value(0x0c)
$C$DW$711	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP5"), DW_AT_const_value(0x0d)
$C$DW$712	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP6"), DW_AT_const_value(0x0e)
$C$DW$713	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_IN_EP7"), DW_AT_const_value(0x0f)
	.dwendtag $C$DW$T$109

$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpNum")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)

$C$DW$T$111	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$714	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_CTRL"), DW_AT_const_value(0x00)
$C$DW$715	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_BULK"), DW_AT_const_value(0x01)
$C$DW$716	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_INTR"), DW_AT_const_value(0x02)
$C$DW$717	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_ISO"), DW_AT_const_value(0x03)
$C$DW$718	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_USB_HPORT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$111

$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbXferType")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("CSL_MscClassStruct")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x1da)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$719, DW_AT_name("usbDevHandle")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_usbDevHandle")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$720, DW_AT_name("ctrlHandle")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_ctrlHandle")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$721, DW_AT_name("mscHandle")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_mscHandle")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscClassStruct")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
$C$DW$T$130	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_address_class(0x17)
$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("pMscClassHandle")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("CSL_MscCtrlObject")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x92)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$722, DW_AT_name("ctrlInEpHandle")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_ctrlInEpHandle")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$723, DW_AT_name("devNum")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$724, DW_AT_name("ctrlOutEpHandle")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_ctrlOutEpHandle")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$725, DW_AT_name("suspendFlag")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_suspendFlag")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$726, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$727, DW_AT_name("usbSetup")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$728, DW_AT_name("highSpeedCfgDescr")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_highSpeedCfgDescr")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$729, DW_AT_name("fullSpeedCfgDescr")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_fullSpeedCfgDescr")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$730, DW_AT_name("deviceDescr")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_deviceDescr")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$731, DW_AT_name("deviceQualDescr")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_deviceQualDescr")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$732, DW_AT_name("confDescr")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_confDescr")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$733, DW_AT_name("massStorageIntDescr")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_massStorageIntDescr")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$734, DW_AT_name("massStorageBulkOutEndptDescr")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_massStorageBulkOutEndptDescr")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$735, DW_AT_name("massStorageInterfcLnk")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_massStorageInterfcLnk")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$736, DW_AT_name("massStorageBulkInEndptDescr")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_massStorageBulkInEndptDescr")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$737, DW_AT_name("massStorageBulkOutEndptLnk")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_massStorageBulkOutEndptLnk")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$738, DW_AT_name("stringDescrLangid")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_stringDescrLangid")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$739, DW_AT_name("curConfigStat")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$740, DW_AT_name("massStorageBulkInEndptLnk")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_massStorageBulkInEndptLnk")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$741, DW_AT_name("ctrlBuffer")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_ctrlBuffer")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$742, DW_AT_name("configDescrLnk")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_configDescrLnk")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$743, DW_AT_name("strDescr")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_strDescr")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$744, DW_AT_name("mscReqTable")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_mscReqTable")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$745, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$746, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$747, DW_AT_name("pCfgDescr")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_pCfgDescr")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$748, DW_AT_name("pOtherSpeedCfgDescr")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_pOtherSpeedCfgDescr")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscCtrlObject")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x17)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("CSL_MscInitStructApp")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x1e)
$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$749, DW_AT_name("pMscObj")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_pMscObj")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$750, DW_AT_name("pId")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_pId")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$751, DW_AT_name("vId")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_vId")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$752, DW_AT_name("numLun")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_numLun")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$753, DW_AT_name("strDescrApp")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_strDescrApp")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$754, DW_AT_name("lbaBufferApp")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_lbaBufferApp")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$755, DW_AT_name("mscReqTableApp")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_mscReqTableApp")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$756, DW_AT_name("bulkHandler")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_bulkHandler")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$757, DW_AT_name("ctrlHandler")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_ctrlHandler")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$758, DW_AT_name("readMediaApp")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_readMediaApp")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$759, DW_AT_name("writeMediaApp")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_writeMediaApp")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$760, DW_AT_name("mediaGetPresentStateApp")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_mediaGetPresentStateApp")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$761, DW_AT_name("mediaInitApp")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_mediaInitApp")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$762, DW_AT_name("mediaEjectApp")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_mediaEjectApp")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$763, DW_AT_name("mediaLockUnitApp")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_mediaLockUnitApp")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$764, DW_AT_name("getMediaSizeApp")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_getMediaSizeApp")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$67

$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscInitStructApp")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x17)
$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("pMscAppClassHandle")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("CSL_MscLogicalUnit")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x3e)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$765, DW_AT_name("scsiInquiryData")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_scsiInquiryData")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$766, DW_AT_name("mediaSize")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_mediaSize")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$767, DW_AT_name("currLba")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_currLba")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$768, DW_AT_name("lbaSize")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_lbaSize")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$769, DW_AT_name("removeable")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_removeable")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$770, DW_AT_name("mediaState")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_mediaState")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$771, DW_AT_name("readwrite")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_readwrite")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$772, DW_AT_name("lbaCnt")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_lbaCnt")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$773, DW_AT_name("verifyFlag")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_verifyFlag")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscLogicalUnit")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$73	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_byte_size(0xf8)
$C$DW$774	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$774, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$73


$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("CSL_MscLunAttribApp")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x20)
$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$775, DW_AT_name("lbaSizeApp")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_lbaSizeApp")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$776, DW_AT_name("mediaSizeApp")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_mediaSizeApp")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$777, DW_AT_name("removeableApp")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_removeableApp")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$778, DW_AT_name("scsiInquiryConfData")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_scsiInquiryConfData")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$779, DW_AT_name("mediaStateApp")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_mediaStateApp")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$780, DW_AT_name("readwriteApp")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_readwriteApp")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscLunAttribApp")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_address_class(0x17)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("CSL_MscObject")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x146)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$781, DW_AT_name("readMedia")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_readMedia")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$782, DW_AT_name("writeMedia")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_writeMedia")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$783, DW_AT_name("mediaGetPresentState")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_mediaGetPresentState")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$784, DW_AT_name("mediaInit")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_mediaInit")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$785, DW_AT_name("mediaEject")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_mediaEject")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$786, DW_AT_name("mediaLockUnit")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_mediaLockUnit")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$787, DW_AT_name("getMediaSize")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_getMediaSize")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$788, DW_AT_name("lbaBuffer")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_lbaBuffer")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$789, DW_AT_name("cbwDataTransferLength")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_cbwDataTransferLength")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$790, DW_AT_name("lun")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_lun")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$791, DW_AT_name("senseData")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_senseData")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x10a]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$792, DW_AT_name("activityPresentFlag")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_activityPresentFlag")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x119]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$793, DW_AT_name("csw")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_csw")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$794, DW_AT_name("readCapacity")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_readCapacity")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x122]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$795, DW_AT_name("cbw")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_cbw")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x128]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$796, DW_AT_name("bulkInEpHandle")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_bulkInEpHandle")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$797, DW_AT_name("bulkOutEpHandle")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_bulkOutEpHandle")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$798, DW_AT_name("noOfLun")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_noOfLun")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$799, DW_AT_name("storageState")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_storageState")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x13f]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$800, DW_AT_name("modeSenseData")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_modeSenseData")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$801, DW_AT_name("writeToMedia")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_writeToMedia")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x145]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscObject")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$140	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$140, DW_AT_address_class(0x17)

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("CSL_MscRequestStruct")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x04)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$802, DW_AT_name("request")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_request")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$803, DW_AT_name("fpRequestHandler")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_fpRequestHandler")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$78

$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_MscRequestStruct")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x16)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$804, DW_AT_name("maxCurrent")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$805, DW_AT_name("opMode")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$806, DW_AT_name("appSuspendCallBack")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_appSuspendCallBack")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$807, DW_AT_name("appWakeupCallBack")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_appWakeupCallBack")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$808, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$809, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$810, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$811, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$812, DW_AT_name("strDescPtr")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$813, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$814, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$815, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$90

$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbConfig")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
$C$DW$T$142	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_address_class(0x17)

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0xda)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$816, DW_AT_name("devNum")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_devNum")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$817, DW_AT_name("opMode")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$818, DW_AT_name("maxCurrent")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_maxCurrent")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$819, DW_AT_name("fInitialized")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$820, DW_AT_name("fSetupPktCmd")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_fSetupPktCmd")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$821, DW_AT_name("fOutPhaseCmd")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_fOutPhaseCmd")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$822, DW_AT_name("fWaitingOnFlagA")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_fWaitingOnFlagA")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$823, DW_AT_name("fWaitingOnFlagB")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_fWaitingOnFlagB")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$824, DW_AT_name("fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_fWaitingOnEP0BUFAvail")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$825, DW_AT_name("fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_fWaitingOnEP1InBUFAvail")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$826, DW_AT_name("pFIFOBaseAddress")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_pFIFOBaseAddress")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$827, DW_AT_name("pInterruptAddr")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_pInterruptAddr")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$828, DW_AT_name("fSendHandshake")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_fSendHandshake")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$829, DW_AT_name("fMUSBIsReady")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_fMUSBIsReady")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$830, DW_AT_name("cbOutEP0Buf")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_cbOutEP0Buf")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$831, DW_AT_name("cbOutEP0DataReceived")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_cbOutEP0DataReceived")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$832, DW_AT_name("dwOutEP0Buf")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_dwOutEP0Buf")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$833, DW_AT_name("fEP0BUFAvailable")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_fEP0BUFAvailable")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$834, DW_AT_name("fEP1InBUFAvailable")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_fEP1InBUFAvailable")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$835, DW_AT_name("dwIntSourceL")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_dwIntSourceL")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$836, DW_AT_name("dwIntSourceH")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_dwIntSourceH")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$837, DW_AT_name("remoteWkpStat")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_remoteWkpStat")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$838, DW_AT_name("busSpeed")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_busSpeed")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$839, DW_AT_name("ep0State")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_ep0State")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$840, DW_AT_name("pEpStatus")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_pEpStatus")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$841, DW_AT_name("cableState")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_cableState")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$842, DW_AT_name("usbSetup")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_usbSetup")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$843, DW_AT_name("suspendCallBackFxn")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_suspendCallBackFxn")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$844, DW_AT_name("wakeupCallBackFxn")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_wakeupCallBackFxn")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$845, DW_AT_name("startTransferCallback")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_startTransferCallback")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$846, DW_AT_name("completeTransferCallback")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_completeTransferCallback")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$847, DW_AT_name("dwFIFOStartAddr")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_dwFIFOStartAddr")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$848, DW_AT_name("deviceDescPtr")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_deviceDescPtr")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$849, DW_AT_name("deviceQualDescPtr")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_deviceQualDescPtr")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$850, DW_AT_name("cfgDescPtr")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_cfgDescPtr")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$851, DW_AT_name("cfgDescFSPtr")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_cfgDescFSPtr")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$852, DW_AT_name("strDescPtr")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_strDescPtr")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$853, DW_AT_name("devAddr")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_devAddr")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$854, DW_AT_name("ctrlOutEpObj")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_ctrlOutEpObj")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$855, DW_AT_name("ctrlInEpObj")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_ctrlInEpObj")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$856, DW_AT_name("hEpHandleArray")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_hEpHandleArray")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$857, DW_AT_name("curConfigStat")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_curConfigStat")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$858, DW_AT_name("usbSpeedCfg")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_usbSpeedCfg")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0xd9]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$106

$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbContext")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDevHandle")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x06)
$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$859, DW_AT_name("bytes")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_bytes")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$860, DW_AT_name("pBuffer")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_pBuffer")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$861, DW_AT_name("pNextBuffer")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_pNextBuffer")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$108

$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbDataStruct")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$107	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$107, DW_AT_address_class(0x17)

$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x0a)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$862, DW_AT_name("opMode")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_opMode")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$863, DW_AT_name("epNum")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$864, DW_AT_name("xferType")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$865, DW_AT_name("maxPktSize")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$866, DW_AT_name("eventMask")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$867, DW_AT_name("dblPktBuf")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_dblPktBuf")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$868, DW_AT_name("asyncTxfer")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_asyncTxfer")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$869, DW_AT_name("fxn")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$114

$C$DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpConfig")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x17)

$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x22)
$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$870, DW_AT_name("epNum")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_epNum")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$871, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$872, DW_AT_name("xferType")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$873, DW_AT_name("maxPktSize")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_maxPktSize")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$874, DW_AT_name("eventMask")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_eventMask")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$875, DW_AT_name("fxn")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$876, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$877, DW_AT_name("fInitialized")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$878, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$879, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$880, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$881, DW_AT_name("hEventHandler")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$882, DW_AT_name("fStalled")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$883, DW_AT_name("pvBuffer")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$884, DW_AT_name("cbBuffer")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$885, DW_AT_name("cbTransferred")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$886, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$887, DW_AT_name("fComplete")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$888, DW_AT_name("ioFlags")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$889, DW_AT_name("hUsbDev")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_hUsbDev")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$117

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpObj")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpHandle")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0a)
$C$DW$890	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$890, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$31


$C$DW$T$105	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x14)
$C$DW$891	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$891, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$105

$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x17)

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x12)
$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$892, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$893, DW_AT_name("xferType")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_xferType")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$894, DW_AT_name("dwPacketSizeAssigned")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_dwPacketSizeAssigned")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$895, DW_AT_name("fInitialized")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_fInitialized")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$896, DW_AT_name("pFifoAddr")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_pFifoAddr")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$897, DW_AT_name("pTransfer")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_pTransfer")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$898, DW_AT_name("wUSBEvents")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_wUSBEvents")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$899, DW_AT_name("dataReadFromFifo")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_dataReadFromFifo")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$900, DW_AT_name("hEventHandler")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_hEventHandler")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$901, DW_AT_name("fStalled")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_fStalled")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$902, DW_AT_name("fSelected")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_fSelected")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$120

$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEpStatus")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x17)

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x06)
$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$903, DW_AT_name("newPacket")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_newPacket")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$904, DW_AT_name("bmRequestType")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_bmRequestType")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$905, DW_AT_name("bRequest")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_bRequest")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$906, DW_AT_name("wValue")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_wValue")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$907, DW_AT_name("wIndex")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_wIndex")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$908, DW_AT_name("wLength")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_wLength")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$121

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbSetupStruct")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)

$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x0e)
$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$909, DW_AT_name("dwFlags")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_dwFlags")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$910, DW_AT_name("dwEndpoint")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_dwEndpoint")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$911, DW_AT_name("pvBuffer")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_pvBuffer")
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$912, DW_AT_name("cbBuffer")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_cbBuffer")
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$913, DW_AT_name("cbTransferred")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_cbTransferred")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$914, DW_AT_name("prevTxferLen")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_prevTxferLen")
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$915, DW_AT_name("fComplete")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_fComplete")
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$916, DW_AT_name("ioFlags")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_ioFlags")
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$122

$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbTransfer")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
$C$DW$T$119	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("PVOID")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_EVENT_ISR")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$917	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$81

$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)
$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_CALLBACK")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$918	.dwtag  DW_TAG_TI_far_type
$C$DW$T$153	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$918)
$C$DW$T$154	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_address_class(0x17)
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
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$919	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$3)
$C$DW$920	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$87

$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_USB_APP_TRANSFER_CALLBACK")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$T$123	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$123, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$197	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbEventMask")
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_UsbIoFlags")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)

$C$DW$T$93	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x40)
$C$DW$921	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$921, DW_AT_upper_bound(0x3f)
	.dwendtag $C$DW$T$93


$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x11)
$C$DW$922	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$922, DW_AT_upper_bound(0x10)
	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x0a)
$C$DW$923	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$923, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x06)
$C$DW$924	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$924, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x05)
$C$DW$925	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$925, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$36


$C$DW$T$38	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x04)
$C$DW$926	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$926, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$38

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x17)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$104	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x08)
$C$DW$927	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$927, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$104


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x32)
$C$DW$928	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$928, DW_AT_upper_bound(0x31)
	.dwendtag $C$DW$T$68


$C$DW$T$70	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x18)
$C$DW$929	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$929, DW_AT_upper_bound(0x17)
	.dwendtag $C$DW$T$70


$C$DW$T$74	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x0f)
$C$DW$930	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$930, DW_AT_upper_bound(0x0e)
	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x08)
$C$DW$931	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$931, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$75


$C$DW$T$215	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$215, DW_AT_byte_size(0x42)
$C$DW$932	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$932, DW_AT_upper_bound(0x41)
	.dwendtag $C$DW$T$215

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("DWORD")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x17)
$C$DW$933	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$56)
$C$DW$T$223	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$933)

$C$DW$T$65	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$934	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$65

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)
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
$C$DW$T$39	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$39, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$39, DW_AT_name("signed char")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x17)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)
$C$DW$935	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$39)
$C$DW$T$217	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$935)
$C$DW$T$218	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$T$218, DW_AT_address_class(0x17)
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

$C$DW$936	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$936, DW_AT_location[DW_OP_reg0]
$C$DW$937	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$937, DW_AT_location[DW_OP_reg1]
$C$DW$938	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$938, DW_AT_location[DW_OP_reg2]
$C$DW$939	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$939, DW_AT_location[DW_OP_reg3]
$C$DW$940	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$940, DW_AT_location[DW_OP_reg4]
$C$DW$941	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_reg5]
$C$DW$942	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$942, DW_AT_location[DW_OP_reg6]
$C$DW$943	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$943, DW_AT_location[DW_OP_reg7]
$C$DW$944	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$944, DW_AT_location[DW_OP_reg8]
$C$DW$945	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$945, DW_AT_location[DW_OP_reg9]
$C$DW$946	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$946, DW_AT_location[DW_OP_reg10]
$C$DW$947	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$947, DW_AT_location[DW_OP_reg11]
$C$DW$948	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$948, DW_AT_location[DW_OP_reg12]
$C$DW$949	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$949, DW_AT_location[DW_OP_reg13]
$C$DW$950	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$950, DW_AT_location[DW_OP_reg14]
$C$DW$951	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$951, DW_AT_location[DW_OP_reg15]
$C$DW$952	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$952, DW_AT_location[DW_OP_reg16]
$C$DW$953	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$953, DW_AT_location[DW_OP_reg17]
$C$DW$954	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$954, DW_AT_location[DW_OP_reg18]
$C$DW$955	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$955, DW_AT_location[DW_OP_reg19]
$C$DW$956	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$956, DW_AT_location[DW_OP_reg20]
$C$DW$957	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$957, DW_AT_location[DW_OP_reg21]
$C$DW$958	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$958, DW_AT_location[DW_OP_reg22]
$C$DW$959	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$959, DW_AT_location[DW_OP_reg23]
$C$DW$960	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$960, DW_AT_location[DW_OP_reg24]
$C$DW$961	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$961, DW_AT_location[DW_OP_reg25]
$C$DW$962	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$962, DW_AT_location[DW_OP_reg26]
$C$DW$963	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$963, DW_AT_location[DW_OP_reg27]
$C$DW$964	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$964, DW_AT_location[DW_OP_reg28]
$C$DW$965	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$965, DW_AT_location[DW_OP_reg29]
$C$DW$966	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$966, DW_AT_location[DW_OP_reg30]
$C$DW$967	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$967, DW_AT_location[DW_OP_reg31]
$C$DW$968	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$968, DW_AT_location[DW_OP_regx 0x20]
$C$DW$969	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$969, DW_AT_location[DW_OP_regx 0x21]
$C$DW$970	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$970, DW_AT_location[DW_OP_regx 0x22]
$C$DW$971	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$971, DW_AT_location[DW_OP_regx 0x23]
$C$DW$972	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$972, DW_AT_location[DW_OP_regx 0x24]
$C$DW$973	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$973, DW_AT_location[DW_OP_regx 0x25]
$C$DW$974	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$974, DW_AT_location[DW_OP_regx 0x26]
$C$DW$975	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$975, DW_AT_location[DW_OP_regx 0x27]
$C$DW$976	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$976, DW_AT_location[DW_OP_regx 0x28]
$C$DW$977	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$977, DW_AT_location[DW_OP_regx 0x29]
$C$DW$978	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$978, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$979	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$979, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$980	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$980, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$981	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$981, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$982	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$982, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$983	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$983, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$984	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$984, DW_AT_location[DW_OP_regx 0x30]
$C$DW$985	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$985, DW_AT_location[DW_OP_regx 0x31]
$C$DW$986	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$986, DW_AT_location[DW_OP_regx 0x32]
$C$DW$987	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$987, DW_AT_location[DW_OP_regx 0x33]
$C$DW$988	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$988, DW_AT_location[DW_OP_regx 0x34]
$C$DW$989	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$989, DW_AT_location[DW_OP_regx 0x35]
$C$DW$990	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$990, DW_AT_location[DW_OP_regx 0x36]
$C$DW$991	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$991, DW_AT_location[DW_OP_regx 0x37]
$C$DW$992	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$992, DW_AT_location[DW_OP_regx 0x38]
$C$DW$993	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$993, DW_AT_location[DW_OP_regx 0x39]
$C$DW$994	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$994, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$995	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$995, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$996	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$996, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$997	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$997, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$998	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$998, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$999	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$999, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$1000	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$1000, DW_AT_location[DW_OP_regx 0x40]
$C$DW$1001	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$1001, DW_AT_location[DW_OP_regx 0x41]
$C$DW$1002	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$1002, DW_AT_location[DW_OP_regx 0x42]
$C$DW$1003	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$1003, DW_AT_location[DW_OP_regx 0x43]
$C$DW$1004	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$1004, DW_AT_location[DW_OP_regx 0x44]
$C$DW$1005	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$1005, DW_AT_location[DW_OP_regx 0x45]
$C$DW$1006	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$1006, DW_AT_location[DW_OP_regx 0x46]
$C$DW$1007	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$1007, DW_AT_location[DW_OP_regx 0x47]
$C$DW$1008	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$1008, DW_AT_location[DW_OP_regx 0x48]
$C$DW$1009	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$1009, DW_AT_location[DW_OP_regx 0x49]
$C$DW$1010	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$1010, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$1011	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$1011, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$1012	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$1012, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$1013	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$1013, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$1014	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$1014, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$1015	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$1015, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$1016	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$1016, DW_AT_location[DW_OP_regx 0x50]
$C$DW$1017	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$1017, DW_AT_location[DW_OP_regx 0x51]
$C$DW$1018	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$1018, DW_AT_location[DW_OP_regx 0x52]
$C$DW$1019	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$1019, DW_AT_location[DW_OP_regx 0x53]
$C$DW$1020	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$1020, DW_AT_location[DW_OP_regx 0x54]
$C$DW$1021	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$1021, DW_AT_location[DW_OP_regx 0x55]
$C$DW$1022	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$1022, DW_AT_location[DW_OP_regx 0x56]
$C$DW$1023	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$1023, DW_AT_location[DW_OP_regx 0x57]
$C$DW$1024	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$1024, DW_AT_location[DW_OP_regx 0x58]
$C$DW$1025	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$1025, DW_AT_location[DW_OP_regx 0x59]
$C$DW$1026	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$1026, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$1027	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$1027, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

