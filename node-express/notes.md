-- REFERENCES --
* https://www.youtube.com/watch?v=ha_leEpnT30

-- GETTING STARTED --
1. npm init -y -> creates package.json
2. npm install express
3. create a js file. Ex: "server.js"
4. npm install cors -> allows you to grant access to certain domains

-- FUNCTIONS --
1. app.listen(port, function) -> listens to a certain port number and runs the function
2. app.get(url, function) -> creates a route, and returns req and res
    2.1. req object -> what the user is requesting
    2.2. res object -> what the server is responding
        2.2.1. res.json() -> sends json as a response

-- NOTES --
1. Route -> instruction/what happens after a user visits a certain URL
2. Route Parameters -> dynamic values/variables in a URL that can be processed by the server
3. Connecting to a front-end
    - You can create routes for the front-end to send requests to the server (e.g. for data)
    - You must use the CORS module and input a list of allowed origins for a front-end to interact with a back-end
4. POST Routes
    - These routes allow users to send data to the server
5. Express Routing
    - allow you to split routes into separate files and/or directories