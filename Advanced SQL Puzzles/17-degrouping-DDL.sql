CREATE TABLE products
   (product VARCHAR(20),
    quantity SMALLINT NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY (product));

INSERT INTO products (product, quantity)
VALUES ('Pencil', 3),
       ('Eraser', 4),
       ('Notebook', 2);