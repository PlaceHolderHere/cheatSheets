package cheatSheet;

public class TernaryOperators {
    public static void ternaryOperators(){
            // variable = (condition) ? [Value if true] : [Value if False];
            int income = 50_000;
            String incomeStatus = income > 15_000 ? "High Income": "Low Income";
            System.out.println(incomeStatus);
    }
}
