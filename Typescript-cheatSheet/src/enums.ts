// const is optional but leads to "More optimized code"
const enum Sizes {Small, Medium, Large} // = {0, 1, 2} by default
const enum differentSizes {Small = 1, Medium, Large} // = {1, 2, 3} 
const enum customSizes {Small = 2, Medium = 5, Large = 10} // = {2, 5, 10}
const enum sizeLabels {Small = 's', Medium = 'm', Large = 'l'} // Can be any type/value

let mySize: Sizes = Sizes.Medium
console.log("My size is: " + mySize)