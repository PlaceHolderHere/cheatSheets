const express = require('express'); // Loading express module
const app = express(); // create the app

// Get Route '/' represents the url
// returns 2 objects: req & res
app.get("/", (req, res) =>{
    res.send("Hello, the server is wokring");
})

// JSON
// Returns a json object when visiting: localhost:3000/json
app.get("/json", (req, res) =>{
    res.json([
        {id: 1, name: "John", age: 30},
        {id: 2, name: "Jane", age: 25},
        {id: 3, name: "Bob", age: 35}
    ])
});

// Tells express to listen to port:3000 and log a message
app.listen(3000, () => {
    console.log("Server is Running");
}) 