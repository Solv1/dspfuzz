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
 * Copyright (C) 2006 Texas Instruments Incorporated - http://www.ti.com/ 
 * 
 * 
 *  Redistribution and use in source and binary forms, with or without 
 *  modification, are permitted provided that the following conditions 
 *  are met:
 *
 *    Redistributions of source code must retain the above copyright 
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the 
 *    documentation and/or other materials provided with the   
 *    distribution.
 *
 *    Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************/

function getLibs(prog)
{
  /* "mangle" program build attrs into an appropriate directory name */
  if(prog.build.target.name == 'C55')
  var lib = "lib/util_a.a55;lib/util_c.a55;lib/util_cm.a55";
  
  else if (prog.build.target.name == 'C55_large')
  var lib = "lib/util_a.a55L;lib/util_c.a55L;lib/util_cm.a55L";
 
  /* no C model for 54x - utilnum.c won't compile due to "long long" in utlDot */
  else if (prog.build.target.name == 'C54_far')
  var lib = "lib/util_a.a54f;lib/util_c.a54f";

  else if (prog.build.target.name == 'C54')
  var lib = "lib/util_a.a54;lib/util_c.a54";

  else if (prog.build.target.name == 'C64')
  var lib = "lib/util_a.a64;lib/util_c.a64;lib/util_cm.a64";

  else if (prog.build.target.name == 'C64_big_endian')
  var lib = "lib/util_a.a64e;lib/util_c.a64e;lib/util_cm.a64e";

  else if (prog.build.target.name == 'C674' && prog.build.target.suffix == '674')
  var lib = "lib/util_a.a674;lib/util_c.a674;lib/util_cm.a674";

  else if (prog.build.target.name == 'C674' && prog.build.target.suffix == 'e674')
  var lib = "lib/util_a.ae674;lib/util_c.ae674;lib/util_cm.ae674";

  else if (prog.build.target.name == 'C674_big_endian' && prog.build.target.suffix == '674e')
  var lib = "lib/util_a.a674e;lib/util_c.a674e;lib/util_cm.a674e";

  else if (prog.build.target.name == 'C674_big_endian' && prog.build.target.suffix == 'e674e')
  var lib = "lib/util_a.ae674e;lib/util_c.ae674e;lib/util_cm.ae674e";

  else if (prog.build.target.name == 'C64P' && prog.build.target.suffix == '64P')
  var lib = "lib/util_a.a64P;lib/util_c.a64P;lib/util_cm.a64P";

  else if (prog.build.target.name == 'C64P' && prog.build.target.suffix == 'e64P')
  var lib = "lib/util_a.ae64P;lib/util_c.ae64P;lib/util_cm.ae64P";

  else if (prog.build.target.name == 'C64P_big_endian' && prog.build.target.suffix == '64Pe')
  var lib = "lib/util_a.a64Pe;lib/util_c.a64Pe;lib/util_cm.a64Pe";

  else if (prog.build.target.name == 'C64P_big_endian' && prog.build.target.suffix == 'e64Pe')
  var lib = "lib/util_a.ae64Pe;lib/util_c.ae64Pe;lib/util_cm.ae64Pe";
  
  else if (prog.build.target.name == 'C66' && prog.build.target.suffix == 'e66')
  var lib = "lib/util_a.ae66;lib/util_c.ae66;lib/util_cm.ae66";

  else if (prog.build.target.name == 'C66_big_endian' && prog.build.target.suffix == 'e66e')
  var lib = "lib/util_a.ae66e;lib/util_c.ae66e;lib/util_cm.ae66e";

  else if (prog.build.target.name == 'C66' && prog.build.target.suffix == '66')
  var lib = "lib/util_a.a66;lib/util_c.a66;lib/util_cm.a66";

  else if (prog.build.target.name == 'C66_big_endian' && prog.build.target.suffix == '66e')
  var lib = "lib/util_a.a66e;lib/util_c.a66e;lib/util_cm.a66e";
  
  else if (prog.build.target.name == 'MVArm9')
  var lib = "lib/util_c.a470MV";
  
  else if (prog.build.target.name == 'GCArmv6')
  var lib = "lib/util_c.av6";
  
  else if (prog.build.target.name == 'GCArmv7A')
  var lib = "lib/util_c.av7A";

  else if (prog.build.target.name == 'WinCE')
  var lib = "lib/util_c.av4TCE";
  
  else if (prog.build.target.name == 'VC98')
  var lib = "lib/util_c.a86";
  
  else if (prog.build.target.name == 'Arm11')
  var lib = "lib/util_c.a11";
  
  else if (prog.build.target.name == 'Arm11_big_endian')
  var lib = "lib/util_c.a11e";
  
  return (lib);
}
/* nothing past this point */
