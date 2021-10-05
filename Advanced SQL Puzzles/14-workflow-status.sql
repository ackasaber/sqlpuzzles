WITH counts AS
 (SELECT workflow, COUNT(*) AS steps_count,
         COUNT(CASE WHEN status = 'Complete' THEN 1 END) AS completed_count,
         COUNT(CASE WHEN status = 'Error' THEN 1 END) AS error_count,
         COUNT(CASE WHEN status = 'Running' THEN 1 END) AS running_count
    FROM workflow_status
GROUP BY workflow)
SELECT workflow,
       CASE WHEN completed_count = steps_count THEN 'Complete'
            WHEN error_count = steps_count THEN 'Error'
            WHEN completed_count + running_count = steps_count THEN 'Running'
            ELSE 'Indeterminate' END AS status
  FROM counts;