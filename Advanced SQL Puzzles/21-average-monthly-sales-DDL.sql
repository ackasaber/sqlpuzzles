CREATE TABLE sales
   (order_id CHAR(9),
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    amount NUMERIC(5, 2) NOT NULL,
    state CHAR(2) NOT NULL,
    CONSTRAINT sales_pk PRIMARY KEY (order_id));
    
INSERT INTO sales (order_id, customer_id, order_date, amount, state)
VALUES ('Ord145332', 1001, '2018-01-01', 100, 'TX'),
       ('Ord657895', 1001, '2018-01-01', 150, 'TX'),
       ('Ord887612', 1001, '2018-01-01', 75, 'TX'),
       ('Ord654374', 1001, '2018-02-01', 100, 'TX'),
       ('Ord345362', 1001, '2018-03-01', 100, 'TX'),
       ('Ord912376', 2002, '2018-02-01', 75, 'TX'),
       ('Ord543219', 2002, '2018-02-01', 150, 'IA'),
       ('Ord156357', 3003, '2018-01-01', 100, 'IA'),
       ('Ord956541', 3003, '2018-02-01', 100, 'IA'),
       ('Ord856993', 3003, '2018-03-01', 100, 'IA'),
       ('Ord864573', 4004, '2018-04-01', 100, 'IA'),
       ('Ord654525', 4004, '2018-05-01', 50, 'IA'),
       ('Ord987654', 4004, '2018-05-01', 100, 'IA');