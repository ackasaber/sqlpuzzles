CREATE TABLE employee_licenses
    (employee_id SMALLINT,
     license VARCHAR(10),
     CONSTRAINT licenses_pk PRIMARY KEY (employee_id, license));
     
INSERT INTO employee_licenses (employee_id, license)
VALUES (1001, 'Class A'),
       (1001, 'Class B'),
       (1001, 'Class C'),
       (2002, 'Class A'),
       (2002, 'Class B'),
       (2002, 'Class C'),
       (3003, 'Class A'),
       (3003, 'Class D');