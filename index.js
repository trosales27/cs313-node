// const express = require('express')
// const path = require('path')
// const PORT = process.env.PORT || 5000

// express()
//   .use(express.static(path.join(__dirname, 'public')))
//   .set('views', path.join(__dirname, 'views'))
//   .set('view engine', 'ejs')
//   .get('/', (req, res) => res.render('pages/index'))
//   .get('/postage', (req, res) => res.render('postage_server.js'))
//   .listen(PORT, () => console.log(`Listening on ${ PORT }`))


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

app.get("/postage", function(req, res) {
    res.render("pages/postage_form");
});

	// Controller
app.get("/home", function(req, res) {
	console.log("Received a request for the home page");

    let type = req.query.type;  
    console.log("type is" + type);

    const weight = req.query.weight;
    console.log("weight is" + weight);

    const cost = calculateRate(type, weight);
    console.log("cost is: " + cost);
    console.log("params are:" + weight + "and " + cost);

    switch (type) {
        case "sletters":
            type = "Letters (Stamped)";
            break;
        case "mletters":
            type = "Letters (Metered)"
            break;
        case "envelopes":
            type = "Large Envelopes";
            break;
        case "packages":
            type = "First-Class Packages";
            break;
    }
	var params = {type: type, cost: cost.toFixed(2)};     //Set param based off of calculated rates

	res.render("pages/home", params);
});

app.listen(port, function() {
	console.log("The server is up and listening on port 5000");
});

// Model
function calculateRate(type, weight) { 
    // console.log("in calcRate");
    // console.log("type is: " + type);
    // console.log("Weight is: " + weight);
    switch (type) {
        case "sletters":
            if (weight < 1) { return 0.55; }
            else if (weight > 1 && weight <= 2) { return 0.70; }
            else if (weight > 2 && weight <= 3) { return 0.85; }
            else { return 1.00; }
            break;
        case "mletters":
            if (weight < 1) { return 0.50; }
            else if (weight > 1 && weight <= 2) { return 0.65; }
            else if (weight > 2 && weight <= 3) { return 0.80; }
            else { return 0.95; }
            break;
        case "envelopes":
         //Could do an equation here, OR make the weight value an input button, rounding up and use a switch statement based off that.
            if (weight <= 0) { return 0; }
            else if (weight < 1) { return 1.00; }
            else if (weight > 1 && weight <= 2) { return 1.15; }
            else if (weight > 2 && weight <= 3) { return 1.30; }
            else if (weight > 3 && weight <= 4) { return 1.45; }
            else if (weight > 4 && weight <= 5) { return 1.60; }
            else if (weight > 5 && weight <= 6) { return 1.75; }
            else if (weight > 6 && weight <= 7) { return 1.90; }
            else if (weight > 7 && weight <= 8) { return 2.05; }
            else if (weight > 8 && weight <= 9) { return 2.20; }
            else if (weight > 9 && weight <= 10) { return 2.35; }
            else if (weight > 10 && weight <= 11) { return 2.50; }
            else if (weight > 11 && weight <= 12) { return 2.65; }
            else { return 2.80; }
            break;
        case "packages":
            if (weight <= 0) { return 0; }
            else if (weight < 4) { return 3.60; }
            else if (weight > 4 && weight <= 5) { return 1.45; }
            else if (weight > 5 && weight <= 6) { return 3.78; }
            else if (weight > 6 && weight <= 7) { return 3.96; }
            else if (weight > 7 && weight <= 8) { return 4.14; }
            else if (weight > 8 && weight <= 9) { return 4.32; }
            else if (weight > 9 && weight <= 10) { return 4.50; }
            else if (weight > 10 && weight <= 11) { return 4.68; }
            else if (weight > 11 && weight <= 12) { return 5.04; }
            else if (weight > 12 && weight <= 13) { return 5.22; }
            else if (weight > 13 && weight <= 16) { return 8.68; }
            else { return 10.28; }
            break;
    }
}
