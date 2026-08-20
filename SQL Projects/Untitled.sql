CREATE DATABASE IF NOT EXISTS e_commerce;
USE e_commerce;


CREATE TABLE CUSTOMERS(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
gender VARCHAR(10),
city VARCHAR(50),
signup_date DATE
);


CREATE TABLE PRODUCTS(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);


CREATE TABLE ORDERS(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
order_status VARCHAR(30),
CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES CUSTOMERS(customer_id)
);




CREATE TABLE ORDER_ITEMS(
order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);


INSERT INTO CUSTOMERS VALUES
(1,'Rahul','Male','Mumbai','2025-01-10'),
(2,'Priya','Female','Delhi','2025-01-15'),
(3,'Amit','Male','Pune','2025-02-01'),
(4,'Sneha','Female','Bangalore','2025-02-10'),
(5,'Rohan','Male','Hyderabad','2025-03-05');


INSERT INTO products VALUES
(101,'Laptop','Electronics',65000),
(102,'Headphones','Electronics',2500),
(103,'Office Chair','Furniture',7000),
(104,'Keyboard','Electronics',1800),
(105,'Water Bottle','Home',600);




INSERT INTO ORDERS VALUES
(1001,1,'2025-03-01','Delivered'),
(1002,2,'2025-03-03','Delivered'),
(1003,1,'2025-03-10','Delivered'),
(1004,3,'2025-03-15','Cancelled'),
(1005,4,'2025-03-20','Delivered');




INSERT INTO ORDER_ITEMS VALUES
(1,1001,101,1,65000),
(2,1001,102,2,2500),
(3,1002,103,1,7000),
(4,1003,104,1,1800),
(5,1004,105,3,600),
(6,1005,101,1,65000);
