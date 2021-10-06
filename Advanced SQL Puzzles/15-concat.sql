  SELECT GROUP_CONCAT(element ORDER BY serial SEPARATOR ' ') AS statement
    FROM sql_statement
ORDER BY serial;