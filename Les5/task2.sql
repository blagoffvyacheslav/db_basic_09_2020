-- USE some_db;

-- 1
SELECT AVG(DATEDIFF(customer.dob, '2010-01-01') / 365.25 as age) from users;

-- 2