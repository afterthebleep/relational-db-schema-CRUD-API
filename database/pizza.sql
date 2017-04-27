DROP TABLE IF EXISTS pizza;

CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  price DECIMAL,
  size VARCHAR(250),
  crust_type VARCHAR(250),
  pizza_order INTEGER,
  FOREIGN KEY (pizza_order) REFERENCES orders(id)
);
