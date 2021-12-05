-- The solution if you don't know about NTILE.
SELECT player_id,
       score,
       CASE -- COUNT() without the OVER clause limits the result to a single row
           WHEN RANK() OVER (ORDER BY score DESC) <= (COUNT(*) OVER () + 1) DIV 2
           THEN 1 ELSE 2
       END AS player_group
FROM player_scores
ORDER BY score DESC;

-- The solution with NTILE.
SELECT player_id,
       score,
       NTILE(2) OVER (ORDER BY score desc) player_group
FROM player_scores
ORDER BY score DESC;