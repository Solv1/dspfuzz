/******************************************************************************
 * TEST_REL_C55L.CMD - COMMAND FILE FOR LINKING C55x PROGRAMS
 *
 *    Description: This file is a sample command file that can be used
 *                 for linking programs built with the TMS320C55x C
 *                 Compiler.   Use it as a guideline; you may want to change
 *                 the allocation scheme according to the size of your
 *                 program and the memory layout of your target system.
 *
 *    Notes: (1)   Be sure to use the right library!  Use a library that
 *                 matches the runtime model you are using.
 *
 *           (2)   You must specify the directory in which rts.lib is
 *                 located.  Either add a "-i<directory>" line to this
 *                 file, or use the system environment variable C_DIR to
 *                 specify a search path for libraries.
 *
 * (C) Copyright 2008, Texas Instruments, Inc.
 *
 *****************************************************************************/

/* link files */
-l ../../vpe/lib/vpe_a.a55L
-l ../../vpe/lib/vpe_c.a55L
-l ../../util/lib/util_a.a55L
-l ../../util/lib/util_c.a55L
-l ../../sdk/lib/sdk_a.a55L
-l ../../sdk/lib/sdk_c.a55L

/* Default flags */
-c                                         /* ROM autoinitialization module */
-a                                         /* LINK USING C CONVENTIONS      */
-stack    0x2000                           /* STACK                         */
-sysstack 0x1000                           /* Secondary stack size          */
-heap     0x2000                           /* HEAP                          */


/* SPECIFY THE SYSTEM MEMORY MAP */

MEMORY
{
  PAGE 0:
    VECTORS       :  origin = 0x000000, length = 0x00100
    PROG          :  origin = 0x030000, length = 0x10000

  PAGE 1:
    DATA_STACK    :  origin = 0x001000, length = 0x02000
    DATA_SYSSTACK :  origin = 0x003000, length = 0x01000
    DATA_CINIT    :  origin = 0x004000, length = 0x03000    
    DATA_CONSTBSS :  origin = 0x007000, length = 0x20000
    
}

SECTIONS
{
  .asnr_text > PROG
  {
    ..\lib\vpe_c.a55L <nr.o55L> (.text)
    ..\lib\vpe_c.a55L <nrprocess.o55L> (.text)
    ..\lib\vpe_c.a55L <nrgain.o55L> (.text)
    ..\lib\vpe_c.a55L <nrnum.o55L> (.text)
    ..\lib\vpe_a.a55L <nrwiener.o55L> (.text)
    ..\lib\vpe_a.a55L <nrmisc.o55L> (.text)
    ..\lib\vpe_a.a55L <nrfft.o55L> (.text)
  }
  
  .text > PROG
  {
    *(.text)
  } PAGE 0

  .asnr_const > DATA_CONSTBSS
  {  
    ..\lib\vpe_c.a55L <nrtbl.o55L> (.const)
    ..\lib\vpe_c.a55L <nrffttb.o55L> (.const)
    ..\lib\vpe_c.a55L <nrgain.o55L> (.const)
    ..\lib\vpe_c.a55L <nrprocess.o55L> (.const)
  } PAGE 1
  
  .const > DATA_CONSTBSS
  {  
    *(.const)
  } PAGE 1

  .bss > DATA_CONSTBSS
  {  
    *(.bss)
  } PAGE 1

  .cinit  > DATA_CINIT
  {
    *(.cinit)
  } PAGE 1

  .data     > DATA_CONSTBSS PAGE 1
  .switch   > PROG          PAGE 0
  .cio      > PROG          PAGE 0
  .sysmem   > DATA_CONSTBSS PAGE 1
  .stack    > DATA_STACK    PAGE 1
  .sysstack > DATA_SYSSTACK PAGE 1
  .args     > DATA_CONSTBSS PAGE 1
  vectors   > VECTORS PAGE 0
}

-l ../../vpe/lib/vpe_a.a55L
-l ../../vpe/lib/vpe_c.a55L
-l ../../sdk/lib/sdk_a.a55L
-l ../../sdk/lib/sdk_c.a55L
-l ../../util/lib/util_a.a55L
-l ../../util/lib/util_c.a55L

/* nothing past this point */
