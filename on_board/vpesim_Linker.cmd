/**********************************************************/
/*                                                        */
/*         LINKER command file for LEAD3 memory map       */
/*                                                        */
/**********************************************************/

-sysstack   0x0400   /* SECONDARY STACK SIZE  */

MEMORY
{
    PAGE 0:

        MMR     : origin = 0000000h, length = 00000c0h 
        SPRAM   : origin = 00000c0h, length = 0000040
        DARAM0  : origin = 0000100h, length = 0003F00h
        DARAM1  (RWX): origin = 0004000h, length = 0004000h
        DARAM2 (RWX) : origin = 0008000h, length = 0008000h
/*        DARAM3 (RWX) : origin = 000e000h, length = 0002000h*/

        SARAM01 (RWX) : origin = 0010000h, length = 0008000h
        SARAM2  : origin = 0018000h, length = 0004000h
        SARAM3  : origin = 001c000h, length = 0004000h
        SARAM4  : origin = 0020000h, length = 0004000h
        SARAM5  : origin = 0024000h, length = 000c000h	/* A little larger for storing the fuzzer itself */
        SARAM6  : origin = 0030000h, length = 0004000h
        PROG (RWX)  : origin = 0034000h, length = 0004000h
        SARAM8 : origin = 0038000h, length = 0007000h
        SARAM9 : origin = 003f000h, length = 0005000h 
        SARAM10 (RWX): origin = 0044000h, length = 0004000h
        SARAM11 : origin = 0048000h, length = 0008000h	/* For the corpus sandbox so that it will not effect program memory*/

        CE0     : origin = 0050000h, length = 03b0000h 
        CE1     : origin = 0400000h, length = 0400000h
        CE2     : origin = 0800000h, length = 0400000h
        CE3     : origin = 0c00000h, length = 03f8000h

        PDROM   : origin = 0ff8000h, length = 07f00h
        VECS    : origin = 0ffff00h, length = 00100h  /* reset vector */
}	

 
SECTIONS
{
        vectors (NOLOAD) : {} > DARAM0  PAGE 0         /* interrupt vector table */ /* was VECS */
        .cinit   : {} > SARAM01 PAGE 0
	.switch  > SARAM5 PAGE 0
        .text    : {
/*	ti/mas/vpe/lib/vpe_a.a55L	<nrmisc.o55L> (.text)
	ti/mas/vpe/lib/vpe_a.a55L	<nrwiener.o55L> (.text)
	ti/mas/vpe/lib/vpe_a.a55L	<nrfft.o55L> (.text)
	ti/mas/vpe/lib/vpe_c.a55L	<nrgain.o55L> (.text)
	ti/mas/vpe/lib/vpe_c.a55L	<nrprocess.o55L> (.text)
	ti/mas/vpe/lib/vpe_c.a55L	<nr.o55L> (.text)
	ti/mas/sdk/lib/sdk_c.a55L 	<sgn.o55L> (.text) */
	} > SARAM5 PAGE 0
        isrs     : {} > SARAM2  PAGE 0
        .stack   : {} > DARAM0  PAGE 0 ALIGN = 4
        .sysstack: {} > DARAM0  PAGE 0 ALIGN = 4
        .sysmem  : {} > DARAM2  PAGE 0 ALIGN = 4
        .data    : {} > SARAM8  PAGE 0        /* force .data to not be on Page 0 */
        //.bss:saram  : {} > DARAM2  PAGE 0     /* must be a different on-chip block than .bss */
        //.bss:saram2 : {} > SARAM3  PAGE 0     /* must be a different on-chip block than .bss */
        //.bss     : {} > SARAM15 PAGE 0      /* for normal testing, move .bss off of DARAM */
        .bss    :  {} > SARAM01        /* for optimal timing tests, put .bss in DARAM */
        .input   : {} > SARAM11  PAGE 0        /* for optimal timing tests, put .input in DARAM */
        .coeffs  : {} > DARAM0  PAGE 0        /* for optimal timing tests, put .coeffs in DARAM */
        .dbuffer : {} > DARAM1  PAGE 0        /* for optimal timing tests, put .dbuffer in DARAM */
        .const   : {
	/*ti/mas/vpe/lib/vpe_c.a55L	<nrtbl.o55L> (.const)
	ti/mas/vpe/lib/vpe_c.a55L	<nrffttb.o55L> (.const)
	ti/mas/vpe/lib/vpe_c.a55L	<nrgain.o55L> (.const)
	ti/mas/vpe/lib/vpe_c.a55L	<nrprocess.o55L> (.const)*/
	} > SARAM8  PAGE 0        
        .cio     : {} > DARAM1  PAGE 0
        .program_sandbox : > SARAM11 /* Store the device under test here */
        {
	/*new_vpesim.obj*/
		/*--library=*ximagex.lib<Boundarymn.obj>(.text)*/
        }
        .data_sandbox : {} > SARAM10 				   /* Data may get muddled because of the SUT having a error */
}
