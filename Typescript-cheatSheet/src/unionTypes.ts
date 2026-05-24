// Union types allow a variable to be more than one type
let unionVariable: string | number = 10
console.log("Union variable can be a string or a number, and it is: " + unionVariable)

// Also works in function inputs
function kgToPounds(kilograms: number | string): number{
    if (typeof(kilograms) === 'number'){
        return kilograms * 2.2
    }
    else{
        return parseInt(kilograms) * 2.2
    }
}

let weightString: string = "10kg"
console.log(weightString + "in pounds is: " + kgToPounds(weightString) + "lbs")

let weightNum: number = 20
console.log(weightNum + "kg in pounds is: " + kgToPounds(weightNum) + "lbs")