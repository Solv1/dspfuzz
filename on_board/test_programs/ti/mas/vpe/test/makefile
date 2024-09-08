#*******************************************************************************
#* FILE PURPOSE: Top level makefile for Creating Component Libraries
#*******************************************************************************
#* FILE NAME: makefile
#*
#* DESCRIPTION: Defines Compiler tools paths, libraries , Build Options 
#*
#*
#* This is an auto-generated file		   
#*******************************************************************************
#*
# (Mandatory) Specify where various tools are installed.

# C6X_GEN_INSTALL_DIR	- C6x Code gen tools install directory
export C6X_GEN_INSTALL_DIR ?= C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c6000_7.4.2

# C66X_GEN_INSTALL_DIR	 - C6x Code gen tools install directory
export C66X_GEN_INSTALL_DIR ?= C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c6000_7.4.2

# C55X_GEN_INSTALL_DIR	 - C55x Code gen tools install directory
export C55X_GEN_INSTALL_DIR ?= C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1

# PATH TO	XDC INSTALL DIR
export XDC_INSTALL_DIR	  ?= C:/MAS_Tools/xdctools_3_24_06_63

# PATH TO	MAS INSTALL DIR
export MAS_INSTALL_DIR	  ?= C:/MAS_Tools

# PATH TO	VOLIB INSTALL DIR
export VOLIB_INSTALL_DIR	  ?= M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas

# ROOT Directory
export ROOTDIR := ../../../..

# INCLUDE Directory
export INCDIR := $(MAS_INSTALL_DIR)/CCSV5_2_1/ccsv5/packages;$(MAS_INSTALL_DIR)/xdc_eclipse_plugin_gen/20091203;$(XDC_INSTALL_DIR)/packages;$(MAS_INSTALL_DIR)/xdais_7_23_00_06/packages;$(VOLIB_INSTALL_DIR);$(ROOTDIR)

# Common Macros used in make

ifndef RM
export RM = rm -f
endif

ifndef CP
export CP = cp -p
endif

export MKDIR = mkdir -p

ifndef RMDIR
export RMDIR = rm -rf
endif

ifndef SED
export SED = sed
endif

ifndef MAKE
export MAKE = make
endif

# PHONY Targets
.PHONY: all clean cleanall 

# FORCE Targets
FORCE: 

# all rule
all: .executables
.executables: .libraries
.libraries:

# Clean Rule
clean:: clean_package
# Clean Top Level Object Directory 
clean_package :
	$(RMDIR) package/lib
	$(RMDIR) package/cfg

.executables: make_dependent 

make_dependent: 
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/util all
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/vpe all
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/sdk all

cleanall: clean_dependent 

clean_dependent: 
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/util clean
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/vpe clean
	-@$(MAKE) -C $(VOLIB_INSTALL_DIR)/ti/mas/sdk clean


# Make rule to create lnkr/c55l/test_rel_c55l.x55L executable
.executables: lnkr/c55l/test_rel_c55l.x55L
lnkr/c55l/test_rel_c55l.x55L: FORCE
	@$(MAKE) -f lnkr/c55l/test_rel_c55l.x55L.mk $@
clean ::
	$(RM) lnkr/c55l/test_rel_c55l.x55L
