TI_TOOL_DIR :=/home/santiago/ti/55x_Tools/bin
TI_INCLUDE_DIR :=/home/santiago/ti/55x_include



all: yoink compile archiver

archiver:
	@echo 'Reformating Library'
	$(TI_TOOL_DIR)/ar55 r 55ximagex.lib Boundarymn.asm
	@echo 'Finished reformating'
	@echo ' '

yoink: 
	@echo 'Pulling asm file from the libary source'
	$(TI_TOOL_DIR)/ar55 x 55ximage.src Boundarymn.asm
	@echo 'Pulled asm file from libary source'
	@echo ' '
compile:
	@echo 'Compiling insturmented asm'
	$(TI_TOOL_DIR)/cl55  --silicon_version=5515 --memory_model=large  Boundarymn.asm
	@echo 'All done compiling'
	@echo ' '

