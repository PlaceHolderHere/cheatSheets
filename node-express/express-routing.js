const express = require('express');
const router = express.Router(); 

// Create a route in the express-router
router.get("/", (req, res) => {
    res.send("Hello from the express-router");
})

module.exports = router; // Allows other files to use these/refer to these routes 