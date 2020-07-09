CREATE DATABASE IF NOT EXISTS shop;
USE shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина' ENGINE=InnoDB;

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

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

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);



/*Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в 
таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и 
 содержимое поля name.*/
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id INT(11) NOT NULL,
  table_name VARCHAR(50) NOT NULL,
  created_at DATETIME NOT NULL,
  name_value VARCHAR(50) NOT NULL 
) ENGINE = Archive;

-- триггер для users
DROP TRIGGER IF EXISTS logs_users;
DELIMITER //
CREATE TRIGGER logs_users AFTER INSERT ON users
FOR EACH ROW BEGIN  
  INSERT INTO logs SET id = NEW.id, table_name = 'users', created_at = NOW(), name_value = NEW.name;
END //
DELIMITER ;

-- проверка триггера logs_users
SELECT * FROM users;
SELECT  * FROM logs;
INSERT INTO users(name) VALUES ('tati');

-- триггер для catalogs
DROP TRIGGER IF EXISTS logs_catalogs;
DELIMITER //
CREATE TRIGGER logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW BEGIN  
  INSERT INTO logs SET id = NEW.id, table_name = 'catalogs', created_at = NOW(), name_value = NEW.name;
END //
DELIMITER ;

-- проверка триггера catalogs
SELECT * FROM catalogs;
SELECT  * FROM logs;
INSERT INTO  catalogs(name) VALUES ('новый процессор');

-- триггер для products
DROP TRIGGER IF EXISTS logs_products;
DELIMITER //
CREATE TRIGGER logs_products AFTER INSERT ON products
FOR EACH ROW BEGIN  
  INSERT INTO logs SET id = NEW.id, table_name = 'catalogs', created_at = NOW(), name_value = NEW.name;
END //
DELIMITER ;

-- проверка триггера catalogs
SELECT * FROM products;
SELECT  * FROM logs;
INSERT INTO  products(name) VALUES ('INTEL CORE');



/*(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.*/

DROP PROCEDURE IF EXISTS insert_records;
DELIMITER //
CREATE PROCEDURE insert_records()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 100 DO
    INSERT INTO users(name) VALUES (CONCAT('user_', i));
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL insert_records(); 



/*В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.*/

-- создаем коллекцию IP адресов. в коллекции могут быть только уникальные значения, значит, мы сможем
-- посчитать кол-во ip адресов, т.е. кол-во пользователей, которые посещали сайт
SADD ip '192.68.0.0.1' '192.68.0.0.2' '192.68.0.0.3' '192.68.0.0.4'
-- проверяем что находится в коллекции:
SMEMBERS ip
-- для подсчет значений в коллекции ip:
SCARD ip 

/*При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу 
и наоборот, поиск электронного адреса пользователя по его имени.*/

-- если задача состоит только в том чтобы искать по имени имейл и наоборот, можно создать хэш с присваиванием
-- ключу следующих значений:

HSET name_to_email Tati tati@ya.ru
HSET email_to_name tati@ya.ru Tati 
-- получаем значения
HGET name_to_email Tati
HGET email_to_name tati@ya.ru


/*Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.*/
products, catalogs

-- создаю базу данных products, вношу в нее 1 значение:
use products
db.products.insert( 
  {
    'name': 'Intel Core i3-8100',
    'description': 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
    'price': '7890.00',
    'catalog_id': '1',
    'created_at': new Date(),
    'updated_at': new Date()
  }  
)

-- для вставки второго значения провожу аналогичные действия:
db.products.insert( 
  {
    'name': 'ASUS ROG MAXIMUS X HERO',
    'description': 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
    'price': '19310.00',
    'catalog_id': '2',
    'created_at': new Date(),
    'updated_at': new Date()
  }  
)

-- для таблицы catalogs можно воспользоваться insertMany():
use catalogs 
db.catalogs.insertMany(
  {'name':'Процессоры'},
  {'name':'Материнские платы'},
  {'name':'Видеокарты'},
  {'name':'Жесткие диски'},
  {'name':'Оперативная память'}
)


