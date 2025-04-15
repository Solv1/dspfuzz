Hello! 

SBFuzz is ran by first adding to the harness in C in the ./on_board/src/fuzz.c. SUTs are externally linked. NOTE: On this arch bytes are 16-bits.
After adding to the harness. You must compile using the C55xx compiler from TI.(It would be wise to install CCS v12  by TI at this point).

/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g   --include_path=./include --include_path=./libs/  --include_path=/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/include/ --include_path=/dspfuzz/on_board/libs/csl_library/inc/ --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm ./src/fuzz.c ./src/coverage.asm

After the SUT has been compiled used the insturmentor.py -f <your_test_here.asm> to insturment the file. 

/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g   --include_path=./ --include_path=/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/include/ --include_path=/dspfuzz/on_board/libs/csl_library/inc/ --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 --keep_asm ./test_fuzz.c

python3 insturmentor.py -f <test_fuzz.asm>

Assemble this file using the C55xx compiler and then link both the fuzz.obj and SUT.obj file together.

/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g --define=c5515 --display_error_number --diag_warning=225 --ptrdiff_size=16 -z  --stack_size=0x200 --heap_size=0x800  -l./libs/55ximagex.lib  -l./libs/55xdspx_r3.lib  -l ./libs/C55CSL_3.lib  --reread_libs --display_error_number --warn_sections  -m"DSPOut.map" --rom_model --sys_stacksize=0x400  ./coverage.obj ./fuzz.obj ./new_test_fuzz.obj -l/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/lib/libc.a ./dspfuzz_link.cmd -o DSPFuzz.out

Once this is done make sure to point to the jars in the Code Composer instalation area in the java_home.sh file. See example below:

export JAVA_HOME=<home path>/ti/ccs1281/ccs/eclipse/jre
export SCRIPTING_JAR=<home path>/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar
export DSS_JAR=<home path>/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar
export DBENG_JAR=<home path>/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar

Install Jpype1 using pip: 

pip install Jpype1

Point dspfuzz.py to the correct places given by the help menu. That is the local pool size,  seed dir, results dir, the binary file, for restart on intial start we can set that equal to false. You can access a help screen with -h command

python3 dspfuzz.py -l 15 -i ./seeds/ -o ./results/ -b ./on_board/DSPFuzz.out -r False

Live and let live as your DSP fuzzer runs.
