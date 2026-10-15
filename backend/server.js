
const express = require("express");

const app = express();
const PORT = 3000;

// API endpoint for the frontend
app.get("/api/hello", (req, res) => {
  res.json({
    message: "Hello from the backend!",
    status: "success",
    technology: "Node.js + Express"
  });
});

// Health check endpoint
app.get("/health", (req, res) => {
  res.json({ status: "healthy" });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Backend running on port ${PORT}`);
});
