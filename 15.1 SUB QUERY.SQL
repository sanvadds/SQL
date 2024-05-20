-- INIT database
CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  amount bigint,
  mode VARCHAR(255),
  payment_date date
);
SELECT * FROM customer;

INSERT INTO customer(amount, mode, payment_date) VALUES (60,'cash','2020-09-24');
INSERT INTO customer(amount, mode, payment_date) VALUES (30,'credit card','2022-01-28');
INSERT INTO customer(amount, mode, payment_date) VALUES (110,'mobile payment','2020-07-19');
INSERT INTO customer(amount, mode, payment_date) VALUES (70,'cash','2021-03-2');
INSERT INTO customer(amount, mode, payment_date) VALUES (80,'cash','2021-12-12');

-- QUERY database
SELECT * FROM customer;

SELECT avg(amount) from customer;

SELECT * FROM customer
WHERE amount > 70;

SELECT * 
FROM customer
WHERE amount >(SELECT avg(amount) from customer);