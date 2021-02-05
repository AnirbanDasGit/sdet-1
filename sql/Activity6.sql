REM   Script: Activity6
REM   Sort

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
