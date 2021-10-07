CREATE TABLE scores
   (player1 INTEGER,
    player2 INTEGER,
    score INTEGER NOT NULL,
    CONSTRAINT scores_pk PRIMARY KEY (player1, player2));
    
INSERT INTO scores (player1, player2, score)
VALUES (1001, 2002, 150),
       (3003, 4004, 15),
       (4004, 3003, 125);