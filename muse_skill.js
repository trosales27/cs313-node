var express = require("express");
require('dotenv').config();

var app = express();
const port = process.env.PORT || 5000;

//DB setup

const { Pool } = require('pg');
const connectionString = process.env.DATABASE_URL;
console.log("Connection string is: " + connectionString);
const pool = new Pool({connectionString: connectionString});

//Testing heroku db
var sql = "SELECT * FROM notes";
pool.query(sql, function(err, result) {  //pool is not recognized
    // If an error occurred...
    if (err) {
        console.log("Error in query: ")
        console.log(err);
    }

    // Log this to the console for debugging purposes.
    console.log("Back from DB with result:");
    //console.log(result.rows);

});    

app.use(express.static("public"));

app.set("views", "views");
app.set("view engine", "ejs");

app.get("/", function(req, res) {
	console.log("Received a request for /");

	res.write("This is the root.");
	res.end();
});

app.get("/muse_skill", function(req, res) {
    console.log("Received a request for muse_skill");

    res.render("pages/muse_skill");
});

app.listen(port, function() {
	console.log("The server is up and listening on port 5000");
});