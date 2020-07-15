-- функция проверки указал ли пользователь имя

DROP PROCEDURE IF EXISTS check_name;
DELIMITER //
CREATE PROCEDURE check_name()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE user_id INT;
  DECLARE user_name VARCHAR(50);
 
  DECLARE reading_users CURSOR FOR SELECT id, name FROM users;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN reading_users;
  cycle: LOOP
    FETCH reading_users INTO user_id, user_name;
   
    IF done THEN
      LEAVE cycle;
    END IF;
    
    SELECT DISTINCT CONCAT(
      "пользователь с id ", user_id, 
      IF(user_name LIKE '% %', " указал имя", " не указал имя")
      ) AS RESULT;
    
  END LOOP;

  CLOSE reading_users;
END//
DELIMITER ;

CALL check_name;


-- создание триггера на вывод ошибки если пользователь не указал никнейм, или оно уже существует

DROP TRIGGER IF EXISTS check_nickname;
DELIMITER //
CREATE TRIGGER check_nickname BEFORE INSERT ON users
FOR EACH ROW BEGIN 
  IF EXISTS(SELECT nickname FROM users) OR NEW.nickname IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Pick another nickname';
  END IF;
END//
DELIMITER ;

INSERT INTO users (nickname) VALUES ('Ettie');
INSERT INTO users (nickname) VALUES (NULL);


