################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./vheap.obj" \
"./siutx.obj" \
"./siumgr.obj" \
"./siu.obj" \
"./piutxrx.obj" \
"./piuisr.obj" \
"./piuinit.obj" \
"./piufutil.obj" \
"./piuexpan.obj" \
"./piu.obj" \
"./ecusimfunc.obj" \
"./ecusim.obj" \
"./ecuprof.obj" \
"./ecuiram.obj" \
"./ecufio.obj" \
"./ecmemdef.obj" \
"./cheap.obj" \
-l"libc.a" \
"M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/ecu/test/lnkr/c55l/test_rel_c55l_ccs.cmd" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: test_rel_c55l_C55L_COFF.out

# Tool invocations
test_rel_c55l_C55L_COFF.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C5500 Linker'
	"C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -vcpu:2.1 --memory_model=large -g --optimize_with_debug --define=ti_targets_C55_large --define=xdc_target_types__=ti/targets/std.h --define=__CCS_PROJECT_REL_PATH --define=C5510 --define=ENABLE_SEARCH --define=ENABLE_COMPRESS --define=ENABLE_RELOC --define=ENABLE_CPD --define=ENABLE_03DB --display_error_number --diag_suppress=1112 --diag_suppress=825 --diag_suppress=838 --diag_suppress=828 --diag_suppress=827 --diag_suppress=77 --diag_suppress=837 --diag_suppress=824 --diag_warning=225 --ptrdiff_size=16 --algebraic -k --c_src_interlist --output_all_syms -z -m"test_rel_c55l_C55L_COFF.map" -i"C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1/lib" -i"C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1/include" --reread_libs --display_error_number --warn_sections --rom_model -o "test_rel_c55l_C55L_COFF.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C5500_EXECUTABLE_OUTPUTS__QUOTED) "test_rel_c55l_C55L_COFF.out"
	-$(RM) "cheap.pp" "ecmemdef.pp" "ecufio.pp" "ecuiram.pp" "ecuprof.pp" "ecusim.pp" "ecusimfunc.pp" "piu.pp" "piuexpan.pp" "piufutil.pp" "piuinit.pp" "piuisr.pp" "piutxrx.pp" "siu.pp" "siumgr.pp" "siutx.pp" "vheap.pp" 
	-$(RM) "cheap.obj" "ecmemdef.obj" "ecufio.obj" "ecuiram.obj" "ecuprof.obj" "ecusim.obj" "ecusimfunc.obj" "piu.obj" "piuexpan.obj" "piufutil.obj" "piuinit.obj" "piuisr.obj" "piutxrx.obj" "siu.obj" "siumgr.obj" "siutx.obj" "vheap.obj" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
