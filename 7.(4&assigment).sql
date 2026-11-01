create table product_inventory(
item_id int primary key,
item_name varchar,
item_code varchar ,
price decimal (10,2),
ordr_date varchar);
 
INSERT INTO product_inventory VALUES
(8,  'pro wireless mouse','APPR-9022', 40.00, '2026-02-02'),
(9,  'wireless headphones','HOME-2210', 14.50, '2026-02-18'),
(10, 'wireless keyboard','APPR-3101', 55.00, '2026-03-10'),
(11, 'Glass Tumbler Set','HOME-5000',  9.99, '2026-03-12');

select * from product_inventory;

select *from product_inventory
where item_name like '%wireless%';

SELECT *
FROM product_inventory
WHERE item_name ILIKE '%headphones'
   OR item_name ILIKE '%tumbler';

SELECT *
FROM product_inventory
WHERE item_name LIKE 'Glass%____'
AND price <15.00;

