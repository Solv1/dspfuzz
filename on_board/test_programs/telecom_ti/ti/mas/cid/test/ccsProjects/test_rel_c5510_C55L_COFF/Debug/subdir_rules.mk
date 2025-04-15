################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
cidsim.obj: M:/TI_MAS_VOLIB_2_1_0_1_bldforge/dsps_gtmas/ti/mas/cid/test/src/cidsim.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: C5500 Compiler'
	"C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1/bin/cl55" -vcpu:2.1 --memory_model=large -g --optimize_with_debug --include_path="C:/MAS_Tools/CCSV5_2_1/ccsv5/tools/compiler/c5500_4.4.1/include" --include_path="../../../../../../../" --include_path="C:/MAS_Tools/xdctools_3_24_06_63/packages" --include_path="C:/MAS_Tools/xdais_7_23_00_06/packages" --include_path="../../../lnkr/c55l" --include_path="../../../src" --define=ti_targets_C55_large --define=xdc_target_types__=ti/targets/std.h --define=__CCS_PROJECT_REL_PATH --define=C5510 --display_error_number --diag_suppress=1112 --diag_suppress=825 --diag_suppress=838 --diag_suppress=828 --diag_suppress=827 --diag_suppress=77 --diag_suppress=837 --diag_suppress=824 --diag_warning=225 --ptrdiff_size=16 --algebraic -k --c_src_interlist --output_all_syms --preproc_with_compile --preproc_dependency="cidsim.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


