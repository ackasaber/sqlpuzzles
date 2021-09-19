-- if there are no more than 64 different licenses
WITH employees AS
         (SELECT DISTINCT employee_id
          FROM employee_licenses),
     licenses AS
         (SELECT DISTINCT license
          FROM employee_licenses),
     license_numbers AS
         (SELECT license,
                 1 << (row_number() OVER (ORDER BY license)) AS license_number
          FROM licenses),
     employee_license_numbers AS
         (SELECT el.employee_id, lic.license_number
          FROM employee_licenses el
               INNER JOIN license_numbers lic
          ON el.license = lic.license),
     employee_license_set AS
         (SELECT employee_id,
                 SUM(license_number) AS encoded_license
          FROM employee_license_numbers
          GROUP BY employee_id)
SELECT e1.employee_id, e2.employee_id
  FROM employee_license_set e1 INNER JOIN employee_license_set e2
    ON e1.encoded_license = e2.encoded_license AND
       e1.employee_id < e2.employee_id;