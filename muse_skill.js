var express = require("express");
require('dotenv').config();

var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false })

var app = express();
const port = process.env.PORT || 5000;

app.set("views", "views");
app.set("view engine", "ejs");

app.use(express.static("public"));

//DB setup
const { Pool } = require('pg');
const connectionString = process.env.DATABASE_URL;
//console.log("Connection string is: " + connectionString);
const pool = new Pool({connectionString: connectionString});


//Testing heroku db
// var sql = "SELECT * FROM notes";
// pool.query(sql, function(err, result) {  
//     // If an error occurred...
//     if (err) {
//         console.log("Error in query: ")
//         console.log(err);
//     }

//     // Log this to the console for debugging purposes.
//     //console.log("Back from DB with result:");
//     //console.log(result.rows);
// });    

app.get("/", function(req, res) {
	console.log("Received a request for /");

	res.write("This is the root.");
	res.end();
});

app.get("/home", function(req, res) {
    console.log("home screen");

    res.render("pages/home");
});

app.get("/muse_skill", function(req, res) {
    console.log("Received a request for muse_skill");

    res.render("pages/muse_skill");
});

// Set up handlers
app.get("/getNote", getNoteHandler);
app.get("/getChord", getChordHandler);

// Controller
function getNoteHandler(req, res) {
    console.log("received request for getNoteHandler");
    console.log("id is " + req.query.id);
    qry = "SELECT note_name, img_source, sound_source FROM notes WHERE note_id = " + req.query.id;
    
    pool.query(qry, (err, data) => {
        if (err) {
            throw err;
        }

        res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(data.rows[0]));
    });
}

// Controller
function getChordHandler(req, res) {

}


app.listen(port, function() {
	console.log("The server is up and listening on port 5000");
});