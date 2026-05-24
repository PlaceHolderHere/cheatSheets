// Defining a custom type that you can use later
type User = {
    readonly id: number,
    name: string,
    gender?: string
}

let userOne: User = {id: 1, name: "Jeff"}
console.log("User One's name is: " + userOne.name)