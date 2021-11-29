WITH RECURSIVE numbers AS
   (SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 100) -- MAX(quantity) ?
SELECT product, 1
FROM products CROSS JOIN numbers
WHERE n <= quantity;