DROP DATABASE example;
CREATE DATABASE IF NOT EXISTS example;
use example;

/*Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL UNIQUE,
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
);  

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
UPDATE users SET created_at = NOW(), updated_at = NOW();

/*Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них 
долгое время помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, 
сохранив введеные ранее значения.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL UNIQUE,
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255) COMMENT "Время создания строки",
  updated_at VARCHAR(255) COMMENT "Время обновления строки"
) COMMENT "Пользователи";  


INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '21.10.2017 8:10','21.10.2017 8:10'),
  ('Наталья', '1984-11-12', '22.10.2017 8:10','22.10.2017 8:10'),
  ('Александр', '1985-05-20', '23.10.2017 8:10','23.10.2017 8:10'),
  ('Сергей', '1988-02-14', '24.10.2017 8:10','24.10.2017 8:10'),
  ('Иван', '1998-01-12', '25.10.2017 8:10','25.10.2017 8:10'),
  ('Мария', '1992-08-29', '26.10.2017 8:10','26.10.2017 8:10');
 
SELECT * FROM users;
 
UPDATE users SET 
  created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
  updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
 
 
ALTER TABLE 
  users 
CHANGE 
  created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
CHANGE  
  updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

DESCRIBE users;

 /*
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если 
товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, 
после всех записей.
*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO storehouses_products (value) VALUES (13),(0),(6),(8),(0);

SELECT id,value FROM storehouses_products ORDER BY IF (value = 0, 1, 0), value; 
 
/*(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий ('may', 'august') */
 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29'); 

SELECT name, DATE_FORMAT(birthday_at, '%M') FROM users;

SELECT name FROM users WHERE DATE_FORMAT (birthday_at, '%M') IN ('may', 'august') ;


/*Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
Отсортируйте записи в порядке, заданном в списке IN.*/
 
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
/* сначала сделала сама
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY CASE 
WHEN id = 5 THEN 0
WHEN id = 1 THEN 1
WHEN id = 2 THEN 2
END;
*/
 
SELECT id,name, FIELD(id, 5, 1, 2) AS pos FROM catalogs WHERE id IN (5, 1, 2);

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5,1,2) ;

/*Подсчитайте средний возраст пользователей в таблице users*/
SELECT * FROM users;

SELECT name, TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age FROM users;

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS average_age FROM users;


/*Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
 Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/
SELECT YEAR (NOW()), MONTH (birthday_at), DAY(birthday_at) FROM users;

SELECT DATE(CONCAT_WS('-', YEAR (NOW()), MONTH (birthday_at), DAY(birthday_at))) AS date_day FROM users;

SELECT 
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR (NOW()), MONTH (birthday_at), DAY(birthday_at))), '%W') AS date_day, 
  COUNT(*) AS total 
FROM 
  users
GROUP BY
  date_day
ORDER BY 
  total DESC;

/* Подсчитайте произведение чисел в столбце таблицы*/

 SELECT EXP(SUM(LN(id))) FROM catalogs;