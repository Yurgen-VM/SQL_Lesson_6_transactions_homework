-- Задача 1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS timeConvert;
DELIMITER //
CREATE PROCEDURE timeConvert
(
IN timeSecond INT
)
BEGIN 
	DECLARE quentiDays INT;
    DECLARE quentiHours INT;
    DECLARE quentiMinutes INT;
    DECLARE quentiSeconds INT;
    DECLARE result TEXT;
    
    SET quentiDays = timeSecond DIV 86400;
    SET quentiHours = (timeSecond % 86400) DIV 3600;
    SET quentiMinutes = (timeSecond % 3600) dIV 60;
    SET quentiSeconds  = (timeSecond % 60);
    SET result = CONCAT( quentiDays, " days ", quentiHours, " hours ", quentiMinutes, " minutes ", quentiSeconds, " seconds ");
       
SELECT result;  
        
END;

 