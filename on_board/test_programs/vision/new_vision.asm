;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Tue Sep 10 14:48:26 2024                                 *
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
	.dwattr $C$DW$CU, DW_AT_name("./vision/vision.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen Unix v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/santiago/Research/DSPFuzz/on_board/test_programs")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$47)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$48)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$5


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("IMG_conv_3x3")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_IMG_conv_3x3")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$56)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$56)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$56)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$10)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$14


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("IMG_threshold")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_IMG_threshold")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$59)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$59)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$8)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$8)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$8)
	.dwendtag $C$DW$20


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_open")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_GPIO_open")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$37)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$26


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_write")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_GPIO_write")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$38)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$30)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$29


$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_configBit")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_GPIO_configBit")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$38)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$45)
	.dwendtag $C$DW$33

	.ref _coverage_log;
	.global	_SHARPEN_KERNEL
	.sect	".const:_SHARPEN_KERNEL"
	.clink
	.align	1
_SHARPEN_KERNEL:
	CALL #_coverage_log;
	.field	0,16			; _SHARPEN_KERNEL[0] @ 0
	.field	-1,16			; _SHARPEN_KERNEL[1] @ 16
	.field	0,16			; _SHARPEN_KERNEL[2] @ 32
	.field	-1,16			; _SHARPEN_KERNEL[3] @ 48
	.field	5,16			; _SHARPEN_KERNEL[4] @ 64
	.field	-1,16			; _SHARPEN_KERNEL[5] @ 80
	.field	0,16			; _SHARPEN_KERNEL[6] @ 96
	.field	-1,16			; _SHARPEN_KERNEL[7] @ 112
	.field	0,16			; _SHARPEN_KERNEL[8] @ 128

$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("SHARPEN_KERNEL")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_SHARPEN_KERNEL")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _SHARPEN_KERNEL]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$36, DW_AT_external
	.global	_LAPLACIAN_KERNEL
	.sect	".const:_LAPLACIAN_KERNEL"
	.clink
	.align	1
_LAPLACIAN_KERNEL:
	CALL #_coverage_log;
	.field	-1,16			; _LAPLACIAN_KERNEL[0] @ 0
	.field	-1,16			; _LAPLACIAN_KERNEL[1] @ 16
	.field	-1,16			; _LAPLACIAN_KERNEL[2] @ 32
	.field	-1,16			; _LAPLACIAN_KERNEL[3] @ 48
	.field	8,16			; _LAPLACIAN_KERNEL[4] @ 64
	.field	-1,16			; _LAPLACIAN_KERNEL[5] @ 80
	.field	-1,16			; _LAPLACIAN_KERNEL[6] @ 96
	.field	-1,16			; _LAPLACIAN_KERNEL[7] @ 112
	.field	-1,16			; _LAPLACIAN_KERNEL[8] @ 128

$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("LAPLACIAN_KERNEL")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_LAPLACIAN_KERNEL")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _LAPLACIAN_KERNEL]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$37, DW_AT_external
	.global	_SHAPE_CLASSIFICATION
	.sect	".const:_SHAPE_CLASSIFICATION"
	.clink
	.align	1
_SHAPE_CLASSIFICATION:
	CALL #_coverage_log;
	.field	50,16			; _SHAPE_CLASSIFICATION[0] @ 0
	.field	60,16			; _SHAPE_CLASSIFICATION[1] @ 16
	.field	70,16			; _SHAPE_CLASSIFICATION[2] @ 32
	.field	100,16			; _SHAPE_CLASSIFICATION[3] @ 48
	.field	110,16			; _SHAPE_CLASSIFICATION[4] @ 64
	.field	230,16			; _SHAPE_CLASSIFICATION[5] @ 80
	.field	230,16			; _SHAPE_CLASSIFICATION[6] @ 96
	.field	55,16			; _SHAPE_CLASSIFICATION[7] @ 112
	.field	20,16			; _SHAPE_CLASSIFICATION[8] @ 128

$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("SHAPE_CLASSIFICATION")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_SHAPE_CLASSIFICATION")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _SHAPE_CLASSIFICATION]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$38, DW_AT_external
	.global	_BOX_CLASSIFICATION
	.sect	".const:_BOX_CLASSIFICATION"
	.clink
	.align	1
_BOX_CLASSIFICATION:
	CALL #_coverage_log;
	.field	10,16			; _BOX_CLASSIFICATION[0] @ 0
	.field	10,16			; _BOX_CLASSIFICATION[1] @ 16
	.field	10,16			; _BOX_CLASSIFICATION[2] @ 32
	.field	20,16			; _BOX_CLASSIFICATION[3] @ 48
	.field	20,16			; _BOX_CLASSIFICATION[4] @ 64
	.field	20,16			; _BOX_CLASSIFICATION[5] @ 80
	.field	10,16			; _BOX_CLASSIFICATION[6] @ 96
	.field	10,16			; _BOX_CLASSIFICATION[7] @ 112
	.field	10,16			; _BOX_CLASSIFICATION[8] @ 128

$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("BOX_CLASSIFICATION")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_BOX_CLASSIFICATION")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _BOX_CLASSIFICATION]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$39, DW_AT_external
	.global	_hGpio
	.bss	_hGpio,2,0,2
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr _hGpio]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$40, DW_AT_external
	.global	_config
	.bss	_config,3,0,0
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr _config]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$41, DW_AT_external
	.global	_GpioObj
	.bss	_GpioObj,2,0,0
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("GpioObj")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_GpioObj")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _GpioObj]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$42, DW_AT_external
	.global	_status
	.bss	_status,1,0,0
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr _status]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$43, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/12586qQhVFL 
	.sect	".text"
	.global	_config_gpio

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("config_gpio")
	.dwattr $C$DW$44, DW_AT_low_pc(_config_gpio)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_config_gpio")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./vision/vision.c",line 54,column 19,is_stmt,address _config_gpio

	.dwfde $C$DW$CIE, _config_gpio
;*******************************************************************************
;* FUNCTION NAME: config_gpio                                                  *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_config_gpio:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "./vision/vision.c",line 57,column 5,is_stmt
        AMOV #_GpioObj, XAR0 ; |57| 
        AMOV #_status, XAR1 ; |57| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_GPIO_open")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_GPIO_open ; |57| 
                                        ; call occurs [#_GPIO_open] ; |57| 
        MOV XAR0, dbl(*(#_hGpio))
	.dwpsn	file "./vision/vision.c",line 59,column 5,is_stmt
        MOV #0, *(#_config) ; |59| 
	.dwpsn	file "./vision/vision.c",line 60,column 5,is_stmt
        MOV #1, *(#(_config+1)) ; |60| 
	.dwpsn	file "./vision/vision.c",line 61,column 5,is_stmt
        MOV #1, *(#(_config+2)) ; |61| 
	.dwpsn	file "./vision/vision.c",line 62,column 5,is_stmt
        AMOV #_config, XAR1 ; |62| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_GPIO_configBit")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #_GPIO_configBit ; |62| 
                                        ; call occurs [#_GPIO_configBit] ; |62| 
	.dwpsn	file "./vision/vision.c",line 64,column 5,is_stmt
        MOV #1, *(#_config) ; |64| 
	.dwpsn	file "./vision/vision.c",line 65,column 5,is_stmt
        MOV #1, *(#(_config+1)) ; |65| 
	.dwpsn	file "./vision/vision.c",line 66,column 5,is_stmt
        MOV #1, *(#(_config+2)) ; |66| 
	.dwpsn	file "./vision/vision.c",line 67,column 5,is_stmt
        AMOV #_config, XAR1 ; |67| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_GPIO_configBit")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_GPIO_configBit ; |67| 
                                        ; call occurs [#_GPIO_configBit] ; |67| 
	.dwpsn	file "./vision/vision.c",line 69,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$44, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x45)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.global	_pre_treatment

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("pre_treatment")
	.dwattr $C$DW$49, DW_AT_low_pc(_pre_treatment)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_pre_treatment")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./vision/vision.c",line 72,column 74,is_stmt,address _pre_treatment

	.dwfde $C$DW$CIE, _pre_treatment
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg17]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg19]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: pre_treatment                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_pre_treatment:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("noise_average")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_noise_average")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("mean_kernel")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_mean_kernel")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |72| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 75,column 13,is_stmt
        MOV #0, *SP(#7) ; |75| 
	.dwpsn	file "./vision/vision.c",line 76,column 13,is_stmt

        AMAR *SP(#8), XAR0
||      MOV #9, T1

$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_memset")
	.dwattr $C$DW$60, DW_AT_TI_call

        CALL #_memset ; |76| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |76| 
	.dwpsn	file "./vision/vision.c",line 79,column 5,is_stmt
        MOV *SP(#4), T0 ; |79| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__remi")
	.dwattr $C$DW$61, DW_AT_TI_call

        CALL #__remi ; |79| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |79| 
        BCC $C$L1,T0 == #0 ; |79| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |79| 
	.dwpsn	file "./vision/vision.c",line 81,column 9,is_stmt
        MOV *SP(#4), T0 ; |81| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("__remi")
	.dwattr $C$DW$62, DW_AT_TI_call

        CALL #__remi ; |81| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |81| 
        SUB T0, *SP(#4), AR1 ; |81| 
        MOV AR1, *SP(#4) ; |81| 
$C$L1:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 83,column 5,is_stmt
        MOV *SP(#4), T0 ; |83| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__divi")
	.dwattr $C$DW$63, DW_AT_TI_call

        CALL #__divi ; |83| 
||      MOV #3, T1

                                        ; call occurs [#__divi] ; |83| 
        MOV T0, *SP(#5) ; |83| 
	.dwpsn	file "./vision/vision.c",line 85,column 5,is_stmt
        AMOV #_LAPLACIAN_KERNEL, XAR2 ; |85| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$64, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |85| 
||      MOV #0, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |85| 
	.dwpsn	file "./vision/vision.c",line 86,column 10,is_stmt
        MOV #0, *SP(#6) ; |86| 
	.dwpsn	file "./vision/vision.c",line 86,column 17,is_stmt
        MOV *SP(#5), AR1 ; |86| 

        SUB #1, AR1 ; |86| 
||      MOV *SP(#6), AR2 ; |86| 

        CMP AR2 >= AR1, TC1 ; |86| 
        BCC $C$L3,TC1 ; |86| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |86| 
$C$L2:    
	CALL #_coverage_log;
$C$DW$L$_pre_treatment$4$B:
	.dwpsn	file "./vision/vision.c",line 87,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#7), AR1 ; |87| 
        ADD *AR3(T0), AR1, AR1 ; |87| 
        MOV AR1, *SP(#7) ; |87| 
	.dwpsn	file "./vision/vision.c",line 86,column 30,is_stmt
        ADD #1, *SP(#6) ; |86| 
	.dwpsn	file "./vision/vision.c",line 86,column 17,is_stmt
        MOV *SP(#5), AR1 ; |86| 

        SUB #1, AR1 ; |86| 
||      MOV *SP(#6), AR2 ; |86| 

        CMP AR2 < AR1, TC1 ; |86| 
        BCC $C$L2,TC1 ; |86| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |86| 
$C$DW$L$_pre_treatment$4$E:
$C$L3:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 89,column 5,is_stmt
        MOV *SP(#7), T0 ; |89| 
        MOV *SP(#5), T1 ; |89| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__divi")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #__divi ; |89| 
                                        ; call occurs [#__divi] ; |89| 
        MOV T0, *SP(#7) ; |89| 
	.dwpsn	file "./vision/vision.c",line 90,column 5,is_stmt

        MOV T0, AR1 ; |90| 
||      MOV #1000, AR2 ; |90| 

        CMP AR1 <= AR2, TC1 ; |90| 
        BCC $C$L6,TC1 ; |90| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |90| 
	.dwpsn	file "./vision/vision.c",line 91,column 13,is_stmt
        MOV #0, *SP(#6) ; |91| 
	.dwpsn	file "./vision/vision.c",line 91,column 20,is_stmt

        MOV *SP(#6), AR1 ; |91| 
||      MOV #9, AR2

        CMP AR1 >= AR2, TC1 ; |91| 
        BCC $C$L5,TC1 ; |91| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |91| 
$C$L4:    
	CALL #_coverage_log;
$C$DW$L$_pre_treatment$7$B:
	.dwpsn	file "./vision/vision.c",line 92,column 13,is_stmt
        MOV AR1, T0
        AMAR *SP(#8), XAR3
        MOV *SP(#7), AR1 ; |92| 
        MOV AR1, *AR3(T0) ; |92| 
	.dwpsn	file "./vision/vision.c",line 91,column 37,is_stmt
        ADD #1, *SP(#6) ; |91| 
	.dwpsn	file "./vision/vision.c",line 91,column 20,is_stmt
        MOV *SP(#6), AR1 ; |91| 
        CMP AR1 < AR2, TC1 ; |91| 
        BCC $C$L4,TC1 ; |91| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |91| 
$C$DW$L$_pre_treatment$7$E:
$C$L5:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 94,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        AMAR *SP(#8), XAR2
        MOV *SP(#5), T0 ; |94| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$66, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |94| 
||      MOV #0, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |94| 
	.dwpsn	file "./vision/vision.c",line 95,column 9,is_stmt
        AMOV #_SHARPEN_KERNEL, XAR2 ; |95| 
        MOV *SP(#5), T0 ; |95| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$67, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |95| 
||      MOV #0, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |95| 
	.dwpsn	file "./vision/vision.c",line 97,column 9,is_stmt
        MOV *SP(#4), T0 ; |97| 
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_memcpy")
	.dwattr $C$DW$68, DW_AT_TI_call
        CALL #_memcpy ; |97| 
                                        ; call occurs [#_memcpy] ; |97| 
	.dwpsn	file "./vision/vision.c",line 98,column 9,is_stmt
        B $C$L7   ; |98| 
                                        ; branch occurs ; |98| 
$C$L6:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 101,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        AMOV #_SHARPEN_KERNEL, XAR2 ; |101| 

        MOV #0, T1
||      MOV *SP(#5), T0 ; |101| 

$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_IMG_conv_3x3 ; |101| 
                                        ; call occurs [#_IMG_conv_3x3] ; |101| 
	.dwpsn	file "./vision/vision.c",line 102,column 9,is_stmt
$C$L7:    
	.dwpsn	file "./vision/vision.c",line 104,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$71	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$71, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L4:1:1725994106")
	.dwattr $C$DW$71, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x5d)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_pre_treatment$7$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_pre_treatment$7$E)
	.dwendtag $C$DW$71


$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L2:1:1725994106")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x58)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_pre_treatment$4$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_pre_treatment$4$E)
	.dwendtag $C$DW$73

	.dwattr $C$DW$49, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x68)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_find_regions

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("find_regions")
	.dwattr $C$DW$75, DW_AT_low_pc(_find_regions)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_find_regions")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./vision/vision.c",line 106,column 82,is_stmt,address _find_regions

	.dwfde $C$DW$CIE, _find_regions
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg17]
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start_cords")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg19]
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colm")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("row")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: find_regions                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_find_regions:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("start_cords")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("isFinshed")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_isFinshed")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("index_start")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_index_start")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T1, *SP(#5) ; |106| 
        MOV T0, *SP(#4) ; |106| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 109,column 13,is_stmt
        MOV #0, *SP(#6) ; |109| 
	.dwpsn	file "./vision/vision.c",line 110,column 13,is_stmt
        MOV #0, *SP(#7) ; |110| 
	.dwpsn	file "./vision/vision.c",line 111,column 13,is_stmt
        MOV #0, *SP(#8) ; |111| 
	.dwpsn	file "./vision/vision.c",line 112,column 13,is_stmt
        MOV #0, *SP(#9) ; |112| 
	.dwpsn	file "./vision/vision.c",line 113,column 10,is_stmt
        MOV #0, *SP(#10) ; |113| 
	.dwpsn	file "./vision/vision.c",line 115,column 13,is_stmt
        MOV #0, *SP(#11) ; |115| 
	.dwpsn	file "./vision/vision.c",line 116,column 13,is_stmt
        MOV #0, *SP(#12) ; |116| 
	.dwpsn	file "./vision/vision.c",line 118,column 10,is_stmt
        MOV #0, *SP(#6) ; |118| 
	.dwpsn	file "./vision/vision.c",line 118,column 17,is_stmt
        MOV *SP(#5), T1 ; |118| 
        MPYM *SP(#4), T1, AC0 ; |118| 

        MOV AC0, AR1 ; |118| 
||      MOV *SP(#6), AR2 ; |118| 

        CMP AR2 >= AR1, TC1 ; |118| 
        BCC $C$L24,TC1 ; |118| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |118| 
$C$L8:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$2$B:
	.dwpsn	file "./vision/vision.c",line 119,column 9,is_stmt
        MOV *SP(#4), T1 ; |119| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("__remi")
	.dwattr $C$DW$91, DW_AT_TI_call

        CALL #__remi ; |119| 
||      MOV AR2, T0

                                        ; call occurs [#__remi] ; |119| 
        BCC $C$L9,T0 != #0 ; |119| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |119| 
$C$DW$L$_find_regions$2$E:
$C$DW$L$_find_regions$3$B:
	.dwpsn	file "./vision/vision.c",line 120,column 13,is_stmt
        ADD #1, *SP(#9) ; |120| 
$C$DW$L$_find_regions$3$E:
$C$L9:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$4$B:
	.dwpsn	file "./vision/vision.c",line 123,column 9,is_stmt
        MOV *SP(#6), T0 ; |123| 
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(T0) == #1, TC1 ; |123| 
        BCC $C$L20,!TC1 ; |123| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |123| 
$C$DW$L$_find_regions$4$E:
$C$DW$L$_find_regions$5$B:
	.dwpsn	file "./vision/vision.c",line 124,column 13,is_stmt
        MOV T0, AR1
        MOV AR1, *SP(#11) ; |124| 
	.dwpsn	file "./vision/vision.c",line 125,column 17,is_stmt
        MOV *SP(#6), AR1 ; |125| 
        ADD #1, AR1 ; |125| 
        MOV AR1, *SP(#7) ; |125| 
	.dwpsn	file "./vision/vision.c",line 125,column 28,is_stmt
        MOV *SP(#6), AR1 ; |125| 

        ADD #3, AR1 ; |125| 
||      MOV *SP(#7), AR2 ; |125| 

        CMP AR2 >= AR1, TC1 ; |125| 
        BCC $C$L13,TC1 ; |125| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |125| 
$C$DW$L$_find_regions$5$E:
$C$L10:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$6$B:
	.dwpsn	file "./vision/vision.c",line 126,column 17,is_stmt
        MOV *SP(#4), AR1 ; |126| 
        CMP AR2 != AR1, TC1 ; |126| 
        BCC $C$L11,TC1 ; |126| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |126| 
$C$DW$L$_find_regions$6$E:
$C$DW$L$_find_regions$7$B:
	.dwpsn	file "./vision/vision.c",line 127,column 21,is_stmt
        MOV #1, *SP(#10) ; |127| 
	.dwpsn	file "./vision/vision.c",line 128,column 21,is_stmt
        B $C$L13  ; |128| 
                                        ; branch occurs ; |128| 
$C$DW$L$_find_regions$7$E:
$C$L11:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$8$B:
	.dwpsn	file "./vision/vision.c",line 130,column 17,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |130| 
        BCC $C$L12,AR1 != #0 ; |130| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |130| 
$C$DW$L$_find_regions$8$E:
$C$DW$L$_find_regions$9$B:
	.dwpsn	file "./vision/vision.c",line 131,column 21,is_stmt
        MOV #1, *SP(#10) ; |131| 
	.dwpsn	file "./vision/vision.c",line 132,column 21,is_stmt
        B $C$L13  ; |132| 
                                        ; branch occurs ; |132| 
$C$DW$L$_find_regions$9$E:
$C$L12:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$10$B:
	.dwpsn	file "./vision/vision.c",line 125,column 37,is_stmt
        ADD #1, *SP(#7) ; |125| 
	.dwpsn	file "./vision/vision.c",line 125,column 28,is_stmt
        MOV *SP(#6), AR1 ; |125| 

        ADD #3, AR1 ; |125| 
||      MOV *SP(#7), AR2 ; |125| 

        CMP AR2 < AR1, TC1 ; |125| 
        BCC $C$L10,TC1 ; |125| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |125| 
$C$DW$L$_find_regions$10$E:
$C$L13:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$11$B:
	.dwpsn	file "./vision/vision.c",line 135,column 13,is_stmt
        MOV *SP(#10), AR1 ; |135| 
        BCC $C$L14,AR1 == #0 ; |135| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |135| 
$C$DW$L$_find_regions$11$E:
$C$DW$L$_find_regions$12$B:
	.dwpsn	file "./vision/vision.c",line 136,column 17,is_stmt
        ADD #2, *SP(#6) ; |136| 
	.dwpsn	file "./vision/vision.c",line 137,column 17,is_stmt
        B $C$L23  ; |137| 
                                        ; branch occurs ; |137| 
$C$DW$L$_find_regions$12$E:
$C$L14:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$13$B:
	.dwpsn	file "./vision/vision.c",line 139,column 18,is_stmt
        MOV *SP(#9), AR1 ; |139| 
        ADD #1, AR1 ; |139| 
        MOV AR1, *SP(#7) ; |139| 
	.dwpsn	file "./vision/vision.c",line 139,column 29,is_stmt
        MOV *SP(#9), AR1 ; |139| 

        ADD #3, AR1 ; |139| 
||      MOV *SP(#7), AR2 ; |139| 

        CMP AR2 >= AR1, TC1 ; |139| 
        BCC $C$L21,TC1 ; |139| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |139| 
$C$DW$L$_find_regions$13$E:
$C$L15:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$14$B:

$C$DW$92	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 13]
	.dwpsn	file "./vision/vision.c",line 140,column 25,is_stmt
        MOV *SP(#4), T1 ; |140| 
        MOV *SP(#6), AC0 ; |140| 
        MACM *SP(#9), T1, AC0, AC0 ; |140| 
        MOV AC0, *SP(#13) ; |140| 
	.dwpsn	file "./vision/vision.c",line 141,column 21,is_stmt
        MOV AC0, AR1
        MOV AR1, *SP(#8) ; |141| 
	.dwpsn	file "./vision/vision.c",line 141,column 32,is_stmt

        MOV *SP(#13), AR1 ; |141| 
||      MOV AC0, AR2 ; |141| 

        ADD #3, AR1 ; |141| 
        CMP AR2 >= AR1, TC1 ; |141| 
        BCC $C$L19,TC1 ; |141| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |141| 
$C$DW$L$_find_regions$14$E:
$C$L16:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$15$B:
	.dwpsn	file "./vision/vision.c",line 142,column 21,is_stmt
        MOV *SP(#4), T1 ; |142| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("__remi")
	.dwattr $C$DW$94, DW_AT_TI_call

        CALL #__remi ; |142| 
||      MOV AR2, T0

                                        ; call occurs [#__remi] ; |142| 
        BCC $C$L17,T0 != #0 ; |142| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |142| 
$C$DW$L$_find_regions$15$E:
$C$DW$L$_find_regions$16$B:
	.dwpsn	file "./vision/vision.c",line 143,column 25,is_stmt
        MOV #1, *SP(#10) ; |143| 
$C$DW$L$_find_regions$16$E:
$C$L17:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$17$B:
	.dwpsn	file "./vision/vision.c",line 145,column 21,is_stmt
        MOV *SP(#8), T0 ; |145| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |145| 
        BCC $C$L18,AR1 != #0 ; |145| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |145| 
$C$DW$L$_find_regions$17$E:
$C$DW$L$_find_regions$18$B:
	.dwpsn	file "./vision/vision.c",line 146,column 25,is_stmt
        MOV #1, *SP(#10) ; |146| 
$C$DW$L$_find_regions$18$E:
$C$L18:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$19$B:
	.dwpsn	file "./vision/vision.c",line 148,column 21,is_stmt
        MOV *SP(#10), AR1 ; |148| 
        BCC $C$L19,AR1 != #0 ; |148| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |148| 
$C$DW$L$_find_regions$19$E:
$C$DW$L$_find_regions$20$B:
	.dwpsn	file "./vision/vision.c",line 149,column 25,is_stmt
	.dwpsn	file "./vision/vision.c",line 141,column 47,is_stmt
        ADD #1, *SP(#8) ; |141| 
	.dwpsn	file "./vision/vision.c",line 141,column 32,is_stmt
        MOV *SP(#13), AR1 ; |141| 

        ADD #3, AR1 ; |141| 
||      MOV *SP(#8), AR2 ; |141| 

        CMP AR2 < AR1, TC1 ; |141| 
        BCC $C$L16,TC1 ; |141| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |141| 
$C$DW$L$_find_regions$20$E:
$C$L19:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$21$B:
	.dwpsn	file "./vision/vision.c",line 152,column 17,is_stmt
        MOV *SP(#10), AR1 ; |152| 
        BCC $C$L21,AR1 != #0 ; |152| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |152| 
$C$DW$L$_find_regions$21$E:
$C$DW$L$_find_regions$22$B:
	.dwpsn	file "./vision/vision.c",line 153,column 25,is_stmt
	.dwendtag $C$DW$92

	.dwpsn	file "./vision/vision.c",line 139,column 40,is_stmt
        ADD #1, *SP(#7) ; |139| 
	.dwpsn	file "./vision/vision.c",line 139,column 29,is_stmt
        MOV *SP(#9), AR1 ; |139| 

        ADD #3, AR1 ; |139| 
||      MOV *SP(#7), AR2 ; |139| 

        CMP AR2 < AR1, TC1 ; |139| 
        BCC $C$L15,TC1 ; |139| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |139| 
$C$DW$L$_find_regions$22$E:
$C$DW$L$_find_regions$23$B:
	.dwpsn	file "./vision/vision.c",line 156,column 9,is_stmt
        B $C$L21  ; |156| 
                                        ; branch occurs ; |156| 
$C$DW$L$_find_regions$23$E:
$C$L20:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$24$B:
	.dwpsn	file "./vision/vision.c",line 158,column 13,is_stmt
        MOV #1, *SP(#10) ; |158| 
$C$DW$L$_find_regions$24$E:
$C$L21:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$25$B:
	.dwpsn	file "./vision/vision.c",line 161,column 9,is_stmt
        MOV *SP(#10), AR1 ; |161| 
        BCC $C$L22,AR1 == #0 ; |161| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |161| 
$C$DW$L$_find_regions$25$E:
$C$DW$L$_find_regions$26$B:
	.dwpsn	file "./vision/vision.c",line 162,column 13,is_stmt
        MOV #0, *SP(#11) ; |162| 
	.dwpsn	file "./vision/vision.c",line 163,column 13,is_stmt
        B $C$L23  ; |163| 
                                        ; branch occurs ; |163| 
$C$DW$L$_find_regions$26$E:
$C$L22:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$27$B:
	.dwpsn	file "./vision/vision.c",line 165,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), T0 ; |165| 
        MOV *SP(#11), AR1 ; |165| 
        MOV AR1, *AR3(T0) ; |165| 
	.dwpsn	file "./vision/vision.c",line 166,column 9,is_stmt
        ADD #1, *SP(#12) ; |166| 
$C$DW$L$_find_regions$27$E:
$C$L23:    
	CALL #_coverage_log;
$C$DW$L$_find_regions$28$B:
	.dwpsn	file "./vision/vision.c",line 118,column 33,is_stmt
        ADD #1, *SP(#6) ; |118| 
	.dwpsn	file "./vision/vision.c",line 118,column 17,is_stmt
        MOV *SP(#5), T1 ; |118| 
        MPYM *SP(#4), T1, AC0 ; |118| 

        MOV AC0, AR1 ; |118| 
||      MOV *SP(#6), AR2 ; |118| 

        CMP AR2 < AR1, TC1 ; |118| 
        BCC $C$L8,TC1 ; |118| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |118| 
$C$DW$L$_find_regions$28$E:
	.dwpsn	file "./vision/vision.c",line 169,column 1,is_stmt
$C$L24:    
	CALL #_coverage_log;
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$96	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$96, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L8:1:1725994106")
	.dwattr $C$DW$96, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xa7)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_find_regions$2$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_find_regions$2$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_find_regions$13$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_find_regions$13$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_find_regions$23$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_find_regions$23$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_find_regions$24$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_find_regions$24$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_find_regions$25$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_find_regions$25$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_find_regions$3$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_find_regions$3$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_find_regions$4$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_find_regions$4$E)
$C$DW$104	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$104, DW_AT_low_pc($C$DW$L$_find_regions$5$B)
	.dwattr $C$DW$104, DW_AT_high_pc($C$DW$L$_find_regions$5$E)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_find_regions$7$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_find_regions$7$E)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_find_regions$9$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_find_regions$9$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_find_regions$11$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_find_regions$11$E)
$C$DW$108	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$108, DW_AT_low_pc($C$DW$L$_find_regions$12$B)
	.dwattr $C$DW$108, DW_AT_high_pc($C$DW$L$_find_regions$12$E)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_find_regions$26$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_find_regions$26$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_find_regions$27$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_find_regions$27$E)
$C$DW$111	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$111, DW_AT_low_pc($C$DW$L$_find_regions$28$B)
	.dwattr $C$DW$111, DW_AT_high_pc($C$DW$L$_find_regions$28$E)

$C$DW$112	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$112, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L15:2:1725994106")
	.dwattr $C$DW$112, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x9b)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_find_regions$14$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_find_regions$14$E)
$C$DW$114	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$114, DW_AT_low_pc($C$DW$L$_find_regions$21$B)
	.dwattr $C$DW$114, DW_AT_high_pc($C$DW$L$_find_regions$21$E)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_find_regions$22$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_find_regions$22$E)

$C$DW$116	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$116, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L16:3:1725994106")
	.dwattr $C$DW$116, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x97)
$C$DW$117	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$117, DW_AT_low_pc($C$DW$L$_find_regions$15$B)
	.dwattr $C$DW$117, DW_AT_high_pc($C$DW$L$_find_regions$15$E)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_find_regions$16$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_find_regions$16$E)
$C$DW$119	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$119, DW_AT_low_pc($C$DW$L$_find_regions$17$B)
	.dwattr $C$DW$119, DW_AT_high_pc($C$DW$L$_find_regions$17$E)
$C$DW$120	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$120, DW_AT_low_pc($C$DW$L$_find_regions$18$B)
	.dwattr $C$DW$120, DW_AT_high_pc($C$DW$L$_find_regions$18$E)
$C$DW$121	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$121, DW_AT_low_pc($C$DW$L$_find_regions$19$B)
	.dwattr $C$DW$121, DW_AT_high_pc($C$DW$L$_find_regions$19$E)
$C$DW$122	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$122, DW_AT_low_pc($C$DW$L$_find_regions$20$B)
	.dwattr $C$DW$122, DW_AT_high_pc($C$DW$L$_find_regions$20$E)
	.dwendtag $C$DW$116

	.dwendtag $C$DW$112


$C$DW$123	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$123, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L10:2:1725994106")
	.dwattr $C$DW$123, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x7d)
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x86)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$_find_regions$6$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$_find_regions$6$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$_find_regions$8$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$_find_regions$8$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_find_regions$10$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_find_regions$10$E)
	.dwendtag $C$DW$123

	.dwendtag $C$DW$96

	.dwattr $C$DW$75, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text"
	.global	_classification

$C$DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("classification")
	.dwattr $C$DW$127, DW_AT_low_pc(_classification)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_classification")
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$127, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./vision/vision.c",line 170,column 81,is_stmt,address _classification

	.dwfde $C$DW$CIE, _classification
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_threshold")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg17]
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg19]
$C$DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: classification                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_classification:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("image_threshold")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("isBox")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_isBox")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("isShape")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_isShape")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("class_pos_x")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_class_pos_x")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T0, *SP(#4) ; |170| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 175,column 13,is_stmt
        MOV #0, *SP(#11) ; |175| 
	.dwpsn	file "./vision/vision.c",line 177,column 5,is_stmt
        MOV *SP(#4), T0 ; |177| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("__remi")
	.dwattr $C$DW$141, DW_AT_TI_call

        CALL #__remi ; |177| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |177| 
        BCC $C$L25,T0 != #0 ; |177| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |177| 
	.dwpsn	file "./vision/vision.c",line 178,column 9,is_stmt
        MOV *SP(#4), T0 ; |178| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("__divi")
	.dwattr $C$DW$142, DW_AT_TI_call

        CALL #__divi ; |178| 
||      MOV #3, T1

                                        ; call occurs [#__divi] ; |178| 
        MOV T0, *SP(#8) ; |178| 
	.dwpsn	file "./vision/vision.c",line 179,column 5,is_stmt
        B $C$L26  ; |179| 
                                        ; branch occurs ; |179| 
$C$L25:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 181,column 9,is_stmt
        MOV *SP(#4), AC0 ; |181| 
        BFXTR #0x8000, AC0, AR1 ; |181| 
        ADD AC0, AR1 ; |181| 
        SFTS AR1, #-1 ; |181| 
        MOV AR1, *SP(#8) ; |181| 
$C$L26:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 183,column 5,is_stmt
        MOV #0, *SP(#5) ; |183| 
	.dwpsn	file "./vision/vision.c",line 184,column 11,is_stmt
        MOV *SP(#5), T0 ; |184| 
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(T0) == #-1, TC1 ; |184| 
        BCC $C$L43,TC1 ; |184| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |184| 
$C$L27:    
	CALL #_coverage_log;
$C$DW$L$_classification$5$B:
	.dwpsn	file "./vision/vision.c",line 186,column 13,is_stmt
        MOV #0, *SP(#7) ; |186| 
	.dwpsn	file "./vision/vision.c",line 186,column 20,is_stmt

        MOV *SP(#7), AR1 ; |186| 
||      MOV #3, AR2

        CMP AR1 >= AR2, TC1 ; |186| 
        BCC $C$L34,TC1 ; |186| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |186| 
$C$DW$L$_classification$5$E:
$C$L28:    
	CALL #_coverage_log;
$C$DW$L$_classification$6$B:
	.dwpsn	file "./vision/vision.c",line 187,column 17,is_stmt
        MOV *SP(#5), T0 ; |187| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |187| 
        MOV AR1, *SP(#6) ; |187| 
	.dwpsn	file "./vision/vision.c",line 187,column 31,is_stmt
        MOV *SP(#5), T0 ; |187| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |187| 

        ADD #3, AR1 ; |187| 
||      MOV *SP(#6), AR2 ; |187| 

        CMP AR2 >= AR1, TC1 ; |187| 
        BCC $C$L33,TC1 ; |187| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |187| 
$C$DW$L$_classification$6$E:
$C$L29:    
	CALL #_coverage_log;
$C$DW$L$_classification$7$B:
	.dwpsn	file "./vision/vision.c",line 188,column 17,is_stmt

        MOV AR2, AC0 ; |188| 
||      MOV *SP(#8), T1 ; |188| 

        MOV dbl(*SP(#0)), XAR3
        MACM *SP(#7), T1, AC0, AC0 ; |188| 
        MOV AC0, T0 ; |188| 
        MOV *SP(#11), AC0 ; |188| 
        MACM *SP(#7), T1, AC0, AC0 ; |188| 

        MOV AC0, T0 ; |188| 
||      MOV *AR3(T0), AR1 ; |188| 

        AMOV #_BOX_CLASSIFICATION, XAR3 ; |188| 
        MOV *AR3(T0), AR2 ; |188| 
        SUB #20, AR2, AR2 ; |188| 
        CMP AR2 < AR1, TC1 ; |188| 
        BCC $C$L30,TC1 ; |188| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |188| 
$C$DW$L$_classification$7$E:
$C$DW$L$_classification$8$B:
        MOV *SP(#11), AC0 ; |188| 
        MACM *SP(#7), T1, AC0, AC0 ; |188| 
        MOV AC0, T0 ; |188| 
        MOV *AR3(T0), AR1 ; |188| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC0 ; |188| 
        MACM *SP(#7), T1, AC0, AC0 ; |188| 
        MOV AC0, T0 ; |188| 
        MOV *AR3(T0), AR2 ; |188| 
        CMP AR2 < AR1, TC1 ; |188| 
        BCC $C$L31,TC1 ; |188| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |188| 
$C$DW$L$_classification$8$E:
$C$L30:    
	CALL #_coverage_log;
$C$DW$L$_classification$9$B:
	.dwpsn	file "./vision/vision.c",line 189,column 21,is_stmt
        ADD #1, *SP(#11) ; |189| 
	.dwpsn	file "./vision/vision.c",line 190,column 17,is_stmt
        B $C$L32  ; |190| 
                                        ; branch occurs ; |190| 
$C$DW$L$_classification$9$E:
$C$L31:    
	CALL #_coverage_log;
$C$DW$L$_classification$10$B:
	.dwpsn	file "./vision/vision.c",line 192,column 21,is_stmt
        MOV #0, *SP(#9) ; |192| 
	.dwpsn	file "./vision/vision.c",line 193,column 21,is_stmt
        B $C$L33  ; |193| 
                                        ; branch occurs ; |193| 
$C$DW$L$_classification$10$E:
$C$L32:    
	CALL #_coverage_log;
$C$DW$L$_classification$11$B:
	.dwpsn	file "./vision/vision.c",line 187,column 47,is_stmt
        ADD #1, *SP(#6) ; |187| 
	.dwpsn	file "./vision/vision.c",line 187,column 31,is_stmt
        MOV *SP(#5), T0 ; |187| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |187| 

        ADD #3, AR1 ; |187| 
||      MOV *SP(#6), AR2 ; |187| 

        CMP AR2 < AR1, TC1 ; |187| 
        BCC $C$L29,TC1 ; |187| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |187| 
$C$DW$L$_classification$11$E:
$C$L33:    
	CALL #_coverage_log;
$C$DW$L$_classification$12$B:
	.dwpsn	file "./vision/vision.c",line 196,column 13,is_stmt
        MOV #0, *SP(#11) ; |196| 
	.dwpsn	file "./vision/vision.c",line 186,column 27,is_stmt
        ADD #1, *SP(#7) ; |186| 
	.dwpsn	file "./vision/vision.c",line 186,column 20,is_stmt

        MOV *SP(#7), AR1 ; |186| 
||      MOV #3, AR2

        CMP AR1 < AR2, TC1 ; |186| 
        BCC $C$L28,TC1 ; |186| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |186| 
$C$DW$L$_classification$12$E:
$C$L34:    
	CALL #_coverage_log;
$C$DW$L$_classification$13$B:
	.dwpsn	file "./vision/vision.c",line 198,column 9,is_stmt
        MOV *SP(#9), AR1 ; |198| 
        BCC $C$L35,AR1 == #0 ; |198| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |198| 
$C$DW$L$_classification$13$E:
	.dwpsn	file "./vision/vision.c",line 199,column 13,is_stmt
        B $C$L43  ; |199| 
                                        ; branch occurs ; |199| 
$C$L35:    
	CALL #_coverage_log;
$C$DW$L$_classification$16$B:
	.dwpsn	file "./vision/vision.c",line 202,column 17,is_stmt
        MOV #0, *SP(#7) ; |202| 
	.dwpsn	file "./vision/vision.c",line 202,column 24,is_stmt
        MOV *SP(#7), AR1 ; |202| 
        CMP AR1 >= AR2, TC1 ; |202| 
        BCC $C$L42,TC1 ; |202| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |202| 
$C$DW$L$_classification$16$E:
$C$L36:    
	CALL #_coverage_log;
$C$DW$L$_classification$17$B:
	.dwpsn	file "./vision/vision.c",line 203,column 21,is_stmt
        MOV *SP(#5), T0 ; |203| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |203| 
        MOV AR1, *SP(#6) ; |203| 
	.dwpsn	file "./vision/vision.c",line 203,column 35,is_stmt
        MOV *SP(#5), T0 ; |203| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |203| 

        ADD #3, AR1 ; |203| 
||      MOV *SP(#6), AR2 ; |203| 

        CMP AR2 >= AR1, TC1 ; |203| 
        BCC $C$L41,TC1 ; |203| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |203| 
$C$DW$L$_classification$17$E:
$C$L37:    
	CALL #_coverage_log;
$C$DW$L$_classification$18$B:
	.dwpsn	file "./vision/vision.c",line 204,column 21,is_stmt

        MOV AR2, AC0 ; |204| 
||      MOV *SP(#8), T1 ; |204| 

        MOV dbl(*SP(#0)), XAR3
        MACM *SP(#7), T1, AC0, AC0 ; |204| 
        MOV AC0, T0 ; |204| 
        MOV *SP(#11), AC0 ; |204| 
        MACM *SP(#7), T1, AC0, AC0 ; |204| 

        MOV AC0, T0 ; |204| 
||      MOV *AR3(T0), AR1 ; |204| 

        AMOV #_SHAPE_CLASSIFICATION, XAR3 ; |204| 
        MOV *AR3(T0), AR2 ; |204| 
        SUB #20, AR2, AR2 ; |204| 
        CMP AR2 < AR1, TC1 ; |204| 
        BCC $C$L38,TC1 ; |204| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |204| 
$C$DW$L$_classification$18$E:
$C$DW$L$_classification$19$B:
        MOV *SP(#11), AC0 ; |204| 
        MACM *SP(#7), T1, AC0, AC0 ; |204| 
        MOV AC0, T0 ; |204| 
        MOV *AR3(T0), AR1 ; |204| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC0 ; |204| 
        MACM *SP(#7), T1, AC0, AC0 ; |204| 
        MOV AC0, T0 ; |204| 
        MOV *AR3(T0), AR2 ; |204| 
        CMP AR2 < AR1, TC1 ; |204| 
        BCC $C$L39,TC1 ; |204| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |204| 
$C$DW$L$_classification$19$E:
$C$L38:    
	CALL #_coverage_log;
$C$DW$L$_classification$20$B:
	.dwpsn	file "./vision/vision.c",line 205,column 25,is_stmt
        ADD #1, *SP(#11) ; |205| 
	.dwpsn	file "./vision/vision.c",line 206,column 21,is_stmt
        B $C$L40  ; |206| 
                                        ; branch occurs ; |206| 
$C$DW$L$_classification$20$E:
$C$L39:    
	CALL #_coverage_log;
$C$DW$L$_classification$21$B:
	.dwpsn	file "./vision/vision.c",line 208,column 25,is_stmt
        MOV #0, *SP(#10) ; |208| 
	.dwpsn	file "./vision/vision.c",line 209,column 25,is_stmt
        B $C$L41  ; |209| 
                                        ; branch occurs ; |209| 
$C$DW$L$_classification$21$E:
$C$L40:    
	CALL #_coverage_log;
$C$DW$L$_classification$22$B:
	.dwpsn	file "./vision/vision.c",line 203,column 51,is_stmt
        ADD #1, *SP(#6) ; |203| 
	.dwpsn	file "./vision/vision.c",line 203,column 35,is_stmt
        MOV *SP(#5), T0 ; |203| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |203| 

        ADD #3, AR1 ; |203| 
||      MOV *SP(#6), AR2 ; |203| 

        CMP AR2 < AR1, TC1 ; |203| 
        BCC $C$L37,TC1 ; |203| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |203| 
$C$DW$L$_classification$22$E:
$C$L41:    
	CALL #_coverage_log;
$C$DW$L$_classification$23$B:
	.dwpsn	file "./vision/vision.c",line 212,column 17,is_stmt
        MOV #0, *SP(#11) ; |212| 
	.dwpsn	file "./vision/vision.c",line 202,column 31,is_stmt
        ADD #1, *SP(#7) ; |202| 
	.dwpsn	file "./vision/vision.c",line 202,column 24,is_stmt

        MOV *SP(#7), AR1 ; |202| 
||      MOV #3, AR2

        CMP AR1 < AR2, TC1 ; |202| 
        BCC $C$L36,TC1 ; |202| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |202| 
$C$DW$L$_classification$23$E:
$C$L42:    
	CALL #_coverage_log;
$C$DW$L$_classification$24$B:
	.dwpsn	file "./vision/vision.c",line 216,column 9,is_stmt
        ADD #1, *SP(#5) ; |216| 
	.dwpsn	file "./vision/vision.c",line 184,column 11,is_stmt
        MOV *SP(#5), T0 ; |184| 
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(T0) == #-1, TC1 ; |184| 
        BCC $C$L27,!TC1 ; |184| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |184| 
$C$DW$L$_classification$24$E:
$C$L43:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 218,column 5,is_stmt
        MOV *SP(#9), AR1 ; |218| 
        BCC $C$L44,AR1 == #0 ; |218| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |218| 
	.dwpsn	file "./vision/vision.c",line 219,column 9,is_stmt
        MOV #1, T0
        B $C$L46  ; |219| 
                                        ; branch occurs ; |219| 
$C$L44:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 221,column 10,is_stmt
        MOV *SP(#10), AR1 ; |221| 
        BCC $C$L45,AR1 == #0 ; |221| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |221| 
	.dwpsn	file "./vision/vision.c",line 222,column 9,is_stmt
        MOV #2, T0
        B $C$L46  ; |222| 
                                        ; branch occurs ; |222| 
$C$L45:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 225,column 9,is_stmt
        MOV #0, T0
$C$L46:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 227,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$144	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$144, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L27:1:1725994106")
	.dwattr $C$DW$144, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$144, DW_AT_TI_end_line(0xd9)
$C$DW$145	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$145, DW_AT_low_pc($C$DW$L$_classification$5$B)
	.dwattr $C$DW$145, DW_AT_high_pc($C$DW$L$_classification$5$E)
$C$DW$146	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$146, DW_AT_low_pc($C$DW$L$_classification$13$B)
	.dwattr $C$DW$146, DW_AT_high_pc($C$DW$L$_classification$13$E)
$C$DW$147	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$147, DW_AT_low_pc($C$DW$L$_classification$16$B)
	.dwattr $C$DW$147, DW_AT_high_pc($C$DW$L$_classification$16$E)
$C$DW$148	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$148, DW_AT_low_pc($C$DW$L$_classification$24$B)
	.dwattr $C$DW$148, DW_AT_high_pc($C$DW$L$_classification$24$E)

$C$DW$149	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$149, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L28:2:1725994106")
	.dwattr $C$DW$149, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0xba)
	.dwattr $C$DW$149, DW_AT_TI_end_line(0xc5)
$C$DW$150	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$150, DW_AT_low_pc($C$DW$L$_classification$6$B)
	.dwattr $C$DW$150, DW_AT_high_pc($C$DW$L$_classification$6$E)
$C$DW$151	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$151, DW_AT_low_pc($C$DW$L$_classification$10$B)
	.dwattr $C$DW$151, DW_AT_high_pc($C$DW$L$_classification$10$E)
$C$DW$152	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$152, DW_AT_low_pc($C$DW$L$_classification$12$B)
	.dwattr $C$DW$152, DW_AT_high_pc($C$DW$L$_classification$12$E)

$C$DW$153	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$153, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L29:3:1725994106")
	.dwattr $C$DW$153, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0xbb)
	.dwattr $C$DW$153, DW_AT_TI_end_line(0xc3)
$C$DW$154	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$154, DW_AT_low_pc($C$DW$L$_classification$7$B)
	.dwattr $C$DW$154, DW_AT_high_pc($C$DW$L$_classification$7$E)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_classification$8$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_classification$8$E)
$C$DW$156	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$156, DW_AT_low_pc($C$DW$L$_classification$9$B)
	.dwattr $C$DW$156, DW_AT_high_pc($C$DW$L$_classification$9$E)
$C$DW$157	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$157, DW_AT_low_pc($C$DW$L$_classification$11$B)
	.dwattr $C$DW$157, DW_AT_high_pc($C$DW$L$_classification$11$E)
	.dwendtag $C$DW$153

	.dwendtag $C$DW$149


$C$DW$158	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$158, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L36:2:1725994106")
	.dwattr $C$DW$158, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$158, DW_AT_TI_end_line(0xd5)
$C$DW$159	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$159, DW_AT_low_pc($C$DW$L$_classification$17$B)
	.dwattr $C$DW$159, DW_AT_high_pc($C$DW$L$_classification$17$E)
$C$DW$160	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$160, DW_AT_low_pc($C$DW$L$_classification$21$B)
	.dwattr $C$DW$160, DW_AT_high_pc($C$DW$L$_classification$21$E)
$C$DW$161	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$161, DW_AT_low_pc($C$DW$L$_classification$23$B)
	.dwattr $C$DW$161, DW_AT_high_pc($C$DW$L$_classification$23$E)

$C$DW$162	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$162, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L37:3:1725994106")
	.dwattr $C$DW$162, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0xcb)
	.dwattr $C$DW$162, DW_AT_TI_end_line(0xd3)
$C$DW$163	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$163, DW_AT_low_pc($C$DW$L$_classification$18$B)
	.dwattr $C$DW$163, DW_AT_high_pc($C$DW$L$_classification$18$E)
$C$DW$164	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$164, DW_AT_low_pc($C$DW$L$_classification$19$B)
	.dwattr $C$DW$164, DW_AT_high_pc($C$DW$L$_classification$19$E)
$C$DW$165	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$165, DW_AT_low_pc($C$DW$L$_classification$20$B)
	.dwattr $C$DW$165, DW_AT_high_pc($C$DW$L$_classification$20$E)
$C$DW$166	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$166, DW_AT_low_pc($C$DW$L$_classification$22$B)
	.dwattr $C$DW$166, DW_AT_high_pc($C$DW$L$_classification$22$E)
	.dwendtag $C$DW$162

	.dwendtag $C$DW$158

	.dwendtag $C$DW$144

	.dwattr $C$DW$127, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.global	_segmentation

$C$DW$167	.dwtag  DW_TAG_subprogram, DW_AT_name("segmentation")
	.dwattr $C$DW$167, DW_AT_low_pc(_segmentation)
	.dwattr $C$DW$167, DW_AT_high_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_segmentation")
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$167, DW_AT_TI_begin_line(0xe5)
	.dwattr $C$DW$167, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$167, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./vision/vision.c",line 229,column 91,is_stmt,address _segmentation

	.dwfde $C$DW$CIE, _segmentation
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg17]
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg19]
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg21]
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: segmentation                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CSR,*
;*                        RPTC,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL           *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 18 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (16 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_segmentation:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$172	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$173	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$175	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$176	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$177	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("start_cords")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#6) ; |229| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 233,column 15,is_stmt
        MOV *SP(#6), T0 ; |233| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_calloc")
	.dwattr $C$DW$182, DW_AT_TI_call

        CALL #_calloc ; |233| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |233| 
        MOV XAR0, dbl(*SP(#10))
	.dwpsn	file "./vision/vision.c",line 234,column 15,is_stmt
        MOV *SP(#6), T0 ; |234| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_calloc")
	.dwattr $C$DW$183, DW_AT_TI_call

        CALL #_calloc ; |234| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |234| 
        MOV XAR0, dbl(*SP(#12))
	.dwpsn	file "./vision/vision.c",line 235,column 5,is_stmt
        MOV *SP(#6), T0 ; |235| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#10)), XAR1
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_memcpy")
	.dwattr $C$DW$184, DW_AT_TI_call
        CALL #_memcpy ; |235| 
                                        ; call occurs [#_memcpy] ; |235| 
	.dwpsn	file "./vision/vision.c",line 237,column 5,is_stmt
        MOV *SP(#6), T0 ; |237| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__remi")
	.dwattr $C$DW$185, DW_AT_TI_call

        CALL #__remi ; |237| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |237| 
        BCC $C$L47,T0 != #0 ; |237| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |237| 
	.dwpsn	file "./vision/vision.c",line 238,column 9,is_stmt
        MOV *SP(#6), T0 ; |238| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("__divi")
	.dwattr $C$DW$186, DW_AT_TI_call

        CALL #__divi ; |238| 
||      MOV #3, T1

                                        ; call occurs [#__divi] ; |238| 
        MOV T0, *SP(#7) ; |238| 
	.dwpsn	file "./vision/vision.c",line 239,column 9,is_stmt
        MOV #3, *SP(#8) ; |239| 
	.dwpsn	file "./vision/vision.c",line 240,column 5,is_stmt
        B $C$L48  ; |240| 
                                        ; branch occurs ; |240| 
$C$L47:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 242,column 9,is_stmt
        MOV *SP(#6), AC0 ; |242| 
        BFXTR #0x8000, AC0, AR1 ; |242| 
        ADD AC0, AR1 ; |242| 
        SFTS AR1, #-1 ; |242| 
        MOV AR1, *SP(#7) ; |242| 
	.dwpsn	file "./vision/vision.c",line 243,column 9,is_stmt
        MOV #2, *SP(#8) ; |243| 
$C$L48:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 246,column 5,is_stmt
        MOV *SP(#7), T0 ; |246| 
        MOV *SP(#8), T1 ; |246| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#12)), XAR1
        MOV #200, AR2 ; |246| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_IMG_threshold")
	.dwattr $C$DW$187, DW_AT_TI_call
        CALL #_IMG_threshold ; |246| 
                                        ; call occurs [#_IMG_threshold] ; |246| 
	.dwpsn	file "./vision/vision.c",line 248,column 9,is_stmt
        MOV #0, *SP(#9) ; |248| 
	.dwpsn	file "./vision/vision.c",line 248,column 16,is_stmt
        MOV *SP(#6), AR1 ; |248| 
        MOV *SP(#9), AR2 ; |248| 
        CMP AR2 >= AR1, TC1 ; |248| 
        BCC $C$L52,TC1 ; |248| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |248| 
$C$L49:    
	CALL #_coverage_log;
$C$DW$L$_segmentation$5$B:
	.dwpsn	file "./vision/vision.c",line 249,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(T0), AR1 ; |249| 
        BCC $C$L50,AR1 != #0 ; |249| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |249| 
$C$DW$L$_segmentation$5$E:
$C$DW$L$_segmentation$6$B:
	.dwpsn	file "./vision/vision.c",line 250,column 13,is_stmt
        B $C$L51  ; |250| 
                                        ; branch occurs ; |250| 
$C$DW$L$_segmentation$6$E:
$C$L50:    
	CALL #_coverage_log;
$C$DW$L$_segmentation$8$B:
	.dwpsn	file "./vision/vision.c",line 252,column 14,is_stmt
        MOV *AR3(T0), AR1 ; |252| 
        BCC $C$L51,AR1 == #0 ; |252| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |252| 
$C$DW$L$_segmentation$8$E:
$C$DW$L$_segmentation$9$B:
	.dwpsn	file "./vision/vision.c",line 253,column 13,is_stmt
        MOV #1, *AR3(T0) ; |253| 
$C$DW$L$_segmentation$9$E:
$C$L51:    
	CALL #_coverage_log;
$C$DW$L$_segmentation$10$B:
	.dwpsn	file "./vision/vision.c",line 248,column 26,is_stmt
        ADD #1, *SP(#9) ; |248| 
	.dwpsn	file "./vision/vision.c",line 248,column 16,is_stmt
        MOV *SP(#6), AR1 ; |248| 
        MOV *SP(#9), AR2 ; |248| 
        CMP AR2 < AR1, TC1 ; |248| 
        BCC $C$L49,TC1 ; |248| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |248| 
$C$DW$L$_segmentation$10$E:
$C$L52:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 257,column 15,is_stmt
        MOV #40, T0 ; |257| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_calloc")
	.dwattr $C$DW$188, DW_AT_TI_call

        CALL #_calloc ; |257| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |257| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./vision/vision.c",line 258,column 5,is_stmt
        MOV #40, T1 ; |258| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_memset")
	.dwattr $C$DW$189, DW_AT_TI_call

        CALL #_memset ; |258| 
||      MOV #-1, T0

                                        ; call occurs [#_memset] ; |258| 
	.dwpsn	file "./vision/vision.c",line 259,column 5,is_stmt
        MOV *SP(#7), T0 ; |259| 
        MOV *SP(#8), T1 ; |259| 
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#14)), XAR1
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_find_regions")
	.dwattr $C$DW$190, DW_AT_TI_call
        CALL #_find_regions ; |259| 
                                        ; call occurs [#_find_regions] ; |259| 
	.dwpsn	file "./vision/vision.c",line 261,column 5,is_stmt
        MOV *SP(#6), T0 ; |261| 
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_memcpy")
	.dwattr $C$DW$191, DW_AT_TI_call
        CALL #_memcpy ; |261| 
                                        ; call occurs [#_memcpy] ; |261| 
	.dwpsn	file "./vision/vision.c",line 262,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#14)), XAR3
        RPT #39   ; |262| 
                                            ; loop starts ; |262| 
$C$L53:    
	CALL #_coverage_log;
$C$DW$L$_segmentation$12$B:
            MOV *AR3+, *AR2+ ; |262| 
                                        ; loop ends ; |262| 
$C$DW$L$_segmentation$12$E:
$C$L54:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 265,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_free")
	.dwattr $C$DW$192, DW_AT_TI_call
        CALL #_free ; |265| 
                                        ; call occurs [#_free] ; |265| 
	.dwpsn	file "./vision/vision.c",line 266,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_free")
	.dwattr $C$DW$193, DW_AT_TI_call
        CALL #_free ; |266| 
                                        ; call occurs [#_free] ; |266| 
	.dwpsn	file "./vision/vision.c",line 267,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_free")
	.dwattr $C$DW$194, DW_AT_TI_call
        CALL #_free ; |267| 
                                        ; call occurs [#_free] ; |267| 
	.dwpsn	file "./vision/vision.c",line 268,column 5,is_stmt
	.dwpsn	file "./vision/vision.c",line 269,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$196	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$196, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L53:1:1725994106")
	.dwattr $C$DW$196, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x106)
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x106)
$C$DW$197	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$197, DW_AT_low_pc($C$DW$L$_segmentation$12$B)
	.dwattr $C$DW$197, DW_AT_high_pc($C$DW$L$_segmentation$12$E)
	.dwendtag $C$DW$196


$C$DW$198	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$198, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L49:1:1725994106")
	.dwattr $C$DW$198, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$198, DW_AT_TI_begin_line(0xf8)
	.dwattr $C$DW$198, DW_AT_TI_end_line(0xff)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_segmentation$5$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_segmentation$5$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_segmentation$6$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_segmentation$6$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_segmentation$8$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_segmentation$8$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_segmentation$9$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_segmentation$9$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_segmentation$10$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_segmentation$10$E)
	.dwendtag $C$DW$198

	.dwattr $C$DW$167, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$167, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$167, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$167

	.sect	".text"
	.global	_move_controller

$C$DW$204	.dwtag  DW_TAG_subprogram, DW_AT_name("move_controller")
	.dwattr $C$DW$204, DW_AT_low_pc(_move_controller)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_move_controller")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x10e)
	.dwattr $C$DW$204, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./vision/vision.c",line 270,column 47,is_stmt,address _move_controller

	.dwfde $C$DW$CIE, _move_controller
$C$DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_name("d_x")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_d_x")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg12]
$C$DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_name("d_y")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_d_y")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: move_controller                                              *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR2,SP,CARRY,TC1,M40,SATA,SATD,   *
;*                        RDM,FRCT,SMUL                                        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_move_controller:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("d_x")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_d_x")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("d_y")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_d_y")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("sig")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_sig")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#1) ; |270| 
        MOV T0, *SP(#0) ; |270| 
	.dwpsn	file "./vision/vision.c",line 273,column 14,is_stmt
        MOV #0, *SP(#4) ; |273| 
	.dwpsn	file "./vision/vision.c",line 275,column 5,is_stmt
        MOV *SP(#1), AR1 ; |275| 
        BCC $C$L60,AR1 == #0 ; |275| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |275| 
	.dwpsn	file "./vision/vision.c",line 276,column 13,is_stmt
        MOV #0, *SP(#2) ; |276| 
	.dwpsn	file "./vision/vision.c",line 276,column 20,is_stmt

        MOV *SP(#2), AR1 ; |276| 
||      MOV #10, AR2

        CMPU AR1 >= AR2, TC1 ; |276| 
        BCC $C$L58,TC1 ; |276| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |276| 
$C$L55:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$3$B:
	.dwpsn	file "./vision/vision.c",line 277,column 17,is_stmt
        MOV #0, *SP(#3) ; |277| 
	.dwpsn	file "./vision/vision.c",line 277,column 24,is_stmt

        MOV *SP(#3), AR1 ; |277| 
||      MOV #5, AR2

        CMPU AR1 >= AR2, TC1 ; |277| 
        BCC $C$L57,TC1 ; |277| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |277| 
$C$DW$L$_move_controller$3$E:
$C$L56:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$4$B:
	.dwpsn	file "./vision/vision.c",line 278,column 17,is_stmt
        MOV *SP(#4), T1 ; |278| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_GPIO_write")
	.dwattr $C$DW$212, DW_AT_TI_call

        CALL #_GPIO_write ; |278| 
||      MOV #1, T0

                                        ; call occurs [#_GPIO_write] ; |278| 
	.dwpsn	file "./vision/vision.c",line 277,column 31,is_stmt
        ADD #1, *SP(#3) ; |277| 
	.dwpsn	file "./vision/vision.c",line 277,column 24,is_stmt

        MOV *SP(#3), AR1 ; |277| 
||      MOV #5, AR2

        CMPU AR1 < AR2, TC1 ; |277| 
        BCC $C$L56,TC1 ; |277| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |277| 
$C$DW$L$_move_controller$4$E:
$C$L57:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$5$B:
	.dwpsn	file "./vision/vision.c",line 276,column 28,is_stmt
        ADD #1, *SP(#2) ; |276| 
	.dwpsn	file "./vision/vision.c",line 276,column 20,is_stmt

        MOV *SP(#2), AR1 ; |276| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |276| 
        BCC $C$L55,TC1 ; |276| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |276| 
$C$DW$L$_move_controller$5$E:
$C$L58:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 282,column 9,is_stmt
        MOV *SP(#4), AR1 ; |282| 
        BCC $C$L59,AR1 != #0 ; |282| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |282| 
	.dwpsn	file "./vision/vision.c",line 283,column 13,is_stmt
        MOV #1, *SP(#4) ; |283| 
	.dwpsn	file "./vision/vision.c",line 284,column 9,is_stmt
        B $C$L66  ; |284| 
                                        ; branch occurs ; |284| 
$C$L59:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 286,column 13,is_stmt
        MOV #0, *SP(#4) ; |286| 
	.dwpsn	file "./vision/vision.c",line 288,column 5,is_stmt
        B $C$L66  ; |288| 
                                        ; branch occurs ; |288| 
$C$L60:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 289,column 10,is_stmt
        MOV *SP(#0), AR1 ; |289| 
        BCC $C$L66,AR1 == #0 ; |289| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |289| 
	.dwpsn	file "./vision/vision.c",line 290,column 13,is_stmt
        MOV #0, *SP(#2) ; |290| 
	.dwpsn	file "./vision/vision.c",line 290,column 20,is_stmt

        MOV *SP(#2), AR1 ; |290| 
||      MOV #10, AR2

        CMPU AR1 >= AR2, TC1 ; |290| 
        BCC $C$L64,TC1 ; |290| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |290| 
$C$L61:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$11$B:
	.dwpsn	file "./vision/vision.c",line 291,column 17,is_stmt
        MOV #0, *SP(#3) ; |291| 
	.dwpsn	file "./vision/vision.c",line 291,column 24,is_stmt

        MOV *SP(#3), AR1 ; |291| 
||      MOV #5, AR2

        CMPU AR1 >= AR2, TC1 ; |291| 
        BCC $C$L63,TC1 ; |291| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |291| 
$C$DW$L$_move_controller$11$E:
$C$L62:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$12$B:
	.dwpsn	file "./vision/vision.c",line 292,column 17,is_stmt
        MOV *SP(#4), T1 ; |292| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_GPIO_write")
	.dwattr $C$DW$213, DW_AT_TI_call

        CALL #_GPIO_write ; |292| 
||      MOV #0, T0

                                        ; call occurs [#_GPIO_write] ; |292| 
	.dwpsn	file "./vision/vision.c",line 291,column 31,is_stmt
        ADD #1, *SP(#3) ; |291| 
	.dwpsn	file "./vision/vision.c",line 291,column 24,is_stmt

        MOV *SP(#3), AR1 ; |291| 
||      MOV #5, AR2

        CMPU AR1 < AR2, TC1 ; |291| 
        BCC $C$L62,TC1 ; |291| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |291| 
$C$DW$L$_move_controller$12$E:
$C$L63:    
	CALL #_coverage_log;
$C$DW$L$_move_controller$13$B:
	.dwpsn	file "./vision/vision.c",line 290,column 28,is_stmt
        ADD #1, *SP(#2) ; |290| 
	.dwpsn	file "./vision/vision.c",line 290,column 20,is_stmt

        MOV *SP(#2), AR1 ; |290| 
||      MOV #10, AR2

        CMPU AR1 < AR2, TC1 ; |290| 
        BCC $C$L61,TC1 ; |290| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |290| 
$C$DW$L$_move_controller$13$E:
$C$L64:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 296,column 9,is_stmt
        MOV *SP(#4), AR1 ; |296| 
        BCC $C$L65,AR1 != #0 ; |296| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |296| 
	.dwpsn	file "./vision/vision.c",line 297,column 13,is_stmt
        MOV #1, *SP(#4) ; |297| 
	.dwpsn	file "./vision/vision.c",line 298,column 9,is_stmt
        B $C$L66  ; |298| 
                                        ; branch occurs ; |298| 
$C$L65:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 300,column 13,is_stmt
        MOV #0, *SP(#4) ; |300| 
	.dwpsn	file "./vision/vision.c",line 305,column 1,is_stmt
$C$L66:    
	CALL #_coverage_log;
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$215	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$215, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L61:1:1725994106")
	.dwattr $C$DW$215, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$215, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x127)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_move_controller$11$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_move_controller$11$E)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_move_controller$13$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_move_controller$13$E)

$C$DW$218	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$218, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L62:2:1725994106")
	.dwattr $C$DW$218, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x123)
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x125)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_move_controller$12$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_move_controller$12$E)
	.dwendtag $C$DW$218

	.dwendtag $C$DW$215


$C$DW$220	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$220, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L55:1:1725994106")
	.dwattr $C$DW$220, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x114)
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x119)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_move_controller$3$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_move_controller$3$E)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_move_controller$5$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_move_controller$5$E)

$C$DW$223	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$223, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L56:2:1725994106")
	.dwattr $C$DW$223, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$223, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x117)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_move_controller$4$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_move_controller$4$E)
	.dwendtag $C$DW$223

	.dwendtag $C$DW$220

	.dwattr $C$DW$204, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x131)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text"
	.global	_process_image

$C$DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("process_image")
	.dwattr $C$DW$225, DW_AT_low_pc(_process_image)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_process_image")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$225, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$225, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./vision/vision.c",line 308,column 58,is_stmt,address _process_image

	.dwfde $C$DW$CIE, _process_image
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_sample")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg17]
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: process_image                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,TC1,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_process_image:
	CALL #_coverage_log;
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("raw_sample")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("obj_classification")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_obj_classification")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("image_cords")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_image_cords")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#2) ; |308| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 312,column 5,is_stmt
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_config_gpio")
	.dwattr $C$DW$234, DW_AT_TI_call
        CALL #_config_gpio ; |312| 
                                        ; call occurs [#_config_gpio] ; |312| 
	.dwpsn	file "./vision/vision.c",line 314,column 15,is_stmt
        MOV *SP(#2), T0 ; |314| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_calloc")
	.dwattr $C$DW$235, DW_AT_TI_call

        CALL #_calloc ; |314| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |314| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./vision/vision.c",line 315,column 15,is_stmt
        MOV *SP(#2), T0 ; |315| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_calloc")
	.dwattr $C$DW$236, DW_AT_TI_call

        CALL #_calloc ; |315| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |315| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./vision/vision.c",line 316,column 15,is_stmt
        MOV #40, T0 ; |316| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_calloc")
	.dwattr $C$DW$237, DW_AT_TI_call

        CALL #_calloc ; |316| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |316| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./vision/vision.c",line 319,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#2), T0 ; |319| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_memcpy")
	.dwattr $C$DW$238, DW_AT_TI_call
        CALL #_memcpy ; |319| 
                                        ; call occurs [#_memcpy] ; |319| 
	.dwpsn	file "./vision/vision.c",line 323,column 5,is_stmt
        MOV *SP(#2), T0 ; |323| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_pre_treatment")
	.dwattr $C$DW$239, DW_AT_TI_call
        CALL #_pre_treatment ; |323| 
                                        ; call occurs [#_pre_treatment] ; |323| 
	.dwpsn	file "./vision/vision.c",line 324,column 5,is_stmt
        MOV *SP(#2), T0 ; |324| 
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#8)), XAR2
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_segmentation")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #_segmentation ; |324| 
                                        ; call occurs [#_segmentation] ; |324| 
	.dwpsn	file "./vision/vision.c",line 325,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV dbl(*SP(#8)), XAR1
        MOV *SP(#2), T0 ; |325| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_classification")
	.dwattr $C$DW$241, DW_AT_TI_call
        CALL #_classification ; |325| 
                                        ; call occurs [#_classification] ; |325| 
        MOV T0, *SP(#3) ; |325| 
	.dwpsn	file "./vision/vision.c",line 327,column 5,is_stmt
        CMP *SP(#3) == #1, TC1 ; |327| 
        BCC $C$L67,!TC1 ; |327| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |327| 
	.dwpsn	file "./vision/vision.c",line 328,column 9,is_stmt
        MOV #1, T0
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_move_controller")
	.dwattr $C$DW$242, DW_AT_TI_call

        CALL #_move_controller ; |328| 
||      MOV #1, T1

                                        ; call occurs [#_move_controller] ; |328| 
	.dwpsn	file "./vision/vision.c",line 329,column 5,is_stmt
        B $C$L68  ; |329| 
                                        ; branch occurs ; |329| 
$C$L67:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 330,column 10,is_stmt
        CMP *SP(#3) == #2, TC1 ; |330| 
        BCC $C$L68,!TC1 ; |330| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |330| 
	.dwpsn	file "./vision/vision.c",line 331,column 9,is_stmt
        MOV #0, T0
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_move_controller")
	.dwattr $C$DW$243, DW_AT_TI_call

        CALL #_move_controller ; |331| 
||      MOV #1, T1

                                        ; call occurs [#_move_controller] ; |331| 
$C$L68:    
	CALL #_coverage_log;
	.dwpsn	file "./vision/vision.c",line 335,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_free")
	.dwattr $C$DW$244, DW_AT_TI_call
        CALL #_free ; |335| 
                                        ; call occurs [#_free] ; |335| 
	.dwpsn	file "./vision/vision.c",line 336,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_free")
	.dwattr $C$DW$245, DW_AT_TI_call
        CALL #_free ; |336| 
                                        ; call occurs [#_free] ; |336| 
	.dwpsn	file "./vision/vision.c",line 337,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_free")
	.dwattr $C$DW$246, DW_AT_TI_call
        CALL #_free ; |337| 
                                        ; call occurs [#_free] ; |337| 
	.dwpsn	file "./vision/vision.c",line 339,column 5,is_stmt
        MOV #0, T0
	.dwpsn	file "./vision/vision.c",line 341,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$225, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x155)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_free
	.global	_memset
	.global	_IMG_conv_3x3
	.global	_IMG_threshold
	.global	_GPIO_open
	.global	_GPIO_write
	.global	_GPIO_configBit
	.global	__remi
	.global	__divi
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$248	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN0"), DW_AT_const_value(0x00)
$C$DW$249	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN1"), DW_AT_const_value(0x01)
$C$DW$250	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN2"), DW_AT_const_value(0x02)
$C$DW$251	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN3"), DW_AT_const_value(0x03)
$C$DW$252	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN4"), DW_AT_const_value(0x04)
$C$DW$253	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN5"), DW_AT_const_value(0x05)
$C$DW$254	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN6"), DW_AT_const_value(0x06)
$C$DW$255	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN7"), DW_AT_const_value(0x07)
$C$DW$256	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN8"), DW_AT_const_value(0x08)
$C$DW$257	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN9"), DW_AT_const_value(0x09)
$C$DW$258	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN10"), DW_AT_const_value(0x0a)
$C$DW$259	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN11"), DW_AT_const_value(0x0b)
$C$DW$260	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN12"), DW_AT_const_value(0x0c)
$C$DW$261	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN13"), DW_AT_const_value(0x0d)
$C$DW$262	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN14"), DW_AT_const_value(0x0e)
$C$DW$263	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN15"), DW_AT_const_value(0x0f)
$C$DW$264	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN16"), DW_AT_const_value(0x10)
$C$DW$265	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN17"), DW_AT_const_value(0x11)
$C$DW$266	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN18"), DW_AT_const_value(0x12)
$C$DW$267	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN19"), DW_AT_const_value(0x13)
$C$DW$268	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN20"), DW_AT_const_value(0x14)
$C$DW$269	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN21"), DW_AT_const_value(0x15)
$C$DW$270	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN22"), DW_AT_const_value(0x16)
$C$DW$271	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN23"), DW_AT_const_value(0x17)
$C$DW$272	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN24"), DW_AT_const_value(0x18)
$C$DW$273	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN25"), DW_AT_const_value(0x19)
$C$DW$274	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN26"), DW_AT_const_value(0x1a)
$C$DW$275	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN27"), DW_AT_const_value(0x1b)
$C$DW$276	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN28"), DW_AT_const_value(0x1c)
$C$DW$277	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN29"), DW_AT_const_value(0x1d)
$C$DW$278	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN30"), DW_AT_const_value(0x1e)
$C$DW$279	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN31"), DW_AT_const_value(0x1f)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinNum")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$280	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_INPUT"), DW_AT_const_value(0x00)
$C$DW$281	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_OUTPUT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioDirection")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_RISING_EDGE"), DW_AT_const_value(0x00)
$C$DW$283	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_FALLING_EDGE"), DW_AT_const_value(0x01)
$C$DW$284	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_CLEAR_EDGE"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioTriggerType")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x12)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$285, DW_AT_name("RSVD0")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$286, DW_AT_name("IODIR1")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_IODIR1")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$287, DW_AT_name("IODIR2")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_IODIR2")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$288, DW_AT_name("IOINDATA1")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_IOINDATA1")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$289, DW_AT_name("IOINDATA2")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_IOINDATA2")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$290, DW_AT_name("IOOUTDATA1")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_IOOUTDATA1")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$291, DW_AT_name("IOOUTDATA2")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_IOOUTDATA2")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$292, DW_AT_name("IOINTEDG1")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_IOINTEDG1")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$293, DW_AT_name("IOINTEDG2")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_IOINTEDG2")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$294, DW_AT_name("IOINTEN1")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_IOINTEN1")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$295, DW_AT_name("IOINTEN2")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_IOINTEN2")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$296, DW_AT_name("IOINTFLG1")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_IOINTFLG1")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$297, DW_AT_name("IOINTFLG2")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_IOINTFLG2")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$298	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$23)
$C$DW$299	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$298)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$299)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$300, DW_AT_name("baseAddr")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$301, DW_AT_name("numPins")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_numPins")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioObj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x17)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("GPIO_Handle")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x03)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$302, DW_AT_name("pinNum")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$303, DW_AT_name("direction")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_direction")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$304, DW_AT_name("trigger")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinConfig")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$305	.dwtag  DW_TAG_TI_far_type
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$305)
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
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_Status")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x17)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$306	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$306)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$307	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$307, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$21

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$65	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_address_class(0x17)

$C$DW$T$81	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x09)
$C$DW$308	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$308, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$81

$C$DW$309	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$64)
$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$309)

$C$DW$T$84	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x09)
$C$DW$310	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$310, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$84

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
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

$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_reg0]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg1]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg2]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg3]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_reg4]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg5]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg6]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg7]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg8]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg9]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg10]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg11]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_reg12]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg13]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg14]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg15]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg16]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg17]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg18]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg19]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg20]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg21]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg22]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg23]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg24]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg25]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg26]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg27]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_reg28]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_reg29]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_reg30]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg31]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x20]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x21]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x22]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x23]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x24]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x25]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x26]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x27]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x28]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x29]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x30]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x31]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x32]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x33]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x34]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x35]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x36]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x37]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x38]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x39]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x40]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x41]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x42]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x43]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x44]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x45]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x46]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x47]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x48]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x49]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_regx 0x50]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_regx 0x51]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x52]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x53]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x54]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x55]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x56]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x57]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x58]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x59]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

