CREATE PROCEDURE PopulateAircraftsTable
AS
BEGIN
    -- Clear existing data from aircrafts table
    DELETE FROM aircrafts;
	SELECT * FROM AIRPORT_DW.dbo.aircrafts
    -- Insert data into aircrafts table from Aircraft table
    INSERT INTO AIRPORT_DW.dbo.aircrafts (id_total, total, aircraft_type, total_seats, capacity_1, capacity_2, capacity_3, weight_max)
    SELECT 
        1 AS id_total,
        'Totali i aeroplaneve' AS total,
        aircraft_type,
        total_seats,
        capacity_k1,
        capacity_k2,
        capacity_k3,
        TRY_CAST(weight_max AS decimal(17,2))
    FROM AIRPORT_DB.dbo.Aircraft;
END;