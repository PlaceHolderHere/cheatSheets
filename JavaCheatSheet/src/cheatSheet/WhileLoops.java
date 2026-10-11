package cheatSheet;

public class WhileLoops {
    public static void whileLoops(){
        // While loops continue to run the code in the {} until a condition is met
        // This can run for as long as needed
        int num = 0;
        while (num < 5){
            System.out.println(num);
            num++;
        }
    }

    public static void doWhileLoops(){
        // Do while loops will run the code in the {} at least once, then check the condition
        // This can run for as long as needed
        int num = 0;
        do {
            System.out.println(num);
            num++;
        } while (num < 5);
    }
}
