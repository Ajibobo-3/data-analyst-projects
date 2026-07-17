SELECT occupation, AVG(salary)
FROM Parks_and_Recreation.employee_salary
WHERE occupation <> 'Entrepreneur'
GROUP BY occupation
HAVING AVG(salary) > 50000
;

SELECT *
FROM Parks_and_Recreation.employee_salary
;