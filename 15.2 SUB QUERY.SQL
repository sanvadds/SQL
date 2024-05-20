-- INIT database
CREATE TABLE payment (
  customer_id SERIAL PRIMARY KEY,
  amount bigint,
  mode VARCHAR(255),
  payment_date date
);

INSERT INTO payment(amount, mode, payment_date) VALUES (60,'cash','2020-09-24');
INSERT INTO payment(amount, mode, payment_date) VALUES (30,'credit card','2022-01-28');
INSERT INTO payment(amount, mode, payment_date) VALUES (110,'mobile payment','2020-07-19');
INSERT INTO payment(amount, mode, payment_date) VALUES (70,'cash','2021-03-2');
INSERT INTO payment(amount, mode, payment_date) VALUES (80,'cash','2021-12-12');

-- QUERY database
SELECT * FROM payment;

-- Another table
create table customer(
	customer_id bigint primary key,
  	first_name varchar(50),
  	last_name varchar(50),
  	address_id bigint
);

insert into customer(customer_id, first_name, last_name, address_id) values (1, 'Mary','Smith',5);
insert into customer(customer_id, first_name, last_name, address_id) values (3, 'Linda','Williams',7);
insert into customer(customer_id, first_name, last_name, address_id) values (4, 'Barbara','Jonas',8);
insert into customer(customer_id, first_name, last_name, address_id) values (2, 'Madan','Mohan',6);

SELECT * from customer;

-- sub query
select customer_id, amount, mode 
from payment
where customer_id in (select customer_id from customer);

-- exists 
select customer_id, first_name, last_name
from customer as c
where exists (
  				select customer_id, amount, mode 
  				from payment p
             	where p.customer_id = c.customer_id
             	AND amount > 50);






  