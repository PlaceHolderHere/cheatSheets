// Set of properties bundled under one name
let person = {
    name: "Jeff",
    age: 20
}

console.log(person)
console.log(person.name) // Accessing Individual Properties
console.log(person.age)

// Accessing and changing individual properties
// Dot Notation
person.name = "Jake"
console.log(person.name)
// Bracket Notation 
person['name'] = "James"

let selection = 'age'
person[selection] = 25

console.log(person)
console.log(person['name']) 
console.log(person[selection])