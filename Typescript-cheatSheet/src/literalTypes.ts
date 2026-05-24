// Variables can only be a certain value
// let [variableName]: [specificQuantity] = [value]
let stock: 50 = 50 // stock can only be 50
let quantity: 50 | 100 = 100 // quantity can be 50 or 100

// literal types with custom types
type Price = 50 | 100
let productPrice: Price = 100