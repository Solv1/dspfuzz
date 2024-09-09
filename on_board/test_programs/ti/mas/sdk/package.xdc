requires ti.mas.types[5,0,8,1];
requires ti.mas.fract[2,0,8,1];
requires ti.mas.asm[3,0,4,1];
requires ti.mas.util[5,0,0,0];
requires internal ti.mas.swtools[3,0,0,0];

/*! SDK package - Software development kit
 * 
 * @a(NAME)  `ti.mas.sdk`
 *
 * @a(DESCRIPTION)
 *
 *        This package creates the SDK system. It depends on the following packages:
 * @p(dlist)
 * - `ti.mas.types`
 * - `ti.mas.fract`
 * - `ti.mas.util`
 * 
 * @a(CONTENTS)
 * @p(dlist)
 * - 'sgn' module: signal generator
 * - 'aep' module: acoustic echo path simulation
 * - 'p651' module: P.651 power measurement
 * - 'hyb' module: line echo path (hybrid) simulation
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
 * `ti_mas_sdk_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_sdk_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 * 
 * Using the option1 as given and option 2="src" creates the released tar file containing source with object code:
 * `ti_mas_sdk_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_sdk_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 *
 * If option2 = "obj" or empty then `ti_mas_sdk_all_<v>_<r>_<x>_<p>.tar` is created containing only object code
 *
 * To generate document only the following should be used:
 * `xdc XDCARGS="docs" release` or `xdc XDCARGS="option1,docs"`
 * and `ti_mas_sdk_docs_<v>_<r>_<x>_<p>.tar` is created
 * 
 * If any other option other than the ones listed above is used, no release is created.
 * 
 *
 * 
 *
 * @a(Copyright)
 * @p(html)
 * &#169; 2006 Texas Instruments, Inc.
 * @p
 */

package ti.mas.sdk[4,0,0,0] {
  module Version;
}