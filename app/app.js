// Import express.js
const express = require("express");

// Create express app
var app = express();

app.set("view engine", "pug");

// Add static files location
app.use(express.static("static"));

// Get the functions in the db.js file to use
const db = require("./services/db");

// Create a route for root - /
app.get("/", async function (req, res) {
	sql = "select * from categories";
	const categories = await db.query(sql);

	res.render("index", {
		categories,
	});
});

///result
app.get("/result", async function (req, res) {
	const { category, date } = req.query;

	let itineraries;
	let message;

	if (category === "4") {
		let sql = `
      SELECT itinerary.*, categories.name AS category
      FROM itinerary
      INNER JOIN categories ON categories.category_id = itinerary.category_id
      WHERE itinerary.category_id = ? AND itinerary.date = ?
      LIMIT 1
    `;
		itineraries = await db.query(sql, [category, date]);

		// Check if any itineraries found for the date, the recommend future events
		if (itineraries.length === 0) {
			sql = `
          SELECT itinerary.*, categories.name AS category
          FROM itinerary
          INNER JOIN categories ON categories.category_id = itinerary.category_id
          WHERE itinerary.category_id = ? AND itinerary.date >= ?
          ORDER BY itinerary.date ASC
          LIMIT 1
        `;
			const futureItineraries = await db.query(sql, [category, date]);

			itineraries = futureItineraries;
			if (itineraries.length) {
				const dateObj = new Date(date);
				const newDateObj = new Date(itineraries[0].date);

				message = `Sorry, no sports or events were found for ${dateObj.toDateString()} However, we have found exciting events for ${newDateObj.toDateString()}. Check out our website to explore these upcoming events and plan your next outing!`;
			}
		}
	} else {
		let sql = `
      SELECT itinerary.*, categories.name AS category
      FROM itinerary
      INNER JOIN categories ON categories.category_id = itinerary.category_id
      WHERE itinerary.category_id = ?
      LIMIT 1
    `;
		itineraries = await db.query(sql, [category]);
	}

	const itinerary = itineraries[0];

	sql = `SELECT a.*
FROM activities a
WHERE a.itinerary_id=?`;

	const activities = itinerary
		? await db.query(sql, [itinerary.itinerary_id])
		: [];

	res.render("result", {
		activities,
		itinerary,
		message,
	});
});

// Create a route for testing the db
app.get("/db_test", function (req, res) {
	// Assumes a table called test_table exists in your database
	sql = "select * from test_table";
	db.query(sql).then((results) => {
		console.log(results);
		res.send(results);
	});
});

// Create a route for /goodbye
// Responds to a 'GET' request
app.get("/goodbye", function (req, res) {
	res.send("Goodbye world!");
});

// Create a dynamic route for /hello/<name>, where name is any value provided by user
// At the end of the URL
// Responds to a 'GET' request
app.get("/hello/:name", function (req, res) {
	// req.params contains any parameters in the request
	// We can examine it in the console for debugging purposes
	console.log(req.params);
	//  Retrieve the 'name' parameter and use it in a dynamically generated page
	res.send("Hello " + req.params.name);
});

// Start server on port 3000
app.listen(3000, function () {
	console.log(`Server running at http://127.0.0.1:3000/`);
});
