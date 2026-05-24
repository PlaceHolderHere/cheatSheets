import java.awt.*;  // referenceTypes() example -> Point
import java.util.Arrays;  // for arrays() and multiDimensionalArrays()
import java.util.Scanner;  // for readUserInput()

public class Main {
    public static void main(String[] args) {
//        primitiveTypes();
//        referenceTypes();
//        strings();
//        arrays();
//        multiDimensionalArrays();
//        operators();
//        typeCasting();
//        mathFunctions();
//        readUserInput();
//        ifStatements();
//        ternaryOperators();
//        switchCases();
//        forLoops();
//        whileLoops();
        System.out.println(methodSquared(3));
    }

    static void primitiveTypes(){
        byte a = 2; // 1 byte [-2^8, 2^8 - 1]
        short b = 2000; // 2 bytes [-2^16, 2^16 - 1]
        int c = 100000; // 4 bytes [-2^31, 2^31 - 1]
        long d = 999_999_999; // 8 bytes
        float price = 9.99F; // 4 bytes
        double pi = 3.14159; // 8 bytes
        char letter = 'A';  // one character
        boolean isEighteen = false;  // true or false

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
        System.out.println(d);
        System.out.println(price);
        System.out.println(pi);
        System.out.println(letter);
        System.out.println(isEighteen);

        // Constants
        // This variable can't be changed after it is initialized
        final int tax = 12;
        System.out.println(tax);
        // tax = 11; // Shows an Error if you try to change the value of a constant
    }

    static void operators(){
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

    static void typeCasting(){
        // Used to convert one data type to another
        // Usually for operation related expressions

        // Syntax: (type you wish to use) variable_name
        int x = 10;
        int y = 3;

        float result = (float) x / (float) y;
        System.out.println("Without type casting: " + (x / y));
        System.out.println("With type casting: " + result);
    }

    static void mathFunctions(){
        System.out.println("Round: " + Math.round(1.5F)); // Rounds off
        System.out.println("Ceil: " + Math.ceil(1.5F)); // Rounds Up
        System.out.println("Floor: " + Math.floor(1.5F)); // Rounds down
        System.out.println("Random: " + Math.random()); // Random value from 0-1
        System.out.println("Random 0-100: " + Math.round(Math.random() * 100)); // random int from 0-100
        System.out.println("Absolute: " + Math.abs(-2)); // Converts all negative values to positive
        System.out.println("Sin: " + Math.sin(60)); // Math class has trig functions built in
    }

    static void referenceTypes(){
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

    static void strings(){
        String message = "Hello World" + "!!!"; // Concatenating/Combining two strings
        System.out.println("Concatenation: " + message);
        System.out.println("startsWith: " + message.startsWith("!!")); // Returns a bool whether a string starts with a certain string
        System.out.println("endsWith: " + message.endsWith("!!")); // Returns a bool whether a string starts with a certain string
        System.out.println("length: " + message.length()); // Returns number of characters in a string
        System.out.println("indexOf: " + message.indexOf("o")); // Returns the index where this string first appears
        // returns -1 if it doesn't appear

        // For functions that modify the string itself, it returns a modified string without affecting the original
        // To update the original, set the variable equal to the function's output
        // Like so:
        message = message.replace("!", ".");
        // replaces instances of the target string with the replacement string
        System.out.println("Replace: " + message);

        // Removes white spaces at the start and end
        System.out.println("Trim: " + "  Hello World  ".trim());

        // Escape Sequences - Store special characters in a string by using \
        String doubleQuote = "\"";
        String backslash = "\\";
        String newLine = "\n";
        String tab = "\t";

        System.out.println(doubleQuote);
        System.out.println(backslash);
        System.out.println(newLine);
        System.out.println(tab);
    }

    static void arrays(){
        int[] emptyArray = new int[5]; // Initialize an empty array of 0's
        int[] numbers = {2, 3, 1, 5, 4}; // Initializing an array with specific values

        // Printing an array as a string
        System.out.println(Arrays.toString(emptyArray));

        // Accessing/changing a specific item of an array
        // Index starts at 0
        emptyArray[1] = 2;
        System.out.println(Arrays.toString(emptyArray));
        System.out.println("Index 1 or 2nd item: " + emptyArray[1]);

        // Built in sorting method
        // This modifies the array itself
        System.out.println("Unsorted Array: " + Arrays.toString(numbers));
        Arrays.sort(numbers);
        System.out.println("Sorted Array: " + Arrays.toString(numbers));

        // Length of an array
        System.out.println("numbers array Length: " + numbers.length);
    }

    static void multiDimensionalArrays(){
        // Basically Arrays in an Array
        int[][] emptyGrid = new int[3][3];  // an array containing 3 empty arrays
        int[][] grid = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};  // An array initialized with arrays of specific values

        // converting a multi-dimensional array to a string
        System.out.println("Grid: " + Arrays.deepToString(grid));

        // Accessing a specific index
        emptyGrid[1][1] = 2;
        System.out.println("Empty Grid: " + Arrays.deepToString(emptyGrid));
    }

    static void readUserInput(){
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

    static void ifStatements(){
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

    static void ternaryOperators(){
            // variable = (condition) ? [Value if true] : [Value if False];
            int income = 50_000;
            String incomeStatus = income > 15_000 ? "High Income": "Low Income";
            System.out.println(incomeStatus);
    }

    static void switchCases(){
        // A faster way to check if a variable is equal to a certain value
        String role = "admin";
        switch (role){
            case "admin":
                System.out.println("Hello Admin");
                break;
            case "user":
                System.out.println("Hello User");
                break;
            default:
                System.out.println("Hello Guest");
                break;
        }
    }

    static void forLoops(){
        // runs the code within the {} a certain number of times (based on a condition)
        for (int i=0; i<5; i++) {
            System.out.println("Hello (x" + i + ")");
        }
    }

    static void whileLoops(){
        // While loops continue to run the code in the {} until a condition is met
        // This can run for as long as needed
        int num = 0;
        while (num < 5){
            System.out.println(num);
            num++;
        }
    }

    // Methods - are functions/blocks of reusable code attached to a class
    // Inside the parenthesis () are parameters, where you can pass arguments/variables to be used by the method
    // Breaking down: public static void main()
    // public/Access Modifiers - Restrict the scope (private, public, & protected)
        // 1. public - accessible for all classes
        // 2. private - only accessible in the class it's declared in
        // 3. default - not specified and only accessible in the same package
        // 4. protected - accessible in the same packages and subclasses
    // void//non-access modifiers - add other features
    // link: https://www.geeksforgeeks.org/java/non-access-modifiers-in-java/
        // 1. Static - Belongs to a class & can be called without creating an object
        // 2. Abstract - Class is partially declared, but an object can't be created from it. Must use a subclass.
        // 3. final - method can't be overridden or class extended
        // 4. synchronized - multiple threads can't execute this at once
        // 5. volatile - variable modifier where changes to variables are made to all threads
        // 6. transient - variable modifier which says to not serialize the variable if the class is serialized
        // 7. native - can call code written different languages
    // void/Return Value - represents the data type of the return value (ex: void(for nothing), int, float, etc.)
    public static int methodSquared(int num){
        return num * num;
    }
}