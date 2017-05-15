DROP TABLE IF EXISTS user_login;

CREATE TABLE user_login (
  id SERIAL PRIMARY KEY,
  email VARCHAR(250),
  password VARCHAR(250),
  user_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES customer(id) ON UPDATE CASCADE
);

INSERT INTO user_login (email, password, user_id)
VALUES('babycakes2@yahoo.com', 'y7632moa', 1);
INSERT INTO user_login (email, password, user_id)
VALUES('fruitcakesyum@hotmail.com', '233apples', 2);
INSERT INTO user_login (email, password, user_id)
VALUES('ilikepies@gmail.com', 'catsand1234', 3);
