DROP TABLE IF EXISTS drinks;

CREATE TABLE drinks (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  manufacturer VARCHAR(250),
  supplier VARCHAR(250),
  price INTEGER,
  drink_order INTEGER,
  FOREIGN KEY (drink_order) REFERENCES orders(id)
);
