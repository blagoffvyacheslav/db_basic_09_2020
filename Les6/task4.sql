USE snet2008;
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT gender, Qnt  from (SELECT count(*) as Qnt, us.gender as gender from likes_posts as lp
join users as us
on lp.profile_id = us.id
GROUP BY us.gender) as tbl ORDER BY Qnt DESC LIMIT 1;
