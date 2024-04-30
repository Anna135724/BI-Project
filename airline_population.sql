CREATE PROCEDURE PopulateAirlineTable
AS
BEGIN
    -- Clear existing data from airline table
    DELETE FROM airline;
	SELECT * FROM AIRPORT_DW.dbo.airline
    -- Insert data into airline table from Airline table
    INSERT INTO AIRPORT_DW.dbo.airline (id_total, total, airline_name, destination_city, destination_country)
    SELECT 
        1 AS id_total,
        'Totali i avioneve' AS total,
        airline_name,
        destination_city,
        destination_country
    FROM AIRPORT_DB.dbo.Airline;
END;