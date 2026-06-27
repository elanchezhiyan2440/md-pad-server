const {Pool} = require("pg");

module.exports = new Pool({
    connectionString: "postgresql://wraththevengeful:wrath@localhost:5432/mdpad"
})