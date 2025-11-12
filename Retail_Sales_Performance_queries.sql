-- Q1. What is the total sales, profit and quantity?
select round(sum(sales), 2) as total_sales, 
		round(sum(profit), 2) as total_profit,
        round(sum(quantity), 2) as total_quantity
from superstore_orders;

-- Q2. What is the monthly sales and profit trend?
select year,
		month,
        sum(sales) as monthly_sales,
        sum(profit) as monthly_profit 
from superstore_orders
group by year, month
order by year, month;

-- Q3. What are the sales and profit by category and sub-category?
select category,
		sub_category,
        sum(sales) as total_sales,
        sum(profit) as total_profit,
        round(avg(profit_margin_pct), 2) as avg_margin 
from superstore_orders
group by category, sub_category
order by total_profit desc;

-- Q4. What are the region and state performance?
select region, state, 
		sum(sales) as total_sales,
        sum(profit) as total_profit
from superstore_orders
group by region, state 
order by total_sales desc;


-- Q5. Find the Top 10 most profitable products?
select product_name,
		category,
        sum(sales) as total_sales,
        sum(profit) as total_profit,
        round(avg(profit_margin_pct), 2) as avg_margin 
from superstore_orders
group by product_name, category 
order by total_profit desc 
limit 10;

-- Q6. What are the least profitable products?
select product_name,
		category,
        sum(sales) as total_sales,
        sum(profit) as total_profit,
        round(avg(profit_margin_pct), 2) as avg_margin 
from superstore_orders
group by product_name, category 
having sum(profit) < 0 
order by total_profit asc 
limit 10;

-- Q7. What are the customer segment analysis?
select segment,
		count(distinct customer_id) as unique_customers,
        sum(sales) as total_sales,
        sum(profit) as total_profit,
        round(avg(profit_margin_pct), 2) as avg_margin 
from superstore_orders
group by segment 
order by total_sales desc;

-- Q8. Find the sipping mode efficiency?
select ship_mode,
		round(avg(shipping_days), 1) as avg_shipping_days,
    	round(sum(sales), 2) as total_sales,
    	round(sum(profit), 2) as total_profit 
from superstore_orders
group by ship_mode  
order by avg_shipping_days;

-- Q9. Find relation between discount vs profitablility?
select discount,
		round(avg(profit_margin_pct), 2) as avg_margin,
    	round(sum(sales), 2) as total_sales,
    	round(sum(profit), 2) as total_profit 
from superstore_orders
group by discount 
order by discount;

-- Q10. what is the average order value by segment?
select segment,
		round(sum(sales) / count(distinct order_id), 2) as avg_order_value,
    	round(sum(profit), 2) as total_profit 
from superstore_orders
group by segment 
order by avg_order_value desc;

-- Q11. what is the profitability ranking?
select 
    product_name,
    category,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    RANK() OVER (order by sum(profit) desc) as profit_rank
from superstore_orders
group by product_name, category
order by profit_rank
limit 15;

-- Q12. what is the RFM (Recency, Frequency, Monetary) Summary by Customer?
WITH customer_summary AS (
    SELECT 
        customer_id,
        MAX(order_date) AS last_purchase,
        COUNT(DISTINCT order_id) AS frequency,
        SUM(sales) AS monetary
    FROM superstore_orders
    GROUP BY customer_id
),
today_date AS (
    SELECT MAX(order_date) AS max_date FROM superstore_orders
)
SELECT 
    c.customer_id,
    DATEDIFF(t.max_date, c.last_purchase) AS recency_days,
    c.frequency,
    c.monetary
FROM customer_summary c
CROSS JOIN today_date t
ORDER BY c.monetary DESC
LIMIT 20;