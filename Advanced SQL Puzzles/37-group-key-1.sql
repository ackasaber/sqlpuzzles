SELECT DENSE_RANK() OVER (ORDER BY distributor, facility, zone) AS group_key,
       order_id, distributor, facility, zone, amount
FROM orders
ORDER BY group_key;