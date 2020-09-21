DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(255)
SELECT HOUR(CURRENT_TIME()) INTO @h;
BEGIN
DECLARE t VARCHAR(255);
IF @h < 12 and @h >= 6 THEN SET t = 'Доброе утро';
ELSEIF @h >= 12 and @h < 18 THEN SET t = 'Добрый день';
ELSEIF @h >= 18 and @h < 0 THEN SET t = 'Добрый вечер';
ELSE SET t = 'Доброй ночи';
END IF;
RETURN t;
END //
DELIMITER ;

CREATE TRIGGER not_both_null
    BEFORE INSERT ON products
    FOR EACH ROW
BEGIN
IF NEW.name is NULL AND NEW.description is NULL THEN
SIGNAL SQLSTATE '45000';
END IF;
END;