#include <stdio.h>


// loops until condition is met
void whileLoop(int loops){
    int i = 0;
    while(i < loops){
        printf("%d\n", i);
        i += 1;
    }
}

// Loops for a certain number of loops
void forLoop(int loops){
    for(int i = 0; i < loops;i++){
        printf("%d\n", i);
    }
}

int main(){
    whileLoop(10);
    forLoop(12);
    return 0;
}