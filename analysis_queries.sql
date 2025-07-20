CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(100),
    registration_date DATE
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers (name, gender, age, city, registration_date) VALUES
('Arjun','Male',28,'Hyderabad','2022-01-15'),
('Sita','Female',32,'Delhi','2022-02-10'),
('Ravi','Male',24,'Bengaluru','2022-03-05'),
('Lakshmi','Female',29,'Chennai','2022-03-22'),
('Mahesh','Male',35,'Mumbai','2022-04-11'),
('Kiran','Male',27,'Pune','2022-05-19'),
('Priya','Female',31,'Hyderabad','2022-06-07'),
('Nikhil','Male',26,'Kolkata','2022-07-14'),
('Swathi','Female',23,'Jaipur','2022-08-02'),
('Vikram','Male',34,'Delhi','2022-08-30'),
('Anita','Female',30,'Chennai','2022-09-18'),
('Rohit','Male',22,'Bengaluru','2022-10-04'),
('Divya','Female',25,'Hyderabad','2022-11-09'),
('Harsha','Male',33,'Mumbai','2022-12-01'),
('Meena','Female',28,'Pune','2023-01-06'),
('Ganesh','Male',29,'Kolkata','2023-01-27'),
('Pooja','Female',24,'Hyderabad','2023-02-13'),
('Sanjay','Male',37,'Ahmedabad','2023-03-01'),
('Neha','Female',26,'Delhi','2023-03-19'),
('Aditya','Male',27,'Bengaluru','2023-04-05'),
('Kavya','Female',29,'Chennai','2023-04-21'),
('Tarun','Male',31,'Hyderabad','2023-05-02'),
('Geetha','Female',33,'Mumbai','2023-05-19'),
('Farhan','Male',30,'Delhi','2023-06-07'),
('Isha','Female',22,'Chandigarh','2023-06-25'),
('Sameer','Male',28,'Pune','2023-07-11'),
('Aishwarya','Female',27,'Indore','2023-07-28'),
('Mohan','Male',36,'Hyderabad','2023-08-12'),
('Bhavya','Female',24,'Bengaluru','2023-08-29'),
('Suraj','Male',32,'Chennai','2023-09-15'),
('Anjali','Female',23,'Delhi','2023-10-01'),
('Deepak','Male',34,'Kolkata','2023-10-19'),
('Ritika','Female',26,'Mumbai','2023-11-06'),
('Suresh','Male',38,'Hyderabad','2023-11-23'),
('Pari','Female',21,'Bengaluru','2023-12-05'),
('Lokesh','Male',25,'Chennai','2023-12-22'),
('Varsha','Female',28,'Pune','2024-01-09'),
('Yash','Male',29,'Delhi','2024-01-26'),
('Tanvi','Female',27,'Hyderabad','2024-02-10'),
('Aravind','Male',31,'Bengaluru','2024-02-28'),
('Shreya','Female',30,'Chennai','2024-03-14'),
('Naveen','Male',33,'Mumbai','2024-03-30'),
('Reshma','Female',25,'Hyderabad','2024-04-11'),
('Vishal','Male',26,'Pune','2024-04-27'),
('Pavan','Male',35,'Ahmedabad','2024-05-09'),
('Charan','Male',24,'Jaipur','2024-05-25'),
('Keerthi','Female',29,'Hyderabad','2024-06-08'),
('Manoj','Male',27,'Delhi','2024-06-21'),
('Sindhu','Female',32,'Bengaluru','2024-07-05'),
('Ashok','Male',30,'Chennai','2024-07-18');

INSERT INTO products (product_name, category, price) VALUES
('Smartphone A','Electronics',12000.00),
('Laptop B','Electronics',50000.00),
('Running Shoes','Fashion',2000.00),
('Bluetooth Headphones','Electronics',3500.00),
('LED TV 43"','Electronics',32000.00),
('Wireless Mouse','Electronics',650.00),
('Office Chair','Furniture',8500.00),
('Study Desk','Furniture',6200.00),
('Backpack','Fashion',1500.00),
('Smartwatch','Electronics',7500.00),
('Fitness Band','Electronics',2500.00),
('Jeans','Fashion',1800.00),
('T-Shirt','Fashion',700.00),
('Winter Jacket','Fashion',4200.00),
('Air Fryer','HomeAppliance',5800.00),
('Microwave Oven','HomeAppliance',8900.00),
('Mixer Grinder','HomeAppliance',4300.00),
('Refrigerator 270L','HomeAppliance',26000.00),
('Water Bottle','HomeAppliance',400.00),
('Gaming Keyboard','Electronics',2500.00),
('Action Camera','Electronics',14500.00),
('DSLR Camera','Electronics',54000.00),
('Power Bank 20000mAh','Electronics',1800.00),
('Earbuds','Electronics',2200.00),
('Face Cream','Beauty',750.00),
('Shampoo','Beauty',450.00),
('Conditioner','Beauty',480.00),
('Novel Book','Books',399.00),
('Cookbook','Books',520.00),
('Data Science Book','Books',1100.00);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1,'2023-01-10',14000.00),
(2,'2023-02-20',52000.00),
(3,'2023-03-05',1250.00),
(4,'2023-03-25',9600.00),
(5,'2023-04-12',3500.00),
(6,'2023-04-22',650.00),
(7,'2023-05-03',7500.00),
(8,'2023-05-18',1800.00),
(9,'2023-06-04',1500.00),
(10,'2023-06-21',32000.00),
(11,'2023-07-02',4300.00),
(12,'2023-07-15',700.00),
(13,'2023-07-29',4200.00),
(14,'2023-08-05',8500.00),
(15,'2023-08-19',2500.00),
(16,'2023-09-03',5800.00),
(17,'2023-09-17',8900.00),
(18,'2023-09-28',26000.00),
(19,'2023-10-06',400.00),
(20,'2023-10-20',14500.00),
(21,'2023-11-04',54000.00),
(22,'2023-11-16',1800.00),
(23,'2023-11-30',2200.00),
(24,'2023-12-08',750.00),
(25,'2023-12-19',480.00),
(26,'2023-12-30',399.00),
(27,'2024-01-06',1100.00),
(28,'2024-01-18',32000.00),
(29,'2024-01-27',9600.00),
(30,'2024-02-05',54000.00),
(31,'2024-02-15',2500.00),
(32,'2024-02-28',26000.00),
(33,'2024-03-09',8500.00),
(34,'2024-03-21',6200.00),
(35,'2024-03-30',7500.00),
(36,'2024-04-07',14500.00),
(37,'2024-04-18',5800.00),
(38,'2024-04-27',8900.00),
(39,'2024-05-06',1100.00),
(40,'2024-05-15',3500.00),
(41,'2024-05-25',4200.00),
(42,'2024-06-04',54000.00),
(43,'2024-06-14',2500.00),
(44,'2024-06-23',1800.00),
(45,'2024-07-02',26000.00),
(46,'2024-07-10',2200.00),
(47,'2024-07-14',400.00),
(48,'2024-07-16',650.00),
(49,'2024-07-17',1800.00),
(50,'2024-07-18',4300.00);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1,1,1),(1,3,1),
(2,2,1),(2,3,1),
(3,6,1),(3,25,1),
(4,7,1),(4,8,1),
(5,4,1),
(6,6,1),
(7,10,1),
(8,11,1),(8,12,1),
(9,9,1),
(10,5,1),
(11,17,1),
(12,13,1),
(13,14,1),
(14,7,1),
(15,11,1),
(16,15,1),
(17,16,1),
(18,18,1),
(19,19,1),
(20,21,1),
(21,22,1),
(22,23,1),
(23,24,1),
(24,25,1),
(25,26,1),
(26,28,1),
(27,30,1),
(28,5,1),
(29,7,1),(29,8,1),(29,6,2),
(30,22,1),
(31,11,1),(31,20,1),
(32,18,1),
(33,7,1),
(34,8,1),
(35,10,1),
(36,21,1),
(37,15,1),
(38,16,1),
(39,30,1),
(40,4,1),
(41,14,1),
(42,22,1),
(43,11,1),
(44,23,1),
(45,18,1),
(46,24,1),
(47,19,1),
(48,6,1),
(49,9,1),
(50,17,1);


# 2. Get Products by Category
SELECT * FROM products WHERE category = 'Electronics';

# 3. Count Total Orders
SELECT COUNT(*) AS total_orders FROM orders;

# 4. List of Customers from a City
SELECT name, city FROM customers WHERE city = 'Hyderabad';

# 5. Total Sales by Category (Bar Chart)
SELECT category, SUM(p.price * oi.quantity) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY category
ORDER BY total_sales DESC;

# 6. Monthly Revenue Trend (Line Chart)
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

# 7.Top 5 Customers by Spending (Horizontal Bar)
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

# 8.Top Ordered Products (Bar Chart)
SELECT p.product_name, SUM(oi.quantity) AS total_ordered
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_ordered DESC
LIMIT 10;

# 9. Product Revenue Share (Pie Chart)
SELECT p.product_name, SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue DESC
LIMIT 5;

# 10. Daily Order Volume (Line Chart)
SELECT order_date, COUNT(*) AS orders
FROM orders
GROUP BY order_date
ORDER BY order_date;