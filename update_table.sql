# Performs feature engineering on the sales dataset by creating new columns (`time_of_day`, `day_name`, `month_name`). 
# It categorizes transactions into morning, afternoon, and evening based on time, 
# and extracts the day and month names from the date to enable better time-based analysis.


SELECT * FROM walmartsales.sales;

-- -------------------FEATURE ENGINEERING------------------------------
-- ---------DAYTIME--------------
SELECT time,
	(CASE
		WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "MORNING"
        WHEN time BETWEEN "12:00:00" AND "16:00:00" THEN "AFTERNOON"
        ELSE "EVENING"	
	END) AS time_of_day
FROM sales;
ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);

UPDATE sales
SET time_of_day =
	(CASE
		WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "MORNING"
        WHEN time BETWEEN "12:00:00" AND "16:00:00" THEN "AFTERNOON"
        ELSE "EVENING"	
	END
);

SET SQL_SAFE_UPDATES = 0;

-- -----------DAYNAME & MONTHNAME-------------
ALTER TABLE sales 
	ADD COLUMN day_name VARCHAR(10),
    ADD COLUMN month_name VARCHAR(15);
    
UPDATE sales
	SET day_name = DAYNAME(date),
		month_name = MONTHNAME(date);	
