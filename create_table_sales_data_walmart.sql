CREATE DATABASE	IF NOT EXISTS walmartsales;

CREATE TABLE IF NOT EXISTS sales(
	invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(20) NOT NULL,
    customer_type VARCHAR(15) NOT NULL,
    gender VARCHAR(15) NOT NULL,
    product_line VARCHAR(30) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct DECIMAL(6,4) NOT NULL,
    total DECIMAL(12,4) NOT NULL,
    date DATETIME,
    time TIME,
    payment VARCHAR(10) NOT NULL,
    cogs DECIMAL(12,2) NOT NULL,
    gross_margin_pct FLOAT,
    gross_income DECIMAL(6,4),
    rating FLOAT
);

SELECT * FROM walmartsales.sales
