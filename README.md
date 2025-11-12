🧠 Retail Sales Performance Analysis
📘 Overview

This project focuses on analyzing retail sales data to uncover insights into business performance, customer segments, and profitability. The goal is to identify key sales trends, optimize profit margins, and visualize actionable insights through interactive dashboards.

The complete workflow covers data analysis using Python, data querying with SQL (MySQL Server), and business intelligence visualization through Power BI, followed by a comprehensive project report and presentation created in Gamma.

📊 Dataset

Source: Superstore/Retail Sales dataset (CSV format)

Size: ~10,000 records

Features include:

Order details (Order ID, Order Date, Ship Date, Ship Mode)

Customer information (Customer ID, Segment, Region, Country, City)

Product data (Category, Sub-Category, Product ID, Product Name)

Financial metrics (Sales, Quantity, Discount, Profit)

🧰 Tools and Technologies Used
Tool / Language	Purpose
Python (Pandas, NumPy, Matplotlib, Seaborn)	Data loading, cleaning, and EDA
MySQL Server	Running SQL queries and data transformation
Power BI	Dashboard creation and visualization
Gamma App	Report and presentation creation
Excel / CSV	Dataset storage and import/export
Jupyter Notebook / VS Code	Python scripting and analysis
⚙️ Project Workflow / Steps
1. Data Loading

Load dataset using Pandas.

Check for missing values, data types, and duplicates.

2. Data Cleaning

Handle missing or incorrect values.

Convert date columns to datetime format.

Create new calculated columns like:

Profit Margin % = (Profit / Sales) * 100

Shipping Days = Ship Date - Order Date

3. Exploratory Data Analysis (EDA)

Identify top-performing products, regions, and customer segments.

Analyze sales and profit trends over time.

Explore relationships between discounts and profit margins.

Visualize insights using Matplotlib and Seaborn charts (bar, scatter, heatmap, etc.).

4. SQL Analysis (MySQL Server)

Import cleaned dataset into MySQL.

Execute queries for:

Top 10 profitable products.

Monthly sales trend.

Region-wise and category-wise profit.

Customer segment analysis.

Advanced queries using JOIN, GROUP BY, and CTE.

5. Dashboard Development (Power BI)

Import SQL dataset into Power BI.

Create a 3-page interactive dashboard:

Sales Overview – Total Sales, Profit, Quantity, KPIs, and trends.

Customer & Product Insights – Category/Subcategory performance, top customers, tree maps.

Regional Analysis – Sales and profit by state/region (Map visualization).

Apply a professional color palette and clean layout for storytelling.

6. Reporting and Presentation

Summarize findings, trends, and recommendations in a project report.

Create a professional presentation using Gamma, highlighting:

Objectives

Process workflow

Key insights & visualizations

Recommendations for business growth

📈 Results & Insights

Identified the most profitable regions and product categories.

Found a negative correlation between discount and profit margin.

Highlighted customer segments contributing to maximum sales.

Suggested inventory and discount optimization strategies for higher profitability.

🧭 How to Run This Project
1. Clone the Repository
git clone https://github.com/yourusername/retail-sales-performance-analysis.git

2. Open the Project

Launch Jupyter Notebook or VS Code.

Open the retail_sales_analysis.ipynb file.

3. Install Dependencies
pip install pandas numpy matplotlib seaborn mysql-connector-python

4. Run Python Scripts

Execute the cells in order to perform data cleaning and EDA.

5. Run SQL Queries

Import the cleaned dataset into MySQL Server.

Run the SQL queries from the queries.sql file.

6. Build Dashboard

Open Power BI and connect to your SQL Server database.

Import the cleaned data and recreate visuals following the steps in the documentation.

7. View Report and Presentation

Open the Gamma presentation or the PDF report included in the project folder.

🏁 Conclusion

This project demonstrates the end-to-end data analytics pipeline — from raw data to actionable insights. It reflects proficiency in data cleaning, SQL analysis, visualization, and storytelling, which are essential skills for any Data Analyst or Business Intelligence role.

💡 Thanks for checking out the project! Your support means a lot! Feel free to star ⭐ this repo or share it with someone learning Data Analytics.🚀
