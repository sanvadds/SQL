CREATE TABLE customer
(
  ID BIGINT PRIMARY KEY,
  NAME VARCHAR(50) NOT NULL,
  AGE INT NOT NULL,
  CITY CHAR(10),
  SALARY DECIMAL(10, 2)
);

INSERT INTO customer
(ID,NAME, AGE, CITY, SALARY)
VALUES
(1, 'Sam', 26, 'Delhi', 8000),
(2, 'Ram', 30, 'Bengalore', 15000),
(3, 'Jam', 40, 'Mumbai', 10000),
(4, 'Karan', 42, 'Pune', 11000);

SELECT * FROM customer;

SELECT COUNT(*) FROM customer;

SELECT SUM(SALARY) FROM customer;

SELECT max(SALARY) FROM customer;

SELECT min(SALARY) FROM customer;

SELECT ROUND(AVG(SALARY),2) FROM customer;
