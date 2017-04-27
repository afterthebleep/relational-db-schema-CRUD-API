DROP TABLE IF EXISTS payment_type;

CREATE TABLE payment_type (
  id SERIAL PRIMARY KEY,
  card_type VARCHAR(250),
  card_number BIGINT,
  expiration VARCHAR(250),
  ccv INTEGER,
  payment_id INTEGER,
  FOREIGN KEY (payment_id) references customer(id)
);
