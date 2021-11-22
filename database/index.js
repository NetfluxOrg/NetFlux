const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const netfluxDb = mysql.createConnection(mysqlConfig);

netfluxDb.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('MySQL CONNECTED TO DATABASE ', mysqlConfig.database);
});
