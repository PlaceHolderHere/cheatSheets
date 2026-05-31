
// For loops - Loops a certain number of times
for (let i = 0; i < 5; i++) {
  console.log(i);
}

// While loops - Loops while a condition is true
let numbers = [2, 3, 1, 0, 5, 6, 9, 8];
let index = 0;
let numFound = false;
while (!numFound && index < numbers.length) {
  if (numbers[index] === 6) {
    console.log("The number 6 is at index " + index);
    numFound = true;
  }
  index++;
}

// Do-while loops - Loops at least once, then continues while a condition is true
let coffeeSmellBad = true;
do {
  console.log("Does this coffe smell bad?");
} while (!coffeeSmellBad);