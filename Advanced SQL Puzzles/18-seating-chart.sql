-- gap starts and ends
WITH prev_seating_chart AS
   (SELECT seat_number,
           LAG(seat_number, 1, 0) OVER (ORDER BY seat_number) AS prev_seat
    FROM seating_chart
    ORDER BY seat_number)
SELECT prev_seat + 1 AS gap_start, seat_number - 1 AS gap_end
FROM prev_seating_chart
WHERE seat_number > prev_seat + 1;

-- total missing numbers
WITH gap_widths AS
   (SELECT seat_number,
           seat_number - LAG(seat_number, 1, 0) OVER (ORDER BY seat_number) - 1 AS gap_width
    FROM seating_chart)
SELECT SUM(gap_width) AS total_missing_numbers
FROM gap_widths;

-- even and odd numbers
SELECT 'Even numbers' AS `type`, COUNT(seat_number) AS `count`
FROM seating_chart
WHERE seat_number % 2 = 0

UNION ALL

SELECT 'Odd numbers' AS `type`, COUNT(seat_number) AS `count`
FROM seating_chart
WHERE seat_number % 2 = 1;