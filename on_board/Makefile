#/home/santiago/Research/Ti/C55_Tools/cl55 -v5515 --memory_model=large -g 
#-i=./test_programs/  --include_path=./ --include_path=/home/santiago/Research/Ti/C55_Libraries/ 
#--include_path=/home/santiago/Research/Ti/C55_Includes/ 
#--include_path=/home/santiago/Research/Ti/c55_csl_3.08.01/inc/ 
#--include_path=/home/santiago/Research/Ti/C55_ImgLib/include/ 
#--define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 
#--keep_asm  ./test_programs/sonar.c ./fuzz.c ./coverage.asm


#Makefile for Testing 
TOOLS_DIR= /home/santiago/Research/Ti/C55_Tools/
LIB_DIR = /home/santiago/Research/Ti/C55_Libraries/
INCLUDE_DIR = /home/santiago/Research/Ti/C55_Includes/
CSL_INCLUDE_DIR = /home/santiago/Research/Ti/c55_csl_3.08.01/inc/
CSL_LIB = /home/santiago/Research/Ti/c55_csl_3.08.01/ccs_v6.x_examples/C55XXCSL_LP/Debug/C55XXCSL_LP.lib
IMG_LIB_INCLUDE_DIR = /home/santiago/Research/Ti/C55_ImgLib/include/
TEST_DIR= ./test_programs/

OBJS += \
./coverage.obj \
./fuzz.obj

CMD_SRCS += \
./Custom_Linker.cmd

C_SOURCES += \
./fuzz.c  \
./coverage.asm \

ASM_SRCS += \
./coverage.asm

C_DEPS += \
./fuzz.d \

ORDERED_OBJS += \
./coverage.obj \
./fuzz.obj \
./test_fuzz.obj \
./Custom_Linker.cmd \

asm:
	@echo "Compiling ASM sources in "
	@echo $(TEST_DIR)
	cd $(TEST_DIR); make all
	

coms:
	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(TEST_DIR) --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 $(TEST_DIR)coms.asm $(C_SOURCES)
vision:
	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(TEST_DIR) --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 $(TEST_DIR)vision.asm $(C_SOURCES)
#filter:
#	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 $(TEST_DIR)coms.asm $(C_SOURCES)
sonar:
	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(TEST_DIR) --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 $(TEST_DIR)sonar.asm $(C_SOURCES)
	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x800 -i$(LIB_DIR) -l./55ximagex.lib -i$(INCLUDE_DIR) -l./55xdspx_r3.lib  -l$(CSL_LIB) --reread_libs --display_error_number --warn_sections  -m"DSPOut.map" --rom_model --sys_stacksize=0x400 -o DSPFuzz.out ./coverage.obj ./fuzz.obj ./sonar.obj ./Custom_Linker.cmd 


# asm:
# 	$(TOOLS_DIR)masm55  --memory_model=large -g  --include_path=./ --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(ASM_SRCS)
# 	@echo "Assembled"
# 	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x400 -i$(LIB_DIR) -i$(TOOLS_DIR)lib/ -i$(TOOLS_DIR)include/ --reread_libs --display_error_number --warn_sections  --rom_model --sys_stacksize=0x200 -o main.out $(ORDERED_OBJS)
# 	@echo "------Done Linking------"


# test:
# 	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(LIB_DIR) --include_path=$(INCLUDE_DIR) --include_path=$(CSL_INCLUDE_DIR) --include_path=$(IMG_LIB_INCLUDE_DIR) --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(C_SRCS)
# 	@echo "-----Done Compiling-----"
# 	$(TOOLS_DIR)cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x400 -i$(LIB_DIR) -l./55ximagex.lib -i$(INCLUDE_DIR) -l$(CSL_LIB) --reread_libs --display_error_number --warn_sections  --rom_model --sys_stacksize=0x400 -o DSPFuzz.out $(ORDERED_OBJS)
# 	@echo "-----Done Linking-----"

# clean:
# 	rm *.obj *.out 
