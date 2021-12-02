SELECT product_id, effective_date, price
FROM
   (SELECT product_id, effective_date, price,
           ROW_NUMBER() OVER (PARTITION BY product_id
                              ORDER BY effective_date DESC) AS n
    FROM price_points) x
WHERE n = 1;