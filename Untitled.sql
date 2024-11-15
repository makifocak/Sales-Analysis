--All the data is in 2023. Therefore, I only need the month name.
ALTER TABLE retailsales
ADD month_name varchar(20)
--Now I need to fill the column.
UPDATE retailsales
SET month_name = TO_CHAR(date, 'Month')
--Cheking the table.
select * from retailsales
--Total Sales by Month
select month_name as Month, sum(total_amount) as Total_Sales from retailsales
group by month_name
--Total transaction counts by month.
select month_name as Month, count(transaction_id)
from retailsales
group by month_name
--Looking at the product category performance.
SELECT 
    Category, 
    Month, 
    Total_Sales
FROM (
    SELECT 
        product_category AS Category,
        month_name AS Month,
        SUM(total_amount) AS Total_Sales,
        RANK() OVER(PARTITION BY month_name ORDER BY SUM(total_amount) DESC) AS category_rank
    FROM 
        retailsales
    GROUP BY 
        product_category, month_name
) AS ranked_sales
WHERE 
    category_rank = 1;
--Examining the customer trends over time.
select gender, count(*) as count, month_name as month
from retailsales
group by month_name, gender

select round(avg(age),1), month_name from retailsales
group by month_name
--relationship between product_category and gender
SELECT 
    gender,
    Category,
    Total_Sales
FROM (
    SELECT 
        gender,
        product_category AS Category,
        SUM(total_amount) AS Total_Sales,
        RANK() OVER(PARTITION BY gender ORDER BY SUM(total_amount) DESC) AS category_rank
    FROM 
        retailsales
    GROUP BY 
        gender, product_category
) AS ranked_categories
WHERE 
    category_rank = 1;
--
SELECT 
    gender, 
    product_category AS Category, 
    SUM(total_amount) AS Total_Sales
FROM 
    retailsales
GROUP BY 
    gender, product_category
ORDER BY 
    gender, Total_Sales DESC;