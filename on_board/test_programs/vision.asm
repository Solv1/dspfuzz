;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Sat Oct 12 13:47:15 2024                                 *
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
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	$C$IR_1,16
	.field  	_SHARPEN_KERNEL+0,24
	.field  	0,8
	.field	0,16			; _SHARPEN_KERNEL[0] @ 0
	.field	-1,16			; _SHARPEN_KERNEL[1] @ 16
	.field	0,16			; _SHARPEN_KERNEL[2] @ 32
	.field	-1,16			; _SHARPEN_KERNEL[3] @ 48
	.field	5,16			; _SHARPEN_KERNEL[4] @ 64
	.field	-1,16			; _SHARPEN_KERNEL[5] @ 80
	.field	0,16			; _SHARPEN_KERNEL[6] @ 96
	.field	-1,16			; _SHARPEN_KERNEL[7] @ 112
	.field	0,16			; _SHARPEN_KERNEL[8] @ 128
$C$IR_1:	.set	9

	.sect	".cinit"
	.align	1
	.field  	$C$IR_2,16
	.field  	_LAPLACIAN_KERNEL+0,24
	.field  	0,8
	.field	-1,16			; _LAPLACIAN_KERNEL[0] @ 0
	.field	-1,16			; _LAPLACIAN_KERNEL[1] @ 16
	.field	-1,16			; _LAPLACIAN_KERNEL[2] @ 32
	.field	-1,16			; _LAPLACIAN_KERNEL[3] @ 48
	.field	8,16			; _LAPLACIAN_KERNEL[4] @ 64
	.field	-1,16			; _LAPLACIAN_KERNEL[5] @ 80
	.field	-1,16			; _LAPLACIAN_KERNEL[6] @ 96
	.field	-1,16			; _LAPLACIAN_KERNEL[7] @ 112
	.field	-1,16			; _LAPLACIAN_KERNEL[8] @ 128
$C$IR_2:	.set	9

	.sect	".cinit"
	.align	1
	.field  	1,16
	.field  	_use_imglib+0,24
	.field  	0,8
	.field	0,16			; _use_imglib @ 0


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


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$8


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$10


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$48)
	.dwendtag $C$DW$12


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("IMG_conv_3x3")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_IMG_conv_3x3")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$58)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$58)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$58)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$16


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_open")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_GPIO_open")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$37)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_close")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_GPIO_close")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$25


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_write")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_GPIO_write")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$38)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$30)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$27


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIO_reset")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_GPIO_reset")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$31


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

	.bss	_SHARPEN_KERNEL,9,0,0
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("SHARPEN_KERNEL")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_SHARPEN_KERNEL")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _SHARPEN_KERNEL]
	.bss	_LAPLACIAN_KERNEL,9,0,0
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("LAPLACIAN_KERNEL")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_LAPLACIAN_KERNEL")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _LAPLACIAN_KERNEL]
	.global	_hGpio
	.bss	_hGpio,2,0,2
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("hGpio")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_hGpio")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _hGpio]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$38, DW_AT_external
	.global	_config
	.bss	_config,3,0,0
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _config]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$39, DW_AT_external
	.global	_GpioObj
	.bss	_GpioObj,2,0,0
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("GpioObj")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_GpioObj")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr _GpioObj]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$40, DW_AT_external
	.global	_status
	.bss	_status,1,0,0
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr _status]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$41, DW_AT_external
	.global	_use_imglib
	.bss	_use_imglib,1,0,0
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("use_imglib")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_use_imglib")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _use_imglib]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$42, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/40944VdMGRj 
	.sect	".text"
	.global	_process_image

$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("process_image")
	.dwattr $C$DW$43, DW_AT_low_pc(_process_image)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_process_image")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$43, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./vision/vision.c",line 65,column 58,is_stmt,address _process_image

	.dwfde $C$DW$CIE, _process_image
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_sample")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg17]
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: process_image                                                *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,SP,TC1,M40,SATA,    *
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 14 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (12 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_process_image:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("raw_sample")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("obj_classification")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_obj_classification")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("retVal")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_retVal")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("image_cords")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_image_cords")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 10]
        MOV T0, *SP(#2) ; |65| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 71,column 5,is_stmt
        MOV #99, AR2 ; |71| 
        MOV *SP(#2), AR1 ; |71| 
        CMP AR1 <= AR2, TC1 ; |71| 
        BCC $C$L1,TC1 ; |71| 
                                        ; branchcc occurs ; |71| 
	.dwpsn	file "./vision/vision.c",line 72,column 9,is_stmt
        MOV #1, T0
        B $C$L11  ; |72| 
                                        ; branch occurs ; |72| 
$C$L1:    
	.dwpsn	file "./vision/vision.c",line 74,column 10,is_stmt
        BCC $C$L2,AR1 > #0 ; |74| 
                                        ; branchcc occurs ; |74| 
	.dwpsn	file "./vision/vision.c",line 75,column 9,is_stmt
        MOV #1, T0
        B $C$L11  ; |75| 
                                        ; branch occurs ; |75| 
$C$L2:    
	.dwpsn	file "./vision/vision.c",line 78,column 15,is_stmt
        MOV *SP(#2), T0 ; |78| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_calloc")
	.dwattr $C$DW$53, DW_AT_TI_call

        CALL #_calloc ; |78| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |78| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./vision/vision.c",line 79,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR1
        MOV *SP(#2), T0 ; |79| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_memcpy")
	.dwattr $C$DW$54, DW_AT_TI_call
        CALL #_memcpy ; |79| 
                                        ; call occurs [#_memcpy] ; |79| 
	.dwpsn	file "./vision/vision.c",line 81,column 15,is_stmt
        MOV *SP(#2), T0 ; |81| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_calloc")
	.dwattr $C$DW$55, DW_AT_TI_call

        CALL #_calloc ; |81| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |81| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./vision/vision.c",line 82,column 15,is_stmt
        MOV #100, T0 ; |82| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_calloc")
	.dwattr $C$DW$56, DW_AT_TI_call

        CALL #_calloc ; |82| 
||      MOV #1, T1

                                        ; call occurs [#_calloc] ; |82| 
        MOV XAR0, dbl(*SP(#10))
	.dwpsn	file "./vision/vision.c",line 85,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV *SP(#2), T0 ; |85| 
        MOV dbl(*SP(#8)), XAR1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_pre_treatment")
	.dwattr $C$DW$57, DW_AT_TI_call
        CALL #_pre_treatment ; |85| 
                                        ; call occurs [#_pre_treatment] ; |85| 
        MOV T0, *SP(#4) ; |85| 
	.dwpsn	file "./vision/vision.c",line 86,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L3,AR1 == #0 ; |86| 
                                        ; branchcc occurs ; |86| 
	.dwpsn	file "./vision/vision.c",line 87,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_free")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_free ; |87| 
                                        ; call occurs [#_free] ; |87| 
	.dwpsn	file "./vision/vision.c",line 88,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_free")
	.dwattr $C$DW$59, DW_AT_TI_call
        CALL #_free ; |88| 
                                        ; call occurs [#_free] ; |88| 
	.dwpsn	file "./vision/vision.c",line 89,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_free")
	.dwattr $C$DW$60, DW_AT_TI_call
        CALL #_free ; |89| 
                                        ; call occurs [#_free] ; |89| 
	.dwpsn	file "./vision/vision.c",line 90,column 9,is_stmt
        MOV #1, T0
        B $C$L11  ; |90| 
                                        ; branch occurs ; |90| 
$C$L3:    
	.dwpsn	file "./vision/vision.c",line 92,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV dbl(*SP(#8)), XAR1
        MOV *SP(#2), T0 ; |92| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_memcpy")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_memcpy ; |92| 
                                        ; call occurs [#_memcpy] ; |92| 
	.dwpsn	file "./vision/vision.c",line 93,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV dbl(*SP(#10)), XAR2
        MOV dbl(*SP(#8)), XAR1
        MOV *SP(#2), T0 ; |93| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_segmentation")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_segmentation ; |93| 
                                        ; call occurs [#_segmentation] ; |93| 
        MOV T0, *SP(#4) ; |93| 
	.dwpsn	file "./vision/vision.c",line 94,column 5,is_stmt
        MOV T0, AR1
        BCC $C$L4,AR1 == #0 ; |94| 
                                        ; branchcc occurs ; |94| 
	.dwpsn	file "./vision/vision.c",line 96,column 9,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_free")
	.dwattr $C$DW$63, DW_AT_TI_call
        CALL #_free ; |96| 
                                        ; call occurs [#_free] ; |96| 
	.dwpsn	file "./vision/vision.c",line 97,column 9,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
        CALL #_free ; |97| 
                                        ; call occurs [#_free] ; |97| 
	.dwpsn	file "./vision/vision.c",line 98,column 9,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_free")
	.dwattr $C$DW$65, DW_AT_TI_call
        CALL #_free ; |98| 
                                        ; call occurs [#_free] ; |98| 
	.dwpsn	file "./vision/vision.c",line 99,column 9,is_stmt
        MOV #1, T0
        B $C$L11  ; |99| 
                                        ; branch occurs ; |99| 
$C$L4:    
	.dwpsn	file "./vision/vision.c",line 101,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV dbl(*SP(#8)), XAR1
        MOV *SP(#2), T0 ; |101| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_memcpy")
	.dwattr $C$DW$66, DW_AT_TI_call
        CALL #_memcpy ; |101| 
                                        ; call occurs [#_memcpy] ; |101| 
	.dwpsn	file "./vision/vision.c",line 102,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
        MOV dbl(*SP(#10)), XAR1
        MOV *SP(#2), T0 ; |102| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_classification")
	.dwattr $C$DW$67, DW_AT_TI_call
        CALL #_classification ; |102| 
                                        ; call occurs [#_classification] ; |102| 
        MOV T0, *SP(#3) ; |102| 
	.dwpsn	file "./vision/vision.c",line 103,column 5,is_stmt
        CMP *SP(#3) == #3, TC1 ; |103| 
        BCC $C$L5,!TC1 ; |103| 
                                        ; branchcc occurs ; |103| 
	.dwpsn	file "./vision/vision.c",line 104,column 9,is_stmt
        MOV #1, T0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_move_controller")
	.dwattr $C$DW$68, DW_AT_TI_call

        CALL #_move_controller ; |104| 
||      MOV #0, T1

                                        ; call occurs [#_move_controller] ; |104| 
	.dwpsn	file "./vision/vision.c",line 105,column 5,is_stmt
        B $C$L10  ; |105| 
                                        ; branch occurs ; |105| 
$C$L5:    
	.dwpsn	file "./vision/vision.c",line 106,column 10,is_stmt
        CMP *SP(#3) == #4, TC1 ; |106| 
        BCC $C$L6,!TC1 ; |106| 
                                        ; branchcc occurs ; |106| 
	.dwpsn	file "./vision/vision.c",line 107,column 9,is_stmt
        MOV #1, T0
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_move_controller")
	.dwattr $C$DW$69, DW_AT_TI_call

        CALL #_move_controller ; |107| 
||      MOV #1, T1

                                        ; call occurs [#_move_controller] ; |107| 
	.dwpsn	file "./vision/vision.c",line 108,column 5,is_stmt
        B $C$L10  ; |108| 
                                        ; branch occurs ; |108| 
$C$L6:    
	.dwpsn	file "./vision/vision.c",line 109,column 10,is_stmt
        CMP *SP(#3) == #5, TC1 ; |109| 
        BCC $C$L7,!TC1 ; |109| 
                                        ; branchcc occurs ; |109| 
	.dwpsn	file "./vision/vision.c",line 110,column 9,is_stmt
        MOV #2, T0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_move_controller")
	.dwattr $C$DW$70, DW_AT_TI_call

        CALL #_move_controller ; |110| 
||      MOV #0, T1

                                        ; call occurs [#_move_controller] ; |110| 
	.dwpsn	file "./vision/vision.c",line 111,column 5,is_stmt
        B $C$L10  ; |111| 
                                        ; branch occurs ; |111| 
$C$L7:    
	.dwpsn	file "./vision/vision.c",line 112,column 10,is_stmt
        CMP *SP(#3) == #6, TC1 ; |112| 
        BCC $C$L8,!TC1 ; |112| 
                                        ; branchcc occurs ; |112| 
	.dwpsn	file "./vision/vision.c",line 113,column 9,is_stmt
        MOV #0, T0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_move_controller")
	.dwattr $C$DW$71, DW_AT_TI_call

        CALL #_move_controller ; |113| 
||      MOV #2, T1

                                        ; call occurs [#_move_controller] ; |113| 
	.dwpsn	file "./vision/vision.c",line 114,column 5,is_stmt
        B $C$L10  ; |114| 
                                        ; branch occurs ; |114| 
$C$L8:    
	.dwpsn	file "./vision/vision.c",line 115,column 10,is_stmt
        CMP *SP(#3) == #8, TC1 ; |115| 
        BCC $C$L9,!TC1 ; |115| 
                                        ; branchcc occurs ; |115| 
	.dwpsn	file "./vision/vision.c",line 116,column 9,is_stmt
        MOV #2, T0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_move_controller")
	.dwattr $C$DW$72, DW_AT_TI_call

        CALL #_move_controller ; |116| 
||      MOV #2, T1

                                        ; call occurs [#_move_controller] ; |116| 
	.dwpsn	file "./vision/vision.c",line 117,column 5,is_stmt
        B $C$L10  ; |117| 
                                        ; branch occurs ; |117| 
$C$L9:    
	.dwpsn	file "./vision/vision.c",line 118,column 10,is_stmt
        CMP *SP(#3) == #10, TC1 ; |118| 
        BCC $C$L10,!TC1 ; |118| 
                                        ; branchcc occurs ; |118| 
	.dwpsn	file "./vision/vision.c",line 119,column 9,is_stmt
        MOV #0, T0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_move_controller")
	.dwattr $C$DW$73, DW_AT_TI_call

        CALL #_move_controller ; |119| 
||      MOV #1, T1

                                        ; call occurs [#_move_controller] ; |119| 
$C$L10:    
	.dwpsn	file "./vision/vision.c",line 124,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_free")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_free ; |124| 
                                        ; call occurs [#_free] ; |124| 
	.dwpsn	file "./vision/vision.c",line 125,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_free")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #_free ; |125| 
                                        ; call occurs [#_free] ; |125| 
	.dwpsn	file "./vision/vision.c",line 126,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_free")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_free ; |126| 
                                        ; call occurs [#_free] ; |126| 
	.dwpsn	file "./vision/vision.c",line 127,column 5,is_stmt
        MOV #0, T0
$C$L11:    
	.dwpsn	file "./vision/vision.c",line 129,column 1,is_stmt
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$43, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x81)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.global	_config_gpio

$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("config_gpio")
	.dwattr $C$DW$78, DW_AT_low_pc(_config_gpio)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_config_gpio")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x83)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./vision/vision.c",line 131,column 19,is_stmt,address _config_gpio

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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "./vision/vision.c",line 134,column 5,is_stmt
        AMOV #_GpioObj, XAR0 ; |134| 
        AMOV #_status, XAR1 ; |134| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_GPIO_open")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #_GPIO_open ; |134| 
                                        ; call occurs [#_GPIO_open] ; |134| 
        MOV XAR0, dbl(*(#_hGpio))
	.dwpsn	file "./vision/vision.c",line 137,column 5,is_stmt
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_GPIO_reset")
	.dwattr $C$DW$80, DW_AT_TI_call
        CALL #_GPIO_reset ; |137| 
                                        ; call occurs [#_GPIO_reset] ; |137| 
	.dwpsn	file "./vision/vision.c",line 139,column 5,is_stmt
        MOV #0, *(#_config) ; |139| 
	.dwpsn	file "./vision/vision.c",line 140,column 5,is_stmt
        MOV #1, *(#(_config+1)) ; |140| 
	.dwpsn	file "./vision/vision.c",line 141,column 5,is_stmt
        MOV #1, *(#(_config+2)) ; |141| 
	.dwpsn	file "./vision/vision.c",line 142,column 5,is_stmt
        AMOV #_config, XAR1 ; |142| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_GPIO_configBit")
	.dwattr $C$DW$81, DW_AT_TI_call
        CALL #_GPIO_configBit ; |142| 
                                        ; call occurs [#_GPIO_configBit] ; |142| 
	.dwpsn	file "./vision/vision.c",line 144,column 5,is_stmt
        MOV #1, *(#_config) ; |144| 
	.dwpsn	file "./vision/vision.c",line 145,column 5,is_stmt
        MOV #1, *(#(_config+1)) ; |145| 
	.dwpsn	file "./vision/vision.c",line 146,column 5,is_stmt
        MOV #1, *(#(_config+2)) ; |146| 
	.dwpsn	file "./vision/vision.c",line 147,column 5,is_stmt
        AMOV #_config, XAR1 ; |147| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_GPIO_configBit")
	.dwattr $C$DW$82, DW_AT_TI_call
        CALL #_GPIO_configBit ; |147| 
                                        ; call occurs [#_GPIO_configBit] ; |147| 
	.dwpsn	file "./vision/vision.c",line 149,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$78, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78

	.sect	".text"
	.global	_unconfig_gpio

$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("unconfig_gpio")
	.dwattr $C$DW$84, DW_AT_low_pc(_unconfig_gpio)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_unconfig_gpio")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$84, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "./vision/vision.c",line 150,column 21,is_stmt,address _unconfig_gpio

	.dwfde $C$DW$CIE, _unconfig_gpio
;*******************************************************************************
;* FUNCTION NAME: unconfig_gpio                                                *
;*                                                                             *
;*   Function Uses Regs : AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,SMUL              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_unconfig_gpio:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "./vision/vision.c",line 151,column 5,is_stmt
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_GPIO_close")
	.dwattr $C$DW$85, DW_AT_TI_call
        CALL #_GPIO_close ; |151| 
                                        ; call occurs [#_GPIO_close] ; |151| 
	.dwpsn	file "./vision/vision.c",line 152,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$84, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text"
	.global	_convolve3x3

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("convolve3x3")
	.dwattr $C$DW$87, DW_AT_low_pc(_convolve3x3)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_convolve3x3")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0x99)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./vision/vision.c",line 153,column 99,is_stmt,address _convolve3x3

	.dwfde $C$DW$CIE, _convolve3x3
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg17]
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg19]
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("kernel")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_kernel")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg21]
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colm")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("row")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: convolve3x3                                                  *
;*                                                                             *
;*   Function Uses Regs : AC0,AC1,AC1,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,    *
;*                        XAR3,SP,CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL        *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 16 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (14 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_convolve3x3:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("input")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("kernel")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_kernel")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("y")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_y")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("kx")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_kx")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("ky")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_ky")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("pixel")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_pixel")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("sum")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_sum")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_bregx 0x24 13]
        MOV T1, *SP(#7) ; |153| 
        MOV T0, *SP(#6) ; |153| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 159,column 10,is_stmt
        MOV #1, *SP(#9) ; |159| 
	.dwpsn	file "./vision/vision.c",line 159,column 17,is_stmt
        MOV *SP(#7), AR1 ; |159| 

        SUB #1, AR1 ; |159| 
||      MOV *SP(#9), AR2 ; |159| 

        CMP AR2 >= AR1, TC1 ; |159| 
        BCC $C$L19,TC1 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$L12:    
$C$DW$L$_convolve3x3$2$B:
	.dwpsn	file "./vision/vision.c",line 160,column 14,is_stmt
        MOV #1, *SP(#8) ; |160| 
	.dwpsn	file "./vision/vision.c",line 160,column 21,is_stmt
        MOV *SP(#6), AR1 ; |160| 

        SUB #1, AR1 ; |160| 
||      MOV *SP(#8), AR2 ; |160| 

        CMP AR2 >= AR1, TC1 ; |160| 
        BCC $C$L18,TC1 ; |160| 
                                        ; branchcc occurs ; |160| 
$C$DW$L$_convolve3x3$2$E:
$C$L13:    
$C$DW$L$_convolve3x3$3$B:
	.dwpsn	file "./vision/vision.c",line 161,column 13,is_stmt
        MOV #0, *SP(#13) ; |161| 
	.dwpsn	file "./vision/vision.c",line 164,column 18,is_stmt
        MOV #0, *SP(#11) ; |164| 
	.dwpsn	file "./vision/vision.c",line 164,column 26,is_stmt

        MOV *SP(#11), AR1 ; |164| 
||      MOV #3, AR2

        CMP AR1 >= AR2, TC1 ; |164| 
        BCC $C$L17,TC1 ; |164| 
                                        ; branchcc occurs ; |164| 
$C$DW$L$_convolve3x3$3$E:
$C$L14:    
$C$DW$L$_convolve3x3$4$B:
	.dwpsn	file "./vision/vision.c",line 165,column 22,is_stmt
        MOV #0, *SP(#10) ; |165| 
	.dwpsn	file "./vision/vision.c",line 165,column 30,is_stmt
        MOV *SP(#10), AR1 ; |165| 
        CMP AR1 >= AR2, TC1 ; |165| 
        BCC $C$L16,TC1 ; |165| 
                                        ; branchcc occurs ; |165| 
$C$DW$L$_convolve3x3$4$E:
$C$L15:    
$C$DW$L$_convolve3x3$5$B:
	.dwpsn	file "./vision/vision.c",line 167,column 21,is_stmt
        MOV *SP(#11), AR1 ; |167| 
        ADD *SP(#9), AR1, T1 ; |167| 
        MOV dbl(*SP(#0)), XAR3

        SUB #1, T1 ; |167| 
||      MOV *SP(#8), AC0 ; |167| 

        MACM *SP(#6), T1, AC0, AC0 ; |167| 
        ADD *SP(#10), AC0, T0 ; |167| 
        SUB #1, T0 ; |167| 
        MOV *AR3(T0), AR1 ; |167| 
        MOV AR1, *SP(#12) ; |167| 
	.dwpsn	file "./vision/vision.c",line 168,column 21,is_stmt
        MOV dbl(*SP(#4)), XAR3
        MOV *SP(#10), AC0 ; |168| 
        MACMK *SP(#11), #3, AC0, AC0 ; |168| 
        MOV AC0, T0 ; |168| 
        MOV *SP(#13), AC0 ; |168| 
        MOV *AR3(T0), T1 ; |168| 
        MACM *SP(#12), T1, AC0, AC0 ; |168| 
        MOV AC0, *SP(#13) ; |168| 
	.dwpsn	file "./vision/vision.c",line 165,column 38,is_stmt
        ADD #1, *SP(#10) ; |165| 
	.dwpsn	file "./vision/vision.c",line 165,column 30,is_stmt
        MOV *SP(#10), AR1 ; |165| 
        CMP AR1 < AR2, TC1 ; |165| 
        BCC $C$L15,TC1 ; |165| 
                                        ; branchcc occurs ; |165| 
$C$DW$L$_convolve3x3$5$E:
$C$L16:    
$C$DW$L$_convolve3x3$6$B:
	.dwpsn	file "./vision/vision.c",line 164,column 34,is_stmt
        ADD #1, *SP(#11) ; |164| 
	.dwpsn	file "./vision/vision.c",line 164,column 26,is_stmt
        MOV *SP(#11), AR1 ; |164| 
        CMP AR1 < AR2, TC1 ; |164| 
        BCC $C$L14,TC1 ; |164| 
                                        ; branchcc occurs ; |164| 
$C$DW$L$_convolve3x3$6$E:
$C$L17:    
$C$DW$L$_convolve3x3$7$B:
	.dwpsn	file "./vision/vision.c",line 173,column 13,is_stmt
        MOV *SP(#6), T1 ; |173| 
        MOV *SP(#8), AC0 ; |173| 
        MOV dbl(*SP(#2)), XAR3
        MACM *SP(#9), T1, AC0, AC0 ; |173| 
        MOV AC0, T0 ; |173| 
        MOV *SP(#13), AC1 ; |173| 
        SFTS AC1, #-15, AC1 ; |173| 
        MOV AC1, *AR3(T0) ; |173| 
	.dwpsn	file "./vision/vision.c",line 160,column 35,is_stmt
        ADD #1, *SP(#8) ; |160| 
	.dwpsn	file "./vision/vision.c",line 160,column 21,is_stmt
        MOV *SP(#6), AR1 ; |160| 

        SUB #1, AR1 ; |160| 
||      MOV *SP(#8), AR2 ; |160| 

        CMP AR2 < AR1, TC1 ; |160| 
        BCC $C$L13,TC1 ; |160| 
                                        ; branchcc occurs ; |160| 
$C$DW$L$_convolve3x3$7$E:
$C$L18:    
$C$DW$L$_convolve3x3$8$B:
	.dwpsn	file "./vision/vision.c",line 159,column 30,is_stmt
        ADD #1, *SP(#9) ; |159| 
	.dwpsn	file "./vision/vision.c",line 159,column 17,is_stmt
        MOV *SP(#7), AR1 ; |159| 

        SUB #1, AR1 ; |159| 
||      MOV *SP(#9), AR2 ; |159| 

        CMP AR2 < AR1, TC1 ; |159| 
        BCC $C$L12,TC1 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$DW$L$_convolve3x3$8$E:
	.dwpsn	file "./vision/vision.c",line 176,column 1,is_stmt
$C$L19:    
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$105	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$105, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L12:1:1728755235")
	.dwattr $C$DW$105, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xaf)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_convolve3x3$2$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_convolve3x3$2$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_convolve3x3$8$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_convolve3x3$8$E)

$C$DW$108	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$108, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L13:2:1728755235")
	.dwattr $C$DW$108, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0xa0)
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xae)
$C$DW$109	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$109, DW_AT_low_pc($C$DW$L$_convolve3x3$3$B)
	.dwattr $C$DW$109, DW_AT_high_pc($C$DW$L$_convolve3x3$3$E)
$C$DW$110	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$110, DW_AT_low_pc($C$DW$L$_convolve3x3$7$B)
	.dwattr $C$DW$110, DW_AT_high_pc($C$DW$L$_convolve3x3$7$E)

$C$DW$111	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$111, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L14:3:1728755235")
	.dwattr $C$DW$111, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0xa4)
	.dwattr $C$DW$111, DW_AT_TI_end_line(0xaa)
$C$DW$112	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$112, DW_AT_low_pc($C$DW$L$_convolve3x3$4$B)
	.dwattr $C$DW$112, DW_AT_high_pc($C$DW$L$_convolve3x3$4$E)
$C$DW$113	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$113, DW_AT_low_pc($C$DW$L$_convolve3x3$6$B)
	.dwattr $C$DW$113, DW_AT_high_pc($C$DW$L$_convolve3x3$6$E)

$C$DW$114	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$114, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L15:4:1728755235")
	.dwattr $C$DW$114, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0xa5)
	.dwattr $C$DW$114, DW_AT_TI_end_line(0xa9)
$C$DW$115	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$115, DW_AT_low_pc($C$DW$L$_convolve3x3$5$B)
	.dwattr $C$DW$115, DW_AT_high_pc($C$DW$L$_convolve3x3$5$E)
	.dwendtag $C$DW$114

	.dwendtag $C$DW$111

	.dwendtag $C$DW$108

	.dwendtag $C$DW$105

	.dwattr $C$DW$87, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.global	_pre_treatment

$C$DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("pre_treatment")
	.dwattr $C$DW$116, DW_AT_low_pc(_pre_treatment)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_pre_treatment")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$116, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0xb3)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "./vision/vision.c",line 179,column 71,is_stmt,address _pre_treatment

	.dwfde $C$DW$CIE, _pre_treatment
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg17]
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg19]
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: pre_treatment                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 24 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (22 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_pre_treatment:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-23, SP
	.dwcfi	cfa_offset, 24
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("noise_average")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_noise_average")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("mean_kernel")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_mean_kernel")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("input_data")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_input_data")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_bregx 0x24 18]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("output_data")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_output_data")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_bregx 0x24 20]
        MOV T0, *SP(#4) ; |179| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 182,column 13,is_stmt
        MOV #0, *SP(#8) ; |182| 
	.dwpsn	file "./vision/vision.c",line 183,column 13,is_stmt

        AMAR *SP(#9), XAR0
||      MOV #9, T1

$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_memset")
	.dwattr $C$DW$130, DW_AT_TI_call

        CALL #_memset ; |183| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |183| 
	.dwpsn	file "./vision/vision.c",line 184,column 20,is_stmt
        MOV *SP(#4), T0 ; |184| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_malloc")
	.dwattr $C$DW$131, DW_AT_TI_call
        CALL #_malloc ; |184| 
                                        ; call occurs [#_malloc] ; |184| 
        MOV XAR0, dbl(*SP(#18))
	.dwpsn	file "./vision/vision.c",line 185,column 20,is_stmt
        MOV *SP(#4), T0 ; |185| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_malloc")
	.dwattr $C$DW$132, DW_AT_TI_call
        CALL #_malloc ; |185| 
                                        ; call occurs [#_malloc] ; |185| 
        MOV XAR0, dbl(*SP(#20))
	.dwpsn	file "./vision/vision.c",line 187,column 5,is_stmt
        MOV *SP(#4), T0 ; |187| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("__remi")
	.dwattr $C$DW$133, DW_AT_TI_call

        CALL #__remi ; |187| 
||      MOV #10, T1

                                        ; call occurs [#__remi] ; |187| 
        BCC $C$L20,T0 != #0 ; |187| 
                                        ; branchcc occurs ; |187| 
	.dwpsn	file "./vision/vision.c",line 189,column 9,is_stmt
        MOV *SP(#4), T0 ; |189| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("__divi")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALL #__divi ; |189| 
||      MOV #10, T1

                                        ; call occurs [#__divi] ; |189| 
        MOV T0, *SP(#5) ; |189| 
	.dwpsn	file "./vision/vision.c",line 190,column 9,is_stmt
        MOV #10, *SP(#6) ; |190| 
	.dwpsn	file "./vision/vision.c",line 191,column 9,is_stmt
        AMOV #_LAPLACIAN_KERNEL, XAR2 ; |191| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#5), T0 ; |191| 
        MOV *SP(#6), T1 ; |191| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_convolve3x3")
	.dwattr $C$DW$135, DW_AT_TI_call
        CALL #_convolve3x3 ; |191| 
                                        ; call occurs [#_convolve3x3] ; |191| 
	.dwpsn	file "./vision/vision.c",line 192,column 5,is_stmt
        B $C$L22  ; |192| 
                                        ; branch occurs ; |192| 
$C$L20:    
	.dwpsn	file "./vision/vision.c",line 193,column 10,is_stmt
        MOV #100, AR2 ; |193| 
        MOV *SP(#4), AR1 ; |193| 
        CMP AR1 <= AR2, TC1 ; |193| 
        BCC $C$L21,TC1 ; |193| 
                                        ; branchcc occurs ; |193| 
        MOV AR1, AC0

        BFXTR #0x8000, AC0, AR1 ; |193| 
||      MOV #1, AR2

        NOT AR2, AR2 ; |193| 
        ADD AC0, AR1 ; |193| 
        AND AR1, AR2 ; |193| 
        MOV AC0, AR1 ; |193| 
        SUB AR2, AR1 ; |193| 
        BCC $C$L21,AR1 != #0 ; |193| 
                                        ; branchcc occurs ; |193| 
	.dwpsn	file "./vision/vision.c",line 195,column 9,is_stmt
        MOV #1, *(#_use_imglib) ; |195| 
	.dwpsn	file "./vision/vision.c",line 197,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
        MOV dbl(*SP(#0)), XAR1
        MOV *SP(#4), T0 ; |197| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_memcpy")
	.dwattr $C$DW$136, DW_AT_TI_call
        CALL #_memcpy ; |197| 
                                        ; call occurs [#_memcpy] ; |197| 
	.dwpsn	file "./vision/vision.c",line 199,column 9,is_stmt
        MOV *SP(#4), AC0 ; |199| 
        BFXTR #0x8000, AC0, AR1 ; |199| 
        ADD AC0, AR1 ; |199| 
        SFTS AR1, #-1 ; |199| 
        MOV AR1, *SP(#5) ; |199| 
	.dwpsn	file "./vision/vision.c",line 200,column 9,is_stmt
        AMOV #_LAPLACIAN_KERNEL, XAR2 ; |200| 
        MOV dbl(*SP(#18)), XAR0
        MOV *SP(#5), T0 ; |200| 
        MOV dbl(*SP(#20)), XAR1
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$137, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |200| 
||      MOV #-2, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |200| 
	.dwpsn	file "./vision/vision.c",line 202,column 5,is_stmt
        B $C$L22  ; |202| 
                                        ; branch occurs ; |202| 
$C$L21:    
	.dwpsn	file "./vision/vision.c",line 204,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_free")
	.dwattr $C$DW$138, DW_AT_TI_call
        CALL #_free ; |204| 
                                        ; call occurs [#_free] ; |204| 
	.dwpsn	file "./vision/vision.c",line 205,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_free")
	.dwattr $C$DW$139, DW_AT_TI_call
        CALL #_free ; |205| 
                                        ; call occurs [#_free] ; |205| 
	.dwpsn	file "./vision/vision.c",line 206,column 9,is_stmt
        MOV #1, T0
        B $C$L32  ; |206| 
                                        ; branch occurs ; |206| 
$C$L22:    
	.dwpsn	file "./vision/vision.c",line 210,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#4), T0 ; |210| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_memcpy")
	.dwattr $C$DW$140, DW_AT_TI_call
        CALL #_memcpy ; |210| 
                                        ; call occurs [#_memcpy] ; |210| 
	.dwpsn	file "./vision/vision.c",line 211,column 10,is_stmt
        MOV #0, *SP(#7) ; |211| 
	.dwpsn	file "./vision/vision.c",line 211,column 17,is_stmt
        MOV *SP(#5), AR1 ; |211| 

        SUB #1, AR1 ; |211| 
||      MOV *SP(#7), AR2 ; |211| 

        CMP AR2 >= AR1, TC1 ; |211| 
        BCC $C$L24,TC1 ; |211| 
                                        ; branchcc occurs ; |211| 
$C$L23:    
$C$DW$L$_pre_treatment$8$B:
	.dwpsn	file "./vision/vision.c",line 212,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#8), AR1 ; |212| 
        ADD *AR3(T0), AR1, AR1 ; |212| 
        MOV AR1, *SP(#8) ; |212| 
	.dwpsn	file "./vision/vision.c",line 211,column 30,is_stmt
        ADD #1, *SP(#7) ; |211| 
	.dwpsn	file "./vision/vision.c",line 211,column 17,is_stmt
        MOV *SP(#5), AR1 ; |211| 

        SUB #1, AR1 ; |211| 
||      MOV *SP(#7), AR2 ; |211| 

        CMP AR2 < AR1, TC1 ; |211| 
        BCC $C$L23,TC1 ; |211| 
                                        ; branchcc occurs ; |211| 
$C$DW$L$_pre_treatment$8$E:
$C$L24:    
	.dwpsn	file "./vision/vision.c",line 214,column 5,is_stmt
        MOV *SP(#8), T0 ; |214| 
        MOV *SP(#5), T1 ; |214| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("__divi")
	.dwattr $C$DW$141, DW_AT_TI_call
        CALL #__divi ; |214| 
                                        ; call occurs [#__divi] ; |214| 
        MOV T0, *SP(#8) ; |214| 
	.dwpsn	file "./vision/vision.c",line 215,column 5,is_stmt

        MOV T0, AR1 ; |215| 
||      MOV #1000, AR2 ; |215| 

        CMP AR1 <= AR2, TC1 ; |215| 
        BCC $C$L27,TC1 ; |215| 
                                        ; branchcc occurs ; |215| 
        MOV *(#_use_imglib), AR1 ; |215| 
        BCC $C$L27,AR1 != #0 ; |215| 
                                        ; branchcc occurs ; |215| 
	.dwpsn	file "./vision/vision.c",line 216,column 13,is_stmt
        MOV #0, *SP(#7) ; |216| 
	.dwpsn	file "./vision/vision.c",line 216,column 20,is_stmt

        MOV *SP(#7), AR1 ; |216| 
||      MOV #9, AR2

        CMP AR1 >= AR2, TC1 ; |216| 
        BCC $C$L26,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$L25:    
$C$DW$L$_pre_treatment$12$B:
	.dwpsn	file "./vision/vision.c",line 217,column 13,is_stmt
        MOV AR1, T0
        AMAR *SP(#9), XAR3
        MOV *SP(#8), AR1 ; |217| 
        MOV AR1, *AR3(T0) ; |217| 
	.dwpsn	file "./vision/vision.c",line 216,column 37,is_stmt
        ADD #1, *SP(#7) ; |216| 
	.dwpsn	file "./vision/vision.c",line 216,column 20,is_stmt
        MOV *SP(#7), AR1 ; |216| 
        CMP AR1 < AR2, TC1 ; |216| 
        BCC $C$L25,TC1 ; |216| 
                                        ; branchcc occurs ; |216| 
$C$DW$L$_pre_treatment$12$E:
$C$L26:    
	.dwpsn	file "./vision/vision.c",line 220,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        AMAR *SP(#9), XAR2
        MOV *SP(#5), T0 ; |220| 
        MOV *SP(#6), T1 ; |220| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_convolve3x3")
	.dwattr $C$DW$142, DW_AT_TI_call
        CALL #_convolve3x3 ; |220| 
                                        ; call occurs [#_convolve3x3] ; |220| 
	.dwpsn	file "./vision/vision.c",line 221,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#4), T0 ; |221| 
        MOV dbl(*SP(#2)), XAR1
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_memcpy")
	.dwattr $C$DW$143, DW_AT_TI_call
        CALL #_memcpy ; |221| 
                                        ; call occurs [#_memcpy] ; |221| 
	.dwpsn	file "./vision/vision.c",line 222,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV *SP(#5), T0 ; |222| 
        AMOV #_SHARPEN_KERNEL, XAR2 ; |222| 
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#6), T1 ; |222| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_convolve3x3")
	.dwattr $C$DW$144, DW_AT_TI_call
        CALL #_convolve3x3 ; |222| 
                                        ; call occurs [#_convolve3x3] ; |222| 
	.dwpsn	file "./vision/vision.c",line 224,column 5,is_stmt
        B $C$L29  ; |224| 
                                        ; branch occurs ; |224| 
$C$L27:    
	.dwpsn	file "./vision/vision.c",line 225,column 10,is_stmt
        MOV T0, AR1
        CMP AR1 <= AR2, TC1 ; |225| 
        BCC $C$L28,TC1 ; |225| 
                                        ; branchcc occurs ; |225| 
        CMP *(#_use_imglib) == #1, TC1 ; |225| 
        BCC $C$L28,!TC1 ; |225| 
                                        ; branchcc occurs ; |225| 
	.dwpsn	file "./vision/vision.c",line 226,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
        MOV dbl(*SP(#18)), XAR1
        AMAR *SP(#9), XAR2
        MOV *SP(#5), T0 ; |226| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$145, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |226| 
||      MOV #2, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |226| 
	.dwpsn	file "./vision/vision.c",line 227,column 9,is_stmt
        AMOV #_SHARPEN_KERNEL, XAR2 ; |227| 
        MOV *SP(#5), T0 ; |227| 
        MOV dbl(*SP(#18)), XAR0
        MOV dbl(*SP(#20)), XAR1
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$146, DW_AT_TI_call

        CALL #_IMG_conv_3x3 ; |227| 
||      MOV #-2, T1

                                        ; call occurs [#_IMG_conv_3x3] ; |227| 
	.dwpsn	file "./vision/vision.c",line 229,column 5,is_stmt
        B $C$L29  ; |229| 
                                        ; branch occurs ; |229| 
$C$L28:    
	.dwpsn	file "./vision/vision.c",line 231,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        MOV *SP(#5), T0 ; |231| 
        MOV *SP(#6), T1 ; |231| 
        AMOV #_SHARPEN_KERNEL, XAR2 ; |231| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_convolve3x3")
	.dwattr $C$DW$147, DW_AT_TI_call
        CALL #_convolve3x3 ; |231| 
                                        ; call occurs [#_convolve3x3] ; |231| 
$C$L29:    
	.dwpsn	file "./vision/vision.c",line 235,column 5,is_stmt
        MOV dbl(*SP(#20)), XAR3
        MOV XAR3, AC0
        BCC $C$L30,AC0 == #0 ; |235| 
                                        ; branchcc occurs ; |235| 
	.dwpsn	file "./vision/vision.c",line 236,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#20)), XAR1
        MOV *SP(#4), T0 ; |236| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_memcpy")
	.dwattr $C$DW$148, DW_AT_TI_call
        CALL #_memcpy ; |236| 
                                        ; call occurs [#_memcpy] ; |236| 
	.dwpsn	file "./vision/vision.c",line 237,column 9,is_stmt
        MOV dbl(*SP(#20)), XAR0
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_free")
	.dwattr $C$DW$149, DW_AT_TI_call
        CALL #_free ; |237| 
                                        ; call occurs [#_free] ; |237| 
$C$L30:    
	.dwpsn	file "./vision/vision.c",line 239,column 5,is_stmt
        MOV dbl(*SP(#18)), XAR3
        MOV XAR3, AC0
        BCC $C$L31,AC0 == #0 ; |239| 
                                        ; branchcc occurs ; |239| 
	.dwpsn	file "./vision/vision.c",line 240,column 9,is_stmt
        MOV dbl(*SP(#18)), XAR0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_free")
	.dwattr $C$DW$150, DW_AT_TI_call
        CALL #_free ; |240| 
                                        ; call occurs [#_free] ; |240| 
$C$L31:    
	.dwpsn	file "./vision/vision.c",line 243,column 5,is_stmt
        MOV #0, T0
$C$L32:    
	.dwpsn	file "./vision/vision.c",line 244,column 1,is_stmt
        AADD #23, SP
	.dwcfi	cfa_offset, 1
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$152	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$152, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L25:1:1728755235")
	.dwattr $C$DW$152, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$152, DW_AT_TI_end_line(0xda)
$C$DW$153	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$153, DW_AT_low_pc($C$DW$L$_pre_treatment$12$B)
	.dwattr $C$DW$153, DW_AT_high_pc($C$DW$L$_pre_treatment$12$E)
	.dwendtag $C$DW$152


$C$DW$154	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$154, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L23:1:1728755235")
	.dwattr $C$DW$154, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0xd3)
	.dwattr $C$DW$154, DW_AT_TI_end_line(0xd5)
$C$DW$155	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$155, DW_AT_low_pc($C$DW$L$_pre_treatment$8$B)
	.dwattr $C$DW$155, DW_AT_high_pc($C$DW$L$_pre_treatment$8$E)
	.dwendtag $C$DW$154

	.dwattr $C$DW$116, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0xf4)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text"
	.global	_find_regions

$C$DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("find_regions")
	.dwattr $C$DW$156, DW_AT_low_pc(_find_regions)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_find_regions")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0xf6)
	.dwattr $C$DW$156, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./vision/vision.c",line 246,column 82,is_stmt,address _find_regions

	.dwfde $C$DW$CIE, _find_regions
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg17]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start_cords")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg19]
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colm")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg12]
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("row")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg13]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-15, SP
	.dwcfi	cfa_offset, 16
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("start_cords")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$169	.dwtag  DW_TAG_variable, DW_AT_name("isFinshed")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_isFinshed")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$170	.dwtag  DW_TAG_variable, DW_AT_name("index_start")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_index_start")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$171	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T1, *SP(#5) ; |246| 
        MOV T0, *SP(#4) ; |246| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 249,column 13,is_stmt
        MOV #0, *SP(#6) ; |249| 
	.dwpsn	file "./vision/vision.c",line 250,column 13,is_stmt
        MOV #0, *SP(#7) ; |250| 
	.dwpsn	file "./vision/vision.c",line 251,column 13,is_stmt
        MOV #0, *SP(#8) ; |251| 
	.dwpsn	file "./vision/vision.c",line 252,column 13,is_stmt
        MOV #0, *SP(#9) ; |252| 
	.dwpsn	file "./vision/vision.c",line 253,column 10,is_stmt
        MOV #0, *SP(#10) ; |253| 
	.dwpsn	file "./vision/vision.c",line 255,column 13,is_stmt
        MOV #0, *SP(#11) ; |255| 
	.dwpsn	file "./vision/vision.c",line 256,column 13,is_stmt
        MOV #0, *SP(#12) ; |256| 
	.dwpsn	file "./vision/vision.c",line 258,column 10,is_stmt
        MOV #0, *SP(#6) ; |258| 
	.dwpsn	file "./vision/vision.c",line 258,column 17,is_stmt
        MOV *SP(#6), AR2 ; |258| 
        MOV *SP(#4), AR1 ; |258| 
        CMP AR2 >= AR1, TC1 ; |258| 
        BCC $C$L49,TC1 ; |258| 
                                        ; branchcc occurs ; |258| 
$C$L33:    
$C$DW$L$_find_regions$2$B:
	.dwpsn	file "./vision/vision.c",line 259,column 9,is_stmt
        MOV AR2, T0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("__remi")
	.dwattr $C$DW$172, DW_AT_TI_call

        CALL #__remi ; |259| 
||      MOV AR1, T1

                                        ; call occurs [#__remi] ; |259| 
        BCC $C$L34,T0 != #0 ; |259| 
                                        ; branchcc occurs ; |259| 
$C$DW$L$_find_regions$2$E:
$C$DW$L$_find_regions$3$B:
	.dwpsn	file "./vision/vision.c",line 260,column 13,is_stmt
        ADD #1, *SP(#9) ; |260| 
$C$DW$L$_find_regions$3$E:
$C$L34:    
$C$DW$L$_find_regions$4$B:
	.dwpsn	file "./vision/vision.c",line 263,column 9,is_stmt
        MOV *SP(#6), T0 ; |263| 
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(T0) == #1, TC1 ; |263| 
        BCC $C$L45,!TC1 ; |263| 
                                        ; branchcc occurs ; |263| 
$C$DW$L$_find_regions$4$E:
$C$DW$L$_find_regions$5$B:
	.dwpsn	file "./vision/vision.c",line 264,column 13,is_stmt
        MOV T0, AR1
        MOV AR1, *SP(#11) ; |264| 
	.dwpsn	file "./vision/vision.c",line 265,column 17,is_stmt
        MOV *SP(#6), AR1 ; |265| 
        ADD #1, AR1 ; |265| 
        MOV AR1, *SP(#7) ; |265| 
	.dwpsn	file "./vision/vision.c",line 265,column 28,is_stmt
        MOV *SP(#7), AR2 ; |265| 
        MOV *SP(#5), AR1 ; |265| 
        CMP AR2 >= AR1, TC1 ; |265| 
        BCC $C$L38,TC1 ; |265| 
                                        ; branchcc occurs ; |265| 
$C$DW$L$_find_regions$5$E:
$C$L35:    
$C$DW$L$_find_regions$6$B:
	.dwpsn	file "./vision/vision.c",line 266,column 17,is_stmt
        MOV *SP(#4), AR1 ; |266| 
        CMP AR2 != AR1, TC1 ; |266| 
        BCC $C$L36,TC1 ; |266| 
                                        ; branchcc occurs ; |266| 
$C$DW$L$_find_regions$6$E:
$C$DW$L$_find_regions$7$B:
	.dwpsn	file "./vision/vision.c",line 267,column 21,is_stmt
        MOV #1, *SP(#10) ; |267| 
	.dwpsn	file "./vision/vision.c",line 268,column 21,is_stmt
        B $C$L38  ; |268| 
                                        ; branch occurs ; |268| 
$C$DW$L$_find_regions$7$E:
$C$L36:    
$C$DW$L$_find_regions$8$B:
	.dwpsn	file "./vision/vision.c",line 270,column 17,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |270| 
        BCC $C$L37,AR1 != #0 ; |270| 
                                        ; branchcc occurs ; |270| 
$C$DW$L$_find_regions$8$E:
$C$DW$L$_find_regions$9$B:
	.dwpsn	file "./vision/vision.c",line 271,column 21,is_stmt
        MOV #1, *SP(#10) ; |271| 
	.dwpsn	file "./vision/vision.c",line 272,column 21,is_stmt
        B $C$L38  ; |272| 
                                        ; branch occurs ; |272| 
$C$DW$L$_find_regions$9$E:
$C$L37:    
$C$DW$L$_find_regions$10$B:
	.dwpsn	file "./vision/vision.c",line 265,column 37,is_stmt
        ADD #1, *SP(#7) ; |265| 
	.dwpsn	file "./vision/vision.c",line 265,column 28,is_stmt
        MOV *SP(#5), AR1 ; |265| 
        MOV *SP(#7), AR2 ; |265| 
        CMP AR2 < AR1, TC1 ; |265| 
        BCC $C$L35,TC1 ; |265| 
                                        ; branchcc occurs ; |265| 
$C$DW$L$_find_regions$10$E:
$C$L38:    
$C$DW$L$_find_regions$11$B:
	.dwpsn	file "./vision/vision.c",line 275,column 13,is_stmt
        MOV *SP(#10), AR1 ; |275| 
        BCC $C$L39,AR1 == #0 ; |275| 
                                        ; branchcc occurs ; |275| 
$C$DW$L$_find_regions$11$E:
$C$DW$L$_find_regions$12$B:
	.dwpsn	file "./vision/vision.c",line 276,column 17,is_stmt
        ADD #2, *SP(#6) ; |276| 
	.dwpsn	file "./vision/vision.c",line 277,column 17,is_stmt
        B $C$L48  ; |277| 
                                        ; branch occurs ; |277| 
$C$DW$L$_find_regions$12$E:
$C$L39:    
$C$DW$L$_find_regions$13$B:
	.dwpsn	file "./vision/vision.c",line 279,column 18,is_stmt
        MOV *SP(#9), AR1 ; |279| 
        ADD #1, AR1 ; |279| 
        MOV AR1, *SP(#7) ; |279| 
	.dwpsn	file "./vision/vision.c",line 279,column 29,is_stmt
        MOV *SP(#7), AR2 ; |279| 
        MOV *SP(#4), AR1 ; |279| 
        CMP AR2 >= AR1, TC1 ; |279| 
        BCC $C$L46,TC1 ; |279| 
                                        ; branchcc occurs ; |279| 
$C$DW$L$_find_regions$13$E:
$C$L40:    
$C$DW$L$_find_regions$14$B:

$C$DW$173	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$174	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_bregx 0x24 13]
	.dwpsn	file "./vision/vision.c",line 280,column 25,is_stmt

        MOV *SP(#6), AC0 ; |280| 
||      MOV AR1, T1

        MACM *SP(#9), T1, AC0, AC0 ; |280| 
        MOV AC0, *SP(#13) ; |280| 
	.dwpsn	file "./vision/vision.c",line 281,column 21,is_stmt
        MOV AC0, AR1
        MOV AR1, *SP(#8) ; |281| 
	.dwpsn	file "./vision/vision.c",line 281,column 32,is_stmt

        MOV *SP(#4), AR1 ; |281| 
||      MOV AC0, AR2 ; |281| 

        CMP AR2 >= AR1, TC1 ; |281| 
        BCC $C$L44,TC1 ; |281| 
                                        ; branchcc occurs ; |281| 
$C$DW$L$_find_regions$14$E:
$C$L41:    
$C$DW$L$_find_regions$15$B:
	.dwpsn	file "./vision/vision.c",line 282,column 21,is_stmt
        MOV AR2, T0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("__remi")
	.dwattr $C$DW$175, DW_AT_TI_call

        CALL #__remi ; |282| 
||      MOV AR1, T1

                                        ; call occurs [#__remi] ; |282| 
        BCC $C$L42,T0 != #0 ; |282| 
                                        ; branchcc occurs ; |282| 
$C$DW$L$_find_regions$15$E:
$C$DW$L$_find_regions$16$B:
	.dwpsn	file "./vision/vision.c",line 283,column 25,is_stmt
        MOV #1, *SP(#10) ; |283| 
$C$DW$L$_find_regions$16$E:
$C$L42:    
$C$DW$L$_find_regions$17$B:
	.dwpsn	file "./vision/vision.c",line 285,column 21,is_stmt
        MOV *SP(#8), T0 ; |285| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |285| 
        BCC $C$L43,AR1 != #0 ; |285| 
                                        ; branchcc occurs ; |285| 
$C$DW$L$_find_regions$17$E:
$C$DW$L$_find_regions$18$B:
	.dwpsn	file "./vision/vision.c",line 286,column 25,is_stmt
        MOV #1, *SP(#10) ; |286| 
$C$DW$L$_find_regions$18$E:
$C$L43:    
$C$DW$L$_find_regions$19$B:
	.dwpsn	file "./vision/vision.c",line 288,column 21,is_stmt
        MOV *SP(#10), AR1 ; |288| 
        BCC $C$L44,AR1 != #0 ; |288| 
                                        ; branchcc occurs ; |288| 
$C$DW$L$_find_regions$19$E:
$C$DW$L$_find_regions$20$B:
	.dwpsn	file "./vision/vision.c",line 289,column 25,is_stmt
	.dwpsn	file "./vision/vision.c",line 281,column 42,is_stmt
        ADD #1, *SP(#8) ; |281| 
	.dwpsn	file "./vision/vision.c",line 281,column 32,is_stmt
        MOV *SP(#4), AR1 ; |281| 
        MOV *SP(#8), AR2 ; |281| 
        CMP AR2 < AR1, TC1 ; |281| 
        BCC $C$L41,TC1 ; |281| 
                                        ; branchcc occurs ; |281| 
$C$DW$L$_find_regions$20$E:
$C$L44:    
$C$DW$L$_find_regions$21$B:
	.dwpsn	file "./vision/vision.c",line 292,column 17,is_stmt
        MOV *SP(#10), AR1 ; |292| 
        BCC $C$L46,AR1 != #0 ; |292| 
                                        ; branchcc occurs ; |292| 
$C$DW$L$_find_regions$21$E:
$C$DW$L$_find_regions$22$B:
	.dwpsn	file "./vision/vision.c",line 293,column 25,is_stmt
	.dwendtag $C$DW$173

	.dwpsn	file "./vision/vision.c",line 279,column 39,is_stmt
        ADD #1, *SP(#7) ; |279| 
	.dwpsn	file "./vision/vision.c",line 279,column 29,is_stmt
        MOV *SP(#4), AR1 ; |279| 
        MOV *SP(#7), AR2 ; |279| 
        CMP AR2 < AR1, TC1 ; |279| 
        BCC $C$L40,TC1 ; |279| 
                                        ; branchcc occurs ; |279| 
$C$DW$L$_find_regions$22$E:
$C$DW$L$_find_regions$23$B:
	.dwpsn	file "./vision/vision.c",line 296,column 9,is_stmt
        B $C$L46  ; |296| 
                                        ; branch occurs ; |296| 
$C$DW$L$_find_regions$23$E:
$C$L45:    
$C$DW$L$_find_regions$24$B:
	.dwpsn	file "./vision/vision.c",line 298,column 13,is_stmt
        MOV #1, *SP(#10) ; |298| 
$C$DW$L$_find_regions$24$E:
$C$L46:    
$C$DW$L$_find_regions$25$B:
	.dwpsn	file "./vision/vision.c",line 301,column 9,is_stmt
        MOV *SP(#10), AR1 ; |301| 
        BCC $C$L47,AR1 == #0 ; |301| 
                                        ; branchcc occurs ; |301| 
$C$DW$L$_find_regions$25$E:
$C$DW$L$_find_regions$26$B:
	.dwpsn	file "./vision/vision.c",line 302,column 13,is_stmt
        MOV #0, *SP(#11) ; |302| 
	.dwpsn	file "./vision/vision.c",line 303,column 13,is_stmt
        B $C$L48  ; |303| 
                                        ; branch occurs ; |303| 
$C$DW$L$_find_regions$26$E:
$C$L47:    
$C$DW$L$_find_regions$27$B:
	.dwpsn	file "./vision/vision.c",line 305,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), T0 ; |305| 
        MOV *SP(#11), AR1 ; |305| 
        MOV AR1, *AR3(T0) ; |305| 
	.dwpsn	file "./vision/vision.c",line 306,column 9,is_stmt
        ADD #1, *SP(#12) ; |306| 
$C$DW$L$_find_regions$27$E:
$C$L48:    
$C$DW$L$_find_regions$28$B:
	.dwpsn	file "./vision/vision.c",line 258,column 28,is_stmt
        ADD #1, *SP(#6) ; |258| 
	.dwpsn	file "./vision/vision.c",line 258,column 17,is_stmt
        MOV *SP(#4), AR1 ; |258| 
        MOV *SP(#6), AR2 ; |258| 
        CMP AR2 < AR1, TC1 ; |258| 
        BCC $C$L33,TC1 ; |258| 
                                        ; branchcc occurs ; |258| 
$C$DW$L$_find_regions$28$E:
	.dwpsn	file "./vision/vision.c",line 309,column 1,is_stmt
$C$L49:    
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$177	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$177, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L33:1:1728755235")
	.dwattr $C$DW$177, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$177, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$177, DW_AT_TI_end_line(0x133)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$_find_regions$2$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$_find_regions$2$E)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$_find_regions$13$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$_find_regions$13$E)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_find_regions$23$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_find_regions$23$E)
$C$DW$181	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$181, DW_AT_low_pc($C$DW$L$_find_regions$24$B)
	.dwattr $C$DW$181, DW_AT_high_pc($C$DW$L$_find_regions$24$E)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$_find_regions$25$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$_find_regions$25$E)
$C$DW$183	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$183, DW_AT_low_pc($C$DW$L$_find_regions$3$B)
	.dwattr $C$DW$183, DW_AT_high_pc($C$DW$L$_find_regions$3$E)
$C$DW$184	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$184, DW_AT_low_pc($C$DW$L$_find_regions$4$B)
	.dwattr $C$DW$184, DW_AT_high_pc($C$DW$L$_find_regions$4$E)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_find_regions$5$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_find_regions$5$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$_find_regions$7$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$_find_regions$7$E)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$_find_regions$9$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$_find_regions$9$E)
$C$DW$188	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$188, DW_AT_low_pc($C$DW$L$_find_regions$11$B)
	.dwattr $C$DW$188, DW_AT_high_pc($C$DW$L$_find_regions$11$E)
$C$DW$189	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$189, DW_AT_low_pc($C$DW$L$_find_regions$12$B)
	.dwattr $C$DW$189, DW_AT_high_pc($C$DW$L$_find_regions$12$E)
$C$DW$190	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$190, DW_AT_low_pc($C$DW$L$_find_regions$26$B)
	.dwattr $C$DW$190, DW_AT_high_pc($C$DW$L$_find_regions$26$E)
$C$DW$191	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$191, DW_AT_low_pc($C$DW$L$_find_regions$27$B)
	.dwattr $C$DW$191, DW_AT_high_pc($C$DW$L$_find_regions$27$E)
$C$DW$192	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$192, DW_AT_low_pc($C$DW$L$_find_regions$28$B)
	.dwattr $C$DW$192, DW_AT_high_pc($C$DW$L$_find_regions$28$E)

$C$DW$193	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$193, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L40:2:1728755235")
	.dwattr $C$DW$193, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$193, DW_AT_TI_begin_line(0x117)
	.dwattr $C$DW$193, DW_AT_TI_end_line(0x127)
$C$DW$194	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$194, DW_AT_low_pc($C$DW$L$_find_regions$14$B)
	.dwattr $C$DW$194, DW_AT_high_pc($C$DW$L$_find_regions$14$E)
$C$DW$195	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$195, DW_AT_low_pc($C$DW$L$_find_regions$21$B)
	.dwattr $C$DW$195, DW_AT_high_pc($C$DW$L$_find_regions$21$E)
$C$DW$196	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$196, DW_AT_low_pc($C$DW$L$_find_regions$22$B)
	.dwattr $C$DW$196, DW_AT_high_pc($C$DW$L$_find_regions$22$E)

$C$DW$197	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$197, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L41:3:1728755235")
	.dwattr $C$DW$197, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$197, DW_AT_TI_begin_line(0x119)
	.dwattr $C$DW$197, DW_AT_TI_end_line(0x123)
$C$DW$198	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$198, DW_AT_low_pc($C$DW$L$_find_regions$15$B)
	.dwattr $C$DW$198, DW_AT_high_pc($C$DW$L$_find_regions$15$E)
$C$DW$199	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$199, DW_AT_low_pc($C$DW$L$_find_regions$16$B)
	.dwattr $C$DW$199, DW_AT_high_pc($C$DW$L$_find_regions$16$E)
$C$DW$200	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$200, DW_AT_low_pc($C$DW$L$_find_regions$17$B)
	.dwattr $C$DW$200, DW_AT_high_pc($C$DW$L$_find_regions$17$E)
$C$DW$201	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$201, DW_AT_low_pc($C$DW$L$_find_regions$18$B)
	.dwattr $C$DW$201, DW_AT_high_pc($C$DW$L$_find_regions$18$E)
$C$DW$202	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$202, DW_AT_low_pc($C$DW$L$_find_regions$19$B)
	.dwattr $C$DW$202, DW_AT_high_pc($C$DW$L$_find_regions$19$E)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_find_regions$20$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_find_regions$20$E)
	.dwendtag $C$DW$197

	.dwendtag $C$DW$193


$C$DW$204	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$204, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L35:2:1728755235")
	.dwattr $C$DW$204, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x112)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_find_regions$6$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_find_regions$6$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_find_regions$8$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_find_regions$8$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_find_regions$10$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_find_regions$10$E)
	.dwendtag $C$DW$204

	.dwendtag $C$DW$177

	.dwattr $C$DW$156, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$156

	.sect	".text"
	.global	_classification

$C$DW$208	.dwtag  DW_TAG_subprogram, DW_AT_name("classification")
	.dwattr $C$DW$208, DW_AT_low_pc(_classification)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_classification")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$208, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$208, DW_AT_TI_begin_line(0x136)
	.dwattr $C$DW$208, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "./vision/vision.c",line 310,column 81,is_stmt,address _classification

	.dwfde $C$DW$CIE, _classification
$C$DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_threshold")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg17]
$C$DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg19]
$C$DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: classification                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,CARRY,   *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_classification:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-9, SP
	.dwcfi	cfa_offset, 10
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("image_threshold")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$217	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_bregx 0x24 7]
        MOV T0, *SP(#4) ; |310| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 315,column 5,is_stmt
        MOV *SP(#4), T0 ; |315| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("__remi")
	.dwattr $C$DW$218, DW_AT_TI_call

        CALL #__remi ; |315| 
||      MOV #3, T1

                                        ; call occurs [#__remi] ; |315| 
        BCC $C$L50,T0 != #0 ; |315| 
                                        ; branchcc occurs ; |315| 
	.dwpsn	file "./vision/vision.c",line 316,column 9,is_stmt
        MOV *SP(#4), T0 ; |316| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__divi")
	.dwattr $C$DW$219, DW_AT_TI_call

        CALL #__divi ; |316| 
||      MOV #3, T1

                                        ; call occurs [#__divi] ; |316| 
        MOV T0, *SP(#7) ; |316| 
	.dwpsn	file "./vision/vision.c",line 317,column 5,is_stmt
        B $C$L51  ; |317| 
                                        ; branch occurs ; |317| 
$C$L50:    
	.dwpsn	file "./vision/vision.c",line 319,column 9,is_stmt
        MOV *SP(#4), AC0 ; |319| 
        BFXTR #0x8000, AC0, AR1 ; |319| 
        ADD AC0, AR1 ; |319| 
        SFTS AR1, #-1 ; |319| 
        MOV AR1, *SP(#7) ; |319| 
$C$L51:    
	.dwpsn	file "./vision/vision.c",line 321,column 5,is_stmt
        MOV #0, *SP(#5) ; |321| 
	.dwpsn	file "./vision/vision.c",line 322,column 9,is_stmt
        MOV #0, *SP(#5) ; |322| 
	.dwpsn	file "./vision/vision.c",line 322,column 16,is_stmt
        MOV *SP(#4), AR1 ; |322| 
        MOV *SP(#5), AR2 ; |322| 
        CMP AR2 >= AR1, TC1 ; |322| 
        BCC $C$L54,TC1 ; |322| 
                                        ; branchcc occurs ; |322| 
$C$L52:    
$C$DW$L$_classification$5$B:
	.dwpsn	file "./vision/vision.c",line 323,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV #200, AR2 ; |323| 
        MOV *AR3(T0), AR1 ; |323| 
        CMP AR1 <= AR2, TC1 ; |323| 
        BCC $C$L53,TC1 ; |323| 
                                        ; branchcc occurs ; |323| 
$C$DW$L$_classification$5$E:
$C$DW$L$_classification$6$B:
	.dwpsn	file "./vision/vision.c",line 324,column 13,is_stmt
        ADD #1, *SP(#6) ; |324| 
$C$DW$L$_classification$6$E:
$C$L53:    
$C$DW$L$_classification$7$B:
	.dwpsn	file "./vision/vision.c",line 322,column 26,is_stmt
        ADD #1, *SP(#5) ; |322| 
	.dwpsn	file "./vision/vision.c",line 322,column 16,is_stmt
        MOV *SP(#4), AR1 ; |322| 
        MOV *SP(#5), AR2 ; |322| 
        CMP AR2 < AR1, TC1 ; |322| 
        BCC $C$L52,TC1 ; |322| 
                                        ; branchcc occurs ; |322| 
$C$DW$L$_classification$7$E:
$C$L54:    
	.dwpsn	file "./vision/vision.c",line 328,column 5,is_stmt
        CMP *SP(#6) == #3, TC1 ; |328| 
        BCC $C$L55,!TC1 ; |328| 
                                        ; branchcc occurs ; |328| 
	.dwpsn	file "./vision/vision.c",line 329,column 9,is_stmt
        MOV #3, T0
        B $C$L61  ; |329| 
                                        ; branch occurs ; |329| 
$C$L55:    
	.dwpsn	file "./vision/vision.c",line 331,column 10,is_stmt
        CMP *SP(#6) == #4, TC1 ; |331| 
        BCC $C$L56,!TC1 ; |331| 
                                        ; branchcc occurs ; |331| 
	.dwpsn	file "./vision/vision.c",line 332,column 9,is_stmt
        MOV #4, T0
        B $C$L61  ; |332| 
                                        ; branch occurs ; |332| 
$C$L56:    
	.dwpsn	file "./vision/vision.c",line 334,column 10,is_stmt
        CMP *SP(#6) == #5, TC1 ; |334| 
        BCC $C$L57,!TC1 ; |334| 
                                        ; branchcc occurs ; |334| 
	.dwpsn	file "./vision/vision.c",line 335,column 9,is_stmt
        MOV #5, T0
        B $C$L61  ; |335| 
                                        ; branch occurs ; |335| 
$C$L57:    
	.dwpsn	file "./vision/vision.c",line 337,column 10,is_stmt
        CMP *SP(#6) == #6, TC1 ; |337| 
        BCC $C$L58,!TC1 ; |337| 
                                        ; branchcc occurs ; |337| 
	.dwpsn	file "./vision/vision.c",line 338,column 9,is_stmt
        MOV #6, T0
        B $C$L61  ; |338| 
                                        ; branch occurs ; |338| 
$C$L58:    
	.dwpsn	file "./vision/vision.c",line 340,column 10,is_stmt
        CMP *SP(#6) == #8, TC1 ; |340| 
        BCC $C$L59,!TC1 ; |340| 
                                        ; branchcc occurs ; |340| 
	.dwpsn	file "./vision/vision.c",line 341,column 9,is_stmt
        MOV #8, T0
        B $C$L61  ; |341| 
                                        ; branch occurs ; |341| 
$C$L59:    
	.dwpsn	file "./vision/vision.c",line 343,column 10,is_stmt

        MOV *SP(#6), AR1 ; |343| 
||      MOV #3, AR2

        CMP AR1 <= AR2, TC1 ; |343| 
        BCC $C$L60,TC1 ; |343| 
                                        ; branchcc occurs ; |343| 
	.dwpsn	file "./vision/vision.c",line 344,column 9,is_stmt
        MOV #10, T0
        B $C$L61  ; |344| 
                                        ; branch occurs ; |344| 
$C$L60:    
	.dwpsn	file "./vision/vision.c",line 348,column 9,is_stmt
        MOV #0, T0
$C$L61:    
	.dwpsn	file "./vision/vision.c",line 350,column 1,is_stmt
        AADD #9, SP
	.dwcfi	cfa_offset, 1
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$221	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$221, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L52:1:1728755235")
	.dwattr $C$DW$221, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$221, DW_AT_TI_begin_line(0x142)
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x146)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_classification$5$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_classification$5$E)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_classification$6$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_classification$6$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_classification$7$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_classification$7$E)
	.dwendtag $C$DW$221

	.dwattr $C$DW$208, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x15e)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text"
	.global	_segmentation

$C$DW$225	.dwtag  DW_TAG_subprogram, DW_AT_name("segmentation")
	.dwattr $C$DW$225, DW_AT_low_pc(_segmentation)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_segmentation")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$225, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$225, DW_AT_TI_begin_line(0x160)
	.dwattr $C$DW$225, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./vision/vision.c",line 352,column 94,is_stmt,address _segmentation

	.dwfde $C$DW$CIE, _segmentation
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg17]
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg19]
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg21]
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: segmentation                                                 *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_segmentation:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_bregx 0x24 9]
        MOV T0, *SP(#6) ; |352| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision/vision.c",line 361,column 5,is_stmt
        MOV #99, AR2 ; |361| 
        MOV *SP(#6), AR1 ; |361| 
        CMP AR1 <= AR2, TC1 ; |361| 
        BCC $C$L62,TC1 ; |361| 
                                        ; branchcc occurs ; |361| 
	.dwpsn	file "./vision/vision.c",line 362,column 9,is_stmt
        MOV #1, T0
        B $C$L69  ; |362| 
                                        ; branch occurs ; |362| 
$C$L62:    
	.dwpsn	file "./vision/vision.c",line 365,column 5,is_stmt
        MOV AR1, T0
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("__remi")
	.dwattr $C$DW$237, DW_AT_TI_call

        CALL #__remi ; |365| 
||      MOV #10, T1

                                        ; call occurs [#__remi] ; |365| 
        BCC $C$L63,T0 != #0 ; |365| 
                                        ; branchcc occurs ; |365| 
	.dwpsn	file "./vision/vision.c",line 366,column 9,is_stmt
        MOV *SP(#6), T0 ; |366| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("__divi")
	.dwattr $C$DW$238, DW_AT_TI_call

        CALL #__divi ; |366| 
||      MOV #10, T1

                                        ; call occurs [#__divi] ; |366| 
        MOV T0, *SP(#7) ; |366| 
	.dwpsn	file "./vision/vision.c",line 367,column 9,is_stmt
        MOV #10, *SP(#8) ; |367| 
	.dwpsn	file "./vision/vision.c",line 368,column 5,is_stmt
        B $C$L64  ; |368| 
                                        ; branch occurs ; |368| 
$C$L63:    
	.dwpsn	file "./vision/vision.c",line 371,column 9,is_stmt
        MOV #1, T0
        B $C$L69  ; |371| 
                                        ; branch occurs ; |371| 
$C$L64:    
	.dwpsn	file "./vision/vision.c",line 374,column 9,is_stmt
        MOV #0, *SP(#9) ; |374| 
	.dwpsn	file "./vision/vision.c",line 374,column 16,is_stmt
        MOV *SP(#6), AR1 ; |374| 
        MOV *SP(#9), AR2 ; |374| 
        CMP AR2 >= AR1, TC1 ; |374| 
        BCC $C$L68,TC1 ; |374| 
                                        ; branchcc occurs ; |374| 
$C$L65:    
$C$DW$L$_segmentation$7$B:
	.dwpsn	file "./vision/vision.c",line 375,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV #200, AR2 ; |375| 
        MOV *AR3(T0), AR1 ; |375| 
        CMP AR1 <= AR2, TC1 ; |375| 
        BCC $C$L66,TC1 ; |375| 
                                        ; branchcc occurs ; |375| 
$C$DW$L$_segmentation$7$E:
$C$DW$L$_segmentation$8$B:
	.dwpsn	file "./vision/vision.c",line 376,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #1, *AR3(T0) ; |376| 
	.dwpsn	file "./vision/vision.c",line 377,column 9,is_stmt
        B $C$L67  ; |377| 
                                        ; branch occurs ; |377| 
$C$DW$L$_segmentation$8$E:
$C$L66:    
$C$DW$L$_segmentation$9$B:
	.dwpsn	file "./vision/vision.c",line 379,column 13,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV #0, *AR3(T0) ; |379| 
$C$DW$L$_segmentation$9$E:
$C$L67:    
$C$DW$L$_segmentation$10$B:
	.dwpsn	file "./vision/vision.c",line 374,column 26,is_stmt
        ADD #1, *SP(#9) ; |374| 
	.dwpsn	file "./vision/vision.c",line 374,column 16,is_stmt
        MOV *SP(#6), AR1 ; |374| 
        MOV *SP(#9), AR2 ; |374| 
        CMP AR2 < AR1, TC1 ; |374| 
        BCC $C$L65,TC1 ; |374| 
                                        ; branchcc occurs ; |374| 
$C$DW$L$_segmentation$10$E:
$C$L68:    
	.dwpsn	file "./vision/vision.c",line 384,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV #40, T1 ; |384| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_memset")
	.dwattr $C$DW$239, DW_AT_TI_call

        CALL #_memset ; |384| 
||      MOV #-1, T0

                                        ; call occurs [#_memset] ; |384| 
	.dwpsn	file "./vision/vision.c",line 385,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR1
        MOV *SP(#7), T0 ; |385| 
        MOV *SP(#8), T1 ; |385| 
        MOV dbl(*SP(#2)), XAR0
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_find_regions")
	.dwattr $C$DW$240, DW_AT_TI_call
        CALL #_find_regions ; |385| 
                                        ; call occurs [#_find_regions] ; |385| 
	.dwpsn	file "./vision/vision.c",line 387,column 5,is_stmt
        MOV #0, T0
$C$L69:    
	.dwpsn	file "./vision/vision.c",line 388,column 1,is_stmt
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$242	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$242, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L65:1:1728755235")
	.dwattr $C$DW$242, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0x176)
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x17d)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_segmentation$7$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_segmentation$7$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_segmentation$8$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_segmentation$8$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_segmentation$9$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_segmentation$9$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_segmentation$10$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_segmentation$10$E)
	.dwendtag $C$DW$242

	.dwattr $C$DW$225, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x184)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

	.sect	".text"
	.global	_move_controller

$C$DW$247	.dwtag  DW_TAG_subprogram, DW_AT_name("move_controller")
	.dwattr $C$DW$247, DW_AT_low_pc(_move_controller)
	.dwattr $C$DW$247, DW_AT_high_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_move_controller")
	.dwattr $C$DW$247, DW_AT_external
	.dwattr $C$DW$247, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$247, DW_AT_TI_begin_line(0x185)
	.dwattr $C$DW$247, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$247, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./vision/vision.c",line 389,column 47,is_stmt,address _move_controller

	.dwfde $C$DW$CIE, _move_controller
$C$DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_name("d_x")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_d_x")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg12]
$C$DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("d_y")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_d_y")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: move_controller                                              *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,AR2,SP,CARRY,TC1,M40,SATA,*
;*                        SATD,RDM,FRCT,SMUL                                   *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_move_controller:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("d_x")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_d_x")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("d_y")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_d_y")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_bregx 0x24 1]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_bregx 0x24 3]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("sig")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_sig")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T1, *SP(#1) ; |389| 
        MOV T0, *SP(#0) ; |389| 
	.dwpsn	file "./vision/vision.c",line 392,column 14,is_stmt
        MOV #0, *SP(#4) ; |392| 
	.dwpsn	file "./vision/vision.c",line 393,column 5,is_stmt
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_config_gpio")
	.dwattr $C$DW$255, DW_AT_TI_call
        CALL #_config_gpio ; |393| 
                                        ; call occurs [#_config_gpio] ; |393| 
	.dwpsn	file "./vision/vision.c",line 394,column 5,is_stmt
        MOV *SP(#1), AR1 ; |394| 
        BCC $C$L79,AR1 == #0 ; |394| 
                                        ; branchcc occurs ; |394| 
	.dwpsn	file "./vision/vision.c",line 395,column 9,is_stmt
        MOV #1, *SP(#4) ; |395| 
	.dwpsn	file "./vision/vision.c",line 396,column 13,is_stmt
        MOV #0, *SP(#2) ; |396| 
	.dwpsn	file "./vision/vision.c",line 396,column 20,is_stmt
        MOV *SP(#1) << #16, AC0
        MPYK #1000, AC0, AC0 ; |396| 

        MOV AC0, AR1 ; |396| 
||      MOV *SP(#2), AR2 ; |396| 

        CMPU AR2 >= AR1, TC1 ; |396| 
        BCC $C$L74,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
$C$L70:    
$C$DW$L$_move_controller$3$B:
	.dwpsn	file "./vision/vision.c",line 397,column 17,is_stmt
        MOV #0, *SP(#3) ; |397| 
	.dwpsn	file "./vision/vision.c",line 397,column 24,is_stmt
        MOV #1000, AR2 ; |397| 
        MOV *SP(#3), AR1 ; |397| 
        CMPU AR1 >= AR2, TC1 ; |397| 
        BCC $C$L73,TC1 ; |397| 
                                        ; branchcc occurs ; |397| 
$C$DW$L$_move_controller$3$E:
$C$L71:    
$C$DW$L$_move_controller$4$B:
	.dwpsn	file "./vision/vision.c",line 398,column 17,is_stmt
        MOV #999, T1 ; |398| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("__remu")
	.dwattr $C$DW$256, DW_AT_TI_call

        CALL #__remu ; |398| 
||      MOV AR1, T0

                                        ; call occurs [#__remu] ; |398| 
        BCC $C$L72,T0 != #0 ; |398| 
                                        ; branchcc occurs ; |398| 
$C$DW$L$_move_controller$4$E:
$C$DW$L$_move_controller$5$B:
        MOV *SP(#2), T0 ; |398| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("__remu")
	.dwattr $C$DW$257, DW_AT_TI_call
        CALL #__remu ; |398| 
                                        ; call occurs [#__remu] ; |398| 
        BCC $C$L72,T0 == #0 ; |398| 
                                        ; branchcc occurs ; |398| 
$C$DW$L$_move_controller$5$E:
$C$DW$L$_move_controller$6$B:
	.dwpsn	file "./vision/vision.c",line 399,column 21,is_stmt
$C$DW$L$_move_controller$6$E:
$C$L72:    
$C$DW$L$_move_controller$7$B:
	.dwpsn	file "./vision/vision.c",line 397,column 34,is_stmt
        ADD #1, *SP(#3) ; |397| 
	.dwpsn	file "./vision/vision.c",line 397,column 24,is_stmt
        MOV *SP(#3), AR1 ; |397| 
        CMPU AR1 < AR2, TC1 ; |397| 
        BCC $C$L71,TC1 ; |397| 
                                        ; branchcc occurs ; |397| 
$C$DW$L$_move_controller$7$E:
$C$L73:    
$C$DW$L$_move_controller$8$B:
	.dwpsn	file "./vision/vision.c",line 396,column 34,is_stmt
        ADD #1, *SP(#2) ; |396| 
	.dwpsn	file "./vision/vision.c",line 396,column 20,is_stmt
        MOV *SP(#1) << #16, AC0
        MPYK #1000, AC0, AC0 ; |396| 

        MOV AC0, AR1 ; |396| 
||      MOV *SP(#2), AR2 ; |396| 

        CMPU AR2 < AR1, TC1 ; |396| 
        BCC $C$L70,TC1 ; |396| 
                                        ; branchcc occurs ; |396| 
$C$DW$L$_move_controller$8$E:
$C$L74:    
	.dwpsn	file "./vision/vision.c",line 404,column 9,is_stmt
        MOV #0, *SP(#4) ; |404| 
	.dwpsn	file "./vision/vision.c",line 405,column 13,is_stmt
        MOV #0, *SP(#2) ; |405| 
	.dwpsn	file "./vision/vision.c",line 405,column 20,is_stmt
        MOV *SP(#1) << #16, AC0
        MPYK #1000, AC0, AC0 ; |405| 

        MOV AC0, AR1 ; |405| 
||      MOV *SP(#2), AR2 ; |405| 

        CMPU AR2 >= AR1, TC1 ; |405| 
        BCC $C$L89,TC1 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$L75:    
$C$DW$L$_move_controller$10$B:
	.dwpsn	file "./vision/vision.c",line 406,column 17,is_stmt
        MOV #0, *SP(#3) ; |406| 
	.dwpsn	file "./vision/vision.c",line 406,column 24,is_stmt
        MOV #1000, AR2 ; |406| 
        MOV *SP(#3), AR1 ; |406| 
        CMPU AR1 >= AR2, TC1 ; |406| 
        BCC $C$L78,TC1 ; |406| 
                                        ; branchcc occurs ; |406| 
$C$DW$L$_move_controller$10$E:
$C$L76:    
$C$DW$L$_move_controller$11$B:
	.dwpsn	file "./vision/vision.c",line 407,column 17,is_stmt
        MOV #999, T1 ; |407| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("__remu")
	.dwattr $C$DW$258, DW_AT_TI_call

        CALL #__remu ; |407| 
||      MOV AR1, T0

                                        ; call occurs [#__remu] ; |407| 
        BCC $C$L77,T0 != #0 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$DW$L$_move_controller$11$E:
$C$DW$L$_move_controller$12$B:
        MOV *SP(#2), T0 ; |407| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("__remu")
	.dwattr $C$DW$259, DW_AT_TI_call
        CALL #__remu ; |407| 
                                        ; call occurs [#__remu] ; |407| 
        BCC $C$L77,T0 != #0 ; |407| 
                                        ; branchcc occurs ; |407| 
$C$DW$L$_move_controller$12$E:
$C$DW$L$_move_controller$13$B:
	.dwpsn	file "./vision/vision.c",line 408,column 17,is_stmt
        MOV *SP(#4), T1 ; |408| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_GPIO_write")
	.dwattr $C$DW$260, DW_AT_TI_call

        CALL #_GPIO_write ; |408| 
||      MOV #0, T0

                                        ; call occurs [#_GPIO_write] ; |408| 
$C$DW$L$_move_controller$13$E:
$C$L77:    
$C$DW$L$_move_controller$14$B:
	.dwpsn	file "./vision/vision.c",line 406,column 34,is_stmt
        ADD #1, *SP(#3) ; |406| 
	.dwpsn	file "./vision/vision.c",line 406,column 24,is_stmt
        MOV #1000, AR2 ; |406| 
        MOV *SP(#3), AR1 ; |406| 
        CMPU AR1 < AR2, TC1 ; |406| 
        BCC $C$L76,TC1 ; |406| 
                                        ; branchcc occurs ; |406| 
$C$DW$L$_move_controller$14$E:
$C$L78:    
$C$DW$L$_move_controller$15$B:
	.dwpsn	file "./vision/vision.c",line 405,column 34,is_stmt
        ADD #1, *SP(#2) ; |405| 
	.dwpsn	file "./vision/vision.c",line 405,column 20,is_stmt
        MOV *SP(#1) << #16, AC0
        MPYK #1000, AC0, AC0 ; |405| 

        MOV AC0, AR1 ; |405| 
||      MOV *SP(#2), AR2 ; |405| 

        CMPU AR2 < AR1, TC1 ; |405| 
        BCC $C$L75,TC1 ; |405| 
                                        ; branchcc occurs ; |405| 
$C$DW$L$_move_controller$15$E:
	.dwpsn	file "./vision/vision.c",line 414,column 5,is_stmt
        B $C$L89  ; |414| 
                                        ; branch occurs ; |414| 
$C$L79:    
	.dwpsn	file "./vision/vision.c",line 415,column 10,is_stmt
        MOV *SP(#0), AR1 ; |415| 
        BCC $C$L89,AR1 == #0 ; |415| 
                                        ; branchcc occurs ; |415| 
	.dwpsn	file "./vision/vision.c",line 416,column 9,is_stmt
        MOV #1, *SP(#4) ; |416| 
	.dwpsn	file "./vision/vision.c",line 417,column 13,is_stmt
        MOV #0, *SP(#2) ; |417| 
	.dwpsn	file "./vision/vision.c",line 417,column 20,is_stmt
        MOV *SP(#0) << #16, AC0
        MPYK #1000, AC0, AC0 ; |417| 

        MOV AC0, AR1 ; |417| 
||      MOV *SP(#2), AR2 ; |417| 

        CMPU AR2 >= AR1, TC1 ; |417| 
        BCC $C$L84,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$L80:    
$C$DW$L$_move_controller$19$B:
	.dwpsn	file "./vision/vision.c",line 418,column 17,is_stmt
        MOV #0, *SP(#3) ; |418| 
	.dwpsn	file "./vision/vision.c",line 418,column 24,is_stmt
        MOV #1000, AR2 ; |418| 
        MOV *SP(#3), AR1 ; |418| 
        CMPU AR1 >= AR2, TC1 ; |418| 
        BCC $C$L83,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 
$C$DW$L$_move_controller$19$E:
$C$L81:    
$C$DW$L$_move_controller$20$B:
	.dwpsn	file "./vision/vision.c",line 419,column 17,is_stmt
        MOV #999, T1 ; |419| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("__remu")
	.dwattr $C$DW$261, DW_AT_TI_call

        CALL #__remu ; |419| 
||      MOV AR1, T0

                                        ; call occurs [#__remu] ; |419| 
        BCC $C$L82,T0 != #0 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_move_controller$20$E:
$C$DW$L$_move_controller$21$B:
        MOV *SP(#2), T0 ; |419| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("__remu")
	.dwattr $C$DW$262, DW_AT_TI_call
        CALL #__remu ; |419| 
                                        ; call occurs [#__remu] ; |419| 
        BCC $C$L82,T0 == #0 ; |419| 
                                        ; branchcc occurs ; |419| 
$C$DW$L$_move_controller$21$E:
$C$DW$L$_move_controller$22$B:
	.dwpsn	file "./vision/vision.c",line 422,column 17,is_stmt
$C$DW$L$_move_controller$22$E:
$C$L82:    
$C$DW$L$_move_controller$23$B:
	.dwpsn	file "./vision/vision.c",line 418,column 34,is_stmt
        ADD #1, *SP(#3) ; |418| 
	.dwpsn	file "./vision/vision.c",line 418,column 24,is_stmt
        MOV *SP(#3), AR1 ; |418| 
        CMPU AR1 < AR2, TC1 ; |418| 
        BCC $C$L81,TC1 ; |418| 
                                        ; branchcc occurs ; |418| 
$C$DW$L$_move_controller$23$E:
$C$L83:    
$C$DW$L$_move_controller$24$B:
	.dwpsn	file "./vision/vision.c",line 417,column 34,is_stmt
        ADD #1, *SP(#2) ; |417| 
	.dwpsn	file "./vision/vision.c",line 417,column 20,is_stmt
        MOV *SP(#0) << #16, AC0
        MPYK #1000, AC0, AC0 ; |417| 

        MOV AC0, AR1 ; |417| 
||      MOV *SP(#2), AR2 ; |417| 

        CMPU AR2 < AR1, TC1 ; |417| 
        BCC $C$L80,TC1 ; |417| 
                                        ; branchcc occurs ; |417| 
$C$DW$L$_move_controller$24$E:
$C$L84:    
	.dwpsn	file "./vision/vision.c",line 425,column 9,is_stmt
        MOV #0, *SP(#4) ; |425| 
	.dwpsn	file "./vision/vision.c",line 426,column 13,is_stmt
        MOV #0, *SP(#2) ; |426| 
	.dwpsn	file "./vision/vision.c",line 426,column 20,is_stmt
        MOV *SP(#0) << #16, AC0
        MPYK #1000, AC0, AC0 ; |426| 

        MOV AC0, AR1 ; |426| 
||      MOV *SP(#2), AR2 ; |426| 

        CMPU AR2 >= AR1, TC1 ; |426| 
        BCC $C$L89,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
$C$L85:    
$C$DW$L$_move_controller$26$B:
	.dwpsn	file "./vision/vision.c",line 427,column 17,is_stmt
        MOV #0, *SP(#3) ; |427| 
	.dwpsn	file "./vision/vision.c",line 427,column 24,is_stmt
        MOV #1000, AR2 ; |427| 
        MOV *SP(#3), AR1 ; |427| 
        CMPU AR1 >= AR2, TC1 ; |427| 
        BCC $C$L88,TC1 ; |427| 
                                        ; branchcc occurs ; |427| 
$C$DW$L$_move_controller$26$E:
$C$L86:    
$C$DW$L$_move_controller$27$B:
	.dwpsn	file "./vision/vision.c",line 428,column 17,is_stmt
        MOV #999, T1 ; |428| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("__remu")
	.dwattr $C$DW$263, DW_AT_TI_call

        CALL #__remu ; |428| 
||      MOV AR1, T0

                                        ; call occurs [#__remu] ; |428| 
        BCC $C$L87,T0 != #0 ; |428| 
                                        ; branchcc occurs ; |428| 
$C$DW$L$_move_controller$27$E:
$C$DW$L$_move_controller$28$B:
        MOV *SP(#2), T0 ; |428| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("__remu")
	.dwattr $C$DW$264, DW_AT_TI_call
        CALL #__remu ; |428| 
                                        ; call occurs [#__remu] ; |428| 
        BCC $C$L87,T0 != #0 ; |428| 
                                        ; branchcc occurs ; |428| 
$C$DW$L$_move_controller$28$E:
$C$DW$L$_move_controller$29$B:
	.dwpsn	file "./vision/vision.c",line 429,column 17,is_stmt
        MOV *SP(#4), T1 ; |429| 
        MOV dbl(*(#_hGpio)), XAR0
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_GPIO_write")
	.dwattr $C$DW$265, DW_AT_TI_call

        CALL #_GPIO_write ; |429| 
||      MOV #0, T0

                                        ; call occurs [#_GPIO_write] ; |429| 
$C$DW$L$_move_controller$29$E:
$C$L87:    
$C$DW$L$_move_controller$30$B:
	.dwpsn	file "./vision/vision.c",line 427,column 34,is_stmt
        ADD #1, *SP(#3) ; |427| 
	.dwpsn	file "./vision/vision.c",line 427,column 24,is_stmt
        MOV #1000, AR2 ; |427| 
        MOV *SP(#3), AR1 ; |427| 
        CMPU AR1 < AR2, TC1 ; |427| 
        BCC $C$L86,TC1 ; |427| 
                                        ; branchcc occurs ; |427| 
$C$DW$L$_move_controller$30$E:
$C$L88:    
$C$DW$L$_move_controller$31$B:
	.dwpsn	file "./vision/vision.c",line 426,column 34,is_stmt
        ADD #1, *SP(#2) ; |426| 
	.dwpsn	file "./vision/vision.c",line 426,column 20,is_stmt
        MOV *SP(#0) << #16, AC0
        MPYK #1000, AC0, AC0 ; |426| 

        MOV AC0, AR1 ; |426| 
||      MOV *SP(#2), AR2 ; |426| 

        CMPU AR2 < AR1, TC1 ; |426| 
        BCC $C$L85,TC1 ; |426| 
                                        ; branchcc occurs ; |426| 
$C$DW$L$_move_controller$31$E:
$C$L89:    
	.dwpsn	file "./vision/vision.c",line 436,column 5,is_stmt
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_unconfig_gpio")
	.dwattr $C$DW$266, DW_AT_TI_call
        CALL #_unconfig_gpio ; |436| 
                                        ; call occurs [#_unconfig_gpio] ; |436| 
	.dwpsn	file "./vision/vision.c",line 437,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$268	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$268, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L85:1:1728755235")
	.dwattr $C$DW$268, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$268, DW_AT_TI_begin_line(0x1aa)
	.dwattr $C$DW$268, DW_AT_TI_end_line(0x1b1)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_move_controller$26$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_move_controller$26$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_move_controller$31$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_move_controller$31$E)

$C$DW$271	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$271, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L86:2:1728755235")
	.dwattr $C$DW$271, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x1ab)
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x1b0)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_move_controller$27$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_move_controller$27$E)
$C$DW$273	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$273, DW_AT_low_pc($C$DW$L$_move_controller$28$B)
	.dwattr $C$DW$273, DW_AT_high_pc($C$DW$L$_move_controller$28$E)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_move_controller$29$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_move_controller$29$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_move_controller$30$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_move_controller$30$E)
	.dwendtag $C$DW$271

	.dwendtag $C$DW$268


$C$DW$276	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$276, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L80:1:1728755235")
	.dwattr $C$DW$276, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x1a1)
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x1a8)
$C$DW$277	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$277, DW_AT_low_pc($C$DW$L$_move_controller$19$B)
	.dwattr $C$DW$277, DW_AT_high_pc($C$DW$L$_move_controller$19$E)
$C$DW$278	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$278, DW_AT_low_pc($C$DW$L$_move_controller$24$B)
	.dwattr $C$DW$278, DW_AT_high_pc($C$DW$L$_move_controller$24$E)

$C$DW$279	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$279, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L81:2:1728755235")
	.dwattr $C$DW$279, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$279, DW_AT_TI_begin_line(0x1a2)
	.dwattr $C$DW$279, DW_AT_TI_end_line(0x1a7)
$C$DW$280	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$280, DW_AT_low_pc($C$DW$L$_move_controller$20$B)
	.dwattr $C$DW$280, DW_AT_high_pc($C$DW$L$_move_controller$20$E)
$C$DW$281	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$281, DW_AT_low_pc($C$DW$L$_move_controller$21$B)
	.dwattr $C$DW$281, DW_AT_high_pc($C$DW$L$_move_controller$21$E)
$C$DW$282	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$282, DW_AT_low_pc($C$DW$L$_move_controller$22$B)
	.dwattr $C$DW$282, DW_AT_high_pc($C$DW$L$_move_controller$22$E)
$C$DW$283	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$283, DW_AT_low_pc($C$DW$L$_move_controller$23$B)
	.dwattr $C$DW$283, DW_AT_high_pc($C$DW$L$_move_controller$23$E)
	.dwendtag $C$DW$279

	.dwendtag $C$DW$276


$C$DW$284	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$284, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L75:1:1728755235")
	.dwattr $C$DW$284, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$284, DW_AT_TI_begin_line(0x195)
	.dwattr $C$DW$284, DW_AT_TI_end_line(0x19d)
$C$DW$285	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$285, DW_AT_low_pc($C$DW$L$_move_controller$10$B)
	.dwattr $C$DW$285, DW_AT_high_pc($C$DW$L$_move_controller$10$E)
$C$DW$286	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$286, DW_AT_low_pc($C$DW$L$_move_controller$15$B)
	.dwattr $C$DW$286, DW_AT_high_pc($C$DW$L$_move_controller$15$E)

$C$DW$287	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$287, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L76:2:1728755235")
	.dwattr $C$DW$287, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x196)
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x19b)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_move_controller$11$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_move_controller$11$E)
$C$DW$289	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$289, DW_AT_low_pc($C$DW$L$_move_controller$12$B)
	.dwattr $C$DW$289, DW_AT_high_pc($C$DW$L$_move_controller$12$E)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_move_controller$13$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_move_controller$13$E)
$C$DW$291	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$291, DW_AT_low_pc($C$DW$L$_move_controller$14$B)
	.dwattr $C$DW$291, DW_AT_high_pc($C$DW$L$_move_controller$14$E)
	.dwendtag $C$DW$287

	.dwendtag $C$DW$284


$C$DW$292	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$292, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L70:1:1728755235")
	.dwattr $C$DW$292, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$292, DW_AT_TI_begin_line(0x18c)
	.dwattr $C$DW$292, DW_AT_TI_end_line(0x193)
$C$DW$293	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$293, DW_AT_low_pc($C$DW$L$_move_controller$3$B)
	.dwattr $C$DW$293, DW_AT_high_pc($C$DW$L$_move_controller$3$E)
$C$DW$294	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$294, DW_AT_low_pc($C$DW$L$_move_controller$8$B)
	.dwattr $C$DW$294, DW_AT_high_pc($C$DW$L$_move_controller$8$E)

$C$DW$295	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$295, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L71:2:1728755235")
	.dwattr $C$DW$295, DW_AT_TI_begin_file("./vision/vision.c")
	.dwattr $C$DW$295, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$295, DW_AT_TI_end_line(0x191)
$C$DW$296	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$296, DW_AT_low_pc($C$DW$L$_move_controller$4$B)
	.dwattr $C$DW$296, DW_AT_high_pc($C$DW$L$_move_controller$4$E)
$C$DW$297	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$297, DW_AT_low_pc($C$DW$L$_move_controller$5$B)
	.dwattr $C$DW$297, DW_AT_high_pc($C$DW$L$_move_controller$5$E)
$C$DW$298	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$298, DW_AT_low_pc($C$DW$L$_move_controller$6$B)
	.dwattr $C$DW$298, DW_AT_high_pc($C$DW$L$_move_controller$6$E)
$C$DW$299	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$299, DW_AT_low_pc($C$DW$L$_move_controller$7$B)
	.dwattr $C$DW$299, DW_AT_high_pc($C$DW$L$_move_controller$7$E)
	.dwendtag $C$DW$295

	.dwendtag $C$DW$292

	.dwattr $C$DW$247, DW_AT_TI_end_file("./vision/vision.c")
	.dwattr $C$DW$247, DW_AT_TI_end_line(0x1b5)
	.dwattr $C$DW$247, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$247

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_malloc
	.global	_free
	.global	_memset
	.global	_IMG_conv_3x3
	.global	_GPIO_open
	.global	_GPIO_close
	.global	_GPIO_write
	.global	_GPIO_reset
	.global	_GPIO_configBit
	.global	_memcpy
	.global	__remi
	.global	__divi
	.global	__remu

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN0"), DW_AT_const_value(0x00)
$C$DW$301	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN1"), DW_AT_const_value(0x01)
$C$DW$302	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN2"), DW_AT_const_value(0x02)
$C$DW$303	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN3"), DW_AT_const_value(0x03)
$C$DW$304	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN4"), DW_AT_const_value(0x04)
$C$DW$305	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN5"), DW_AT_const_value(0x05)
$C$DW$306	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN6"), DW_AT_const_value(0x06)
$C$DW$307	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN7"), DW_AT_const_value(0x07)
$C$DW$308	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN8"), DW_AT_const_value(0x08)
$C$DW$309	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN9"), DW_AT_const_value(0x09)
$C$DW$310	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN10"), DW_AT_const_value(0x0a)
$C$DW$311	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN11"), DW_AT_const_value(0x0b)
$C$DW$312	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN12"), DW_AT_const_value(0x0c)
$C$DW$313	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN13"), DW_AT_const_value(0x0d)
$C$DW$314	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN14"), DW_AT_const_value(0x0e)
$C$DW$315	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN15"), DW_AT_const_value(0x0f)
$C$DW$316	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN16"), DW_AT_const_value(0x10)
$C$DW$317	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN17"), DW_AT_const_value(0x11)
$C$DW$318	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN18"), DW_AT_const_value(0x12)
$C$DW$319	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN19"), DW_AT_const_value(0x13)
$C$DW$320	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN20"), DW_AT_const_value(0x14)
$C$DW$321	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN21"), DW_AT_const_value(0x15)
$C$DW$322	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN22"), DW_AT_const_value(0x16)
$C$DW$323	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN23"), DW_AT_const_value(0x17)
$C$DW$324	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN24"), DW_AT_const_value(0x18)
$C$DW$325	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN25"), DW_AT_const_value(0x19)
$C$DW$326	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN26"), DW_AT_const_value(0x1a)
$C$DW$327	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN27"), DW_AT_const_value(0x1b)
$C$DW$328	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN28"), DW_AT_const_value(0x1c)
$C$DW$329	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN29"), DW_AT_const_value(0x1d)
$C$DW$330	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN30"), DW_AT_const_value(0x1e)
$C$DW$331	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_PIN31"), DW_AT_const_value(0x1f)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinNum")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$332	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_INPUT"), DW_AT_const_value(0x00)
$C$DW$333	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_DIR_OUTPUT"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$31

$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioDirection")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_RISING_EDGE"), DW_AT_const_value(0x00)
$C$DW$335	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_FALLING_EDGE"), DW_AT_const_value(0x01)
$C$DW$336	.dwtag  DW_TAG_enumerator, DW_AT_name("CSL_GPIO_TRIG_CLEAR_EDGE"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioTriggerType")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x12)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$337, DW_AT_name("RSVD0")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_RSVD0")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$338, DW_AT_name("IODIR1")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_IODIR1")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$339, DW_AT_name("IODIR2")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_IODIR2")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$340, DW_AT_name("IOINDATA1")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_IOINDATA1")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$341, DW_AT_name("IOINDATA2")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_IOINDATA2")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_name("IOOUTDATA1")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_IOOUTDATA1")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$343, DW_AT_name("IOOUTDATA2")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_IOOUTDATA2")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$344, DW_AT_name("IOINTEDG1")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_IOINTEDG1")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_name("IOINTEDG2")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_IOINTEDG2")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_name("IOINTEN1")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_IOINTEN1")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$347, DW_AT_name("IOINTEN2")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_IOINTEN2")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$348, DW_AT_name("IOINTFLG1")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_IOINTFLG1")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$349, DW_AT_name("IOINTFLG2")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_IOINTFLG2")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegs")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$350	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$23)
$C$DW$351	.dwtag  DW_TAG_TI_ioport_type
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$350)
$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$351)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x10)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioRegsOvly")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$352, DW_AT_name("baseAddr")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$353, DW_AT_name("numPins")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_numPins")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
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
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$354, DW_AT_name("pinNum")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_pinNum")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$355, DW_AT_name("direction")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_direction")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$356, DW_AT_name("trigger")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_trigger")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35

$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("CSL_GpioPinConfig")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$357	.dwtag  DW_TAG_TI_far_type
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$357)
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
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)
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
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$358	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$358)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$359	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$359, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$21

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x17)

$C$DW$T$82	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x09)
$C$DW$360	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$360, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$82

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
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

$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg0]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg1]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg2]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_reg3]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg4]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg5]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg6]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg7]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg8]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg9]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_reg10]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_reg11]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_reg12]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg13]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg14]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg15]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg16]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg17]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg18]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg19]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg20]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg21]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg22]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg23]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg24]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg25]
$C$DW$387	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg26]
$C$DW$388	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg27]
$C$DW$389	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg28]
$C$DW$390	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg29]
$C$DW$391	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg30]
$C$DW$392	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg31]
$C$DW$393	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x20]
$C$DW$394	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x21]
$C$DW$395	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x22]
$C$DW$396	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x23]
$C$DW$397	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x24]
$C$DW$398	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x25]
$C$DW$399	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_regx 0x26]
$C$DW$400	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_regx 0x27]
$C$DW$401	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x28]
$C$DW$402	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x29]
$C$DW$403	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$404	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$405	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$406	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$407	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$408	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$409	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x30]
$C$DW$410	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_regx 0x31]
$C$DW$411	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_regx 0x32]
$C$DW$412	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x33]
$C$DW$413	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x34]
$C$DW$414	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_regx 0x35]
$C$DW$415	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_regx 0x36]
$C$DW$416	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_regx 0x37]
$C$DW$417	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_regx 0x38]
$C$DW$418	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_regx 0x39]
$C$DW$419	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$420	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$421	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$422	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$423	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$424	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$425	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_regx 0x40]
$C$DW$426	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$426, DW_AT_location[DW_OP_regx 0x41]
$C$DW$427	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$427, DW_AT_location[DW_OP_regx 0x42]
$C$DW$428	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$428, DW_AT_location[DW_OP_regx 0x43]
$C$DW$429	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x44]
$C$DW$430	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x45]
$C$DW$431	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x46]
$C$DW$432	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x47]
$C$DW$433	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$433, DW_AT_location[DW_OP_regx 0x48]
$C$DW$434	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x49]
$C$DW$435	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$436	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$437	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$437, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$438	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$438, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$439	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$440	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$441	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x50]
$C$DW$442	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x51]
$C$DW$443	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$443, DW_AT_location[DW_OP_regx 0x52]
$C$DW$444	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x53]
$C$DW$445	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x54]
$C$DW$446	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x55]
$C$DW$447	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x56]
$C$DW$448	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$448, DW_AT_location[DW_OP_regx 0x57]
$C$DW$449	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$449, DW_AT_location[DW_OP_regx 0x58]
$C$DW$450	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$450, DW_AT_location[DW_OP_regx 0x59]
$C$DW$451	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$451, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$452	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

