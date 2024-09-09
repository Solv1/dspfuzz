# ==============================================================================
# File            : Makedocs.mk
# Description     : 
#
#   GNU makefile to generate CID test documentation from sources using Doxygen
#
# ==============================================================================

# The target for generating documents using doxygen is gendocs

CIDTEST_DOC=./docs/doxygen/CID_TEST.chm

release: $(CIDTEST_DOC)

gendocs $(CIDTEST_DOC): ./docs/doxygen/doxygen.h
	-@echo generating CID test documentation ...
	if test ! -d ./docs/doxygen/html; then mkdir ./docs/doxygen/html; fi
	cp $(TI_DOXYGEN_TEMPLATES)/*.* ./docs/doxygen/html
	doxygen.exe ./docs/doxygen/doxyfile

# End of Makedocs.mk
