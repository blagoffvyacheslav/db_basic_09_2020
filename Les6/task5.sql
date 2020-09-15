USE snet2008;
--Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
SELECT lp.profile_id, COUNT(*) as likes_count
FROM likes_posts as lp
WHERE lp.profile_id IN
	(SELECT * FROM (SELECT us.id
	from users as us
	ORDER BY TIMESTAMPDIFF(year, us.birthday, NOW()), u.id
	limit 10) as tbl_name) GROUP BY lp.profile_id;