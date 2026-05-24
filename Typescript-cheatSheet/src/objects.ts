// General Syntax:
// let [objectName] : {[property1]: [type], [property2]: [type]...} = {[property1]: [value], [property2]: [value]...}
let user: {
    readonly id: number, // can't be changed
    name: string,
    gender?: string, // ? means that it is optional when initializing
} = {id: 1, name: "Jeff", gender: "M"}
console.log("Jeff's id number is: " + user.id)
user.name = 'Meep'
console.log("Id 1's name is now: " + user.name)