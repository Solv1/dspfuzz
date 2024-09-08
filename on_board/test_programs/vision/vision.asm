;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Fri Sep  6 11:52:04 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_1_0 --silicon_core_1_1 --silicon_core_2_0 --silicon_core_2_1 --silicon_core_2_2 --symdebug:dwarf 
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
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("./vision.c")
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
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$21)
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
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$10


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("IMG_conv_3x3")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_IMG_conv_3x3")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$29)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$29)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$29)
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
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$32)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$32)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$8)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$8)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$8)
	.dwendtag $C$DW$20

	.global	_SHARPEN_KERNEL
	.sect	".const:_SHARPEN_KERNEL"
	.clink
	.align	1
_SHARPEN_KERNEL:
	.field	0,16			; _SHARPEN_KERNEL[0] @ 0
	.field	-1,16			; _SHARPEN_KERNEL[1] @ 16
	.field	0,16			; _SHARPEN_KERNEL[2] @ 32
	.field	-1,16			; _SHARPEN_KERNEL[3] @ 48
	.field	5,16			; _SHARPEN_KERNEL[4] @ 64
	.field	-1,16			; _SHARPEN_KERNEL[5] @ 80
	.field	0,16			; _SHARPEN_KERNEL[6] @ 96
	.field	-1,16			; _SHARPEN_KERNEL[7] @ 112
	.field	0,16			; _SHARPEN_KERNEL[8] @ 128

$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("SHARPEN_KERNEL")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_SHARPEN_KERNEL")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _SHARPEN_KERNEL]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$26, DW_AT_external
	.global	_LAPLACIAN_KERNEL
	.sect	".const:_LAPLACIAN_KERNEL"
	.clink
	.align	1
_LAPLACIAN_KERNEL:
	.field	-1,16			; _LAPLACIAN_KERNEL[0] @ 0
	.field	-1,16			; _LAPLACIAN_KERNEL[1] @ 16
	.field	-1,16			; _LAPLACIAN_KERNEL[2] @ 32
	.field	-1,16			; _LAPLACIAN_KERNEL[3] @ 48
	.field	8,16			; _LAPLACIAN_KERNEL[4] @ 64
	.field	-1,16			; _LAPLACIAN_KERNEL[5] @ 80
	.field	-1,16			; _LAPLACIAN_KERNEL[6] @ 96
	.field	-1,16			; _LAPLACIAN_KERNEL[7] @ 112
	.field	-1,16			; _LAPLACIAN_KERNEL[8] @ 128

$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("LAPLACIAN_KERNEL")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_LAPLACIAN_KERNEL")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _LAPLACIAN_KERNEL]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$27, DW_AT_external
	.global	_SHAPE_CLASSIFICATION
	.sect	".const:_SHAPE_CLASSIFICATION"
	.clink
	.align	1
_SHAPE_CLASSIFICATION:
	.field	50,16			; _SHAPE_CLASSIFICATION[0] @ 0
	.field	60,16			; _SHAPE_CLASSIFICATION[1] @ 16
	.field	70,16			; _SHAPE_CLASSIFICATION[2] @ 32
	.field	100,16			; _SHAPE_CLASSIFICATION[3] @ 48
	.field	110,16			; _SHAPE_CLASSIFICATION[4] @ 64
	.field	230,16			; _SHAPE_CLASSIFICATION[5] @ 80
	.field	230,16			; _SHAPE_CLASSIFICATION[6] @ 96
	.field	55,16			; _SHAPE_CLASSIFICATION[7] @ 112
	.field	20,16			; _SHAPE_CLASSIFICATION[8] @ 128

$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("SHAPE_CLASSIFICATION")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_SHAPE_CLASSIFICATION")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _SHAPE_CLASSIFICATION]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$28, DW_AT_external
	.global	_BOX_CLASSIFICATION
	.sect	".const:_BOX_CLASSIFICATION"
	.clink
	.align	1
_BOX_CLASSIFICATION:
	.field	10,16			; _BOX_CLASSIFICATION[0] @ 0
	.field	10,16			; _BOX_CLASSIFICATION[1] @ 16
	.field	10,16			; _BOX_CLASSIFICATION[2] @ 32
	.field	20,16			; _BOX_CLASSIFICATION[3] @ 48
	.field	20,16			; _BOX_CLASSIFICATION[4] @ 64
	.field	20,16			; _BOX_CLASSIFICATION[5] @ 80
	.field	10,16			; _BOX_CLASSIFICATION[6] @ 96
	.field	10,16			; _BOX_CLASSIFICATION[7] @ 112
	.field	10,16			; _BOX_CLASSIFICATION[8] @ 128

$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("BOX_CLASSIFICATION")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_BOX_CLASSIFICATION")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _BOX_CLASSIFICATION]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$29, DW_AT_external
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/48286adqBhU 
	.sect	".text"
	.global	_pre_treatment

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("pre_treatment")
	.dwattr $C$DW$30, DW_AT_low_pc(_pre_treatment)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_pre_treatment")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./vision.c",line 45,column 74,is_stmt,address _pre_treatment

	.dwfde $C$DW$CIE, _pre_treatment
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg17]
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg19]
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("noise_average")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_noise_average")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("mean_kernel")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_mean_kernel")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#4) ; |45| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 48,column 13,is_stmt
        MOV #0, *SP(#7) ; |48| 
	.dwpsn	file "./vision.c",line 49,column 13,is_stmt
        MOV XSP, XAR0
        MOV #9, T1
        MOV #0, T0
        AMAR *+AR0(#8)
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_memset")
	.dwattr $C$DW$41, DW_AT_TI_call
        CALL #_memset ; |49| 
                                        ; call occurs [#_memset] ; |49| 
	.dwpsn	file "./vision.c",line 52,column 5,is_stmt

        MOV *SP(#4), T0 ; |52| 
||      MOV #3, T1

$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("__remi")
	.dwattr $C$DW$42, DW_AT_TI_call
        CALL #__remi ; |52| 
                                        ; call occurs [#__remi] ; |52| 
        BCC $C$L1,T0 == #0 ; |52| 
                                        ; branchcc occurs ; |52| 
	.dwpsn	file "./vision.c",line 54,column 9,is_stmt

        MOV #3, T1
||      MOV *SP(#4), T0 ; |54| 

$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("__remi")
	.dwattr $C$DW$43, DW_AT_TI_call
        CALL #__remi ; |54| 
                                        ; call occurs [#__remi] ; |54| 
        SUB T0, *SP(#4), AR1 ; |54| 
        MOV AR1, *SP(#4) ; |54| 
$C$L1:    
	.dwpsn	file "./vision.c",line 56,column 5,is_stmt

        MOV #3, T1
||      MOV *SP(#4), T0 ; |56| 

$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__divi")
	.dwattr $C$DW$44, DW_AT_TI_call
        CALL #__divi ; |56| 
                                        ; call occurs [#__divi] ; |56| 
        MOV T0, *SP(#5) ; |56| 
	.dwpsn	file "./vision.c",line 58,column 5,is_stmt
        AMOV #_LAPLACIAN_KERNEL, XAR2 ; |58| 
        MOV #0, T1
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_IMG_conv_3x3 ; |58| 
                                        ; call occurs [#_IMG_conv_3x3] ; |58| 
	.dwpsn	file "./vision.c",line 59,column 10,is_stmt
        MOV #0, *SP(#6) ; |59| 
	.dwpsn	file "./vision.c",line 59,column 17,is_stmt
        MOV *SP(#5), AR1 ; |59| 

        SUB #1, AR1 ; |59| 
||      MOV *SP(#6), AR2 ; |59| 

        CMP AR2 >= AR1, TC1 ; |59| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L3,TC1 ; |59| 
                                        ; branchcc occurs ; |59| 
$C$L2:    
$C$DW$L$_pre_treatment$4$B:
	.dwpsn	file "./vision.c",line 60,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#7), AR1 ; |60| 
        ADD *AR3(T0), AR1, AR1 ; |60| 
        MOV AR1, *SP(#7) ; |60| 
	.dwpsn	file "./vision.c",line 59,column 30,is_stmt
        ADD #1, *SP(#6) ; |59| 
	.dwpsn	file "./vision.c",line 59,column 17,is_stmt
        MOV *SP(#5), AR1 ; |59| 

        SUB #1, AR1 ; |59| 
||      MOV *SP(#6), AR2 ; |59| 

        CMP AR2 < AR1, TC1 ; |59| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L2,TC1 ; |59| 
                                        ; branchcc occurs ; |59| 
$C$DW$L$_pre_treatment$4$E:
$C$L3:    
	.dwpsn	file "./vision.c",line 62,column 5,is_stmt
        MOV *SP(#7), T0 ; |62| 
        MOV *SP(#5), T1 ; |62| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("__divi")
	.dwattr $C$DW$46, DW_AT_TI_call
        CALL #__divi ; |62| 
                                        ; call occurs [#__divi] ; |62| 
        MOV T0, *SP(#7) ; |62| 
	.dwpsn	file "./vision.c",line 63,column 5,is_stmt

        MOV T0, AR1 ; |63| 
||      MOV #1000, AR2 ; |63| 

        CMP AR1 <= AR2, TC1 ; |63| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L6,TC1 ; |63| 
                                        ; branchcc occurs ; |63| 
	.dwpsn	file "./vision.c",line 64,column 13,is_stmt
        MOV #0, *SP(#6) ; |64| 
	.dwpsn	file "./vision.c",line 64,column 20,is_stmt

        MOV *SP(#6), AR1 ; |64| 
||      MOV #9, AR2

        CMP AR1 >= AR2, TC1 ; |64| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L5,TC1 ; |64| 
                                        ; branchcc occurs ; |64| 
$C$L4:    
$C$DW$L$_pre_treatment$7$B:
	.dwpsn	file "./vision.c",line 65,column 13,is_stmt
        MOV XSP, XAR3
        MOV AR1, T0
        MOV *SP(#7), AR1 ; |65| 
        AMAR *+AR3(#8)
        MOV AR1, *AR3(T0) ; |65| 
	.dwpsn	file "./vision.c",line 64,column 37,is_stmt
        ADD #1, *SP(#6) ; |64| 
	.dwpsn	file "./vision.c",line 64,column 20,is_stmt
        MOV *SP(#6), AR1 ; |64| 

        CMP AR1 < AR2, TC1 ; |64| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L4,TC1 ; |64| 
                                        ; branchcc occurs ; |64| 
$C$DW$L$_pre_treatment$7$E:
$C$L5:    
	.dwpsn	file "./vision.c",line 67,column 9,is_stmt
        MOV XSP, XAR2
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1

        MOV #0, T1
||      MOV *SP(#5), T0 ; |67| 

        AMAR *+AR2(#8)
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$47, DW_AT_TI_call
        CALL #_IMG_conv_3x3 ; |67| 
                                        ; call occurs [#_IMG_conv_3x3] ; |67| 
	.dwpsn	file "./vision.c",line 68,column 9,is_stmt

        MOV *SP(#5), T0 ; |68| 
||      MOV #0, T1

        AMOV #_SHARPEN_KERNEL, XAR2 ; |68| 
        MOV dbl(*SP(#2)), XAR0
        MOV dbl(*SP(#0)), XAR1
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$48, DW_AT_TI_call
        CALL #_IMG_conv_3x3 ; |68| 
                                        ; call occurs [#_IMG_conv_3x3] ; |68| 
	.dwpsn	file "./vision.c",line 70,column 9,is_stmt
        MOV *SP(#4), T0 ; |70| 
        MOV dbl(*SP(#2)), XAR1
        MOV dbl(*SP(#0)), XAR0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_memcpy")
	.dwattr $C$DW$49, DW_AT_TI_call
        CALL #_memcpy ; |70| 
                                        ; call occurs [#_memcpy] ; |70| 
	.dwpsn	file "./vision.c",line 71,column 9,is_stmt
        B $C$L7   ; |71| 
                                        ; branch occurs ; |71| 
$C$L6:    
	.dwpsn	file "./vision.c",line 74,column 9,is_stmt
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#2)), XAR1
        AMOV #_SHARPEN_KERNEL, XAR2 ; |74| 

        MOV #0, T1
||      MOV *SP(#5), T0 ; |74| 

$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_IMG_conv_3x3")
	.dwattr $C$DW$50, DW_AT_TI_call
        CALL #_IMG_conv_3x3 ; |74| 
                                        ; call occurs [#_IMG_conv_3x3] ; |74| 
	.dwpsn	file "./vision.c",line 75,column 9,is_stmt
$C$L7:    
	.dwpsn	file "./vision.c",line 77,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$52	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$52, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L4:1:1725637924")
	.dwattr $C$DW$52, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x42)
$C$DW$53	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$53, DW_AT_low_pc($C$DW$L$_pre_treatment$7$B)
	.dwattr $C$DW$53, DW_AT_high_pc($C$DW$L$_pre_treatment$7$E)
	.dwendtag $C$DW$52


$C$DW$54	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$54, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L2:1:1725637924")
	.dwattr $C$DW$54, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x3b)
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x3d)
$C$DW$55	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$55, DW_AT_low_pc($C$DW$L$_pre_treatment$4$B)
	.dwattr $C$DW$55, DW_AT_high_pc($C$DW$L$_pre_treatment$4$E)
	.dwendtag $C$DW$54

	.dwattr $C$DW$30, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x4d)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.global	_find_regions

$C$DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("find_regions")
	.dwattr $C$DW$56, DW_AT_low_pc(_find_regions)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_find_regions")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "./vision.c",line 79,column 82,is_stmt,address _find_regions

	.dwfde $C$DW$CIE, _find_regions
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg17]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("start_cords")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg19]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("colm")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg12]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("row")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg13]
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
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("in")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("start_cords")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("r")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("isFinshed")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_isFinshed")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("index_start")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_index_start")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_bregx 0x24 11]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_bregx 0x24 12]
        MOV T1, *SP(#5) ; |79| 
        MOV T0, *SP(#4) ; |79| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 82,column 13,is_stmt
        MOV #0, *SP(#6) ; |82| 
	.dwpsn	file "./vision.c",line 83,column 13,is_stmt
        MOV #0, *SP(#7) ; |83| 
	.dwpsn	file "./vision.c",line 84,column 13,is_stmt
        MOV #0, *SP(#8) ; |84| 
	.dwpsn	file "./vision.c",line 85,column 13,is_stmt
        MOV #0, *SP(#9) ; |85| 
	.dwpsn	file "./vision.c",line 86,column 10,is_stmt
        MOV #0, *SP(#10) ; |86| 
	.dwpsn	file "./vision.c",line 88,column 13,is_stmt
        MOV #0, *SP(#11) ; |88| 
	.dwpsn	file "./vision.c",line 89,column 13,is_stmt
        MOV #0, *SP(#12) ; |89| 
	.dwpsn	file "./vision.c",line 91,column 10,is_stmt
        MOV #0, *SP(#6) ; |91| 
        NOP       ;                     avoids Silicon Exception CPU_90
        NOP       ;                     avoids Silicon Exception CPU_90
	.dwpsn	file "./vision.c",line 91,column 17,is_stmt
        MOV *SP(#5), T1 ; |91| 
        MPYM *SP(#4), T1, AC0 ; |91| 

        MOV AC0, AR1 ; |91| 
||      MOV *SP(#6), AR2 ; |91| 

        CMP AR2 >= AR1, TC1 ; |91| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L24,TC1 ; |91| 
                                        ; branchcc occurs ; |91| 
$C$L8:    
$C$DW$L$_find_regions$2$B:
	.dwpsn	file "./vision.c",line 92,column 9,is_stmt

        MOV AR2, T0
||      MOV *SP(#4), T1 ; |92| 

$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("__remi")
	.dwattr $C$DW$72, DW_AT_TI_call
        CALL #__remi ; |92| 
                                        ; call occurs [#__remi] ; |92| 
        BCC $C$L9,T0 != #0 ; |92| 
                                        ; branchcc occurs ; |92| 
$C$DW$L$_find_regions$2$E:
$C$DW$L$_find_regions$3$B:
	.dwpsn	file "./vision.c",line 93,column 13,is_stmt
        ADD #1, *SP(#9) ; |93| 
$C$DW$L$_find_regions$3$E:
$C$L9:    
$C$DW$L$_find_regions$4$B:
	.dwpsn	file "./vision.c",line 96,column 9,is_stmt
        MOV *SP(#6), T0 ; |96| 
        MOV dbl(*SP(#0)), XAR3
        CMP *AR3(T0) == #1, TC1 ; |96| 
        BCC $C$L20,!TC1 ; |96| 
                                        ; branchcc occurs ; |96| 
$C$DW$L$_find_regions$4$E:
$C$DW$L$_find_regions$5$B:
	.dwpsn	file "./vision.c",line 97,column 13,is_stmt
        MOV T0, AR1
        MOV AR1, *SP(#11) ; |97| 
	.dwpsn	file "./vision.c",line 98,column 17,is_stmt
        MOV *SP(#6), AR1 ; |98| 
        ADD #1, AR1 ; |98| 
        MOV AR1, *SP(#7) ; |98| 
	.dwpsn	file "./vision.c",line 98,column 28,is_stmt
        MOV *SP(#6), AR1 ; |98| 

        ADD #3, AR1 ; |98| 
||      MOV *SP(#7), AR2 ; |98| 

        CMP AR2 >= AR1, TC1 ; |98| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L13,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$DW$L$_find_regions$5$E:
$C$L10:    
$C$DW$L$_find_regions$6$B:
	.dwpsn	file "./vision.c",line 99,column 17,is_stmt
        MOV *SP(#4), AR1 ; |99| 

        CMP AR2 != AR1, TC1 ; |99| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L11,TC1 ; |99| 
                                        ; branchcc occurs ; |99| 
$C$DW$L$_find_regions$6$E:
$C$DW$L$_find_regions$7$B:
	.dwpsn	file "./vision.c",line 100,column 21,is_stmt
        MOV #1, *SP(#10) ; |100| 
	.dwpsn	file "./vision.c",line 101,column 21,is_stmt
        B $C$L13  ; |101| 
                                        ; branch occurs ; |101| 
$C$DW$L$_find_regions$7$E:
$C$L11:    
$C$DW$L$_find_regions$8$B:
	.dwpsn	file "./vision.c",line 103,column 17,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |103| 
        BCC $C$L12,AR1 != #0 ; |103| 
                                        ; branchcc occurs ; |103| 
$C$DW$L$_find_regions$8$E:
$C$DW$L$_find_regions$9$B:
	.dwpsn	file "./vision.c",line 104,column 21,is_stmt
        MOV #1, *SP(#10) ; |104| 
	.dwpsn	file "./vision.c",line 105,column 21,is_stmt
        B $C$L13  ; |105| 
                                        ; branch occurs ; |105| 
$C$DW$L$_find_regions$9$E:
$C$L12:    
$C$DW$L$_find_regions$10$B:
	.dwpsn	file "./vision.c",line 98,column 37,is_stmt
        ADD #1, *SP(#7) ; |98| 
	.dwpsn	file "./vision.c",line 98,column 28,is_stmt
        MOV *SP(#6), AR1 ; |98| 

        ADD #3, AR1 ; |98| 
||      MOV *SP(#7), AR2 ; |98| 

        CMP AR2 < AR1, TC1 ; |98| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L10,TC1 ; |98| 
                                        ; branchcc occurs ; |98| 
$C$DW$L$_find_regions$10$E:
$C$L13:    
$C$DW$L$_find_regions$11$B:
	.dwpsn	file "./vision.c",line 108,column 13,is_stmt
        MOV *SP(#10), AR1 ; |108| 
        BCC $C$L14,AR1 == #0 ; |108| 
                                        ; branchcc occurs ; |108| 
$C$DW$L$_find_regions$11$E:
$C$DW$L$_find_regions$12$B:
	.dwpsn	file "./vision.c",line 109,column 17,is_stmt
        ADD #2, *SP(#6) ; |109| 
	.dwpsn	file "./vision.c",line 110,column 17,is_stmt
        B $C$L23  ; |110| 
                                        ; branch occurs ; |110| 
$C$DW$L$_find_regions$12$E:
$C$L14:    
$C$DW$L$_find_regions$13$B:
	.dwpsn	file "./vision.c",line 112,column 18,is_stmt
        MOV *SP(#9), AR1 ; |112| 
        ADD #1, AR1 ; |112| 
        MOV AR1, *SP(#7) ; |112| 
	.dwpsn	file "./vision.c",line 112,column 29,is_stmt
        MOV *SP(#9), AR1 ; |112| 

        ADD #3, AR1 ; |112| 
||      MOV *SP(#7), AR2 ; |112| 

        CMP AR2 >= AR1, TC1 ; |112| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L21,TC1 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$DW$L$_find_regions$13$E:
$C$L15:    
$C$DW$L$_find_regions$14$B:

$C$DW$73	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_bregx 0x24 13]
	.dwpsn	file "./vision.c",line 113,column 25,is_stmt
        MOV *SP(#4), T1 ; |113| 
        MOV *SP(#6), AC0 ; |113| 
        MACM *SP(#9), T1, AC0, AC0 ; |113| 
        MOV AC0, *SP(#13) ; |113| 
	.dwpsn	file "./vision.c",line 114,column 21,is_stmt
        MOV AC0, AR1
        MOV AR1, *SP(#8) ; |114| 
	.dwpsn	file "./vision.c",line 114,column 32,is_stmt

        MOV *SP(#13), AR1 ; |114| 
||      MOV AC0, AR2 ; |114| 

        ADD #3, AR1 ; |114| 

        CMP AR2 >= AR1, TC1 ; |114| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L19,TC1 ; |114| 
                                        ; branchcc occurs ; |114| 
$C$DW$L$_find_regions$14$E:
$C$L16:    
$C$DW$L$_find_regions$15$B:
	.dwpsn	file "./vision.c",line 115,column 21,is_stmt

        MOV AR2, T0
||      MOV *SP(#4), T1 ; |115| 

$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("__remi")
	.dwattr $C$DW$75, DW_AT_TI_call
        CALL #__remi ; |115| 
                                        ; call occurs [#__remi] ; |115| 
        BCC $C$L17,T0 != #0 ; |115| 
                                        ; branchcc occurs ; |115| 
$C$DW$L$_find_regions$15$E:
$C$DW$L$_find_regions$16$B:
	.dwpsn	file "./vision.c",line 116,column 25,is_stmt
        MOV #1, *SP(#10) ; |116| 
$C$DW$L$_find_regions$16$E:
$C$L17:    
$C$DW$L$_find_regions$17$B:
	.dwpsn	file "./vision.c",line 118,column 21,is_stmt
        MOV *SP(#8), T0 ; |118| 
        MOV dbl(*SP(#0)), XAR3
        MOV *AR3(T0), AR1 ; |118| 
        BCC $C$L18,AR1 != #0 ; |118| 
                                        ; branchcc occurs ; |118| 
$C$DW$L$_find_regions$17$E:
$C$DW$L$_find_regions$18$B:
	.dwpsn	file "./vision.c",line 119,column 25,is_stmt
        MOV #1, *SP(#10) ; |119| 
$C$DW$L$_find_regions$18$E:
$C$L18:    
$C$DW$L$_find_regions$19$B:
	.dwpsn	file "./vision.c",line 121,column 21,is_stmt
        MOV *SP(#10), AR1 ; |121| 
        BCC $C$L19,AR1 != #0 ; |121| 
                                        ; branchcc occurs ; |121| 
$C$DW$L$_find_regions$19$E:
$C$DW$L$_find_regions$20$B:
	.dwpsn	file "./vision.c",line 122,column 25,is_stmt
	.dwpsn	file "./vision.c",line 114,column 47,is_stmt
        ADD #1, *SP(#8) ; |114| 
	.dwpsn	file "./vision.c",line 114,column 32,is_stmt
        MOV *SP(#13), AR1 ; |114| 

        ADD #3, AR1 ; |114| 
||      MOV *SP(#8), AR2 ; |114| 

        CMP AR2 < AR1, TC1 ; |114| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L16,TC1 ; |114| 
                                        ; branchcc occurs ; |114| 
$C$DW$L$_find_regions$20$E:
$C$L19:    
$C$DW$L$_find_regions$21$B:
	.dwpsn	file "./vision.c",line 125,column 17,is_stmt
        MOV *SP(#10), AR1 ; |125| 
        BCC $C$L21,AR1 != #0 ; |125| 
                                        ; branchcc occurs ; |125| 
$C$DW$L$_find_regions$21$E:
$C$DW$L$_find_regions$22$B:
	.dwpsn	file "./vision.c",line 126,column 25,is_stmt
	.dwendtag $C$DW$73

	.dwpsn	file "./vision.c",line 112,column 40,is_stmt
        ADD #1, *SP(#7) ; |112| 
	.dwpsn	file "./vision.c",line 112,column 29,is_stmt
        MOV *SP(#9), AR1 ; |112| 

        ADD #3, AR1 ; |112| 
||      MOV *SP(#7), AR2 ; |112| 

        CMP AR2 < AR1, TC1 ; |112| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L15,TC1 ; |112| 
                                        ; branchcc occurs ; |112| 
$C$DW$L$_find_regions$22$E:
$C$DW$L$_find_regions$23$B:
	.dwpsn	file "./vision.c",line 129,column 9,is_stmt
        B $C$L21  ; |129| 
                                        ; branch occurs ; |129| 
$C$DW$L$_find_regions$23$E:
$C$L20:    
$C$DW$L$_find_regions$24$B:
	.dwpsn	file "./vision.c",line 131,column 13,is_stmt
        MOV #1, *SP(#10) ; |131| 
$C$DW$L$_find_regions$24$E:
$C$L21:    
$C$DW$L$_find_regions$25$B:
	.dwpsn	file "./vision.c",line 134,column 9,is_stmt
        MOV *SP(#10), AR1 ; |134| 
        BCC $C$L22,AR1 == #0 ; |134| 
                                        ; branchcc occurs ; |134| 
$C$DW$L$_find_regions$25$E:
$C$DW$L$_find_regions$26$B:
	.dwpsn	file "./vision.c",line 135,column 13,is_stmt
        MOV #0, *SP(#11) ; |135| 
	.dwpsn	file "./vision.c",line 136,column 13,is_stmt
        B $C$L23  ; |136| 
                                        ; branch occurs ; |136| 
$C$DW$L$_find_regions$26$E:
$C$L22:    
$C$DW$L$_find_regions$27$B:
	.dwpsn	file "./vision.c",line 138,column 9,is_stmt
        MOV dbl(*SP(#2)), XAR3
        MOV *SP(#12), T0 ; |138| 
        MOV *SP(#11), AR1 ; |138| 
        MOV AR1, *AR3(T0) ; |138| 
	.dwpsn	file "./vision.c",line 139,column 9,is_stmt
        ADD #1, *SP(#12) ; |139| 
$C$DW$L$_find_regions$27$E:
$C$L23:    
$C$DW$L$_find_regions$28$B:
	.dwpsn	file "./vision.c",line 91,column 33,is_stmt
        ADD #1, *SP(#6) ; |91| 
        NOP       ;                     avoids Silicon Exception CPU_90
        NOP       ;                     avoids Silicon Exception CPU_90
	.dwpsn	file "./vision.c",line 91,column 17,is_stmt
        MOV *SP(#5), T1 ; |91| 
        MPYM *SP(#4), T1, AC0 ; |91| 

        MOV AC0, AR1 ; |91| 
||      MOV *SP(#6), AR2 ; |91| 

        CMP AR2 < AR1, TC1 ; |91| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L8,TC1 ; |91| 
                                        ; branchcc occurs ; |91| 
$C$DW$L$_find_regions$28$E:
	.dwpsn	file "./vision.c",line 142,column 1,is_stmt
$C$L24:    
        AADD #15, SP
	.dwcfi	cfa_offset, 1
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$77	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$77, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L8:1:1725637924")
	.dwattr $C$DW$77, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x8c)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_find_regions$2$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_find_regions$2$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_find_regions$13$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_find_regions$13$E)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_find_regions$23$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_find_regions$23$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_find_regions$24$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_find_regions$24$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_find_regions$25$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_find_regions$25$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_find_regions$3$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_find_regions$3$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_find_regions$4$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_find_regions$4$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_find_regions$5$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_find_regions$5$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$_find_regions$7$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$_find_regions$7$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_find_regions$9$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_find_regions$9$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_find_regions$11$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_find_regions$11$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$_find_regions$12$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$_find_regions$12$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_find_regions$26$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_find_regions$26$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$_find_regions$27$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$_find_regions$27$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$_find_regions$28$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$_find_regions$28$E)

$C$DW$93	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$93, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L15:2:1725637924")
	.dwattr $C$DW$93, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x80)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$_find_regions$14$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$_find_regions$14$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_find_regions$21$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_find_regions$21$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_find_regions$22$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_find_regions$22$E)

$C$DW$97	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$97, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L16:3:1725637924")
	.dwattr $C$DW$97, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x7c)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_find_regions$15$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_find_regions$15$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$_find_regions$16$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$_find_regions$16$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$_find_regions$17$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$_find_regions$17$E)
$C$DW$101	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$101, DW_AT_low_pc($C$DW$L$_find_regions$18$B)
	.dwattr $C$DW$101, DW_AT_high_pc($C$DW$L$_find_regions$18$E)
$C$DW$102	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$102, DW_AT_low_pc($C$DW$L$_find_regions$19$B)
	.dwattr $C$DW$102, DW_AT_high_pc($C$DW$L$_find_regions$19$E)
$C$DW$103	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$103, DW_AT_low_pc($C$DW$L$_find_regions$20$B)
	.dwattr $C$DW$103, DW_AT_high_pc($C$DW$L$_find_regions$20$E)
	.dwendtag $C$DW$97

	.dwendtag $C$DW$93


$C$DW$104	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$104, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L10:2:1725637924")
	.dwattr $C$DW$104, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x62)
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x6b)
$C$DW$105	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$105, DW_AT_low_pc($C$DW$L$_find_regions$6$B)
	.dwattr $C$DW$105, DW_AT_high_pc($C$DW$L$_find_regions$6$E)
$C$DW$106	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$106, DW_AT_low_pc($C$DW$L$_find_regions$8$B)
	.dwattr $C$DW$106, DW_AT_high_pc($C$DW$L$_find_regions$8$E)
$C$DW$107	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$107, DW_AT_low_pc($C$DW$L$_find_regions$10$B)
	.dwattr $C$DW$107, DW_AT_high_pc($C$DW$L$_find_regions$10$E)
	.dwendtag $C$DW$104

	.dwendtag $C$DW$77

	.dwattr $C$DW$56, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.global	_classification

$C$DW$108	.dwtag  DW_TAG_subprogram, DW_AT_name("classification")
	.dwattr $C$DW$108, DW_AT_low_pc(_classification)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_classification")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "./vision.c",line 143,column 78,is_stmt,address _classification

	.dwfde $C$DW$CIE, _classification
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_threshold")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg17]
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg19]
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg12]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-13, SP
	.dwcfi	cfa_offset, 14
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("image_threshold")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_image_threshold")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("k")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("isBox")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_isBox")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("isShape")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_isShape")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("class_pos_x")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_class_pos_x")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_bregx 0x24 11]
        MOV T0, *SP(#4) ; |143| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 148,column 13,is_stmt
        MOV #0, *SP(#11) ; |148| 
	.dwpsn	file "./vision.c",line 150,column 5,is_stmt

        MOV *SP(#4), T0 ; |150| 
||      MOV #3, T1

$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("__remi")
	.dwattr $C$DW$122, DW_AT_TI_call
        CALL #__remi ; |150| 
                                        ; call occurs [#__remi] ; |150| 
        BCC $C$L25,T0 != #0 ; |150| 
                                        ; branchcc occurs ; |150| 
	.dwpsn	file "./vision.c",line 151,column 9,is_stmt

        MOV #3, T1
||      MOV *SP(#4), T0 ; |151| 

$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("__divi")
	.dwattr $C$DW$123, DW_AT_TI_call
        CALL #__divi ; |151| 
                                        ; call occurs [#__divi] ; |151| 
        MOV T0, *SP(#8) ; |151| 
	.dwpsn	file "./vision.c",line 152,column 5,is_stmt
        B $C$L26  ; |152| 
                                        ; branch occurs ; |152| 
$C$L25:    
	.dwpsn	file "./vision.c",line 154,column 9,is_stmt
        MOV *SP(#4), AC0 ; |154| 
        BFXTR #0x8000, AC0, AR1 ; |154| 
        ADD AC0, AR1 ; |154| 
        SFTS AR1, #-1 ; |154| 
        MOV AR1, *SP(#8) ; |154| 
$C$L26:    
	.dwpsn	file "./vision.c",line 156,column 5,is_stmt
        MOV #0, *SP(#5) ; |156| 
	.dwpsn	file "./vision.c",line 157,column 11,is_stmt
        MOV *SP(#5), T0 ; |157| 
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(T0) == #-1, TC1 ; |157| 
        BCC $C$L44,TC1 ; |157| 
                                        ; branchcc occurs ; |157| 
$C$L27:    
$C$DW$L$_classification$5$B:
	.dwpsn	file "./vision.c",line 159,column 13,is_stmt
        MOV #0, *SP(#7) ; |159| 
	.dwpsn	file "./vision.c",line 159,column 20,is_stmt

        MOV *SP(#7), AR1 ; |159| 
||      MOV #3, AR2

        CMP AR1 >= AR2, TC1 ; |159| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L34,TC1 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$DW$L$_classification$5$E:
$C$L28:    
$C$DW$L$_classification$6$B:
	.dwpsn	file "./vision.c",line 160,column 17,is_stmt
        MOV *SP(#5), T0 ; |160| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |160| 
        MOV AR1, *SP(#6) ; |160| 
	.dwpsn	file "./vision.c",line 160,column 31,is_stmt
        MOV *SP(#5), T0 ; |160| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |160| 

        ADD #3, AR1 ; |160| 
||      MOV *SP(#6), AR2 ; |160| 

        CMP AR2 >= AR1, TC1 ; |160| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L33,TC1 ; |160| 
                                        ; branchcc occurs ; |160| 
$C$DW$L$_classification$6$E:
$C$L29:    
$C$DW$L$_classification$7$B:
	.dwpsn	file "./vision.c",line 161,column 17,is_stmt

        MOV AR2, AC0 ; |161| 
||      MOV *SP(#8), T1 ; |161| 

        MOV dbl(*SP(#0)), XAR3
        MACM *SP(#7), T1, AC0, AC0 ; |161| 
        MOV AC0, T0 ; |161| 
        MOV *SP(#11), AC0 ; |161| 
        MACM *SP(#7), T1, AC0, AC0 ; |161| 

        MOV AC0, T0 ; |161| 
||      MOV *AR3(T0), AR1 ; |161| 

        AMOV #_BOX_CLASSIFICATION, XAR3 ; |161| 
        MOV *AR3(T0), AR2 ; |161| 
        SUB #20, AR2, AR2 ; |161| 

        CMP AR2 < AR1, TC1 ; |161| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L30,TC1 ; |161| 
                                        ; branchcc occurs ; |161| 
$C$DW$L$_classification$7$E:
$C$DW$L$_classification$8$B:
        MOV *SP(#11), AC0 ; |161| 
        MACM *SP(#7), T1, AC0, AC0 ; |161| 
        MOV AC0, T0 ; |161| 
        MOV *AR3(T0), AR1 ; |161| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC0 ; |161| 
        MACM *SP(#7), T1, AC0, AC0 ; |161| 
        MOV AC0, T0 ; |161| 
        MOV *AR3(T0), AR2 ; |161| 

        CMP AR2 < AR1, TC1 ; |161| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L31,TC1 ; |161| 
                                        ; branchcc occurs ; |161| 
$C$DW$L$_classification$8$E:
$C$L30:    
$C$DW$L$_classification$9$B:
	.dwpsn	file "./vision.c",line 162,column 21,is_stmt
        ADD #1, *SP(#11) ; |162| 
	.dwpsn	file "./vision.c",line 163,column 17,is_stmt
        B $C$L32  ; |163| 
                                        ; branch occurs ; |163| 
$C$DW$L$_classification$9$E:
$C$L31:    
$C$DW$L$_classification$10$B:
	.dwpsn	file "./vision.c",line 165,column 21,is_stmt
        MOV #0, *SP(#9) ; |165| 
	.dwpsn	file "./vision.c",line 166,column 21,is_stmt
        B $C$L33  ; |166| 
                                        ; branch occurs ; |166| 
$C$DW$L$_classification$10$E:
$C$L32:    
$C$DW$L$_classification$11$B:
	.dwpsn	file "./vision.c",line 160,column 47,is_stmt
        ADD #1, *SP(#6) ; |160| 
	.dwpsn	file "./vision.c",line 160,column 31,is_stmt
        MOV *SP(#5), T0 ; |160| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |160| 

        ADD #3, AR1 ; |160| 
||      MOV *SP(#6), AR2 ; |160| 

        CMP AR2 < AR1, TC1 ; |160| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L29,TC1 ; |160| 
                                        ; branchcc occurs ; |160| 
$C$DW$L$_classification$11$E:
$C$L33:    
$C$DW$L$_classification$12$B:
	.dwpsn	file "./vision.c",line 169,column 13,is_stmt
        MOV #0, *SP(#11) ; |169| 
	.dwpsn	file "./vision.c",line 159,column 27,is_stmt
        ADD #1, *SP(#7) ; |159| 
	.dwpsn	file "./vision.c",line 159,column 20,is_stmt

        MOV *SP(#7), AR1 ; |159| 
||      MOV #3, AR2

        CMP AR1 < AR2, TC1 ; |159| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L28,TC1 ; |159| 
                                        ; branchcc occurs ; |159| 
$C$DW$L$_classification$12$E:
$C$L34:    
$C$DW$L$_classification$13$B:
	.dwpsn	file "./vision.c",line 171,column 9,is_stmt
        MOV *SP(#9), AR1 ; |171| 
        BCC $C$L35,AR1 == #0 ; |171| 
                                        ; branchcc occurs ; |171| 
$C$DW$L$_classification$13$E:
$C$DW$L$_classification$14$B:
	.dwpsn	file "./vision.c",line 172,column 13,is_stmt
        B $C$L43  ; |172| 
                                        ; branch occurs ; |172| 
$C$DW$L$_classification$14$E:
$C$L35:    
$C$DW$L$_classification$16$B:
	.dwpsn	file "./vision.c",line 175,column 17,is_stmt
        MOV #0, *SP(#7) ; |175| 
	.dwpsn	file "./vision.c",line 175,column 24,is_stmt
        MOV *SP(#7), AR1 ; |175| 

        CMP AR1 >= AR2, TC1 ; |175| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L42,TC1 ; |175| 
                                        ; branchcc occurs ; |175| 
$C$DW$L$_classification$16$E:
$C$L36:    
$C$DW$L$_classification$17$B:
	.dwpsn	file "./vision.c",line 176,column 21,is_stmt
        MOV *SP(#5), T0 ; |176| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |176| 
        MOV AR1, *SP(#6) ; |176| 
	.dwpsn	file "./vision.c",line 176,column 35,is_stmt
        MOV *SP(#5), T0 ; |176| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |176| 

        ADD #3, AR1 ; |176| 
||      MOV *SP(#6), AR2 ; |176| 

        CMP AR2 >= AR1, TC1 ; |176| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L41,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$DW$L$_classification$17$E:
$C$L37:    
$C$DW$L$_classification$18$B:
	.dwpsn	file "./vision.c",line 177,column 21,is_stmt

        MOV AR2, AC0 ; |177| 
||      MOV *SP(#8), T1 ; |177| 

        MOV dbl(*SP(#0)), XAR3
        MACM *SP(#7), T1, AC0, AC0 ; |177| 
        MOV AC0, T0 ; |177| 
        MOV *SP(#11), AC0 ; |177| 
        MACM *SP(#7), T1, AC0, AC0 ; |177| 

        MOV AC0, T0 ; |177| 
||      MOV *AR3(T0), AR1 ; |177| 

        AMOV #_SHAPE_CLASSIFICATION, XAR3 ; |177| 
        MOV *AR3(T0), AR2 ; |177| 
        SUB #20, AR2, AR2 ; |177| 

        CMP AR2 < AR1, TC1 ; |177| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L38,TC1 ; |177| 
                                        ; branchcc occurs ; |177| 
$C$DW$L$_classification$18$E:
$C$DW$L$_classification$19$B:
        MOV *SP(#11), AC0 ; |177| 
        MACM *SP(#7), T1, AC0, AC0 ; |177| 
        MOV AC0, T0 ; |177| 
        MOV *AR3(T0), AR1 ; |177| 
        MOV dbl(*SP(#0)), XAR3
        MOV *SP(#6), AC0 ; |177| 
        MACM *SP(#7), T1, AC0, AC0 ; |177| 
        MOV AC0, T0 ; |177| 
        MOV *AR3(T0), AR2 ; |177| 

        CMP AR2 < AR1, TC1 ; |177| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L39,TC1 ; |177| 
                                        ; branchcc occurs ; |177| 
$C$DW$L$_classification$19$E:
$C$L38:    
$C$DW$L$_classification$20$B:
	.dwpsn	file "./vision.c",line 178,column 25,is_stmt
        ADD #1, *SP(#11) ; |178| 
	.dwpsn	file "./vision.c",line 179,column 21,is_stmt
        B $C$L40  ; |179| 
                                        ; branch occurs ; |179| 
$C$DW$L$_classification$20$E:
$C$L39:    
$C$DW$L$_classification$21$B:
	.dwpsn	file "./vision.c",line 181,column 25,is_stmt
        MOV #0, *SP(#10) ; |181| 
	.dwpsn	file "./vision.c",line 182,column 25,is_stmt
        B $C$L41  ; |182| 
                                        ; branch occurs ; |182| 
$C$DW$L$_classification$21$E:
$C$L40:    
$C$DW$L$_classification$22$B:
	.dwpsn	file "./vision.c",line 176,column 51,is_stmt
        ADD #1, *SP(#6) ; |176| 
	.dwpsn	file "./vision.c",line 176,column 35,is_stmt
        MOV *SP(#5), T0 ; |176| 
        MOV dbl(*SP(#2)), XAR3
        MOV *AR3(T0), AR1 ; |176| 

        ADD #3, AR1 ; |176| 
||      MOV *SP(#6), AR2 ; |176| 

        CMP AR2 < AR1, TC1 ; |176| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L37,TC1 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$DW$L$_classification$22$E:
$C$L41:    
$C$DW$L$_classification$23$B:
	.dwpsn	file "./vision.c",line 185,column 17,is_stmt
        MOV #0, *SP(#11) ; |185| 
	.dwpsn	file "./vision.c",line 175,column 31,is_stmt
        ADD #1, *SP(#7) ; |175| 
	.dwpsn	file "./vision.c",line 175,column 24,is_stmt

        MOV *SP(#7), AR1 ; |175| 
||      MOV #3, AR2

        CMP AR1 < AR2, TC1 ; |175| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L36,TC1 ; |175| 
                                        ; branchcc occurs ; |175| 
$C$DW$L$_classification$23$E:
$C$L42:    
$C$DW$L$_classification$24$B:
	.dwpsn	file "./vision.c",line 189,column 9,is_stmt
        ADD #1, *SP(#5) ; |189| 
$C$DW$L$_classification$24$E:
$C$L43:    
$C$DW$L$_classification$25$B:
	.dwpsn	file "./vision.c",line 157,column 11,is_stmt
        MOV *SP(#5), T0 ; |157| 
        MOV dbl(*SP(#2)), XAR3
        CMP *AR3(T0) == #-1, TC1 ; |157| 
        BCC $C$L27,!TC1 ; |157| 
                                        ; branchcc occurs ; |157| 
$C$DW$L$_classification$25$E:
	.dwpsn	file "./vision.c",line 193,column 1,is_stmt
$C$L44:    
        AADD #13, SP
	.dwcfi	cfa_offset, 1
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$125	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$125, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L27:1:1725637924")
	.dwattr $C$DW$125, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x9d)
	.dwattr $C$DW$125, DW_AT_TI_end_line(0xbe)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$_classification$5$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$_classification$5$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$_classification$16$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$_classification$16$E)
$C$DW$128	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$128, DW_AT_low_pc($C$DW$L$_classification$13$B)
	.dwattr $C$DW$128, DW_AT_high_pc($C$DW$L$_classification$13$E)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$_classification$14$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$_classification$14$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$_classification$24$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$_classification$24$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_classification$25$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_classification$25$E)

$C$DW$132	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$132, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L36:2:1725637924")
	.dwattr $C$DW$132, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$132, DW_AT_TI_end_line(0xba)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$_classification$17$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$_classification$17$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$_classification$21$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$_classification$21$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$_classification$23$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$_classification$23$E)

$C$DW$136	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$136, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L37:3:1725637924")
	.dwattr $C$DW$136, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$136, DW_AT_TI_end_line(0xb8)
$C$DW$137	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$137, DW_AT_low_pc($C$DW$L$_classification$18$B)
	.dwattr $C$DW$137, DW_AT_high_pc($C$DW$L$_classification$18$E)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$_classification$19$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$_classification$19$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$_classification$20$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$_classification$20$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$_classification$22$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$_classification$22$E)
	.dwendtag $C$DW$136

	.dwendtag $C$DW$132


$C$DW$141	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$141, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L28:2:1725637924")
	.dwattr $C$DW$141, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$141, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$141, DW_AT_TI_end_line(0xaa)
$C$DW$142	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$142, DW_AT_low_pc($C$DW$L$_classification$6$B)
	.dwattr $C$DW$142, DW_AT_high_pc($C$DW$L$_classification$6$E)
$C$DW$143	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$143, DW_AT_low_pc($C$DW$L$_classification$10$B)
	.dwattr $C$DW$143, DW_AT_high_pc($C$DW$L$_classification$10$E)
$C$DW$144	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$144, DW_AT_low_pc($C$DW$L$_classification$12$B)
	.dwattr $C$DW$144, DW_AT_high_pc($C$DW$L$_classification$12$E)

$C$DW$145	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$145, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L29:3:1725637924")
	.dwattr $C$DW$145, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0xa0)
	.dwattr $C$DW$145, DW_AT_TI_end_line(0xa8)
$C$DW$146	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$146, DW_AT_low_pc($C$DW$L$_classification$7$B)
	.dwattr $C$DW$146, DW_AT_high_pc($C$DW$L$_classification$7$E)
$C$DW$147	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$147, DW_AT_low_pc($C$DW$L$_classification$8$B)
	.dwattr $C$DW$147, DW_AT_high_pc($C$DW$L$_classification$8$E)
$C$DW$148	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$148, DW_AT_low_pc($C$DW$L$_classification$9$B)
	.dwattr $C$DW$148, DW_AT_high_pc($C$DW$L$_classification$9$E)
$C$DW$149	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$149, DW_AT_low_pc($C$DW$L$_classification$11$B)
	.dwattr $C$DW$149, DW_AT_high_pc($C$DW$L$_classification$11$E)
	.dwendtag $C$DW$145

	.dwendtag $C$DW$141

	.dwendtag $C$DW$125

	.dwattr $C$DW$108, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.global	_segmentation

$C$DW$150	.dwtag  DW_TAG_subprogram, DW_AT_name("segmentation")
	.dwattr $C$DW$150, DW_AT_low_pc(_segmentation)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_segmentation")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(0x12)
	.dwpsn	file "./vision.c",line 195,column 91,is_stmt,address _segmentation

	.dwfde $C$DW$CIE, _segmentation
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg17]
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg19]
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cords")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg21]
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg12]
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
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-17, SP
	.dwcfi	cfa_offset, 18
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("cords")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_cords")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("colm")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_colm")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("row")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_row")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_bregx 0x24 9]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_bregx 0x24 10]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_bregx 0x24 12]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("start_cords")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_start_cords")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_bregx 0x24 14]
        MOV T0, *SP(#6) ; |195| 
        MOV XAR2, dbl(*SP(#4))
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 199,column 15,is_stmt

        MOV *SP(#6), T0 ; |199| 
||      MOV #1, T1

$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_calloc")
	.dwattr $C$DW$165, DW_AT_TI_call
        CALL #_calloc ; |199| 
                                        ; call occurs [#_calloc] ; |199| 
        MOV XAR0, dbl(*SP(#10))
	.dwpsn	file "./vision.c",line 200,column 15,is_stmt

        MOV *SP(#6), T0 ; |200| 
||      MOV #1, T1

$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_calloc")
	.dwattr $C$DW$166, DW_AT_TI_call
        CALL #_calloc ; |200| 
                                        ; call occurs [#_calloc] ; |200| 
        MOV XAR0, dbl(*SP(#12))
	.dwpsn	file "./vision.c",line 201,column 5,is_stmt
        MOV *SP(#6), T0 ; |201| 
        MOV dbl(*SP(#0)), XAR0
        MOV dbl(*SP(#10)), XAR1
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_memcpy")
	.dwattr $C$DW$167, DW_AT_TI_call
        CALL #_memcpy ; |201| 
                                        ; call occurs [#_memcpy] ; |201| 
	.dwpsn	file "./vision.c",line 203,column 5,is_stmt

        MOV *SP(#6), T0 ; |203| 
||      MOV #3, T1

$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("__remi")
	.dwattr $C$DW$168, DW_AT_TI_call
        CALL #__remi ; |203| 
                                        ; call occurs [#__remi] ; |203| 
        BCC $C$L45,T0 != #0 ; |203| 
                                        ; branchcc occurs ; |203| 
	.dwpsn	file "./vision.c",line 204,column 9,is_stmt

        MOV #3, T1
||      MOV *SP(#6), T0 ; |204| 

$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("__divi")
	.dwattr $C$DW$169, DW_AT_TI_call
        CALL #__divi ; |204| 
                                        ; call occurs [#__divi] ; |204| 
        MOV T0, *SP(#7) ; |204| 
	.dwpsn	file "./vision.c",line 205,column 9,is_stmt
        MOV #3, *SP(#8) ; |205| 
	.dwpsn	file "./vision.c",line 206,column 5,is_stmt
        B $C$L46  ; |206| 
                                        ; branch occurs ; |206| 
$C$L45:    
	.dwpsn	file "./vision.c",line 208,column 9,is_stmt
        MOV *SP(#6), AC0 ; |208| 
        BFXTR #0x8000, AC0, AR1 ; |208| 
        ADD AC0, AR1 ; |208| 
        SFTS AR1, #-1 ; |208| 
        MOV AR1, *SP(#7) ; |208| 
	.dwpsn	file "./vision.c",line 209,column 9,is_stmt
        MOV #2, *SP(#8) ; |209| 
$C$L46:    
	.dwpsn	file "./vision.c",line 212,column 5,is_stmt
        MOV *SP(#7), T0 ; |212| 
        MOV *SP(#8), T1 ; |212| 
        MOV dbl(*SP(#10)), XAR0
        MOV dbl(*SP(#12)), XAR1
        MOV #200, AR2 ; |212| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_IMG_threshold")
	.dwattr $C$DW$170, DW_AT_TI_call
        CALL #_IMG_threshold ; |212| 
                                        ; call occurs [#_IMG_threshold] ; |212| 
	.dwpsn	file "./vision.c",line 214,column 9,is_stmt
        MOV #0, *SP(#9) ; |214| 
	.dwpsn	file "./vision.c",line 214,column 16,is_stmt
        MOV *SP(#6), AR1 ; |214| 
        MOV *SP(#9), AR2 ; |214| 

        CMP AR2 >= AR1, TC1 ; |214| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L50,TC1 ; |214| 
                                        ; branchcc occurs ; |214| 
$C$L47:    
$C$DW$L$_segmentation$5$B:
	.dwpsn	file "./vision.c",line 215,column 9,is_stmt
        MOV AR2, T0
        MOV dbl(*SP(#12)), XAR3
        MOV *AR3(T0), AR1 ; |215| 
        BCC $C$L48,AR1 != #0 ; |215| 
                                        ; branchcc occurs ; |215| 
$C$DW$L$_segmentation$5$E:
$C$DW$L$_segmentation$6$B:
	.dwpsn	file "./vision.c",line 216,column 13,is_stmt
        B $C$L49  ; |216| 
                                        ; branch occurs ; |216| 
$C$DW$L$_segmentation$6$E:
$C$L48:    
$C$DW$L$_segmentation$8$B:
	.dwpsn	file "./vision.c",line 218,column 14,is_stmt
        MOV *AR3(T0), AR1 ; |218| 
        BCC $C$L49,AR1 == #0 ; |218| 
                                        ; branchcc occurs ; |218| 
$C$DW$L$_segmentation$8$E:
$C$DW$L$_segmentation$9$B:
	.dwpsn	file "./vision.c",line 219,column 13,is_stmt
        MOV #1, *AR3(T0) ; |219| 
$C$DW$L$_segmentation$9$E:
$C$L49:    
$C$DW$L$_segmentation$10$B:
	.dwpsn	file "./vision.c",line 214,column 26,is_stmt
        ADD #1, *SP(#9) ; |214| 
	.dwpsn	file "./vision.c",line 214,column 16,is_stmt
        MOV *SP(#6), AR1 ; |214| 
        MOV *SP(#9), AR2 ; |214| 

        CMP AR2 < AR1, TC1 ; |214| 
||      NOP       ;                     avoids Silicon Exception CPU_24

        BCC $C$L47,TC1 ; |214| 
                                        ; branchcc occurs ; |214| 
$C$DW$L$_segmentation$10$E:
$C$L50:    
	.dwpsn	file "./vision.c",line 223,column 15,is_stmt
        MOV #1, T1
        MOV #40, T0 ; |223| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_calloc")
	.dwattr $C$DW$171, DW_AT_TI_call
        CALL #_calloc ; |223| 
                                        ; call occurs [#_calloc] ; |223| 
        MOV XAR0, dbl(*SP(#14))
	.dwpsn	file "./vision.c",line 224,column 5,is_stmt
        MOV #40, T1 ; |224| 
        MOV #-1, T0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_memset")
	.dwattr $C$DW$172, DW_AT_TI_call
        CALL #_memset ; |224| 
                                        ; call occurs [#_memset] ; |224| 
	.dwpsn	file "./vision.c",line 225,column 5,is_stmt
        MOV *SP(#7), T0 ; |225| 
        MOV *SP(#8), T1 ; |225| 
        MOV dbl(*SP(#12)), XAR0
        MOV dbl(*SP(#14)), XAR1
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_find_regions")
	.dwattr $C$DW$173, DW_AT_TI_call
        CALL #_find_regions ; |225| 
                                        ; call occurs [#_find_regions] ; |225| 
	.dwpsn	file "./vision.c",line 227,column 5,is_stmt
        MOV *SP(#6), T0 ; |227| 
        MOV dbl(*SP(#12)), XAR1
        MOV dbl(*SP(#2)), XAR0
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_memcpy")
	.dwattr $C$DW$174, DW_AT_TI_call
        CALL #_memcpy ; |227| 
                                        ; call occurs [#_memcpy] ; |227| 
	.dwpsn	file "./vision.c",line 228,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR2
        MOV dbl(*SP(#14)), XAR3
        RPT #39   ; |228| 
                                            ; loop starts ; |228| 
$C$L51:    
$C$DW$L$_segmentation$12$B:
            MOV *AR3+, *AR2+ ; |228| 
                                        ; loop ends ; |228| 
$C$DW$L$_segmentation$12$E:
$C$L52:    
	.dwpsn	file "./vision.c",line 231,column 5,is_stmt
        MOV dbl(*SP(#14)), XAR0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_free")
	.dwattr $C$DW$175, DW_AT_TI_call
        CALL #_free ; |231| 
                                        ; call occurs [#_free] ; |231| 
	.dwpsn	file "./vision.c",line 232,column 5,is_stmt
        MOV dbl(*SP(#10)), XAR0
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_free")
	.dwattr $C$DW$176, DW_AT_TI_call
        CALL #_free ; |232| 
                                        ; call occurs [#_free] ; |232| 
	.dwpsn	file "./vision.c",line 233,column 5,is_stmt
        MOV dbl(*SP(#12)), XAR0
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_free")
	.dwattr $C$DW$177, DW_AT_TI_call
        CALL #_free ; |233| 
                                        ; call occurs [#_free] ; |233| 
	.dwpsn	file "./vision.c",line 234,column 5,is_stmt
	.dwpsn	file "./vision.c",line 235,column 1,is_stmt
        AADD #17, SP
	.dwcfi	cfa_offset, 1
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$179	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$179, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L51:1:1725637924")
	.dwattr $C$DW$179, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0xe4)
	.dwattr $C$DW$179, DW_AT_TI_end_line(0xe4)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$_segmentation$12$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$_segmentation$12$E)
	.dwendtag $C$DW$179


$C$DW$181	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$181, DW_AT_name("/home/santiago/Research/DSPFuzz/on_board/test_programs/vision.asm:$C$L47:1:1725637924")
	.dwattr $C$DW$181, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0xd6)
	.dwattr $C$DW$181, DW_AT_TI_end_line(0xdd)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$_segmentation$5$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$_segmentation$5$E)
$C$DW$183	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$183, DW_AT_low_pc($C$DW$L$_segmentation$6$B)
	.dwattr $C$DW$183, DW_AT_high_pc($C$DW$L$_segmentation$6$E)
$C$DW$184	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$184, DW_AT_low_pc($C$DW$L$_segmentation$8$B)
	.dwattr $C$DW$184, DW_AT_high_pc($C$DW$L$_segmentation$8$E)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_segmentation$9$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_segmentation$9$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$_segmentation$10$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$_segmentation$10$E)
	.dwendtag $C$DW$181

	.dwattr $C$DW$150, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"
	.global	_feature_extraction

$C$DW$187	.dwtag  DW_TAG_subprogram, DW_AT_name("feature_extraction")
	.dwattr $C$DW$187, DW_AT_low_pc(_feature_extraction)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_feature_extraction")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "./vision.c",line 237,column 79,is_stmt,address _feature_extraction

	.dwfde $C$DW$CIE, _feature_extraction
$C$DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_in")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg17]
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image_out")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg19]
$C$DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: feature_extraction                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL  *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (5 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_feature_extraction:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-5, SP
	.dwcfi	cfa_offset, 6
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("image_in")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_image_in")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("image_out")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_image_out")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_bregx 0x24 4]
        MOV T0, *SP(#4) ; |237| 
        MOV XAR1, dbl(*SP(#2))
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 239,column 1,is_stmt
        AADD #5, SP
	.dwcfi	cfa_offset, 1
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$187, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text"
	.global	_process_image

$C$DW$195	.dwtag  DW_TAG_subprogram, DW_AT_name("process_image")
	.dwattr $C$DW$195, DW_AT_low_pc(_process_image)
	.dwattr $C$DW$195, DW_AT_high_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_process_image")
	.dwattr $C$DW$195, DW_AT_external
	.dwattr $C$DW$195, DW_AT_TI_begin_file("./vision.c")
	.dwattr $C$DW$195, DW_AT_TI_begin_line(0xf1)
	.dwattr $C$DW$195, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$195, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "./vision.c",line 241,column 55,is_stmt,address _process_image

	.dwfde $C$DW$CIE, _process_image
$C$DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_name("raw_sample")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg17]
$C$DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]
;*******************************************************************************
;* FUNCTION NAME: process_image                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,*
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_process_image:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-11, SP
	.dwcfi	cfa_offset, 12
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("raw_sample")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_raw_sample")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("in_buf")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_in_buf")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("out_buf")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_out_buf")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("image_cords")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_image_cords")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_bregx 0x24 8]
        MOV T0, *SP(#2) ; |241| 
        MOV XAR0, dbl(*SP(#0))
	.dwpsn	file "./vision.c",line 243,column 5,is_stmt
        MOV *SP(#2), AR1 ; |243| 
        BCC $C$L53,AR1 == #0 ; |243| 
                                        ; branchcc occurs ; |243| 
	.dwpsn	file "./vision.c",line 244,column 9,is_stmt
	.dwpsn	file "./vision.c",line 246,column 5,is_stmt
        MOV dbl(*SP(#0)), XAR3
        MOV XAR3, AC0
        BCC $C$L53,AC0 == #0 ; |246| 
                                        ; branchcc occurs ; |246| 
	.dwpsn	file "./vision.c",line 247,column 9,is_stmt
	.dwpsn	file "./vision.c",line 250,column 15,is_stmt

        MOV #1, T1
||      MOV *SP(#2), T0 ; |250| 

$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_calloc")
	.dwattr $C$DW$203, DW_AT_TI_call
        CALL #_calloc ; |250| 
                                        ; call occurs [#_calloc] ; |250| 
        MOV XAR0, dbl(*SP(#4))
	.dwpsn	file "./vision.c",line 251,column 15,is_stmt

        MOV *SP(#2), T0 ; |251| 
||      MOV #1, T1

$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_calloc")
	.dwattr $C$DW$204, DW_AT_TI_call
        CALL #_calloc ; |251| 
                                        ; call occurs [#_calloc] ; |251| 
        MOV XAR0, dbl(*SP(#6))
	.dwpsn	file "./vision.c",line 252,column 15,is_stmt
        MOV #1, T1
        MOV #40, T0 ; |252| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_calloc")
	.dwattr $C$DW$205, DW_AT_TI_call
        CALL #_calloc ; |252| 
                                        ; call occurs [#_calloc] ; |252| 
        MOV XAR0, dbl(*SP(#8))
	.dwpsn	file "./vision.c",line 255,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
        MOV *SP(#2), T0 ; |255| 
        MOV dbl(*SP(#0)), XAR1
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_memcpy")
	.dwattr $C$DW$206, DW_AT_TI_call
        CALL #_memcpy ; |255| 
                                        ; call occurs [#_memcpy] ; |255| 
	.dwpsn	file "./vision.c",line 259,column 5,is_stmt
        MOV *SP(#2), T0 ; |259| 
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#6)), XAR1
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_pre_treatment")
	.dwattr $C$DW$207, DW_AT_TI_call
        CALL #_pre_treatment ; |259| 
                                        ; call occurs [#_pre_treatment] ; |259| 
	.dwpsn	file "./vision.c",line 260,column 5,is_stmt
        MOV *SP(#2), T0 ; |260| 
        MOV dbl(*SP(#6)), XAR1
        MOV dbl(*SP(#4)), XAR0
        MOV dbl(*SP(#8)), XAR2
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_segmentation")
	.dwattr $C$DW$208, DW_AT_TI_call
        CALL #_segmentation ; |260| 
                                        ; call occurs [#_segmentation] ; |260| 
	.dwpsn	file "./vision.c",line 261,column 5,is_stmt
        MOV *SP(#2), T0 ; |261| 
        MOV dbl(*SP(#8)), XAR1
        MOV dbl(*SP(#6)), XAR0
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_classification")
	.dwattr $C$DW$209, DW_AT_TI_call
        CALL #_classification ; |261| 
                                        ; call occurs [#_classification] ; |261| 
	.dwpsn	file "./vision.c",line 263,column 5,is_stmt
        MOV dbl(*SP(#8)), XAR0
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_free")
	.dwattr $C$DW$210, DW_AT_TI_call
        CALL #_free ; |263| 
                                        ; call occurs [#_free] ; |263| 
	.dwpsn	file "./vision.c",line 264,column 5,is_stmt
        MOV dbl(*SP(#4)), XAR0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_free")
	.dwattr $C$DW$211, DW_AT_TI_call
        CALL #_free ; |264| 
                                        ; call occurs [#_free] ; |264| 
	.dwpsn	file "./vision.c",line 265,column 5,is_stmt
        MOV dbl(*SP(#6)), XAR0
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_free")
	.dwattr $C$DW$212, DW_AT_TI_call
        CALL #_free ; |265| 
                                        ; call occurs [#_free] ; |265| 
	.dwpsn	file "./vision.c",line 269,column 1,is_stmt
$C$L53:    
        AADD #11, SP
	.dwcfi	cfa_offset, 1
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$195, DW_AT_TI_end_file("./vision.c")
	.dwattr $C$DW$195, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$195, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$195

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_calloc
	.global	_free
	.global	_memset
	.global	_IMG_conv_3x3
	.global	_IMG_threshold
	.global	__remi
	.global	__divi
	.global	_memcpy

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$214	.dwtag  DW_TAG_TI_far_type
$C$DW$T$19	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$214)
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x17)
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
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x17)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x17)

$C$DW$T$44	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x09)
$C$DW$215	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$215, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$44

$C$DW$216	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$35)
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$216)

$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x09)
$C$DW$217	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$217, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$47

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("_Bool")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
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

$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg1]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg2]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg3]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg4]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg5]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg6]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg7]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg8]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg9]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg10]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg11]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg12]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg13]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg14]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg15]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg16]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg17]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg18]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg19]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg20]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg21]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg22]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg23]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg24]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg25]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg26]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg27]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg28]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg29]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_reg30]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg31]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x20]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x21]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x22]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x23]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x24]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x25]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x26]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x27]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x28]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x29]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x30]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x31]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x32]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x33]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x34]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x35]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x36]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x37]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x38]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x39]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x40]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x41]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x42]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x43]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x44]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x45]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x46]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x47]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x48]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x49]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x50]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x51]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x52]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x53]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x54]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x55]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x56]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x57]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x58]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x59]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

