# ==============================================================================
# File            : Makedocs.mk
# Description     : 
#
#   GNU makefile to generate VPE TEST documentation from sources using Doxygen
#
# ==============================================================================

# The target for generating documents using doxygen is gendocs

VPETEST_DOC=./docs/doxygen/VPE_TEST.chm

release: $(VPETEST_DOC)

gendocs $(VPETEST_DOC): ./docs/doxygen/doxygen.h
	-@echo generating VPETEST documentation ...
	if test ! -d ./docs/doxygen/html; then mkdir ./docs/doxygen/html; fi
	cp $(TI_DOXYGEN_TEMPLATES)/*.* ./docs/doxygen/html
	doxygen ./docs/doxygen/Doxyfile
# End of Makedocs.mk
