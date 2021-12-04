SELECT workflow, message
FROM
   (SELECT workflow, message,
           ROW_NUMBER() OVER (PARTITION BY message
                              ORDER BY occurence_count DESC) AS n
    FROM occurences) x
WHERE n = 1;