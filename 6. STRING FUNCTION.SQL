CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

SELECT * FROM employees;

INSERT INTO employees
(employee_id, first_name, last_name, email, phone_number)
VALUES
(1,'Sanvad',' Shirke','s@gmail.com',7972806721),
(2,'Pranali',' Shirke','p@gmail.com',9096789823);

-- UPPER() FUNCTION
SELECT UPPER(first_name) FROM employees;

-- LOWER() FUNCTION
SELECT LOWER(last_name) FROM employees;

-- CONCAT() FUNCTION
SELECT concat(first_name,last_name) FROM employees;

-- TRIM() FUNCTION
SELECT CONCAT(first_name,TRIM(last_name)) from employees;

-- LENGTH() FUNCTION
SELECT LENGTH(last_name) FROM employees;

-- NOW() FUNCTION
SELECT Now() FROM employees;

-- FORMAT() FUNCTION
WITH data (query) AS (
    VALUES (FORMAT('SELECT %s as result;', 'Hello World'))
)
SELECT query FROM data;

-- REPLACE() FUNCTION
SELECT first_name, REPLACE(first_name,'a','_') FROM employees;

