DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  order_date VARCHAR(250),
  delivery BOOLEAN,
  delivery_fee BIGINT,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
);

INSERT INTO orders (order_date, delivery, delivery_fee, customer_id)
VALUES('4/1/17', true, 5, 1);
INSERT INTO orders (order_date, delivery, delivery_fee, customer_id)
VALUES('4/15/17', true, 5, 2);
INSERT INTO orders (order_date, delivery, delivery_fee, customer_id)
VALUES('4/17/17', false, 5, 3);
