package cheatSheet;

public class SwitchCases {
    public static void switchCases(){
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
}
