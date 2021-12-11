CREATE TABLE personnel
   (spaceman_id SMALLINT,
    job_name VARCHAR(20) NOT NULL,
    mission_count SMALLINT NOT NULL,
    CONSTRAINT personnel_pk PRIMARY KEY (spaceman_id));
    
INSERT INTO personnel (spaceman_id, job_name, mission_count)
VALUES (1001, 'Astrogator', 6),
       (2002, 'Astrogator', 12),
       (3003, 'Astrogator', 17),
       (4004, 'Geologist', 21),
       (5005, 'Geologist', 9),
       (6006, 'Geologist', 8),
       (7007, 'Technician', 13),
       (8008, 'Technician', 2),
       (9009, 'Technician', 7);