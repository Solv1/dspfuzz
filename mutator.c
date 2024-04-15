/*---------------------------------------------------------------------
mutator.c - Santiago Garcia -- January 2024 
Description: A basic mutator for .dat files to be loaded into the DSP
----------------------------------------------------------------------*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>


#define MISSING_ARGUMENTS -1
#define FILE_DOES_NOT_EXIST -2
#define BUF_SIZE 50


int countLines(FILE * filepointer){
    char cur;
    int lines = 1;

    while((cur = getc(filepointer)) != EOF){
        if(cur == ','){
            lines++;
        }
    }
    printf("Number of Lines in the file = %d\n", lines);
    return lines;
}



int main(int argc, char *argv[]){
    
	srand(time(NULL));
	FILE *fp;   
	int lines;
	char number_buf[BUF_SIZE];
	memset(number_buf, '\0', BUF_SIZE);
	

	printf("----------Mutator----------\n");
	if(argc != 2){
		printf("Invalid arguments... try again...\n");
		return(MISSING_ARGUMENTS);
	}
	char * filename = argv[1];

	if(!(fp = fopen(filename,"rb"))){
		printf("Cannot find .dat file specified... try again...\n");
		return(FILE_DOES_NOT_EXIST);
	}
   // printf("Size of Pointer: %lu, Size of File: %lu \n", sizeof(fp), sizeof(*fp));
	
	lines = countLines(fp);
	fp = fopen(filename, "wb");
	rewind(fp);
	int random_num = 0;

	for(int i = 0; i < lines; i++){
    		random_num = rand();

    		if((sprintf(number_buf,"     %d,\n", random_num)) < 0){
        	printf("Error with Random Number Generation\n");
    		}	

    		printf("Adding: %s", number_buf);
	
	//printf("String Length: %ld\n", strlen(number_buf));
		printf("Number of Elements Writen: %ld \n", fwrite(number_buf,sizeof(char), strlen(number_buf), fp));
	}
    



    fclose(fp);
    //TODO 
	// 1. Find better mutations to use for this..
	// 2. 
}



