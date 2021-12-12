-- All possible routes, assuming no cycles.
CREATE VIEW all_routes AS
WITH RECURSIVE routes AS
   (SELECT departure_city,
           arrival_city,
           cost AS route_cost,
           CONCAT(departure_city, " →") AS route
    FROM city_connections

    UNION ALL

    SELECT r.departure_city,
           c.arrival_city,
           r.route_cost + c.cost AS route_cost,
           CONCAT(r.route, " ", r.arrival_city, " →") AS route
    FROM routes r INNER JOIN city_connections c
    ON r.arrival_city = c.departure_city)

SELECT departure_city, arrival_city, route_cost,
       CONCAT(route, " ", arrival_city) AS route
FROM routes;

-- All routes from Austin to Des Moines.
SELECT route, route_cost
FROM all_routes
WHERE departure_city = 'Austin' AND
      arrival_city = 'Des Moines';

-- The most expensive route from Austin to Des Moines.
SELECT route, route_cost
FROM (SELECT route, route_cost,
             RANK() OVER (ORDER BY route_cost DESC) AS route_rank
      FROM all_routes
      WHERE departure_city = 'Austin' AND arrival_city = 'Des Moines') x
WHERE route_rank = 1;

-- The least expensive route from Austin to Des Moines.
SELECT route, route_cost
FROM (SELECT route, route_cost,
             RANK() OVER (ORDER BY route_cost ASC) AS route_rank
      FROM all_routes
      WHERE departure_city = 'Austin' AND arrival_city = 'Des Moines') x
WHERE route_rank = 1;
