const express = require('express');
const path = require('path');
const hbs = require('hbs');
const sql = require('./utils/sql');
const port = process.env.PORT || 3000;

const app = express();

//tell express to use handlebars engine to render data; 
app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));


app.use((req, res, next) => {
    var err = new Error('Not Found');
    err.status = 404;
    err.customMessage = "Oh noes! Something horrible happened!";
    err.imgA = "avocado_angry.jpg";

    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', {data: err, layout: 'errorPage'})
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
}) 


