CREATE TABLE employees
    (employee_id INTEGER,
     manager_id  INTEGER,
     job_title   VARCHAR(50) NOT NULL,
     salary      INTEGER NOT NULL,
     CONSTRAINT employees_pk PRIMARY KEY (employee_id),
     CONSTRAINT employees_fk FOREIGN KEY (manager_id)
                             REFERENCES employees (employee_id));
                             
INSERT INTO employees (employee_id, manager_id, job_title, salary)
VALUES (1001, NULL, 'President', 185000),
       (2002, 1001, 'Director', 120000),
       (3003, 1001, 'Office Manager', 97000),
       (4004, 2002, 'Engineer', 110000),
       (5005, 2002, 'Engineer', 142000),
       (6006, 2002, 'Engineer', 160000);