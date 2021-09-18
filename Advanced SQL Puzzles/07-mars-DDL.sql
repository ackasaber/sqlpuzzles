CREATE TABLE candidates
    (candidate_id SMALLINT,
     candidate_role VARCHAR(50),
     CONSTRAINT candidates_pk PRIMARY KEY (candidate_id, candidate_role));
     
CREATE TABLE requirements
    (required_role VARCHAR(50),
     CONSTRAINT requirements_pk PRIMARY KEY (required_role));
     
INSERT INTO candidates (candidate_id, candidate_role)
VALUES (1001, 'Geologist'),
       (1001, 'Astrogator'),
       (1001, 'Biochemist'),
       (1001, 'Technician'),
       (2002, 'Surgeon'),
       (2002, 'Machinist'),
       (3003, 'Cryologist'),
       (4004, 'Selenologist');
       
INSERT INTO requirements (required_role)
VALUES ('Geologist'),
       ('Astrogator'),
       ('Technician');