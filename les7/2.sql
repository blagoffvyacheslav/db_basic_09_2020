--Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT p.id, p.name, p.price, c.id as cat_id, c.name as catalog
FROM products as p
JOIN catalogs as c
ON p.catalog_id = c.id;
