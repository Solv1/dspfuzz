;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:18:06 2013                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_2_1 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.model call=c55_std
	.model mem=large
	.noremark 5503  ; code avoids SE CPU_84 MMR write
	.noremark 5505  ; code avoids SE CPU_84 MMR read
	.noremark 5673  ; code avoids SE CPU_89
	.noremark 5684  ; code avoids SE CPU_116 indirect write
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Size                                                 *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")
;******************************************************************************
;* CINIT RECORDS                                                              *
;******************************************************************************
	.sect	".cinit"
	.align	1
	.field  	2,16
	.field  	_nr_handle+0,24
	.field  	0,8
	.field	0,32			; _nr_handle @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("exit")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_exit")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$55)
$C$DW$5	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrGetSizes")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_asnrGetSizes")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$58)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$44)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$6


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrNew")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_asnrNew")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$47)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$39)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$63)
	.dwendtag $C$DW$10


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrDelete")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_asnrDelete")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$47)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$21)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$15


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrOpen")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_asnrOpen")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$3)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$69)
	.dwendtag $C$DW$19


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrClose")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_asnrClose")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("asnrControl")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_asnrControl")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$3)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$75)
	.dwendtag $C$DW$24

$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff0")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_nr_buff0")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff1")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_nr_buff1")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff2")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_nr_buff2")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff3")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_nr_buff3")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff4")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_nr_buff4")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff5")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_nr_buff5")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("nr_buff6")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_nr_buff6")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.global	_nr_handle
	.bss	_nr_handle,2,0,2
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("nr_handle")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_nr_handle")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _nr_handle]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("nrInst_ptr")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_nrInst_ptr")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0539613 
	.sect	".text"
	.global	_vpe_instantiate_nr

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_instantiate_nr")
	.dwattr $C$DW$36, DW_AT_low_pc(_vpe_instantiate_nr)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_vpe_instantiate_nr")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x5e)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x3e)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 95,column 1,is_stmt,address _vpe_instantiate_nr

	.dwfde $C$DW$CIE, _vpe_instantiate_nr
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("srate")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_srate")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
;  94 | void vpe_instantiate_nr(tint srate)                                    
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_instantiate_nr                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY, *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 62 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (5 function parameters)                              *
;*                        (55 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_instantiate_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-61
	.dwcfi	cfa_offset, 62
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("srate")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_srate")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("bufs_req_by_nr")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_bufs_req_by_nr")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("bufs_alloc_for_nr")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_bufs_alloc_for_nr")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("nr_size_cfg")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_nr_size_cfg")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_bregx 0x24 50]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("nr_new_cfg")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_nr_new_cfg")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 52]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("nr_open_cfg")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_nr_open_cfg")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_bregx 0x24 56]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("num_bufs_req_by_nr")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_num_bufs_req_by_nr")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_bregx 0x24 57]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_bregx 0x24 58]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_bregx 0x24 59]
;----------------------------------------------------------------------
;  96 | const ecomemBuffer_t *bufs_req_by_nr;                                  
;  97 | ecomemBuffer_t        bufs_alloc_for_nr[VPE_NR_NUM_BUFS];              
;  98 | asnrSizeConfig_t        nr_size_cfg;                                   
;  99 | asnrNewConfig_t         nr_new_cfg;                                    
; 100 | asnrOpenConfig_t        nr_open_cfg;                                   
; 101 | tint                  num_bufs_req_by_nr, status;                      
; 102 | int i;                                                                 
;----------------------------------------------------------------------
        AR1 = T0  ; |95| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 105,column 3,is_stmt
;----------------------------------------------------------------------
; 105 | nr_size_cfg.max_sampling_rate=srate;                                   
;----------------------------------------------------------------------
        *SP(#50) = AR1 ; |105| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 95,column 1,is_stmt
        *SP(#5) = T0 ; |95| 
        XAR0 = mar(*SP(#57))
        XAR2 = mar(*SP(#50))
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 106,column 3,is_stmt
;----------------------------------------------------------------------
; 106 | status = asnrGetSizes(&num_bufs_req_by_nr, &bufs_req_by_nr, &nr_size_cf
;     | g);                                                                    
;----------------------------------------------------------------------
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_asnrGetSizes")
	.dwattr $C$DW$47, DW_AT_TI_call
        call #_asnrGetSizes ; |106| 
                                        ; call occurs [#_asnrGetSizes] ; |106| 
        AR1 = T0  ; |106| 
        *SP(#58) = T0 ; |106| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 107,column 3,is_stmt
;----------------------------------------------------------------------
; 107 | if(status != asnr_NOERR) {                                             
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L1 ; |107| 
                                        ; branchcc occurs ; |107| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 108,column 5,is_stmt
;----------------------------------------------------------------------
; 108 | printf("Error returned by asnrGetSizes() = %d\n",status);              
;----------------------------------------------------------------------
        XAR3 = #$C$FSL1 ; |108| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |108| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_printf")
	.dwattr $C$DW$48, DW_AT_TI_call
        call #_printf ; |108| 
                                        ; call occurs [#_printf] ; |108| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 109,column 5,is_stmt
;----------------------------------------------------------------------
; 109 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_exit")
	.dwattr $C$DW$49, DW_AT_TI_call
        call #_exit ; |109| 
                                        ; call occurs [#_exit] ; |109| 
$C$L1:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 112,column 3,is_stmt
;----------------------------------------------------------------------
; 112 | if(num_bufs_req_by_nr != VPE_NR_NUM_BUFS) {                            
;----------------------------------------------------------------------
        TC1 = (*SP(#57) == #7) ; |112| 
        if (TC1) goto $C$L2 ; |112| 
                                        ; branchcc occurs ; |112| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 113,column 5,is_stmt
;----------------------------------------------------------------------
; 113 | printf("NR needs %d buffers, but %d buffers are allocated!\n",         
; 114 |         num_bufs_req_by_nr, VPE_NR_NUM_BUFS);                          
;----------------------------------------------------------------------
        XAR3 = #$C$FSL2 ; |113| 
        AR1 = *SP(#57) ; |113| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |113| 
        *SP(#3) = #7 ; |113| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_printf")
	.dwattr $C$DW$50, DW_AT_TI_call
        call #_printf ; |113| 
                                        ; call occurs [#_printf] ; |113| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 115,column 5,is_stmt
;----------------------------------------------------------------------
; 115 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_exit")
	.dwattr $C$DW$51, DW_AT_TI_call
        call #_exit ; |115| 
                                        ; call occurs [#_exit] ; |115| 
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 118,column 3,is_stmt
;----------------------------------------------------------------------
; 118 | printf("Buffers requested by NR:\n");                                  
;----------------------------------------------------------------------
        XAR3 = #$C$FSL3 ; |118| 
        dbl(*SP(#0)) = XAR3
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_printf")
	.dwattr $C$DW$52, DW_AT_TI_call
        call #_printf ; |118| 
                                        ; call occurs [#_printf] ; |118| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 119,column 3,is_stmt
;----------------------------------------------------------------------
; 119 | printf("    Buffer    Size(twords)    Alignment    Volatile\n");       
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |119| 
        dbl(*SP(#0)) = XAR3
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_printf")
	.dwattr $C$DW$53, DW_AT_TI_call
        call #_printf ; |119| 
                                        ; call occurs [#_printf] ; |119| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 120,column 7,is_stmt
;----------------------------------------------------------------------
; 120 | for(i=0; i<num_bufs_req_by_nr; i++) {                                  
;----------------------------------------------------------------------
        *SP(#59) = #0 ; |120| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 120,column 12,is_stmt
        AR1 = *SP(#57) ; |120| 
        AR2 = *SP(#59) ; |120| 
        TC1 = (AR2 >= AR1) ; |120| 
        if (TC1) goto $C$L4 ; |120| 
                                        ; branchcc occurs ; |120| 
$C$L3:    
$C$DW$L$_vpe_instantiate_nr$6$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 121,column 5,is_stmt
;----------------------------------------------------------------------
; 121 | printf("     %3d       %7d         %4d       ",                        
; 122 |              i, (int)bufs_req_by_nr[i].size, (int)bufs_req_by_nr[i].log
;     | 2align);                                                               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL5 ; |121| 
        AC0 = *SP(#59) * #6 ; |121| 

        dbl(*SP(#0)) = XAR3
||      AR1 = AR2

        AR1 = AC0 ; |121| 
||      *SP(#2) = AR1 ; |121| 

        XAR3 = dbl(*SP(#6))
        AC0 = *SP(#59) * #6 ; |121| 
        mar(AR3 + AR1) ; |121| 
        AR1 = *AR3(short(#2)) ; |121| 

        AR1 = AC0 ; |121| 
||      *SP(#3) = AR1 ; |121| 

        XAR3 = dbl(*SP(#6))
        mar(AR3 + AR1) ; |121| 
        AR1 = *AR3(short(#1)) ; |121| 
        *SP(#4) = AR1 ; |121| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_printf")
	.dwattr $C$DW$54, DW_AT_TI_call
        call #_printf ; |121| 
                                        ; call occurs [#_printf] ; |121| 
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 123,column 5,is_stmt
;----------------------------------------------------------------------
; 123 | if(bufs_req_by_nr[i].volat)                                            
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |123| 
        AR1 = AC0 ; |123| 
        mar(AR3 + AR1) ; |123| 
        AR1 = *AR3(short(#3)) ; |123| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 124,column 7,is_stmt
;----------------------------------------------------------------------
; 124 | printf("    yes\n");                                                   
; 125 | else                                                                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL6 ; |124| 
        if (AR1 != #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 126,column 7,is_stmt
;----------------------------------------------------------------------
; 126 | printf("    no \n");                                                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL7 ; |126| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_printf")
	.dwattr $C$DW$55, DW_AT_TI_call
        call #_printf ; |126| 
                                        ; call occurs [#_printf] ; |126| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 120,column 34,is_stmt
        *SP(#59) = *SP(#59) + #1 ; |120| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 120,column 12,is_stmt
        AR2 = *SP(#59) ; |120| 
        AR1 = *SP(#57) ; |120| 
        TC1 = (AR2 < AR1) ; |120| 
        if (TC1) goto $C$L3 ; |120| 
                                        ; branchcc occurs ; |120| 
$C$DW$L$_vpe_instantiate_nr$6$E:
$C$L4:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 130,column 8,is_stmt
;----------------------------------------------------------------------
; 130 | for (i=0; i<num_bufs_req_by_nr; i++) {                                 
;----------------------------------------------------------------------
        *SP(#59) = #0 ; |130| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 130,column 13,is_stmt
        AR1 = *SP(#57) ; |130| 
        AR2 = *SP(#59) ; |130| 
        TC1 = (AR2 >= AR1) ; |130| 
        if (TC1) goto $C$L6 ; |130| 
                                        ; branchcc occurs ; |130| 
$C$L5:    
$C$DW$L$_vpe_instantiate_nr$8$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 131,column 5,is_stmt
;----------------------------------------------------------------------
; 131 | bufs_alloc_for_nr[i].mclass = ecomem_CLASS_INTERNAL;                   
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |131| 
        T0 = AC0  ; |131| 
        XAR3 = mar(*SP(#8))
        *AR3(T0) = #1 ; |131| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 132,column 5,is_stmt
;----------------------------------------------------------------------
; 132 | bufs_alloc_for_nr[i].volat  = FALSE;         /* initialized to permanen
;     | t */                                                                   
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |132| 
        T0 = AC0  ; |132| 
        XAR3 = mar(*SP(#11))
        *AR3(T0) = #0 ; |132| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 130,column 35,is_stmt
        *SP(#59) = *SP(#59) + #1 ; |130| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 130,column 13,is_stmt
        AR1 = *SP(#57) ; |130| 
        AR2 = *SP(#59) ; |130| 
        TC1 = (AR2 < AR1) ; |130| 
        if (TC1) goto $C$L5 ; |130| 
                                        ; branchcc occurs ; |130| 
$C$DW$L$_vpe_instantiate_nr$8$E:
$C$L6:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 134,column 3,is_stmt
;----------------------------------------------------------------------
; 134 | bufs_alloc_for_nr[0].base      = &nr_buff0[0];                         
;----------------------------------------------------------------------
        XAR3 = #_nr_buff0 ; |134| 
        dbl(*SP(#12)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 135,column 3,is_stmt
;----------------------------------------------------------------------
; 135 | bufs_alloc_for_nr[0].size      = NR_SIM_BUF0_SIZE;                     
;----------------------------------------------------------------------
        *SP(#10) = #44 ; |135| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 136,column 3,is_stmt
;----------------------------------------------------------------------
; 136 | bufs_alloc_for_nr[0].log2align = NR_SIM_BUF0_ALGN_LOG2;                
;----------------------------------------------------------------------
        *SP(#9) = #1 ; |136| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 138,column 3,is_stmt
;----------------------------------------------------------------------
; 138 | bufs_alloc_for_nr[1].base      = &nr_buff1[0];                         
;----------------------------------------------------------------------
        XAR3 = #_nr_buff1 ; |138| 
        dbl(*SP(#18)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 139,column 3,is_stmt
;----------------------------------------------------------------------
; 139 | bufs_alloc_for_nr[1].size      = NR_SIM_BUF1_SIZE;                     
; 140 | bufs_alloc_for_nr[1].log2align = NR_SIM_BUF1_ALGN_LOG2;                
; 141 | bufs_alloc_for_nr[1].volat     = TRUE;                                 
;----------------------------------------------------------------------
        *SP(#16) = #774 ; |139| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 143,column 3,is_stmt
;----------------------------------------------------------------------
; 143 | bufs_alloc_for_nr[2].base      = &nr_buff2[0];                         
;----------------------------------------------------------------------
        XAR3 = #_nr_buff2 ; |143| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 140,column 3,is_stmt
        *SP(#15) = #1 ; |140| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 141,column 3,is_stmt
        *SP(#17) = #1 ; |141| 
        dbl(*SP(#24)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 144,column 3,is_stmt
;----------------------------------------------------------------------
; 144 | bufs_alloc_for_nr[2].size      = NR_SIM_BUF2_SIZE;                     
; 145 | bufs_alloc_for_nr[2].log2align = NR_SIM_BUF2_ALGN_LOG2;                
; 146 | bufs_alloc_for_nr[2].volat     = TRUE;                                 
;----------------------------------------------------------------------
        *SP(#22) = #516 ; |144| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 148,column 3,is_stmt
;----------------------------------------------------------------------
; 148 | bufs_alloc_for_nr[3].base      = &nr_buff3[0];                         
; 149 | bufs_alloc_for_nr[3].size      = NR_SIM_BUF3_SIZE;                     
; 150 | bufs_alloc_for_nr[3].log2align = NR_SIM_BUF3_ALGN_LOG2;                
; 151 | bufs_alloc_for_nr[3].volat     = TRUE;                                 
;----------------------------------------------------------------------
        XAR3 = #_nr_buff3 ; |148| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 145,column 3,is_stmt
        *SP(#21) = #1 ; |145| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 146,column 3,is_stmt
        *SP(#23) = #1 ; |146| 
        dbl(*SP(#30)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 153,column 3,is_stmt
;----------------------------------------------------------------------
; 153 | bufs_alloc_for_nr[4].base      = &nr_buff4[0];                         
; 154 | bufs_alloc_for_nr[4].size      = NR_SIM_BUF4_SIZE;                     
; 155 | bufs_alloc_for_nr[4].log2align = NR_SIM_BUF4_ALGN_LOG2;                
;----------------------------------------------------------------------
        XAR3 = #_nr_buff4 ; |153| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 149,column 3,is_stmt
        *SP(#28) = #387 ; |149| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 150,column 3,is_stmt
        *SP(#27) = #1 ; |150| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 151,column 3,is_stmt
        *SP(#29) = #1 ; |151| 
        dbl(*SP(#36)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 157,column 3,is_stmt
;----------------------------------------------------------------------
; 157 | bufs_alloc_for_nr[5].base      = &nr_buff5[0];                         
; 158 | bufs_alloc_for_nr[5].size      = NR_SIM_BUF5_SIZE;                     
; 159 | bufs_alloc_for_nr[5].log2align = NR_SIM_BUF5_ALGN_LOG2;                
;----------------------------------------------------------------------
        XAR3 = #_nr_buff5 ; |157| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 154,column 3,is_stmt
        *SP(#34) = #192 ; |154| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 155,column 3,is_stmt
        *SP(#33) = #1 ; |155| 
        dbl(*SP(#42)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 161,column 3,is_stmt
;----------------------------------------------------------------------
; 161 | bufs_alloc_for_nr[6].base      = &nr_buff6[0];                         
; 162 | bufs_alloc_for_nr[6].size      = NR_SIM_BUF6_SIZE;                     
; 163 | bufs_alloc_for_nr[6].log2align = NR_SIM_BUF6_ALGN_LOG2;                
;----------------------------------------------------------------------
        XAR3 = #_nr_buff6 ; |161| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 158,column 3,is_stmt
        *SP(#40) = #516 ; |158| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 159,column 3,is_stmt
        *SP(#39) = #1 ; |159| 
        dbl(*SP(#48)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 166,column 3,is_stmt
;----------------------------------------------------------------------
; 166 | nr_new_cfg.handle  = &nr_handle;                                       
;----------------------------------------------------------------------
        XAR3 = #_nr_handle ; |166| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 162,column 3,is_stmt
        *SP(#46) = #14 ; |162| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 163,column 3,is_stmt
        *SP(#45) = #1 ; |163| 
        dbl(*SP(#52)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 167,column 3,is_stmt
;----------------------------------------------------------------------
; 167 | nr_new_cfg.sizeCfg = nr_size_cfg;                                      
;----------------------------------------------------------------------
        AR1 = *SP(#50) ; |167| 
        *SP(#54) = AR1 ; |167| 
        XAR2 = mar(*SP(#52))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 168,column 3,is_stmt
;----------------------------------------------------------------------
; 168 | status = asnrNew(&nrInst_ptr, num_bufs_req_by_nr, bufs_alloc_for_nr, &n
;     | r_new_cfg);                                                            
;----------------------------------------------------------------------
        XAR0 = #_nrInst_ptr ; |168| 
        XAR1 = mar(*SP(#8))
        T0 = *SP(#57) ; |168| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_asnrNew")
	.dwattr $C$DW$56, DW_AT_TI_call
        call #_asnrNew ; |168| 
                                        ; call occurs [#_asnrNew] ; |168| 
        AR1 = T0  ; |168| 
        *SP(#58) = T0 ; |168| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 169,column 3,is_stmt
;----------------------------------------------------------------------
; 169 | if (status != asnr_NOERR) {                                            
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L7 ; |169| 
                                        ; branchcc occurs ; |169| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 170,column 5,is_stmt
;----------------------------------------------------------------------
; 170 | printf("Error returned by asnrNew() = %d\n",status);                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |170| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |170| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_printf")
	.dwattr $C$DW$57, DW_AT_TI_call
        call #_printf ; |170| 
                                        ; call occurs [#_printf] ; |170| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 171,column 5,is_stmt
;----------------------------------------------------------------------
; 171 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_exit")
	.dwattr $C$DW$58, DW_AT_TI_call
        call #_exit ; |171| 
                                        ; call occurs [#_exit] ; |171| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 174,column 3,is_stmt
;----------------------------------------------------------------------
; 174 | printf("Buffers allocated for NR:\n");                                 
;----------------------------------------------------------------------
        XAR3 = #$C$FSL9 ; |174| 
        dbl(*SP(#0)) = XAR3
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_printf")
	.dwattr $C$DW$59, DW_AT_TI_call
        call #_printf ; |174| 
                                        ; call occurs [#_printf] ; |174| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 175,column 3,is_stmt
;----------------------------------------------------------------------
; 175 | printf("    Buffer    Size(twords)    Alignment    Volatile   address\n
;     | ");                                                                    
;----------------------------------------------------------------------
        XAR3 = #$C$FSL10 ; |175| 
        dbl(*SP(#0)) = XAR3
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_printf")
	.dwattr $C$DW$60, DW_AT_TI_call
        call #_printf ; |175| 
                                        ; call occurs [#_printf] ; |175| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 176,column 7,is_stmt
;----------------------------------------------------------------------
; 176 | for(i=0; i<num_bufs_req_by_nr; i++) {                                  
;----------------------------------------------------------------------
        *SP(#59) = #0 ; |176| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 176,column 12,is_stmt
        AR1 = *SP(#57) ; |176| 
        AR2 = *SP(#59) ; |176| 
        TC1 = (AR2 >= AR1) ; |176| 
        if (TC1) goto $C$L9 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$L8:    
$C$DW$L$_vpe_instantiate_nr$12$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 177,column 5,is_stmt
;----------------------------------------------------------------------
; 177 | printf("     %3d       %7d         %4d       ",                        
; 178 |              i, (int)bufs_alloc_for_nr[i].size, (int)bufs_alloc_for_nr[
;     | i].log2align);                                                         
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |177| 
        XAR3 = #$C$FSL5 ; |177| 
        T0 = AC0  ; |177| 
        dbl(*SP(#0)) = XAR3

        AC0 = *SP(#59) * #6 ; |177| 
||      AR1 = AR2

        *SP(#2) = AR1 ; |177| 
        XAR3 = mar(*SP(#10))

        T0 = AC0  ; |177| 
||      AR1 = *AR3(T0) ; |177| 

        XAR3 = mar(*SP(#9))
        *SP(#3) = AR1 ; |177| 
        AR1 = *AR3(T0) ; |177| 
        *SP(#4) = AR1 ; |177| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_printf")
	.dwattr $C$DW$61, DW_AT_TI_call
        call #_printf ; |177| 
                                        ; call occurs [#_printf] ; |177| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 179,column 5,is_stmt
;----------------------------------------------------------------------
; 179 | if(bufs_alloc_for_nr[i].volat)                                         
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |179| 
        T0 = AC0  ; |179| 
        XAR3 = mar(*SP(#11))
        AR1 = *AR3(T0) ; |179| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 180,column 7,is_stmt
;----------------------------------------------------------------------
; 180 | printf("    yes   ");                                                  
; 181 | else                                                                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL11 ; |180| 
        if (AR1 != #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 182,column 7,is_stmt
;----------------------------------------------------------------------
; 182 | printf("    no    ");                                                  
;----------------------------------------------------------------------
        XAR3 = #$C$FSL12 ; |182| 
        if (AR1 == #0) execute (D_Unit) ||
           dbl(*SP(#0)) = XAR3
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_printf")
	.dwattr $C$DW$62, DW_AT_TI_call
        call #_printf ; |182| 
                                        ; call occurs [#_printf] ; |182| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 184,column 5,is_stmt
;----------------------------------------------------------------------
; 184 | printf("    0x%x\n", bufs_alloc_for_nr[i].base);                       
;----------------------------------------------------------------------
        AC0 = *SP(#59) * #6 ; |184| 
        T0 = AC0  ; |184| 
        XAR3 = #$C$FSL13 ; |184| 
        dbl(*SP(#0)) = XAR3
        XAR3 = mar(*SP(#12))
        XAR3 = dbl(*AR3(T0))
        dbl(*SP(#2)) = XAR3
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_printf")
	.dwattr $C$DW$63, DW_AT_TI_call
        call #_printf ; |184| 
                                        ; call occurs [#_printf] ; |184| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 176,column 34,is_stmt
        *SP(#59) = *SP(#59) + #1 ; |176| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 176,column 12,is_stmt
        AR2 = *SP(#59) ; |176| 
        AR1 = *SP(#57) ; |176| 
        TC1 = (AR2 < AR1) ; |176| 
        if (TC1) goto $C$L8 ; |176| 
                                        ; branchcc occurs ; |176| 
$C$DW$L$_vpe_instantiate_nr$12$E:
$C$L9:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 188,column 3,is_stmt
;----------------------------------------------------------------------
; 188 | nr_open_cfg.sampling_rate = srate;                                     
;----------------------------------------------------------------------
        AR1 = *SP(#5) ; |188| 
        *SP(#56) = AR1 ; |188| 
        XAR0 = dbl(*(#_nrInst_ptr))
        XAR1 = mar(*SP(#56))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 189,column 3,is_stmt
;----------------------------------------------------------------------
; 189 | status = asnrOpen(nrInst_ptr, &nr_open_cfg);                           
;----------------------------------------------------------------------
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_asnrOpen")
	.dwattr $C$DW$64, DW_AT_TI_call
        call #_asnrOpen ; |189| 
                                        ; call occurs [#_asnrOpen] ; |189| 
        AR1 = T0  ; |189| 
        *SP(#58) = T0 ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 190,column 3,is_stmt
;----------------------------------------------------------------------
; 190 | if (status != asnr_NOERR) {                                            
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L10 ; |190| 
                                        ; branchcc occurs ; |190| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 191,column 5,is_stmt
;----------------------------------------------------------------------
; 191 | printf("Error returned by asnrOpen() = %d!\n", status);                
;----------------------------------------------------------------------
        XAR3 = #$C$FSL14 ; |191| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |191| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_printf")
	.dwattr $C$DW$65, DW_AT_TI_call
        call #_printf ; |191| 
                                        ; call occurs [#_printf] ; |191| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 192,column 5,is_stmt
;----------------------------------------------------------------------
; 192 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_exit")
	.dwattr $C$DW$66, DW_AT_TI_call
        call #_exit ; |192| 
                                        ; call occurs [#_exit] ; |192| 
$C$L10:    
        SP = SP + #61
	.dwcfi	cfa_offset, 1
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$68	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$68, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\nrsim.asm:$C$L8:1:1373048286")
	.dwattr $C$DW$68, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$68, DW_AT_TI_end_line(0xb9)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_vpe_instantiate_nr$12$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_vpe_instantiate_nr$12$E)
	.dwendtag $C$DW$68


$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\nrsim.asm:$C$L5:1:1373048286")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x85)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_vpe_instantiate_nr$8$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_vpe_instantiate_nr$8$E)
	.dwendtag $C$DW$70


$C$DW$72	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$72, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\vpe\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\nrsim.asm:$C$L3:1:1373048286")
	.dwattr $C$DW$72, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x7f)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_vpe_instantiate_nr$6$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_vpe_instantiate_nr$6$E)
	.dwendtag $C$DW$72

	.dwattr $C$DW$36, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.global	_vpe_config_nr

$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_config_nr")
	.dwattr $C$DW$74, DW_AT_low_pc(_vpe_config_nr)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_vpe_config_nr")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0xcb)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(0x16)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 204,column 1,is_stmt,address _vpe_config_nr

	.dwfde $C$DW$CIE, _vpe_config_nr
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("asnr_params")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_asnr_params")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 203 | void vpe_config_nr(vpeASNRPars_t *asnr_params)                         
; 205 | asnrControl_t nr_control_cfg;                                          
; 206 | tint status;                                                           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_config_nr                                                *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 22 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (17 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_config_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-21
	.dwcfi	cfa_offset, 22
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("asnr_params")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_asnr_params")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("nr_control_cfg")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_nr_control_cfg")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 19]
        dbl(*SP(#4)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 209,column 3,is_stmt
;----------------------------------------------------------------------
; 209 | nr_control_cfg.valid_bitfield =   asnr_CTL_VALID_ENABLE                
; 210 |                                 | asnr_CTL_VALID_SAMP_RATE             
; 211 |                                 | asnr_CTL_VALID_DELAY                 
; 212 |                                 | asnr_CTL_VALID_BAND_BIN1             
; 213 |                                 | asnr_CTL_VALID_BAND_BIN2             
; 214 |                                 | asnr_CTL_VALID_BAND1_MAX_ATTEN       
; 215 |                                 | asnr_CTL_VALID_BAND2_MAX_ATTEN       
; 216 |                                 | asnr_CTL_VALID_BAND3_MAX_ATTEN       
; 217 |                                 | asnr_CTL_VALID_SIG_UPD_RATE_MIN      
; 218 |                                 | asnr_CTL_VALID_SIG_UPD_RATE_MAX      
; 219 |                                 | asnr_CTL_VALID_NOISE_THRESH          
; 220 |                                 | asnr_CTL_VALID_NOISE_HANGOVER;       
;----------------------------------------------------------------------
        *SP(#6) = #4095 ; |209| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 221,column 3,is_stmt
;----------------------------------------------------------------------
; 221 | nr_control_cfg.enable          = 1;                                    
;----------------------------------------------------------------------
        *SP(#7) = #1 ; |221| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 222,column 3,is_stmt
;----------------------------------------------------------------------
; 222 | nr_control_cfg.samp_rate       = asnr_params->samp_rate;               
;----------------------------------------------------------------------
        AR1 = *AR3 ; |222| 
        *SP(#8) = AR1 ; |222| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 223,column 3,is_stmt
;----------------------------------------------------------------------
; 223 | nr_control_cfg.delay           = asnr_params->delay;                   
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |223| 
        *SP(#9) = AR1 ; |223| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 224,column 3,is_stmt
;----------------------------------------------------------------------
; 224 | nr_control_cfg.band_bin1       = asnr_params->band_bin1;               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#2)) ; |224| 
        *SP(#10) = AR1 ; |224| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 225,column 3,is_stmt
;----------------------------------------------------------------------
; 225 | nr_control_cfg.band_bin2       = asnr_params->band_bin2;               
;----------------------------------------------------------------------
        AR1 = *AR3(short(#3)) ; |225| 
        *SP(#11) = AR1 ; |225| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 226,column 3,is_stmt
;----------------------------------------------------------------------
; 226 | nr_control_cfg.band1_max_atten = asnr_params->band1_max_atten;         
;----------------------------------------------------------------------
        AR1 = *AR3(short(#4)) ; |226| 
        *SP(#12) = AR1 ; |226| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 227,column 3,is_stmt
;----------------------------------------------------------------------
; 227 | nr_control_cfg.band2_max_atten = asnr_params->band2_max_atten;         
;----------------------------------------------------------------------
        AR1 = *AR3(short(#5)) ; |227| 
        *SP(#13) = AR1 ; |227| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 228,column 3,is_stmt
;----------------------------------------------------------------------
; 228 | nr_control_cfg.band3_max_atten = asnr_params->band3_max_atten;         
;----------------------------------------------------------------------
        AR1 = *AR3(short(#6)) ; |228| 
        *SP(#14) = AR1 ; |228| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 229,column 3,is_stmt
;----------------------------------------------------------------------
; 229 | nr_control_cfg.sig_upd_rate_max= asnr_params->sig_upd_rate_max;        
;----------------------------------------------------------------------
        AR1 = *AR3(short(#7)) ; |229| 
        *SP(#15) = AR1 ; |229| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 230,column 3,is_stmt
;----------------------------------------------------------------------
; 230 | nr_control_cfg.sig_upd_rate_min= asnr_params->sig_upd_rate_min;        
;----------------------------------------------------------------------
        AR1 = *AR3(#8) ; |230| 
        *SP(#16) = AR1 ; |230| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 231,column 3,is_stmt
;----------------------------------------------------------------------
; 231 | nr_control_cfg.noise_thresh    = asnr_params->noise_thresh;            
;----------------------------------------------------------------------
        AR1 = *AR3(#9) ; |231| 
        *SP(#17) = AR1 ; |231| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 232,column 3,is_stmt
;----------------------------------------------------------------------
; 232 | nr_control_cfg.noise_hangover  = asnr_params->noise_hangover;          
;----------------------------------------------------------------------
        AR1 = *AR3(#10) ; |232| 
        *SP(#18) = AR1 ; |232| 
        XAR0 = dbl(*(#_nrInst_ptr))
        XAR1 = mar(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 234,column 3,is_stmt
;----------------------------------------------------------------------
; 234 | status = asnrControl(nrInst_ptr, &nr_control_cfg);                     
;----------------------------------------------------------------------
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_asnrControl")
	.dwattr $C$DW$79, DW_AT_TI_call
        call #_asnrControl ; |234| 
                                        ; call occurs [#_asnrControl] ; |234| 
        AR1 = T0  ; |234| 
        *SP(#19) = T0 ; |234| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 235,column 3,is_stmt
;----------------------------------------------------------------------
; 235 | if (status != asnr_NOERR) {                                            
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L11 ; |235| 
                                        ; branchcc occurs ; |235| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 236,column 5,is_stmt
;----------------------------------------------------------------------
; 236 | printf("Error returned by asnrControl = %d!\n", status);               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL15 ; |236| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#19) ; |236| 
        *SP(#2) = AR1 ; |236| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_printf")
	.dwattr $C$DW$80, DW_AT_TI_call
        call #_printf ; |236| 
                                        ; call occurs [#_printf] ; |236| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 237,column 5,is_stmt
;----------------------------------------------------------------------
; 237 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_exit")
	.dwattr $C$DW$81, DW_AT_TI_call
        call #_exit ; |237| 
                                        ; call occurs [#_exit] ; |237| 
$C$L11:    
        SP = SP + #21
	.dwcfi	cfa_offset, 1
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$74, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.global	_vpe_deinstantiate_nr

$C$DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("vpe_deinstantiate_nr")
	.dwattr $C$DW$83, DW_AT_low_pc(_vpe_deinstantiate_nr)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_vpe_deinstantiate_nr")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0xf6)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x32)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 247,column 1,is_stmt,address _vpe_deinstantiate_nr

	.dwfde $C$DW$CIE, _vpe_deinstantiate_nr
;----------------------------------------------------------------------
; 246 | void vpe_deinstantiate_nr()                                            
; 248 | ecomemBuffer_t bufs_returned_by_nr[VPE_NR_NUM_BUFS];                   
; 249 | tint           status, error;                                          
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: vpe_deinstantiate_nr                                         *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AC1,AC1,T0,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,*
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 50 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (3 function parameters)                              *
;*                        (45 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_vpe_deinstantiate_nr:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-49
	.dwcfi	cfa_offset, 50
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("bufs_returned_by_nr")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_bufs_returned_by_nr")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_bregx 0x24 46]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("error")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_error")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_bregx 0x24 47]
        XAR0 = dbl(*(#_nrInst_ptr))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 251,column 3,is_stmt
;----------------------------------------------------------------------
; 251 | status = asnrClose(nrInst_ptr);                                        
;----------------------------------------------------------------------
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_asnrClose")
	.dwattr $C$DW$87, DW_AT_TI_call
        call #_asnrClose ; |251| 
                                        ; call occurs [#_asnrClose] ; |251| 
        AR1 = T0  ; |251| 
        *SP(#46) = T0 ; |251| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 252,column 3,is_stmt
;----------------------------------------------------------------------
; 252 | if(status != asnr_NOERR) {                                             
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L12 ; |252| 
                                        ; branchcc occurs ; |252| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 253,column 5,is_stmt
;----------------------------------------------------------------------
; 253 | printf("Error returned by asnrClose() = %d!\n", status);               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL16 ; |253| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |253| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_printf")
	.dwattr $C$DW$88, DW_AT_TI_call
        call #_printf ; |253| 
                                        ; call occurs [#_printf] ; |253| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 254,column 5,is_stmt
;----------------------------------------------------------------------
; 254 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_exit")
	.dwattr $C$DW$89, DW_AT_TI_call
        call #_exit ; |254| 
                                        ; call occurs [#_exit] ; |254| 
$C$L12:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 257,column 3,is_stmt
;----------------------------------------------------------------------
; 257 | status = asnrDelete(&nrInst_ptr, VPE_NR_NUM_BUFS, bufs_returned_by_nr);
;----------------------------------------------------------------------
        XAR0 = #_nrInst_ptr ; |257| 

        T0 = #7
||      XAR1 = mar(*SP(#4))

$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_asnrDelete")
	.dwattr $C$DW$90, DW_AT_TI_call
        call #_asnrDelete ; |257| 
                                        ; call occurs [#_asnrDelete] ; |257| 
        AR1 = T0  ; |257| 
        *SP(#46) = T0 ; |257| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 258,column 3,is_stmt
;----------------------------------------------------------------------
; 258 | if(status != asnr_NOERR) {                                             
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L13 ; |258| 
                                        ; branchcc occurs ; |258| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 259,column 5,is_stmt
;----------------------------------------------------------------------
; 259 | printf("Error returned by asnrDelete() = %d!\n", status);              
;----------------------------------------------------------------------
        XAR3 = #$C$FSL17 ; |259| 
        dbl(*SP(#0)) = XAR3
        *SP(#2) = AR1 ; |259| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_printf")
	.dwattr $C$DW$91, DW_AT_TI_call
        call #_printf ; |259| 
                                        ; call occurs [#_printf] ; |259| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 260,column 5,is_stmt
;----------------------------------------------------------------------
; 260 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_exit")
	.dwattr $C$DW$92, DW_AT_TI_call
        call #_exit ; |260| 
                                        ; call occurs [#_exit] ; |260| 
$C$L13:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 263,column 3,is_stmt
;----------------------------------------------------------------------
; 263 | error =    (bufs_returned_by_nr[0].base != nr_buff0)                   
; 264 |          | (bufs_returned_by_nr[1].base != nr_buff1)                   
; 265 |          | (bufs_returned_by_nr[2].base != nr_buff2)                   
; 266 |          | (bufs_returned_by_nr[3].base != nr_buff3)                   
; 267 |          | (bufs_returned_by_nr[4].base != nr_buff4)                   
; 268 |          | (bufs_returned_by_nr[5].base != nr_buff5);                  
;----------------------------------------------------------------------
        XAR3 = #_nr_buff0 ; |263| 
        AC0 = XAR3
        XAR3 = dbl(*SP(#8))
        AC1 = XAR3
        TC1 = uns(AC1 == AC0) ; |263| 
        XAR3 = #_nr_buff1 ; |263| 
        AC0 = XAR3
        XAR3 = dbl(*SP(#14))

        AC1 = XAR3
||      AR2 = #0

        if (!TC1) execute (D_Unit) ||
           AR2 = #1
        TC1 = uns(AC1 == AC0) ; |263| 
        XAR3 = #_nr_buff2 ; |263| 
        AC0 = XAR3
        XAR3 = dbl(*SP(#20))

        AC1 = XAR3
||      AR1 = #0

        if (!TC1) execute (D_Unit) ||
           AR1 = #1
        TC1 = uns(AC1 == AC0) ; |263| 
        XAR3 = #_nr_buff3 ; |263| 
        AC0 = XAR3
        XAR3 = dbl(*SP(#26))
        AR1 = AR1 | AR2 ; |263| 

        AC1 = XAR3
||      AR2 = #0

        if (!TC1) execute (D_Unit) ||
           AR2 = #1
        TC1 = uns(AC1 == AC0) ; |263| 
        XAR3 = #_nr_buff4 ; |263| 
        AC0 = XAR3
        XAR3 = dbl(*SP(#32))
        AR1 = AR1 | AR2 ; |263| 

        AC1 = XAR3
||      AR2 = #0

        if (!TC1) execute (D_Unit) ||
           AR2 = #1

        TC1 = uns(AC1 == AC0) ; |263| 
||      AR1 = AR1 | AR2 ; |263| 

        XAR3 = #_nr_buff5 ; |263| 

        AC0 = XAR3
||      AR2 = #0

        XAR3 = dbl(*SP(#38))
        if (!TC1) execute (D_Unit) ||
           AR2 = #1

        AC1 = XAR3
||      AR1 = AR1 | AR2 ; |263| 

        TC1 = uns(AC1 == AC0) ; |263| 
||      AR2 = #0

        if (!TC1) execute (D_Unit) ||
           AR2 = #1
        AR1 = AR1 | AR2 ; |263| 
        *SP(#47) = AR1 ; |263| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 269,column 3,is_stmt
;----------------------------------------------------------------------
; 269 | if(error) {                                                            
;----------------------------------------------------------------------
        if (AR1 == #0) goto $C$L14 ; |269| 
                                        ; branchcc occurs ; |269| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 270,column 5,is_stmt
;----------------------------------------------------------------------
; 270 | printf("Buffers returned by asnrDelete() are wrong!\n");               
;----------------------------------------------------------------------
        XAR3 = #$C$FSL18 ; |270| 
        dbl(*SP(#0)) = XAR3
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_printf")
	.dwattr $C$DW$93, DW_AT_TI_call
        call #_printf ; |270| 
                                        ; call occurs [#_printf] ; |270| 
        T0 = #0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c",line 271,column 5,is_stmt
;----------------------------------------------------------------------
; 271 | exit(0);                                                               
;----------------------------------------------------------------------
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_exit")
	.dwattr $C$DW$94, DW_AT_TI_call
        call #_exit ; |271| 
                                        ; call occurs [#_exit] ; |271| 
$C$L14:    
        SP = SP + #49
	.dwcfi	cfa_offset, 1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$83, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src/nrsim.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"Error returned by asnrGetSizes() = %d",10,0
	.align	2
$C$FSL2:	.string	"NR needs %d buffers, but %d buffers are allocated!",10,0
	.align	2
$C$FSL3:	.string	"Buffers requested by NR:",10,0
	.align	2
$C$FSL4:	.string	"    Buffer    Size(twords)    Alignment    Volatile",10,0
	.align	2
$C$FSL5:	.string	"     %3d       %7d         %4d       ",0
	.align	2
$C$FSL6:	.string	"    yes",10,0
	.align	2
$C$FSL7:	.string	"    no ",10,0
	.align	2
$C$FSL8:	.string	"Error returned by asnrNew() = %d",10,0
	.align	2
$C$FSL9:	.string	"Buffers allocated for NR:",10,0
	.align	2
$C$FSL10:	.string	"    Buffer    Size(twords)    Alignment    Volatile   addre"
	.string	"ss",10,0
	.align	2
$C$FSL11:	.string	"    yes   ",0
	.align	2
$C$FSL12:	.string	"    no    ",0
	.align	2
$C$FSL13:	.string	"    0x%x",10,0
	.align	2
$C$FSL14:	.string	"Error returned by asnrOpen() = %d!",10,0
	.align	2
$C$FSL15:	.string	"Error returned by asnrControl = %d!",10,0
	.align	2
$C$FSL16:	.string	"Error returned by asnrClose() = %d!",10,0
	.align	2
$C$FSL17:	.string	"Error returned by asnrDelete() = %d!",10,0
	.align	2
$C$FSL18:	.string	"Buffers returned by asnrDelete() are wrong!",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_exit
	.global	_printf
	.global	_asnrGetSizes
	.global	_asnrNew
	.global	_asnrDelete
	.global	_asnrOpen
	.global	_asnrClose
	.global	_asnrControl
	.global	_nr_buff0
	.global	_nr_buff1
	.global	_nr_buff2
	.global	_nr_buff3
	.global	_nr_buff4
	.global	_nr_buff5
	.global	_nr_buff6
	.global	_nrInst_ptr

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x06)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$96, DW_AT_name("mclass")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_mclass")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$97, DW_AT_name("log2align")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_log2align")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$98, DW_AT_name("size")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$99, DW_AT_name("volat")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_volat")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$100, DW_AT_name("base")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("ecomemBuffer_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x17)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x2a)
$C$DW$101	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$101, DW_AT_upper_bound(0x06)
	.dwendtag $C$DW$T$40

$C$DW$102	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$38)
$C$DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$102)
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x17)
$C$DW$T$44	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x17)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0b)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_name("samp_rate")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$104, DW_AT_name("delay")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$105, DW_AT_name("band_bin1")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$106, DW_AT_name("band_bin2")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$107, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$108, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$109, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$110, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$111, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$112, DW_AT_name("noise_thresh")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$113, DW_AT_name("noise_hangover")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("vpeASNRPars_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x17)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$3)
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
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x17)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("asnrSrate_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("tsize")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$114	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$83

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
$C$DW$T$53	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$53, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$53, DW_AT_name("signed char")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$115	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$53)
$C$DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$115)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("asnrControl_s")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x0d)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$116, DW_AT_name("valid_bitfield")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_valid_bitfield")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_name("enable")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$118, DW_AT_name("samp_rate")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_samp_rate")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$119, DW_AT_name("delay")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$120, DW_AT_name("band_bin1")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_band_bin1")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$121, DW_AT_name("band_bin2")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_band_bin2")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$122, DW_AT_name("band1_max_atten")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_band1_max_atten")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$123, DW_AT_name("band2_max_atten")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_band2_max_atten")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$124, DW_AT_name("band3_max_atten")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_band3_max_atten")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$125, DW_AT_name("sig_upd_rate_max")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_sig_upd_rate_max")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$126, DW_AT_name("sig_upd_rate_min")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_sig_upd_rate_min")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$127, DW_AT_name("noise_thresh")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_noise_thresh")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$128, DW_AT_name("noise_hangover")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_noise_hangover")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("asnrControl_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x17)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("asnrNewConfig_s")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x04)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$129, DW_AT_name("handle")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_handle")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$130, DW_AT_name("sizeCfg")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_sizeCfg")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$34

$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("asnrNewConfig_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x17)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("asnrOpenConfig_s")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$131, DW_AT_name("sampling_rate")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_sampling_rate")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("asnrOpenConfig_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x17)

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("asnrSizeConfig_s")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$132, DW_AT_name("max_sampling_rate")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_max_sampling_rate")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$37

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("asnrSizeConfig_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x17)
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

$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg0]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg1]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg2]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg3]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg4]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg5]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg6]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg7]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg8]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg9]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg10]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg11]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg13]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg14]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg15]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg16]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg17]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg18]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg19]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg20]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg21]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg22]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg23]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg24]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg25]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg26]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg27]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg28]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg29]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg30]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg31]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x20]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x21]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x22]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x23]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x24]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x25]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x26]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x27]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x28]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x29]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x30]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x31]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x32]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x33]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x34]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x35]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x36]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x37]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x38]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x39]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x40]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x41]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x42]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x43]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x44]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x45]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x46]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x47]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x48]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x49]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x50]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x51]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x52]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x53]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x54]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x55]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x56]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x57]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x58]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x59]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

