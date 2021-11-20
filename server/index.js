

const express = require('express');
const bodyParser = require('body-parser');
const app = express();
app.use(express.static(`${__dirname} /../client/dist`));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const PORT =4000;


app.post('/quote', function (req, res) {
 
  })



app.listen(PORT, () => {
    console.log(`App is listening on port: ${PORT}`)
});

