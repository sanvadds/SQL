-- CREATE TABLE EXAMPLE
CREATE TABLE customer
(
  "ID" int8 PRIMARY KEY,
  "NAME" varchar NOT NULL,
  "AGE" int NOT NULL,
  "CITY" char,
  "SALARY" numeric
  );
 
 -- DATA INSERT EXAMPLE
 INSERT INTO customer
(ID,NAME, AGE, CITY, SALARY)
VALUES
(1, 'Sam', 26, 'Delhi', 8000),
(2, 'Ram', 30, 'Bengalore', 15000),
(3, 'Jam', 40, 'Mumbai', 10000),
(4, 'Karan', 42, 'Pune', 11000);

-- DISTINCT EXAMPLE
SELECT DISTINCT(AGE) FROM customer;

-- OPERATOR EXAMPLE
SELECT NAME FROM customer
WHERE AGE > 30 AND SALARY > 10000;

SELECT * FROM customer 
WHERE SALARY BETWEEN 10000 AND 15000;

-- LIMIT EXAMPLE
SELECT * FROM customer 
LIMIT 2;

-- ORDER BY EXAMPLE
SELECT * FROM customer 
ORDER BY NAME;