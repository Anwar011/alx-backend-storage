-- Safe divide 
-- SQL script that creates a function SafeDiv
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN IF(b = 0, 0, a / b);
END //

DELIMITER ;
