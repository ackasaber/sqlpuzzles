CREATE TABLE player_scores
   (player_id INTEGER,
    score INTEGER NOT NULL,
    CONSTRAINT player_scores_pk PRIMARY KEY (player_id));
    
INSERT INTO player_scores (player_id, score)
VALUES (1001, 2343),
       (2002, 9432),
       (3003, 6548),
       (4004, 1054),
       (5005, 6832);