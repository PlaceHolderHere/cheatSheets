#include <stdio.h>
#include <stdlib.h>

int main(){
    // Contiguous allocation
    // Dynamically allocates memory and sets all allocated bytes to 0
    // Similar to malloc() but slower due to setting bytes to 0
    // int *name = calloc(numberOfItems, sizeOfEachItem)

    int numberOfPlayers = 0;
    printf("How many players are there: ");
    scanf(" %d", &numberOfPlayers);

    int *scores = calloc(numberOfPlayers, sizeof(int));

    // An error happens if you try to free memory with a null pointer
    if (scores == NULL){
        printf("Error with calloc\n");
        return 1;
    }

    for (int i = 0; i < numberOfPlayers; i++){
        printf("Enter the score for player#%d:", i + 1);
        scanf(" %d", &scores[i]);
    }

    for (int i = 0; i < numberOfPlayers; i++){
        printf("Score of player#%d is: %d\n", i + 1, scores[i]);
    }

    // This frees the memory allocated by calloc
    free(scores);
    scores = NULL; // frees the pointer of de-allocating the memory
    return 0;
    
    return 0;
}