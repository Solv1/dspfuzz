# ==============================================================================
# File            : Makedocs.mk
# Description     : 
#
#   GNU makefile to generate VEU test documentation from sources using Doxygen
#
# ==============================================================================

# The target for generating documents using doxygen is gendocs

VEUTEST_DOC=./docs/doxygen/VEU_TEST.chm

release: $(VEUTEST_DOC)

gendocs $(VEUTEST_DOC): ./src/veusim.c ./docs/doxygen/doxygen.h
	-@echo generating VEU test documentation ...
	if test ! -d ./docs/doxygen/html; then mkdir ./docs/doxygen/html; fi
	cp $(TI_DOXYGEN_TEMPLATES)/*.* ./docs/doxygen/html
	doxygen ./docs/doxygen/doxyfile

# End of Makedocs.mk
