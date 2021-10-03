CREATE TABLE workflow_executions
   (workflow VARCHAR(10),
    execution_date DATE,
    CONSTRAINT workflow_exec_pk PRIMARY KEY (workflow, execution_date));
    
INSERT INTO workflow_executions
VALUES ('Alpha', '2018-06-01'),
       ('Alpha', '2018-06-14'),
       ('Alpha', '2018-06-15'),
       ('Bravo', '2018-06-01'),
       ('Bravo', '2018-06-02'),
       ('Bravo', '2018-06-19'),
       ('Charlie', '2018-06-01'),
       ('Charlie', '2018-06-15'),
       ('Charlie', '2018-06-30');
