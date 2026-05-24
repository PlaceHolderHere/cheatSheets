#include <stdio.h>
#include <stdbool.h>

// TYPE DEF
// Type def allows you to give custom names to data types
// typedef existing_name new_name;
typedef char String[50];

int main(){
    // DATA 
    // TYPES
    int integer = 11;  // Automatically truncates floats
    float floatingPoint = 3.141;  // Number with decimal points
    double doubleNumber = 2.7182828282828;  // Float but with more position
    char character = 'A';  // a single character
    char string[] = "Hello";  // strings = list of characters; must use double quotes
    bool boolean = true; // simple true or false

    // FORMAT 
    // SPECIFIERS
    printf("%d is an integer\n", integer);
    printf("%f a float\n", floatingPoint);
    printf("%.2f a truncated float\n", floatingPoint);  // Precision of 2 characters
    printf("%.13lf is a double data type\n", doubleNumber);  // %.13lf => precision of 13 characters
    printf("%c is a character\n", character);
    printf("%s is a string\n", string);
    printf("%d is a boolean\n", boolean);

    printf("%3d\n", integer);  // Prints a minimum of 3 characters
    printf("%-3d\n", integer);  // Justifies left
    printf("%03d\n", integer); // Leading 0s instead of spaces, 0 is interchangeable with other characters

    // You can have multiple format specifiers 
    // in one printf statement
    printf("Here are 2 numbers %d and %d\n", 2, 5);

    // Type def
    String name = "Bob";
    printf("%s\n", name);
}