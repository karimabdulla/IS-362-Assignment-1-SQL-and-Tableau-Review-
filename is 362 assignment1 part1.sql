
-- question #1 
SELECT COUNT(*) AS number_planes,
MIN(speed) AS minimum_speed,
MAX(speed) AS maximum_speed
FROM planes;

-- question #2
SELECT SUM(distance) AS total_distance
FROM flights
WHERE month = 1
AND year = 2013;

SELECT SUM(distance) AS total_distance
FROM flights
WHERE month = 1
AND year = 2013
AND tailnum IS NULL;

-- question #3
SELECT count(*) as num_flights, SUM(distance) AS total_distance, manufacturer
FROM flights
INNER JOIN planes
ON flights.tailnum = planes.tailnum
WHERE day (flights.year = 2013 AND flights.month = 7 AND flights.day = 5)
GROUP BY manufacturer;

SELECT count(*) as num_flights, SUM(distance) AS total_distance, manufacturer
FROM flights
LEFT OUTER JOIN planes
ON flights.tailnum = planes.tailnum
WHERE day (flights.year = 2013 AND flights.month = 7 AND flights.day = 5)
GROUP BY manufacturer;

-- question #4
SELECT count(*) as num_flights, SUM(distance) AS total_distance, sum(wind_speed)
FROM flights
LEFT OUTER JOIN planes
ON flights.tailnum = planes.tailnum
LEFT OUTER JOIN weather
on flights.origin = weather.origin
WHERE day (flights.year = 2013 AND flights.month = 7 AND flights.day = 5)
GROUP BY manufacturer;



