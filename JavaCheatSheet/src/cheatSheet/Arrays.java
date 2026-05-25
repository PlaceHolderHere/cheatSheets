package cheatSheet;

public class Arrays {
    public static void arrays(){
        int[] emptyArray = new int[5]; // Initialize an empty array of 0's
        int[] numbers = {2, 3, 1, 5, 4}; // Initializing an array with specific values

        // Printing an array as a string
        System.out.println(java.util.Arrays.toString(emptyArray));

        // Accessing/changing a specific item of an array
        // Index starts at 0
        emptyArray[1] = 2;
        System.out.println(java.util.Arrays.toString(emptyArray));
        System.out.println("Index 1 or 2nd item: " + emptyArray[1]);

        // Built in sorting method
        // This modifies the array itself
        System.out.println("Unsorted Array: " + java.util.Arrays.toString(numbers));
        java.util.Arrays.sort(numbers);
        System.out.println("Sorted Array: " + java.util.Arrays.toString(numbers));

        // Length of an array
        System.out.println("numbers array Length: " + numbers.length);
    }
}
