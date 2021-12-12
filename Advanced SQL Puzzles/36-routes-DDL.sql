CREATE TABLE city_connections
   (departure_city VARCHAR(50),
    arrival_city VARCHAR(50),
    cost DECIMAL NOT NULL,
    CONSTRAINT city_connections_pk PRIMARY KEY (departure_city, arrival_city));
    
INSERT INTO city_connections (departure_city, arrival_city, cost)
VALUES ('Austin', 'Dallas', 100),
       ('Dallas', 'Memphis', 200),
       ('Memphis', 'Des Moines', 300),
       ('Dallas', 'Des Moines', 400);