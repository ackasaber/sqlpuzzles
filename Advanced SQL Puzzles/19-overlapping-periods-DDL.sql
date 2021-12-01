CREATE TABLE overlapping_periods
   (start_date DATE,
    end_date DATE,
    CONSTRAINT overlapping_periods_pk PRIMARY KEY (start_date, end_date));
    
INSERT INTO overlapping_periods (start_date, end_date)
VALUES ('2018-01-01', '2018-01-05'),
       ('2018-01-03', '2018-01-09'),
       ('2018-01-10', '2018-01-11'),
       ('2018-01-12', '2018-01-16'),
       ('2018-01-15', '2018-01-19');