DROP DATABASE example;
CREATE DATABASE IF NOT EXISTS example;
use example;

/*����� � ������� users ���� created_at � updated_at ��������� ��������������. 
��������� �� �������� ����� � ��������.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL UNIQUE,
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME,
  updated_at DATETIME
);  

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29');
 
UPDATE users SET created_at = NOW(), updated_at = NOW();

/*������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� 
������ ����� ���������� �������� � ������� "20.10.2017 8:10". ���������� ������������� ���� � ���� DATETIME, 
�������� �������� ����� ��������.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL UNIQUE,
  birthday_at DATE COMMENT '���� ��������',
  created_at VARCHAR(255) COMMENT "����� �������� ������",
  updated_at VARCHAR(255) COMMENT "����� ���������� ������"
) COMMENT "������������";  


INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', '21.10.2017 8:10','21.10.2017 8:10'),
  ('�������', '1984-11-12', '22.10.2017 8:10','22.10.2017 8:10'),
  ('���������', '1985-05-20', '23.10.2017 8:10','23.10.2017 8:10'),
  ('������', '1988-02-14', '24.10.2017 8:10','24.10.2017 8:10'),
  ('����', '1998-01-12', '25.10.2017 8:10','25.10.2017 8:10'),
  ('�����', '1992-08-29', '26.10.2017 8:10','26.10.2017 8:10');
 
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
� ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, ���� 
����� ���������� � ���� ����, ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, 
����� ��� ���������� � ������� ���������� �������� value. ������, ������� ������ ������ ���������� � �����, 
����� ���� �������.
*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';

INSERT INTO storehouses_products (value) VALUES (13),(0),(6),(8),(0);

SELECT id,value FROM storehouses_products ORDER BY IF (value = 0, 1, 0), value; 
 
/*(�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
������ ������ � ���� ������ ���������� �������� ('may', 'august') */
 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29'); 

SELECT name, DATE_FORMAT(birthday_at, '%M') FROM users;

SELECT name FROM users WHERE DATE_FORMAT (birthday_at, '%M') IN ('may', 'august') ;


/*�� ������� catalogs ����������� ������ ��� ������ �������. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
������������ ������ � �������, �������� � ������ IN.*/
 
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '�������� �������',
  UNIQUE unique_name(name(10))
) COMMENT = '������� ��������-��������';

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');
 
/* ������� ������� ����
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY CASE 
WHEN id = 5 THEN 0
WHEN id = 1 THEN 1
WHEN id = 2 THEN 2
END;
*/
 
SELECT id,name, FIELD(id, 5, 1, 2) AS pos FROM catalogs WHERE id IN (5, 1, 2);

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5,1,2) ;

/*����������� ������� ������� ������������� � ������� users*/
SELECT * FROM users;

SELECT name, TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age FROM users;

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS average_age FROM users;


/*����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������.
 ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.*/
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

/* ����������� ������������ ����� � ������� �������*/

 SELECT EXP(SUM(LN(id))) FROM catalogs;