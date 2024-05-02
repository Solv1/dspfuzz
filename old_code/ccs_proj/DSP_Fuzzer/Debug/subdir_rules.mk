################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=large -g --include_path="C:/Users/garci/workspace_v12/DSP_Fuzzer" --include_path="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include" --include_path="C:/Users/garci/OneDrive/Desktop/Projects/Research/TI Files/ChipSupportLibaries/include" --include_path="C:/ti/c55_lp/c55_csl_3.08.01/inc" --include_path="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include" --include_path="C:/Users/garci/workspace_v12/DSP_Fuzzer/Debug" --include_path="C:/ti/bios_5_42_02_10/packages/ti/bios/include" --include_path="C:/ti/bios_5_42_02_10/packages/ti/rtdx/include/c5500" --preinclude="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include/stdlib.h" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --opt_for_speed=0 -k --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --verbose $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/bin/cl55" -v5515 --memory_model=large -g --include_path="C:/Users/garci/workspace_v12/DSP_Fuzzer" --include_path="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include" --include_path="C:/Users/garci/OneDrive/Desktop/Projects/Research/TI Files/ChipSupportLibaries/include" --include_path="C:/ti/c55_lp/c55_csl_3.08.01/inc" --include_path="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include" --include_path="C:/Users/garci/workspace_v12/DSP_Fuzzer/Debug" --include_path="C:/ti/bios_5_42_02_10/packages/ti/bios/include" --include_path="C:/ti/bios_5_42_02_10/packages/ti/rtdx/include/c5500" --preinclude="C:/ti/ccs1250/ccs/tools/compiler/c5500_4.4.1/include/stdlib.h" --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --opt_for_speed=0 -k --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --verbose $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


