const db = require('./connection.js')


delete_endData() => {
    return db.any('DELETE FROM customer WHERE name LIKE 'doe%'')
}

delete_firstData() => {
    return db.any('DELETE FROM customer WHERE name LIKE '%john'')
}

delete_firstData () => {
    return db.any('DELETE FROM customer WHERE name LIKE '%j'')
}

getOrders() => {
    return db.any('SELECT customer.name, orders.delivery_fee FROM customer INNER JOIN orders ON customer.id = customer_id')
}

insertData () => {
    return db.any("INSERT INTO customer (name, phone_number) VALUES ('anna', '2124558909')")
}
setData () => {
    return db.any('UPDATE customer SET name = 'jane doe' WHERE id = 4;')
}

updateData () => {
    return db.any('UPDATE customer SET name = 'john doe' WHERE id = 2')
}

order_ascData () => {
    return db.any('SELECT * FROM pizza ORDER BY size ASC LIMIT 3')
}

order_descData () => {
    return db.any('SELECT * FROM customer ORDER BY name DESC LIMIT 2')
}

***cityData () => {
    return db.any('SELECT * FROM address WHERE city LIKE '%oakland%'')
}

crustData () => {
    return db.any('SELECT * FROM pizza WHERE crust_type LIKE '%deep dish%'')
}

ccData () => {
    return db.any('SELECT * FROM payment_type WHERE card_type LIKE '%visa%'')
}

not_likeData () => {
    return db.any('SELECT name FROM customer WHERE name not LIKE '%kid doe doe%'')
}

userData () => {
    return db.any('SELECT email, password FROM user_login')
}
