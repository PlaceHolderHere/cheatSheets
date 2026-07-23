const cors = require('cors')
const express = require('express'); // Loading express module
const app = express(); // create the app

// Whitelisting/Allow certain domains to access the server
// Note: Adding "Null" allows ALL domains to access the server
const allowedOrigins = ["http://localhost:3000"]
app.use(cors({
    origin: allowedOrigins
}))

// Connecting to a frontend
// This route returns a json object to the frontend, you can connect a backend/database here
app.get("/basic-frontend", (req, res) => {
    res.json({message: "Hello World"})
})

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

// Route Parameters
app.get("/params/:message", (req, res) =>{
    const msg = req.params.message // should match the name in the url (ex: message)
    res.send(msg)
});

// Tells express to listen to port:3000 and log a message
app.listen(3000, () => {
    console.log("Server is Running");
}) 