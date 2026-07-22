const express = require('express'); // Loading express module
const app = express(); // create the app

// Get Route '/' represents the url
// returns 2 objects: req & res
app.get("/", (req, res) =>{
    res.send("Hello, the server is wokring");
})

// Tells express to listen to port:3000 and log a message
app.listen(3000, () => {
    console.log("Server is Running");
}) 