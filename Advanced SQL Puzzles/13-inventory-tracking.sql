SELECT adjustment_date, adjustment,
       SUM(adjustment) OVER (ORDER BY adjustment_date
                             ROWS UNBOUNDED PRECEDING) AS inventory
FROM inventory_tracking;