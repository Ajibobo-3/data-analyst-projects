SELECT first_name,
last_name,
salary,
    CASE
WHEN salary < 50000 THEN salary * 1.05
WHEN salary > 50000 THEN salary * 1.07
    END AS raise,
    CASE
WHEN dept_id = 6 THEN salary *0.1
END AS bonus
FROM employee_salary
;



SELECT first_name,
last_name,
age,
    CASE
WHEN age > 60 THEN 'Neardeath'
WHEN age < 40 THEN 'young'
WHEN age BETWEEN 40 and 60  THEN 'old'
END AS age_bracket
FROM employee_demographics
;