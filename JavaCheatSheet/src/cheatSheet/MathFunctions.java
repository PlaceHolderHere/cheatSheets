package cheatSheet;

public class MathFunctions {
    public static void mathFunctions(){
        System.out.println("Round: " + Math.round(1.5F)); // Rounds off
        System.out.println("Ceil: " + Math.ceil(1.5F)); // Rounds Up
        System.out.println("Floor: " + Math.floor(1.5F)); // Rounds down
        System.out.println("Random: " + Math.random()); // Random value from 0-1
        System.out.println("Random 0-100: " + Math.round(Math.random() * 100)); // random int from 0-100
        System.out.println("Absolute: " + Math.abs(-2)); // Converts all negative values to positive
        System.out.println("Sin: " + Math.sin(60)); // Math class has trig functions built in
    }
}
