WITH RECURSIVE num_sequence AS
   (SELECT 1 AS k
    UNION ALL
    SELECT k + 1 AS k
    FROM num_sequence
    WHERE k < (SELECT MAX(n) FROM numbers))

SELECT n
FROM numbers
-- By definition. (Could be improved.)
WHERE (SELECT COUNT(k)
       FROM num_sequence
       WHERE k BETWEEN 1 AND n AND
             n MOD k = 0) = 2;