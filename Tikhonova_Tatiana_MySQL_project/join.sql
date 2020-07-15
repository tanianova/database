-- пользователь начал прямой эфир
SELECT CONCAT(
  'Пользователь ', 
  (SELECT nickname FROM users WHERE id = media.user_id),
  ' начал прямой эфир. Перейти по ссылке: ', 
  filename ) AS live_broadcast 
    FROM media 
    WHERE user_id = 6 AND media_type_id = (
        SELECT id FROM media_types WHERE name LIKE 'live broadcast'
);

--  5 самых маленьких файлов igtv.
SELECT 
  (SELECT nickname FROM users WHERE users.id = media.user_id) AS owner,
  filename, 
  size 
FROM media
WHERE media_type_id = (SELECT id FROM media_types WHERE name LIKE 'IGTV')  
ORDER BY size
LIMIT 5;


--  пользователи,у которых общее колво видео-файлов весит > 10МБ 
SELECT 
  user_id, 
  SUM(size) AS total
FROM 
  media  
WHERE 
  media_type_id = (SELECT id FROM media_types WHERE name LIKE 'video')
GROUP BY 
  user_id
HAVING 
  total > 10000000
ORDER BY total DESC;
 

-- 10 постов с наибольшим колвом медифайлов
SELECT post_id, COUNT(media_id ) AS total from posts_media
GROUP BY post_id ORDER BY total DESC;


-- 10 пользователей, у которых посты с наибольшим колвом медиафайлов.
SELECT
  users.nickname,
  posts_media.post_id, 
  COUNT(posts_media.media_id) AS total_media
FROM 
  posts_media
JOIN
  posts 
    ON posts_media.post_id = posts.id
JOIN 
  users
    ON users.id = posts.user_id
GROUP BY posts_media.post_id 
ORDER BY total_media DESC
LIMIT 10;


-- 5 пользователей у которого больше всего друзей 
SELECT 
  users.id, users.nickname, COUNT(friendship.created_at) AS total
FROM 
  users 
LEFT JOIN   
  friendship 
    ON users.id = friendship.user_id OR users.id = friendship. friend_id
JOIN 
  friendship_statuses 
    ON  friendship.status_id = friendship_statuses.id AND friendship_statuses.name like 'confirmed'
GROUP BY users.id
ORDER BY total DESC
LIMIT 5;


 -- посчитать общее колво хэштэгов за посты которые получили пользователи  с ником начинающимся на M. 

-- подсчет колва хэштегов у каждого пользователя с заданными условиями
SELECT 
   users.nickname, COUNT(hashtags.target_id)AS got_hashtags 
FROM 
  users
JOIN
  hashtags 
    ON users.id = hashtags.target_id 
     AND hashtags.target_type_id = 2
      AND users.nickname LIKE 'M%'
GROUP BY users.id;

-- сумма хэштегов: 
SELECT SUM(got_hashtags) AS total_hashtags
FROM (
SELECT 
   users.nickname, COUNT(hashtags.target_id)AS got_hashtags 
FROM 
  users
JOIN
  hashtags 
    ON users.id = hashtags.target_id 
     AND hashtags.target_type_id = 2
      AND users.nickname LIKE 'M%'
GROUP BY users.id) AS users_M;
