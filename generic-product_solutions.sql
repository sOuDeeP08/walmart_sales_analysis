SELECT * FROM walmartsales.sales;

-- -------------------GENERIC----------------------------
-- How many unique cities does the data have?
SELECT 
	DISTINCT city 
FROM sales;

-- In which city is each branch?
SELECT 
	DISTINCT city, branch
FROM sales;

-- ------------------------PRODUCT-----------------------------------
-- How many unique product lines does the data have?
SELECT 
	COUNT(DISTINCT product_line)
FROM sales;

-- What is the most common payment method?
SELECT 
	payment,
	COUNT(payment)
FROM sales
GROUP BY payment;

-- What is the most selling product line?
SELECT 
	SUM(quantity) AS qty,
	product_line,
	COUNT(product_line)
FROM sales
GROUP BY product_line
ORDER BY qty DESC;

-- What is the total revenue by month?
SELECT
	month_name AS month,
	SUM(total) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;

-- What month had the largest COGS?
SELECT
	month_name AS month,
	SUM(cogs) AS cogs
FROM sales
GROUP BY month_name
ORDER BY cogs DESC;

-- What product line had the largest revenue?
SELECT
	product_line,
    SUM(total) AS total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;

-- What is the city with the largest revenue?
SELECT
	city,
    SUM(total) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC;

-- What product line had the largest VAT?
SELECT
	product_line,
    AVG(tax_pct) AS avg_VAT
FROM sales
GROUP BY product_line
ORDER BY avg_VAT DESC;

-- Fetch each product line and add a column to those product line showing "Good", "Bad". 
-- Good if its greater than average sales
SELECT 
	AVG(quantity) as avg_qty
FROM sales;

SELECT 
		product_line,
        CASE
			WHEN AVG(quantity)>5 THEN "GOOD"
            ELSE "BAD"
		END AS remark
FROM sales
GROUP BY product_line;

-- Which branch sold more products than average product sold?
SELECT
	branch,
    SUM(quantity) AS qty
FROM sales
GROUP BY branch
HAVING SUM(quantity)> (SELECT AVG(quantity) FROM sales);

-- What is the most common product line by gender?
SELECT
	gender,
    product_line,
    COUNT(gender) AS total_count
FROM sales
GROUP BY gender, product_line
ORDER BY total_count;

-- What is the average rating of each product line?
SELECT 
	product_line,
    ROUND(avg(rating),2) AS avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;
        
    
    