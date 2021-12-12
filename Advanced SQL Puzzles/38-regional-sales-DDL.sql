CREATE TABLE region_sales
   (region VARCHAR(10),
    distributor VARCHAR(20),
    sales INTEGER NOT NULL,
    CONSTRAINT region_sales_pk PRIMARY KEY (region, distributor));

INSERT INTO region_sales (region, distributor, sales)
VALUES ('North', 'ACE', 10),
       ('South', 'ACE', 67),
       ('East', 'ACE', 54),
       ('North', 'Direct Parts', 8),
       ('South', 'Direct Parts', 7),
       ('West', 'Direct Parts', 12),
       ('North', 'ACME', 65),
       ('South', 'ACME', 9),
       ('East', 'ACME', 1),
       ('West', 'ACME', 7);