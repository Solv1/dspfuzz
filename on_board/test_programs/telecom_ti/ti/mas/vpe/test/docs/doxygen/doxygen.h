/*
 * This is a little header file which doxygen parses to generate the main
 * documentation page
 */

/**
 * @mainpage @PKGU Unit Test
 *
 * @HLINE
 *
 * @section content Page Contents
 *  
 *  <ol>
 *    <li> @ref introduction
 *    <li> @ref building 
 *    <li> @ref testing
 *    <li> @ref dependencies
 *  </ol>
 *  
 * @HLINE
 *
 *
 * @section introduction Description
 *
 *  This package contains a basic test for the @PKGU. This is not a regression test, its 
 *  purpose is to show how the @PKGU module can be integrated into a system and to become 
 *  familiar with the external API.  The package also provides a means to experiment
 *  with changes to the configuration and observe the operational effect(s).
 *  
 * @HLINE
 *
 *
 * @section building Building Unit Test 
 *
 *  The @PKGU Unit Test package can be compiled in the following manners:
 *
 *  -# Apply the GNU Makefile build procedure to the test package.
 *  -# Load the @PKGU Unit Test project into @CCSV and build.  All projects will 
 *     reside in the @c @PKGL\\test\\ccsProjects directory.
 *
 *  <table bgcolor="#ffff99" frame="box" rules="none" cellspacing="0" width="80%">
 *    <tr>
 *      <td valign="top"><b>Notes:</b></td>
 *      <td>
 *        <ol>
 *          <li> The GNU Makefile build procedure is described in detail in the main 
 *               @PKGU documentation.
 *        </ol>
 *      </td>
 *    </tr>
 *  </table>
 *  
 * @HLINE
 *
 *
 * @section testing Unit Test Procedures
 *
 *  The @PKGU Unit Test package comes complete with a compiled CCS Project as well as 
 *  a directly loadable test image.  If the unit test code has been altered or enhanced,
 *  the @ref building procedure above should be completed before moving forward.  
 *
 * @subsection img_testing Unit Test Image
 *  
 *  The procedure to test using the unit test image is described below.  Note that this
 *  procedure does not require @CCSV and may be used for those who haven't yet
 *  upgraded to @CCSV (Eclipse).
 *
 *  -# Open CCS 
 *  -# Load the @PKGU Unit Test image for the target of interest
 *    - Will reside in the @c @PKGL\\test\\lnkr\\\<targ\> directory
 *    - Will have the extension @c *.x\<target\> 
 *  -# Run to the @c main() symbol
 *  -# Follow the @ref config procedure 
 *
 * @subsection prj_testing Unit Test Project
 *  
 *  The procedure to test using the CCS project is described below.  Note that this
 *  procedure requires @CCSV (Eclipse).
 *
 *  -# Open CCS
 *  -# Load the @PKGU project for the target of interest
 *    - Will be a subdirectory off the @c @PKGL\\test\\ directory
 *    - Can be identified using the CCS menu options <tt>"Project"-->"Import Existing CCS/CCE 
 *      Eclipse Project"</tt> and browsing the @c @PKGL\\test\\ directory.
 *    - (Optional) Rebuild the project
 *  -# Open the proper Debug Target Configuration and load the build
 *    - Can be identified using the CCS menu options <tt>"Target"-->"Load Program"</tt> and 
 *      selecting the <tt>"Browse Projects"</tt> button
 *    - (Optional) Run to the @c main() symbol
 *  -# Follow the @ref config procedure 
 *  
 * @HLINE
 *
 *
 * @section dependencies Dependent Packages
 *  - ti.mas.types (Common data type defintions)
 *  - ti.mas.util  (Common utilities)
 *  - ti.mas.fract (Common fractional arithmetic macros)
 *  - ti.mas.sdk (Test infrastructure software)
 *
 */

/**
 * @page config Unit Test Configuration and Execution
 *
 *  All simulation configuration parameters are in the @c vpeSim structure. This 
 *  structure needs to be configured before running any test. It is suggested that
 *  this structure be opened in a Watch Window for easy access.
 *  
 *  There is a text file in folder test/vectors, vpecfg.txt, which has the 
 *  sampling rate and all ASNR parameters. VPE test code reads this file to configure
 *  VPE and especially ASNR. This file can be modified to change the sampling
 *  rate and ASNR prameters.
 *
 *  A 16kHz test file in folder test/vectors, sigIn.pcm, will be read by the test code
 *  as the input. Output will be generated with pre-given name, sigOut.pcm, in the
 *  same folder. The format of these two files is little endian 16-bit PCM. 
 *  Reference output can be found at test/vectors/refout for C55x and C64x+/C674x/C66x 
 *  respectively. If the pre-built image is loaded and runs without any change,
 *  it should generate an output that is bit-exactly the same as the reference output. 
 *
 *  By default, ASNR is set to run and all other modules are turned off. To turn
 *  on/off a module, following the procedure below. 
 *
 * @HLINE
 *
 *
 * @section vpe_test Procedure
 *
 *  -# Set a breakpoint at vpe_halt()
 *  -# Run and let the simulation halt at the breakpoint
 *  -# Set @c vpeSim->exec to @c 1 
 *  -# Choose the input signal source.  By default @c vpeSim->sgn is set to @c 0 implying 
 *     data will be read from the input file @c @PKGL\\test\vectors\\sigIn.pcm.  
 *     Currently, only linear 16-bit PCM format (little Endian) is supported.
 *     By setting @c vpeSim->sgn to @c 1, the internal signal generator will be
 *     used to generate the test signal. The signal generator can be configured 
 *     by setting @c vpeSim->cfg_sgn to @c 1 and setting the fields in @c vpeSim->sgnParam 
 *     to generate the desired signal.  
 *  -# Follow the procedure below for the specific module being tested
 *    - @ref hlc_test
 *    - @ref slm_test
 *    - @ref snl_test
 *    - @ref svd_test
 *    - @ref sfc_test
 *    - @ref pcm_test
 *    - @ref asnr_test
 *
 * @HLINE
 *
 *
 * @section hlc_test HLC Module
 *
 *  Follow the steps below to set up the simulation:
 *
 *  -# Set @c vpeSim->hlc_on to @c 1
 *  -# The default threshold for the HLC is 0dBm.  In order for it to function for normal 
 *     signal levels, a meaningful threshold should be set.  This is accomplished by setting
 *     the following:
 *      - @c vpeSim->cfg_hlc to @c 1 
 *      - @c vpeSim->hlc_ctrl.ctl_code to @c 2
 *      - @c vpeSim->hlc_ctrl.u.thresh to @c -20 (for example)
 *  -# Run the simulation.
 *  -# The HLC threshold may be re-configured during simulation.  This is accomplished by 
 *     setting the following:
 *      - @c vpeSim->cfg_hlc to @c 1
 *      - @c vpeSim->hlc_ctrl.ctl_code to @c 2 
 *      - @c vpeSim->hlc_ctrl.u.thresh to -10 (again, for example)
 *  -# Output is in sigOut.pcm. 
 *  
 * @HLINE
 *
 *
 * @section slm_test SLM Module
 *
 *  Follow the steps below to set up the simulation:
 *
 *  -# Set @c vpeSim->slm_on to @c 1
 *  -# Choose the SLM mode by setting @c vpeSim->slm_mod to a value between @c 1 and @c 5.
 *  -# Run the simulation.
 *  -# The SLM mode may be re-configured during simulation.  This is accomplished by 
 *     setting the following:
 *      - @c vpeSim->cfg_slm to @c 1
 *      - @c vpeSim->slm_mod to @c a different value between @c 1 and @c 5.
 *  -# Output is in sigOut.pcm. 
 *  
 * @HLINE
 *
 *
 * @section snl_test SNL Module
 *
 *  Follow the steps below to set up the simulation:
 *
 *  -# Set @c vpeSim->snl_on to @c 1
 *  -# Run the simulation.
 *  -# SNL doesn't modify the input signal, but will store the signal and noise 
 *     level estimates in the 16-bit binary file @c snlLevOut.pcm, with signal level, 
 *     noise level and adaptive envelope threshold interleaved. Note that signal level and 
 *     noise level are in Q0 format (dBm) and the threshold is in Q3 format (linear).  
 *  
 * @HLINE
 *
 *
 * @section svd_test SVD Module
 *
 *  Follow the steps below to set up the simulation:
 *
 *  -# Set @c vpeSim->svd_on to @c 1
 *  -# Run the simulation.
 *  -# SVD doesn't modify the input signal, but will store the signal and noise  
 *     level information in the 16-bit binary file @c svdOut.pcm, with voice 
 *     activity decision, signal level, noise level and adaptive envelope 
 *     threshold interleaved. Note that signal level and noise level are in 
 *     Q0 format (dBm) and the threshold is in Q3 format (linear).  
 *
 * @HLINE
 *
 *
 * @section asnr_test ASNR Module
 * 
 *  Follow the steps below to set up the simulation:
 *
 *  -# Edit configuration file vpecfg.txt to have desired ASNR configuration. 
 *  -# Set @c vpeSim->nr_on to @c 1
 *  -# Run the simulation.
 *  -# Output is in sigOut.pcm. 
 *
 * @HLINE
 *
 *
 * @section pcm_test PCM Module
 *  Follow the steps below to set up the PCM encoder simulation:
 *
 *  -# Set @c vpeSim->ulaw_enc_on or @c vpeSim->alaw_enc_on to @c 1
 *  -# Run the simulation.
 *  -# A-law or u-law code words are stored in sigOut.pcm. 
 * 
 *  Follow the steps below to set up the PCM decoder simulation:
 *
 *  -# Provide a u-law or A-law binary file as sigIn.pcm.
 *  -# Set @c vpeSim->ulaw_dec_on or @c vpeSim->alaw_dec_on to @c 1
 *  -# Run the simulation.
 *  -# 16-bit linear samples are stored in sigOut.pcm (binary little endian). 
 *
 * @HLINE
 *
 *
 * @section sfc_test SFC Module
 *
 *  Follow the steps below to set up the downsampler simulation:
 *
 *  -# Set @c vpeSim->decim_on @c 1
 *  -# Run the simulation.
 *  -# 8kHz 16-bit linear samples are stored in sigOut.pcm (binary little endian). 
 *
 *  Follow the steps below to set up the upsampler simulation:
 *
 *  -# Provide a 8kHz 16-bit linear samples input as sigIn.pcm (binary little endian). 
 *  -# Set @c vpeSim->interp_on @c 1
 *  -# Run the simulation.
 *  -# 16kHz 16-bit linear samples are stored in sigOut.pcm (binary little endian). 
 *
 */

/**
 * @page Disclaimer
 * <center> <B>IMPORTANT NOTICE </B> </center>
 * Texas Instruments Incorporated and its subsidiaries (TI) reserve the right
 * to make corrections, modifications, enhancements, improvements, and other
 * changes to its products and services at any time and to discontinue any
 * product or service without notice. Customers should obtain the latest
 * relevant information before placing orders and should verify that such
 * information is current and complete. All products are sold subject to TI’s
 * terms and conditions of sale supplied at the time of order acknowledgment.
 *
 * TI warrants performance of its hardware products to the specifications
 * applicable at the time of sale in accordance with TI’s standard warranty.
 * Testing and other quality control techniques are used to the extent TI
 * deems necessary to support this warranty. Except where mandated by
 * government requirements, testing of all parameters of each product is not
 * necessarily performed.
 *
 * TI assumes no liability for applications assistance or customer product
 * design. Customers are responsible for their products and applications
 * using TI components. To minimize the risks associated with customer
 * products and applications, customers should provide adequate design and
 * operating safeguards.
 *
 * TI does not warrant or represent that any license, either express or
 * implied, is granted under any TI patent right, copyright, mask work right,
 * or other TI intellectual property right relating to any combination,
 * machine, or process in which TI products or services are used. Information
 * published by TI regarding third-party products or services does not
 * constitute a license from TI to use such products or services or a warranty
 * or endorsement thereof. Use of such information may require a license from a
 * third party under the patents or other intellectual property of the third
 * party, or a license from TI under the patents or other intellectual property
 * of TI.
 *
 * Reproduction of information in TI data books or data sheets is permissible
 * only if reproduction is without alteration and is accompanied by all
 * associated warranties, conditions, limitations, and notices. Reproduction
 * of this information with alteration is an unfair and deceptive business
 * practice. TI is not responsible or liable for such altered documentation.
 *
 * Resale of TI products or services with statements different from or beyond
 * the parameters stated by TI for that product or service voids all express
 * and any implied warranties for the associated TI product or service and is
 * an unfair and deceptive business practice. TI is not responsible or liable
 * for any such statements.
 *
 *
 *
 *
 * Mailing Address: <BR>
 * Texas Instruments <BR>
 * Post Office Box 655303 <BR>
 * Dallas, Texas 75265 <BR>
 *
 *
 *
 * Copyright © 2006 Texas Instruments Incorporated.  All rights reserved.
 *
 * Information in this document is subject to change without notice.
 * Texas Instruments may have pending patent applications, trademarks,
 * copyrights, or other intellectual property rights covering matter in this
 * document.  The furnishing of this document is given for usage with Texas
 * Instruments products only and does not give you any license to the
 * intellectual property that might be contained within this document.
 * Texas Instruments makes no implied or expressed warranties in this document
 * and is not responsible for the products based from this document.
 *
 *
 */
