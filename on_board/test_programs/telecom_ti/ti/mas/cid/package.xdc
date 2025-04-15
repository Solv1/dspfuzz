requires ti.mas.types[5,0,8,1];
requires ti.mas.fract[2,0,8,1];
requires ti.mas.util[5,0,0,0];
requires internal ti.mas.swtools[3,0,0,0];

/*! CID package
 * 
 * @a(NAME)  `ti.mas.cid`
 *
 * @a(DESCRIPTION)
 *
 *        This package creates the CID system. It depends on the following packages:
 * @p(dlist)
 * - `ti.mas.types`
 * - `ti.mas.fract`
 * - `ti.mas.util`
 *
 * @a(CONTENTS)
 * @p(dlist)
 * - 'Cid' module
 *      provides functionalities of caller ID detection and generation.
 * - `Version` module
 *      provides version numbering for CID package and is described in
 *      `Version.xdc`. Note that `Version.xdc` is generated from the template file 
 *      `Version.xdt`.
 * @p
 * @a(TARGETS) The following architecture targets are supported:
 *
 * @p(dlist)
 * - `C55_large`
 * - `C64Plus`
 * @p
 * @a(BUILD)  The build options are implemented in the file `package.bld`.
 *
 * Build command: `xdc XDCARGS="option"`.
 * option = [c55L, c64P, all]
 * If any other option other than above is used then the package is not built correctly
 * and will crash when used in conjunction with other packages. 
 *
 *
 * Generated files:
 *
 * @p(dlist)
 * -  `Version.h`
 * @p
 *
 * Command to clean: `xdc clean`
 *
 * @a(Online API documentation)
 *
 * `xdc XDCARGS="option" gendocs`
 *
 * @a(RELEASES)
 *
 * Release creation: `xdc XDCARGS="option1 option2" [gendocs] release`
 * option1 = [c55L, c64P, all]
 * option2 = [obj, src, docs]
 *
 * Using the option1 as given and option2="obj" creates the released tar file containing object code only:
 * `ti_mas_cid_<arch>_src_<v>_<r>_<x>_<p>.tar` ???? src or obj ???
 * or `ti_mas_cid_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all" ???? src or obj ???
 * 
 * Using the option1 as given and option2="src" creates the released tar file containing source with object code:
 * `ti_mas_cid_<arch>_src_<v>_<r>_<x>_<p>.tar`
 * or `ti_mas_cid_all_src_<v>_<r>_<x>_<p>.tar` if option 1="all"
 *
 * If option2 = "obj" or empty then `ti_mas_cid_all_<v>_<r>_<x>_<p>.tar` is created containing only object code
 *
 * To generate document only the following should be used:
 * `xdc XDCARGS="docs" release` or `xdc XDCARGS="option1,docs"`
 * and `ti_mas_cid_docs_<v>_<r>_<x>_<p>.tar` is created
 * 
 * If any other option other than the ones listed above is used, no release is created.
 * 
 *
 * 
 *
 * @a(Copyright)
 * @p(html)
 * &#169; 2007 Texas Instruments, Inc.
 * @p
 */

package ti.mas.cid[4,0,0,1] {
   module Version;
}

/* nothing past this point */
