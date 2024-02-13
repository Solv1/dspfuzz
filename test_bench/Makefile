#Makefile for Testing 
TOOLS_DIR=../../ti/55x_Tools/
OBJS += \
./autcor00.obj \
./bmark.obj

CMD_SRCS += \
./55xConvolve2.cmd

C_SRCS += \
./autcor00.c \
./bmark.c

C_DEPS += \
./autcor00.d \
./bmark.d

ORDERED_OBJS += \
./autcor00.obj \
./bmark.obj \
./55xConvolve2.cmd \


test:
	#echo "-----Compiling Test Case-----"
	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(TOOLS_DIR)include --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(C_SRCS)
	#echo "-----Done Compiling-----"
	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x400 -i$(TOOLS_DIR)lib/ -i$(TOOLS_DIR)include/ --reread_libs --display_error_number --warn_sections  --rom_model --sys_stacksize=0x200 -o TeleBench_autcor.out $(ORDERED_OBJS)
	#echo "-----Done Linking-----"
