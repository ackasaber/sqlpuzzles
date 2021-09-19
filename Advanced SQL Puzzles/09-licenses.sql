WITH employees AS (SELECT DISTINCT employee_id
                   FROM employee_licenses)
SELECT e1.employee_id AS employee1,
       e2.employee_id AS employee2
FROM employees e1 INNER JOIN employees e2
     ON e1.employee_id <> e2.employee_id
WHERE NOT EXISTS
    (WITH lic1 AS (SELECT * FROM employee_licenses
                   WHERE employee_id = e1.employee_id),
          lic2 AS (SELECT * FROM employee_licenses
                   WHERE employee_id = e2.employee_id)
     SELECT 1
     FROM lic1 LEFT OUTER JOIN lic2
          ON lic1.license = lic2.license
          WHERE lic2.employee_id IS NULL
     UNION ALL
     SELECT 1
     FROM lic1 RIGHT OUTER JOIN lic2
          ON lic1.license = lic2.license
          WHERE lic1.employee_id IS NULL)
ORDER BY employee1;