package cheatSheet;

public class PrimitiveTypes {
    public static void primitiveTypes(){
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
}
