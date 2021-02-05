REM   Script: Activity10
REM   Subquery

INSERT INTO salesman 
VALUE(100, 'Anirban Das', 'Pune', 100);

SELECT * 
FROM salesman;

CREATE TABLE salesman ( 
	 
    salesman_id int, 
	 
    salesman_name varchar2(32), 
	 
    salesman_city varchar2(32), 
	 
    commission int 
	 
);

Select * 
from salesman;

Describe salesman


INSERT INTO salesman 
VALUE(100, 'Anirban Das', 'Pune', 100);

INSERT INTO salesman 
VALUES(100, 'Anirban Das', 'Pune', 100);

INSERT INTO salesman 
VALUES(100, 'Anirban Das', 'Pune', 100);

SELECT * 
FROM salesman;

INSERT ALL 
VALUES(200, 'Leo Messi', 'Barcelona', 100);

VALUES(300, 'Cristiano Ronaldo', 'Juventus', 50); 


SELECT 1 FROM DUAL;

INSERT ALL 
INTO salesman VALUES(200, 'Leo Messi', 'Barcelona', 100);

INTO salesman VALUES(300, 'Cristiano Ronaldo', 'Juventus', 50); 


SELECT 1 FROM DUAL;

INSERT ALL 
INTO salesman VALUES(200, 'Leo Messi', 'Barcelona', 100) 
INTO salesman VALUES(300, 'Cristiano Ronaldo', 'Juventus', 50) 
SELECT 1 FROM DUAL;

SELECT salesman_id, salesman_city 
FROM salesman;

SELECT * 
FROM salesman 
WHERE salesman_city='Barcelona';

SELECT salesman_id, commission 
FROM salesman 
WHERE salesman_name='Leo Messi';

ALTER TABLE salesman 
ADD Grade int;

UPDATE salesman 
SET Grade = 100;

SELECT * 
FROM salesman;

UPDATE salesman 
SET Grade = 200 
WHERE salesman_city='Howrah';

Select * 
From salesman;

UPDATE salesman 
SET Grade = 200 
WHERE salesman_city='Pune';

UPDATE salesman 
SET Grade = 300 
WHERE salesman_name='Leo Messi';

UPDATE salesman 
SET salesman_name='Lionel Messi' 
WHERE salesman_name='Leo Messi';

SELECT * 
FROM salesman;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no, order_date from orders order by order_date;

select order_no, purchase_amount from orders order by purchase_amount DESC;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

select SUM(purchase_amount) AS "Total sum" from orders;

select AVG(purchase_amount) AS "Average" from orders;

select MAX(purchase_amount) AS "Maximum" from orders;

select MIN(purchase_amount) AS "Minumum" from orders;

select COUNT(distinct salesman_id) AS "Total count" from orders;

SELECT customer_id, MAX(purchase_amount) AS "Max Amount" FROM orders GROUP BY customer_id;

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders  
WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

insert into customers values  
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers  
values(3002, 'Nick Rimando', 'New York', 100, 5001), 
values(3007, 'Brad Davis', 'New York', 200, 5001), 
values(3005, 'Graham Zusi', 'California', 200, 5002), 
values(3008, 'Julian Green', 'London', 300, 5002), 
values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
values(3001, 'Brad Guzan', 'London', 300, 5005);

insert all 
INTO customers values(3002, 'Nick Rimando', 'New York', 100, 5001), 
INTO customers values(3007, 'Brad Davis', 'New York', 200, 5001), 
INTO customers values(3005, 'Graham Zusi', 'California', 200, 5002), 
INTO customers values(3008, 'Julian Green', 'London', 300, 5002), 
INTO customers values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
INTO customers values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
INTO customers values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
INTO customers values(3001, 'Brad Guzan', 'London', 300, 5005), 
 
Select 1 from dual;

insert all 
INTO customers values(3002, 'Nick Rimando', 'New York', 100, 5001), 
INTO customers values(3007, 'Brad Davis', 'New York', 200, 5001), 
INTO customers values(3005, 'Graham Zusi', 'California', 200, 5002), 
INTO customers values(3008, 'Julian Green', 'London', 300, 5002), 
INTO customers values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
INTO customers values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
INTO customers values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
INTO customers values(3001, 'Brad Guzan', 'London', 300, 5005), 
Select 1 from dual;

insert all 
into customers values(3002, 'Nick Rimando', 'New York', 100, 5001), 
into customers values(3007, 'Brad Davis', 'New York', 200, 5001), 
into customers values(3005, 'Graham Zusi', 'California', 200, 5002), 
into customers values(3008, 'Julian Green', 'London', 300, 5002), 
into customers values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
into customers values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
into customers values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
into customers values(3001, 'Brad Guzan', 'London', 300, 5005), 
select 1 from dual;

select * 
from customers;

define customers


describe customers


insert all 
into customers values(3002, 'Nick Rimando', 'New York', 100, 5001), 
into customers values(3007, 'Brad Davis', 'New York', 200, 5001), 
into customers values(3005, 'Graham Zusi', 'California', 200, 5002), 
into customers values(3008, 'Julian Green', 'London', 300, 5002), 
into customers values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
into customers values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
into customers values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
into customers values(3001, 'Brad Guzan', 'London', 300, 5005), 
select 1 from dual;

insert into customers 
values(3002, 'Nick Rimando', 'New York', 100, 5001);

insert into customers 
values(3007, 'Brad Davis', 'New York', 200, 5001), 
values(3005, 'Graham Zusi', 'California', 200, 5002), 
values(3008, 'Julian Green', 'London', 300, 5002), 
values(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
values(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
values(3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
values(3001, 'Brad Guzan', 'London', 300, 5005);

insert into customers 
values(3007, 'Brad Davis', 'New York', 200, 5001);

insert into customers 
values(3005, 'Graham Zusi', 'California', 200, 5002);

insert into customers 
values(3008, 'Julian Green', 'London', 300, 5002);

insert into customers 
values(3004, 'Fabian Johnson', 'Paris', 300, 5006);

insert into customers 
values(3009, 'Geoff Cameron', 'Berlin', 100, 5003);

insert into customers 
values(3003, 'Jozy Altidor', 'Moscow', 200, 5007);

insert into customers 
values(3001, 'Brad Guzan', 'London', 300, 5005);

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select * 
from customers;

select * 
from salesman;

SELECT a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name, a.city, a.grade, b.salesman_name AS "Salesman", b.city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name, a.city, a.grade, b.salesman_name AS "salesman", b.salesman_city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

SELECT * FROM orders 
WHERE salesman_id=(SELECT DISTINCT salesman_id FROM orders WHERE customer_id=100);

SELECT * FROM orders 
WHERE salesman_id=(SELECT DISTINCT salesman_id FROM orders WHERE customer_id=3007);

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE salesman_city='New York');

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE salesman_city='Barcelona');

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE salesman_city='Pune');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

