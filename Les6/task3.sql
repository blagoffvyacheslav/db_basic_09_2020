USE snet2008;
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей
SELECT us.id, us.name, us.surname, TIMESTAMPDIFF(year, us.birthday, NOW) as 'age' COUNT(*) as total_likes
from users as us
join posts as p
	on u.id = p.user_id
    join likes_posts as lp
	on p.id = lp.post_id
group by us.id
order by age asc, total_likes desc
limit 10;