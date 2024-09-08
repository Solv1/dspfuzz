 
_Hwa_PI_16x16_0 .macro 
                        
            BRC0 = #15		; repeat 16 times            
			AC1 = copr (#0x0 , AC0, dbl(*AR2+));
			AC1 = copr (#0x10, AC0, dbl(*AR3+));
			AC1 = copr (#0x11, AC0, AC1);
			AC1 = copr (#0x12, AC0, AC1);
			AC1 = copr (#0x13, AC0, dbl(*AR2+));
			AC1 = copr (#0x10, AC0, dbl(*AR3+));
			AC1 = copr (#0x11, AC0, AC1);
			AC1 = copr (#0x12, AC0, AC1);
			AC1 = copr (#0x13, AC0, dbl(*AR2+));
			AC1 = copr (#0x10, AC0, dbl(*AR3+));
			AC1 = copr (#0x11, AC0, AC1);

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)),dbl(*AR1+)=AC1;
						
			AC1 = copr (#0x10, AC0, dbl(*AR3+)),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*(AR2+DR0))),dbl(*AR1+)=AC1;
						
			blockrepeat {
			AC1 = copr (#0x10, AC0, dbl(*(AR3+DR0))),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, dbl(*AR2+)),dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, dbl(*AR3+)),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)),dbl(*AR1+)=AC1;
	
			AC1 = copr (#0x10, AC0, dbl(*AR3+)),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)),dbl(*AR1+)=AC1;
	
			AC1 = copr (#0x10, AC0, dbl(*AR3+)),dbl(*(AR0+DR1))=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*(AR1+DR1))=AC1;

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)),dbl(*AR1+)=AC1;
	
			AC1 = copr (#0x10, AC0, dbl(*AR3+)),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*(AR2+DR0))),dbl(*AR1+)=AC1;

			}
	
			AC1 = copr (#0x10, AC0, dbl(*(AR3+DR0))),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1
			
			AC1 = copr (#0x10, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1),dbl(*AR1+)=AC1
	
			AC1 = copr (#0x10, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1

			AC1 = copr (#0x12, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1),dbl(*AR1+)=AC1
	
			AC1 = copr (#0x10, AC0, AC1),dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1),dbl(*AR1+)=AC1
	           
            
    .endm  
             
             
_Hwa_PI_16x16_1 .macro
             
			AC1 = copr (#0x00 , AC0, dbl(*AR2+));
			AC1 = copr (#0x16, AC0, dbl(*AR3+));
			AC1 = copr (#0x17, AC0, AC1);
			AC1 = copr (#0x12, AC0, dbl(*AR2+));
			AC1 = copr (#0x14, AC0, dbl(*AR3+));
			AC1 = copr (#0x15, AC0, AC1);
			AC1 = copr (#0x13, AC0, AC1);
			AC1 = copr (#0x12, AC0, dbl(*AR2+));
			AC1 = copr (#0x14, AC0, dbl(*AR3+));
			AC1 = copr (#0x15, AC0, AC1);
			AC1 = copr (#0x13, AC0, AC1)

			BRC0 = #15		; repeat 16 times
			blockrepeat {

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*(AR2+DR0))), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*(AR3+DR0))), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x16, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x17, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*(AR0+DR1))=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*(AR1+DR1))=AC1;

			}
			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x16, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x17, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;
			
	.endm
			

_Hwa_PI_16x16_2 .macro			
			
			AC1 = copr (#0x0 , AC0, dbl(*AR2+));
			AC1 = copr (#0x18, AC0, dbl(*AR3+));
			AC1 = copr (#0x19, AC0, dbl(*AR2+));
			AC1 = copr (#0x10, AC0, dbl(*AR3+));
			AC1 = copr (#0x11, AC0, AC1);
			AC1 = copr (#0x12, AC0, AC1);
			AC1 = copr (#0x13, AC0, dbl(*AR2+));
			AC1 = copr (#0x10, AC0, dbl(*AR3+));
			AC1 = copr (#0x11, AC0, AC1);
			AC1 = copr (#0x12, AC0, AC1);
			AC1 = copr (#0x13, AC0, dbl(*AR2+))
			BRC0 = #15		; repeat 16 times
			blockrepeat {
			AC1 = copr (#0x10, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*(AR2+DR0))), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, dbl(*(AR3+DR0))), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x18, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x19, AC0, dbl(*AR2+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*(AR0+DR1))=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)), dbl(*(AR1+DR1))=AC1;

			}
			AC1 = copr (#0x10, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, dbl(*AR2+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, dbl(*AR3+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x18, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x19, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x10, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x11, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;
					
	.endm
	        

_Hwa_PI_16x16_3 .macro	                    
	                                            
			AC1 = copr (#0x0 , AC0, dbl(*AR2+))
			AC1 = copr (#0x1a, AC0, dbl(*AR3+))
			AC1 = copr (#0x1b, AC0, dbl(*AR2+))
			AC1 = copr (#0x14, AC0, dbl(*AR3+))
			AC1 = copr (#0x15, AC0, AC1)
			AC1 = copr (#0x13, AC0, AC1)
			AC1 = copr (#0x12, AC0, dbl(*AR2+))
			AC1 = copr (#0x14, AC0, dbl(*AR3+))
			AC1 = copr (#0x15, AC0, AC1)
			AC1 = copr (#0x13, AC0, AC1)
			AC1 = copr (#0x12, AC0, dbl(*AR2+))
			AC1 = copr (#0x14, AC0, dbl(*AR3+))

			BRC0 = #15		; repeat 16 times

			blockrepeat {

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, dbl(*(AR2+DR0))), dbl(*AR0+)=AC1;
			AC1 = copr (#0x1c, AC0, dbl(*(AR3+DR0))), dbl(*AR1+)=AC1;

			AC1 = copr (#0x1d, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x1a, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x1b, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*(AR0+DR1))=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*(AR1+DR1))=AC1;

			}

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x1c, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x1d, AC0, dbl(*AR2+)), dbl(*AR0+)=AC1;
			AC1 = copr (#0x1a, AC0, dbl(*AR3+)), dbl(*AR1+)=AC1;

			AC1 = copr (#0x1b, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x15, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x13, AC0, AC1), dbl(*AR1+)=AC1;

			AC1 = copr (#0x12, AC0, AC1), dbl(*AR0+)=AC1;
			AC1 = copr (#0x14, AC0, AC1), dbl(*AR1+)=AC1;


	.endm
