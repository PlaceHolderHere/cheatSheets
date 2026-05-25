package cheatSheet;

public class TypeCasting {
    public static void typeCasting(){
        // Used to convert one data type to another
        // Usually for operation related expressions

        // Syntax: (type you wish to use) variable_name
        int x = 10;
        int y = 3;

        float result = (float) x / (float) y;
        System.out.println("Without type casting: " + (x / y));
        System.out.println("With type casting: " + result);
    }
}
