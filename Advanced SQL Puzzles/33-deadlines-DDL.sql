CREATE TABLE manufacturing_time
   (part CHAR(6),
    product VARCHAR(20),
    days_to_build SMALLINT NOT NULL,
    /* The order is important. The following foreign key
       constraint will require an index for `product`. */
    CONSTRAINT manufacturing_time_pk PRIMARY KEY (product, part));

CREATE TABLE order_fullfillment
   (order_id CHAR(9),
    product VARCHAR(20) NOT NULL,
    delivery_time SMALLINT NOT NULL,
    CONSTRAINT order_fullfillment_pk PRIMARY KEY (order_id),
    CONSTRAINT order_fullfillment_fk FOREIGN KEY (product)
               REFERENCES manufacturing_time (product));
               
INSERT INTO manufacturing_time (part, product, days_to_build)
VALUES ('AA-111', 'Widget', 7),
       ('BB-222', 'Widget', 2),
       ('CC-333', 'Widget', 3),
       ('DD-444', 'Widget', 1),
       ('AA-111', 'Gizmo', 7),
       ('BB-222', 'Gizmo', 2),
       ('AA-111', 'Doodad', 7),
       ('DD-444', 'Doodad', 1);
    
INSERT INTO order_fullfillment (order_id, product, delivery_time)
VALUES ('Ord893456', 'Widget', 7),
       ('Ord923654', 'Gizmo', 3),
       ('Ord187239', 'Doodad', 9);
       
