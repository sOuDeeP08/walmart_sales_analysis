# 🛒 Walmart Sales Data Analysis

## 📌 Project Overview
This project involves a comprehensive exploratory data analysis (EDA) of Walmart's sales data using SQL. The goal is to extract meaningful insights from the dataset to understand sales trends, product performance, and customer behavior across different branches and cities.

## 🎯 Purpose of the Code:

Identify Sales Trends: Determine revenue growth and seasonal patterns (monthly analysis).

Product Performance: Evaluate which product lines are driving the most revenue and volume.

Customer Insights: Understand payment preferences and gender-based shopping habits.

Operational Efficiency: Compare branch performances against average metrics to identify high-performing locations.

## ❓ Business Questions Answered
The SQL script is structured to solve the following business problems:

**Generic Analysis**

How many unique cities are present in the dataset?

Which branches are located in which cities?

**Product Analysis**

How many unique product lines does the data have?

What is the most common payment method used by customers?

What is the best-selling product line by quantity?

What is the total revenue generated each month?

In which month did we record the highest Cost of Goods Sold (COGS)?

Which product line generates the highest total revenue?

Which city has the largest revenue contribution?

Which product line has the highest average VAT (Value Added Tax)?

Performance Remarking: Which product lines are performing "Good" or "Bad" (based on whether their average sales are above the global average)?

What is the most common product line purchased by each gender?

What is the average rating for each product line?

Sales & Branch Analysis
Which branches sold more products than the average quantity sold across all branches?

## 📊 Dataset Description
The dataset contains sales transactions from three different branches of Walmart, located in Yangon, Naypyitaw, and Mandalay.
Key columns include:

Invoice ID: Unique identifier for each sale.

Branch: The specific branch (A, B, C).

City: Location of the branch.

Product Line: Category of the product sold.

Quantity: Number of items sold.

Total: Total price including tax.

Date & Time: When the transaction occurred.

COGS: Cost of Goods Sold.

Rating: Customer satisfaction score.

## 🛠️ Technical Skills Demonstrated
Data Aggregation: SUM(), AVG(), COUNT(), ROUND().

Grouping & Filtering: GROUP BY, HAVING, ORDER BY.

Conditional Logic: CASE statements to create custom performance remarks.

Subqueries: Used for benchmarking branch performance against overall averages.
