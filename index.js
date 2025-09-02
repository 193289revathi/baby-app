const express = require("express");
const app = express();
const port = 3000;

// serve static files (like Sai.jpg)
app.use(express.static("public"));

app.get("/", (req, res) => {
  res.send(`
    <h1>Hai</h1>
    <img src="Sai.jpg" alt="Baby Photo" width="300"/>
  `);
});

app.listen(port, "0.0.0.0", () => {
  console.log(`Server running at http://localhost:${port}`);
});

