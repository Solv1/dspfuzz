/******************************************************************************
 * FILE PURPOSE: Defines libarary directory name using getLibs
 ******************************************************************************
 * FILE NAME: package.xs
 *
 * DESCRIPTION: This file defines the library directory name for proper build
 *              in case a different directory name for storing library files 
 *              other than "lib" is used. XDC by default assumes that the 
 *              library directory is "lib" is not sepcifically indicated by use
 *              the attributes in a file called package.xs  
 *
 * TABS: NONE
 *
 * Copyright (C) 2012, Texas Instruments, Inc.
 *****************************************************************************/

/* "mangle" program build attrs into an appropriate directory name */
function getLibs (prog)
{
  var name = prog.build.target.name;
  var suff = prog.build.target.suffix;
  var lib  = "";

  /* "mangle" program build attrs into an appropriate directory name */
  if      (name == 'C64') {
    lib = "lib/vpe_c.a64;lib/vpe_cm.a64";
  }
  else if (name == 'C64_big_endian') {
    lib = "c64e/vpe_c.a64e;lib/vpe_cm.a64e";
  }
  else if (name == 'C64P' && suff == '64P') {
    lib = "lib/vpe_a.a64P;lib/vpe_c.a64P;lib/vpe_cm.a64P";
  }
  else if (name == 'C64P' && suff == 'e64P') {
    lib = "lib/vpe_a.ae64P;lib/vpe_c.ae64P;lib/vpe_cm.ae64P";
  }
  else if (name == 'C64P_big_endian' && suff == '64Pe') {
    lib = "lib/vpe_a.a64Pe;lib/vpe_c.a64Pe;lib/vpe_cm.a64Pe";
  }
  else if (name == 'C64P_big_endian' && suff == 'e64Pe') {
    lib = "lib/vpe_a.ae64Pe;lib/vpe_c.ae64Pe;lib/vpe_cm.ae64Pe";
  }
  else if (name == 'C66' && suff == '66') {
    lib = "lib/vpe_a.a66;lib/vpe_c.a66;lib/vpe_cm.a66";
  }
  else if (name == 'C66' && suff == 'e66') {
    lib = "lib/vpe_a.ae66;lib/vpe_c.ae66;lib/vpe_cm.ae66";
  }
  else if (name == 'C66_big_endian' && suff == '66e') {
    lib = "lib/vpe_a.a66e;lib/vpe_c.a66e;lib/vpe_cm.a66e";
  }
  else if (name == 'C66_big_endian' && suff == 'e66e') {
    lib = "lib/vpe_a.ae66e;lib/vpe_c.ae66e;lib/vpe_cm.ae66e";
  }
  else if (name == 'C674' && suff == '674') {
    lib = "lib/vpe_a.a674;lib/vpe_c.a674;lib/vpe_cm.a674";
  }
  else if (name == 'C674' && suff == 'e674') {
    lib = "lib/vpe_a.ae674;lib/vpe_c.ae674;lib/vpe_cm.ae674";
  }
  else if (name == 'C674_big_endian' && suff == '674e') {
    lib = "lib/vpe_a.a674e;lib/vpe_c.a674e;lib/vpe_cm.a674e";
  }
  else if (name == 'C674_big_endian' && suff == 'e674e') {
    lib = "lib/vpe_a.ae674e;lib/vpe_c.ae674e;lib/vpe_cm.ae674e";
  }
  else if (name == 'C55') {
    lib = "lib/vpe_c.a55;lib/vpe_a.a55;lib/vpe_cm.a55";
  }
  else if (name == 'C55_large') {
    lib = "lib/vpe_c.a55L;lib/vpe_a.a55L;lib/vpe_cm.a55L";
  }
  else if (name == 'C54') {
    lib = "lib/vpe_c.a54";
  }
  else if (name == 'C54_far') {
    lib = "lib/vpe_c.a54f";
  }
  else if (name == 'GCArmv7A') { 
    lib = "lib/vpe_a.av7A;lib/vpe_c.av7A";
  }
  
  return (lib);
}

