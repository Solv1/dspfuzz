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

  if      (name == 'C55') {
    lib = "lib/sdk_a.a55;lib/sdk_c.a55;lib/sdk_cm.a55";
  }
  else if (name == 'C55_large') {
    lib = "lib/sdk_a.a55L;lib/sdk_c.a55L";
  }
  else if (name == 'C54') {
    lib = "lib/sdk_a.a54;lib/sdk_c.a54;lib/sdk_cm.a54"; 
  } 
  else if (name == 'C54_far') {
    lib = "lib/sdk_a.a54f;lib/sdk_c.a54f;lib/sdk_cm.a54f"; 
  }
  else if (name == 'C64') {
    lib = "lib/sdk_c.a64";
  }
  else if (name == 'C64_big_endian') {
    lib = "lib/sdk_c.a64e";
  }  
  else if (name == 'C674' && suff == '674') {
    lib = "lib/sdk_c.a674";
  }
  else if (name == 'C674_big_endian' && suff == '674e') {
    lib = "lib/sdk_c.a674e";
  }
  else if (name == 'C64P' && suff == '64P') {
    lib = "lib/sdk_c.a64P";
  }
  else if (name == 'C64P_big_endian' && suff == '64Pe') {
    lib = "lib/sdk_c.a64Pe";
  }  
  else if (name == 'C66' && suff == 'e66') {
    lib = "lib/sdk_c.ae66";
  }
  else if (name == 'C66_big_endian' && suff == 'e66e') {
    lib = "lib/sdk_c.ae66e";  
  }
  else if (name == 'C674' && suff == 'e674') {
    lib = "lib/sdk_c.ae674";
  }
  else if (name == 'C674_big_endian' && suff == 'e674e') {
    lib = "lib/sdk_c.ae674e";
  }
  else if (name == 'C64P' && suff == 'e64P') {
    lib = "lib/sdk_c.ae64P";
  }
  else if (name == 'C64P_big_endian' && suff == 'e64Pe') {
    lib = "lib/sdk_c.ae64Pe";
  }  
  else if (name == 'C66' && suff == '66') {
    lib = "lib/sdk_c.a66";
  }
  else if (name == 'C66_big_endian' && suff == '66e') {
    lib = "lib/sdk_c.a66e";  
  }  
  else if (name == 'MVArm9') {
    lib = "lib/sdk_c.a470MV";
  }  
  else if (name == 'GCArmv6') {
    lib = "lib/sdk_c.av6";
  }  
  else if (name == 'GCArmv7A') {
    lib = "lib/sdk_c.av7A";
  }
  else if (name == 'WinCE') {
    lib = "lib/sdk_c.av4TCE";
  }  
  else if (name == 'VC98') {
    lib = "lib/sdk_c.a86";
  }  
  else if (name == 'Arm11') {
    lib = "lib/sdk_c.a11";
  }  
  else if (name == 'Arm11_big_endian') {
    lib = "lib/sdk_c.a11e";
  }  
 
  return (lib);
}

/* nothing past this point */
