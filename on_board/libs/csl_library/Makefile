TI_TOOL_DIR :=/home/santiago/ti/55x_Tools/bin
TI_INCLUDE_DIR :=/home/santiago/ti/55x_include


OBJS +=  \
./csl_audioClass.obj \
./csl_cdc.obj \
./csl_dat.obj \
./csl_dma.obj \
./csl_emif.obj \
./csl_gpio.obj \
./csl_gpt.obj \
./csl_hid.obj \
./csl_i2c.obj \
./csl_i2s.obj \
./csl_intc.obj \
./csl_irqplug.obj \
./csl_lcdc.obj \
./csl_mcbsp.obj \
./csl_mcspi.obj \
./csl_mem.obj \
./csl_mmcsd.obj \
./csl_mmcsd_ataIf.obj \
./csl_msc.obj \
./csl_pll.obj \
./csl_rtc.obj \
./csl_sar.obj \
./csl_sdio.obj \
./csl_spi.obj \
./csl_sysctrl.obj \
./csl_uart.obj \
./csl_uhpi.obj \
./csl_usb.obj \
./csl_wdt.obj \
./vectors.obj \

all: compile archiver

archiver:
	@echo 'Bundling Library'
	$(TI_TOOL_DIR)/ar55 r C55XXCSL_LP.lib $(OBJS)
	@echo 'Finished bundling'
	@echo ' '

compile: $(OBJS)


csl_audioClass.obj : ./src/csl_audioClass.c 
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_cdc.obj : ./src/csl_cdc.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_dat.obj : ./src/csl_dat.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_dma.obj : ./src/csl_dma.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_emif.obj : ./src/csl_emif.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_gpio.obj : ./src/csl_gpio.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_gpt.obj  : ./src/csl_gpt.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_hid.obj  : ./src/csl_hid.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_i2c.obj  : ./src/csl_i2c.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_i2s.obj  : ./src/csl_i2s.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_intc.obj : ./src/csl_intc.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm   --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_irqplug.obj : ./src/csl_irqplug.asm
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --asm_source=algebraic  --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_lcdc.obj : ./src/csl_lcdc.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_mcbsp.obj : ./src/csl_mcbsp.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_mcspi.obj : ./src/csl_mcspi.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_mem.obj : ./src/csl_mem.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_mmcsd.obj : ./src/csl_mmcsd.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_mmcsd_ataIf.obj : ./src/csl_mmcsd_ataIf.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_msc.obj : ./src/csl_msc.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_pll.obj : ./src/csl_pll.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_rtc.obj : ./src/csl_rtc.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_sar.obj : ./src/csl_sar.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_sdio.obj : ./src/csl_sdio.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_spi.obj : ./src/csl_spi.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_sysctrl.obj : ./src/csl_sysctrl.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_uart.obj : ./src/csl_uart.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_uhpi.obj : ./src/csl_uhpi.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_usb.obj : ./src/csl_usb.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '

csl_wdt.obj : ./src/csl_wdt.c
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '


vectors.obj : ./src/vectors.asm
	@echo 'Building file: "$<"'
	@echo 'Invoking: C5500 Compiler'
	$(TI_TOOL_DIR)/cl55  -v5505 --memory_model=large -g --include_path=$(TI_INCLUDE_DIR) --include_path=./src --include_path=./inc  --define="_DEBUG" --define=c5505 --diag_warning=225 --ptrdiff_size=16  --keep_asm --asm_source=algebraic --verbose $<
	@echo 'Finished building: "$<"'
	@echo ' '
clean:
	@echo 'Removing obj files'
	rm ./*.obj
	rm ./*.asm
