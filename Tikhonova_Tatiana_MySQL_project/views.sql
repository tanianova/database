-- пользователи, у которых у контента "сторис" колво просмотров > 200000, по убыванию колва просмотров
CREATE OR REPLACE VIEW counter AS
SELECT 
  users.nickname, posts.views_counter 
FROM 
  posts 
JOIN 
  users
ON posts.user_id =users.id
  AND posts.media_types_id = 3 
   AND views_counter > 200000 
ORDER BY views_counter DESC
WITH CHECK OPTION;

SELECT * FROM counter ;


-- 10 пользователей, с самыми свежими метками геолокации на контенте "пост" 
CREATE OR REPLACE VIEW geolocation_counter AS
SELECT 
  users.nickname, geolocation.created_at 
FROM 
  users
JOIN 
  geolocation
    ON users.id = geolocation.user_id
JOIN 
  target_types 
    ON geolocation.target_type_id = target_types.id 
      AND target_types.name LIKE 'post'
ORDER BY geolocation.created_at DESC
LIMIT 10;

SELECT * FROM geolocation_counter;
