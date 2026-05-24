#include <stdio.h>

struct Student{
    char name[50];
    char section[50];
    int age;
    int gradeLevel;
};

int main(){
    // To assign a struct
    // struct struct_name variable_name = {variables...}
    struct Student student1 = {"Jeff", "Patience", 16, 11};
    student1.age += 1; 

    // Getting each value in the struct
    printf("%s\n", student1.name);
    printf("%s\n", student1.section);
    printf("%d\n", student1.age);
    printf("%d\n", student1.gradeLevel);

    return 0;
}