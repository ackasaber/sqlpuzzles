CREATE TABLE flash_fill
   (`row_number` SMALLINT,
    workflow VARCHAR(20),
    `status` VARCHAR(10) NOT NULL,
    CONSTRAINT flash_fill_pk PRIMARY KEY (`row_number`));

INSERT INTO flash_fill (`row_number`, workflow, `status`)
VALUES (1, 'Alpha', 'Pass'),
       (2, NULL, 'Fail'),
       (3, NULL, 'Fail'),
       (4, NULL, 'Fail'),
       (5, 'Bravo', 'Pass'),
       (6, NULL, 'Fail'),
       (7, NULL, 'Fail'),
       (8, NULL, 'Pass'),
       (9, NULL, 'Pass'),
       (10, 'Charlie', 'Fail'),
       (11, NULL, 'Fail'),
       (12, NULL, 'Fail');