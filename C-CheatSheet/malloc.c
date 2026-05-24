#include <stdio.h>
#include <stdlib.h>

int main(){

    // malloc() is a fucntion that dynamically allocataes a 
    //          a specified number of bytes in memory
    // Instead of getting memory from the stack, malloc() lets you get memorry from the heap

    int numberOfGrades = 0;
    printf("Enter the number of grades you would like to input: ");
    scanf("%d", &numberOfGrades);

    // malloc returns pointers for the reserved memory
    // returns NULL upon failure
    int *grades = malloc(numberOfGrades * sizeof(int));

    // An error happens if you try to free memory with a null pointer
    if (grades == NULL){
        printf("Error with malloc\n");
        return 1;
    }

    for (int i = 0; i < numberOfGrades; i++){
        printf("Enter grade #%d:", i + 1);
        scanf(" %d", &grades[i]);
    }

    for (int i = 0; i < numberOfGrades; i++){
        printf("Grade of student #%d is: %d\n", i + 1, grades[i]);
    }

    // This frees the memory allocated by malloc
    free(grades);
    grades = NULL; // frees the pointer of de-allocating the memory
    return 0;
}