CREATE TABLE groupings
   (step SMALLINT,
    `status` VARCHAR(10) NOT NULL,
    CONSTRAINT groupings_pk PRIMARY KEY (step));
    
INSERT INTO groupings (step, `status`)
VALUES (1, 'Passed'),
       (2, 'Passed'),
       (3, 'Passed'),
       (4, 'Passed'),
       (5, 'Failed'),
       (6, 'Failed'),
       (7, 'Failed'),
       (8, 'Failed'),
       (9, 'Failed'),
       (10, 'Passed'),
       (11, 'Passed'),
       (12, 'Passed');