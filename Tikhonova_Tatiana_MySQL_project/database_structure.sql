CREATE DATABASE instagram;
USE instagram;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(50) COMMENT "Имя (Фамилия) пользователя",
  nickname VARCHAR(50) NOT NULL UNIQUE COMMENT "Ник пользователя",
  email VARCHAR(50) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(20) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи";  


DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя",
  photo_id INT UNSIGNED COMMENT "Фото пользователя",
  is_private BOOLEAN DEFAULT FALSE COMMENT "по умолчанию профиль открыт",
  website VARCHAR(50) COMMENT "сайт пользователя",
  about_user VARCHAR(150) COMMENT "Информация о себе",
  status_id INT UNSIGNED NOT NULL COMMENT "ссылка на тип аккаунта",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 


DROP TABLE IF EXISTS profiles_statuses;
CREATE TABLE profiles_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(50) NOT NULL COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Статусы типа аккаунта";


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  media_id INT UNSIGNED COMMENT "id вставленного в сообщение медиа-файла",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки"
) COMMENT "Сообщения";


DROP TABLE IF EXISTS friendship;
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";


DROP TABLE IF EXISTS friendship_statuses;
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Статусы дружбы";


DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metadata JSON COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Медиафайлы";


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа медиа-файла",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Типы медиафайлов";

 
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT "кто поставил лайк",
  target_id INT UNSIGNED NOT NULL COMMENT "чему поставлен лайк",
  target_type_id INT UNSIGNED NOT NULL COMMENT "тип контента, которому поставлен лайк",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)COMMENT "лайки";


DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "тип контента, которому поставлен лайк",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) COMMENT "Типы контента для лайков";


DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL COMMENT "id пользователя, разместившего пост",
  text_body TEXT NOT NULL COMMENT "текст поста",
  media_types_id INT UNSIGNED COMMENT "тип поста",
  posts_media_id INT UNSIGNED COMMENT "какие медиа-файлы в одном посте",
  is_public BOOLEAN DEFAULT TRUE COMMENT "доступен к просмотру для всех",
  views_counter INT UNSIGNED DEFAULT 0 COMMENT "количество пользователей, просмотревших пост",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "посты";   


DROP TABLE IF EXISTS posts_media;
CREATE TABLE posts_media (
	post_id INT UNSIGNED NOT NULL COMMENT "id поста",
	media_id INT UNSIGNED NOT NULL COMMENT "id медиа-файла",
	PRIMARY KEY (post_id, media_id),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "какие медиафайлы в посте"; 


DROP TABLE IF EXISTS hashtags;
CREATE TABLE hashtags (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) COMMENT "наименование хэштега",
	user_id INT UNSIGNED NOT NULL COMMENT "id пользователя, поставившего хэштег",
	target_id INT UNSIGNED NOT NULL COMMENT "id контента которому поставили хэштег",
	target_type_id INT UNSIGNED NOT NULL COMMENT "Тип контента",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "хэштеги";


DROP TABLE IF EXISTS geolocation;
CREATE TABLE geolocation (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) COMMENT "наименование геопозиции",
	user_id INT UNSIGNED NOT NULL COMMENT "id пользователя, поставившего геопозицию",
	target_id INT UNSIGNED NOT NULL COMMENT "id контента которому поставили геопозицию",
	target_type_id INT UNSIGNED NOT NULL COMMENT "Тип контента",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "геопозиция";


UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE profiles SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE friendship SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE media SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE posts_media SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE hashtags SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;
UPDATE geolocation SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;

CREATE TEMPORARY TABLE extensions (name VARCHAR(50));
INSERT INTO extensions VALUES ('jpeg'), ('mov'), ('png'), ('mp4'), ('gif');

UPDATE media SET filename = CONCAT(
  'https://instagram/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

UPDATE media SET metadata = CONCAT(
  '{"owner":"', 
  (SELECT (nickname) FROM users WHERE id = user_id),
  '"}'
);

ALTER TABLE media MODIFY COLUMN metadata JSON;

UPDATE friendship SET user_id = FLOOR(1 + RAND() * 100); 
UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;

UPDATE messages SET to_user_id = to_user_id + 1 WHERE from_user_id = to_user_id;
  
UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100);
UPDATE media SET size = FLOOR(1 + RAND() * 10000000);

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id),
  ADD CONSTRAINT profiles_status_id_fk
    FOREIGN KEY (status_id) REFERENCES profiles_statuses(id)
      ON DELETE CASCADE;
     

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL;

 
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


ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE CASCADE;

     
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;


ALTER TABLE posts 
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_media_types_id_fk
    FOREIGN KEY (media_types_id) REFERENCES media_types(id)
      ON DELETE SET NULL;

     
ALTER TABLE posts_media 
  ADD CONSTRAINT posts_media_post_id_fk
    FOREIGN KEY (post_id) REFERENCES posts(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT posts_media_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE CASCADE;


ALTER TABLE hashtags
  ADD CONSTRAINT hashtags_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT hashtags_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;
 

ALTER TABLE geolocation
  ADD CONSTRAINT geolocation_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT geolocation_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE CASCADE;


DROP INDEX users_name_nickname_idx ON users;    
CREATE INDEX users_name_nickname_idx ON users(name, nickname);     

DROP INDEX messages_from_user_id_to_user_id_idx ON messages;
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);

DROP INDEX media_size_idx ON media;    
CREATE INDEX media_size_idx ON media(size);

DROP INDEX likes_user_id_idx ON likes;
CREATE INDEX likes_user_id_idx ON likes(user_id);

DROP INDEX posts_views_counter_idx ON posts;
CREATE INDEX posts_views_counter_idx ON posts(views_counter);

DROP INDEX posts_media_post_id_media_id_idx ON posts_media;
CREATE INDEX posts_media_post_id_media_id_idx ON posts_media(post_id, media_id);
   