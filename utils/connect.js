const mysql = require('mysql2');
require('dotenv').config();

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  // Your MySQL username
  user: 'root',
  // Your MySQL password
  password: process.env.DB_PASS,
  database: 'employee_trackerdb'
});

connection.connect((err) => {
	if (err) throw err;
	// console.log('connected as id ' + connection.threadId + '\n');
});

module.exports = connection;