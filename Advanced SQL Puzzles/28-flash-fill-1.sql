WITH row_ranges AS
   (SELECT `row_number` AS range_start,
           LEAD(`row_number`, 1,
                (SELECT MAX(`row_number`) + 1
                 FROM flash_fill))
           OVER (ORDER BY `row_number`) - 1 AS range_end,
           workflow
    FROM flash_fill
    WHERE workflow IS NOT NULL)

SELECT t.`row_number`,
       r.workflow,
       t.`status`
FROM flash_fill t INNER JOIN row_ranges r
ON t.`row_number` BETWEEN r.range_start AND r.range_end;
