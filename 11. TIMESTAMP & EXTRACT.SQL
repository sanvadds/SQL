SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

create table payment 
(
  customer_id BIGINT PRIMARY KEY,
  amount BIGINT NOT NULL,
  mode varchar(50),
  payment_date date
  );

INSERT INTO payment 
(customer_id,amount,mode,payment_date) 
VALUES 
(100,50000,'cash','2024-05-30'),
(200,120000,'gpay','2022-04-20'),
(300,340000,'gpay','2021-08-21'),
(400,560000,'cash','2021-02-21'),
(500,450000,'internet_bank','2020-01-19'),
(600,60000,'gpay','2020-10-22'),
(700,40000,'cash','2020-11-24');

SELECT EXTRACT(YEAR FROM payment_date) AS month, payment_date FROM payment;

SELECT * from payment;
