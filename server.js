// const express = require('express');

// const app = express();



// app.listen(3000, function(){
//   console.log("Listening")
// });


require("dotenv").config();
const express = require("express");
const massive = require("massive");
// const session = require("express-session");

const { SERVER_PORT, CONNECTION_STRING } = process.env;


// Controllers

//


// Middleware

const app = express();

// app.use(express.json());


//


massive(CONNECTION_STRING).then(database => {
  app.set("db", database);
  app.listen(SERVER_PORT, () =>
    console.log(`listening on port ${SERVER_PORT}`)
  );
});
