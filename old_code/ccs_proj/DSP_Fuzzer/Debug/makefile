################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./coverage.obj" \
"./fuzz.obj" \
"./test.obj" \
"../Custom_Linker.cmd" \
$(GEN_CMDS__FLAG) \
-l"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/lib/libc.a" \
-l"C:/Users/garci/OneDrive/Desktop/Projects/Research/TI Files/ChipSupportLibaries/55xdspx_r3.lib" \
-l"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/lib/usbstk5515bsl.lib" \
-l"C:/ti/c55_lp/c55_csl_3.08.01/ccs_v6.x_examples/C55XXCSL_LP/Debug/C55XXCSL_LP.lib" \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
DSP_Fuzzer.out \

EXE_OUTPUTS__QUOTED += \
"DSP_Fuzzer.out" \


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "DSP_Fuzzer.out"

# Tool invocations
DSP_Fuzzer.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C5500 Linker'
	"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=large -g --preinclude="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include/stdlib.h" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --opt_for_speed=0 -k -z -m"DSP_Fuzzer.map" --stack_size=0x200 --heap_size=0x800 -i"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/lib" -i"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/lib/libc.a" -i"C:/Users/garci/OneDrive/Desktop/Projects/Research/TI Files/ChipSupportLibaries/lib" -i"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include" -i"C:/ti/bios_5_42_02_10/packages/ti/rtdx/lib/c5500" -i"C:/ti/bios_5_42_02_10/packages/ti/bios/lib" --reread_libs --display_error_number --warn_sections --xml_link_info="DSP_Fuzzer_linkInfo.xml" --rom_model --sys_stacksize=0x200 -o "DSP_Fuzzer.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "coverage.obj" "fuzz.obj" "test.obj" 
	-$(RM) "fuzz.d" "test.d" 
	-$(RM) "coverage.asm" "fuzz.asm" "test.asm" 
	-$(RM) "coverage.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

