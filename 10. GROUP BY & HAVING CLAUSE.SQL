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

SELECT CITY, SUM(SALARY) AS total FROM customer
WHERE age < 40
GROUP BY CITY
HAVING SUM(SALARY) > 20000
order by total ASC

-- Sequence of execution of SQL clauses
FROM
WHERE
GROUP BY
HAVING
SELECT
DISTINCT
ORDER
LIMIT / OFFSET