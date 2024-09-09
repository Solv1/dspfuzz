#*******************************************************************************
#* FILE PURPOSE: Lower level makefile for Creating Component Libraries
#*******************************************************************************
#* FILE NAME: lnkr/c55l/test_rel_c5510.x55L.mk
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
OBJDIR = ./package/cfg/lnkr/c55l/test_rel_c5510

#List the commontestsrc Files
COMMONTESTSRCC= \
	src/cidsim.c

# FLAGS for the commontestsrc Files
COMMONTESTSRCCFLAGS =  -c -pds1112 -pds825 -pds838 -pds828 -pds827 -pds77 -pds837 -pds824 -vcpu:2.1 -mg -ss -k -dC5510 -as -g --ptrdiff_size=16 -o2 -mn

# Make Rule for the commontestsrc Files
COMMONTESTSRCCOBJS = $(patsubst %.c, $(OBJDIR)/%.$(OBJEXT), $(COMMONTESTSRCC))

$(COMMONTESTSRCCOBJS): $(OBJDIR)/%.$(OBJEXT): %.c
	-@echo cl55L $< ...
	if [ ! -d $(@D) ]; then $(MKDIR) $(@D) ; fi;
	-$(RM) $@.dep
	$(CC) $(COMMONTESTSRCCFLAGS) $(INTERNALDEFS) $(INCS) -I$(CGINCS) -fc $< 
	-@$(CP) $@.dep $@.pp; \
			$(SED) -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
				-e '/^$$/ d' -e 's/$$/ :/' < $@.pp >> $@.dep; \
			$(RM) $@.pp 

#Create Empty rule for dependency
$(COMMONTESTSRCCOBJS):lnkr\c55l\test_rel_c5510.x55L.mk
lnkr\c55l\test_rel_c5510.x55L.mk:

#Include Depedency for commontestsrc Files
ifneq (clean,$(MAKECMDGOALS))
 -include $(COMMONTESTSRCCOBJS:%.$(OBJEXT)=%.$(OBJEXT).dep)
endif



lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/cid/lib/cid_c.a55L
lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/sdk/lib/sdk_c.a55L
lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/sdk/lib/sdk_a.a55L
lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_cm.a55L
lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_c.a55L
lnkr/c55l/test_rel_c5510.x55L :  $(VOLIB_INSTALL_DIR)/ti/mas/util/lib/util_a.a55L
lnkr/c55l/test_rel_c5510.x55L :  lnkr/c55l/test_rel_c5510.cmd
lnkr/c55l/test_rel_c5510.x55L :  $(COMMONTESTSRCCOBJS)
	@echo lnk55L $@ ...
	$(LD)  $(COMMONTESTSRCCOBJS) lnkr/c55l/test_rel_c5510.cmd $(INTERNALLINKDEFS) $(RTSLIB)
