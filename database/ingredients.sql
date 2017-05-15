DROP TABLE IF EXISTS ingredients;

CREATE TABLE ingredients (
  id SERIAL PRIMARY KEY,
  cheese BOOLEAN,
  pineapple BOOLEAN,
  chicken BOOLEAN,
  sasuage BOOLEAN,
  pepperoni BOOLEAN,
  mushroom BOOLEAN,
  ingredients_id INTEGER,
  FOREIGN KEY (ingredients_id) REFERENCES pizza(id) ON DELETE CASCADE
);

INSERT INTO ingredients (cheese, pineapple, chicken, sasuage, pepperoni, mushroom, ingredients_id)
VALUES(true, true, true, false, false, false, 1);
INSERT INTO ingredients (cheese, pineapple, chicken, sasuage, pepperoni, mushroom, ingredients_id)
VALUES(true, false, true, true, true, false, 2);
INSERT INTO ingredients (cheese, pineapple, chicken, sasuage, pepperoni, mushroom, ingredients_id)
VALUES(true, true, false, false, false, true, 3);
