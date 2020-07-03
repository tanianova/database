/*�������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� 
�����. � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ 
���������� ����� "������ ����", � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����".*/
DROP PROCEDURE IF EXISTS hello;
DELIMITER //
CREATE PROCEDURE hello()
BEGIN
  IF(CURTIME() BETWEEN '06:00:00' AND '12:00:00') THEN
    SELECT '������ ����'; 
  ELSEIF(CURTIME() BETWEEN '12:00:00' AND '18:00:00') THEN
    SELECT '������ ����';
  ELSEIF(CURTIME() BETWEEN '18:00:00' AND '00:00:00') THEN
    SELECT '������ �����'; 
  ELSE
    SELECT '������ ����'; 
  END IF;
END //
DELIMITER ;

CALL hello();


/*� ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. ��������� 
����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� �������� NULL 
 �����������. ��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. 
 ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.*/

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  name VARCHAR(255),
  description TEXT
);

DROP TRIGGER IF EXISTS not_null_operation;
DELIMITER //
CREATE TRIGGER not_null_operation BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '��� ���� � �������� NULL';
  END IF; 
END //
DELIMITER ;


INSERT INTO products VALUES (NULL, '���������');
INSERT INTO products VALUES ('MSI Geforce GT 1030 AERO', '����������');
INSERT INTO products VALUES (NULL, NULL);

SELECT * FROM products;


