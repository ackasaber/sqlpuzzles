CREATE TABLE sql_statement
   (serial  INTEGER,
    element VARCHAR(20),
    CONSTRAINT sql_statement_pk PRIMARY KEY (serial));
    
INSERT INTO sql_statement (serial, element)
VALUES (1, 'SELECT'),
       (2, 'Product,'),
       (3, 'UnitPrice,'),
       (4, 'EffectiveDate'),
       (5, 'FROM'),
       (6, 'Products'),
       (7, 'WHERE'),
       (8, 'UnitPrice'),
       (9, '> 100');