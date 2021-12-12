WITH group_keys AS
   (SELECT distributor, facility, zone,
           ROW_NUMBER() OVER (ORDER BY distributor, facility, zone) AS group_key
    FROM orders
    GROUP BY distributor, facility, zone)
    
SELECT g.group_key, r.order_id, r.distributor, r.facility, r.zone, r.amount
FROM orders r INNER JOIN group_keys g
     ON r.distributor = g.distributor AND
        r.facility = g.facility AND
        r.zone = g.zone
ORDER BY group_key;
