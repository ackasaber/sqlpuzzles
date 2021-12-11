SELECT sales_rep_id
FROM orders
/* In case there are more than 3 sales types:
   WHERE sales_type IN ('International', 'Domestic') */
GROUP BY sales_rep_id
HAVING COUNT(DISTINCT sales_type) = 1
ORDER BY sales_rep_id;