WITH product_manifacture_time AS
   (SELECT product, MAX(days_to_build) AS days_to_build
    FROM manufacturing_time
    GROUP BY product)
    
SELECT r.order_id, r.product
FROM order_fullfillment r INNER JOIN product_manifacture_time t
ON r.product = t.product
WHERE t.days_to_build <= r.delivery_time;
