const express = require('express')
const app = express()
const bodyparser = require('body-parser')

app.get('/', function (req, res) {
  res.send('hello this is express!')
})

app.listen(3000, function () {
  console.log('listening on port 3000!');
})
