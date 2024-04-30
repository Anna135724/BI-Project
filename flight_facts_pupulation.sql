CREATE PROCEDURE PopulateFlightsFactTable
AS
BEGIN
    DELETE FROM AIRPORT_DW.dbo.Flights_Fact;
	 SELECT * FROM AIRPORT_DW.dbo.Flights_Fact;
    -- Insert data into Flights_Facts table
    INSERT INTO AIRPORT_DW.dbo.Flights_Fact (ticket__f, aircrafts_f, airline_f, time_f, predicted_departure_time, predicted_arrival_time, real_time_departure, real_time_arrival, destination, type_of_flight)
    SELECT 
        f.ticket_number, 
        a.aircraft_id, 
        al.airline_id,        
		t.id, 
        f.predictet_departure_time, 
        f.predictet_arrival_time, 
        f.real_time_departure, 
        f.real_time_arrival, 
        f.destination, 
        f.type_of_flight
    FROM 
        AIRPORT_DB.dbo.Flights f
		INNER JOIN AIRPORT_DB.dbo.Ticket tic ON tic.ticket_number = f.ticket_number 
        INNER JOIN AIRPORT_DB.dbo.Aircraft a ON a.aircraft_id = f.aircraft_id
        INNER JOIN AIRPORT_DB.dbo.Airline al ON al.airline_id = f.airline_id
        INNER JOIN AIRPORT_DW.dbo.Time_T t ON 1=1;
END;
select top 5 * from AIRPORT_DW.dbo.Flights_Fact;