create table product_inventorys(
product_name varchar (50) ,
    wholesale_cost int
);
select * from product_inventorys;

insert into product_inventorys
( product_name,wholesale_cost)
values ('ac',55000),
('washing machine',40000),
('fridge',30000),
('dish washer',10000);


select 
product_name,wholesale_cost
from
product_inventorys
order by
wholesale_cost desc
limit 2;

SELECT 
    product_name, 
    wholesale_cost 
FROM 
    product_inventorys 
ORDER BY 
    wholesale_cost DESC 
LIMIT 2 OFFSET 3;
