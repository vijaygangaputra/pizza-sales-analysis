# Pizza Sales Analysis | SQL Server & Power BI

## Project Overview

This portfolio project analyzes pizza sales data using SQL Server and Power BI to evaluate business performance, identify popular products, and understand order trends.

The goal is to help restaurant management make informed decisions about product offerings, sales promotions, and operational planning.

## Business Problem

The restaurant needs to understand which products and categories generate the most revenue, when order demand is highest, and which pizzas may need additional attention.

This analysis answers business questions such as:

- What are the restaurant's overall sales KPIs?
- Which pizza categories and sizes contribute most to revenue?
- Which pizzas are the best and worst sellers?
- How does order volume vary by day and month?
- When does the restaurant experience its highest order demand?

## Tools & Technologies

- **SQL Server:** Data analysis, aggregation, and business queries
- **Power BI Desktop:** Dashboard development and visualization
- **CSV:** Source dataset

## Dataset

The dataset contains 48,620 pizza sales records and 12 columns, including:

- Order ID, pizza name, and pizza category
- Pizza size and quantity
- Unit price and total price
- Order date and order time
- Pizza ingredients

Each row represents a pizza line item within an order. Multiple rows can belong to the same order.

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Revenue | 817,860.05 |
| Average Order Value | 38.31 |
| Total Pizzas Sold | 49,574 |
| Total Orders | 21,350 |
| Average Pizzas Per Order | 2.32 |

*Revenue and average order value are expressed in the dataset's currency units.*

## SQL Analysis

SQL Server was used to calculate KPIs and investigate sales performance.

The analysis includes:

- Overall revenue, order count, and quantity sold
- Average order value and average pizzas per order
- Daily and monthly order trends
- Revenue contribution by pizza category and size
- Pizza category sales volume
- Top and bottom 5 pizzas by revenue, quantity, and number of orders

## Power BI Dashboard

The Power BI report presents sales KPIs, order trends, category and size comparisons, and pizza product rankings.

### Dashboard Preview

![Pizza Sales Dashboard](images/dashboard.png)

Open the Power BI report: [Pizza Sales Dashboard](powerbi/pizza_sales_dashboard.pbix)

## Key Findings

- **Classic pizzas** contributed the largest category revenue share at approximately 26.91%.
- **Large pizzas** accounted for approximately 45.89% of revenue by size.
- **The Thai Chicken Pizza** was the top pizza by revenue, generating 43,434.25.
- **The Classic Deluxe Pizza** was the top pizza by quantity sold, with 2,453 pizzas.
- The business recorded 21,350 distinct orders and sold 49,574 pizzas.

These findings can help management review product promotions, menu performance, and demand patterns.

## Business Recommendations

- Review promotions for categories and products with lower revenue contribution.
- Maintain availability of popular pizzas, especially during peak ordering periods.
- Use daily and hourly order trends to support staffing and preparation planning.
- Investigate low-performing products before making menu changes.

These are suggested actions based on sales data; costs, margins, inventory, and staffing data would be needed to evaluate their impact.

## Limitations

- The dataset does not include ingredient costs, operating expenses, or profit margins.
- There are no customer identifiers, so customer retention and individual customer behavior cannot be analyzed.
- The analysis describes historical sales and does not establish the causes of sales performance.

## Repository Structure

```text
pizza-sales-analysis/
├── README.md
├── sql/
│   └── pizza_sales_queries.sql
├── powerbi/
│   └── pizza_sales_dashboard.pbix
├── images/
│   └── dashboard.png
└── data/
    └── README.md
```

## Author

Vijay Gangaputra

Data Analyst Portfolio Project
