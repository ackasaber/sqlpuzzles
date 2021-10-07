DELIMITER %%
CREATE PROCEDURE generate_permutations()
BEGIN
    DECLARE n SMALLINT;
    DECLARE pn INTEGER DEFAULT 1;

    -- Johnson-Trotter algorithm as defined in Lipsky's "Combinatorics for Programmers".
    -- Permutations are generated by switching neighbouring elements.
    CREATE TEMPORARY TABLE work_table
        (i       SMALLINT,
         label   CHAR NOT NULL,
         forward BOOLEAN NOT NULL,
         pos     SMALLINT NOT NULL,
         CONSTRAINT work_table_pk PRIMARY KEY (i))
    AS (SELECT i, label, TRUE AS forward, 1 AS pos
        FROM set_labels);
    
    CREATE TABLE permutations
       (`row_number` INTEGER,
        permutation  VARCHAR(100));
    
    INSERT INTO permutations
    SELECT 1, GROUP_CONCAT(label ORDER BY i)
    FROM set_labels;
    
    SELECT COUNT(*) INTO n FROM set_labels;
    UPDATE work_table SET pos = 0 WHERE i = n;
    
    BEGIN
        DECLARE first_move SMALLINT;
        DECLARE move_pos SMALLINT;
        DECLARE move_forward BOOLEAN;
        DECLARE forward_count SMALLINT DEFAULT 0;
        DECLARE swap_pos SMALLINT;
        DECLARE c CURSOR FOR SELECT i, pos, forward
                             FROM work_table ORDER BY i;
        generation: LOOP
            BEGIN
                OPEN c;
                REPEAT
                    FETCH c INTO first_move, move_pos, move_forward;
                UNTIL move_pos <> n - first_move + 1
                END REPEAT;
                CLOSE c;
                
                IF first_move = n THEN
                    DROP TEMPORARY TABLE work_table;
                    LEAVE generation;
                END IF;
            END;
            
            UPDATE work_table
            SET forward = NOT forward, pos = 1
            WHERE i < first_move;
            
            SELECT COUNT(*) INTO forward_count
            FROM work_table
            WHERE i < first_move AND forward;
            
            IF move_forward THEN
                SET swap_pos = move_pos + forward_count;
            ELSE
                SET swap_pos = n - first_move + 1 - move_pos + forward_count;
            END IF;
            
            -- switch positions
            BEGIN
                DECLARE t1 CHAR;
                DECLARE t2 CHAR;

                SELECT label INTO t1 FROM work_table WHERE i = swap_pos;
                SELECT label INTO t2 FROM work_table WHERE i = swap_pos + 1;
                UPDATE work_table SET label = t2 WHERE i = swap_pos;
                UPDATE work_table SET label = t1 WHERE i = swap_pos + 1;
            END;

            -- record the next permutation
            SET pn = pn + 1;
            INSERT INTO permutations
            SELECT pn, GROUP_CONCAT(label ORDER BY i)
            FROM work_table;
             
            UPDATE work_table SET pos = pos + 1 WHERE i = first_move;
        END LOOP generation;
    END;
END %%
DELIMITER ;

CALL generate_permutations();
SELECT * FROM permutations;