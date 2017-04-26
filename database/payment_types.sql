DROP TABLE IF EXISTS payment_types;

CREATE TABLE payment_types (
  id SERIAL PRIMARY KEY,
  card_type VARCHAR(250),
  card_number INTEGER,
  expiration VARCHAR(250),
  ccv INTEGER,
  payment_id INTEGER,
  FOREIGN KEY (payment_id) references customers(id)
);
