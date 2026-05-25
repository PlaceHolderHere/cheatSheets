package cheatSheet;

public class Operators {
    public static void operators(){
        // Basic operations available in Java
        // Operators follow the basic order of operations (PEMDAS) when combined into one expression
        int addition = 5 + 3;
        int subtraction = 5 - 3;
        int multiplication = 5 * 3;
        float division = (float) 5 / (float) 3; // Type casting is needed to prevent the output being truncated
        int modulo = 5 % 3; // returns the remainder of a division operation

        System.out.println(addition);
        System.out.println(subtraction);
        System.out.println(multiplication);
        System.out.println(division);
        System.out.println(modulo);

        // Changing variables with operators
        int x = 10;
        System.out.println("x: " + x);

        // increment/add 1
        x++;
        System.out.println("x++: " + x);

        // Addition
        x += 5;
        System.out.println("x += 5: " + x);

        // Subtraction
        x -= 2;
        System.out.println("x -= 2: " + x);

        // Multiplication
        x *= 3;
        System.out.println("x *= 3: " + x);

        // Division
        x /= 2;
        System.out.println("x /= 2: " + x);
    }
}
