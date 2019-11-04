const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    sql.getConnection((err, connection) => {
        if (err) {
          return console.log(err.message);
        }
      
        let query = "SELECT * FROM image_change";


        sql.query(query, (err, rows) => {
          connection.release();
    
          if (err) {
            return console.log(err.message);
          }
          console.log(rows);
    
          res.render('home', {data: rows});
        })
        
      })
})


router.get('/things/:id', (req, res) => {
    // console.log('hit a dynamic route!');
     console.log(req.params.id);
 
     let query = `SELECT * FROM three_favourite_things WHERE id="${req.params.id}"`;
 
     sql.query(query, (err, result) => {
         if (err) { throw err; console.log(err); }
 
         console.log(result); 
 
         
         res.json(result);
     });
 });

module.exports = router;