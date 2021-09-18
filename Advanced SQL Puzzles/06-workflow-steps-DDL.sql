CREATE TABLE workflow_steps
    (workflow_name   VARCHAR(20),
     step_number     SMALLINT,
     completion_date DATE,
     CONSTRAINT workflow_steps_pk PRIMARY KEY (workflow_name, step_number));

INSERT INTO workflow_steps (workflow_name, step_number, completion_date)
VALUES ('Alpha', 1, '2018-07-02'),
       ('Alpha', 2, '2018-07-02'),
       ('Alpha', 3, '2018-07-01'),
       ('Bravo', 1, '2018-06-25'),
       ('Bravo', 2, NULL),
       ('Bravo', 3, '2018-06-27'),
       ('Charlie', 1, NULL),
       ('Charlie', 2, '2018-07-01'),
       ('Derek', 1, NULL);