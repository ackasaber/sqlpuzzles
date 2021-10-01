CREATE TABLE set_labels
   (i SMALLINT,
    label CHAR NOT NULL,
    CONSTRAINT set_labels_pk PRIMARY KEY (i));
    
INSERT INTO set_labels
VALUES (1, 'A'), (2, 'B'), (3, 'C'), (4, 'D');
