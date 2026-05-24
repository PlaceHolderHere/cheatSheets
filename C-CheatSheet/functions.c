#include <stdio.h>

// outputType functionName (parameters){ code }
void printHello(char name[] ){
    printf("Hello %s", name);
}

// returns a float
float square(float num){
    return num * num;
}

// Prototype function
// Allows you to call a function in main
// While defining it after the main function
// Considered good practice
void prototypeFunction(char address[]);

int main(){
    printHello("Bob");
    printf("2.5 squared is %f", square(2.5));
    prototypeFunction("5th avenue");
    return 0;
}


// Prototype Functions can be used to 
// Define functions after your main function
// and still be able to call them
void prototypeFunction(char address[]){
    printf("You live at %s", address);
}