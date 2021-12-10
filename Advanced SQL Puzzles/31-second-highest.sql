SELECT n
FROM sample_data
ORDER BY n DESC
LIMIT 1, 1;

SELECT n
FROM (SELECT n, ROW_NUMBER() OVER (ORDER BY n DESC) AS rn
      FROM sample_data) x
WHERE rn = 2;

SELECT r.n
FROM sample_data r
WHERE (SELECT COUNT(s.n)
             FROM sample_data s
             WHERE s.n > r.n) = 1;
             
SELECT MAX(n) AS n
FROM sample_data
WHERE n < (SELECT MAX(n)
           FROM sample_data);