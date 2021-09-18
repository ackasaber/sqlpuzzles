SELECT c.customer_id,
       (SELECT d.phone_number FROM phone_dictionary d
         WHERE d.customer_id = c.customer_id
           AND d.phone_type = 'Cellular') cell_phone,
       (SELECT d.phone_number FROM phone_dictionary d
         WHERE d.customer_id = c.customer_id
           AND d.phone_type = 'Work') work_phone,
       (SELECT d.phone_number FROM phone_dictionary d
         WHERE d.customer_id = c.customer_id
           AND d.phone_type = 'Home') home_phone
FROM (SELECT DISTINCT customer_id FROM phone_dictionary) c;