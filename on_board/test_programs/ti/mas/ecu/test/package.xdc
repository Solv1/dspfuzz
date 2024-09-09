requires ti.mas.types[5,0,8,1];
requires ti.mas.fract[2,0,8,1];
requires ti.mas.util[5,0,0,0];
requires ti.mas.sdk[4,0,0,0];   
requires ti.mas.ecu[2,0,0,3];
requires ti.mas.vpe[4,0,0,1];
requires ti.mas.mhm[2,0,0,0];
requires internal ti.mas.swtools[3,0,0,0];
    
/*! ECU unit test package
 * 
 * @a(NAME)  `ti.mas.ecu.test`
 *
 * @a(DESCRIPTION)
 *
 *  This package creates the ECU unit test system. It depends on the following packages:
 * @p(dlist)
 * - `ti.mas.types`
 * - `ti.mas.fract`
 * - `ti.mas.util`
 * - `ti.mas.ecu`
 * - `ti.mas.vpe`
 * - `ti.mas.mhm` 
 * - `ti.mas.sdk`
 *
 * @a(CONTENTS)
 * @p(dlist)
 * @p
 * @a(TARGETS) The following architecture targets are supported:
 *
 * @p(dlist)
 * - `C54`
 * - `C54_far`
 * - `C55`
 * - `C55_large`
 * - `C64`
 * - `C64Plus`
 * @p
 * @a(BUILD)  The build options are implemented in the file `package.bld`.
 *
 * Build command: `xdc XDCARGS="option"`.
 * option = [c64, c64P, c64P_be, all]
 * If any other option other than above is used then the package is not built correctly
 * and will crash when used in conjunction with other packages. 
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
 * option1 = [c64, c64P, c64P_be, all]
 * option2 = [obj, src, docs]
 *
 * Using the option1 as given and option2="obj" creates the released tar file containing object code only:
 * `ti_mas_ecu_test_<arch>_src_<v>_<r>_<x>_<p>.tar` ???? src or obj ???
 * or `ti_mas_ecu_test_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all" ???? src or obj ???
 * 
 * Using the option1 as given and option2="src" creates the released tar file containing source with object code:
 * `ti_mas_ecu_test_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_ecu_test_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 *
 * If option2 = "obj" or empty then `ti_mas_ecu_test_all_<v>_<r>_<x>_<p>.tar` is created containing only object code
 *
 * To generate document only the following should be used:
 * `xdc XDCARGS="docs" release` or `xdc XDCARGS="option1,docs"`
 * and `ti_mas_ecu_test_docs_<v>_<r>_<x>_<p>.tar` is created
 * 
 * If any other option other than the ones listed above is used, no release is created.
 * 
 *
 * 
 *
 * @a(Copyright)
 * @p(html)
 * &#169; 2008 Texas Instruments, Inc.
 * @p
 */

package ti.mas.ecu.test[1,0,0,0] {
}

/* nothing past this point */
