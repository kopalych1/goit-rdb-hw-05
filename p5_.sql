DROP FUNCTION IF EXISTS divide_numbers;

DELIMITER //

CREATE FUNCTION divide_numbers(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN a / b;
END //

DELIMITER ;

SELECT *, divide_numbers(quantity, 100) AS divided_quantity FROM order_details;