DROP TABLE IF EXISTS user_login;

CREATE TABLE user_login (
  id SERIAL PRIMARY KEY,
  email VARCHAR(250),
  password VARCHAR(250),
  user_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES customers(id)
);
