# Test Program Makefile

TOOLS_DIR= /home/santiago/Research/Ti/C55_Tools/
LIB_DIR = /home/santiago/Research/Ti/C55_Libraries/
INCLUDE_DIR = /home/santiago/Research/Ti/C55_Includes/
CSL_INCLUDE_DIR = /home/santiago/Research/Ti/c55_csl_3.08.01/inc/
CSL_LIB = /home/santiago/Research/Ti/c55_csl_3.08.01/ccs_v6.x_examples/C55XXCSL_LP/Debug/C55XXCSL_LP.lib
IMG_LIB_INCLUDE_DIR = /home/santiago/Research/Ti/C55_ImgLib/include/

TEST_SOURCES += \
./coms.c \
./pace.c \
./vision.c \
./sonar.c \

all:
	@echo "Compiling Test Cases"
	$(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./ --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(TEST_SOURCES)
	@echo "Removing OBJ files"
	rm ./*.obj
