CREATE TABLE orders
   (order_id CHAR(9),
    distributor VARCHAR(20) NOT NULL,
    facility SMALLINT NOT NULL,
    zone CHAR(3) NOT NULL,
    amount DECIMAL NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (order_id));

INSERT INTO orders (order_id, distributor, facility, zone, amount)
VALUES ('Ord156795', 'ACME', 123, 'ABC', 100),
       ('Ord826109', 'ACME', 123, 'ABC', 75),
       ('Ord342876', 'Direct Parts', 789, 'XYZ', 150),
       ('Ord994981', 'Direct Parts', 789, 'XYZ', 125);