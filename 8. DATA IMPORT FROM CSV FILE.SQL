CREATE TABLE employee
(
  "ID" int8 PRIMARY KEY,
  "NAME" varchar(50) NOT NULL
 );
 
 SELECT * FROM employee;
 
 -- PostgreSQL 
 -- FOR THIS COMMAND REQUIRED ADMIN ACCESS
 COPY employee FROM '..path\test_data.csv'
 DELIMITER ',' CSV HEADER;
 
 SELECT * FROM employee;
 
 -- WITHOUT ADMIN ACCESS
 \copy employee FROM '..path\test_data.csv' DELIMITER ',' CSV HEADER
 
 -- MySQL
 LOAD DATA INFILE '..path\test_data.csv'
 INTO TABLE employee
 FIELDS TERMINATED BY ','   	-- BASED ON FILE
 ENCLOSED BY ' " '				-- BASED ON FILE
 LINES TERMINATED BY '\n'
 IGNORE 1 ROWS 					-- FOR HEADER
 
 -- SQL SERVER
 BULK INSERT employee
 FROM '..path\test_data.csv'
 WITH
 (
   FIELDTERMINATED = ',',
   ROWTERMINATED = '\n',
   FIRSTROW = 2
  );
  
  --SQLite
  .mode csv
  .import ..path\test_data.csv employee
 