#include <stdio.h>

int main(){
    int age;

    printf("Please enter your age:");  // prompt
    scanf("%d", &age);  // sets "age" to input

    printf("You are %d years old", age);

    return 0; 
}