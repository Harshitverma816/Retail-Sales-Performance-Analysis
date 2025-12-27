📊 **Retail Sales Performance Analysis**
A data analytics project that uncovers actionable retail sales insights from transactional data, tracks performance trends, identifies high-value customers & products, and visualizes results using SQL, Python, and Power BI.

🧠 **Project Overview**
This repository demonstrates an end-to-end retail sales analysis pipeline:
- Data cleaning & exploration
- SQL-based analytics
- Interactive dashboard development
- Business reporting & recommendations

🎯 **Objectives**
- Analyze sales performance over time and across segments
- Identify top products, regions, and customers
- Measure profit margins and discount effectiveness
- Build an interactive dashboard to communicate results
- Translate insights into business recommendations
**Tools used:** Python, MySQL, Power BI, Gamma (report), Jupyter/VS Code.

📋 **Dataset**
Source: Superstore/Retail Sales dataset (CSV format, 10000 rows)
Key Fields:
- Order details (Order ID, Dates, Ship Mode)
- Customer info (Segment, Region, City)
- Product info (Category, Subcategory)
- Financial metrics (Sales, Quantity, Discount, Profit)

🚀 Installation & Setup
1️⃣ Clone
git clone https://github.com/Harshitverma816/Retail-Sales-Performance-Analysis.git
cd Retail-Sales-Performance-Analysis

2️⃣ Python Dependencies
pip install pandas numpy matplotlib seaborn mysql-connector-python

3️⃣ SQL Setup
- Load cleaned dataset into MySQL Server
- Run queries in queries.sql

4️⃣ Power BI
- Connect to the MySQL database
- Use provided layout instructions to recreate visuals

📊 Project Workflow
🧹 Data Cleaning
- Handle missing/incorrect values
- Convert dates
- Add calculated features:
  - Profit Margin % = Profit / Sales
  - Shipping Days = Ship Date – Order Date

🔍 Exploratory Data Analysis (EDA)
- Identify high-value products & regions
- Check trends over time
- Correlate discount vs. profit

🧠 SQL Analytics
Use SQL for:
- Top 10 products by profit
- Monthly sales trends
- Category & region profitability
- Customer segmentation queries

📈 Power BI Dashboard
Pages Included:
  1. Sales Overview – Total metrics, growth curves
  2. Customer & Product Insights – Segment analysis, treemaps
  3. Regional Performance – Maps & state-level comparisons

📌 Key Insights
- Certain regions outperform others in profit
- Discounting negatively impacts margin beyond a threshold
- A small set of products drives majority revenue
👉 These insights should inform pricing, inventory, and marketing strategies.

📁 File Structure
/data                    # Raw and cleaned dataset
/queries.sql             # SQL analytics queries
/retail_sales_analysis.ipynb  # Python EDA notebook
/PowerBI/                # Power BI assets
/GammaReport/            # Final presentation files

🎯 Outcome & Skills Demonstrated
- End-to-end analytics workflow
- SQL querying and transformations
- Python data manipulation & visualization
- BI dashboard creation (Power BI)
- Business storytelling & reporting

🏁 Conclusion

This project demonstrates the end-to-end data analytics pipeline — from raw data to actionable insights. It reflects proficiency in data cleaning, SQL analysis, visualization, and storytelling, which are essential skills for any Data Analyst or Business Intelligence role.

📬 Contact & Portfolio
Contact	                      Link
LinkedIn	                    [Harshit Verma](https://www.linkedin.com/in/harshit-verma-468b94398/)
GitHub	                      https://github.com/Harshitverma816
Email	                        Harsh692002@gmail.com

💡 Thanks for checking out the project!
