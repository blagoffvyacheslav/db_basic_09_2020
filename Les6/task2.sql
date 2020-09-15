USE snet2008;
-- Пусть задан некоторый пользователь.
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
SET @receiver=1;
SELECT from_user_id, Qnt FROM
(SELECT from_user_id, count(from_user_id) as Qnt from messages
WHERE to_user_id=@receiver GROUP BY from_user_id) as tbl ORDER BY Qnt DESC LIMIT 1 ;