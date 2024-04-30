CREATE PROCEDURE PopulateTimeTable1
AS
BEGIN
    -- Clear existing data from Time_T table
    TRUNCATE TABLE Time_T; 
    SELECT * FROM AIRPORT_DW.dbo.Time_T
    -- Insert distinct months into Time_T table
    INSERT INTO AIRPORT_DW.dbo.Time_T (id_total, total, id_month, month_m)
    SELECT 
        1 AS id_total,
        'Totali i kohes' AS total,
        1 AS id_month,
        MONTH(real_time_departure) AS month_m
    FROM AIRPORT_DB.dbo.Flights
    GROUP BY MONTH(real_time_departure);
    
    -- Insert distinct year-month combinations into Time_T table
    INSERT INTO AIRPORT_DW.dbo.Time_T (id_total, total, id_month, month_m, id_year, year_y)
    SELECT 
        1 AS id_total,
        'Totali i kohes' AS total,
        1 AS id_month,
        MONTH(real_time_departure) AS month_m,
        2 AS id_year,
        YEAR(real_time_departure) AS year_y
    FROM AIRPORT_DB.dbo.Flights
    GROUP BY YEAR(real_time_departure), MONTH(real_time_departure);
END;