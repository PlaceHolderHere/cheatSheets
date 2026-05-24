#include <stdio.h>

void basicArrays(){
    // Arrays are a collection of values with a fixed size

    // Array Declarations
    int empty[10];  // Makes an empty array with 10 items
    int zeroArray[10] = {0};  // Makes an array with 10 items all equal to 0
    int numbers[] = {10, 20, 30, 40, 50};  // array of integers
    char names[3][5] = {"Bob", "Jimmy", "Dave"};  // array of strings
    int twoDimensionArray[3][3] = {{1, 2, 3},  // C Requires you to pre-define the size
                                    {4, 5, 6}, 
                                    {7, 8, 9}};
                                    
    // sizeof(numbers) / sizeof(numbers[0])
    // is equivalent to the number of items in the list
    for (int i = 0; i < sizeof(numbers) / sizeof(numbers[0]); i++){
        printf("%d\n", numbers[i]);
    }
}

void arrayInput(){
    int grades[10] = {0};  // initializes an array with 10 0's

    // How to reassign the value of an item in an array
    grades[1] = 10;
    printf("%d\n", grades[1]);

    // Works with user input
    for (int i = 0; i < sizeof(grades) / sizeof(grades[0]); i++){
        printf("Please input grades for student no.%d:", i);
        scanf("%d", &grades[i]);
    }
    
    printf("\nHere are your grades: \n");
    for (int i = 0; i < sizeof(grades) / sizeof(grades[0]); i++){
        printf("Student %d: %d\n", i, grades[i]);
    }

}

int main(){
    // Arrays are a collection of values with a fixed size
    // basicArray();
    arrayInput();
    return 0;
}