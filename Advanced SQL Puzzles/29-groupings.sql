WITH before_counts AS
   (SELECT step, `status`,
           NULLIF(`status`,
                  LAG(`status`, 1, `status`)
                  OVER (ORDER BY step)) AS first_item
    FROM groupings),

group_numbered AS
   (SELECT step, `status`,
           COUNT(first_item) OVER (ORDER BY step) + 1 AS group_number
    FROM before_counts)
    
SELECT group_number AS `order`, `status`,
       COUNT(*) AS consecutive_counts
FROM group_numbered
GROUP BY group_number, `status`;
