// allowing us to run sql in javascript
// getting library called mysql2
const mysql = require('mysql2'); 
const connection = require('./connection.js')

// connecting to mysql database using .createConnection (from mysql2)

const db = mysql.createConnection(connection);

db.query("SELECT * FROM customers;", (err, data) => {
  if(err) {
    console.error(err)
  }
  console.table(data)
  db.end();
});



