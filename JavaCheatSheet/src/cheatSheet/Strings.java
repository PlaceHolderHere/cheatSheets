package cheatSheet;

public class Strings {
    public static void strings(){
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
}
