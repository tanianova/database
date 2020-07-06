CREATE DATABASE vk;
use vk;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  

CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки"
) COMMENT "Сообщения";

CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
  confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",  
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";

CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Статусы дружбы";

CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

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

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM likes;
SELECT * FROM target_types;

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

INSERT INTO likes 
  SELECT
    id,
    FLOOR(1+ (RAND() * 100)),
    FLOOR(1+ (RAND() * 100)),
    FLOOR(1+ (RAND() * 4)),
    CURRENT_TIMESTAMP
  FROM messages; 

SELECT * FROM posts LIMIT 10;
 
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);  
  
DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
     
DESC messages;    

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;

DESC friendship; 
 
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE CASCADE;
     
ALTER TABLE users  
  ADD CONSTRAINT users_status_id_fk
    FOREIGN KEY (status_id) REFERENCES user_statuses(id)
      ON DELETE CASCADE;
     
DESC communities_users;    

ALTER TABLE communities_users  
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;
     
DESC media;

ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE CASCADE;
     
DESC likes;


ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;

DESC posts;

ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT posts_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;


/*1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить 
необходимые индексы.*/
DROP INDEX profiles_birthday_idx ON profiles;    
CREATE INDEX profiles_birthday_idx ON profiles(birthday);     

DROP INDEX messages_from_user_id_to_user_id_idx ON messages;
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);

DROP INDEX target_types_name_idx ON target_types;
CREATE INDEX target_types_name_idx ON target_types(name);

DROP INDEX likes_target_type_id_idx ON likes;
CREATE INDEX likes_target_type_id_idx ON likes(target_type_id);

DROP INDEX friendship_statuses_name_idx ON friendship_statuses;
CREATE INDEX friendship_statuses_name_idx ON friendship_statuses(name);

DROP INDEX friendship_status_id_idx ON friendship;
CREATE INDEX friendship_status_id_idx ON friendship(status_id);

DROP INDEX profiles_country_birthday_idx ON profilesl
CREATE INDEX profiles_country_birthday_idx ON profiles(country, birthday);

DROP INDEX media_media_type_id_idx ON media;
CREATE INDEX media_media_type_id_idx ON media(media_type_id);

DROP INDEX media_types_name_idx ON media_types;
CREATE INDEX media_types_name_idx ON media_types(name);


/*2. Задание на оконные функции
Построить запрос, который будет выводить следующие столбцы:
имя группы
среднее количество пользователей в группах
самый молодой пользователь в группе
самый старший пользователь в группе
общее количество пользователей в группе
всего пользователей в системе
отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100*/

-- проверка в 1 группе кто самый молодой, без desc самый старший
SELECT  
  DISTINCT profiles.birthday, profiles.user_id 
from 
  profiles 
JOIN 
  communities_users
  ON profiles.user_id = communities_users.user_id
    AND communities_users.community_id = 1  
ORDER BY birthday DESC;


SELECT 
  DISTINCT c.name,
  AVG(cu.user_id) OVER () AS average,
  SUM(cu.community_id) OVER w AS users_in_group,
  MAX(cu.user_id) OVER () AS total_users,
  SUM(cu.community_id) OVER w / MAX(cu.user_id) OVER () * 100 AS "%%",
  FIRST_VALUE (p.user_id ) 
    OVER(PARTITION BY c.name ORDER BY p.birthday DESC) AS youngest,
  FIRST_VALUE (p.user_id ) 
    OVER(PARTITION BY c.name ORDER BY p.birthday) AS oldest  
FROM 
  (profiles AS p
JOIN
  communities_users AS cu 
  ON p.user_id = cu.user_id
JOIN 
  communities AS c
  ON  cu.community_id = c.id) 
    WINDOW w AS (PARTITION BY c.name);
   