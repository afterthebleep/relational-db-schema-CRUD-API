DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  total INTEGER,
  customer_id INTEGER references customers(id)
);

ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(id);
