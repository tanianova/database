/* 1. колво постов по каждому разделу
 * 2. количество просмотров всех публикаций
 * 3 колво  просмтров публикаций у каждого типа поста
 * 4. колво  просмтров публикаций у каждого типа поста в процентах
 */
SELECT DISTINCT media_types.name AS posts_name,
  COUNT(posts.posts_media_id) OVER(PARTITION BY posts.media_types_id) AS total_post,
  SUM(posts.views_counter) OVER() AS total_views,
  SUM(posts.views_counter) OVER(PARTITION BY posts.media_types_id ) AS posts_views,
  SUM(posts.views_counter) OVER(PARTITION BY posts.media_types_id ) / SUM(posts.views_counter) OVER() 
    * 100 AS '%%'
FROM posts
  JOIN media_types
        ON posts.media_types_id = media_types.id; 