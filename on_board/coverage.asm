;/***********************************************************
;@debrief _coverage_log: inline assembly function for coverage
;@param NONE
;@return NONE
;***********************************************************/
.section ".text"
.global _coverage_log

_coverage_log:
	AADD #-5, SP
	MOV RETA, dbl(*SP(#0h)); ;Saving the return address here
	
	PSH T2;			 ;Pushing Register Context to the stack.
	PSH T3;
	PSHBOTH XAR5;
	PSHBOTH XAR6;
	PSHBOTH XAR7;
	AADD #5, SP;
	
	MOV RETA, AC0;
	SUB #4, AC0;
	SFTL AC0, #-1; || MOV #8224, T0;
	
	MOV T0, *XAR0;		    ;Mimics the memset writes NOP's over the orginal function call.
	ADD #1, XAR0;
	MOV T0, *AXR0;
	
	MOV RETA, AC0;          ;Return address for hashing function.
    MOV dbl(*(#_sut_start_address)), AC1; ;SUT address offset
    SUB AC1, AC0; Raw Value = Return address - Start address -> AC0
    MOV AC0, AC1; 
    AND #0x8000, AC0, AC0; index = raw_value % (MAX_COVERAGE*2) Because MAX_COVERAGE is a power of 2 we can use a & to mimic a modulo
    SFTL AC0, #-1; This is now the hash map index
    
    SFTL AC1, #-1;
    AND #0x0001, AC1, AC1; byte_index = (address >> 1) % 2 

    AMOV #_coverage_map, XAR3; 
    XCC AR1 != #0 || OR #0x0100, *AR3(AC0);
    XCC AR1 == #0 || OR #0x0001, *AR3(AC0);

    AADD #-5, SP;       ;Restore the Register Context
    POPBOTH XAR7;
    POPBOTH XAR6;
    POPBOTH XAR5;
    POP T3;
    POP T2;

    MOV #1, *(#_isIncreasing);
    
    AADD #5, SP;
    
    RET;


        
    
    
	
