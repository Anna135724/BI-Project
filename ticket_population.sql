CREATE PROCEDURE PopulateTicketsTable1
AS
BEGIN
    -- Clear existing data from tickets table
    DELETE FROM tickets;
	SELECT * FROM AIRPORT_DW.dbo.tickets
    -- Insert data into tickets table from Ticket table
    INSERT INTO AIRPORT_DW.dbo.tickets (id_total, total, seat_number, class, ticket_price)
    SELECT 
        1 AS id_total, 
        'Totali i biletes' AS total, 
        seat_number, 
        class, 
        CAST(ticket_price AS numeric(30,2))
    FROM AIRPORT_DB.dbo.Ticket;
END;