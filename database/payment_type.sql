DROP TABLE IF EXISTS payment_type;

CREATE TABLE payment_type (
  id SERIAL PRIMARY KEY,
  card_type VARCHAR(250),
  card_number BIGINT,
  expiration VARCHAR(250),
  ccv INTEGER,
  payment_id INTEGER,
  FOREIGN KEY (payment_id) references customer(id) ON DELETE CASCADE
);

INSERT INTO payment_type (card_type, card_number, expiration, ccv, payment_id)
VALUES('visa', '2837821123', '5/20', '120', 1);
INSERT INTO payment_type (card_type, card_number, expiration, ccv, payment_id)
VALUES('amex', '2837765761', '5/19', '101', 2);
INSERT INTO payment_type (card_type, card_number, expiration, ccv, payment_id)
VALUES('discovery', '55678212003', '5/20', '201', 3);
