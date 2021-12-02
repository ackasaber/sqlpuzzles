CREATE TABLE price_points
   (product_id INTEGER,
    price NUMERIC(5, 2) NOT NULL,
    effective_date DATE,
    CONSTRAINT price_points_pk PRIMARY KEY (product_id, effective_date));

INSERT INTO price_points (product_id, effective_date, price)
VALUES (1001, '2018-01-01', 1.99),
       (1001, '2018-05-17', 2.99),
       (1001, '2018-06-14', 3.99),
       (2002, '2018-02-12', 12.99),
       (2002, '2018-03-01', 17.99),
       (2002, '2018-04-19', 20.99);
       