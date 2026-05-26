package cheatSheet;

public class Objects {
    public void objects(){
        SampleObject box = new SampleObject("Car", (float) 1.2, 5);
        box.printName();
        System.out.println(box.weight);
        System.out.println(box.age);
        box.increaseAge(2);
        System.out.println(box.age);
    }

    public static class SampleObject{
        String name;
        float weight;
        int age;

        // Constructor:
        // Allows you to have custom values for each object when initializing it
        SampleObject(String name, float weight, int age){
            this.name = name;
            this.weight = weight;
            this.age = age;
        }

        // Creating a method under an object
        // "this" keyword allows you to access local variables of an object
        void printName(){
            System.out.println(this.name);
        }

        void increaseAge(int num){
            this.age += num;
        }
    }
}
