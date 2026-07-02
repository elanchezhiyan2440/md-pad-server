const express = require("express");
const app = express();
const userRouter = require("./routes/userRouter");
const postsRouter = require("./routes/postsRouter");
const cors = require('cors');

app.get("/", (req, res) => res.send("Hello, world!"));

const PORT = 3000;

app.use(cors());

app.use("/users",userRouter);
app.use("/posts", postsRouter);

app.listen(PORT, (err)=>{
    if(err){
        throw err;
    }
    console.log("Running on", PORT);
})