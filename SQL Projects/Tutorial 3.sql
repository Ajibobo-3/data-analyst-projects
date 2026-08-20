
SELECT first_name,
 last_name
FROM Parks_and_Recreation.employee_salary;


SELECT occupation, AVG(salary) AS average_pay
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation
ORDER BY average_pay DESC;





SELECT *
FROM  Parks_and_Recreation.employee_demographics;


SELECT gender, AVG (age) AS average_age
FROM  Parks_and_Recreation.employee_demographics
GROUP BY gender
;


SELECT *
FROM  Parks_and_Recreation.employee_demographics
ORDER BY gender, age
;
