import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

# MySQL connection
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yamika1104",  # replace with your password
    database="ecommerce_db"
)
print("connection succesfull")

# 1. Get All Customers
df = pd.read_sql("SELECT * FROM customers;", conn)
print(df.head())

# 2. Get Products by Category
df = pd.read_sql("SELECT * FROM products WHERE category = 'Electronics';", conn)
print(df)

# 3. Count Total Orders
df = pd.read_sql("SELECT COUNT(*) AS total_orders FROM orders;", conn)
print(df)

# 4. List of Customers from a City
df = pd.read_sql("SELECT name, city FROM customers WHERE city = 'Hyderabad';", conn)
print(df)

# 5. Total Sales by Category (Bar Chart)
query = """
SELECT category, SUM(p.price * oi.quantity) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY category
ORDER BY total_sales DESC;
"""
df = pd.read_sql(query, conn)

plt.figure(figsize=(8, 5))
plt.bar(df['category'], df['total_sales'], color='skyblue')
plt.title("Total Sales by Category")
plt.xlabel("Category")
plt.ylabel("Total Sales")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# 6. Monthly Revenue Trend (Line Chart)
query = """
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
"""
df = pd.read_sql(query, conn)

plt.figure(figsize=(8, 5))
plt.plot(df['month'], df['revenue'], marker='o', color='green')
plt.title("Monthly Revenue Trend")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.xticks(rotation=45)
plt.grid(True)
plt.tight_layout()
plt.show()

# 7.Top 5 Customers by Spending (Horizontal Bar)
query = """
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;
"""
df = pd.read_sql(query, conn)

plt.figure(figsize=(8, 5))
plt.barh(df['name'], df['total_spent'], color='orange')
plt.title("Top 5 Customers by Spending")
plt.xlabel("Total Spent")
plt.ylabel("Customer Name")
plt.tight_layout()
plt.show()

# 8.Top Ordered Products (Bar Chart)
query = """
SELECT p.product_name, SUM(oi.quantity) AS total_ordered
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_ordered DESC
LIMIT 10;
"""
df = pd.read_sql(query, conn)

plt.figure(figsize=(10, 6))
plt.bar(df['product_name'], df['total_ordered'], color='purple')
plt.title("Top Ordered Products")
plt.xlabel("Product")
plt.ylabel("Quantity Sold")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# 9. Product Revenue Share (Pie Chart)
query = """
SELECT p.product_name, SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue DESC
LIMIT 5;
"""
df = pd.read_sql(query, conn)

plt.figure(figsize=(6, 6))
plt.pie(df['revenue'], labels=df['product_name'], autopct='%1.1f%%', startangle=140)
plt.title("Top 5 Product Revenue Share")
plt.tight_layout()
plt.show()

# 10. Daily Order Volume (Line Chart)
query = """
SELECT order_date, COUNT(*) AS orders
FROM orders
GROUP BY order_date
ORDER BY order_date;
"""
df = pd.read_sql(query, conn)
df['order_date'] = pd.to_datetime(df['order_date'])

plt.figure(figsize=(10, 5))
plt.plot(df['order_date'], df['orders'], color='blue', marker='.')
plt.title("Daily Orders Over Time")
plt.xlabel("Date")
plt.ylabel("Order Count")
plt.grid(True)
plt.tight_layout()
plt.show()

#  Final Step: Close Connection
conn.close()
