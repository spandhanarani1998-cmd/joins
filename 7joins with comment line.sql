CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO customers 
VALUES 
(1, 'Alice Smith', 'USA'),
(2, 'Bob Jones', 'Canada'),
(3, 'Charlie Brown', 'UK'),
(4, 'Diana Prince', 'USA');

select * from customers;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES 
(101, 'Laptop', 1200.00),
(102, 'Smartphone', 800.00),
(103, 'Wireless Headphones', 150.00),
(104, 'Tablet', 400.00);

select* from products;

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT, 
    product_id INT,
    order_date DATE
);

INSERT INTO orders VALUES 
(5001, 1, 101, '2026-06-01'), 
(5002, 2, 102, '2026-06-02'), 
(5003, 1, 103, '2026-06-03'), 
(5004, NULL, 101, '2026-06-04'); 

select * from orders;

---INNER JOIN---excludes guest checkouts and unrecorded products, returning only matched oders.---------

select orders.order_id,customers.customer_name,
products.product_name
from orders
inner join customers
on
orders.customer_id=customers.customer_id
inner join products
on
orders.product_id= products.product_id;


----LEFT JOIN--keeps  all registered customers even if they have not placed any orders.--------
select customers.customer_name,
orders.order_id
from customers
left join orders
on customers.customer_id=orders.customer_id;


----RIGHT JOIN--includes all products even if they have never been ordered by any customer.--------
select products.product_name,
orders.order_id
from products
right join orders
on products.product_id=orders.product_id;

----FULL OUTER JOIN---retrives all records from bot tables, showing unmatched customers and guest checkouts.------
select customers.customer_name,
orders.order_id
from customers
full outer join orders
on orders.customer_id= customers.customer_id;


---CROSS JOIN--genrates a cartesian product combining every customer with every product without conditions.-------
select customers.customer_id,
products.product_id
from customers
cross join products;
