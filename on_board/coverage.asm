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
	
	MOV T0, *XAR0;		;Mimics the memset writes NOP's over the orginal function call.
	ADD #1, XAR0;
	MOV T0, *AXR0;
	
	MOV RETA, AC0;
	
	
