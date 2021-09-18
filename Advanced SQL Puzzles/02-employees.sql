WITH RECURSIVE ranked_employees (employee_id, manager_id, job_title, salary, depth)
  AS (SELECT employee_id, manager_id, job_title, salary, 0 AS depth
      FROM employees
      WHERE job_title = 'President'
      
      UNION ALL
      
      SELECT e.employee_id, e.manager_id, e.job_title, e.salary, r.depth + 1
      FROM ranked_employees r INNER JOIN employees e
        ON r.employee_id = e.manager_id)
        
SELECT *
FROM ranked_employees;