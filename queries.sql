/*What is the frequency of high-value sales made with credit card payments?*/
SELECT *
FROM sales.sql_sales_csv
WHERE `Total` > 300 AND `Payment` = 'Credit Card';  

/*What is the distribution of total sales across the branches?*/
SELECT 
    branch,
    ROUND(SUM(total), 2) AS `Total Sales`
FROM 
    sales.sql_sales_csv
GROUP BY 
    branch
ORDER BY
	`Total Sales` DESC;  

/*Which hours of the day see the highest total sales?*/
SELECT 
    HOUR(`Time`) AS `Hour of the Day`,
    ROUND(SUM(`Total`),2) AS `Total Sales`
FROM 
    sales.sql_sales_csv
GROUP BY 
    `Hour of the Day`
ORDER BY 
    `Total Sales` DESC;  

/*What product recommendations can be made based on average product ratings across different product lines?*/
SELECT 
    `Product Line`,
    CASE 
        WHEN AVG(`Rating`) >= 7 THEN 'Highly Recommended'
        WHEN AVG(`Rating`) < 7 THEN 'Recommended'
        ELSE 'Not Recommended'
    END AS `Recommendation`
FROM 
    sales.sql_sales_csv
GROUP BY 
    `Product Line`;  

/*What are the most common payment modes used by each gender, and how does payment behavior differ between genders?*/
SELECT
    `Gender`,
    (SELECT `Payment` FROM sales.sql_sales_csv WHERE `Gender` = S.Gender GROUP BY `Payment` ORDER BY COUNT(*) DESC LIMIT 1) AS `Most Common Payment Mode`
FROM
    (SELECT DISTINCT `Gender` FROM sales.sql_sales_csv) AS S;  

/*What is the average customer rating for each product line in branches 'A' and 'B', and how does it vary between the two branches?*/
SELECT Branch, `Product line`, avg(Rating) FROM sales.sql_sales_csv WHERE `Branch` = 'A' group by `Product line`
UNION
SELECT Branch, `Product line`, avg(Rating) FROM sales.sql_sales_csv WHERE `Branch` = 'B' group by `Product line`;  

/*What is the total gross income generated in each city?*/
WITH CityGrossIncome AS (
    SELECT `City`, ROUND(SUM(`Gross Income`),2) AS `Total Gross Income`
    FROM sales.sql_sales_csv
    GROUP BY `City`
    ORDER BY `Total Gross Income` DESC
)
SELECT `City`, `Total Gross Income`
FROM CityGrossIncome;  

/*Which branch has the highest average product rating, and how does it compare to other branches?*/
SELECT
    `Branch`,
    ROUND(AVG(`Rating`), 2) AS `Average Rating`,
    RANK() OVER (ORDER BY AVG(`Rating`) DESC) AS `Branch Rating Rank`
FROM
    sales.sql_sales_csv
GROUP BY
    `Branch`;  

/*What is the total sales value for all records in the dataset?*/
CREATE PROCEDURE `CalculateTotalSales`()
BEGIN
    SELECT ROUND(SUM(`Total`), 2) AS `Total Sales`
    FROM sales.sql_sales_csv;
END;
/*Calling the stored procedure*/
call CalculateTotalSales;
