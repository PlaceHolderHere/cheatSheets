package cheatSheet;

public class IfStatements {
    public static void ifStatements(){
        // Uses comparison operators (==, !=, >, <, etc.) and logical operators (&&, ||)
        // to determine if a block of code should be run
        int x = 4;
        int y = 10;

        // Comparison Operators briefly
        // returns if a comparison expression is true or false
        // comparison operators: ==, !=, >, >=, <, <=
        System.out.println(x == y); // checks if 2 values are equal
        boolean isGreater = y > x; // you can store the output in a variable
        System.out.println(isGreater);

        // if statements
        if (y > 5){
            System.out.println("y is greater than 5");
        }

        // else if statements
        if (x > 5){
            System.out.println("x is greater than 5");
        }
        else if (x < 5){
            System.out.println("x is less than 5");
        }

        // else
        if (x > 5){
            System.out.println("x is greater than 5");
        }
        else{
            System.out.println("x is not greater than 5");
        }

        // Logical operators
        // && = and; || = or
        boolean isHot = true;
        boolean isHumid = false;

        // && = and; requires both expressions to be true
        if (isHot == true && isHumid == true){
            System.out.println("It's Hot and Humid");
        }

        // || = or; requires only one of the expressions to be true
        if (isHot == true || isHumid == true){
            System.out.println("It's Hot or Humid");
        }

        // Instead of x == true; you can just write if (x); similarly for not if(!x)
        if (isHot){
            System.out.println("It's Hot");
        }
    }
}
