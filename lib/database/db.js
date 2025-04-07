const { MongoClient, ServerApiVersion } = require("mongodb");

// Replace the placeholder with your Atlas connection string
const uri = "mongodb+srv://goodlepay_app:lWns0OtmhfISQxW9@cluster0.6h8bdaq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
// Create a MongoClient with a MongoClientOptions object to set the Stable API version
const client = new MongoClient(uri,  {
        serverApi: {
            version: ServerApiVersion.v1,
            strict: true,
            deprecationErrors: true,
        }
    }
);

async function run() {
  try {
    // Connect the client to the server (optional starting in v4.7)
    await client.connect();
    console.log("......");

    // Send a ping to confirm a successful connection
    await client.db("sample_mflix").command({ ping: 1 });
    console.log("Pinged your deployment. You successfully connected to MongoDB!");
    return client ;
  }catch (err) {
       console.error("Error connecting to MongoDB:", err);
       throw err; // Ensure that the error is thrown so it can be handled in the API.
     }
}
module.exports = run
run().catch(console.dir);
