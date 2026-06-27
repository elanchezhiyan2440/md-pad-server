const db = require("../db/queries");

async function getAllUsers(req, res) {
    try {
        const users = await db.getAllUsers();    
        res.json(users);
    } catch (error) {
        console.error("Error retrieving users: ", error);
        res.status(500).send(error);
    }
}

module.exports = {
    
}