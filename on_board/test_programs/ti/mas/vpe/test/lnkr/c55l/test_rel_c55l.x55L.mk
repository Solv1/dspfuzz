#*******************************************************************************
#* FILE PURPOSE: Lower level makefile for Creating Component Libraries
#*******************************************************************************
#* FILE NAME: lnkr/c55l/test_rel_c55l.x55L.mk
#*
#* DESCRIPTION: Defines Source Files, Compilers flags and build rules
#*
#*
#* This is an auto-generated file		  
#*******************************************************************************
#

#
# Macro definitions referenced below
#
empty =
space =$(empty) $(empty)
CC = "$(C55X_GEN_INSTALL_DIR)/bin/"cl55 -c -ml
AC = "$(C55X_GEN_INSTALL_DIR)/bin/"cl55 -c -ml
ARIN = "$(C55X_GEN_INSTALL_DIR)/bin/"ar55 rq
LD = "$(C55X_GEN_INSTALL_DIR)/bin/"lnk55  
CGINCS = $(strip $(subst $(space),\$(space),$(C55X_GEN_INSTALL_DIR)/include))
RTSLIB = -l "$(C55X_GEN_INSTALL_DIR)/lib/libc.a"
INCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(subst \,/,$(INCDIR)))))
OBJEXT = o55L
AOBJEXT = s55L
INTERNALDEFS =  -Dti_targets_C55_large -Dxdc_target_types__=ti/targets/std.h -eo.$(OBJEXT) -ea.$(AOBJEXT) -fr=$(@D) -fs=$(@D) -ppa -ppd=$@.dep 
INTERNALLINKDEFS =  -o $@ -m $@.map
OBJDIR = ./package/cfg/lnkr/c55l/test_rel_c55l

#List the commonCsrc Files
COMMONCSRCC= \
	src/vpesim.c\
	src/nrsim.c\
	src/nrbufs.c\
	src/vpesim_setup.c

# FLAGS for the commonCsrc Files
COMMONCSRCCFLAGS =  -c -pds1112 -pds825 -pds838 -pds828 -pds827 -pds77 -pds837 -pds824 -vcpu:2.1 -mg -ss -k -dC5510 -as -g --ptrdiff_size=16 -o2 -mn -ms

# Make Rule for the commonCsrc Files
COMMONCSRCCOBJS = $(patsubst %.c, $(OBJDIR)/%.$(OBJEXT), $(COMMONCSRCC))

$(COMMONCSRCCOBJS): $(OBJDIR)/%.$(OBJEXT): %.c
	-@echo cl55L $< ...
	if [ ! -d $(@D) ]; then $(MKDIR) $(@D) ; fi;
	-$(RM) $@.dep
	$(CC) $(COMMONCSRCCFLAGS) $(INTERNALDEFS) $(INCS) -I$(CGINCS) -fc $< 
	-@$(CP) $@.dep $@.pp; \
			$(SED) -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
				-e '/^$$/ d' -e 's/$$/ :/' < $@.pp >> $@.dep; \
			$(RM) $@.pp 

#Create Empty rule for dependency
$(COMMONCSRCCOBJS):lnkr\c55l\test_rel_c55l.x55L.mk
lnkr\c55l\test_rel_c55l.x55L.mk:

#Include Depedency for commonCsrc Files
ifneq (clean,$(MAKECMDGOALS))
 -include $(COMMONCSRCCOBJS:%.$(OBJEXT)=%.$(OBJEXT).dep)
endif



lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/sdk/lib/sdk_c.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/sdk/lib/sdk_a.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/vpe/lib/vpe_cm.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/vpe/lib/vpe_a.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/vpe/lib/vpe_c.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_cm.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_c.a55L
lnkr/c55l/test_rel_c55l.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_a.a55L
lnkr/c55l/test_rel_c55l.x55L :  lnkr/c55l/test_rel_c55l.cmd
lnkr/c55l/test_rel_c55l.x55L :  $(COMMONCSRCCOBJS)
	@echo lnk55L $@ ...
	$(LD)  $(COMMONCSRCCOBJS) lnkr/c55l/test_rel_c55l.cmd $(INTERNALLINKDEFS) $(RTSLIB)
