// function [name] ([input]: [input type]): [output type]{[code]}
function calculatePrice(price: number, VAT: boolean): number{
    let finalPrice: number = price
    if (VAT){
        finalPrice *= 1.12
        return finalPrice;
    }
    return finalPrice;
}

console.log("Price without VAT: " + calculatePrice(100, false))
console.log("Price with VAT: " + calculatePrice(100, true))