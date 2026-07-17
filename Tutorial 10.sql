WITH CTE_example (first_name, last_name, salary, avg_sal)AS(
    SELECT first_name, last_name, salary, AVG(salary)
    FROM employee_salary
    GROUP BY first_name, last_name, salary
)
SELECT * FROM CTE_example
;