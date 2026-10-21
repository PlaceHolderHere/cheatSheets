// Plain Function
function sayHi(){
    console.log("Hi")
}

sayHi() // Calling a function

// A function with a parameter
function greet(name){
    console.log("Good Day " + name)
}

greet("Jeff") // Calling a function with an argument
greet("David")

// Function with a return value
function square(num){
    return num * num
}

let squared = square(3)
console.log(squared)

// --- ARROW FUNCTIONS --- //
// uses the arrow symbol "=>" to create functions in a shorter, more concise way
// the function here is stored in the "add" constant
const add = (x, y) => {
    console.log(x + y)
}

add(5, 10) // Calling the arrow function