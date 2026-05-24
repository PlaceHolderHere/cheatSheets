#include <stdio.h>
#include <math.h>  // MATH FUNCTIONS
#include <stdlib.h>  // rand Function
#include <time.h> // for using time as a seed

void basicMathOperations(){
    // MATH
    // OPERATIONS
    int x = 10;
    int y = 4;
    int z = 0;

    printf("-------------------------------------------------------\n");
    printf("BASIC MATH OPERATIONS\n");
    printf("Addition: %d\n", x + y);
    printf("Subtraction: %d\n", x - y);
    printf("Multiplication: %d\n", x * y);
    printf("Division: %d\n", x / y);
    printf("Modulus Operator: %d\n", x % y);  // Remainder
    printf("\n");
}

void mathFunctions(){
    // MATH FUNCTIONS 
    // from <math.h>
    printf("-------------------------------------------------------\n");
    printf("BUILT IN MATH FUNCTIONS\n");
    printf("The square root of 4 is %d \n", sqrt(4));  // square root
    printf("4^2 is %d \n", pow(4, 2));  // power
    printf("3.14 rounded is %d\n", round(3.14));  // round off
    printf("3.14 rounded up is %d\n", ceil(3.14));  // round up
    printf("3.99 rounded down is %d\n", floor(3.99));  // round down
    printf("The absolute of -3 is %d\n", abs(-3));  // absolute function
    printf("The natural log of 3 is %f\n", log(3));  // round down
    printf("Sine of 2 is %f\n", sin(2));  // sin
    printf("Cosine of 2 is %f\n", cos(2));  // cos
    printf("Tangent of 2 is %f\n", tan(2));  // cos
}

void randomNumbers(){
    // rand from <stdlib.h>
    
    // Random number generator
    printf("Heres a random number: %d\n", rand());
    
    // Seeded rng
    srand(0.12579782);
    printf("Here's a random number based on a set seed: %d\n", rand());

    // RNG + Time seed
    // Basically uses time as a "random" seed
    // Uses <time.h>
    srand(time(NULL) * rand());
    printf("Here's a random number based on the time as a seed: %d\n", rand());

    // Max output from rand() function
    printf("This is the max value for rand(): %d", RAND_MAX); 
}

int randomNumberGenerator(int min, int max){
    srand(time(NULL));

    return (rand() % max) + min; 
}

int main(){
    // basicMathOperations();
    // mathFunctions();
    randomNumbers();
    // printf("%d", randomNumberGenerator(10, 20));
    return 0;
}