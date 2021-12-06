-- with window functions
SELECT BIN_TO_UUID(row_id) AS row_id
FROM (SELECT row_id, ROW_NUMBER() OVER (ORDER BY row_id) AS n
      FROM sample_data) x
WHERE n BETWEEN 10 AND 20;

-- with MySQL LIMIT clause
SELECT BIN_TO_UUID(row_id) AS row_id
FROM sample_data
ORDER BY row_id
LIMIT 9, 11; -- pick 11 rows starting from the 10th