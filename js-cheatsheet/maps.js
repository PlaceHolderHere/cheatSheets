// === Maps === //
// store key-value pairs

// === Creating a map === //
const fruits = new Map()

// === Adding Values === //
// map.set(key, value)
fruits.set('Apple', 500)
fruits.set('Orange', 300)
fruits.set('Banana', 400)

// === Updating a value === //
// same as adding, use the set() function and input the key of the value you want to update
fruits.set('Apple', 600)

// === Reading Values === //
// Syntax: map.get(key)
console.log(fruits.get('Apple')) // 600