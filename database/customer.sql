DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  phone_number VARCHAR(250)
);


INSERT INTO customer (name, phone_number)
VALUES ('john', '555-555-5555');
INSERT INTO customer (name, phone_number)
VALUES('zoe', '123-456-7890');
INSERT INTO customer (name, phone_number)
VALUES('tina', '888-666-123')
