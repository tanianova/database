CREATE DATABASE vk;
use vk;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  first_name VARCHAR(100) NOT NULL COMMENT "��� ������������",
  last_name VARCHAR(100) NOT NULL COMMENT "������� ������������",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "�����",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "�������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������������";  

CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "������ �� ������������", 
  gender CHAR(1) NOT NULL COMMENT "���",
  birthday DATE COMMENT "���� ��������",
  city VARCHAR(130) COMMENT "����� ����������",
  country VARCHAR(130) COMMENT "������ ����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "�������"; 

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "������ �� ����������� ���������",
  to_user_id INT UNSIGNED NOT NULL COMMENT "������ �� ���������� ���������",
  body TEXT NOT NULL COMMENT "����� ���������",
  is_important BOOLEAN COMMENT "������� ��������",
  is_delivered BOOLEAN COMMENT "������� ��������",
  created_at DATETIME DEFAULT NOW() COMMENT "����� �������� ������"
) COMMENT "���������";

CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ���������� ��������� ���������",
  friend_id INT UNSIGNED NOT NULL COMMENT "������ �� ���������� ����������� �������",
  status_id INT UNSIGNED NOT NULL COMMENT "������ �� ������ (������� ���������) ���������",
  requested_at DATETIME DEFAULT NOW() COMMENT "����� ����������� ����������� �������",
  confirmed_at DATETIME COMMENT "����� ������������� �����������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������",  
  PRIMARY KEY (user_id, friend_id) COMMENT "��������� ��������� ����"
) COMMENT "������� ������";

CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "�������� �������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"  
) COMMENT "������� ������";

CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� �����",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "�������� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"  
) COMMENT "������";

CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "������ �� ������",
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������", 
  PRIMARY KEY (community_id, user_id) COMMENT "��������� ��������� ����"
) COMMENT "��������� �����, ����� ����� �������������� � ��������";

CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  user_id INT UNSIGNED NOT NULL COMMENT "������ �� ������������, ������� �������� ����",
  filename VARCHAR(255) NOT NULL COMMENT "���� � �����",
  size INT NOT NULL COMMENT "������ �����",
  metadata JSON COMMENT "���������� �����",
  media_type_id INT UNSIGNED NOT NULL COMMENT "������ �� ��� ��������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "����������";

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "������������� ������",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "�������� ����",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���� �����������";

ALTER TABLE profiles ADD photo_id INT UNSIGNED AFTER user_id;

CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE
);

INSERT user_statuses (id, name)
VALUES 
  (1, 'active'),
  (2, 'blocked'),
  (3, 'deleted');

ALTER TABLE users ADD status_id INT UNSIGNED NOT NULL DEFAULT 1 AFTER phone;

ALTER TABLE profiles ADD is_private BOOLEAN DEFAULT FALSE AFTER country;

ALTER TABLE friendship ADD COLUMN declined_at DATETIME AFTER confirmed_at;

ALTER TABLE messages ADD COLUMN media_id INT UNSIGNED AFTER body;

ALTER TABLE friendship DROP COLUMN requested_at; 

SELECT * FROM users LIMIT 10;

UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

UPDATE users SET status_id = 2 WHERE id IN (3, 32, 59, 34);
UPDATE users SET status_id = 3 WHERE id IN (33, 28, 52, 31, 90);

SELECT * FROM profiles LIMIT 10;

UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);

UPDATE profiles SET is_private = TRUE WHERE user_id > FLOOR(1 + RAND() * 100);  

UPDATE messages SET media_id = FLOOR(1 + RAND() * 100);

CREATE TEMPORARY TABLE extensions (name VARCHAR(50));

INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png');

UPDATE media SET filename = CONCAT('https://dropbox/vk/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');

ALTER TABLE media MODIFY COLUMN metadata JSON;

SELECT * FROM friendship;

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
 
UPDATE friendship SET user_id = FLOOR(1 + RAND() * 100); 

UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

UPDATE friendship SET declined_at = (SELECT updated_at FROM users ORDER BY RAND () LIMIT 1);

DELETE FROM communities WHERE id > 20;

UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20);

