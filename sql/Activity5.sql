REM   Script: Activity5
REM   Update Data

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

