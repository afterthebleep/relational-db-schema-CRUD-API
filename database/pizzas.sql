DROP TABLE IF EXISTS pizzas;

CREATE TABLE pizzas (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  price INTEGER,
  size VARCHAR(250),
  crust_type VARCHAR(250),
  pizza_order INTEGER,
  FOREIGN KEY (pizza_order) REFERENCES orders(id)
);
