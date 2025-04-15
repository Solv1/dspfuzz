;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                        Unix v4.4.1 *
;* Date/Time created: Mon Jun 17 10:47:16 2024                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:none 
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
;*   Debug Info         : No Debug Info                                        *
;*******************************************************************************
;	/home/santiago/Research/Ti/C55_Tools/acp55 -@/tmp/28567jismEB 
	.sect	".text"
	.ref _coverage_log;
	.global	_test
;*******************************************************************************
;* FUNCTION NAME: test                                                         *
;*                                                                             *
;*   Function Uses Regs : T0,T1,AR0,XAR0,AR1,AR3,XAR3,SP,TC1,M40,SATA,SATD,RDM,*
;*                        FRCT,SMUL                                            *
;*   Stack Frame        : Compact (No Frame Pointer)                           *
;*   Total Frame Size   : 6 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (4 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************
_test:
	CALL #_coverage_log;
        AADD #-5, SP
        MOV XAR0, dbl(*SP(#2))
        MOV T0, *SP(#0) ; |14| 
        MOV dbl(*SP(#2)), XAR3
        MOV #127, T1 ; |20| 
        MOV *AR3, T0 ; |20| 
        CALL #__remi ; |20| 
                                        ; call occurs [#__remi] ; |20| 
        MOV #68, AR1 ; |20| 
        CMP T0 != AR1, TC1 ; |20| 
        BCC $C$L2,TC1 ; |20| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |20| 
        MOV dbl(*SP(#2)), XAR3
        MOV #127, T1 ; |22| 
        MOV *AR3(short(#1)), T0 ; |22| 
        CALL #__remi ; |22| 
                                        ; call occurs [#__remi] ; |22| 
        MOV #69, AR1 ; |22| 
        CMP T0 != AR1, TC1 ; |22| 
        BCC $C$L2,TC1 ; |22| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |22| 
        MOV dbl(*SP(#2)), XAR3
        MOV #127, T1 ; |24| 
        MOV *AR3(short(#2)), T0 ; |24| 
        CALL #__remi ; |24| 
                                        ; call occurs [#__remi] ; |24| 
        MOV #65, AR1 ; |24| 
        CMP T0 != AR1, TC1 ; |24| 
        BCC $C$L2,TC1 ; |24| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |24| 
        MOV dbl(*SP(#2)), XAR3
        MOV #127, T1 ; |26| 
        MOV *AR3(short(#3)), T0 ; |26| 
        CALL #__remi ; |26| 
                                        ; call occurs [#__remi] ; |26| 
        MOV #68, AR1 ; |26| 
        CMP T0 != AR1, TC1 ; |26| 
        BCC $C$L2,TC1 ; |26| 
	CALL #_coverage_log;
                                        ; branchcc occurs ; |26| 
$C$L1:    
	CALL #_coverage_log;
        B $C$L1   ; |28| 
	CALL #_coverage_log;
                                        ; branch occurs ; |28| 
$C$L2:    
	CALL #_coverage_log;
        MOV #0, T0
        AADD #5, SP
        RET
                                        ; return occurs
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__remi
