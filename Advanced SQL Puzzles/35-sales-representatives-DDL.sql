CREATE TABLE orders
   (sales_rep_id INTEGER NOT NULL,
    invoice_id CHAR(9),
    amount DECIMAL NOT NULL,
    sales_type VARCHAR(20) NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (invoice_id));

INSERT INTO orders (sales_rep_id, invoice_id, amount, sales_type)
VALUES (1001, 'Inv345756', 13454, 'International'),
       (2002, 'Inv546744', 3434, 'International'),
       (4004, 'Inv234745', 54645, 'International'),
       (5005, 'Inv895745', 234345, 'International'),
       (7007, 'Inv006321', 776, 'International'),
       (1001, 'Inv734534', 4564, 'Domestic'),
       (2002, 'Inv600213', 34534, 'Domestic'),
       (3003, 'Inv757853', 345, 'Domestic'),
       (6006, 'Inv198632', 6543, 'Domestic'),
       (8008, 'Inv977654', 67, 'Domestic');