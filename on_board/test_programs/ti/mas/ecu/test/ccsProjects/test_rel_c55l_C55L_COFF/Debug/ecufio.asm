;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Fri Jul 05 14:12:09 2013                                 *
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
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Optimized TI Debug Information                       *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("muaTblUlawCmpr")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_muaTblUlawCmpr")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$31)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$84)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("muaTblAlawCmpr")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_muaTblAlawCmpr")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$31)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$84)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$5


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$78)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$78)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$78)
$C$DW$16	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("fread")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_fread")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$3)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$113)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$113)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$17


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("fwrite")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_fwrite")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$89)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$113)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$113)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$22

$C$DW$27	.dwtag  DW_TAG_variable, DW_AT_name("muaTblAlaw")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_muaTblAlaw")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_variable, DW_AT_name("muaTblUlaw")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_muaTblUlaw")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_variable, DW_AT_name("ecuSim")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_ecuSim")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
;	C:\MAS_Tools\CCSV5_2_1\ccsv5\tools\compiler\c5500_4.4.1\bin\acp55.exe -@C:\\DOCUME~1\\a0868396\\LOCALS~1\\Temp\\0969212 
	.sect	".text"
	.global	_ecu_sim_fileio_init

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fileio_init")
	.dwattr $C$DW$30, DW_AT_low_pc(_ecu_sim_fileio_init)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_ecu_sim_fileio_init")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 88,column 1,is_stmt,address _ecu_sim_fileio_init

	.dwfde $C$DW$CIE, _ecu_sim_fileio_init
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg17]
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("code")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
;  87 | void ecu_sim_fileio_init (volatile ecuSimFileIo_t *fioptr, tuint code) 
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_fileio_init                                          *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,AR0,XAR0,AR1,XAR1,AR3,XAR3,SP,TC1,M40,    *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (1 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (3 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_fileio_init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$34	.dwtag  DW_TAG_variable, DW_AT_name("code")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_bregx 0x24 6]
        *SP(#6) = T0 ; |88| 
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 89,column 3,is_stmt
;----------------------------------------------------------------------
;  89 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |89| 
        if (AR1 == #0) goto $C$L8 ; |89| 
                                        ; branchcc occurs ; |89| 
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 91,column 5,is_stmt
;----------------------------------------------------------------------
;  91 | if (fioptr->fptr != NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 == #0) goto $C$L2 ; |91| 
                                        ; branchcc occurs ; |91| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 92,column 7,is_stmt
;----------------------------------------------------------------------
;  92 | printf (" - File already open: %s\n", fioptr->fname);                  
;----------------------------------------------------------------------
        XAR3 = #$C$FSL1 ; |92| 
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + #4) ; |92| 

$C$L1:    
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_printf")
	.dwattr $C$DW$35, DW_AT_TI_call
        call #_printf ; |92| 
                                        ; call occurs [#_printf] ; |92| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 93,column 7,is_stmt
;----------------------------------------------------------------------
;  93 | return;                                                                
;----------------------------------------------------------------------
        goto $C$L8 ; |93| 
                                        ; branch occurs ; |93| 
$C$L2:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 97,column 5,is_stmt
;----------------------------------------------------------------------
;  97 | if (code == ecu_SIM_FILEIO_READ) {                                     
;----------------------------------------------------------------------
        AR1 = *SP(#6) ; |97| 
        if (AR1 != #0) goto $C$L3 ; |97| 
                                        ; branchcc occurs ; |97| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 98,column 7,is_stmt
;----------------------------------------------------------------------
;  98 | fioptr->fptr = fopen ((const char *) fioptr->fname, "rb");             
;----------------------------------------------------------------------
        XAR1 = #$C$FSL2 ; |98| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 99,column 5,is_stmt
        goto $C$L4 ; |99| 
                                        ; branch occurs ; |99| 
$C$L3:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 100,column 10,is_stmt
;----------------------------------------------------------------------
; 100 | else if (code == ecu_SIM_FILEIO_WRITE) {                               
;----------------------------------------------------------------------
        TC1 = (*SP(#6) == #1) ; |100| 
        if (!TC1) goto $C$L5 ; |100| 
                                        ; branchcc occurs ; |100| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 101,column 7,is_stmt
;----------------------------------------------------------------------
; 101 | fioptr->fptr = fopen ((const char *) fioptr->fname, "wb");             
;----------------------------------------------------------------------
        XAR1 = #$C$FSL3 ; |101| 
$C$L4:    
        mar(AR0 + #4) ; |101| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_fopen")
	.dwattr $C$DW$36, DW_AT_TI_call
        call #_fopen ; |101| 
                                        ; call occurs [#_fopen] ; |101| 
        XAR3 = dbl(*SP(#4))
        dbl(*AR3(short(#2))) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 102,column 5,is_stmt
;----------------------------------------------------------------------
; 103 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L6 ; |102| 
                                        ; branch occurs ; |102| 
$C$L5:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 104,column 7,is_stmt
;----------------------------------------------------------------------
; 104 | printf ("Error: unrecognized file action %d \n", code);                
;----------------------------------------------------------------------
        XAR3 = #$C$FSL4 ; |104| 
        dbl(*SP(#0)) = XAR3
        AR1 = *SP(#6) ; |104| 
        *SP(#2) = AR1 ; |104| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 105,column 7,is_stmt
;----------------------------------------------------------------------
; 105 | return;                                                                
;----------------------------------------------------------------------
        goto $C$L1 ; |105| 
                                        ; branch occurs ; |105| 
$C$L6:    
        XAR3 = dbl(*SP(#4))
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 109,column 5,is_stmt
;----------------------------------------------------------------------
; 109 | if (fioptr->fptr == NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L7 ; |109| 
                                        ; branchcc occurs ; |109| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 110,column 7,is_stmt
;----------------------------------------------------------------------
; 110 | printf ("Unable to open file: %s\n", fioptr->fname);                   
;----------------------------------------------------------------------
        XAR3 = #$C$FSL5 ; |110| 
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + #4) ; |110| 

$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_printf")
	.dwattr $C$DW$37, DW_AT_TI_call
        call #_printf ; |110| 
                                        ; call occurs [#_printf] ; |110| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 111,column 7,is_stmt
;----------------------------------------------------------------------
; 111 | fioptr->fio = FALSE;                                                   
;----------------------------------------------------------------------
        *AR3 = #0 ; |111| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 112,column 5,is_stmt
;----------------------------------------------------------------------
; 113 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L8 ; |112| 
                                        ; branch occurs ; |112| 
$C$L7:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 114,column 7,is_stmt
;----------------------------------------------------------------------
; 114 | printf (" - Opened file: %s\n", fioptr->fname);                        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL6 ; |114| 
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + #4) ; |114| 

$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_printf")
	.dwattr $C$DW$38, DW_AT_TI_call
        call #_printf ; |114| 
                                        ; call occurs [#_printf] ; |114| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 115,column 7,is_stmt
;----------------------------------------------------------------------
; 115 | fioptr->eof = FALSE;                                                   
;----------------------------------------------------------------------
        *AR3(short(#1)) = #0 ; |115| 
$C$L8:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$30, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.global	_ecu_sim_fileio_end

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fileio_end")
	.dwattr $C$DW$40, DW_AT_low_pc(_ecu_sim_fileio_end)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_ecu_sim_fileio_end")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 127,column 1,is_stmt,address _ecu_sim_fileio_end

	.dwfde $C$DW$CIE, _ecu_sim_fileio_end
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg17]
;----------------------------------------------------------------------
; 126 | void ecu_sim_fileio_end (volatile ecuSimFileIo_t *fioptr)              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_fileio_end                                           *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,AR0,XAR0,AR1,AR3,XAR3,SP,M40,SATA,SATD,RDM,  *
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 8 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 function parameters)                              *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_fileio_end:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-7
	.dwcfi	cfa_offset, 8
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_bregx 0x24 4]
        dbl(*SP(#4)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 128,column 3,is_stmt
;----------------------------------------------------------------------
; 128 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |128| 
        if (AR1 == #0) goto $C$L11 ; |128| 
                                        ; branchcc occurs ; |128| 
        XAR3 = dbl(*AR3(short(#2)))
        AC0 = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 130,column 5,is_stmt
;----------------------------------------------------------------------
; 130 | if (fioptr->fptr == NULL) {                                            
;----------------------------------------------------------------------
        if (AC0 != #0) goto $C$L9 ; |130| 
                                        ; branchcc occurs ; |130| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 131,column 7,is_stmt
;----------------------------------------------------------------------
; 131 | printf ("Warning: premature file close\n");                            
;----------------------------------------------------------------------
        XAR3 = #$C$FSL7 ; |131| 
        dbl(*SP(#0)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 132,column 5,is_stmt
;----------------------------------------------------------------------
; 133 | else {                                                                 
;----------------------------------------------------------------------
        goto $C$L10 ; |132| 
                                        ; branch occurs ; |132| 
$C$L9:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 134,column 7,is_stmt
;----------------------------------------------------------------------
; 134 | if (fioptr->eof) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3(short(#1)) ; |134| 
        if (AR1 == #0) goto $C$L11 ; |134| 
                                        ; branchcc occurs ; |134| 
        XAR0 = dbl(*AR3(short(#2)))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 135,column 9,is_stmt
;----------------------------------------------------------------------
; 135 | fclose (fioptr->fptr);                                                 
;----------------------------------------------------------------------
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_fclose")
	.dwattr $C$DW$43, DW_AT_TI_call
        call #_fclose ; |135| 
                                        ; call occurs [#_fclose] ; |135| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 136,column 9,is_stmt
;----------------------------------------------------------------------
; 136 | fioptr->fptr = (FILE *) NULL;                                          
;----------------------------------------------------------------------
        AC0 = #0  ; |136| 
        dbl(*AR3(short(#2))) = AC0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 138,column 9,is_stmt
;----------------------------------------------------------------------
; 138 | printf (" - Closed file: %s\n", fioptr->fname);                        
;----------------------------------------------------------------------
        XAR3 = #$C$FSL8 ; |138| 
        dbl(*SP(#0)) = XAR3
        XAR3 = dbl(*SP(#4))

        dbl(*SP(#2)) = XAR3
||      mar(AR3 + #4) ; |138| 

$C$L10:    
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_printf")
	.dwattr $C$DW$44, DW_AT_TI_call
        call #_printf ; |138| 
                                        ; call occurs [#_printf] ; |138| 
$C$L11:    
        SP = SP + #7
	.dwcfi	cfa_offset, 1
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$40, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.global	_ecu_sim_fread

$C$DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fread")
	.dwattr $C$DW$46, DW_AT_low_pc(_ecu_sim_fread)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ecu_sim_fread")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$46, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x94)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 149,column 1,is_stmt,address _ecu_sim_fread

	.dwfde $C$DW$CIE, _ecu_sim_fread
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg17]
$C$DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_size")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 148 | tbool ecu_sim_fread (tword *buf, tint buf_size, volatile ecuSimFileIo_t
;     |  *fioptr)                                                              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_fread                                                *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,T1,AR0,XAR0,AR1,XAR1,AR2,AR3,XAR3,SP,TC1,M40, *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (1 return address/alignment)                         *
;*                        (9 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_fread:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("buf_size")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("num")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("sample_size")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_sample_size")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("ret_code")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_ret_code")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_bregx 0x24 8]
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 150 | tuint num;                                                             
; 151 | tuint sample_size;                                                     
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |149| 
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 153,column 9,is_stmt
;----------------------------------------------------------------------
; 153 | tbool ret_code = FALSE;                                                
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |153| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 155,column 3,is_stmt
;----------------------------------------------------------------------
; 155 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |155| 
        if (AR1 == #0) goto $C$L12 ; |155| 
                                        ; branchcc occurs ; |155| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 157,column 5,is_stmt
;----------------------------------------------------------------------
; 157 | sample_size = sizeof(tword);                                           
;----------------------------------------------------------------------
        *SP(#7) = #1 ; |157| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 158,column 5,is_stmt
;----------------------------------------------------------------------
; 158 | if (ecuSim->pcm_format == const_COMP_LINEAR) {                         
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#5)) == #2) ; |158| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 159,column 7,is_stmt
;----------------------------------------------------------------------
; 159 | sample_size = sizeof(linSample)/sizeof(tword);                         
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#7) = #1 ; |159| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 164,column 5,is_stmt
;----------------------------------------------------------------------
; 164 | num = fread (buf, sample_size, buf_size, fioptr->fptr);                
;----------------------------------------------------------------------
        T1 = *SP(#2) ; |164| 
        XAR0 = dbl(*SP(#0))
        T0 = *SP(#7) ; |164| 
        XAR1 = dbl(*AR3(short(#2)))
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_fread")
	.dwattr $C$DW$56, DW_AT_TI_call
        call #_fread ; |164| 
                                        ; call occurs [#_fread] ; |164| 
        *SP(#6) = T0 ; |164| 
        nop       ;                     avoids Silicon Exception CPU_90
        nop       ;                     avoids Silicon Exception CPU_90
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 167,column 5,is_stmt
;----------------------------------------------------------------------
; 167 | if (num != (sample_size * buf_size)) {                                 
;----------------------------------------------------------------------
        T1 = *SP(#2) ; |167| 

        AC0 = T1 * *SP(#7) ; |167| 
||      AR2 = T0  ; |167| 

        AR1 = AC0 ; |167| 
        TC1 = uns(AR2 == AR1) ; |167| 
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 168,column 7,is_stmt
;----------------------------------------------------------------------
; 168 | fioptr->eof = TRUE;                                                    
; 170 | else {                                                                 
;----------------------------------------------------------------------
        if (!TC1) execute (D_Unit) ||
           *AR3(short(#1)) = #1 ; |168| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 171,column 7,is_stmt
;----------------------------------------------------------------------
; 171 | ret_code = TRUE;                                                       
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#8) = #1 ; |171| 
$C$L12:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 175,column 3,is_stmt
;----------------------------------------------------------------------
; 175 | return (ret_code);                                                     
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |175| 
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$46, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text"
	.global	_ecu_sim_get_xlaw

$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_get_xlaw")
	.dwattr $C$DW$58, DW_AT_low_pc(_ecu_sim_get_xlaw)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_ecu_sim_get_xlaw")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 185,column 1,is_stmt,address _ecu_sim_get_xlaw

	.dwfde $C$DW$CIE, _ecu_sim_get_xlaw
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg17]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg19]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg12]
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tbl")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_tbl")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg21]
;----------------------------------------------------------------------
; 184 | void ecu_sim_get_xlaw (tword *src, linSample *dst, tint n, const tint *
;     | tbl)                                                                   
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_get_xlaw                                             *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_get_xlaw:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("tbl")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_tbl")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_bregx 0x24 9]
        dbl(*SP(#6)) = XAR2
;----------------------------------------------------------------------
; 186 | tuint i;                                                               
; 187 | tuint index;                                                           
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |185| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 189,column 8,is_stmt
;----------------------------------------------------------------------
; 189 | for (i=0; i<n; i++) {                                                  
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 189,column 13,is_stmt
        AR1 = *SP(#4) ; |189| 
        AR2 = *SP(#8) ; |189| 
        TC1 = uns(AR2 >= AR1) ; |189| 
        if (TC1) goto $C$L14 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$L13:    
$C$DW$L$_ecu_sim_get_xlaw$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 190,column 5,is_stmt
;----------------------------------------------------------------------
; 190 | index  = (tuint) src[i];                                               
;----------------------------------------------------------------------
        T0 = *SP(#8) ; |190| 
        XAR3 = dbl(*SP(#0))
        AR1 = *AR3(T0) ; |190| 
        *SP(#9) = AR1 ; |190| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 191,column 5,is_stmt
;----------------------------------------------------------------------
; 191 | dst[i] = (linSample) tbl[index];                                       
;----------------------------------------------------------------------
        AR1 = *SP(#8) ; |191| 
        XAR3 = dbl(*SP(#2))
        XAR2 = dbl(*SP(#6))
        T0 = *SP(#9) ; |191| 
        mar(AR3 + AR1) ; |191| 
        *AR3 = *AR2(T0) ; |191| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 189,column 18,is_stmt
        *SP(#8) = *SP(#8) + #1 ; |189| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 189,column 13,is_stmt
        AR1 = *SP(#4) ; |189| 
        AR2 = *SP(#8) ; |189| 
        TC1 = uns(AR2 < AR1) ; |189| 
        if (TC1) goto $C$L13 ; |189| 
                                        ; branchcc occurs ; |189| 
$C$DW$L$_ecu_sim_get_xlaw$2$E:
$C$L14:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecufio.asm:$C$L13:1:1373047929")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0xbd)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0xc0)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_ecu_sim_get_xlaw$2$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_ecu_sim_get_xlaw$2$E)
	.dwendtag $C$DW$70

	.dwattr $C$DW$58, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text"
	.global	_ecu_sim_get_linear

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_get_linear")
	.dwattr $C$DW$72, DW_AT_low_pc(_ecu_sim_get_linear)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_ecu_sim_get_linear")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0xc9)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 202,column 1,is_stmt,address _ecu_sim_get_linear

	.dwfde $C$DW$CIE, _ecu_sim_get_linear
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg17]
$C$DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg19]
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 201 | void ecu_sim_get_linear (tword *src, linSample *dst, tint n)           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_get_linear                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_get_linear:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("pcm")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_pcm")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_bregx 0x24 6]
;----------------------------------------------------------------------
; 203 | tuint i;                                                               
; 204 | linSample *pcm = (linSample *) src;                                    
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |202| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#0))
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 206,column 8,is_stmt
;----------------------------------------------------------------------
; 206 | for (i=0; i<n; i++) {                                                  
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |206| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 206,column 13,is_stmt
        AR2 = *SP(#5) ; |206| 
        AR1 = *SP(#4) ; |206| 
        TC1 = uns(AR2 >= AR1) ; |206| 
        if (TC1) goto $C$L16 ; |206| 
                                        ; branchcc occurs ; |206| 
$C$L15:    
$C$DW$L$_ecu_sim_get_linear$2$B:
        XAR3 = dbl(*SP(#2))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 207,column 5,is_stmt
;----------------------------------------------------------------------
; 207 | dst[i] = pcm[i];                                                       
;----------------------------------------------------------------------
        T0 = *SP(#5) ; |207| 
        AR1 = T0
        XAR2 = dbl(*SP(#6))
        mar(AR3 + AR1) ; |207| 
        *AR3 = *AR2(T0) ; |207| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 206,column 18,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |206| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 206,column 13,is_stmt
        AR1 = *SP(#4) ; |206| 
        AR2 = *SP(#5) ; |206| 
        TC1 = uns(AR2 < AR1) ; |206| 
        if (TC1) goto $C$L15 ; |206| 
                                        ; branchcc occurs ; |206| 
$C$DW$L$_ecu_sim_get_linear$2$E:
$C$L16:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$82	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$82, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecufio.asm:$C$L15:1:1373047929")
	.dwattr $C$DW$82, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xd0)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_ecu_sim_get_linear$2$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_ecu_sim_get_linear$2$E)
	.dwendtag $C$DW$82

	.dwattr $C$DW$72, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xd1)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.global	_ecu_sim_put_linear

$C$DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_put_linear")
	.dwattr $C$DW$84, DW_AT_low_pc(_ecu_sim_put_linear)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ecu_sim_put_linear")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0xd9)
	.dwattr $C$DW$84, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 218,column 1,is_stmt,address _ecu_sim_put_linear

	.dwfde $C$DW$CIE, _ecu_sim_put_linear
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("src")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg17]
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dst")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg19]
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg12]
;----------------------------------------------------------------------
; 217 | void ecu_sim_put_linear (linSample *src, tword *dst, tint n)           
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_put_linear                                           *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,TC1, *
;*                        M40,SATA,SATD,RDM,FRCT,SMUL                          *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 10 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (8 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_put_linear:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-9
	.dwcfi	cfa_offset, 10
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("src")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_src")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("dst")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_dst")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_n")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_bregx 0x24 5]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("pcm")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_pcm")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_bregx 0x24 6]
;----------------------------------------------------------------------
; 219 | tuint i;                                                               
; 220 | linSample *pcm = (linSample *) dst;                                    
;----------------------------------------------------------------------
        *SP(#4) = T0 ; |218| 
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#2))
        dbl(*SP(#6)) = XAR3
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 222,column 8,is_stmt
;----------------------------------------------------------------------
; 222 | for (i=0; i<n; i++) {                                                  
;----------------------------------------------------------------------
        *SP(#5) = #0 ; |222| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 222,column 13,is_stmt
        AR2 = *SP(#5) ; |222| 
        AR1 = *SP(#4) ; |222| 
        TC1 = uns(AR2 >= AR1) ; |222| 
        if (TC1) goto $C$L18 ; |222| 
                                        ; branchcc occurs ; |222| 
$C$L17:    
$C$DW$L$_ecu_sim_put_linear$2$B:
        XAR3 = dbl(*SP(#6))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 223,column 5,is_stmt
;----------------------------------------------------------------------
; 223 | pcm[i] = src[i];                                                       
;----------------------------------------------------------------------
        T0 = *SP(#5) ; |223| 
        AR1 = T0
        XAR2 = dbl(*SP(#0))
        mar(AR3 + AR1) ; |223| 
        *AR3 = *AR2(T0) ; |223| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 222,column 18,is_stmt
        *SP(#5) = *SP(#5) + #1 ; |222| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 222,column 13,is_stmt
        AR1 = *SP(#4) ; |222| 
        AR2 = *SP(#5) ; |222| 
        TC1 = uns(AR2 < AR1) ; |222| 
        if (TC1) goto $C$L17 ; |222| 
                                        ; branchcc occurs ; |222| 
$C$DW$L$_ecu_sim_put_linear$2$E:
$C$L18:    
        SP = SP + #9
	.dwcfi	cfa_offset, 1
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$94	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$94, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecufio.asm:$C$L17:1:1373047929")
	.dwattr $C$DW$94, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0xde)
	.dwattr $C$DW$94, DW_AT_TI_end_line(0xe0)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$_ecu_sim_put_linear$2$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$_ecu_sim_put_linear$2$E)
	.dwendtag $C$DW$94

	.dwattr $C$DW$84, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0xe1)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text"
	.global	_ecu_sim_input

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_input")
	.dwattr $C$DW$96, DW_AT_low_pc(_ecu_sim_input)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_ecu_sim_input")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xea)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 235,column 1,is_stmt,address _ecu_sim_input

	.dwfde $C$DW$CIE, _ecu_sim_input
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg17]
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("linbuf")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_linbuf")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 234 | void ecu_sim_input(tword *buf, linSample *linbuf)                      
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_input                                                *
;*                                                                             *
;*   Function Uses Regs : T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,TC1,M40,   *
;*                        SATA,SATD,RDM,FRCT,SMUL                              *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_input:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-5
	.dwcfi	cfa_offset, 6
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("linbuf")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_linbuf")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_bregx 0x24 2]
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 237,column 3,is_stmt
;----------------------------------------------------------------------
; 237 | switch (ecuSim->pcm_format) {                                          
; 239 | case const_COMP_ALAW_8:                                                
;----------------------------------------------------------------------
        goto $C$L23 ; |237| 
                                        ; branch occurs ; |237| 
$C$L19:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 240,column 5,is_stmt
;----------------------------------------------------------------------
; 240 | ecu_sim_get_xlaw (buf, linbuf, ecuSim->frame_size, muaTblAlaw);        
;----------------------------------------------------------------------
        XAR2 = #_muaTblAlaw ; |240| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 241,column 10,is_stmt
;----------------------------------------------------------------------
; 241 | break;                                                                 
; 243 | case const_COMP_MULAW_8:                                               
;----------------------------------------------------------------------
        goto $C$L21 ; |241| 
                                        ; branch occurs ; |241| 
$C$L20:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 244,column 5,is_stmt
;----------------------------------------------------------------------
; 244 | ecu_sim_get_xlaw (buf, linbuf, ecuSim->frame_size, muaTblUlaw);        
;----------------------------------------------------------------------
        XAR2 = #_muaTblUlaw ; |244| 
$C$L21:    
        T0 = *AR3(short(#7)) ; |244| 
        XAR1 = dbl(*SP(#2))
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_ecu_sim_get_xlaw")
	.dwattr $C$DW$101, DW_AT_TI_call
        call #_ecu_sim_get_xlaw ; |244| 
                                        ; call occurs [#_ecu_sim_get_xlaw] ; |244| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 245,column 10,is_stmt
;----------------------------------------------------------------------
; 245 | break;                                                                 
; 247 | case const_COMP_LINEAR:                                                
;----------------------------------------------------------------------
        goto $C$L24 ; |245| 
                                        ; branch occurs ; |245| 
$C$L22:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 248,column 5,is_stmt
;----------------------------------------------------------------------
; 248 | ecu_sim_get_linear (buf, linbuf, ecuSim->frame_size);                  
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |248| 
        XAR1 = dbl(*SP(#2))
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_ecu_sim_get_linear")
	.dwattr $C$DW$102, DW_AT_TI_call
        call #_ecu_sim_get_linear ; |248| 
                                        ; call occurs [#_ecu_sim_get_linear] ; |248| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 249,column 10,is_stmt
;----------------------------------------------------------------------
; 249 | break;                                                                 
;----------------------------------------------------------------------
        goto $C$L24 ; |249| 
                                        ; branch occurs ; |249| 
$C$L23:    
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 237,column 3,is_stmt
        AR1 = *AR3(short(#5)) ; |237| 
        if (AR1 == #0) goto $C$L19 ; |237| 
                                        ; branchcc occurs ; |237| 
        AR2 = #1
        TC1 = (AR1 == AR2) ; |237| 
        if (TC1) goto $C$L20 ; |237| 
                                        ; branchcc occurs ; |237| 
        AR2 = #2
        TC1 = (AR1 == AR2) ; |237| 
        if (TC1) goto $C$L22 ; |237| 
                                        ; branchcc occurs ; |237| 
$C$L24:    
        SP = SP + #5
	.dwcfi	cfa_offset, 1
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return
        return
                                        ; return occurs
	.dwattr $C$DW$96, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xfb)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text"
	.global	_ecu_sim_fwrite

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_fwrite")
	.dwattr $C$DW$104, DW_AT_low_pc(_ecu_sim_fwrite)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_ecu_sim_fwrite")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 260,column 1,is_stmt,address _ecu_sim_fwrite

	.dwfde $C$DW$CIE, _ecu_sim_fwrite
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg17]
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf_size")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("fioptr")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 259 | void ecu_sim_fwrite (tword *buf, tint buf_size, volatile ecuSimFileIo_t
;     |  *fioptr)                                                              
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_fwrite                                               *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,SP,CARRY,  *
;*                        TC1,M40,SATA,SATD,RDM,FRCT,SMUL                      *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 12 words                                             *
;*                        (2 return address/alignment)                         *
;*                        (10 local values)                                    *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_ecu_sim_fwrite:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        SP = SP + #-11
	.dwcfi	cfa_offset, 12
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("buf_size")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_buf_size")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("fioptr")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_fioptr")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("sample_size")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_sample_size")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_bregx 0x24 6]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_bregx 0x24 7]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_bregx 0x24 8]
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_bregx 0x24 9]
        dbl(*SP(#4)) = XAR1
;----------------------------------------------------------------------
; 261 | tuint sample_size;                                                     
; 262 | tuint start;                                                           
; 263 | tint  i, j;                                                            
;----------------------------------------------------------------------
        *SP(#2) = T0 ; |260| 
        dbl(*SP(#0)) = XAR0
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 266,column 3,is_stmt
;----------------------------------------------------------------------
; 266 | if (fioptr->fio) {                                                     
;----------------------------------------------------------------------
        AR1 = *AR3 ; |266| 
        if (AR1 == #0) goto $C$L27 ; |266| 
                                        ; branchcc occurs ; |266| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 268,column 5,is_stmt
;----------------------------------------------------------------------
; 268 | sample_size = sizeof(tword);                                           
;----------------------------------------------------------------------
        *SP(#6) = #1 ; |268| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 269,column 5,is_stmt
;----------------------------------------------------------------------
; 269 | if (ecuSim->pcm_format == const_COMP_LINEAR) {                         
;----------------------------------------------------------------------
        TC1 = (*AR3(short(#5)) == #2) ; |269| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 270,column 7,is_stmt
;----------------------------------------------------------------------
; 270 | sample_size = sizeof(linSample)/sizeof(tword);                         
;----------------------------------------------------------------------
        if (TC1) execute (D_Unit) ||
           *SP(#6) = #1 ; |270| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 271,column 5,is_stmt
;----------------------------------------------------------------------
; 274 | else {                                                                 
; 275 | #ifdef _BIG_ENDIAN                                                     
; 276 |   start = 1;                                                           
; 277 | #else                                                                  
;----------------------------------------------------------------------
        if (TC1) goto $C$L26 ; |271| 
                                        ; branchcc occurs ; |271| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 278,column 7,is_stmt
;----------------------------------------------------------------------
; 278 | start = 0;                                                             
; 279 | #endif                                                                 
;----------------------------------------------------------------------
        *SP(#7) = #0 ; |278| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 280,column 12,is_stmt
;----------------------------------------------------------------------
; 280 | for (i=0, j=start; i<buf_size; i++, j+=2) {                            
;----------------------------------------------------------------------
        *SP(#8) = #0 ; |280| 
        AR1 = *SP(#7) ; |280| 
        *SP(#9) = AR1 ; |280| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 280,column 26,is_stmt
        AR2 = *SP(#8) ; |280| 
        AR1 = *SP(#2) ; |280| 
        TC1 = (AR2 >= AR1) ; |280| 
        if (TC1) goto $C$L26 ; |280| 
                                        ; branchcc occurs ; |280| 
$C$L25:    
$C$DW$L$_ecu_sim_fwrite$4$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 281,column 9,is_stmt
;----------------------------------------------------------------------
; 281 | buf[i] = buf[j];                                                       
;----------------------------------------------------------------------
        AR1 = *SP(#8) ; |281| 
        XAR3 = dbl(*SP(#0))
        XAR2 = dbl(*SP(#0))
        T0 = *SP(#9) ; |281| 
        mar(AR3 + AR1) ; |281| 
        *AR3 = *AR2(T0) ; |281| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 280,column 38,is_stmt
        *SP(#8) = *SP(#8) + #1 ; |280| 
        *SP(#9) = *SP(#9) + #2 ; |280| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 280,column 26,is_stmt
        AR1 = *SP(#2) ; |280| 
        AR2 = *SP(#8) ; |280| 
        TC1 = (AR2 < AR1) ; |280| 
        if (TC1) goto $C$L25 ; |280| 
                                        ; branchcc occurs ; |280| 
$C$DW$L$_ecu_sim_fwrite$4$E:
$C$L26:    
        XAR3 = dbl(*SP(#4))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 286,column 5,is_stmt
;----------------------------------------------------------------------
; 286 | fwrite (buf, sample_size, buf_size, fioptr->fptr);                     
;----------------------------------------------------------------------
        T1 = *SP(#2) ; |286| 
        XAR0 = dbl(*SP(#0))
        T0 = *SP(#6) ; |286| 
        XAR1 = dbl(*AR3(short(#2)))
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_fwrite")
	.dwattr $C$DW$115, DW_AT_TI_call
        call #_fwrite ; |286| 
                                        ; call occurs [#_fwrite] ; |286| 
$C$L27:    
        SP = SP + #11
	.dwcfi	cfa_offset, 1
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$117	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$117, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecufio.asm:$C$L25:1:1373047929")
	.dwattr $C$DW$117, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x118)
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x11a)
$C$DW$118	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$118, DW_AT_low_pc($C$DW$L$_ecu_sim_fwrite$4$B)
	.dwattr $C$DW$118, DW_AT_high_pc($C$DW$L$_ecu_sim_fwrite$4$E)
	.dwendtag $C$DW$117

	.dwattr $C$DW$104, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x120)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.global	_ecu_sim_output

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("ecu_sim_output")
	.dwattr $C$DW$119, DW_AT_low_pc(_ecu_sim_output)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_ecu_sim_output")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0xa8)
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 297,column 1,is_stmt,address _ecu_sim_output

	.dwfde $C$DW$CIE, _ecu_sim_output
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg17]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("linbuf")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_linbuf")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg19]
;----------------------------------------------------------------------
; 296 | void ecu_sim_output (tword *buf, linSample *linbuf)                    
; 298 | #if _ECUSIMPORT_C55 || _ECUSIMPORT_C55L                                
; 299 | tint i;                                                                
; 300 | linSample temp_buffer[SIU_MAX_FRAME_LENGTH*2];                         
;----------------------------------------------------------------------
;*******************************************************************************
;* FUNCTION NAME: ecu_sim_output                                               *
;*                                                                             *
;*   Function Uses Regs : AC0,T0,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,FP,XFP,SP,*
;*                        CARRY,TC1,M40,SATA,SATD,RDM,FRCT,SMUL                *
;*   Save On Entry Regs : FP                                                   *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 168 words                                            *
;*                        (2 return address/alignment)                         *
;*                        (165 local values)                                   *
;*                        (1 register save area)                               *
;*   Min System Stack   : 2 words                                              *
;*******************************************************************************
_ecu_sim_output:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        pshboth(XFP)
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 32, -2

        @SP_L = @SP_L + #-166
||      mmap()

        XFP = mar(*SP)
	.dwcfi	cfa_offset, 168
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("linbuf")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_linbuf")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_bregx 0x24 2]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_bregx 0x24 4]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("temp_buffer")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_temp_buffer")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_bregx 0x24 5]
        XAR3 = dbl(*(#_ecuSim))
        dbl(*SP(#2)) = XAR1
        dbl(*SP(#0)) = XAR0
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 302,column 8,is_stmt
;----------------------------------------------------------------------
; 302 | for (i = 0; i<ecuSim->frame_size; i++) {                               
;----------------------------------------------------------------------
        *SP(#4) = #0 ; |302| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 302,column 15,is_stmt
        AR2 = *SP(#4) ; |302| 
        AR1 = *AR3(short(#7)) ; |302| 
        TC1 = (AR2 >= AR1) ; |302| 
        if (TC1) goto $C$L32 ; |302| 
                                        ; branchcc occurs ; |302| 
$C$L28:    
$C$DW$L$_ecu_sim_output$2$B:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 303,column 5,is_stmt
;----------------------------------------------------------------------
; 303 | temp_buffer[2*i+0] = linbuf[i];                                        
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |303| 
        AR1 = T0
        AR1 = AR1 <<< #1 ; |303| 
        XAR2 = dbl(*SP(#2))
        XAR3 = mar(*SP(#5))
        mar(AR3 + AR1) ; |303| 
        *AR3 = *AR2(T0) ; |303| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 304,column 4,is_stmt
;----------------------------------------------------------------------
; 304 | temp_buffer[2*i+1] = 0;                                                
; 306 | #endif                                                                 
;----------------------------------------------------------------------
        T0 = *SP(#4) ; |304| 
        T0 = T0 <<< #1 ; |304| 
        T0 = T0 + #1 ; |304| 
        XAR3 = mar(*SP(#5))
        *AR3(T0) = #0 ; |304| 
        XAR3 = dbl(*(#_ecuSim))
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 302,column 37,is_stmt
        *SP(#4) = *SP(#4) + #1 ; |302| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 302,column 15,is_stmt
        AR2 = *SP(#4) ; |302| 
        AR1 = *AR3(short(#7)) ; |302| 
        TC1 = (AR2 < AR1) ; |302| 
        if (TC1) goto $C$L28 ; |302| 
                                        ; branchcc occurs ; |302| 
$C$DW$L$_ecu_sim_output$2$E:
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 309,column 3,is_stmt
;----------------------------------------------------------------------
; 309 | switch (ecuSim->pcm_format) {                                          
; 311 |   case const_COMP_ALAW_8:                                              
;----------------------------------------------------------------------
        goto $C$L32 ; |309| 
                                        ; branch occurs ; |309| 
$C$L29:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 312,column 7,is_stmt
;----------------------------------------------------------------------
; 312 | muaTblAlawCmpr (ecuSim->frame_size, linbuf, (tint *) buf);             
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |312| 
        XAR0 = dbl(*SP(#2))
        XAR1 = dbl(*SP(#0))
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_muaTblAlawCmpr")
	.dwattr $C$DW$126, DW_AT_TI_call
        call #_muaTblAlawCmpr ; |312| 
                                        ; call occurs [#_muaTblAlawCmpr] ; |312| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 313,column 12,is_stmt
;----------------------------------------------------------------------
; 313 | break;                                                                 
; 316 | case const_COMP_MULAW_8:                                               
; 317 | #if _ECUSIMPORT_C55 || _ECUSIMPORT_C55L                                
;----------------------------------------------------------------------
        goto $C$L33 ; |313| 
                                        ; branch occurs ; |313| 
$C$L30:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 318,column 7,is_stmt
;----------------------------------------------------------------------
; 318 | muaTblUlawCmpr (ecuSim->frame_size*2, temp_buffer, (tint *) buf);      
; 319 | #else                                                                  
; 320 | muaTblUlawCmpr (ecuSim->frame_size, linbuf, (tint *) buf);             
; 321 | #endif                                                                 
;----------------------------------------------------------------------
        AC0 = *AR3(short(#7)) << #1 ; |318| 
        XAR1 = dbl(*SP(#0))

        T0 = AC0  ; |318| 
||      XAR0 = mar(*SP(#5))

$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_muaTblUlawCmpr")
	.dwattr $C$DW$127, DW_AT_TI_call
        call #_muaTblUlawCmpr ; |318| 
                                        ; call occurs [#_muaTblUlawCmpr] ; |318| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 322,column 12,is_stmt
;----------------------------------------------------------------------
; 322 | break;                                                                 
; 325 | case const_COMP_LINEAR:                                                
;----------------------------------------------------------------------
        goto $C$L33 ; |322| 
                                        ; branch occurs ; |322| 
$C$L31:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 326,column 7,is_stmt
;----------------------------------------------------------------------
; 326 | ecu_sim_put_linear (linbuf, buf, ecuSim->frame_size);                  
;----------------------------------------------------------------------
        T0 = *AR3(short(#7)) ; |326| 
        XAR0 = dbl(*SP(#2))
        XAR1 = dbl(*SP(#0))
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_ecu_sim_put_linear")
	.dwattr $C$DW$128, DW_AT_TI_call
        call #_ecu_sim_put_linear ; |326| 
                                        ; call occurs [#_ecu_sim_put_linear] ; |326| 
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 327,column 12,is_stmt
;----------------------------------------------------------------------
; 327 | break;                                                                 
;----------------------------------------------------------------------
        goto $C$L33 ; |327| 
                                        ; branch occurs ; |327| 
$C$L32:    
	.dwpsn	file "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c",line 309,column 3,is_stmt
        AR1 = *AR3(short(#5)) ; |309| 
        if (AR1 == #0) goto $C$L29 ; |309| 
                                        ; branchcc occurs ; |309| 
        AR2 = #1
        TC1 = (AR1 == AR2) ; |309| 
        if (TC1) goto $C$L30 ; |309| 
                                        ; branchcc occurs ; |309| 
        AR2 = #2
        TC1 = (AR1 == AR2) ; |309| 
        if (TC1) goto $C$L31 ; |309| 
                                        ; branchcc occurs ; |309| 
$C$L33:    

        @SP_L = @SP_L + #166
||      mmap()

	.dwcfi	cfa_offset, 2
        XFP = popboth()
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 1
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return
        return
                                        ; return occurs

$C$DW$130	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$130, DW_AT_name("M:\TI_MAS_VOLIB_2_1_0_1_bldforge\dsps_gtmas\ti\mas\ecu\test\ccsProjects\test_rel_c55l_C55L_COFF\Debug\ecufio.asm:$C$L28:1:1373047929")
	.dwattr $C$DW$130, DW_AT_TI_begin_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$130, DW_AT_TI_begin_line(0x12e)
	.dwattr $C$DW$130, DW_AT_TI_end_line(0x131)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$_ecu_sim_output$2$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$_ecu_sim_output$2$E)
	.dwendtag $C$DW$130

	.dwattr $C$DW$119, DW_AT_TI_end_file("M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/src/ecufio.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x149)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

;*******************************************************************************
;* FAR STRINGS                                                                 *
;*******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	" - File already open: %s",10,0
	.align	2
$C$FSL2:	.string	"rb",0
	.align	2
$C$FSL3:	.string	"wb",0
	.align	2
$C$FSL4:	.string	"Error: unrecognized file action %d ",10,0
	.align	2
$C$FSL5:	.string	"Unable to open file: %s",10,0
	.align	2
$C$FSL6:	.string	" - Opened file: %s",10,0
	.align	2
$C$FSL7:	.string	"Warning: premature file close",10,0
	.align	2
$C$FSL8:	.string	" - Closed file: %s",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_muaTblUlawCmpr
	.global	_muaTblAlawCmpr
	.global	_fclose
	.global	_fopen
	.global	_printf
	.global	_fread
	.global	_fwrite
	.global	_muaTblAlaw
	.global	_muaTblUlaw
	.global	_ecuSim

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x0c)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_name("fd")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("buf")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("pos")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("bufend")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("buff_stop")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$137, DW_AT_name("flags")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x17)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x104)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$138, DW_AT_name("fio")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_fio")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$139, DW_AT_name("eof")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_eof")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$140, DW_AT_name("fptr")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_fptr")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$141, DW_AT_name("fname")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_fname")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("ecuSimFileIo_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$142	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$75)
$C$DW$T$82	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$142)
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x17)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x03)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$143, DW_AT_name("ctl_code")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$144, DW_AT_name("u")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("ecuControl_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x06)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$145, DW_AT_name("length")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$146, DW_AT_name("h")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$147, DW_AT_name("exp")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_exp")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$148, DW_AT_name("erl0")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_erl0")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$149, DW_AT_name("tone_scaling")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_tone_scaling")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0a)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$150, DW_AT_name("type")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$151, DW_AT_name("erl")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_erl")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$152, DW_AT_name("delay")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$153, DW_AT_name("negative_phase")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_negative_phase")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$154, DW_AT_name("u")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$37

$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("hybSegment_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x0c)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$155, DW_AT_name("code")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_code")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$156, DW_AT_name("u")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("hybControl_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x12)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$157, DW_AT_name("state")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$158, DW_AT_name("reset")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_reset")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$159, DW_AT_name("delay")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_delay")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$160, DW_AT_name("dcoffset")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_dcoffset")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$161, DW_AT_name("wftype")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_wftype")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$162, DW_AT_name("f1")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_f1")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$163, DW_AT_name("f2")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_f2")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$164, DW_AT_name("amp1")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_amp1")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$165, DW_AT_name("amp2")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_amp2")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$166, DW_AT_name("nlevel")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_nlevel")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$167, DW_AT_name("nseed")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_nseed")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$168, DW_AT_name("ntype")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_ntype")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$169, DW_AT_name("pow_level")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_pow_level")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$170, DW_AT_name("hoth_seed")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_hoth_seed")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$171, DW_AT_name("sdram_addr")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_sdram_addr")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$172, DW_AT_name("num_sample")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_num_sample")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("siuSGNPars_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x06)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$173, DW_AT_name("frame_size")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$174, DW_AT_name("send_out_buf")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_send_out_buf")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$175, DW_AT_name("receive_in_buf")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_receive_in_buf")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("setFrame_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x05)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$176, DW_AT_name("send_out")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_send_out")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$177, DW_AT_name("send_out_mean")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_send_out_mean")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$178, DW_AT_name("receive_out")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_receive_out")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$179, DW_AT_name("receive_out_mean")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_receive_out_mean")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$180, DW_AT_name("underrun")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_underrun")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("piuStats_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x03)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$181, DW_AT_name("enable")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$182, DW_AT_name("threshold")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$183, DW_AT_name("hangover")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_hangover")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("bidSilenceDet_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x04)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$184, DW_AT_name("enable")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$185, DW_AT_name("type")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$186, DW_AT_name("time")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_time")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$187, DW_AT_name("custom")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_custom")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternDet_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$188, DW_AT_name("enable")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$189, DW_AT_name("pattern")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_pattern")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("pcmPatternGen_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x04)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$190, DW_AT_name("law")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_law")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$191, DW_AT_name("pcm_expand_table")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_pcm_expand_table")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("piuCompandingCfg_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x08)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$192, DW_AT_name("ctl_code")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_ctl_code")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$193, DW_AT_name("u")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_u")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$56

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("piuControl_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x04)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$194, DW_AT_name("select")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_select")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$195, DW_AT_name("start")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$196, DW_AT_name("ncoeff")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_ncoeff")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$197, DW_AT_name("retstat")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_retstat")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("siuGetFlt_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$198, DW_AT_name("ctl_mask")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_ctl_mask")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$199, DW_AT_name("bg_speed")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_bg_speed")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$200, DW_AT_name("srch_speed")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_srch_speed")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$201, DW_AT_name("place_speed")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_place_speed")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$202, DW_AT_name("enable")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_enable")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$203, DW_AT_name("n_level")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_n_level")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$204, DW_AT_name("nlp_aggress")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_nlp_aggress")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$205, DW_AT_name("cn_config")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_cn_config")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x06)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$206, DW_AT_name("uhseg")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_uhseg")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$207, DW_AT_name("g168hseg")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_g168hseg")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0a)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$208, DW_AT_name("segment")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_segment")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$209, DW_AT_name("dgain_l2")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_dgain_l2")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x06)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$210, DW_AT_name("loopback_select")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_loopback_select")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$211, DW_AT_name("frame_size")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$212, DW_AT_name("set_frame")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_set_frame")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$213, DW_AT_name("stats")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_stats")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$214, DW_AT_name("bid_silence_detect")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_bid_silence_detect")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$215, DW_AT_name("pattern_detect")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_pattern_detect")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$216, DW_AT_name("pattern_generate")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_pattern_generate")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$217, DW_AT_name("companding")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_companding")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$218, DW_AT_name("dc_offset_removal_select")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_dc_offset_removal_select")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$219	.dwtag  DW_TAG_TI_far_type
$C$DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$219)
$C$DW$T$89	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x17)
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
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x17)
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
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("tint")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("Fract")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x17)

$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$220	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$220, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$58

$C$DW$T$85	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x17)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("linSample")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x17)

$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0xa0)
$C$DW$221	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$221, DW_AT_upper_bound(0x9f)
	.dwendtag $C$DW$T$107

$C$DW$222	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$31)
$C$DW$T$53	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$222)
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x17)

$C$DW$T$109	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
$C$DW$223	.dwtag  DW_TAG_subrange_type
	.dwendtag $C$DW$T$109

$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("tshort")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("tbool")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("tuint")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x17)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("tword")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
$C$DW$T$94	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_address_class(0x17)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("tulong")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
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
$C$DW$T$27	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$27, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$27, DW_AT_name("signed char")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x100)
$C$DW$224	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$224, DW_AT_upper_bound(0xff)
	.dwendtag $C$DW$T$28

$C$DW$225	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$27)
$C$DW$T$77	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$225)
$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x17)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("siuSetup_s")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x46e)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$226, DW_AT_name("exec")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_exec")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$227, DW_AT_name("sample_cnt")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_sample_cnt")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$228, DW_AT_name("clock_mul")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_clock_mul")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$229, DW_AT_name("pcm_format")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_pcm_format")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$230, DW_AT_name("pcm_bits")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_pcm_bits")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$231, DW_AT_name("frame_size")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_frame_size")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$232, DW_AT_name("ecu_y2x_delay")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ecu_y2x_delay")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$233, DW_AT_name("ecu_fltseg_length")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_ecu_fltseg_length")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$234, DW_AT_name("ecu_num_fltseg")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_ecu_num_fltseg")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$235, DW_AT_name("ecu_filter_length")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_ecu_filter_length")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$236, DW_AT_name("hyb_filter_length")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_hyb_filter_length")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$237, DW_AT_name("toggle_ecu")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_toggle_ecu")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$238, DW_AT_name("ecuCtl")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_ecuCtl")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$239, DW_AT_name("toggle_hyb")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_toggle_hyb")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$240, DW_AT_name("hybCtl")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_hybCtl")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$241, DW_AT_name("toggle_tx_sg")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_toggle_tx_sg")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$242, DW_AT_name("txSGN")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_txSGN")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$243, DW_AT_name("toggle_rx_sg")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_toggle_rx_sg")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$244, DW_AT_name("rxSGN")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_rxSGN")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$245, DW_AT_name("toggle_piu")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_toggle_piu")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$246, DW_AT_name("piuCtl")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_piuCtl")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$247, DW_AT_name("toggle_getflt")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_toggle_getflt")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$248, DW_AT_name("getflt")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_getflt")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$249, DW_AT_name("profile_enable")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_profile_enable")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x55]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$250, DW_AT_name("toggle_freerun")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_toggle_freerun")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$251, DW_AT_name("freerun_frame_cnt")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_freerun_frame_cnt")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x57]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$252, DW_AT_name("Fs")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_Fs")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$253, DW_AT_name("error_id")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_error_id")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$254, DW_AT_name("sig_src")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_sig_src")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$255, DW_AT_name("save_to_file")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_save_to_file")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x5b]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$256, DW_AT_name("num_channel")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_num_channel")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$257, DW_AT_name("output_chnum")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_output_chnum")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x5d]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$258, DW_AT_name("rin")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_rin")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$259, DW_AT_name("sin")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_sin")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$260, DW_AT_name("rout")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_rout")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x266]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$261, DW_AT_name("sout")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_sout")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x36a]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("siuSetup_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
$C$DW$262	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$134)
$C$DW$T$135	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$262)
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x17)
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

$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg0]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg1]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg2]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg3]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg4]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg5]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg6]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg7]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg8]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg9]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg10]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg11]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg12]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg13]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg14]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg15]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg16]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg17]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg18]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg19]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg20]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg21]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg22]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg23]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg24]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg25]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg26]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg27]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg28]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg29]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg30]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg31]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x20]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x21]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x22]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x23]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x24]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x25]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x26]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x27]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x28]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x29]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x30]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x31]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x32]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x33]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x34]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x35]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x36]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x37]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x38]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x39]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x40]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x41]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x42]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x43]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x44]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x45]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x46]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x47]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x48]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x49]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x50]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x51]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x52]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x53]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x54]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x55]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x56]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x57]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x58]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x59]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

