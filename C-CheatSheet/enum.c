#include <stdio.h>

// Enums are a user-define data types
// Consisting of named, integer constants
// enum name_of_enums {name_of_constant, name_of_constant, ...};

// If values are undefined, it defaults in increasing indeces starting at 0
// For this example it's {0, 1...6}
enum DAYS{
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
};

// Defining our own values
enum NUMBERS{
    ONE = 1, TWO = 2, THREE = 3, FOUR = 4, FIVE = 5
};

int main(){
    // Creating a var with a value from the enum
    enum DAYS today = SATURDAY;
    printf("%d\n", today);

    enum NUMBERS number = ONE;
    printf("%d\n", number);

    return 0;
}