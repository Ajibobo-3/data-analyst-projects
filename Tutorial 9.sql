SELECT dem.first_name,
dem.last_name,
gender,
salary,
AVG(salary) OVER(PARTITION BY gender) AS avg_salary
FROM employee_salary AS sal
JOIN employee_demographics AS dem ON sal.employee_id = dem.employee_id
;





SELECT dem.first_name,
dem.last_name,
gender,
salary,
AVG(salary)
FROM employee_salary AS sal
JOIN employee_demographics AS dem ON sal.employee_id = dem.employee_id
GROUP BY dem.first_name,
dem.last_name,
gender,
salary
;


