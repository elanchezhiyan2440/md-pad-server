const pool = require("./pool");

// POSTS
async function getAllPosts() {
    const {rows} = await pool.query("SELECT * FROM posts");
    if(rows.length == 0){
        return null;
    };
    return rows;
}

module.exports = {
    getAllPosts
}