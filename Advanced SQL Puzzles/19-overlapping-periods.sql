WITH
dates AS 
-- First dump all dates into a single table,
-- marking starting dates with +1 and ending dates with -1.
   (SELECT +1 AS mark, start_date AS `date`
    FROM overlapping_periods

    UNION ALL

    SELECT -1 AS mark, end_date AS `date`
    FROM overlapping_periods),

in_counts AS
-- Then for each date count the number of overlapping periods still active after it.
-- For that, just count the running total of preceding marks.
-- For the case of coinciding dates we'd prefer to have starting dates go before ending dates,
-- so that the periods are considered overlapped.
   (SELECT mark, `date`, SUM(mark) OVER (ORDER BY `date` ASC, mark DESC ROWS UNBOUNDED PRECEDING) AS in_count
    FROM dates
    ORDER BY `date`),

merged_dates AS
-- The result needs to contain only dates where the count changes from 0 to 1 (starting date)
-- or from 1 to 0 (ending dates). Filter out the rest.
   (SELECT mark, `date`
    FROM
       (SELECT mark, `date`, in_count,
               LAG(in_count, 1, 0) OVER (ORDER BY `date` ASC, mark DESC) AS prev_in_count
        FROM in_counts) x
    WHERE in_count = 1 AND prev_in_count = 0 OR in_count = 0)

-- Now the starting and ending dates will be alternated in the table.
SELECT start_date, end_date
FROM
   (SELECT mark, `date` AS start_date, LEAD(`date`) OVER (ORDER BY `date` ASC, mark DESC) AS end_date
    FROM merged_dates) x
WHERE mark = +1;
