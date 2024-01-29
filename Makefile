#DSP Fuzz Makefile

mutator: mutator.c
	echo "Compiling Mutator..."
	cc mutator.c -o mutator
debug: mutator.c
	echo "Compiling for Debug..."
	cc mutator.c -g -o mutator
