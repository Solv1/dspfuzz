# Test Program Makefile

TOOLS_DIR= /home/santiago/Research/Ti/C55_Tools/
LIB_DIR = /home/santiago/Research/Ti/C55_Libraries/
INCLUDE_DIR = /home/santiago/Research/Ti/C55_Includes/
TEST_INCLUDE_DIR=../include/
CSL_INCLUDE_DIR = /home/santiago/Research/Ti/c55_csl_3.08.01/inc/
CSL_LIB = /home/santiago/Research/Ti/c55_csl_3.08.01/ccs_v6.x_examples/C55XXCSL_LP/Debug/C55XXCSL_LP.lib
IMG_LIB_INCLUDE_DIR = /home/santiago/Research/Ti/C55_ImgLib/include/

.PHONY: telecom_ti, all, vision, pace, sonar

TI_TEST_SOURCES += \
./ti/mas/vpe/test/src/nrbufs.c \
./ti/mas/vpe/test/src/vpesim.c \
./ti/mas/vpe/test/src/vpesim_setup.c \
./ti/mas/vpe/test/src/nrsim.c \

TEST_SOURCES += \
./telecom/coms.c \
./pace/pace.c \
./vision/vision.c \
./sonar/sonar.c \
./jpeg/enc.c

all:
	@echo "Compiling Test Cases"
	$(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 \
--keep_asm  $(TEST_SOURCES)\
	@echo "Removing OBJ files"
	rm ./*.obj

telecom:
	@echo "Compiling Telecom Test"
	$(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--include_path=$(TEST_INCLUDE_DIR)--define=c5515 --display_error_number \
--diag_warning=225 --ptrdiff_size=16 \
--keep_asm  ./telecom/coms.c
	@echo "Removing OBJ files"
	rm ./telecom/*.obj

pace:
	@echo "Compiling Pace Test"
	$(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--include_path=$(TEST_INCLUDE_DIR)--define=c5515 --display_error_number \
--diag_warning=225 --ptrdiff_size=16 \
--keep_asm  ./pace/pace.c
	@echo "Removing OBJ files"
	rm ./pace/*.obj

vision:
# @echo "Compiling Vision Test"
# $(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./ --include_path=./include/ --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --include_path=$(TEST_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  ./vision/vision.c
# @echo "Removing OBJ files"
# rm ./vision/*.obj
	/home/santiago/Research/Ti/C55_Tools/cl55 -v5515 --memory_model=large -g -i=./test_programs/  --include_path=./include/ --include_path=/home/santiago/Research/Ti/C55_Libraries/ --include_path=/home/santiago/Research/Ti/C55_Includes/ --include_path=/home/santiago/Research/Ti/c55_csl_3.08.01/inc/ --include_path=./test_programs/sanity_tests/  --include_path=/home/santiago/Research/Ti/C55_ImgLib/include/ --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  ./vision/vision.c 


sonar:
	@echo "Compiling Sonar Test"
	$(TOOLS_DIR)cl55  --memory_model=large -g --include_path=./sonar/ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--include_path=$(TEST_INCLUDE_DIR)--define=c5515 --display_error_number \
--diag_warning=225 --ptrdiff_size=16 \
--keep_asm  ./sonar/sonar.c
	@echo "Removing OBJ files"
	rm ./sonar/*.obj


telecom_ti:
	/home/santiago/Research/Ti/C55_Tools/cl55 -v5515 --memory_model=large -g -i=./test_programs/  --include_path=./ --include_path=/home/santiago/Research/Ti/C55_Libraries/ --include_path=/home/santiago/Research/Ti/C55_Includes/ --include_path=/home/santiago/Research/Ti/c55_csl_3.08.01/inc/ --include_path=/home/santiago/Research/Ti/C55_ImgLib/include/ --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm ./ti/mas/vpe/test/src/nrbufs.c 
	@echo "Compiling TI Telecom Test"
# 	$(TOOLS_DIR)cl55 -v5510 --memory_model=large -g -i=../  \
# --include_path=/home/santiago/Research/Ti/C55_Libraries/ \
# --include_path=/home/santiago/Research/Ti/C55_Includes/ \
# --include_path=./ti/mas/vpe/test/src/ --define=c5510 \
# --include_path=./ti/mas/types/ \
# --display_error_number --diag_warning=225 --asm_directory=./telecom_ti/ \
# --obj_directory=./telecom_ti/ --ptrdiff_size=16 --keep_asm $(TI_TEST_SOURCES) -o \


	@echo "Removing OBJ files"
	rm ./telecom_ti/*.obj

jpeg_enc:
	@echo "Compiling JPEG Enc Test"
	$(TOOLS_DIR)cl55  -v5515 --memory_model=large -g  --include_path=./jpeg/ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--include_path=$(TEST_INCLUDE_DIR) --define=c5515 --display_error_number \
--diag_warning=225 --ptrdiff_size=16 --asm_directory=./jpeg/ --obj_directory=./jpeg/ \
--keep_asm  ./jpeg/buf.c ./jpeg/common.c ./jpeg/huff.c ./jpeg/buf.c ./jpeg/enc.c ./jpeg/conf.c
#	@echo "Removing OBJ files"
#	rm ./jpeg/*.obj
inst_jpeg_enc:
	@echo "Assembling  Insturmented JPEG Enc Test"
	$(TOOLS_DIR)cl55  -v5515 --memory_model=large -g  --include_path=./jpeg/ \
--include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) \
--include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) \
--include_path=$(TEST_INCLUDE_DIR) --define=c5515 --display_error_number \
--diag_warning=225 --ptrdiff_size=16 --asm_directory=./jpeg/ --obj_directory=./jpeg/ \
--keep_asm  ./jpeg/buf.asm ./jpeg/common.asm ./jpeg/huff.asm  ./jpeg/new_enc.asm ./jpeg/conf.asm



#Command for linking 
#/home/santiago/Research/Ti/C55_Tools/cl55 -v5510 --memory_model=large -g --define=c5510 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x800 -i/home/santiago/Research/Ti/C55_Libraries/ -i/home/santiago/Research/Ti/C55_Includes/ -l ./test_programs/ti/mas/sdk/lib/sdk_a.a55L -l ./test_programs/ti/mas/vpe/lib/vpe_a.a55L -l ./test_programs/ti/mas/util/lib/util_a.a55L -l ./test_programs/ti/mas/vpe/lib/vpe_a.a55L -l ./test_programs/ti/mas/vpe/lib/vpe_c.a55L -l ./test_programs/ti/mas/util/lib/util_a.a55L -l ./test_programs/ti/mas/util/lib/util_c.a55L -l ./test_programs/ti/mas/sdk/lib/sdk_a.a55L -l /home/santiago/Research/DSPFuzz/on_board/libs/C55CSL_2.lib -l ./test_programs/ti/mas/sdk/lib/sdk_c.a55L --reread_libs --display_error_number --warn_sections  -m"DSPOut.map" --rom_model --sys_stacksize=0x400 -o DSPFuzz.out ./test_programs/vpesim.obj ./test_programs/vpesim_setup.obj ./test_programs/nrbufs.obj ./test_programs/nrsim.obj ./fuzz_test.obj ./coverage.obj ./vpesim_Linker.cmd 







