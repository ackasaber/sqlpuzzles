CREATE TABLE employee_pay_record
    (employee_id INTEGER,
     fiscal_year INTEGER,
     start_date  DATE NOT NULL,
     end_date    DATE NOT NULL,
     pay_rate    DECIMAL(10, 2) NOT NULL
                 CONSTRAINT pay_rate_positive CHECK (pay_rate > 0),
     
     CONSTRAINT epr_pk PRIMARY KEY (employee_id, fiscal_year),
     CONSTRAINT employee_fk FOREIGN KEY (employee_id)
                REFERENCES employees (employee_id),
     CONSTRAINT consistent_date CHECK (start_date <= end_date),
     CONSTRAINT hits_the_year CHECK (YEAR(start_date) = fiscal_year OR YEAR(end_date) = fiscal_year));
     