var express = require("express");

var app = express();
const port = process.env.PORT || 5000;

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