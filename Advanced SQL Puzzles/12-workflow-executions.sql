WITH days_between_execs AS
    (SELECT workflow, execution_date,
            DATEDIFF(execution_date,
                     LAG(execution_date) OVER (PARTITION BY workflow)) AS between_execs
     FROM workflow_executions)
SELECT workflow, AVG(between_execs) avg_between_execs
FROM days_between_execs
GROUP BY workflow;