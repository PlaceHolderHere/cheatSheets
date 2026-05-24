#include <stdio.h>
#include <stdlib.h>

int main(){
    // realloc() resizes previously allocated memory
    // realloc(pointer, bytes)
    int numberOfPrices = 0;
    printf("Enter the number of prices you would like to input: ");
    scanf(" %d", &numberOfPrices);

    int *prices = malloc(numberOfPrices * sizeof(float));

    // An error happens if you try to free memory with a null pointer
    if (prices == NULL){
        printf("Error with malloc\n");
        return 1;
    }

    for (int i = 0; i < numberOfPrices; i++){
        printf("Enter price for item#%d:", i + 1);
        scanf(" %d", &prices[i]);
    }

    char option = 'n';
    printf("Would you like to add more prices? [y/n]: ");
    scanf(" %c", &option);

    if (option == 'y'){
        int additionalNumberOfPrices = 0;
        printf("How many prices would you like to add: ");
        scanf(" %d", &additionalNumberOfPrices);

        numberOfPrices += additionalNumberOfPrices;
        int *temp = realloc(prices, numberOfPrices * sizeof(float));

        if (temp==NULL){
            printf("Failed to reallocate memory");
        }
        else{
            prices = temp;
            temp = NULL;
            for (int i = additionalNumberOfPrices - 1; i < numberOfPrices; i++){
                printf("Enter price for item#%d:", i + 1);
                scanf(" %d", &prices[i]);
            }
        }
    }

    for (int i = 0; i < numberOfPrices; i++){
        printf("Price of item#%d is: %d\n", i + 1, prices[i]);
    }

    free(prices);
    prices = NULL;
    return 0;

    return 0;
}