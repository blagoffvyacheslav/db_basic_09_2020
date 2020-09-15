-- USE some_db;

-- 1
ALTER TABLE users MODIFY COLUMN created_at date default now(),
               	  MODIFY COLUMN updated_at date default now();

-- 2
ALTER TABLE users MODIFY created_at DATETIME;

-- 3
SELECT * from storehouses_products ORDER BY value DESC;
