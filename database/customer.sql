DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  phone_number VARCHAR(250)
);

--
-- INSERT INTO customers (name, delivery_addresses, phone_number, payment_methods)
-- VALUES ('john', 'taco street', '555-555-5555', 'visa')
