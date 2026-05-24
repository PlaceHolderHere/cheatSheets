#include <stdio.h>

void ifStatements(){
int age;
    printf("How old are you?:");
    scanf("%d", &age);
    
    if(age >= 65){
        printf("You are 65 or older");
    }
    else if(age > 18){
        printf("You are older than 18!\n");
    }
    else if(age == 18){
        printf("You are exactly 18\n");
    }
    else{
        printf("You are younger than 18\n");
    }
}

void logicalOperators(){
    int a = 0;
    int b = 1;

    // NOT
    if (a != 1){
        printf("a is not equal to 1\n");
    }
    // AND
    if (a == 1 && b == 1){
        printf("a and b are equal to 1\n");
    }
    // OR
    if (a == 1 || b == 1){
        printf("a OR b is equal to 1\n");
    }
}

// This isn't an if statement but it's kinda like one
void ternaryOperator(){
    int x = 5;
    int y = 6;
    
    // (condition) ? value_if_true : value_if_false;
    int max = (x > y) ? x : y;
    printf("%d", max);
}

int main(){
    // ifStatements();
    // logicalOperators();
    ternaryOperator();
    return 0;
}