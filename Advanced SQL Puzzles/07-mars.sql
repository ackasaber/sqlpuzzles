SELECT c.candidate_id
FROM candidates c INNER JOIN requirements r
     ON c.candidate_role = r.required_role -- set intersection
GROUP BY c.candidate_id
HAVING COUNT(c.candidate_role) = (SELECT COUNT(*) FROM requirements);