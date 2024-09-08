requires ti.mas.types[5,0,8,1];
requires ti.mas.fract[2,0,8,1];
requires ti.mas.asm[3,0,4,1];
requires ti.xdais[1,2.0,0];
requires internal ti.mas.swtools[3,0,0,0];

/*! util package
 * 
 * @a(NAME)  `ti.mas.util`
 *
 * @a(DESCRIPTION)
 *
 *        This package creates the utility tools. It depends on the following packages:
 * @p(dlist)
 * - `ti.mas.types`
 * - `ti.mas.fract`
 * - `ti.mas.c54`
 * 
 * @a(CONTENTS)
 * @p(dlist)
 * - `util` module
 *      provides macros and inline function APIs and is described in `util.xdc`.
 * - `memmgm` module
 *      provides data type definitions for memory management and is described 
 *      in memmgm.xdc.
 * - `debug` module
 *      provides data type and function definitions for debugging and is described
 *      in debug.xdc
 * - `circbuf` module
 *      provides data type and function definitions for circular buffer operations
 *      and is described in circbuf.xdc
 * - `mua` module
 *      provides data type and function definitions for mu-A law and is described
 *      in mua.xdc
 * - `wng` module
 *      provides data type and function definitions for white noise generation
 *      and is described in wng.xdc
 * - `version` module
 *      provides version numbering for the package and is described in
 *      `version.xdc`. Note that `version.xdc` is generated from the template file 
 *      `version.xdt`.
 * @p
 * @a(TARGETS) The following architecture targets are supported:
 *
 * @p(dlist)
 * - `C54`
 * - `C55`
 * - `C55_large`
 * - `C64`
 * - `C64_big_endian`
 * - `C64P`
 * - `C64P_big_endian`
 * @p
 * @a(BUILD)  The build options are implemented in the file `package.bld`.
 *
 * Build command: `xdc XDCARGS="option"`.
 * option = [c54, c55, c55L, c64, c64_be, c64P, c64P_be, all]
 * If any other option other than above is used then the package is not built correctly
 * and will crash when used in conjunction with other packages. 
 *
 *
 * Generated files:
 *
 * @p(dlist)
 * -  `utl.h`
 * -  `memmgm.h`
 * -  `debug.h`
 * -  `cb.h`
 * -  `mua.h`
 * -  `wng.h`
 * -  `version.h`
 * @p
 *
 * Command to clean: `xdc clean`
 *
 * @a(RELEASES)
 *
 * Release creation: `xdc XDCARGS="option1 option2" release`
 * option1 = [c54, c55, c55L, c64, c64_be, c64P, c64P_be, all]
 * option2 = [obj, src, docs]
 *
 * Using the option1 as given and option 2="obj" creates the released tar file containing object code only:
 * `ti_mas_util_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_util_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 * 
 * Using the option1 as given and option 2="src" creates the released tar file containing source with object code:
 * `ti_mas_util_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_util_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 *
 * If option2 = "obj" or empty then `ti_mas_util_all_<v>_<r>_<x>_<p>.tar` is created containing only object code
 *
 * To generate document only the following should be used:
 * `xdc XDCARGS="docs" release` or `xdc XDCARGS="option1,docs"`
 * and `ti_mas_util_docs_<v>_<r>_<x>_<p>.tar` is created
 * 
 * If any other option other than the ones listed above is used, no release is created.
 * 
 *
 * Copyright (C) 2007 Texas Instruments Incorporated - http://www.ti.com/ 
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
 */

package ti.mas.util[5,0,0,0] {
  
  /* Specification of units for package util */
   module Version;
}

/* nothing past this point */
