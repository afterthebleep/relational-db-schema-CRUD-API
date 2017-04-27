DROP TABLE IF EXISTS drink;

CREATE TABLE drink (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  manufacturer VARCHAR(250),
  supplier VARCHAR(250),
  price DECIMAL,
  drink_order INTEGER,
  FOREIGN KEY (drink_order) REFERENCES orders(id)
);
