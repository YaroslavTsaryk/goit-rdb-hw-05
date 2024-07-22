DROP FUNCTION IF EXISTS Divide;

DELIMITER //

CREATE FUNCTION Divide(number1 FLOAT,number2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    IF number2 = 0 THEN
            SET result = null;
    ELSE
			SET result = number1 / number2;
	END IF;
    
    RETURN result;
END //

DELIMITER ;