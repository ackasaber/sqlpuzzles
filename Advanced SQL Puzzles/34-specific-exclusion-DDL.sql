CREATE TABLE orders
   (customer_id INTEGER NOT NULL,
    order_id CHAR(9),
    amount DECIMAL NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (order_id));
    
INSERT INTO orders (customer_id, order_id, amount)
VALUES (1001, 'Ord143933', 25),
       (1001, 'Ord789765', 50),
       (2002, 'Ord345434', 65),
       (3003, 'Ord785633', 50);
       