-- INIT database
CREATE TABLE emp (
  emp_id SERIAL PRIMARY KEY,
  emp_name VARCHAR(100),
  manager_id bigint
);

INSERT INTO emp(emp_name, manager_id) VALUES ('Agni',3);
INSERT INTO emp(emp_name, manager_id) VALUES ('Akash',4);
INSERT INTO emp(emp_name, manager_id) VALUES ('Dharti',2);
INSERT INTO emp(emp_name, manager_id) VALUES ('Vayu',3);

-- QUERY database
SELECT * FROM emp;

-- SELF JOIN
SELECT * 
FROM emp AS T1
JOIN emp AS T2
ON T1.manager_id = T2.emp_id;

-- more simplified
SELECT T1.emp_name as employee_name, T2.emp_name as Manager_Name
FROM emp AS T1
JOIN emp AS T2
ON T1.manager_id = T2.emp_id





