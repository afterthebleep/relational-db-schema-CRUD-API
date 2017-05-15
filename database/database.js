const { db } = require('./connection.js')



const getCustomers = () => {
  let psql = `select customer.name, customer.phone_number, address.street, address.city, address.state, address.zip, address.primary_address, payment_type.card_type, payment_type.card_number, payment_type.expiration, payment_type.ccv, user_login.email, user_login.password, orders.order_date, orders.delivery, orders.delivery_fee, drink.drink, drink.manufacturer, drink.supplier, drink.price, pizza.pizza, pizza.price, pizza.size, pizza.crust_type, ingredients.cheese, ingredients.pineapple, ingredients.sasuage, ingredients.pepperoni, ingredients.mushroom from customer inner join address on customer.id = address.id inner join payment_type on customer.id = payment_type.id inner join user_login on customer.id = user_login.id inner join orders on customer.id = orders.id inner join drink on customer.id = drink.id inner join pizza on customer.id = pizza.id inner join ingredients on customer.id = ingredients.id`

  return db.any(psql)
}

const addCustomer = () => {
  let psql = `INSERT INTO customer (name, phone_number) VALUES ('marry lo','222-333-3333') RETURNING *`
  return db.one(psql)
}

const addAddress = () => {
  let psql = `INSERT INTO address (street, city, state, zip) VALUES ('33 broadway', 'palm srings', 'ca', 92262) RETURNING *`
  return db.one(psql)
}
const addPayment = () => {
  let psql = `INSERT INTO payment_type (card_type, card_number, expiration, ccv) VALUES ('mastercard', 5436789265438765, '12/20', 123) RETURNING *`
  return db.one(psql)
}
const addUser_Login = () => {
  let psql = `INSERT INTO user_login (email, password) VALUES ('hibye@gmail.com', 'iforgot1') RETURNING *`
  return db.one(psql)
}
const addOrders = () => {
  let psql = `INSERT INTO orders (order_date, delivery, delivery_fee) VALUES ('01/14/17', true, 5) RETURNING *`
  return db.one(psql)
}
const addPizza = () => {
  let psql = `INSERT INTO pizza (pizza, price, size, crust_type) VALUES ('pineapple and sausage', 20, 'large', 'thin') RETURNING *`
  return db.one(psql)
}
const addDrink = () => {
  let psql = `INSERT INTO drink (drink, manufacturer, supplier, price) VALUES ('7up', 'pepsi', 'sysco', 3) RETURNING *`
  return db.one(psql)
}
const addIngredients = () => {
  let psql = `INSERT INTO ingredients (cheese, pineapple, chicken, sausage, pepperoni, mushroom) VALUES (true, true, true, false, false, false) RETURNING *`
  return db.one(psql)
}




module.exports = {
  getCustomers,
  addCustomer,
  addOrders,
  addUser_Login,
  addPayment,
  addAddress,
  addIngredients,
  addDrink,
  addPizza
}
