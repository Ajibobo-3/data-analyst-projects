DELIMITER //
CREATE FUNCTION fnMonthName(MonthNumber INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
RETURN MONTHNAME (STR_TO_DATE(CONCAT('2026- ', MonthNumber, ' -01'), '%Y-%m-%d'));
END //
DELIMITER ;
SELECT fnMonthName(1) AS Month_1, fnMonthName(12) AS Month_12;


SELECT fnMonthName(6) AS Month_6, fnMonthName(11) AS Month_11;