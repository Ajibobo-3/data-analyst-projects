DELIMITER $$
CREATE PROCEDURE give_salary_value(IN emp_id INT)
BEGIN
SELECT salary 
FROM employee_salary
WHERE employee_id = emp_id;
END $$
DELIMITER ;

CALL give_salary_value(2);



DELIMITER $$
CREATE PROCEDURE sal_value ()
BEGIN
SELECT first_name,
last_name,
salary
FROM employee_salary
WHERE salary >= 50000;
SELECT first_name,
last_name,
salary
FROM employee_salary
WHERE salary >= 10000;
END $$
DELIMITER ;

CALL sal_value ();




