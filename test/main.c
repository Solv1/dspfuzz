#include <stdio.h>
#include <stdlib.h>
#include <fuzzer.h>
#include <string.h>

/**
 * main.c
 */
void * fuzzer_log(){
    printf("%p\n", fuzzer_log);
    return &fuzzer_log;
}

int main(void)
{
    int i , j, k, h;
    void * input[10];
    memset(input, 0, sizeof(input));


    //printf("Please Input some code here.\n");
    //delay(1000);
    //k = scanf("%s", input);
    //printf("Input = %s.", input);
    i = 115;
            //atoi(input);
    j = i *23;
    k = j *2 / 5;
    h = (456 * 2) || k ;

    if(i % 4){
       int a;
       input[0] = &a;
        if(1058 == k){
            int b;
            input[1] = &b;
	    fuzzer_log();
            if(j % 2 > 12){
                if(j - k < i){
                    if(h > 540){
                        if(h + j + k > 40000){
                            exit(-1);
                        }
                    }
                }

            }

        }
    }
    return 0;
}
