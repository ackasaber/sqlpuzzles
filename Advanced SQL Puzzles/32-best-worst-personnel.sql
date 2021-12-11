WITH personnel_rated AS
   (SELECT job_name,
           FIRST_VALUE(spaceman_id) OVER w AS best_spaceman,
           LAST_VALUE(spaceman_id) OVER w AS worst_spaceman,
           RANK() OVER w AS placement
      FROM personnel
      WINDOW w AS (PARTITION BY job_name
                   ORDER BY mission_count DESC
                   ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING))

SELECT job_name,
       best_spaceman,
       worst_spaceman
FROM personnel_rated
WHERE placement = 1;