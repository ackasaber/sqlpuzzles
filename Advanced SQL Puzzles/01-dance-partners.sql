WITH boys AS (SELECT student_id AS boy_id,
                     ROW_NUMBER() OVER () AS serial_no
                FROM dance_partners
               WHERE gender = 'M'),

     girls AS (SELECT student_id AS girl_id,
                      ROW_NUMBER() OVER () AS serial_no
                 FROM dance_partners
                WHERE gender = 'F')

-- SELECT boy_id, girld_id
-- FROM boys FULL OUTER JOIN girls
--           ON boys.serial_no = girls.serial_no

(SELECT boy_id, girl_id
   FROM boys LEFT OUTER JOIN girls
	 ON boys.serial_no = girls.serial_no)

  UNION ALL

(SELECT boy_id, girl_id
   FROM girls LEFT OUTER JOIN boys
	 ON girls.serial_no = boys.serial_no
  WHERE boys.boy_id IS NULL);