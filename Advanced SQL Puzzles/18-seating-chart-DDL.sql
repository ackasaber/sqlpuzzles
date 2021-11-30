CREATE TABLE seating_chart
   (seat_number SMALLINT,
    CONSTRAINT seating_chart_pk PRIMARY KEY (seat_number));
    
INSERT INTO seating_chart (seat_number)
VALUES (7),
       (13), (14), (15),
       (27), (28), (29), (30), (31), (32), (33), (34), (35),
       (52), (53), (54);