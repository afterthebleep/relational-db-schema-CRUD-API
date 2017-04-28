DROP TABLE IF EXISTS drink;

CREATE TABLE drink (
  id SERIAL PRIMARY KEY,
  drink VARCHAR(250),
  manufacturer VARCHAR(250),
  supplier VARCHAR(250),
  price DECIMAL,
  drink_order INTEGER,
  FOREIGN KEY (drink_order) REFERENCES orders(id) ON DELETE CASCADE
);

INSERT INTO drink (drink, manufacturer, supplier, price, drink_order)
VALUES('sprite', 'coca-cola', 'sysco', 2.5, 1);
INSERT INTO drink (drink, manufacturer, supplier, price, drink_order)
VALUES('dr. pepper', 'coca-cola', 'sysco', 2.5, 2);
INSERT INTO drink (drink, manufacturer, supplier, price, drink_order)
VALUES('coke', 'coca-cola', 'sysco', 2.5, 3);
