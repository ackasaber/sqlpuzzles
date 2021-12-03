-- Note that all order dates refer to the first day of the month.
WITH monthly_averages AS
   (SELECT customer_id, order_date AS `month`, AVG(amount) AS month_avg, state
    FROM sales
    GROUP BY customer_id, `month`, state)

SELECT state
FROM monthly_averages
GROUP BY state
HAVING MIN(month_avg) >= 100;