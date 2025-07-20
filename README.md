
# 🛍️ E-commerce Data Analysis Project

This project involves analyzing e-commerce business data using SQL for data extraction and Python for visualizations. It is structured into two parts:
1. **analysis_queries.sql** – SQL scripts to analyze the data
2. **Visualizations.py** – Python code to connect to MySQL, execute queries, and generate visual plots
3. **requirements.txt** – contains requirements that are required
---

## 📁 Project Files

| File Name         | Description |
|------------------|-------------|
| `analysis_queries.sql` | Contains SQL queries to analyze revenue, sales trends, top customers, products, etc. |
| `Visualizations.py`     | Python script to connect to MySQL, run SQL queries, and generate visual plots using `matplotlib`. |
| `requirements.txt`  | contains requirements that are required |
---

## 📊 Visualizations Performed

The following charts are generated in `Visualizations.py`:
- **Revenue by Product Category** – Bar chart
- **Monthly Revenue Trend** – Line chart
- **Top Customers by Spend** – Horizontal bar chart
- **Most Ordered Products** – Bar chart
- **Product Revenue Share** – Pie chart

---

## 💻 How to Run This Project

### ✅ Prerequisites
- Python 3.x installed
- MySQL Server installed and running
- Required Python packages:
```bash
pip install mysql-connector-python matplotlib pandas
```

---

### ✅ Step-by-Step

1. **Create and Load Database**:
   - Open `MySQL Workbench`
   - Execute schema and data creation SQL (not included here but assumed already done)

2. **Run SQL Analysis**:
   - Open `analysis_queries.sql` in MySQL Workbench
   - Review and understand how each query works

3. **Run Python Visualizations**:
   - Open `Visualizations.py`
   - Update MySQL credentials in the `mysql.connector.connect()` section
   - Run the script to generate charts

---

## 🧠 Sample SQL Query Used

```sql
SELECT category, SUM(p.price * oi.quantity) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY category;
```

---

## 📌 Project Goal

To demonstrate how SQL and Python can work together for business data analysis. The objective is to help decision-makers understand performance trends, customer behavior, and product sales using clean visual insights.

---

## 🙋 Author
 
GitHub: Yamikahani(https://github.com/Yamikahani)

---

## 📝 License

This project is licensed under the MIT License – feel free to use, modify, and distribute.

