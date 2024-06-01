-- Задача 2. Выведите только чётные числа от 1 до 10.
-- Пример: 2,4,6,8,10

DROP PROCEDURE IF EXISTS evenIntegers;
DELIMITER //
CREATE PROCEDURE evenIntegers
(
IN beginNumber INT,
IN endNumber INT
)
BEGIN
	DECLARE result TEXT DEFAULT "";
	DECLARE digit INT;	
    
    REPEAT
		IF beginNumber MOD 2 = 0
			THEN
            SET digit = beginNumber;
			SET result = CONCAT(result, digit,",");
        END IF;
        SET beginNumber = beginNumber + 1;
        UNTIL beginNumber > endNumber
	END REPEAT;
    
    IF LENGTH(result) > 0 
    THEN
    SET result = SUBSTR(result, 1, LENGTH(result)-1) -- удаляем последнюю запятую
    END IF;
    
	SELECT result AS "Четные числа";

END;
