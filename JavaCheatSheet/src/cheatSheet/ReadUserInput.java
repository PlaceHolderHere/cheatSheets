package cheatSheet;

import java.util.Scanner;

public class ReadUserInput {
    public static void readUserInput(){
        // Using the Scanner object, Java can receive command line input from the user
        Scanner scanner = new Scanner(System.in); // Reads user input

        // Getting a Byte
        // Each primitive data type has their own unique next...() function
        System.out.print("Age: "); // Printing a prompt/question to the user
        byte age = scanner.nextByte();
        System.out.println("Age: " + age);
        scanner.nextLine();

        // Getting a String
        System.out.print("Name: ");
        String name = scanner.nextLine();
        System.out.println("Hello " + name);
    }
}
