-- There is no other way in MySQL: no updatable cursors,
-- DELETE xxx FROM yyy doesn't accept CTEs.
CREATE TABLE deduplicated
   (n INTEGER,
    CONSTRAINT deduplicated_pk PRIMARY KEY (n));
    
INSERT INTO deduplicated
SELECT DISTINCT n FROM duplicates;

DROP TABLE duplicates;

ALTER TABLE deduplicated
RENAME TO duplicates;

