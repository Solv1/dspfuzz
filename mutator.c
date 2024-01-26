/*---------------------------------------------------------------------
mutator.c - Santiago Garcia -- January 2024 
Description: A basic mutator for .dat files to be loaded into the DSP
----------------------------------------------------------------------*/
#include <stdio.h>

#define MISSING_ARGUMENTS -1
#define FILE_DOES_NOT_EXIST -2


FILE *fp;

int main(int argc, char *argv[]){
	printf("----------Mutator----------\n");
	if(argc != 2){
		printf("Invalid arguments... try again...\n");
		return(MISSING_ARGUMENTS);
	}
	if(!(fp = fopen(argv[1],"r+"))){
		printf("Cannot find .dat file specified... try again...\n");
		return(FILE_DOES_NOT_EXIST);
	}
}



