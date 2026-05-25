package cheatSheet;

import java.util.Arrays;

public class MultiDimensionalArrays {
    public static void multiDimensionalArrays(){
        // Basically Arrays in an Array
        int[][] emptyGrid = new int[3][3];  // an array containing 3 empty arrays
        int[][] grid = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};  // An array initialized with arrays of specific values

        // converting a multi-dimensional array to a string
        System.out.println("Grid: " + java.util.Arrays.deepToString(grid));

        // Accessing a specific index
        emptyGrid[1][1] = 2;
        System.out.println("Empty Grid: " + Arrays.deepToString(emptyGrid));
    }
}
