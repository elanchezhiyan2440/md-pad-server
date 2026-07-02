const pool = require("./pool");

// POSTS
async function getAllPosts() {
    const { rows } = await pool.query(`SELECT 
        p.title AS title, 
        p.id AS pid, 
        p.content AS content, 
        u.fullname AS author_name 
        FROM 
        posts p JOIN users u 
        ON u.id = p.author_id;`);
    if (rows.length == 0) {
        return null;
    };
    return rows;
}

module.exports = {
    getAllPosts
}