CREATE TABLE order_counts
   (order_id CHAR(9),
    customer_id INTEGER NOT NULL,
    order_count INTEGER NOT NULL,
    vendor VARCHAR(50) NOT NULL,
    CONSTRAINT order_counts_pk PRIMARY KEY (order_id));

INSERT INTO order_counts (order_id, customer_id, order_count, vendor)
VALUES ('Ord195342', 1001, 12, 'Direct Parts'),
       ('Ord245532', 1001, 54, 'Direct Parts'),
       ('Ord344394', 1001, 32, 'ACME'),
       ('Ord442423', 2002, 7, 'ACME'),
       ('Ord524232', 2002, 16, 'ACME'),
       ('Ord645363', 2002, 5, 'Direct Parts');