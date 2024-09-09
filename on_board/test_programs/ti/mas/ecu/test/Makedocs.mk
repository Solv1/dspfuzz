# ==============================================================================
# File            : Makedocs.mk
# Description     : 
#
#   GNU makefile to generate ECU documentation from sources using Doxygen
#
# ==============================================================================

# The target for generating documents using doxygen is gendocs

ECUTEST_DOC=./docs/doxygen/ECU_TEST.chm

release: $(ECUTEST_DOC)

gendocs $(ECUTEST_DOC): ./docs/doxygen/doxygen.h
	-@echo generating ECUTEST documentation ...
	if test ! -d ./docs/doxygen/html; then mkdir ./docs/doxygen/html; fi
	cp $(TI_DOXYGEN_TEMPLATES)/*.* ./docs/doxygen/html
	doxygen.exe ./docs/doxygen/Doxyfile

# End of Makedocs.mk
