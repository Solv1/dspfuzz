# SBFuzz

Welcome!  
**SBFuzz** is a fuzzing harness built for DSPs, specifically targeting the TI C55xx architecture (where bytes are 16 bits). This guide will walk you through how to set up, build, instrument, and run your fuzz targets.

---

## 🛠️ Prerequisites

Before getting started, make sure you have:

- **TI Code Composer Studio (CCS)** — preferably version 12  
- **TI C55xx Compiler**  
- **Python 3** with `Jpype1` installed:

```bash
pip install Jpype1
```
##Step-by-Step Instructions
1) Add your target
   a) Add your fuzzing target insdie the harness sections of ./on_board/src/fuzz.c
   b) Link the SUT externallly as needed.
   c)Note that the C55x achitecture uses 16-bit bytes.
2) Compile the fuzzer for the device.
  ```bash
  /ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g \
  --include_path=./include \
  --include_path=./libs/ \
  --include_path=/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/include/ \
  --include_path=/dspfuzz/on_board/libs/csl_library/inc/ \
  --define=c5515 --display_error_number --diag_warning=225 \
  --ptrdiff_size=16 --keep_asm ./src/fuzz.c ./src/coverage.asm
  ```
3) Compile and Insturment the SUT
```bash
/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g \
--include_path=./ \
--include_path=/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/include/ \
--include_path=/dspfuzz/on_board/libs/csl_library/inc/ \
--define=c5515 --display_error_number --diag_warning=225 \
--ptrdiff_size=16 --keep_asm ./test_fuzz.c
```
a) Insturment the assembly file from compilation and recompile using the new .asm file.
```bash
python3 insturmentor.py -f <test.asm>
```
4) Link Fuzzer and SUT togther.
```bash
/ti/ccs1281/ccs/tools/compiler/c5500_4.4.1/bin/cl55 -v5515 --memory_model=large -g \
  --define=c5515 --display_error_number --diag_warning=225 \
  --ptrdiff_size=16 -z --stack_size=0x200 --heap_size=0x800 \
  -l./libs/55ximagex.lib -l./libs/55xdspx_r3.lib -l./libs/C55CSL_3.lib \
  --reread_libs --warn_sections -m"DSPOut.map" --rom_model \
  --sys_stacksize=0x400 ./coverage.obj ./fuzz.obj ./new_test_fuzz.obj \
  ./dspfuzz_link.cmd \
  -o DSPFuzz.out
```
5) Configure ENV for CCS Scripting
   a) Fill out the java_home.sh with the following enviroment variables:
  ```bash
  export JAVA_HOME=/ti/ccs1281/ccs/eclipse/jre
  export SCRIPTING_JAR=/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.debug.engine_1.0.0.jar
  export DSS_JAR=/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/dss.jar
  export DBENG_JAR=/ti/ccs1281/ccs/ccs_base/DebugServer/packages/ti/dss/java/com.ti.ccstudio.scripting.environment_3.1.0.jar
  ```
6) Running the fuzzer
```bash
python3 dspfuzz.py -l <local_pool_size> -i ./<seed_dir> -o ./<results_dir> -b <compiled binary_dir> -r False
```
7) Lavish in fuzzing glory
