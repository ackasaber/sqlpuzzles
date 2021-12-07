CREATE TABLE year_sales
   (`year` SMALLINT,
    amount NUMERIC(10, 2) NOT NULL);

INSERT INTO year_sales (`year`, amount)
VALUES (2018, 352645),
       (2017, 165565),
       (2017, 254654),
       (2016, 159521),
       (2016, 251696),
       (2016, 111894);