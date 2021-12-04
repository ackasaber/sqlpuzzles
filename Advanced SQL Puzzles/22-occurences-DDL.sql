CREATE TABLE occurences
   (workflow VARCHAR(10),
    occurence_count INTEGER NOT NULL,
    message VARCHAR(200) NOT NULL,
    CONSTRAINT occurences_pk PRIMARY KEY (workflow, message));

INSERT INTO occurences (workflow, occurence_count, message)
VALUES ('Alpha', 5, 'Error: Conversion Failed'),
       ('Alpha', 8, 'Status Complete'),
       ('Alpha', 9, 'Error: Unidentified error occurred'),
       ('Bravo', 3, 'Error: Cannot Divide by 0'),
       ('Bravo', 1, 'Error: Unidentified error occurred'),
       ('Charlie', 10, 'Error: Unidentified error occurred'),
       ('Charile', 7, 'Error: Conversion Failed'),
       ('Charlie', 6, 'Status Complete');