#Makefile for Testing 
TOOLS_DIR=../../ti/55x_Tools/
LIB_DIR = ../../ti/55x_libaries/

OBJS += \
./main.obj

CMD_SRCS += \
./Custom_Linker.cmd

C_SRCS += \
./fuzz.c  \
./test.c

ASM_SRCS += \
./fuzz.asm  \
./test.asm

C_DEPS += \
./fuzz.d \
./test.d

ORDERED_OBJS += \
./fuzz.obj \
./test.obj \
./Custom_Linker.cmd \


asm:
	$(TOOLS_DIR)bin/masm55  --memory_model=large -g  --include_path=./ --include_path=$(LIB_DIR) --include_path=$(TOOLS_DIR)include --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(ASM_SRCS)
	@echo "-----Done Compiling-----"
	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x400 -i$(LIB_DIR) -i$(TOOLS_DIR)lib/ -i$(TOOLS_DIR)include/ --reread_libs --display_error_number --warn_sections  --rom_model --sys_stacksize=0x200 -o main.out $(ORDERED_OBJS)
	@echo "------Done Linking------"


test:
	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --include_path=./ --include_path=$(LIB_DIR) --include_path=$(TOOLS_DIR)include --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm  $(C_SRCS)
	@echo "-----Done Compiling-----"
	$(TOOLS_DIR)bin/cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x400 -i$(LIB_DIR) -i$(TOOLS_DIR)lib/ -i$(TOOLS_DIR)include/ --reread_libs --display_error_number --warn_sections  --rom_model --sys_stacksize=0x200 -o main.out $(ORDERED_OBJS)
	@echo "-----Done Linking-----"

clean:
	rm *.obj *.out *.asm
