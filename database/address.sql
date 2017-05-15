DROP TABLE IF EXISTS address;

CREATE TABLE address (
  id SERIAL PRIMARY KEY,
  street VARCHAR(250),
  city VARCHAR(250),
  state VARCHAR(250),
  zip VARCHAR(250),
  primary_address BOOLEAN,
  customer_id INTEGER,
  FOREIGN KEY(customer_id) REFERENCES customer(id) ON DELETE CASCADE
);


INSERT INTO address (street, city, state, zip, primary_address, customer_id)
VALUES('90 taco st', 'san francisco', 'CA', '94101', true, 1);
INSERT INTO address (street, city, state, zip, primary_address, customer_id)
VALUES('80 hip st', 'san jose', 'CA', '9501', false, 2);
INSERT INTO address (street, city, state, zip, primary_address, customer_id)
VALUES('711 slurpie ave', 'san francisco', 'CA', '91234', true, 3);
