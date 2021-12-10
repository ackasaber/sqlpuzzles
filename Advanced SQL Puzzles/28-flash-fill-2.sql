SELECT `row_number`, MAX(workflow) OVER (PARTITION BY before_count) AS workflow
FROM (SELECT `row_number`, workflow,
             COUNT(workflow) OVER (ORDER BY `row_number`) AS before_count
      FROM flash_fill) x
ORDER BY `row_number`;