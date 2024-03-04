const express = require("express");
const cors = require("cors");
const dotenv = require("dotenv");
const productRoutes = require("./productRoutes");

dotenv.config();

const app = express();
const PORT = 3001;

app.use(cors());

app.use(express.json());
app.use("/", productRoutes);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
