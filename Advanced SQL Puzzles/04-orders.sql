SELECT customer_id, order_id, delivery_state, amount FROM orders
WHERE customer_id IN (SELECT DISTINCT customer_id FROM orders
                      WHERE delivery_state = 'CA')
  AND delivery_state = 'TX';