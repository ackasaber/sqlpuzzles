CREATE TABLE phone_dictionary
    (customer_id INTEGER,
     phone_type  ENUM('Cellular', 'Work', 'Home'),
     phone_number CHAR(12) NOT NULL,
     CONSTRAINT phone_dictionary_pk PRIMARY KEY (customer_id, phone_type));

INSERT INTO phone_dictionary
VALUES (1001, 'Cellular', '555-897-5421'),
       (1001, 'Work',     '555-897-6542'),
       (1001, 'Home',     '555-698-9874'),
       (2002, 'Cellular', '555-963-6544'),
       (2002, 'Work',     '555-812-9856'),
       (3003, 'Cellular', '555-987-6541');