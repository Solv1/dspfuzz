requires ti.mas.types[5,0,8,1];
requires ti.mas.fract[2,0,8,1];
requires ti.mas.util[5,0,0,0];
requires ti.mas.sdk[4,0,0,0];   
requires ti.mas.veu[5,0,0,2];
requires internal ti.mas.swtools[3,0,0,0];

/*! veu package
 * 
 * @a(NAME)  `ti.mas.veu.test`
 *
 * @a(DESCRIPTION)
 *
 * This package creates the unit test for veu system. It depends on the following packages:
 * @p(dlist)
 * - `ti.mas.types`
 * - `ti.mas.util`
 * - `ti.mas.veu`
 * @p
 * @a(TARGETS) The following architecture targets are supported:
 *
 * @p(dlist)
 * - `C64`
 * @p
 * @a(BUILD)  The build options are implemented in the file `package.bld`.
 *
 * Build command: `xdc XDCARGS="option"`.
 * option = [c64, all]
 * If any other option other than above is used then the package is not built correctly
 * and will crash when used in conjunction with other packages. 
 *
 *
 *
 * Command to clean: `xdc clean`
 *
 * @a(RELEASES)
 *
 * Release creation: `xdc XDCARGS="option1 option2" release`
 * option1 = [c64, all]
 * option2 = [obj, src, docs]
 *
 * Using the option1 as given and option 2="obj" creates the released tar file containing object code only:
 * `ti_mas_veu_test_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_veu_test_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 * 
 * Using the option1 as given and option 2="src" creates the released tar file containing source with object code:
 * `ti_mas_veu_test_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_veu_test_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 *
 * If option2 = "obj" or empty then `ti_mas_veu_test_all_<v>_<r>_<x>_<p>.tar` is created containing only object code
 *
 * To generate document only the following should be used:
 * `xdc XDCARGS="docs" release` or `xdc XDCARGS="option1,docs"`
 * and `ti_mas_veu_test_docs_<v>_<r>_<x>_<p>.tar` is created
 * 
 * If any other option other than the ones listed above is used, no release is created.
 * 
 *
 * 
 *
 * @a(Copyright)
 * @p(html)
 * &#169; 2009 Texas Instruments, Inc.
 * @p
 */

package ti.mas.veu.test[4,0,0,0]{
 
}

/* nothing past this point */
