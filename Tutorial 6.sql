SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;


SELECT first_name,
last_name,
'old_man' AS Label
FROM employee_demographics
WHERE age > 40
AND gender = 'male'
   UNION
SELECT first_name,
last_name,
'Highest Paid male' AS Label
FROM employee_salary
WHERE salary > 50000
    UNION
SELECT first_name,
last_name,
'old_lady' AS Label
FROM employee_demographics
WHERE age > 40
AND gender = 'female'
ORDER BY first_name, last_name
;
