-- If there are multiple medians or modes, the corresponding subqueries
-- need to be run separately.
SELECT (SELECT AVG(number)
        FROM numbers) AS numbers_mean,

       (WITH sorted_numbers AS (SELECT number,
                                       row_number() OVER (ORDER BY number) i
                                FROM numbers)
        SELECT DISTINCT number
        FROM sorted_numbers
        WHERE i BETWEEN (SELECT (COUNT(*) + 1) DIV 2 FROM numbers)
                    AND (SELECT (COUNT(*) + 2) DIV 2 FROM numbers)) AS numbers_median,
                    
        (WITH frequency AS
             (SELECT number, COUNT(number) AS times
              FROM numbers
              GROUP BY number)
        SELECT number
        FROM frequency
        WHERE times = (SELECT MAX(times)
                       FROM frequency)) AS numbers_mode,
                       
       (SELECT MAX(number) - MIN(number)
        FROM numbers) AS numbers_range;