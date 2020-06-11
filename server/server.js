require("dotenv").config();
const express = require("express");
const massive = require("massive");
const session = require("express-session");

const { SERVER_PORT, CONNECTION_STRING, SECRET } = process.env;


// Controllers

//


// Middleware

const app = express();

app.use(express.json());

app.use(
  session({
    resave: true,
    saveUninitialized: true,
    secret: SECRET,
    cookie: { secure: false }
  })
);

//

// app.listen(SERVER_PORT, () =>
//   console.log(`${SERVER_PORT} barrels of beer`)
// );

massive(CONNECTION_STRING).then(database => {
  app.set("db", database);
  app.listen(SERVER_PORT, () =>
    console.log(`${SERVER_PORT}  barrels of beer`)
  );
});





// ! use as Ref
// const express = require('express');

// const app = express();



// app.listen(3000, function(){
//   console.log("Listening")
// });
