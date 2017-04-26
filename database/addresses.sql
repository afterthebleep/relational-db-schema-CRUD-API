DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
  id SERIAL PRIMARY KEY,
  street VARCHAR(250),
  city VARCHAR(250),
  state VARCHAR(250),
  zip VARCHAR(250),
  primary_address BOOLEAN,
  customer_id INTEGER REFERENCES customers(id)
);

ALTER TABLE addresses

ADD CONSTRAINT fkcustomer_id FOREIGN KEY(customer_id) REFERENCES customers(id)
