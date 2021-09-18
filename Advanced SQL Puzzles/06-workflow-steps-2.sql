WITH somewhat_complete AS (SELECT DISTINCT workflow_name
                             FROM workflow_steps
                            WHERE completion_date IS NOT NULL),
     somewhat_incomplete AS (SELECT DISTINCT workflow_name
                               FROM workflow_steps
                              WHERE completion_date IS NULL)
SELECT c.workflow_name
  FROM somewhat_complete c INNER JOIN somewhat_incomplete i
    ON c.workflow_name = i.workflow_name;