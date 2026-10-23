// === TERNARY OPERATOR === //
// Shortcut for an if and else statement, that returns one of 2 values based on a condition
// commonly used as a shortcut for an if statement, and for component rendering in libraries like React
// SYNTAX: condition ? returnValueIfTrue : returnValueIfFalse

let income = 10000
let taxRate = income > 50000 ? 0.2 : 0.1 // If income is greater than 5000, taxRate will be 0.2, otherwise it will be 0.1
console.log(taxRate) // 0.1