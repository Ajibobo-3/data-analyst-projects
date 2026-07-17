SELECT * 
 FROM Parks_and_Recreation.employee_demographics
 WHERE first_name = 'Andy' ;
 
 
 
 SELECT * 
 FROM Parks_and_Recreation.employee_demographics
 WHERE age >= 40 AND gender != 'male'
;



SELECT * 
 FROM Parks_and_Recreation.employee_demographics
 WHERE birth_date LIKE '1980%'
;

 