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
 *  Test code details: @ref CIDTEST 
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
 *  procedure does not require CCS V5.2 or above and may be used for those who 
 *  haven't yet upgraded to CCS V5.2 or above.
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
 *  procedure requires CCS V5.2 or above.
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
 *  All simulation configuration parameters are in the @c siuSetup structure. This 
 *  structure needs to be configured before running any test. It is suggested that
 *  this structure be opened in a Watch Window for easy access.
 *
 *  -# Set the CID type for the test
 *    - Set @c siuSetup->tog_cid1 and @c siuSetup->tog_cid2 to desired specification
 *      code from the table below.
 *
 *  -# Run the simulation and observe the received CID message
 *  -# Ensure the received message matches the sent message
 *
 *
 *  <table align="center" rules="all" frame="box" cellspacing="2" cellpadding="2" frame="void" width="80%">
 *    <caption align="bottom">@PKGU Specification Codes for Unit Test</caption>
 *    <tr bgcolor="#cccccc" align="center">
 *      <th>Code</th>
 *      <th>Region</th>
 *      <th>Standard</th>
 *    </tr>
 *    <tr align="center">
 *      <td> 1 </td>
 *      <td> North America </td>
 *      <td> Telcordia </td>
 *    </tr>
 *    <tr align="center">
 *      <td> 2 </td>
 *      <td> Japan </td>
 *      <td> NTT </td>
 *    </tr>
 *    <tr align="center">
 *      <td> 3 </td>
 *      <td> Europe </td>
 *      <td> ETSI </td>
 *    </tr>
 *    <tr align="center">
 *      <td> 4 </td>
 *      <td> China </td>
 *      <td> YDN </td>
 *    </tr>
 *    <tr align="center">
 *      <td> 5 </td>
 *      <td> United Kingdom </td>
 *      <td> BT </td>
 *    </tr>
 *    <tr align="center">
 *      <td> 6 </td>
 *      <td> Australia </td>
 *      <td> AUS </td>
 *    </tr>
 *  </table>
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
