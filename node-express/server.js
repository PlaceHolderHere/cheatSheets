const cors = require('cors')
const express = require('express'); // Loading express module
const expressRouter = require('./express-routing') // use express routing
const app = express(); // create the app

// Whitelisting/Allow certain domains to access the server
// Note: Adding "null" allows ALL domains to access the server
const allowedOrigins = ["http://localhost:3000"]
app.use(cors({
    origin: allowedOrigins
}))

// Middleware
app.use((req, res, next) => {
    console.log("Middleware is running")
    next() // allows the request to continue to the next middleware or route handler
})

// POST Routes
// Tells express to put the json data from the front-end in req.body
app.use(express.json())

app.post('/post-route', (req, res) => {
    const name = req.body.name
    const email = req.body.email

    console.log(name, email)
    res.json({message: "Thank you for logging in:>"})
})

// Connecting to a frontend
// This route returns a json object to the frontend, you can connect a backend/database here
app.get("/basic-frontend", (req, res) => {
    res.json({message: "Hello World"})
})

// Get Route '/' represents the url
// returns 2 objects: req & res
app.get("/", (req, res) =>{
    res.send("Hello, the server is working");
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

// Query Parameters
// formated like url/route?key1=value1&key2=value2
app.get("/query-params", (req, res) => {
    // Req.query returns an object containing all the query parameters in the url
    const name = req.query.name
    res.send(`Hello ${name}, you have sent a query parameter`)
})

// Express Router
// ExpressRouter can be accessed through localhost:3000/express-router
app.use('/express-router', expressRouter)

// Tells express to listen to port:3000 and log a message
app.listen(3000, () => {
    console.log("Server is Running");
}) 