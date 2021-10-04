CREATE TABLE inventory_tracking
   (adjustment_date DATE,
    adjustment INTEGER NOT NULL,
    CONSTRAINT inventory_tracking_pk PRIMARY KEY (adjustment_date));
    
INSERT INTO inventory_tracking (adjustment_date, adjustment)
VALUES ('2018-07-01', 100),
       ('2018-07-02', 75),
       ('2018-07-03', -150),
       ('2018-07-04', 50),
       ('2018-07-05', -100);