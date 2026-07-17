SELECT * 
FROM Parks_and_Recreation.Employee_salary
;


SELECT * 
FROM employee_demographics
;


SELECT dem.employee_id, age, occupation, salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;



SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_id,
emp2.first_name AS first_name,
emp2.last_name AS last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
ON emp1.employee_id + 1 = emp2.employee_id
;


SELECT *
FROM parks_departments;


---- JOINING MULTIPLE TABLES -----


SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
JOIN parks_departments AS pd
ON sal.dept_id = pd.department_id
;




SELECT dem.employee_id,
dem.first_name,
dem.last_name,
dem.age,
dem.gender,
dem.birth_date,
sal.occupation,
sal.salary,
sal.dept_id,
pd.department_id,
pd.department_name
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
JOIN parks_departments AS pd
ON sal.dept_id = pd.department_id
;