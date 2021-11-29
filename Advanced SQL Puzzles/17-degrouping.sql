DELIMITER %%
CREATE PROCEDURE degroup()
BEGIN
    DECLARE n SMALLINT;
    DECLARE c CURSOR FOR SELECT product, quantity
                         FROM products;

    CREATE TABLE degrouped_products
       (product VARCHAR(20),
        quantity SMALLINT);
    
    BEGIN
        DECLARE product VARCHAR(20);
        DECLARE quantity SMALLINT;
        DECLARE i SMALLINT;
        DECLARE done BOOLEAN DEFAULT FALSE;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
        OPEN c;
        read_loop: LOOP
            FETCH c INTO product, quantity;

            IF done THEN
                LEAVE read_loop;
            END IF;

            SET i = 1;
            
            WHILE i <= quantity DO
                SET i = i + 1;
                INSERT INTO degrouped_products (product, quantity)
                VALUES (product, 1);
            END WHILE;

        END LOOP;
        CLOSE c;
    END;
END %%
DELIMITER ;

CALL degroup();
SELECT * FROM degrouped_products;