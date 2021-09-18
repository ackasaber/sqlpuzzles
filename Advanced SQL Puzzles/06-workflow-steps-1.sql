  SELECT workflow_name
    FROM workflow_steps
GROUP BY workflow_name
  HAVING COUNT(completion_date) > 0 AND
         COUNT(completion_date) < COUNT(*);