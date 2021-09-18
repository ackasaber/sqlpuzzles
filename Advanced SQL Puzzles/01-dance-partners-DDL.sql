CREATE TABLE dance_partners
	(student_id INTEGER,
	 gender     ENUM('M', 'F') NOT NULL,
     CONSTRAINT dance_partners_pk PRIMARY KEY (student_id));
     
INSERT INTO dance_partners (student_id, gender)
VALUES (1001, 'M'),
       (2002, 'M'),
       (3003, 'M'),
       (4004, 'M'),
       (5005, 'M'),
       (6006, 'F'),
       (7007, 'F'),
       (8008, 'F'),
       (9009, 'F');