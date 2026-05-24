#include <stdio.h>

void writeAFile(char fileName[]){
    // FILE *pointer = fopen("name/path", 'mode')
    FILE *pFile = fopen(fileName, "w");

    if (pFile == NULL){
        printf("Could not open file\n");
    }

    fprintf(pFile, "%s", "Hello World\nI am still new to C\nBrocode goog");  // Writes to a file

    printf("Successfully wrote to %s\n", fileName);
    fclose(pFile);
}

void readAFile(char fileName[]){
    // FILE *pointer = fopen("name/path", 'mode')
    FILE *pFile = fopen(fileName, "r");
    char buffer[1024] = {0};  // temporary storage 

    if (pFile == NULL){
        printf("Could not open file\n");
    }
    

    // fgets returns NULL after reading all the text
    // fgets sets buffer as the value of the text in the text file
    while (fgets(buffer, sizeof(buffer), pFile) != NULL){
        printf("%s", buffer);
    }

    fclose(pFile);
}

int main(){
    return 0;
}