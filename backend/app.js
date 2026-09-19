//Import dotenv
require("dotenv").config();

// Express setup
const express = require("express");
const app = express();
const PORT = process.env.PORT;

// Test Route
app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(PORT, () => {
  console.log(
    `Server running on http://localhost:${PORT}/. Press CTRL+C to close server.`
  );
});
