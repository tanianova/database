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

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  description TEXT COMMENT '��������',
  price DECIMAL (11,2) COMMENT '����',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = '�������� �������';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 7890.00, 1),
  ('Intel Core i5-7400', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 12700.00, 1),
  ('AMD FX-8320E', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 4780.00, 1),
  ('AMD FX-8320', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', '����������� ����� ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', '����������� ����� Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', '����������� ����� MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = '������';

 -- 1 ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
INSERT INTO orders (user_id ) VALUES (4),  (6);

SELECT * FROM users;
SELECT * FROM orders;

SELECT
  user_id 
FROM
  users
JOIN 
  orders
ON users.id = orders.user_id ; 
  
-- 2.�������� ������ ������� products � �������� catalogs, ������� ������������� ������.

SELECT * FROM products;
SELECT * FROM catalogs;

SELECT
 products.name, catalogs.name 
FROM 
  products
JOIN 
  catalogs
ON products.catalog_id = catalogs.id;

/* 3.����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name).
 ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
 �������� ������ ������ flights � �������� ���������� �������. */

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_city VARCHAR(255) NOT NULL,
  to_city VARCHAR(255) NOT NULL
);

INSERT INTO 
  flights 
VALUES
  (NULL, 'Moscow', 'Omsk'),
  (NULL, 'Novgorod', 'Kazan'),
  (NULL, 'Irkutsk', 'Moscow'),
  (NULL, 'Omsk', 'Irkutsk'),
  (NULL, 'Moscow', 'Kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);

INSERT INTO 
  cities 
VALUES
  ('Moscow', '������'),
  ('Novgorod', '��������'),
  ('Irkutsk', '�������'),
  ('Omsk', '����'),
  ('Kazan', '������');
 
SELECT * FROM cities; 
SELECT * FROM flights;

UPDATE
  flights
JOIN
  cities
ON   
  flights.from_city  = cities.label
SET 
  flights.from_city = cities.name;
 
UPDATE
  flights
JOIN
  cities
ON   
  flights.to_city  = cities.label
SET 
  flights.to_city = cities.name;
 

