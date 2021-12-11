SELECT customer_id, order_id, amount
FROM orders
WHERE customer_id <> 1001 OR amount <> 50;