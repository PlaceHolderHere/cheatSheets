#include <stdio.h>

int main(){
    int dayOfTheWeek = 2;
    switch (dayOfTheWeek)
    {
    case 1:
        printf("It is Monday\n");
        break;
    case 2:
        printf("It is Tuesday\n");
        break;
    case 3:
        printf("It is Wednesday\n");
        break;
    case 4:
        printf("It is Thursday\n");
        break;
    case 5:
        printf("It is Friday\n");
        break;
    case 6:
        printf("It is Saturday\n");
        break;
    case 7:
        printf("It is Sunday\n");
        break;
    default:
        printf("Invalid input");
        break;
    }

    return 0;
}