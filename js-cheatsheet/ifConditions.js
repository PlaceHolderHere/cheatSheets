// === IF === //
// if coniditons run a block of code, if a condition is true

let x = 5
if (x > 3){
    console.log("x is greater than 3")
}

// === IF ELSE === //
// Allows you to have a series of if statements, and the first if statement with a true condition will run it's corresponding code block

let y = 10
if (y == 5){
    console.log("y is equal to 5")
}
else if (y == 7){
    console.log("y is equal to 7")
}
else if (y == 10){
    console.log("y is equal to 10") // Only this will output since y is equal to 10
}

// === ELSE === //
// else runs a code block if all previous conditions are false
let z = 15
if (z == 5){
    console.log("z is equal to 5")
}
else if (z == 10){
    console.log("z is equal to 7")
}
else{
    console.log("z is not equal to 5 or 10") // This will output since z is not equal to 5 or 10
}