WITH
yearly_sales AS
   (SELECT `year`, SUM(amount) AS sales
    FROM year_sales
    GROUP BY `year`),

yearly3_sales AS
   (SELECT `year`,
           sales AS year1_sales,
           LEAD(sales) OVER w AS year2_sales,
           LEAD(sales, 2) OVER w AS year3_sales,
           RANK() OVER w AS years_ago
    FROM yearly_sales
    WINDOW w AS (ORDER BY `year` DESC))
    
SELECT `year` AS last_year, year1_sales, year2_sales, year3_sales
FROM yearly3_sales
WHERE years_ago = 1;
           