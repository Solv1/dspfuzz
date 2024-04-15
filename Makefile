#DSP Fuzz Makefile

mutator: mutator.c
	#echo "Compiling Mutator..."
	cc mutator.c -o mutator.out

debug: mutator.c
	#echo "Compiling for Debug..."
	cc mutator.c -g -o debug_mutator.out

clean: 
	rm mutator.out
