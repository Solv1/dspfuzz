#include <stdio.h>
#include <stdlib.h>

/**
 * main.c
 */
int __fuzz_log(){
    return 0;
}

int main(void)
{
    int j, k, h;


    //Embbed the input here to try over and over again.
    int i = {
         #include "input.dat"
    };
    j = i *23;
    k = j *2 / 5;
    h = (456 * 6) % 541 ;

    if(i % 4){
        if(1058 < k){
            if(j  > 12){
                if(j - 100 > i){
                    if(h > 30){
                        if(h + j + k > 400){
                            printf("Found the Bug \n");
                            exit(-1);

                        }
                    }
                }

            }

        }
    }
    return 0;
}
