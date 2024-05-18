CREATE TABLE customer
(
  ID BIGINT PRIMARY KEY,
  NAME VARCHAR(50) NOT NULL,
  AGE INT NOT NULL,
  CITY CHAR(10),
  SALARY DECIMAL(10, 2)
);

INSERT INTO customer (ID, NAME, AGE, CITY, SALARY)
VALUES 
(1, 'Alice', 28, 'Hyderabad', 9500),
(2, 'Bob', 34, 'Kolkata', 12000),
(3, 'Charlie', 22, 'Chennai', 7000),
(4, 'Sam', 22, 'Chennai', 7000),
(5, 'Karan', 29, 'Mumbai', 17000),
(6, 'Bharat', 39, 'Delhi', 47000),
(7, 'Ajay', 35, 'Hyderabad', 37000),
(8, 'Ram', 41, 'Hyderabad', 97000);
 
SELECT * FROM customer;

create table payment 
(
  ID BIGINT PRIMARY KEY,
  amount BIGINT NOT NULL,
  mode varchar(50),
  payment_date date
  );

INSERT INTO payment 
(ID,amount,mode,payment_date) 
VALUES 
(1,50000,'cash','2024-05-30'),
(2,120000,'gpay','2022-04-20'),
(3,340000,'gpay','2021-08-21'),
(4,560000,'cash','2021-02-21'),
(9,450000,'internet_bank','2020-01-19'),
(10,60000,'gpay','2020-10-22'),
(11,40000,'cash','2020-11-24');

SELECT * FROM payment;
-- INNER JOIN
SELECT * FROM customer as c
INNER JOIN payment as p
on c.ID = p.ID;

-- LEFT JOIN
SELECT * FROM customer as c
LEFT JOIN payment as p
ON c.ID = p.ID;

-- RIGHT JOIN
SELECT * FROM customer as c
RIGHT join payment as p
ON c.ID = p.ID;

-- FULL OUTER JOIN
SELECT * FROM customer as c
FULL JOIN payment as p
ON C.ID = p.ID;