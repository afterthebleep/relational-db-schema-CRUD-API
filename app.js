const express = require('express')
var path = require('path');
const app = express()
const bodyParser = require('body-parser')
const db = require('./database/database.js')

app.use(bodyParser.json())

app.get('/', (req, res, next) =>{
  db.getCustomers()
  .then(allMyCustomers => {
    res.json({allMyCustomers})
  })
})

let returnData = {}

app.post('/add', (req, res, next) => {
  db.addCustomer()
  .then( customer => {
    returnData.customer = customer
    return db.addAddress()
  })
  .then( address => {
    returnData.address = address
    return db.addPayment()
  })
  .then(payment => {
    returnData.payment = payment
    return db.addUser_Login()
  })
  .then(user => {
    returnData.user = user
    return db.addOrders()
  })
  .then(orders => {
    returnData.orders = orders
    return db.addPizza()
  })
  .then(pizza => {
    returnData.pizza = pizza
    return db.addDrink()
  })
  .then(drink => {
    returnData.drink = drink
    return db.addIngredients()
  })
  .then(ingredients => {
    returnData.ingredients = ingredients
    res.json(returnData)
  })
  .catch(error => {
    return error
  })
})

// app.get('/delete', (req, res, next) {
//
// })




app.listen(3000, function () {
  console.log('listening on port 3000!');
})
