WITH cell_phones AS (SELECT customer_id, phone_number AS cell_phone
                     FROM phone_dictionary
                     WHERE phone_type = 'Cellular'),
     work_phones AS (SELECT customer_id, phone_number AS work_phone
                     FROM phone_dictionary
                     WHERE phone_type = 'Work'),
     home_phones AS (SELECT customer_id, phone_number AS home_phone
                     FROM phone_dictionary
                     WHERE phone_type = 'Home'),
     customers AS (SELECT DISTINCT customer_id FROM phone_dictionary)
SELECT cust.customer_id, c.cell_phone, w.work_phone, h.home_phone
  FROM customers cust
       LEFT OUTER JOIN cell_phones c
       ON cust.customer_id = c.customer_id
       LEFT OUTER JOIN work_phones w
       ON cust.customer_id = w.customer_id
       LEFT OUTER JOIN home_phones h
       ON cust.customer_id = h.customer_id;