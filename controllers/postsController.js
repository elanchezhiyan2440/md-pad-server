const db = require("../db/queries");

async function getAllPosts(req, res) {
    try {
        const posts = await db.getAllPosts();
        if(!posts){
            res.status(404).json({"message":"No posts found. Write one up maybe!"});
        };
        res.json(posts);
    } catch (error) {
        console.error("Error retrieving posts: ",error);
        res.status(505).send(error)
    }
}

module.exports = {
    getAllPosts,
}