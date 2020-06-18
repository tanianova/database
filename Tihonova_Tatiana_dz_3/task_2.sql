CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'aliquid', '1998-10-20 04:24:47', '1984-04-15 20:01:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'et', '2020-03-03 17:19:28', '2018-10-19 03:47:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'dolores', '1983-01-09 00:44:17', '2010-10-15 15:15:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dignissimos', '1996-04-04 03:37:36', '1980-08-03 23:34:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'veniam', '1984-11-29 13:57:20', '2018-12-19 00:30:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'illo', '1997-11-01 09:33:35', '1977-04-12 18:33:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'iusto', '2018-04-03 14:18:09', '1994-04-22 11:38:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'quasi', '1982-03-14 07:52:43', '1985-11-18 15:30:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'rerum', '1975-07-28 23:07:51', '2019-04-25 09:50:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'voluptates', '1977-10-20 07:37:48', '2005-01-03 23:58:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'architecto', '1993-02-19 06:08:55', '2002-08-24 10:37:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'sunt', '2003-04-11 04:18:23', '2016-01-22 08:42:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'quos', '1976-01-17 05:09:56', '1984-06-13 01:10:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'sit', '1992-02-07 13:36:02', '2011-10-02 23:04:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'dolorum', '1992-08-02 17:30:19', '2019-11-09 19:43:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'omnis', '1985-11-05 04:27:09', '2011-05-20 06:29:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'quis', '1991-09-26 17:46:55', '1970-09-28 00:46:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'accusamus', '2014-09-15 21:50:36', '1989-04-02 06:49:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'excepturi', '2008-02-28 06:35:47', '1993-11-07 05:30:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'quisquam', '1999-09-01 10:44:55', '2009-09-26 01:38:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'vitae', '2018-05-24 12:44:53', '2007-07-13 14:27:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'magnam', '1979-11-05 23:55:19', '2003-03-28 20:00:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'molestias', '2012-05-30 07:29:48', '1980-05-10 07:56:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'ducimus', '1976-04-07 14:38:45', '1990-10-22 05:44:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'eaque', '1978-11-13 11:52:08', '1996-01-02 06:09:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'id', '2016-04-30 08:36:23', '2011-05-22 20:59:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'laboriosam', '1983-03-22 07:21:44', '1992-04-03 05:54:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'deserunt', '1976-07-20 19:39:50', '2003-12-28 02:36:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'culpa', '1983-01-04 07:12:41', '1993-06-27 02:45:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'amet', '2017-06-03 03:36:28', '2006-06-27 03:46:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'fugiat', '2016-03-25 20:53:26', '2004-04-21 19:57:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'provident', '1994-12-13 08:24:03', '2018-09-07 04:24:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'quia', '2010-06-08 02:43:54', '1987-05-28 05:12:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'quibusdam', '1976-01-02 06:11:48', '1995-05-19 16:41:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ut', '1978-01-05 10:41:26', '1985-09-30 18:09:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'quam', '2014-07-17 19:06:53', '2016-07-24 07:29:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'similique', '1970-05-30 09:33:32', '2007-09-29 20:42:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'unde', '1982-12-10 19:41:18', '1977-09-17 04:25:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'doloremque', '1995-06-23 10:18:42', '1998-12-23 10:10:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'perspiciatis', '2007-03-06 16:06:44', '1982-03-11 09:05:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'sapiente', '2013-08-05 15:42:10', '2006-03-04 17:06:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'ratione', '1972-05-10 17:59:58', '1999-12-24 08:41:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'praesentium', '1985-02-25 13:52:57', '1981-11-04 08:54:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'in', '2000-06-02 12:10:37', '1974-05-23 17:27:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'nostrum', '2008-07-22 21:27:56', '2007-07-16 15:37:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'aut', '1994-11-30 16:44:59', '1976-11-29 00:27:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'fuga', '1972-09-17 14:07:07', '2002-07-24 11:02:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'ipsa', '2000-10-25 05:59:39', '1989-12-21 05:35:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'nobis', '2003-09-27 12:26:12', '1973-04-20 22:30:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'eligendi', '2005-02-24 10:16:29', '2011-08-08 04:00:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'alias', '1976-07-16 19:05:11', '1971-09-16 07:49:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'tempore', '1970-12-08 18:15:11', '1988-10-22 06:28:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'at', '2001-12-27 04:35:01', '1995-10-21 08:45:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'dolor', '2016-09-03 10:16:04', '2001-07-17 06:55:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'est', '1976-09-04 22:43:00', '2004-07-25 00:01:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'debitis', '2018-01-18 18:14:45', '2013-04-30 06:54:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'corrupti', '2006-09-22 01:33:23', '1987-03-28 05:26:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'eos', '1972-04-27 10:51:57', '2016-02-04 12:34:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'iure', '1983-01-26 12:16:10', '1991-05-21 15:15:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'adipisci', '1991-12-09 02:11:04', '2020-01-27 09:19:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'a', '2020-05-13 14:58:56', '2016-07-25 11:53:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'ad', '2000-05-01 01:41:32', '2006-11-19 15:07:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'quas', '2011-10-01 16:30:44', '1997-02-20 21:11:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'aperiam', '1996-12-16 23:17:05', '1995-07-21 12:30:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'nulla', '1981-09-14 01:53:00', '1992-02-03 10:02:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'velit', '2011-10-21 21:30:12', '2007-06-10 22:15:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'qui', '1993-08-31 02:27:11', '1970-12-18 03:12:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'sed', '1994-08-30 18:48:29', '1988-11-09 14:45:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'asperiores', '1992-02-29 00:09:43', '2010-04-18 00:10:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'magni', '1984-11-05 08:22:57', '1993-06-05 12:07:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'cupiditate', '1985-12-29 04:15:39', '2012-12-27 21:08:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'nesciunt', '1996-01-31 04:47:53', '1971-03-11 05:49:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'exercitationem', '1999-04-07 17:50:05', '1986-05-21 02:25:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'sequi', '2003-05-07 20:43:15', '1972-07-31 22:05:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'occaecati', '2015-08-28 13:23:37', '2003-09-07 06:18:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'ab', '1998-11-13 09:32:41', '1999-04-04 17:35:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'ipsam', '2008-04-29 07:19:22', '2013-05-15 07:18:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'earum', '1986-05-07 22:27:06', '1992-10-06 20:44:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'labore', '2014-04-02 18:55:22', '2008-04-30 21:04:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'perferendis', '1975-06-10 23:44:21', '1988-10-18 09:07:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'consequatur', '1995-09-10 23:58:13', '2017-06-24 21:52:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'officia', '2001-06-24 11:07:13', '1973-07-14 04:05:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'saepe', '2019-09-19 00:21:32', '1990-04-25 21:53:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'illum', '1979-05-04 13:15:55', '1975-12-05 17:32:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'numquam', '1974-11-15 19:42:14', '1978-07-11 14:37:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'dolorem', '2014-11-15 08:51:40', '2005-08-31 23:06:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'nihil', '2006-09-28 01:53:20', '1972-07-17 14:17:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'rem', '1980-07-11 21:16:28', '2012-11-01 05:12:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'odio', '1991-07-01 02:30:16', '2002-02-24 06:31:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'voluptatem', '1999-06-27 19:33:55', '1985-04-07 02:32:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'porro', '2002-09-02 19:09:45', '2000-04-07 05:38:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'voluptatibus', '2006-09-29 17:15:02', '1977-06-10 21:23:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'minima', '2017-04-13 16:27:17', '2016-05-23 10:24:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'officiis', '1973-03-24 22:49:14', '2001-10-10 09:00:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'repellendus', '1990-07-01 17:44:23', '1993-03-17 19:23:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'nam', '1971-07-27 10:52:06', '1985-06-30 21:39:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'non', '1994-05-05 01:12:23', '1982-03-01 04:10:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'cum', '1984-01-30 00:09:12', '1975-06-01 19:37:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'eum', '1999-02-20 19:06:00', '2001-07-26 08:52:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'quaerat', '1981-01-11 17:42:53', '2006-04-13 04:40:31');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 52, '1985-10-06 04:07:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '1976-10-30 16:05:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 80, '2010-01-16 13:48:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 81, '2004-05-21 23:43:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 67, '1987-05-03 02:29:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 94, '1984-05-02 01:04:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 84, '2005-03-10 22:57:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 30, '1975-03-31 16:36:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 31, '1977-09-22 07:28:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 43, '2003-08-03 02:32:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 47, '1991-07-12 10:59:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 73, '1989-08-29 00:41:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 40, '1993-07-16 10:05:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 70, '1992-12-10 18:23:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 100, '1985-02-12 12:06:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 63, '2013-03-01 21:43:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 27, '1987-01-28 05:14:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 93, '2019-12-02 16:22:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 21, '1987-09-29 11:12:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 42, '1988-01-09 04:01:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 39, '2008-01-15 17:51:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 52, '1974-08-02 22:40:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 78, '1982-04-02 15:59:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 64, '1981-10-01 07:47:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 87, '2012-05-15 17:11:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 46, '2016-10-27 23:24:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 48, '2007-10-08 06:19:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 21, '2005-07-26 03:47:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 50, '1993-01-15 03:45:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 64, '2007-05-23 11:50:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 18, '2005-07-26 17:41:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 28, '2009-04-18 17:35:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 26, '1992-02-13 18:19:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 88, '1995-12-07 16:29:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 100, '2002-02-04 02:16:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 47, '2013-12-06 12:47:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 14, '1987-05-18 14:26:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 78, '1983-10-08 22:06:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 100, '1984-01-15 01:48:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 58, '2017-03-23 19:34:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 98, '1975-12-25 01:08:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 56, '2014-01-10 12:58:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 20, '2013-12-08 21:42:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 67, '2014-08-11 22:41:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 72, '1982-04-30 20:42:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 34, '2016-11-05 06:38:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 68, '2014-05-17 07:53:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 8, '2002-08-26 00:19:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 88, '2016-05-12 11:12:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 3, '2019-07-06 02:33:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 51, '1990-12-15 16:10:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 6, '1992-09-26 14:34:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 38, '2020-02-22 22:34:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 69, '2003-07-22 09:19:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 70, '2001-01-04 09:56:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 4, '2018-05-02 09:15:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 20, '2009-03-20 01:57:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 42, '2006-11-17 11:41:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 3, '1985-09-25 12:37:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 49, '1991-06-09 19:29:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 71, '1988-04-05 20:34:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 95, '1986-05-23 09:19:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 23, '1976-03-30 19:59:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 5, '2020-02-09 13:39:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 89, '2003-11-15 14:12:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 43, '1975-12-28 05:57:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 90, '2006-03-07 20:10:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 47, '2016-12-13 00:31:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 62, '1997-03-22 01:35:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 1, '1996-04-27 13:12:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 32, '2003-01-28 16:48:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 57, '2013-06-12 01:37:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 66, '1994-05-13 05:50:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 84, '2013-10-28 14:06:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 96, '1982-08-31 02:38:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 50, '1973-08-08 07:00:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 73, '2018-04-04 13:18:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 40, '2000-12-27 20:22:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 8, '2005-10-03 08:46:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 14, '2013-11-10 12:30:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 44, '2003-04-18 23:06:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 51, '2010-03-24 16:15:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 65, '1972-09-26 14:20:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 96, '2003-04-14 10:17:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 5, '1983-04-10 02:22:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 92, '1979-03-01 00:44:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 54, '1987-03-08 18:15:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 92, '1998-03-10 08:13:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1997-06-25 04:42:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 85, '2001-04-10 16:07:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 66, '2014-09-12 23:02:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 62, '2007-10-01 15:25:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 85, '2003-08-24 15:16:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 72, '2002-09-03 19:52:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 43, '2005-03-28 07:58:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 77, '2000-04-15 18:16:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 6, '2007-03-21 08:57:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 86, '1971-01-26 06:56:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 31, '2019-09-10 01:20:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 18, '2013-10-06 05:38:39');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 93, 1, '2011-02-16 11:27:27', '1984-05-28 11:50:56', '1980-09-15 11:46:51', '1985-09-25 17:17:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 50, 2, '2014-08-19 21:43:19', '2014-09-01 20:05:48', '1974-05-05 02:16:08', '1980-04-20 01:30:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 78, 1, '2011-08-21 19:28:31', '2018-11-03 03:44:24', '1981-10-12 19:31:37', '1989-05-01 14:03:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 25, 1, '1977-01-11 00:20:30', '1980-02-21 21:01:54', '1970-11-18 20:09:25', '1986-10-25 05:46:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 9, 2, '2014-07-23 19:53:40', '1976-06-11 14:28:47', '1982-02-10 23:43:35', '2015-12-26 17:33:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 25, 2, '2015-01-16 00:14:54', '1981-04-26 08:33:11', '1989-04-07 15:23:29', '1975-03-31 04:28:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 13, 3, '1996-01-28 01:47:23', '1973-08-03 01:45:37', '1987-10-06 19:58:39', '2008-08-13 01:47:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 83, 1, '1979-09-23 11:29:53', '2016-11-29 23:32:40', '2014-08-15 15:54:55', '2014-07-25 18:41:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 16, 3, '2005-04-05 18:24:25', '2017-09-30 17:55:32', '1972-12-21 02:18:31', '2018-10-03 19:19:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 36, 1, '2002-08-11 08:44:27', '2005-07-25 18:58:51', '2010-02-17 03:46:24', '1987-05-14 18:13:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 3, 1, '1990-02-07 11:45:10', '1975-09-01 18:35:29', '1991-05-19 05:35:59', '2005-09-22 03:13:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 13, 2, '1977-08-06 10:13:44', '2017-09-15 09:03:32', '1992-10-06 14:10:30', '1976-11-07 22:02:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 3, 1, '2000-09-03 14:59:42', '1977-02-12 07:21:52', '1975-08-24 10:28:59', '2019-11-14 12:21:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 97, 3, '2010-04-19 11:22:29', '2009-09-24 10:10:10', '1995-08-04 05:45:05', '2019-09-18 14:27:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 80, 1, '1997-06-19 01:48:37', '1999-09-10 01:25:31', '2003-07-22 14:44:41', '2012-01-24 12:55:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 76, 3, '2001-04-12 04:18:03', '1994-01-20 15:47:57', '2000-02-25 15:03:40', '1995-12-20 08:02:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 38, 1, '1987-01-19 09:55:29', '1999-02-04 17:20:21', '1971-05-12 07:48:55', '2004-11-30 16:01:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 9, 1, '2018-12-14 12:35:37', '1997-10-17 11:24:12', '1994-11-15 02:50:47', '2010-07-19 02:08:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 30, 1, '2013-03-19 21:44:27', '2008-08-01 10:22:14', '1981-11-23 21:02:11', '1979-10-21 04:17:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 22, 2, '1976-05-14 02:32:40', '2015-09-14 01:30:25', '1985-01-23 14:59:34', '1979-02-17 19:21:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 82, 2, '2010-08-12 22:58:43', '2004-09-01 09:38:37', '2014-09-06 01:09:45', '2000-05-10 07:05:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 88, 3, '2001-11-17 02:35:39', '1987-01-05 17:12:11', '1981-03-31 22:16:27', '1998-06-29 20:29:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 29, 3, '2009-10-19 02:52:46', '2018-01-02 14:57:16', '2007-05-22 02:17:43', '1973-06-01 05:45:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 11, 2, '2006-11-03 03:13:41', '1987-12-17 11:36:28', '2005-08-15 15:16:45', '1993-10-27 17:15:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 61, 2, '1988-11-16 16:51:41', '2000-03-24 01:02:04', '2005-05-29 03:32:36', '2008-12-08 14:27:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 72, 2, '1984-03-27 09:35:20', '1993-12-02 19:27:37', '1994-12-16 12:26:18', '2006-07-31 09:04:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 59, 3, '1983-07-14 21:18:37', '1980-10-05 07:15:14', '2001-04-17 23:45:11', '2017-06-08 01:04:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 1, 2, '1972-06-11 05:52:58', '2019-03-06 07:45:04', '2017-12-23 08:30:46', '1995-07-28 20:39:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 94, 3, '1987-04-16 12:02:51', '2017-03-24 02:48:48', '2002-08-07 23:19:42', '2004-05-26 02:35:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 40, 3, '1997-11-06 18:27:24', '1991-03-05 20:36:24', '1999-12-31 16:51:36', '1989-05-30 07:57:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 14, 1, '1977-09-10 01:55:47', '2018-02-26 12:03:16', '2017-08-21 13:37:46', '1999-12-12 08:04:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 44, 2, '1984-03-10 05:09:22', '2007-10-02 08:18:37', '1994-10-26 02:15:20', '1996-03-14 01:21:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 40, 2, '1981-10-02 15:13:54', '1977-10-14 01:37:29', '1988-10-31 00:24:48', '1971-04-29 00:46:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 66, 3, '1976-03-16 05:45:35', '1970-03-12 15:54:49', '2009-11-01 14:22:15', '2000-05-16 22:08:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 86, 3, '1994-11-07 02:30:25', '1980-03-29 14:16:08', '1978-08-01 05:10:54', '2017-10-26 21:23:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 7, 2, '1975-12-06 11:58:14', '1986-06-01 17:01:17', '1970-09-17 13:20:47', '2004-11-20 02:42:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 33, 3, '2000-04-15 02:03:25', '2002-05-22 07:15:40', '1972-02-21 07:45:33', '1984-03-11 00:31:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 61, 2, '1974-11-22 15:36:21', '2016-01-27 23:05:26', '1981-12-02 21:00:59', '2020-05-08 12:56:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 65, 3, '1984-08-07 05:58:37', '1988-04-30 01:24:34', '2016-05-21 11:54:18', '2010-09-06 08:08:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 5, 1, '1990-10-20 09:21:35', '1992-06-23 08:56:53', '1971-11-07 16:39:12', '1970-05-19 18:08:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 16, 3, '2013-10-06 22:13:40', '2018-04-16 14:39:47', '1972-10-26 05:44:43', '2007-02-06 01:46:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 88, 3, '1996-11-21 17:47:27', '2007-01-24 14:39:23', '1999-07-06 05:11:47', '1994-10-03 03:27:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 60, 3, '1995-02-02 10:24:13', '2014-07-17 01:10:14', '1978-08-26 02:57:58', '1975-04-23 23:02:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 36, 2, '1998-06-11 05:38:55', '1974-02-09 19:18:19', '2005-07-25 13:53:33', '2010-05-24 03:00:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 85, 3, '2013-03-07 09:59:23', '2001-03-26 04:19:54', '1981-03-14 08:45:03', '2000-02-25 20:48:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 26, 3, '2014-07-20 22:35:22', '2011-05-05 22:59:43', '1971-03-18 08:09:48', '2014-08-09 19:56:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 91, 3, '1975-04-08 01:41:15', '2007-01-06 09:11:58', '1983-04-26 16:48:36', '2013-01-06 10:45:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 49, 1, '1991-05-22 04:58:56', '1992-07-08 02:42:26', '1997-10-31 14:50:57', '2020-03-10 08:36:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 22, 1, '1976-12-24 18:39:18', '1980-07-09 04:27:12', '2001-08-29 03:08:29', '2002-10-26 11:22:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 100, 1, '1970-09-02 17:17:35', '2019-01-04 19:04:37', '2016-05-03 15:01:12', '1978-11-30 17:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 2, 1, '1996-05-30 17:51:31', '1971-01-12 23:25:35', '1974-09-04 15:18:10', '1973-03-01 20:17:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 74, 2, '2014-10-08 04:04:10', '1978-12-28 22:18:41', '1994-12-09 17:43:59', '1985-07-02 18:08:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 1, 1, '1971-03-26 18:45:06', '1983-11-29 05:03:29', '2014-02-10 01:02:53', '2012-12-17 04:44:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 95, 2, '2002-04-29 04:29:50', '1980-04-30 05:15:23', '1995-11-12 06:30:36', '1984-02-25 00:41:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 4, 3, '2020-03-21 03:30:07', '1986-08-14 05:05:38', '2008-08-03 22:00:49', '1973-09-30 03:47:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 90, 1, '2001-08-24 17:18:45', '2017-09-27 14:31:03', '1982-09-08 09:44:08', '1971-09-28 14:39:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 76, 3, '1981-02-19 22:39:04', '2002-08-03 15:51:01', '1987-01-13 19:23:06', '1970-09-15 01:14:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 95, 2, '2004-09-04 10:44:08', '2018-09-14 20:59:47', '2009-01-28 14:34:55', '1995-05-02 08:28:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 65, 1, '2007-09-06 02:20:34', '1970-06-20 19:08:41', '1983-07-25 00:01:10', '2019-10-14 04:55:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 88, 2, '1985-05-06 01:44:27', '2012-10-31 20:35:44', '1985-04-23 14:31:17', '2007-10-23 05:13:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 7, 1, '1970-04-26 11:53:11', '2005-02-20 05:19:07', '1997-04-23 14:04:48', '2004-11-09 13:40:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 49, 3, '1990-02-17 03:31:04', '1989-10-15 18:40:47', '1993-05-04 07:50:17', '2004-02-21 12:46:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 82, 3, '1991-09-07 04:51:43', '1973-02-15 15:44:48', '1992-01-19 02:45:16', '2017-03-02 13:32:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 29, 1, '1996-04-09 15:03:19', '2019-11-27 13:27:23', '1975-02-13 08:05:51', '2006-01-24 19:55:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 12, 1, '1999-08-21 08:44:31', '2015-05-29 05:54:09', '1972-05-24 07:44:30', '1991-12-24 15:01:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 10, 1, '2004-11-08 20:07:09', '1985-07-25 15:29:47', '2009-11-19 16:12:11', '1997-05-16 01:18:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 35, 3, '2015-02-05 20:04:56', '1997-08-02 01:59:27', '1974-01-22 21:28:28', '1997-03-30 14:40:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 46, 2, '2014-03-24 11:50:27', '1987-12-31 08:31:14', '2016-07-09 07:12:54', '2002-07-13 11:29:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 17, 2, '1991-01-19 04:42:55', '1991-06-02 04:14:59', '2016-02-24 02:23:01', '1991-09-08 23:07:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 100, 1, '1998-06-07 18:20:34', '2019-04-14 12:19:33', '1996-07-18 09:31:13', '1984-01-26 12:45:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 40, 3, '1999-06-10 07:33:25', '1986-11-14 06:23:47', '1996-02-12 09:28:01', '2019-08-08 18:29:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 40, 1, '2019-08-19 12:23:24', '1986-11-14 03:55:29', '1994-04-27 06:11:46', '1983-05-12 18:51:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 67, 2, '2006-01-31 03:17:37', '1975-01-28 20:08:36', '2003-01-27 09:40:24', '1999-09-05 14:42:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 50, 1, '2009-05-16 17:54:44', '1979-12-06 16:45:30', '2016-06-28 05:21:21', '1998-05-06 03:04:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 65, 2, '1991-03-05 15:07:09', '1974-02-28 03:02:50', '2000-11-09 13:02:27', '2003-09-25 03:06:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 82, 3, '1977-10-16 16:59:03', '1976-03-22 05:33:48', '1982-12-17 20:47:41', '1994-07-21 18:49:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 50, 1, '2012-12-19 19:52:58', '1996-03-08 07:25:33', '1980-10-25 05:09:42', '2001-02-26 11:22:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 69, 1, '1978-12-26 11:15:58', '1988-06-14 12:37:47', '1990-12-21 18:03:37', '2018-10-10 09:41:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 27, 3, '2020-05-27 14:13:14', '1972-07-25 08:37:27', '1971-01-26 21:13:59', '2000-12-15 04:31:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 35, 2, '1976-08-07 17:34:48', '2000-04-16 04:04:06', '2000-03-23 01:28:24', '1988-05-17 05:18:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 25, 2, '1988-08-04 08:15:08', '2008-03-18 07:40:56', '1971-01-10 10:31:32', '1977-03-19 20:25:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 50, 2, '2013-08-17 16:44:31', '2007-04-12 20:51:40', '2005-07-06 08:30:21', '1970-09-13 15:26:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 28, 3, '2017-10-15 01:10:31', '2019-07-25 04:16:53', '2019-10-23 06:58:18', '2004-09-27 18:27:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 94, 2, '2008-12-12 12:04:45', '1996-04-09 06:55:19', '1996-07-08 11:26:46', '1987-11-24 03:15:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 36, 3, '1995-06-25 03:37:25', '1981-10-13 08:47:33', '1984-01-26 19:13:28', '1970-04-15 18:08:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 64, 3, '1990-01-01 00:10:58', '1982-07-13 09:23:02', '2016-01-04 14:41:07', '1975-11-28 11:07:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 83, 1, '1995-09-27 15:45:28', '1995-05-12 12:54:35', '1981-10-03 11:43:08', '2017-07-30 04:21:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 91, 2, '2017-04-16 22:51:59', '2008-12-17 02:28:52', '1996-01-15 20:43:40', '2005-09-17 17:05:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 38, 2, '1990-05-13 04:47:00', '2003-10-07 21:29:43', '1971-06-22 03:10:34', '2002-02-09 16:44:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 80, 1, '1995-11-04 06:07:08', '1976-08-01 17:30:12', '2009-05-14 16:42:46', '1975-07-25 03:45:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 76, 2, '1988-06-08 18:25:39', '1978-09-15 08:17:01', '1979-08-28 03:37:56', '1990-11-19 18:12:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 74, 1, '2015-05-20 16:03:35', '1994-09-16 04:11:18', '1977-08-09 12:27:41', '1970-11-28 17:18:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 90, 2, '2006-03-29 19:49:15', '1978-06-13 18:18:34', '2014-09-06 12:51:45', '2009-06-03 18:07:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 56, 1, '2008-09-19 05:45:22', '2012-01-30 22:42:43', '1973-01-27 07:47:46', '2009-12-26 21:49:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 39, 3, '1984-05-17 14:20:20', '1982-08-22 08:58:04', '1970-03-07 09:56:32', '1970-01-08 18:48:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 53, 2, '2018-11-25 01:34:45', '1981-05-03 19:41:31', '1975-12-29 14:30:13', '1987-04-01 21:09:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 35, 1, '2006-07-04 04:30:23', '1996-12-12 18:40:39', '1993-03-17 14:14:38', '1997-04-14 21:06:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 23, 2, '2000-06-30 19:18:19', '2015-06-07 10:12:06', '1976-02-14 10:25:45', '1986-09-21 11:16:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 97, 1, '1976-04-30 13:37:53', '1990-08-15 17:15:14', '1972-10-17 16:20:25', '1991-07-03 12:40:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 5, 1, '2009-03-08 04:20:48', '2015-02-03 06:48:02', '2005-04-20 01:51:07', '2006-07-04 17:24:46');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'friends', '2001-09-15 23:56:12', '1973-08-27 04:31:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'not friends', '2004-11-05 04:07:45', '1996-11-05 23:09:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'application', '2007-04-16 09:12:13', '2004-05-07 23:38:06');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 62, 'non', 9805, NULL, 1, '1972-09-14 15:20:42', '2001-12-18 10:02:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 42, 'est', 10459, NULL, 3, '2004-07-16 09:57:23', '2006-03-16 03:28:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 100, 'officia', 8165, NULL, 4, '1988-06-10 19:46:09', '1973-08-02 12:21:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 60, 'placeat', 1335, NULL, 3, '2003-02-05 22:08:31', '2005-11-13 15:02:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 97, 'temporibus', 20273, NULL, 2, '1978-06-12 16:52:39', '1976-12-13 09:50:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 93, 'est', 747, NULL, 3, '2000-12-17 07:09:22', '1996-05-24 22:28:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 1, 'est', 15210, NULL, 2, '2005-01-08 03:40:06', '2016-03-12 08:52:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 47, 'suscipit', 352, NULL, 4, '1978-04-04 19:12:07', '2018-03-01 18:40:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 10, 'eos', 19516, NULL, 4, '1988-08-05 07:48:29', '1970-08-14 22:33:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 16, 'labore', 16997, NULL, 2, '2016-03-20 09:15:26', '1973-11-11 15:43:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 67, 'molestias', 16249, NULL, 1, '1974-05-08 23:00:53', '1980-10-11 21:07:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 70, 'id', 8484, NULL, 4, '1983-08-15 17:43:51', '2019-03-12 12:09:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 92, 'ab', 5069, NULL, 4, '2007-05-21 18:54:42', '1990-01-22 19:57:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 27, 'asperiores', 449, NULL, 4, '1992-04-03 10:15:10', '1975-01-19 05:21:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 74, 'ut', 9819, NULL, 2, '1999-05-11 04:17:24', '1979-08-18 11:55:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 28, 'necessitatibus', 8437, NULL, 2, '2017-07-25 23:22:35', '1983-09-04 20:21:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 37, 'totam', 14248, NULL, 3, '1984-09-21 23:35:47', '1996-08-04 18:01:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 6, 'aut', 12138, NULL, 2, '1975-09-25 19:46:22', '1978-01-07 01:08:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 55, 'dicta', 13852, NULL, 3, '1973-05-16 20:50:48', '1987-05-24 18:07:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 3, 'incidunt', 7855, NULL, 3, '2006-08-31 23:19:50', '1987-05-02 08:54:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 91, 'omnis', 10081, NULL, 4, '2004-09-15 18:00:36', '1974-05-03 02:32:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 9, 'placeat', 13333, NULL, 4, '1991-02-18 05:05:10', '1993-08-20 11:33:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 34, 'sapiente', 7895, NULL, 3, '2005-11-22 01:34:58', '1992-06-10 16:44:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 84, 'recusandae', 1880, NULL, 2, '1978-10-21 20:01:35', '1979-09-05 02:08:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 38, 'quasi', 13962, NULL, 4, '1982-12-18 18:36:07', '1980-10-24 15:27:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 81, 'accusamus', 20151, NULL, 1, '2005-06-09 20:32:49', '1985-04-08 03:36:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 21, 'iusto', 8843, NULL, 3, '2012-06-19 17:11:48', '1990-04-27 22:15:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 80, 'quas', 1640, NULL, 1, '1976-07-08 07:06:44', '2017-01-27 20:57:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 31, 'aut', 7612, NULL, 1, '1982-05-06 11:40:49', '1976-02-28 20:09:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 11, 'corporis', 8066, NULL, 1, '2014-04-14 00:15:55', '2003-08-06 22:13:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 39, 'nostrum', 7214, NULL, 2, '1997-02-06 12:03:54', '2004-09-11 21:23:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 40, 'quisquam', 17002, NULL, 3, '2007-09-11 14:41:11', '1991-11-08 06:18:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 9, 'et', 8428, NULL, 2, '1998-08-30 12:14:13', '1981-06-24 12:24:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 10, 'sed', 2819, NULL, 3, '2004-03-21 04:52:28', '1982-04-02 19:53:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 11, 'porro', 7685, NULL, 1, '1981-03-13 18:40:46', '1985-02-16 06:22:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 15, 'cupiditate', 1746, NULL, 1, '1979-09-27 19:58:38', '2007-08-21 12:42:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 8, 'temporibus', 1521, NULL, 1, '1995-12-22 16:43:23', '1971-01-03 07:32:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 93, 'cupiditate', 2073, NULL, 2, '1997-08-23 01:08:19', '1972-06-16 13:28:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 77, 'magnam', 7388, NULL, 4, '1975-08-26 09:28:10', '1997-02-05 08:27:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 85, 'sit', 14603, NULL, 1, '2009-04-16 06:30:28', '1971-06-07 01:25:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 76, 'sed', 3263, NULL, 3, '1997-11-19 07:32:28', '1975-10-18 08:35:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 18, 'labore', 11585, NULL, 4, '1976-05-18 15:18:38', '2000-11-08 10:26:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 17, 'sint', 19999, NULL, 4, '1982-10-14 12:51:54', '1977-09-30 01:20:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 8, 'quis', 7346, NULL, 2, '2004-02-16 02:54:19', '2015-12-13 04:37:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 5, 'ut', 6902, NULL, 1, '1981-02-23 02:23:06', '1973-10-19 17:49:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 51, 'neque', 13079, NULL, 2, '2013-06-08 16:13:10', '2003-07-07 20:21:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 58, 'nesciunt', 4518, NULL, 4, '2012-04-20 23:25:11', '1983-09-13 15:23:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 17, 'iure', 1929, NULL, 3, '1982-01-22 13:59:00', '1995-11-11 16:49:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 36, 'nobis', 7611, NULL, 2, '2003-11-23 09:21:44', '1999-08-15 00:52:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 29, 'cum', 4756, NULL, 2, '1996-09-29 23:33:48', '2009-11-15 06:57:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 39, 'perferendis', 10293, NULL, 2, '1998-02-15 05:10:22', '1996-04-28 19:27:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 47, 'sint', 19691, NULL, 2, '2012-01-30 03:33:59', '1987-09-15 06:46:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 65, 'aliquam', 16895, NULL, 2, '1994-04-08 21:07:54', '1979-06-15 03:40:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 89, 'totam', 1553, NULL, 2, '1992-01-05 08:56:31', '1973-08-03 23:04:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 16, 'distinctio', 13170, NULL, 3, '1988-06-05 06:19:10', '2006-04-03 15:50:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'quis', 15161, NULL, 4, '2002-09-22 09:16:16', '2007-09-02 10:00:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 38, 'voluptas', 7747, NULL, 3, '1977-08-13 21:35:23', '1993-05-26 13:37:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 87, 'in', 13963, NULL, 3, '2011-10-09 08:35:33', '2020-05-10 13:38:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 71, 'magni', 719, NULL, 4, '1989-01-07 06:31:18', '2008-10-03 12:44:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 1, 'possimus', 10537, NULL, 3, '1979-09-25 10:32:09', '2014-04-17 02:37:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 13, 'corrupti', 4333, NULL, 3, '1994-02-19 17:40:00', '1983-08-28 17:27:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 18, 'quo', 27, NULL, 3, '1986-02-10 11:35:15', '1978-06-17 01:03:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 41, 'eius', 10878, NULL, 2, '1977-03-24 00:28:42', '2012-02-15 10:19:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 36, 'error', 8398, NULL, 4, '2019-01-24 07:11:18', '1992-09-18 09:56:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 61, 'in', 13949, NULL, 3, '1970-06-01 13:46:32', '1987-01-24 19:10:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 22, 'quia', 17998, NULL, 4, '2019-05-17 07:53:56', '1995-05-17 11:52:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 6, 'omnis', 8262, NULL, 3, '1983-10-09 07:20:20', '2008-02-06 05:17:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 46, 'in', 17983, NULL, 3, '2003-09-21 09:47:24', '1999-12-02 00:58:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 8, 'sit', 13190, NULL, 2, '1984-11-16 20:26:59', '2017-06-01 06:39:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 12, 'quis', 17484, NULL, 1, '1996-07-22 04:11:29', '1973-02-23 23:26:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 7, 'aliquam', 8970, NULL, 3, '1971-10-28 14:43:52', '1994-10-26 12:32:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 14, 'eius', 266, NULL, 2, '2007-03-11 00:07:01', '2001-07-29 19:43:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 40, 'ab', 2112, NULL, 4, '2013-01-11 23:52:08', '1998-12-20 06:36:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 99, 'mollitia', 19284, NULL, 1, '1971-04-26 07:30:37', '1993-02-08 22:48:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 94, 'mollitia', 409, NULL, 4, '1971-08-06 10:00:23', '2010-10-27 20:51:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 86, 'id', 19223, NULL, 1, '2014-04-17 09:43:29', '1997-11-12 21:07:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 50, 'vel', 6658, NULL, 1, '1973-02-21 21:52:26', '1999-02-07 17:49:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 76, 'ea', 17704, NULL, 4, '1991-12-24 03:49:43', '2009-12-25 09:22:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 37, 'fugit', 766, NULL, 1, '2018-03-04 03:31:11', '2008-11-25 14:09:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 66, 'repellat', 1004, NULL, 4, '1984-05-26 09:08:55', '1994-07-01 18:09:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 75, 'velit', 4037, NULL, 4, '2002-10-13 09:28:15', '1991-05-12 19:13:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 97, 'rem', 2723, NULL, 4, '1991-10-07 05:51:48', '2013-05-13 08:59:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 56, 'iure', 3233, NULL, 2, '1986-06-23 01:47:08', '2016-02-05 11:51:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 52, 'laudantium', 16434, NULL, 3, '1990-09-11 14:30:54', '2010-01-12 23:12:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 77, 'quo', 7772, NULL, 3, '1988-04-14 02:12:26', '2000-06-25 20:59:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'nesciunt', 2134, NULL, 4, '2006-11-06 17:12:26', '1971-05-16 12:32:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 31, 'ullam', 16400, NULL, 4, '1984-10-29 14:23:47', '1981-08-18 18:33:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 27, 'sunt', 8430, NULL, 3, '1996-05-07 15:57:09', '1987-01-12 04:58:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 99, 'at', 1707, NULL, 1, '1989-03-01 21:18:23', '1972-05-28 08:50:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 81, 'reiciendis', 3240, NULL, 4, '1970-07-13 10:58:10', '1990-07-14 17:39:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 24, 'quo', 7574, NULL, 3, '1984-07-05 11:44:52', '1975-06-24 12:16:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 99, 'unde', 3635, NULL, 3, '2012-06-16 02:02:41', '1992-06-26 19:24:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 69, 'mollitia', 2387, NULL, 3, '1994-01-31 18:57:15', '1998-11-15 11:26:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 64, 'consectetur', 12138, NULL, 1, '1993-05-02 17:34:43', '1996-10-10 18:51:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 85, 'quia', 8215, NULL, 2, '1988-12-31 13:46:53', '1971-12-18 04:03:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 3, 'ut', 9380, NULL, 3, '1997-04-10 10:14:21', '1973-11-25 08:20:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 17, 'porro', 6295, NULL, 4, '2020-05-09 19:40:56', '1998-02-20 02:57:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 40, 'quia', 16976, NULL, 3, '2011-09-04 18:23:18', '2012-12-07 05:33:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 42, 'delectus', 4722, NULL, 4, '2012-09-05 21:35:50', '2017-05-06 08:02:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 35, 'eos', 15264, NULL, 1, '1994-10-14 00:25:27', '2020-02-02 07:47:14');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'audio', '1990-08-12 14:53:45', '2019-08-17 11:30:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'document', '2015-06-28 01:22:19', '1990-01-16 20:17:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'image', '2007-02-10 01:30:15', '1988-12-11 00:17:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'video', '2000-02-18 22:16:12', '2004-08-27 19:02:04');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 7, 39, 'Fuga fuga aspernatur enim officia omnis nobis. Cupiditate omnis enim esse odio. Odit dolor ut et distinctio beatae et quidem.', 0, 1, '1993-11-19 23:22:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 62, 75, 'Voluptatem totam quidem quidem qui dolorem quos. Aliquid voluptas ut ut quas dolores dicta aspernatur. Aut totam iste necessitatibus vel iusto dolorem exercitationem.', 1, 0, '2000-07-22 01:14:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 2, 26, 'Officia in rem officia omnis. Inventore fuga iusto sequi qui temporibus qui. Occaecati non ducimus dolor perferendis suscipit.', 0, 1, '1990-07-21 05:42:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 71, 18, 'Nulla ducimus aliquid aliquid exercitationem deleniti voluptas. Dolor neque et et. Quia et dolores aut voluptates.', 1, 0, '2017-06-07 17:39:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 90, 67, 'Tempore consequatur eum repudiandae nulla tenetur. Quae cumque et laboriosam sed nisi. Qui sit occaecati perspiciatis officiis dolore ullam ut. Et officia nam praesentium voluptatibus.', 0, 1, '1998-06-27 02:45:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 23, 60, 'Est sit harum quia consequatur sint quasi exercitationem. Est explicabo voluptas eum vero eius quo autem harum. Ut inventore doloribus quibusdam laborum modi est.', 1, 0, '2005-10-06 09:11:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 89, 24, 'Minima vitae beatae nostrum sed. Deleniti nihil voluptas hic aspernatur nobis. Quia nulla hic fuga eveniet repudiandae odio aut.', 1, 0, '1977-09-20 19:32:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 43, 56, 'Totam ea est qui aut sit sint sunt. Omnis natus voluptatem deleniti aperiam earum laborum facilis. Tenetur ut ut cupiditate nisi vitae. Qui vel et ea delectus est tempora quia.', 0, 0, '2006-12-19 05:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 35, 31, 'Ut porro quos corporis reiciendis. Et doloribus suscipit architecto qui id qui. Impedit facilis et pariatur. Consequuntur expedita ea non et numquam perspiciatis excepturi sunt.', 1, 1, '2005-04-08 05:11:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 73, 55, 'Quos rerum dicta voluptatem qui optio dolores. A beatae ea aperiam voluptatem suscipit alias iusto ea. Nam aut ipsa debitis necessitatibus quas adipisci. Est qui consequatur molestias dolores incidunt qui.', 0, 1, '1988-02-16 11:45:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 94, 39, 'Veritatis distinctio aut sint quos quo temporibus at at. Laboriosam rem qui voluptatum qui non. Iste velit neque reprehenderit et sint. Voluptates illo harum culpa qui qui. Molestiae culpa necessitatibus sint omnis quo et quia consequatur.', 1, 1, '1990-05-24 20:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 45, 88, 'Odit rerum ut dolore eos consequatur consequatur ex. Architecto voluptatem numquam voluptates facilis maxime cumque.', 1, 1, '1983-10-20 19:45:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 66, 82, 'Voluptatem porro et voluptatum dolor est facilis rem. Illo reiciendis ipsum omnis id. Atque facere repudiandae qui repellendus et vel eos cum. Quod quia nam sit at ab.', 0, 0, '1997-03-12 06:08:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 69, 31, 'Numquam dicta quo exercitationem corrupti eum optio. Impedit dolorem quo reprehenderit consequatur voluptatem. Itaque omnis excepturi in nam nam magni. Itaque sint velit et voluptas odio voluptas est.', 1, 1, '1972-01-04 20:33:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 82, 63, 'Et velit ullam est voluptate et enim. Aut ut exercitationem deleniti laborum illum. Accusantium qui ullam ipsum enim odit nam veritatis ab.', 1, 0, '1979-10-17 03:11:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 26, 88, 'Accusamus iusto dolores esse sed mollitia laboriosam cum. Sit assumenda libero aspernatur dolorem cum accusantium. Ut necessitatibus iusto non blanditiis voluptas itaque aut.', 1, 0, '2004-10-09 23:32:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 1, 88, 'Nisi sunt est doloribus et. Sed velit non quae rerum. Dolores exercitationem sed quis ullam aut dignissimos. Odit ab facere at non rerum et fugit.', 1, 0, '1997-07-01 13:28:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 62, 2, 'Sunt voluptas iusto voluptatibus ut et fugit aut. Doloremque alias nam voluptatum commodi totam quo deleniti non.', 0, 0, '1970-01-01 19:11:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 14, 33, 'Doloremque architecto ad atque repudiandae voluptatem. Aut ea saepe sit qui. Suscipit et quibusdam vel. Ea repudiandae excepturi quia facilis.', 0, 0, '1983-10-13 07:41:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 3, 'Omnis laudantium illo iste itaque atque. Error odit dolorum est autem tenetur. Quia enim occaecati vel ea voluptatum.', 1, 0, '1977-01-04 00:08:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 100, 43, 'Incidunt enim corrupti accusantium vitae unde labore vero. Nobis ex numquam inventore consequatur ut architecto. Delectus aut dolores ipsum sunt.', 1, 1, '1990-04-13 04:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 63, 88, 'Aut occaecati quis sint voluptate modi quia. Recusandae totam sint sunt voluptas voluptatem reiciendis.', 1, 1, '2018-01-12 02:57:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 66, 5, 'Iure fuga ut porro sequi ipsa eos. Qui voluptatum explicabo exercitationem libero sunt. Illo ea autem molestias est rerum.', 1, 0, '2016-01-06 07:00:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 44, 1, 'Excepturi quaerat totam eum nostrum ut deleniti. Earum libero molestiae itaque aut ex dolore. Repellat deleniti veritatis quidem labore perspiciatis.', 1, 0, '1999-04-15 03:50:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 36, 17, 'Molestiae minus sed unde et ullam rerum aut nisi. Corrupti dolorem deserunt ullam et in expedita. Veritatis sed ab repellat sit corrupti perferendis. Illo veritatis voluptatem nihil nobis.', 1, 1, '1991-08-05 00:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 55, 29, 'Fugit corrupti aperiam praesentium modi molestias exercitationem quo. Dolor voluptas rerum velit ratione quod. Necessitatibus iure quasi incidunt incidunt sed tempore et in. Voluptates voluptas praesentium sint facere libero ullam dolorem beatae. Tempore sed provident vitae consequatur ratione atque qui.', 1, 1, '1976-01-28 12:58:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 56, 100, 'Et numquam adipisci aut et repellat voluptatem excepturi. Cupiditate repudiandae sit aut tempore nihil rerum at mollitia. Totam neque deserunt debitis culpa. Odit mollitia ab autem fugiat corrupti suscipit sunt.', 0, 0, '1983-07-18 10:31:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 17, 22, 'Deserunt reprehenderit amet qui et sit officia perferendis. Atque quia sint qui et rerum.', 0, 0, '2019-08-05 05:59:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 81, 86, 'Deleniti quo voluptas aut. Tenetur sit sequi qui qui veritatis. Amet minima aut occaecati ratione voluptatem incidunt ea. Aliquid recusandae voluptates iure est alias dolore dolore. Quae voluptate officia inventore ut.', 0, 1, '2014-12-18 21:16:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 52, 62, 'Dolorum amet alias at nisi saepe eligendi. Qui omnis aperiam sed nemo assumenda. Possimus sunt autem non omnis enim consequatur velit.', 1, 0, '2017-05-27 21:08:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 48, 78, 'Ut voluptas quibusdam nesciunt magnam sed. Est id quae quam et. Enim assumenda ut culpa. Iusto corporis sunt accusamus aut officiis.', 1, 0, '1975-12-06 19:31:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 50, 49, 'Sapiente nobis laboriosam et non sint dicta. Voluptate ad at saepe reprehenderit reprehenderit. Vel aut autem delectus voluptatem odit voluptas rem. Similique ipsa et sequi enim dolore et nihil.', 1, 1, '2010-11-15 18:23:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 66, 12, 'Ut nisi aliquam ipsam qui. Dolorum sapiente et voluptatem molestiae autem alias quae. Facere eum et nam sequi est quis reiciendis assumenda. Repellendus quae occaecati iusto eum ut.', 0, 0, '2007-12-13 11:03:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 51, 79, 'Aut explicabo ea sunt magni. Magnam omnis repellendus et neque non dolorem libero atque. Unde numquam eaque omnis velit ut possimus sit.', 0, 1, '2016-04-03 21:39:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 45, 71, 'Cupiditate sed cum id hic soluta a officia. Rem facilis sed et iste et eos autem. Nihil et qui in id quaerat magnam officiis. Impedit exercitationem cupiditate dolores tenetur odit et repudiandae ex.', 1, 0, '1999-05-07 18:58:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 81, 44, 'Facere nesciunt est neque aliquid odio odio omnis in. Eos aliquam dicta eum et quia eligendi distinctio. Aliquam quidem inventore doloribus et. Sint eaque vel odio autem autem.', 0, 0, '1998-01-17 02:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 13, 43, 'Iure fugiat ipsam accusamus id recusandae corporis qui dignissimos. Et delectus adipisci incidunt dignissimos assumenda. At optio eum temporibus non veniam.', 1, 0, '1980-03-21 07:37:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 32, 78, 'Quibusdam nostrum omnis tempore eaque error enim. Aut incidunt natus provident at voluptatem distinctio assumenda. Est non qui dolorum at dolores veniam. Ab rerum et eligendi repudiandae et. Voluptates et assumenda aut quaerat a error.', 0, 1, '2000-06-01 03:44:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 48, 75, 'At expedita non sed accusantium. Excepturi ut id dolor distinctio. Blanditiis aut unde odit ab ullam aut. Ducimus facere vel in qui inventore laboriosam accusamus.', 1, 1, '2001-05-17 12:42:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 79, 83, 'Iste perferendis porro laborum perspiciatis. Et voluptatum quis tempora dolores ab odit. Eligendi qui voluptas molestiae vel et alias qui. Nulla doloribus eveniet voluptas pariatur.', 1, 0, '1976-02-01 23:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 91, 33, 'Aliquam harum provident nobis dolores. Placeat deleniti iste dicta. Voluptatum et dolorum et voluptatum.', 0, 0, '1971-02-24 22:49:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 12, 46, 'Deserunt blanditiis natus et magni asperiores a. Deleniti possimus beatae placeat qui aspernatur. Magni quas nihil aut eum vitae doloribus est. Corrupti minus illum voluptates error.', 1, 0, '2011-10-21 08:03:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 32, 28, 'Sed qui nisi dignissimos dicta quia deserunt. Cum odio sint repudiandae tempora inventore.', 1, 1, '2004-09-30 07:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 67, 13, 'Architecto eos beatae possimus deleniti pariatur sit tenetur. Officiis nesciunt laudantium nemo exercitationem nobis aperiam natus qui. Assumenda rerum provident quam sequi.', 1, 0, '2020-02-21 06:58:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 14, 19, 'Et vitae vel officiis dolorem ut nulla accusamus. Eligendi eveniet ut qui non praesentium. Quam ut sapiente perferendis cupiditate est.', 1, 1, '2009-10-18 17:47:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 75, 61, 'Consequuntur vero ab non ad iste vel. Soluta quia harum dolor libero modi officiis omnis. Labore labore architecto enim esse cum. Itaque sed sed possimus illum tempore veniam velit.', 1, 0, '2010-02-06 02:37:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 97, 24, 'Itaque neque quo deserunt numquam natus. Ut quis labore delectus illo consequuntur optio. Ut eum dignissimos ea quo doloribus reiciendis.', 1, 1, '1983-03-10 02:13:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 10, 62, 'Non nihil velit eveniet et inventore. Impedit voluptas nesciunt sapiente explicabo. Velit delectus quia similique et consequatur dolores. Est quia eaque odio qui veritatis et sed.', 1, 0, '2008-06-18 16:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 36, 61, 'Omnis minus in culpa perferendis cum. Quia neque possimus ipsum nemo eum. Animi quas recusandae non omnis quia expedita enim. Ad excepturi distinctio tempore molestiae corrupti at accusantium nemo.', 1, 0, '1992-01-31 21:01:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 41, 80, 'Rerum dolore quasi at atque. Magni alias voluptatum labore sunt blanditiis. Sint qui expedita nemo rerum.', 0, 1, '1975-05-11 07:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 31, 22, 'Itaque ut rem cum deleniti vel eos molestiae. Saepe explicabo sint et nobis voluptas consequuntur fugit. Ab consequatur nobis reiciendis ea autem. Ducimus et earum excepturi illo similique voluptatem.', 1, 0, '1995-06-18 07:26:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 23, 44, 'Necessitatibus dolor qui qui molestiae debitis provident cum possimus. Alias saepe necessitatibus et laboriosam voluptas. Porro molestiae omnis id rerum laudantium sunt.', 0, 1, '2006-02-15 01:37:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 65, 54, 'Aut non id repellendus blanditiis. Earum aliquid in et cupiditate veritatis impedit.', 0, 1, '1981-08-23 07:26:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 21, 12, 'Quidem aut ut beatae eos. Quis modi quaerat corporis repellat magnam vel et. Eum et iusto facilis occaecati necessitatibus consequatur pariatur.', 1, 0, '1995-04-05 06:43:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 29, 99, 'Laborum voluptatem non velit voluptatibus. Magnam veritatis aut quis non. Labore qui ut consequuntur nobis.', 1, 0, '1977-08-03 05:03:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 94, 20, 'Beatae dolorem quis repellendus commodi. Autem non quidem ex. Maxime autem inventore vel veritatis animi perferendis enim.', 0, 1, '1982-06-15 17:30:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 32, 5, 'Odit debitis minima quas architecto qui at. Tempore ut aperiam nam esse et distinctio non. Et quas tenetur voluptates consectetur sit nam placeat. Pariatur iure qui veritatis eveniet.', 0, 1, '2011-04-29 20:37:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 66, 64, 'Et et facere est praesentium facere minus. Ut sed saepe sit necessitatibus.', 1, 1, '1980-01-25 19:59:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 33, 33, 'Laboriosam aliquid optio ea minima. Magni voluptatum omnis veritatis aut. Eligendi quisquam omnis deserunt reprehenderit quam.', 0, 1, '2013-09-09 04:29:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 76, 46, 'Numquam sit aut quia omnis modi aut. Sed repellendus rerum ut quia repellendus inventore. Autem qui sapiente vel sit sint. Nihil impedit optio voluptatem explicabo quod.', 1, 0, '2012-04-07 02:47:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 52, 50, 'Aut modi et voluptatem et voluptas. Optio vel fugiat exercitationem id facere provident. Dolores ut vitae ut earum.', 1, 1, '1975-10-19 05:45:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 7, 48, 'Nam quo odio distinctio dolorum voluptatem provident sint. Sit qui eius facilis ipsum quae esse facere. Odio fugiat dolores ut placeat earum nostrum explicabo voluptatem. Explicabo et voluptatem accusantium ipsum consectetur dolorum.', 0, 1, '2009-11-24 15:06:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 74, 16, 'Maxime eum alias quidem quos modi. Distinctio voluptatem est veniam sint sunt quis. Molestiae asperiores odio et amet tenetur. Rerum a ut fuga non unde unde tempora necessitatibus.', 0, 0, '2016-07-26 04:13:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 10, 9, 'Aut dolor dolor perferendis suscipit aliquam. Ut nihil iusto qui dolores maxime voluptas iste. Aperiam et rerum cum.', 1, 1, '1971-04-27 14:18:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 77, 50, 'Dolorum sed eum cupiditate facere qui animi id. Quisquam optio accusantium molestiae eveniet et voluptatem. Expedita culpa et a est iste.', 0, 1, '1990-10-20 15:27:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 88, 8, 'Rerum laboriosam voluptate et adipisci assumenda eum aliquam. Ut delectus ea et qui consectetur. Sit et mollitia ab error aliquid nisi dolor.', 0, 0, '2004-01-24 06:21:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 71, 11, 'Facilis perferendis facere et tenetur aliquam quae. Laboriosam vel qui autem velit ipsa tempora. Laboriosam et provident et perferendis non cumque ad.', 1, 1, '2009-06-12 23:40:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 51, 35, 'Consectetur ea itaque qui maiores voluptas dolores. Cum aspernatur neque consequatur velit eaque dolore. Eaque quo ex est id eos laboriosam. Illo perspiciatis qui similique rerum inventore rerum quasi sed.', 0, 0, '1977-04-07 20:43:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 64, 71, 'Eaque ipsum excepturi doloribus. Error sunt ipsam provident voluptate earum rerum. Praesentium enim non sequi quis dolores. Aut enim libero temporibus in minus.', 0, 0, '1988-06-24 17:00:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 47, 93, 'Qui adipisci consequatur qui vel eligendi sit. Consequuntur quae et deserunt. Placeat autem nostrum omnis earum. Explicabo distinctio id ex. Perferendis at aliquid quidem.', 0, 1, '2016-11-19 08:45:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 70, 40, 'Voluptas officia illo optio voluptatem eligendi et. Provident nesciunt velit ut ipsa quod. Quae ipsa vel dolores molestiae. Perspiciatis nesciunt alias molestiae.', 1, 1, '1977-04-12 00:36:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 12, 2, 'Architecto ut ratione delectus voluptas accusantium. Et dolorem aut quia porro incidunt laudantium.', 1, 1, '1972-11-26 20:33:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 45, 77, 'Est porro consequatur molestiae in sint et. Autem tempore quas perferendis dolore aut. Aliquam ducimus possimus doloremque ea et maiores. Aut asperiores atque accusamus et velit dolorem.', 0, 0, '2003-10-27 03:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 65, 77, 'Non nihil aut similique porro quasi dolorem. Autem explicabo facere quia nihil aut dolores quaerat et. Eius praesentium harum ab tempora sunt vitae et. Dolor alias incidunt exercitationem atque ipsam.', 1, 0, '2014-11-27 07:20:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 9, 40, 'Deleniti id in quod eum porro explicabo eveniet. Placeat eius in est a modi. Nesciunt rerum ipsum inventore corrupti. Enim tempore enim accusamus aut.', 0, 0, '1972-11-19 09:21:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 23, 60, 'Aut et reiciendis impedit rerum explicabo nam ut. Nihil aliquid enim est nihil.', 0, 0, '1994-07-02 20:43:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 90, 29, 'Eum nisi et qui debitis. Voluptate esse nihil et neque repudiandae. Saepe rem autem eos non. Aliquam ipsam ex et.', 0, 0, '1994-10-27 05:24:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 8, 63, 'Enim nihil occaecati qui rerum dicta. Ut officiis et ducimus reiciendis nihil quo. Perspiciatis unde perspiciatis quia nobis. Recusandae qui necessitatibus incidunt omnis.', 0, 0, '1986-11-08 13:37:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 45, 17, 'Quia nihil itaque eaque unde quo. Explicabo repellat atque commodi at laboriosam cum et. Pariatur nesciunt modi non est. Natus aliquam est maxime tenetur ducimus similique.', 1, 0, '1995-07-02 05:15:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 72, 22, 'Et fuga ut consequatur exercitationem qui quam laborum quis. Aut dolorem fugiat deleniti consectetur aut. Quaerat modi error iste quas nulla aut. Debitis aut et quas quibusdam qui.', 0, 1, '1977-03-26 06:56:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 66, 59, 'Molestiae ipsum quia molestiae. In non animi sed voluptatem voluptatibus dolor. Sequi ut velit odio. Et laudantium quis neque enim in inventore accusamus.', 0, 1, '2001-06-18 05:11:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 29, 37, 'Occaecati consequatur iusto et ut quia enim qui. Expedita tempore quia molestiae fugiat. Eligendi est ipsa velit culpa omnis eaque ea molestiae.', 0, 0, '1990-11-29 07:27:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 69, 79, 'Quod facere corporis tempora. Non saepe libero tenetur dolores architecto. Distinctio quis consectetur omnis mollitia error consequatur.', 0, 1, '1989-12-01 18:12:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 72, 33, 'Sint id necessitatibus optio nesciunt harum ea. Quis natus eos veritatis. Quaerat totam qui molestiae nihil voluptas velit.', 0, 1, '2019-11-11 12:07:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 50, 18, 'Consequuntur voluptatem qui molestiae velit. Reiciendis necessitatibus cupiditate at. Fugit exercitationem facilis suscipit quia tenetur. Eum voluptas doloribus nemo aliquam ut tempore.', 0, 0, '1990-11-28 17:37:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 25, 19, 'Provident eius incidunt pariatur asperiores id repudiandae. Explicabo ea quidem velit placeat aut porro. Rerum ut nobis sunt voluptatem.', 0, 0, '1995-04-25 07:49:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 58, 37, 'Error neque et amet officiis nulla. Debitis accusantium blanditiis excepturi atque quibusdam modi. Dignissimos itaque suscipit sequi commodi a in velit.', 1, 1, '2017-03-26 10:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 21, 3, 'Quia dicta odio dolor error sint molestias voluptatum voluptas. Cum velit et illo quo quasi ducimus harum.', 1, 0, '2007-11-01 23:21:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 13, 85, 'Qui dolor sed non et eos aliquid. Qui veniam et voluptate ut non. Et odio doloribus vel possimus blanditiis quo.', 1, 0, '2005-03-13 12:06:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 80, 21, 'Sit temporibus ut quo aut fugiat consectetur sint. Soluta voluptas qui est.', 1, 1, '2015-12-25 20:37:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 25, 2, 'Quam accusamus sed et odit. Explicabo incidunt pariatur qui suscipit veritatis quidem. Ullam placeat nihil consequuntur labore quas.', 0, 1, '2001-10-04 10:22:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 81, 14, 'Omnis possimus maxime consequatur. Et praesentium ut animi quidem ex omnis eius.', 1, 1, '1997-09-09 07:16:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 31, 88, 'Cumque modi asperiores neque minus incidunt. Doloremque et fugit laboriosam debitis quia. Ad ab eius inventore tempore aspernatur sequi exercitationem.', 1, 1, '1974-06-02 18:18:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 76, 76, 'Dolores debitis asperiores quaerat praesentium sequi. Consequatur quis ratione distinctio quia. Repellendus quibusdam dolore incidunt nisi qui quibusdam. Eos delectus exercitationem eos.', 0, 1, '2018-07-28 12:15:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 4, 48, 'Eum animi sunt sint sit omnis expedita possimus. Consequuntur eius commodi labore. Blanditiis non voluptatem eligendi nulla.', 0, 1, '1985-06-14 11:54:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 97, 70, 'Ut ut qui occaecati illo inventore. Maiores rem quo quod. Sit dolores deleniti in excepturi ut.', 1, 1, '1998-12-29 15:41:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 6, 25, 'Ut autem ut dolores. Ipsam aut veniam minus nisi. Omnis fuga aut voluptatem ut tempora fuga autem.', 1, 1, '1982-12-31 21:46:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 7, 75, 'Qui et sequi velit voluptatibus nemo. Et non non non est. Assumenda quo nulla dolorem aut aperiam reiciendis explicabo et.', 1, 1, '2004-04-19 07:09:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 3, 79, 'Deserunt harum harum culpa quae. Dignissimos voluptas aliquam excepturi molestiae quis eum quasi. Aperiam id non blanditiis labore. Sed adipisci alias natus ut rerum dolorem quo molestiae. Suscipit rem deserunt aut expedita nobis porro eligendi cupiditate.', 0, 0, '1985-01-21 13:14:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 8, 52, 'Vel dolore itaque voluptatibus. Consectetur fugit nihil nostrum quo eaque reprehenderit. Impedit minima magni dolorem quae sint molestias.', 1, 1, '2012-03-25 18:59:00');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '1990-12-10', 'East Violette', 'Guinea-Bissau', '2014-04-15 10:24:11', '1990-10-04 20:20:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1975-06-13', 'West Corinestad', 'Montenegro', '2013-08-26 07:27:52', '1990-10-30 10:34:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1977-05-27', 'New Litzy', 'Sierra Leone', '1994-11-24 10:46:12', '1983-07-22 09:02:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '2011-05-30', 'Lake Arlenemouth', 'Saint Vincent and the Grenadines', '1978-07-10 21:44:23', '1974-02-08 10:21:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '2012-05-13', 'West Ebony', 'Honduras', '1980-06-11 15:37:06', '1993-03-14 08:50:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '1997-04-02', 'Fritschhaven', 'Kyrgyz Republic', '1973-10-02 16:18:35', '1980-12-02 12:35:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1996-07-23', 'Goldnerfort', 'Iceland', '1985-07-20 07:29:43', '1977-03-21 12:56:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '2001-04-16', 'Johnnieshire', 'Kuwait', '1996-03-28 07:18:40', '1999-02-09 22:01:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '2014-06-15', 'Sandrineview', 'New Caledonia', '2003-05-20 22:17:54', '1997-01-04 23:25:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1979-03-01', 'East Venaland', 'Moldova', '2012-10-22 00:05:20', '2017-10-13 23:19:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1995-04-06', 'Haagbury', 'Iran', '1983-12-30 01:46:43', '1983-04-05 20:14:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '2018-04-03', 'North Heberhaven', 'Venezuela', '2002-08-14 00:01:03', '1995-03-28 21:11:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1972-10-29', 'Lehnerland', 'South Georgia and the South Sandwich Islands', '2015-04-07 21:57:54', '1977-01-11 21:46:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1993-04-20', 'West Jilliantown', 'Mexico', '2011-07-30 07:53:12', '2000-07-30 20:55:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '1979-12-05', 'Dinamouth', 'Paraguay', '1992-06-16 17:10:22', '1986-05-30 03:23:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1977-05-09', 'Schmittstad', 'Ireland', '2012-05-17 01:49:31', '1970-03-31 16:25:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '1973-11-29', 'Gradymouth', 'Rwanda', '1970-08-17 23:03:38', '2005-05-26 13:00:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '2010-04-01', 'Justineborough', 'French Polynesia', '1983-07-21 09:17:36', '2014-09-24 19:51:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '1992-10-03', 'Jermainburgh', 'Argentina', '1973-10-19 01:15:35', '1980-12-01 06:10:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '1978-08-27', 'Mooreview', 'Solomon Islands', '1971-12-04 04:28:47', '1971-05-13 05:03:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1972-06-08', 'East Haroldland', 'United Kingdom', '1978-07-14 03:17:14', '2007-02-08 16:08:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2000-04-08', 'East Mavis', 'Estonia', '2004-10-14 05:31:40', '1982-01-03 02:48:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '2019-07-16', 'Port Blancachester', 'Ethiopia', '2018-01-07 12:18:51', '1999-08-08 01:06:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '1978-02-02', 'Haneton', 'Nicaragua', '1973-06-16 02:48:52', '1984-06-12 03:45:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '1993-02-02', 'Beatriceberg', 'Tuvalu', '1970-03-05 05:07:27', '2005-01-29 18:24:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1989-10-09', 'Luzport', 'Slovakia (Slovak Republic)', '1983-01-27 08:07:54', '2009-02-27 13:11:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '2003-11-25', 'South Abbigailmouth', 'Cuba', '2013-02-20 07:14:34', '1984-09-21 15:35:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '2017-03-26', 'North Dereck', 'Croatia', '1994-10-03 19:09:59', '1979-06-09 04:08:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '1981-10-17', 'Langton', 'Cocos (Keeling) Islands', '2004-01-23 21:23:02', '2004-01-02 18:53:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '1979-04-03', 'Lancechester', 'Argentina', '1981-08-03 00:28:11', '1985-05-03 05:30:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1986-05-30', 'Gutkowskiland', 'Ghana', '2007-07-23 08:00:24', '2003-07-08 05:01:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '2013-02-04', 'New Raeganborough', 'Lebanon', '1975-03-14 11:01:58', '2008-08-24 03:28:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '1996-06-02', 'Lake Kraig', 'Algeria', '2001-12-07 02:31:27', '2008-03-22 11:32:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '2002-03-21', 'South Antonietta', 'Dominica', '2010-03-06 15:20:28', '2009-12-15 19:53:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1975-11-23', 'East Theresa', 'Indonesia', '1991-05-25 15:03:13', '1997-02-26 13:27:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '2011-07-04', 'Sawaynmouth', 'Mozambique', '2004-03-11 03:07:05', '1987-02-26 17:52:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1978-03-03', 'West Halmouth', 'Bulgaria', '1984-06-26 13:06:54', '1975-05-02 10:43:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '1982-06-11', 'Rafaelton', 'Iceland', '2005-03-29 16:25:43', '1995-12-10 04:38:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1980-01-25', 'Kimberlyfort', 'Guernsey', '1979-12-26 12:27:23', '1980-04-09 08:27:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '1971-01-22', 'Reichelbury', 'United States Minor Outlying Islands', '1984-11-13 10:00:06', '1990-12-19 04:26:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '1985-08-27', 'Bayerhaven', 'Mongolia', '2019-12-03 08:03:06', '1980-10-22 21:38:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '1975-03-05', 'Mohammedton', 'Nigeria', '1982-11-25 01:06:57', '2019-02-28 02:37:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '1985-02-05', 'Sharonside', 'Holy See (Vatican City State)', '1971-05-31 18:58:06', '1994-08-17 04:06:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '1990-06-03', 'North Zoie', 'Israel', '2001-12-14 04:10:21', '1974-06-17 14:38:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '2004-03-09', 'Lake Asamouth', 'Cape Verde', '2010-01-24 17:52:58', '1992-07-25 01:47:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '2009-07-17', 'Lake Burniceside', 'El Salvador', '2000-11-09 17:32:47', '2008-02-17 13:49:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '1989-03-07', 'West Efrentown', 'Syrian Arab Republic', '2000-06-25 14:53:34', '1991-09-21 11:12:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '1982-05-17', 'Abbottberg', 'Mali', '1983-11-08 19:51:26', '1998-03-04 09:24:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '2013-01-28', 'Allanfurt', 'Belgium', '1999-02-09 22:12:29', '2016-10-27 11:49:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1984-05-29', 'Port Enrique', 'Pitcairn Islands', '2003-07-25 06:28:04', '2000-11-05 10:17:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1991-01-30', 'Daxhaven', 'Austria', '2013-04-11 19:04:19', '2005-07-03 15:07:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '1992-11-07', 'Georgiannastad', 'Malaysia', '2002-12-16 05:48:05', '1980-04-23 02:34:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2012-03-20', 'New Gardnerhaven', 'Cote d\'Ivoire', '2007-12-05 18:18:20', '1989-09-15 10:13:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'f', '2003-06-23', 'East Delphahaven', 'Switzerland', '2018-11-16 10:24:23', '1971-07-04 11:06:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1978-02-08', 'Lake Brennon', 'Madagascar', '1998-02-07 12:10:18', '2010-04-21 21:14:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2017-08-13', 'South Cliftonshire', 'Iran', '1988-03-22 19:53:57', '2002-03-21 09:20:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '2011-07-30', 'East Trevaton', 'Paraguay', '2007-05-14 01:06:44', '1981-09-22 22:41:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '1990-03-08', 'Kertzmannchester', 'Austria', '1994-11-11 06:02:36', '1984-06-12 17:25:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '1991-10-26', 'Craigside', 'Lebanon', '1982-04-21 12:23:48', '1976-08-06 01:35:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '2008-03-17', 'North Ulises', 'Paraguay', '1989-10-18 00:26:21', '1981-06-06 02:41:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1998-06-18', 'North Thelmamouth', 'Armenia', '1970-10-23 00:38:47', '2003-09-15 19:57:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '2004-01-24', 'Strosinchester', 'Hong Kong', '1995-08-11 07:57:55', '1994-08-14 00:37:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '1973-10-16', 'South Albin', 'Afghanistan', '2018-07-15 11:40:01', '2000-11-25 19:12:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1973-04-20', 'West Demario', 'Romania', '1994-06-07 04:20:26', '2012-06-16 17:26:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1998-04-12', 'South Edythview', 'Israel', '2011-05-29 15:58:10', '2003-10-20 23:13:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '1986-10-24', 'New Ibrahim', 'Hungary', '1989-06-13 00:25:01', '1997-08-22 14:27:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'f', '1992-08-02', 'Lake Jasonside', 'Armenia', '1981-08-11 08:08:36', '2010-08-12 09:42:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '1990-02-08', 'West Davontemouth', 'Philippines', '1982-05-11 22:45:04', '1995-06-20 09:59:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '2005-09-26', 'Walkerville', 'Togo', '2009-09-06 08:03:28', '2011-08-20 09:58:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1975-03-25', 'Onieville', 'Jordan', '2005-11-04 13:06:02', '1996-07-27 16:39:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '1996-07-04', 'Zackeryton', 'Cape Verde', '2005-12-19 10:35:13', '2018-12-10 15:50:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '1978-11-06', 'North Helen', 'American Samoa', '2004-11-02 18:25:13', '1996-10-12 04:41:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1976-06-12', 'Hicklestad', 'Canada', '2003-03-19 23:40:29', '2017-04-15 03:13:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1978-10-31', 'Saraibury', 'Nauru', '2019-09-29 10:13:40', '1998-10-18 18:05:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1984-10-10', 'Kohlerhaven', 'French Guiana', '1987-11-10 13:39:19', '1997-11-21 08:39:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '2014-12-18', 'South Dallas', 'Lesotho', '2002-01-03 22:51:11', '1978-07-12 05:43:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '1971-01-28', 'New Anna', 'Somalia', '1988-10-09 07:00:44', '1978-01-13 07:41:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1991-12-03', 'Reynoldsmouth', 'Timor-Leste', '1981-06-26 09:56:12', '1982-03-31 20:25:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '2001-08-16', 'Lake Johnathonshire', 'Benin', '1987-06-14 12:25:07', '2015-10-10 21:42:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '1986-12-25', 'Mustafaland', 'New Zealand', '1973-08-08 07:27:56', '1987-02-26 04:00:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '2004-09-27', 'Irwinview', 'Saint Martin', '1990-09-01 22:37:26', '1996-10-28 20:22:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1994-01-25', 'South Shyann', 'Yemen', '2015-06-27 23:03:01', '2018-05-05 14:44:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '2001-09-04', 'New Opalfurt', 'France', '2012-03-11 10:59:03', '1979-05-22 05:32:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '2007-03-18', 'North Georgianaburgh', 'France', '1998-01-24 06:22:31', '1989-12-12 05:17:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '1996-03-11', 'Bufordville', 'Montenegro', '1979-05-14 14:32:20', '2009-09-27 01:17:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '2014-09-19', 'Lake Percival', 'Congo', '1983-02-20 17:21:51', '2011-11-08 23:02:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '1987-03-18', 'Hoegerburgh', 'Bangladesh', '1983-12-05 22:32:00', '1980-10-16 18:34:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1998-06-13', 'Jerryland', 'Falkland Islands (Malvinas)', '2008-03-27 05:26:13', '2012-01-07 02:09:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '1982-07-08', 'Robbieport', 'Cayman Islands', '2009-03-27 03:45:19', '1999-06-22 00:12:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '2015-05-21', 'East Elva', 'Peru', '2013-01-22 14:47:06', '1973-10-13 15:16:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '1985-08-24', 'East Keeley', 'Vanuatu', '1975-11-13 15:13:36', '1983-07-09 17:24:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '2010-08-19', 'Lake Feliciafurt', 'Afghanistan', '1993-12-21 13:10:14', '2008-06-29 00:49:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1983-01-10', 'Hillsfurt', 'Bhutan', '1996-02-15 13:40:22', '2006-04-02 03:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1991-02-26', 'Clairton', 'Madagascar', '2018-07-11 20:21:52', '1988-10-02 02:33:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '2008-03-06', 'Misaelfort', 'Oman', '2011-10-25 13:34:02', '2013-06-29 01:18:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '2016-12-27', 'Lake Brandyn', 'Holy See (Vatican City State)', '1993-02-20 12:19:22', '2015-12-26 09:19:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '1991-01-28', 'Graciemouth', 'Philippines', '1987-12-27 14:53:55', '1998-06-18 23:03:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '2015-11-09', 'Port Karamouth', 'Heard Island and McDonald Islands', '1971-07-29 10:34:52', '1991-02-25 18:19:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '2011-01-02', 'Bodeside', 'Montenegro', '1991-07-08 10:47:22', '2010-08-21 13:09:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '1988-02-27', 'West Barrett', 'United Arab Emirates', '2019-10-13 16:02:50', '1991-02-01 13:43:31');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '�?мя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Chasity', 'Ritchie', 'maryjane38@example.org', '+54(9)5569645531', '2007-08-13 11:47:54', '2011-12-01 18:45:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Aaron', 'Cremin', 'roslyn.nicolas@example.com', '610.127.5078x0049', '1985-05-17 18:44:09', '1974-03-31 03:02:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Wilburn', 'Schaden', 'ogaylord@example.org', '(217)866-9428x1222', '1991-05-29 07:01:46', '2009-07-29 18:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Yessenia', 'Beahan', 'naltenwerth@example.org', '+22(1)2992820066', '1996-11-02 17:02:44', '1974-12-01 17:44:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Alda', 'Mosciski', 'marlen52@example.com', '172.747.6639x9348', '2013-04-17 05:41:41', '1977-10-16 17:41:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Nedra', 'Howe', 'uvandervort@example.com', '(544)453-4066x86626', '2003-03-21 16:13:51', '1985-07-14 15:22:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Nash', 'Fisher', 'hoeger.chance@example.org', '(815)690-5850', '1995-05-11 22:41:42', '2011-04-29 20:58:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Saige', 'Hilpert', 'julianne.gleichner@example.net', '304.912.5185', '2002-09-26 05:39:59', '2003-09-06 17:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Maximillia', 'Okuneva', 'thickle@example.net', '(048)718-6325x20574', '1971-11-05 04:02:17', '1992-06-12 08:50:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Bonnie', 'Reynolds', 'smckenzie@example.org', '1-883-175-3388', '2019-12-01 03:25:57', '2001-04-15 17:44:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Katlynn', 'Lindgren', 'merritt.barton@example.net', '073.921.3858', '1983-06-17 06:51:39', '1996-09-24 13:59:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Keanu', 'O\'Kon', 'stokes.marley@example.net', '530-210-7790x987', '1999-07-19 22:01:07', '2020-05-20 13:01:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Vincent', 'Beier', 'emraz@example.net', '(925)123-9340x6374', '2012-04-27 05:11:58', '2014-08-14 01:31:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Anabelle', 'Morar', 'casper.ayden@example.org', '1-656-455-1087', '1978-12-26 04:51:38', '1993-12-25 07:36:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Leland', 'Mitchell', 'bernard.grady@example.org', '1-737-896-3942x84330', '1988-05-04 05:37:09', '1988-01-15 01:30:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Uriah', 'Haley', 'marvin.kristian@example.net', '427.761.3519x1753', '1970-01-25 21:02:58', '2003-11-15 09:30:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Chasity', 'Jacobson', 'xbarton@example.net', '1-783-774-8887', '1992-12-01 07:39:37', '2011-01-11 02:28:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Jerod', 'Greenholt', 'ysporer@example.com', '435-762-0199x56668', '1999-03-10 08:58:34', '2005-09-03 06:08:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Leopoldo', 'Jaskolski', 'karson25@example.org', '1-827-854-0301', '2015-09-13 11:51:43', '1988-03-03 20:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Rory', 'Ziemann', 'summer38@example.com', '568.892.6097', '2014-10-04 22:54:10', '1980-05-27 02:36:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Thaddeus', 'Bartell', 'tharris@example.net', '577-644-5098x891', '1984-12-20 15:28:17', '2005-09-27 09:53:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Albertha', 'Hudson', 'cbaumbach@example.org', '415.559.2671x552', '2011-12-24 13:51:05', '2020-03-11 04:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Sydnie', 'Wolff', 'kali62@example.net', '(273)925-5199', '2014-03-14 00:27:11', '2006-08-12 19:35:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Denis', 'Brakus', 'madelynn.murazik@example.net', '945-721-8483', '1979-10-26 17:10:36', '2001-08-15 03:17:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Fabian', 'Lind', 'xmitchell@example.com', '(625)062-0045x946', '2014-08-24 06:26:32', '1989-12-28 07:42:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Davin', 'Okuneva', 'lmurray@example.org', '405.009.8643', '2000-06-13 10:55:08', '1999-11-01 12:29:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Tristian', 'Kirlin', 'jaron.hilpert@example.com', '359-798-6604x59290', '2017-09-15 22:39:45', '2015-06-16 18:12:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Jaron', 'West', 'hagenes.laurianne@example.org', '524.764.3926x36843', '1973-08-29 05:51:05', '2019-07-31 20:31:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Olga', 'Brown', 'orin.moore@example.net', '1-809-661-2820', '1979-06-02 14:46:47', '1990-04-08 05:43:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Tiffany', 'Casper', 'forest45@example.net', '1-201-112-9822x043', '2007-09-04 10:01:37', '1980-12-11 13:51:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Mitchel', 'Larson', 'auer.noemi@example.org', '09470495258', '2006-04-25 22:20:05', '2011-11-08 03:20:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Bartholome', 'Goldner', 'dolores69@example.org', '481-558-2086', '2002-06-29 14:08:51', '2019-05-30 07:07:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Orpha', 'Welch', 'keeling.antone@example.com', '627.169.5854x23135', '2004-09-08 12:02:14', '2019-01-18 19:56:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Judah', 'Torp', 'chaz55@example.org', '456-162-4030x810', '2015-09-16 21:17:08', '1989-09-06 02:34:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Hazel', 'Hermiston', 'michele96@example.org', '(408)514-9980', '1988-11-01 23:39:22', '1987-11-28 10:49:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Carolyne', 'McCullough', 'pdibbert@example.org', '273-428-2737', '1986-11-07 13:42:44', '1972-02-20 17:26:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Manuel', 'Zboncak', 'wfeest@example.net', '(992)742-1579', '1987-08-29 12:06:49', '2008-03-09 00:55:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Ray', 'Schuster', 'rachel39@example.net', '784-521-9850', '2001-12-23 05:43:56', '2017-02-25 19:57:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Jose', 'Cole', 'lois40@example.com', '1-249-175-5287', '1977-02-13 15:02:52', '2019-08-26 18:35:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Maci', 'Hand', 'kirlin.khalid@example.com', '1-804-867-8273', '2004-05-30 18:50:00', '2019-10-23 04:19:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Christopher', 'Jerde', 'gthiel@example.net', '092-968-4568x828', '2019-08-11 14:34:03', '2005-12-01 17:22:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Alek', 'Zemlak', 'junius76@example.org', '390-894-0266', '2014-07-04 16:45:57', '1990-07-21 11:32:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Gabrielle', 'Schulist', 'cristal41@example.com', '223.048.9343x374', '2009-03-09 13:05:05', '1985-05-05 07:41:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Otho', 'Zemlak', 'kulas.veronica@example.com', '1-287-924-6140', '1988-10-20 17:07:04', '1988-03-21 07:40:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Ewald', 'Deckow', 'willard49@example.org', '200-687-2968', '1986-04-27 06:29:00', '1988-09-30 22:01:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Juston', 'Balistreri', 'garry.schroeder@example.net', '+10(7)5750285165', '1993-12-14 12:21:43', '1992-07-26 21:30:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Jettie', 'Pagac', 'zadams@example.com', '(170)988-4540', '1984-02-03 02:18:23', '1977-02-04 01:18:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Rose', 'Leannon', 'herman.ellie@example.com', '(549)475-9399x4083', '2002-11-02 15:42:24', '2002-03-23 10:19:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Melisa', 'Denesik', 'quinten.crona@example.com', '(268)115-6262x28660', '1970-06-07 05:25:34', '2003-11-29 08:17:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Emiliano', 'Schiller', 'bruen.dylan@example.net', '571.939.5221x677', '1973-06-23 10:11:25', '1988-01-30 15:29:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Frederik', 'O\'Hara', 'uschinner@example.net', '1-541-450-9882x943', '1977-11-23 18:45:24', '1998-11-14 00:17:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Hank', 'Reilly', 'liliane.erdman@example.org', '620.073.0682x4259', '1972-10-20 13:57:51', '2005-07-17 10:18:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Monserrat', 'Gibson', 'odurgan@example.org', '(722)930-6701x903', '2019-12-26 17:05:05', '1994-11-07 13:12:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Emerson', 'Labadie', 'emile.cassin@example.net', '384.777.6745x8091', '1998-09-07 13:20:04', '2019-10-18 09:49:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Cassie', 'Dibbert', 'hamill.lorna@example.net', '(719)667-5029x65641', '1984-05-13 21:26:20', '1972-06-20 08:09:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Kennedy', 'Gulgowski', 'orville.roberts@example.org', '(992)045-1490', '1970-03-26 12:17:27', '1981-09-05 06:04:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Mireille', 'Hahn', 'koepp.corbin@example.org', '1-485-724-3397x207', '1973-09-10 20:11:04', '1990-10-24 08:04:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Norene', 'Mills', 'eulalia06@example.org', '1-285-021-3905', '2011-07-17 15:35:33', '1998-04-05 22:46:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Dahlia', 'Okuneva', 'dorothea33@example.com', '1-773-351-3514', '2005-01-21 20:53:52', '1988-11-11 08:25:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Clint', 'Reinger', 'waylon.fadel@example.org', '(724)990-3517x6944', '1991-10-21 08:36:23', '1981-06-23 09:55:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Randy', 'Hauck', 'denesik.ladarius@example.net', '(377)786-0828x91274', '2004-03-17 20:10:49', '1986-12-03 21:03:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Deja', 'Corkery', 'horacio.weissnat@example.net', '1-284-860-4244x34122', '1983-01-31 20:35:51', '2017-05-31 22:21:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Porter', 'Marvin', 'quigley.deion@example.net', '(106)152-3102x201', '1978-04-27 07:25:27', '2003-05-04 05:45:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Edgar', 'Will', 'elizabeth.bradtke@example.net', '09267219546', '1979-05-03 05:16:48', '2005-04-19 10:51:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Katherine', 'Mosciski', 'caleb45@example.net', '431.360.4609x1393', '1973-05-15 22:56:56', '1995-02-03 10:39:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Bethel', 'Gerlach', 'grimes.viola@example.net', '1-750-332-2913x60566', '2007-03-13 01:31:16', '1978-02-03 16:38:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Michele', 'Becker', 'hegmann.garry@example.org', '466.959.6044x67450', '1976-01-11 17:44:07', '1999-07-04 03:45:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Andre', 'Hayes', 'mclaughlin.saige@example.net', '02682741271', '1989-08-27 08:51:14', '2014-03-07 14:01:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Lia', 'Stracke', 'whilpert@example.com', '(351)087-4657x29836', '1991-07-19 15:46:30', '2017-07-21 01:06:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Gilberto', 'Rodriguez', 'lroob@example.net', '1-589-512-6503', '2005-05-12 03:37:43', '2003-04-20 21:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Nathan', 'Hettinger', 'martine59@example.org', '03788316497', '2006-09-27 19:37:43', '1978-03-19 16:45:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Allan', 'Littel', 'andreanne.littel@example.org', '218.877.1213x844', '2000-07-25 17:00:56', '1983-05-03 00:50:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Ansel', 'Dickinson', 'ulakin@example.com', '1-452-932-9975', '2015-10-18 04:38:06', '2002-11-02 18:06:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Brain', 'Will', 'aliyah.koelpin@example.com', '099-073-5716x6987', '1996-03-26 10:34:43', '2000-09-09 07:30:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Eleanora', 'Walker', 'rolfson.elliott@example.org', '021-556-9055', '2000-09-10 22:17:43', '1975-09-17 03:09:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Stan', 'Bergnaum', 'mmorar@example.net', '259.100.6159x801', '1977-04-14 08:29:53', '2013-03-19 01:46:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Alexandre', 'Carter', 'lbernier@example.org', '+48(0)9119485772', '2001-11-16 07:12:00', '1980-10-04 09:41:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Felicia', 'Sipes', 'obeer@example.com', '(740)183-9763', '1976-04-28 00:13:11', '1977-02-25 03:23:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Dixie', 'Boyle', 'helen39@example.org', '551.736.4011', '2013-05-31 14:58:13', '1972-04-02 22:32:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Rosalinda', 'Ullrich', 'esperanza20@example.com', '277.655.6959x5170', '2006-05-08 05:58:58', '1996-09-13 17:06:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Crystel', 'Streich', 'sophia.reilly@example.net', '240.431.0105x181', '1978-05-20 14:00:37', '2017-02-17 23:32:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Destinee', 'Feil', 'rohan.nathanial@example.com', '902-398-1622x862', '2013-04-07 06:41:06', '1979-11-01 15:18:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Chelsey', 'VonRueden', 'btromp@example.com', '733-582-3381x5036', '2019-02-09 07:51:22', '1994-06-02 06:40:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Kiley', 'Marquardt', 'osborne16@example.net', '979.454.4196x410', '2014-01-04 09:01:11', '1996-08-02 16:11:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Linnea', 'Lehner', 'kshlerin.hobart@example.com', '1-759-513-9113x925', '2001-11-17 04:56:37', '2016-05-15 05:25:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Sandy', 'Herman', 'hamill.reta@example.org', '(291)715-0739', '1998-08-20 08:31:14', '1985-01-27 14:28:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Victor', 'Nader', 'thompson.peter@example.com', '1-766-826-4227x77347', '1996-06-04 14:44:09', '1983-06-13 13:11:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Hilario', 'Corwin', 'shahn@example.org', '433.107.7515x86924', '1980-06-06 18:47:07', '1972-02-07 09:17:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Reuben', 'Fay', 'yvolkman@example.org', '(417)914-8306', '1977-05-24 11:19:20', '2000-11-22 10:53:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Destin', 'Breitenberg', 'margarita81@example.net', '694-229-7833', '2014-04-27 19:24:41', '1970-01-01 20:44:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Hilbert', 'Huels', 'verlie.terry@example.net', '09467748910', '1979-10-07 18:42:55', '2013-01-30 03:49:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Conner', 'Veum', 'mitchel30@example.net', '(261)778-3428x054', '1997-04-08 18:58:15', '1973-07-28 19:40:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Mario', 'Spinka', 'dejah18@example.net', '(130)149-5219x5230', '2019-02-08 10:26:41', '1980-12-29 12:26:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Frederick', 'Kunde', 'maritza06@example.org', '+87(6)7557071424', '1976-07-08 16:47:12', '2003-09-22 08:12:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Imani', 'Zboncak', 'murphy.elza@example.org', '(439)762-1740x828', '1975-02-27 17:08:35', '2013-11-02 03:45:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Veda', 'Ebert', 'mclaughlin.elenora@example.com', '(501)061-2866x5511', '2018-09-23 14:04:59', '1970-09-03 01:32:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Pascale', 'Marks', 'jarrod.blick@example.org', '254.375.3405', '1984-03-07 17:21:22', '2002-04-13 19:37:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Stephon', 'Purdy', 'golden.beier@example.net', '04712832563', '1980-09-11 09:23:17', '1995-04-08 20:07:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Gussie', 'Fritsch', 'deborah61@example.net', '(077)663-0622x24015', '1999-03-20 19:22:36', '2016-06-02 13:32:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Jettie', 'Ryan', 'lucienne.nikolaus@example.net', '+40(9)7783243741', '1972-08-30 10:31:08', '2001-07-17 02:04:29');


