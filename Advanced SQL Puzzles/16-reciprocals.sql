SELECT CASE WHEN player1 < player2 THEN player1 ELSE player2 END AS playerA,
       CASE WHEN player1 > player2 THEN player1 ELSE player2 END AS playerB,
       SUM(score) AS resulting_score
FROM scores
GROUP BY playerA, playerB;