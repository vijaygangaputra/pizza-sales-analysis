
/*
Project: Pizza Sales Analysis
Tool: SQL Server
Purpose: Analyze sales KPIs, order trends, category and size performance,
         and best and worst selling pizzas.
*/

-- =============================================
-- 1. KEY PERFORMANCE INDICATORS (KPIs)
-- =============================================

-- Total Revenue
SELECT
    SUM(total_price) AS Total_Revenue
FROM pizza_sales;


-- Average Order Value
SELECT
    SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value
FROM pizza_sales;


-- Total Pizzas Sold
SELECT
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales;


-- Total Orders
SELECT
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;


-- Average Pizzas Per Order
SELECT
    CAST(
        SUM(quantity) * 1.0 / COUNT(DISTINCT order_id)
        AS DECIMAL(10,2)
    ) AS Avg_Pizza_Per_Order
FROM pizza_sales;


-- =============================================
-- 2. ORDER TRENDS
-- =============================================

-- Daily Trend: Total Orders by Weekday
SELECT
    DATENAME(WEEKDAY, order_date) AS Order_Day,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date);


-- Monthly Trend: Total Orders by Month
SELECT
    DATENAME(MONTH, order_date) AS Order_Month,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date);


-- =============================================
-- 3. SALES BY CATEGORY AND SIZE
-- =============================================

-- Percentage of Revenue by Pizza Category
SELECT
    pizza_category,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue,
    CAST(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS Sales_Percentage
FROM pizza_sales
GROUP BY pizza_category;


-- Percentage of Revenue by Pizza Size
SELECT
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue,
    CAST(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS Sales_Percentage
FROM pizza_sales
GROUP BY pizza_size;


-- Total Pizzas Sold by Category
SELECT
    pizza_category,
    SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category;


-- =============================================
-- 4. TOP AND BOTTOM 5 PIZZAS BY REVENUE
-- =============================================

-- Top 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;


-- Bottom 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;


-- =============================================
-- 5. TOP AND BOTTOM 5 PIZZAS BY QUANTITY
-- =============================================

-- Top 5 Pizzas by Quantity Sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC;


-- Bottom 5 Pizzas by Quantity Sold
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC;


-- =============================================
-- 6. TOP AND BOTTOM 5 PIZZAS BY ORDER COUNT
-- =============================================

-- Top 5 Pizzas by Number of Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;


-- Bottom 5 Pizzas by Number of Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC;

