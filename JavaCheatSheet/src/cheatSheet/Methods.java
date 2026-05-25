package cheatSheet;

public class Methods {
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
    public static int methods(int num){
        return num * num;
    }
}
