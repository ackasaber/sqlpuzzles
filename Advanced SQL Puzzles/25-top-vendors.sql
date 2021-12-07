WITH
total_order_counts AS
   (SELECT customer_id, vendor,
           SUM(order_count) AS total_order_count
    FROM order_counts
    GROUP BY customer_id, vendor),

ranked_vendors AS
   (SELECT customer_id, vendor,
           RANK() OVER (PARTITION BY customer_id
                        ORDER BY total_order_count DESC) AS vendor_rank
    FROM total_order_counts)

SELECT customer_id, vendor AS top_vendor
FROM ranked_vendors
WHERE vendor_rank = 1;