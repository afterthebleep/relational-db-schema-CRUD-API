DROP TABLE IF EXISTS address;

CREATE TABLE address (
  id SERIAL PRIMARY KEY,
  street VARCHAR(250),
  city VARCHAR(250),
  state VARCHAR(250),
  zip VARCHAR(250),
  primary_address BOOLEAN,
  customer_id INTEGER REFERENCES customer(id)
);

ALTER TABLE address

ADD CONSTRAINT fkcustomer_id FOREIGN KEY(customer_id) REFERENCES customer(id)
