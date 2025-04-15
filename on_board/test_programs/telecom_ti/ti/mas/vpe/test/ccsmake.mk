#*******************************************************************************
#* FILE PURPOSE: Top level makefile for Creating Kernel CCS Projects
#*******************************************************************************
#* FILE NAME: makefile
#*
#* DESCRIPTION: Defines Compiler tools paths, CCS path and rule to create and build CCS projects 
#*
#*
#* This is an auto-generated file			  
#*******************************************************************************
#*
# (Mandatory) Specify where various tools are installed.

# CCSCGTVER	  - C6x Code Generation version to be used for building CCS project
export CCSCGTVER ?= 7.4.2

# CCSCGTVERC55	 - C55x Code Generation version to be used for building CCS project
export CCSCGTVERC55 ?= 4.4.1

# CCS_INSTALL_DIR	  - TI Code Composer Studio install directory
export CCSV5_INSTALL_DIR ?= C:/Program Files/Texas Instruments/ccsv5

ifneq ($(findstring $(CCSVERSION), CCSV5),)
	export CCS_INSTALL_DIR ?= $(CCSV5_INSTALL_DIR)
	export ECLIPSE_CMD ?= "$(CCS_INSTALL_DIR)/eclipse/eclipsec.exe" -noSplash
	export CDTFILE ?= .cproject
endif

# PATH TO  MAS INSTALL DIR
export MAS_INSTALL_DIR		?= C:/MAS_Tools

# Common Macros used in make

ifndef RMDIR
export RMDIR = DEL /Q /F /S
endif

ifneq ($(findstring $(SHELL), sh.exe),)
	quote = "
	FIXCCSPJT=
else
	quote = '
	FIXCCSPJT=${XDC_INSTALL_DIR}/xs -f ../../swtools/fixccspjt.js $(@D)/$(CDTFILE)
endif

# PHONY Targets
.PHONY: all clean cleanall .projects 

# FORCE Targets
FORCE: 

# all rule
all: .executables
.executables: .projects
.projects:
.xdcenv.mak:
Package.mak:
package.bld:

#############################################################

# Rule to Build Project test_rel_c55l_C55L_COFF

#############################################################

.executables: ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out

.projects: ccsProjects/test_rel_c55l_C55L_COFF/$(CDTFILE)

ccsProjects/test_rel_c55l_C55L_COFF/$(CDTFILE): .xdcenv.mak Package.bld Package.mak
	$(ECLIPSE_CMD)  -data "C:/Temp/workspace" -application com.ti.ccstudio.apps.projectCreate -ccs.name test_rel_c55l_C55L_COFF -ccs.device com.ti.ccstudio.deviceModel.C5500.GenericC55xxDevice -ccs.endianness big -ccs.kind com.ti.ccstudio.managedbuild.core.ProjectKind_Executable -ccs.outputType executable -ccs.linkFile EXT_ROOT__TEST_REL_C55L_C55L_COFF_LNKRC55L/test_rel_c55l_ccs.cmd -ccs.linkFile EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC/vpesim.c -ccs.linkFile EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC/nrsim.c -ccs.linkFile EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC/nrbufs.c -ccs.linkFile EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC/vpesim_setup.c -ccs.setCompilerOptions "--ptrdiff_size=16 --memory_model=large --symdebug:none -Dti_targets_C55_large -Dxdc_target_types__=ti/targets/std.h  -D__CCS_PROJECT_REL_PATH  -pds1112 -pds825 -pds838 -pds828 -pds827 -pds77 -pds837 -pds824 -vcpu:2.1 -mg -ss -k -dC5510 -as -g --ptrdiff_size=16  -mn -ms -pg -g  -i../../../../../../../ -i$$$${XDC_CG_ROOT}/packages  -i$$$${XDAIS_CG_ROOT}/packages -i../../../lnkr/c55l -i../../../src" @configurations Debug -ccs.setCompilerOptions "--ptrdiff_size=16 --memory_model=large --symdebug:none -Dti_targets_C55_large -Dxdc_target_types__=ti/targets/std.h  -D__CCS_PROJECT_REL_PATH  -pds1112 -pds825 -pds838 -pds828 -pds827 -pds77 -pds837 -pds824 -vcpu:2.1 -mg -ss -k -dC5510 -as -g --ptrdiff_size=16 -o2 -mn -ms -pg  -i../../../../../../../ -i$$$${XDC_CG_ROOT}/packages  -i$$$${XDAIS_CG_ROOT}/packages -i../../../lnkr/c55l -i../../../src" @configurations Release -ccs.location ccsProjects/test_rel_c55l_C55L_COFF -ccs.overwrite full -ccs.rts libc.a -ccs.cgtVersion $(CCSCGTVERC55) -ccs.outputFormat coff -ccs.definePathVariable EXT_ROOT__TEST_REL_C55L_C55L_COFF_LNKRC55L "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/lnkr/c55l" -ccs.definePathVariable EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/src"
	${FIXCCSPJT}
	echo XDC_CG_ROOT=C:/MAS_Tools/xdctools_3_24_06_63 >> ccsProjects/test_rel_c55l_C55L_COFF/macros.ini
	echo XDAIS_CG_ROOT=C:/MAS_Tools/xdais_7_23_00_06 >> ccsProjects/test_rel_c55l_C55L_COFF/macros.ini
	echo EXT_ROOT__TEST_REL_C55L_C55L_COFF_LNKRC55L=../../lnkr/c55l >> ccsProjects/test_rel_c55l_C55L_COFF/macros.ini
	echo EXT_ROOT__TEST_REL_C55L_C55L_COFF_SRC=../../src >> ccsProjects/test_rel_c55l_C55L_COFF/macros.ini
	-$(RMDIR) "C:/Temp/workspace"
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: lnkr/c55l/test_rel_c55l_ccs.cmd
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: src/vpesim.c
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: src/nrsim.c
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: src/nrbufs.c
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: src/vpesim_setup.c
ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out: ccsProjects/test_rel_c55l_C55L_COFF/.project
	-@ echo Importing Project test_rel_c55l_C55L_COFF into workspace ...
	$(ECLIPSE_CMD)  -data "C:/Temp/workspace" -application com.ti.ccstudio.apps.projectImport -ccs.projects test_rel_c55l_C55L_COFF -ccs.location "M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/vpe/test/ccsProjects/test_rel_c55l_C55L_COFF"
	-@ echo Building Project test_rel_c55l_C55L_COFF ...
	$(ECLIPSE_CMD)  -data "C:/Temp/workspace" -application com.ti.ccstudio.apps.projectBuild -ccs.projects test_rel_c55l_C55L_COFF -ccs.configuration Debug
	-@ echo Project test_rel_c55l_C55L_COFF Completed ...
	-@ echo ########################################
	-$(RMDIR) "C:/Temp/workspace"
	if test ! -f ccsProjects/test_rel_c55l_C55L_COFF/Debug/test_rel_c55l_C55L_COFF.out; then exit 1; fi;

clean::
	-$(RMDIR) "ccsProjects/test_rel_c55l_C55L_COFF"

