DROP TABLE IF EXISTS pizza;

CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  pizza VARCHAR(250),
  price DECIMAL,
  size VARCHAR(250),
  crust_type VARCHAR(250),
  pizza_order INTEGER,
  FOREIGN KEY (pizza_order) REFERENCES orders(id) ON DELETE CASCADE
);

INSERT INTO pizza (pizza, price, size, crust_type, pizza_order)
VALUES('aloha', 12, 'small', 'thin', 1);
INSERT INTO pizza (pizza, price, size, crust_type, pizza_order)
VALUES('meatlover', 18, 'medium', 'deep dish', 2);
INSERT INTO pizza (pizza, price, size, crust_type, pizza_order)
VALUES('veggies', 25, 'large', 'thick', 3);
