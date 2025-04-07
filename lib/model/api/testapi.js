const express = require('express');
const app = express();
const port = 3000;

const run = require('/Users/soumya/Documents/Projectfolder/googlepayclone/lib/database/db'); // Make sure this file exists and exports the function

app.get('/', async (req, res) => {
  try {
    const client = await run();
    const db = client.db("sample_mflix"); // Your MongoDB database
    const collection = db.collection("comments"); // Your collection

    const comments = await collection.find().limit(10).toArray(); // Fetch first 10 comments
    res.json(comments);
  } catch (err) {
    console.error("❌ Error fetching data:", err);
    res.status(500).send("Error fetching data from MongoDB");
  }
});

app.listen(port, () => {
  console.log(`🚀 Server is running at http://localhost:${port}`);
});
