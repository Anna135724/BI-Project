USE AIRPORT_DW;

-- 5 most frequented destinations in 2022
SELECT TOP 2 f.destination, COUNT(*) AS num_flights
FROM Flights_Fact f
JOIN Time_T t ON f.time_f = t.id
WHERE t.id_year = '2024'
GROUP BY f.destination
ORDER BY num_flights DESC;

--AIRCRAFTS WITH THE HIGHEST CAPACITY
SELECT TOP 1 aircraft_type, total_seats
FROM aircrafts
ORDER BY total_seats DESC;

--SCHEDULES WITH THE HIGHEST FLOW DURING THE MONTH OF JANUARY 2022
SELECT f.predicted_departure_time, f.predicted_arrival_time, f.destination, COUNT(*) AS num_flights
FROM Flights_Fact f
JOIN Time_T t ON f.time_f = t.id
WHERE t.month_m = 'January' AND t.id_year = '2024'
GROUP BY f.predicted_departure_time, f.predicted_arrival_time, f.destination
ORDER BY num_flights DESC;

--THE MOST USED AIRLINE IN THE PERIOD January 2022-March 2022
SELECT TOP 1 a.airline_name, COUNT(*) AS num_flights
FROM Flights_Fact f
JOIN Time_T t ON f.time_f = t.id
JOIN airline a ON f.airline_f = a.id
WHERE (t.month_m BETWEEN 'January' AND 'March') AND t.id_year = '2024'
GROUP BY a.airline_name
ORDER BY num_flights DESC;

