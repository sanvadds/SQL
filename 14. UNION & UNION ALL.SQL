CREATE TABLE CustA
(
  	cust_name varchar(50),
  	amount bigint
 );
  
INSERT INTO CustA (cust_name, amount) VALUES ('Madan Mohan', 2100);
INSERT INTO CustA (cust_name, amount) VALUES ('Gopi Nath', 1200);
INSERT INTO CustA (cust_name, amount) VALUES ('Govind Dev', 5000);
  
SELECT * FROM CustA;
  
CREATE TABLE CustB
(
    cust_name varchar(50),
    amount bigint
);
   
INSERT INTO CustB (cust_name,  amount) VALUES ('Gopal Batt',1500);
INSERT INTO CustB (cust_name, amount) VALUES ('Madan Mohan', 2100);
   
SELECT * FROM CustB;

SELECT * FROM CustA
UNION
SELECT * FROM CustB;

SELECT * FROM CustA
UNION ALL
SELECT * FROM CustB;
   
   
 
                  