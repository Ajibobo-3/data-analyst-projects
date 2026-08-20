SELECT *
FROM parks_departments
;


SELECT *
FROM employee_salary 
WHERE employee_id 
    IN ( SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1
)
;


SELECT first_name, last_name,
(SELECT AVG(salary) 
FROM employee_salary WHERE salary > 40000) AS avg_salary
FROM employee_salary
;


SELECT 
    d.first_name, 
    d.last_name,
    s.salary,
    (SELECT AVG(salary) FROM employee_salary WHERE salary > 40000) AS high_earner_avg
FROM employee_demographics d
JOIN employee_salary s ON d.employee_id = s.employee_id
WHERE s.salary > 40000; -- Filters the outer list to match the inner calculation criteria