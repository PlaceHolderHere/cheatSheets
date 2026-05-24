#include <stdio.h>

// this takes a pointer as input
// passes the variable "by reference"
void increaseNum(int* num);

int main(){
    // How to store the pointer of a variable
    int number = 10;
    int *pNumber = &number;  // Pointer for number


    // Using pointers to allow functions to generate side effects
    // also known as change variables outside their scope
    // without having a return value
    increaseNum(pNumber);
    printf("%d", number);

    return 0;
}

void increaseNum(int* num){
    // (*num) is a dereference operator 
    // so the variable of the pointer is the one affected
    (*num)++;  
}