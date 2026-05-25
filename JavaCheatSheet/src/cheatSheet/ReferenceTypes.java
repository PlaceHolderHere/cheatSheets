package cheatSheet;

import java.awt.*;

public class ReferenceTypes {
    public static void referenceTypes(){
        // Strings are a list of characters
        String message = "Hello World"; // Initializing a String
        System.out.println(message);

        // Initializing any other Reference Type
        // Reference Types "Refer" or "Point" to an object in memory (like a C pointer)
        Point point1 = new Point(10, 5);
        System.out.println(point1);
        System.out.println(point1.x);
        System.out.println(point1.y);
    }
}
