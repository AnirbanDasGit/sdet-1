REM   Script: Activity3
REM   Different Select use

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

