#ifndef _UTA_H
#define _UTA_H
/**
 *  @file   uta.h
 *
 *  @brief  The Unit Test Automation (UTA) Module provides all API functions, 
 *          enumerations and definitions required to integrate the UTA module 
 *          into the a RTSC components unit test code.  When properly integrated, 
 *          the UTA architecture enables 
 * 
 *
 *        Copyright (c) 2007 – 2013 Texas Instruments Incorporated                
 *                                                                                
 *              All rights reserved not granted herein.                           
 *                                                                                
 *                         Limited License.                                       
 *                                                                                
 *  Texas Instruments Incorporated grants a world-wide, royalty-free,             
 *  non-exclusive license under copyrights and patents it now or hereafter owns   
 *  or controls to make, have made, use, import, offer to sell and sell           
 *  ("Utilize") this software subject to the terms herein.  With respect to the   
 *  foregoing patent license, such license is granted solely to the extent that   
 *  any such patent is necessary to Utilize the software alone.  The patent       
 *  license shall not apply to any combinations which include this software,      
 *  other than combinations with devices manufactured by or for TI (“TI           
 *  Devices”).  No hardware patent is licensed hereunder.                         
 *                                                                                
 *  Redistributions must preserve existing copyright notices and reproduce this   
 *  license (including the above copyright notice and the disclaimer and (if      
 *  applicable) source code license limitations below) in the documentation       
 *  and/or other materials provided with the distribution                         
 *                                                                                
 *  Redistribution and use in binary form, without modification, are permitted    
 *  provided that the following conditions are met:                               
 *                                                                                
 *    *  No reverse engineering, decompilation, or disassembly of this software   
 *  is permitted with respect to any software provided in binary form.            
 *                                                                                
 *    *  any redistribution and use are licensed by TI for use only with TI       
 *  Devices.                                                                      
 *                                                                                
 *    *  Nothing shall obligate TI to provide you with source code for the        
 *  software licensed and provided to you in object code.                         
 *                                                                                
 *  If software source code is provided to you, modification and redistribution   
 *  of the source code are permitted provided that the following conditions are   
 *  met:                                                                          
 *                                                                                
 *    *  any redistribution and use of the source code, including any resulting   
 *  derivative works, are licensed by TI for use only with TI Devices.            
 *                                                                                
 *    *  any redistribution and use of any object code compiled from the source   
 *  code and any resulting derivative works, are licensed by TI for use only      
 *  with TI Devices.                                                              
 *                                                                                
 *  Neither the name of Texas Instruments Incorporated nor the names of its       
 *  suppliers may be used to endorse or promote products derived from this        
 *  software without specific prior written permission.                           
 *                                                                                
 *  DISCLAIMER.                                                                   
 *                                                                                
 *  THIS SOFTWARE IS PROVIDED BY TI AND TI’S LICENSORS "AS IS" AND ANY EXPRESS    
 *  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED             
 *  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE        
 *  DISCLAIMED. IN NO EVENT SHALL TI AND TI’S LICENSORS BE LIABLE FOR ANY         
 *  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    
 *  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR            
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER    
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT            
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY     
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH   
 *  DAMAGE.                                                                       
 */


/** @defgroup uta_module UTA Architecture 
 *
 * @brief The Unit Test Automation (UTA) Embedded Communications Object (ECO) 
 *        Architecture contains all API functions, enumerations and definitions 
 *        required to integrate the UTA component into the unit test code of an 
 *        existing module.  Once integrated, the UTA module permits fully
 *        configurable unit test via external Test Description Files (TDF).  
 *        Each TDF defines the specific ECO (may be several) actions and 
 *        parameters in the order that they should occur.  This way, new tests 
 *        may be generated at any point via creation of new TDF files.
 
 *        The UTA module is a simple file parser that associates commands with 
 *        function handlers.  This asociation is accomplished via a module "command
 *        definition file".  Command files have already been created for the signal
 *        generator (SGN) and hybrid (HYB) modules of the SDK package.  Any module 
 *        that integrates UTA should create a command file to define the commands 
 *        that the UTA will recognize.  Further information on TDF files and 
 *        command definition is available in the 1020_ECAN SDS (QRSA00013288)
 *
 *  @{
 */
/** @} */

/* System include files and utilities' APIs */
#include <stdlib.h>
#include <ti/mas/types/types.h>


/** @defgroup uta_api_constants UTA Constants (enum's and define's)
 *  @ingroup uta_module
 *
 *  @brief Enumerations and Defines used to clarify UTA API constant values
 */

/** @defgroup uta_api_structures UTA Data Structures
 *  @ingroup uta_module
 *
 *  @brief Structures used as arguments in the UTA API and in command 
 *         definition files.
 */


/* Global UTA instance array */
extern void *utaInstArray[];


/**
 *  @def  uta_IDX_NULL
 *        "NULL" index to indicate end of option:value pairs. This value is 
 *        placed at the end of the option/value pair array (that is passed
 *        to each function handler) to indicate the end of options.
 *        
 */
#define uta_IDX_NULL        (-1)


/** @defgroup uta_err_code UTA Error Codes
 *  @ingroup uta_api_constants
 *
 * @brief Error codes returned by UTA API functions.
 *  
 * @{
 * @name UTA Error Code Enumerations 
 *
 */
/* @{ */
enum {
  uta_NO_ERROR,             /**< Function returned without error   */
  uta_ERROR,                /**< Function returned with error      */
  uta_MOD_ERROR,            /**< Module error encountered          */
  uta_CMD_ERROR,            /**< Command error encountered         */
  uta_OPT_ERROR,            /**< Command option error encountered  */
  uta_TDF_ERROR,            /**< Test description file in error    */
  uta_IDX_ERROR             /**< Module index error                */
};
/*  @} */
/** @} */


/** @defgroup uta_opt_type UTA Option Types
 *  @ingroup uta_api_constants
 *
 * @brief Option type enumerations used to specify, in the command definition
 *        file, the type category for each optoin or parameter.
 *  
 * @{
 * @name UTA Option Type Enumerations 
 *
 */
/* @{ */
enum {
  uta_OPT_TYPE_STR,         /**< Returned value is a string              */
  uta_OPT_TYPE_INT,         /**< Returned value is an integer            */
  uta_OPT_TYPE_ENUM,        /**< Returned value is an enumerated string  */
  uta_OPT_TYPE_NONE         /**< No option value                         */
};
/*  @} */
/** @} */


/**
 * @ingroup uta_api_structures
 *
 * @struct utaEnum_t
 *
 * @brief  UTA Enumeration structure. 
 *
 *  This structure is used to create enumerations within command definition
 *  files for options of type "uta_OPT_TYPE_ENUM".  This provides better 
 *  readability in the generated TDF file.  For example, a PCM type enumeration
 *  may be created that assigns 0,1,2 to the strings "ALAW","ULAW","LIN".  
 *  Accordingly a TDF line would read:
 *
 *      "MOD COMMAND N PCM:ULAW ...."
 *
 *  Rather than:
 *
 *      "MOD COMMAND N PCM:1 ...."
 *
 */
typedef struct {
  const char *string;       /**< String name                     */
  tint  enum_id;            /**< Associated numerical identifier */
} utaEnum_t;


/**
 * @ingroup uta_api_structures
 *
 * @struct utaOption_t
 *
 * @brief  UTA Option structure. 
 *
 *  This structure is used to define each command option within a command 
 *  definition file.  Each option is defined by:
 *
 *    - A utaEnum_t to associate a recognizeable string with it's index 
 *    - A type identifier to define the option value type
 *    - A list of accepted values
 *
 */
typedef struct {
  utaEnum_t item;           /**< Option string/id pair                       */
  tint      type;           /**< Option type (see uta_OPT_TYPE_xxx)          */
  struct {
    tint  num;              /**< Number of value/id pairs                    */
    const utaEnum_t *vals;  /**< Valid value string/id pairs for option if   */
  } vlist;                  /**< "type" is uta_OPT_TYPE_STR (NULL otherwise) */
} utaOption_t;


/**
 * @ingroup uta_api_structures
 *
 * @struct utaCommand_t
 *
 * @brief  UTA Command structure. 
 *
 *  This structure is used to define each command in the command definition 
 *  file.  Each command is defined by:
 *
 *    - A name string 
 *    - A handler function pointer
 *    - The number of options (arguments) that are associated with it
 *    - A pointer to a constant option table
 *
 */
typedef struct {
  char *name;                               /**< Command string    */
  tint (*handler) (tint index, void *opts); /**< Command handler   */
  tint  num_option;                         /**< Number of options */
  const utaOption_t *opts;                  /**< Option table      */
} utaCommand_t;


/**
 * @ingroup uta_api_structures
 *
 * @struct utaModConfig_t
 *
 * @brief  UTA Module Configuration structure. 
 *
 *  This structure is passed to the utaAddModule() API function to "register"
 *  a module with the UTA instance.  No modules, or module commands, are
 *  recognized by the UTA instance unless the module has been registered 
 *  via the utaAddModule() API function.  This allows each unit test 
 *  application to register only those modules needed for operation.  The
 *  net effect is to reduce the overhead processing required in table lookup.
 *
 *  The module is registered by passing:  
 *    - A constant name string (TDF identiifier)
 *    - The number of defined commands
 *    - The number of module instances for the UTA instance to manage
 *    - A pointer to the instances that the UTA instance will manage
 *    - A pointer to a constant command table
 *
 *  NOTE #1: The module instance pointers are passed to the UTA instance 
 *           for management such that certain modules may be instantiated
 *           from the unit test heap.  This may be required for modules
 *           whose command files already exist (SGN, HYB, etc.))
 */
typedef struct {
  const char *name;           /**< Module name string           */
  tint  num_command;          /**< Number of valid commands     */
  tint  num_instance;         /**< Number of valid instances    */
  const utaCommand_t *cmds;   /**< Command table                */
  void  **inst_ptrs;          /**< Pointer to instance pointers */
} utaModConfig_t;                           


/**
 * @ingroup uta_api_structures
 *
 * @struct utaConfig_t
 *
 * @brief  UTA Configuration structure. 
 *
 *  This structure is used to define the Test Description File (TDF) for to 
 *  be used for the test in progress.  This is passed to the UTA instance
 *  during initialization via the utaInit() API function. 
 *
 */
typedef struct {
  char *fname;                /**< Test description file name   */
} utaConfig_t;


/**
 * @ingroup uta_api_structures
 *
 * @struct utaOptionPair_t
 *
 * @brief  UTA Option Pair structure. 
 *
 *  This structure is used to pass all command option/value pairs to the
 *  command handler functions.  The "(void *) opts" passed should be cast
 *  to this structure for parsing and handling.
 */
typedef struct {
  tint  id;                   /**< (returned) Option ID             */
  union {
    tlong integer;            /**< (returned) Option Integer value  */
    char *string;             /**< (returned) Option String value   */
  } value;
} utaOptionPair_t;


/** @ingroup uta_module */
/** @defgroup uta_api_functions External API 
 *
 * @brief  The UTA API consists of four API functions 
 *
 *         -# utaGetSizes()     Used to determine the memory requirements for the UTA
 *                              instance.  The UTA module is an ECO-lite module (compatible
 *                              with ECO API version 4.0) and, as such, only requires
 *                              allocation for the instance buffer.
 *				 -# utaInit()         Used to initialize the UTA instance.  Must be called after 
 *                              instantiation (memory allocation) and before adding modules.
 *				 -# utaAddModule()    Adds (registers) a module with the UTA instance.  Once a module
 *                              is registered, it's commands will be recognized bu the UTA
 *                              instance.
 *         -# utaProcess()      Main entry point for execution.  This call signals the UTA
 *                              instance to start reading the TDF file and processing the 
 *                              parsed commands.
 *
 *         The order of the UTA life-cycle is:
 *
 *         -# utaGetSizes ()
 *         -# utaInit ()
 *         -# utaAddModule (MODULE_A)
 *         -# utaAddModule (MODULE_B)
 *         -# utaAddModule (MODULE_C)
 *         -# utaProcess ()
 *         
 */

/* ============ utaGetSizes() ============ */
/**
 *  @brief This function returns the instance buffer requirements for the UTA
 *         instance.  This must be called, and memory allocated, prior to 
 *         initialization via utaInit().
 *
 *  @param[out]  instsize   Memory required for the UTA instance.
 *
 *  @return        \link uta_module::uta_NO_ERROR UTA error code. \endlink 
 *
 *  @sa          utaInit()
 *
 */
tint utaGetSizes (tint *instsize); 


/* ============ utaInit() ============ */
/**
 *  @brief This function initializes a UTA instance and initializes it for
 *         automation.  This API function must be executed before the UTA instance
 *         is used or any moduoles registered (utaProcess, utaAddModule).
 *
 *  @param[in]     utaInst   (void) Pointer to UTA instance
 *
 *  @param[in]     cfg       Pointer to utaConfig_t structure
 *
 *  @return        \link uta_module::uta_NO_ERROR UTA error code. \endlink 
 *
 *  @sa            utaGetSizes()
 *
 *  @pre  Pointer inst must not be NULL.
 *
 */
tint utaInit (void *utaInst, utaConfig_t *cfg);


/* ============ utaAddModule() ============ */
/**
 *  @brief This function registers a module (ECO) with the UTA instance.  This allows
 *         the UTA instance to recognize the module's commands.  This API function 
 *         must be executed for all modules intended for use in unit test automation
 *         prior to TDF parsing (utaProcess).
 *
 *  @param[in]     utaInst   (void) Pointer to UTA instance
 *
 *  @param[in]     cfg       Pointer to utaModConfig_t structure
 *
 *  @return        \link uta_module::uta_NO_ERROR UTA error code. \endlink 
 *
 *  @sa            utaProcess()
 *
 *  @pre  Pointer inst must not be NULL.
 *
 */
tint utaAddModule (void *utaInst, utaModConfig_t *cfg);


/* ============ utaProcess() ============ */
/**
 *  @brief This is the main processing function of the UTA instance API.  This routine
 *         parses the TDF file and sequentially calls the command handlers associated
 *         with each identified command.
 *
 *  @param[in]     utaInst   (void) Pointer to UTA instance
 *
 *  @return        \link uta_module::uta_NO_ERROR UTA error code. \endlink 
 *
 *  @sa            utaAddModule()
 *
 *  @pre  Pointer inst must not be NULL.
 *
 */
tint utaProcess   (void *utaInst);


/* ============ utaBreakPoint() ============ */
/**
 *  @brief This routine provides a common symbol for breakpont generation.
 *
 */
void utaBreakPoint (void);

#endif  /* _UTA_H */
/* nothing past this point */
