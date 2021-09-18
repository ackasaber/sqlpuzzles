CREATE TABLE workflow_cases
    (workflow_name VARCHAR(10),
     case1 TINYINT NOT NULL,
     case2 TINYINT NOT NULL,
     case3 TINYINT NOT NULL,
     CONSTRAINT workflow_cases_pk PRIMARY KEY (workflow_name));
     
INSERT INTO workflow_cases (workflow_name, case1, case2, case3)
VALUES ('Alpha', 0, 0, 0),
       ('Bravo', 0, 1, 1),
       ('Charlie', 1, 0, 0),
       ('Delta', 0, 0, 0);