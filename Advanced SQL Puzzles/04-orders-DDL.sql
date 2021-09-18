CREATE TABLE orders
    (customer_id    INTEGER NOT NULL,
     order_id       CHAR(9),
     delivery_state CHAR(2) NOT NULL,
     amount         DECIMAL(10, 2),
     CONSTRAINT orders_pk PRIMARY KEY (order_id),
     CONSTRAINT amount_positive CHECK (amount > 0));
     
INSERT INTO orders (customer_id, order_id, delivery_state, amount)
VALUES (1001, 'Ord936254', 'CA', 340),
       (1001, 'Ord143876', 'TX', 950),
       (1001, 'Ord654876', 'TX', 670),
       (1001, 'Ord814356', 'TX', 860),
       (2002, 'Ord342176', 'WA', 320),
       (3003, 'Ord265789', 'CA', 650),
       (3003, 'Ord387654', 'CA', 830),
       (4004, 'Ord476126', 'TX', 120);