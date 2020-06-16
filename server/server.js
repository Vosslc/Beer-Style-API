require("dotenv").config();
const express = require("express");
const massive = require("massive");
const path = require('path')

const { CONNECTION_STRING } = process.env;
const SERVER_PORT = process.env.SERVER_PORT || 8000;

//! Controllers
const airplanesCtrl = require("./controllers/airplanesCtrl")
//

//! Middleware

const app = express();
// express.json() is a method inbuilt in express to recognize the incoming Request Object as a JSON Object
app.use(express.json());

massive({
  connectionString: CONNECTION_STRING,
  sslmode: "require",
  ssl: { rejectUnauthorized: false },
}).then(database => {
  app.set("db", database);
  app.listen(SERVER_PORT, () => console.log(`${SERVER_PORT} barrels of beer`));
});

//  type ====> http://localhost:4420/ into browser and you should see the text Hello World
app.get('/', (req, res) => res.send('<h1>Beer Style API</h1>'))
// 


//Airplanes Endpoints

app.get("/api/planes", airplanesCtrl.getAirplanes)