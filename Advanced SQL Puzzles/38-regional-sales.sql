WITH regions AS (SELECT DISTINCT region
                 FROM region_sales),
    
distributors AS (SELECT DISTINCT distributor
                 FROM region_sales)

SELECT r.region, d.distributor, COALESCE(s.sales, 0) sales
FROM regions r
     CROSS JOIN distributors d
     LEFT OUTER JOIN region_sales s
ON r.region = s.region AND
   d.distributor = s.distributor
ORDER BY d.distributor, r.region;