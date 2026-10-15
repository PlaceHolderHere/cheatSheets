// Classes are templates for creating objects
    // Classes can have both attributes and methods/functions

// CREATING A CLASS:
class Dog{
    // The constructor method is a special method that runs when an object is created from a class
        // It is usually used to receive input values and assign them to the attributes of the class
    constructor(name, breed, age){
        this.name = name;
        this.breed = breed;
        this.age = age;
    }

    // Methods are functions that belong to a class
    greet(name){
        console.log(`Hello ${name}, my name is ${this.name}`);
    }
}

// CREATING AN OBJECT FROM A CLASS:
let dog1 = new Dog ("Puppy", "German Shepherd", 2);
console.log(dog1.name); // Puppy
dog1.greet("John"); // Hello John, my name is Puppy