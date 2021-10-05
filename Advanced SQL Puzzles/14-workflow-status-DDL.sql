CREATE TABLE workflow_status
   (workflow VARCHAR(10),
    step     SMALLINT,
    status   ENUM('Error', 'Complete', 'Running'),
    CONSTRAINT workflow_status_pk PRIMARY KEY (workflow, step));
    
INSERT INTO workflow_status (workflow, step, status)
VALUES ('Alpha', 1, 'Error'),
       ('Alpha', 2, 'Complete'),
       ('Bravo', 1, 'Complete'),
       ('Bravo', 2, 'Complete'),
       ('Charlie', 1, 'Complete'),
       ('Charlie', 2, 'Error'),
       ('Delta', 1, 'Complete'),
       ('Delta', 2, 'Running'),
       ('Echo', 1, 'Running'),
       ('Echo', 2, 'Error'),
       ('Foxtrot', 1, 'Error');
