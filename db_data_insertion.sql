USE AIRPORT_DB;

INSERT INTO Airline (airline_name, destination_city, destination_country)
VALUES
    ('American Airlines', 'New York', 'USA'),
    ('British Airways', 'London', 'UK'),
    ('Emirates', 'Dubai', 'UAE'),
    ('Lufthansa', 'Berlin', 'Germany'),
    ('Qatar Airways', 'Doha', 'Qatar');

-- Insert values into Aircraft table
INSERT INTO Aircraft ( aircraft_type, total_seats, capacity_k1, capacity_k2, capacity_k3, weight_max)
VALUES
    ( 'Boeing 737', 150, 100, 30, 20, 500),
    ( 'Airbus A320', 180, 120, 40, 20, 600),
    ( 'Boeing 777', 300, 200, 60, 40, 100),
    ( 'Airbus A380', 500, 350, 100, 50, 200),
    ( 'Boeing 747', 400, 280, 80, 40, 150);

-- Insert values into Ticket table
INSERT INTO Ticket (seat_number, class, ticket_price)
VALUES
    ( 'A1', 'First', 1000),
    ( 'B2', 'First', 1200),
    ( 'C3', 'First', 1100),
    ( 'D4', 'Second', 800),
    ( 'E5', 'Second', 900);

-- Insert values into Flights table
INSERT INTO Flights (predictet_departure_time, predictet_arrival_time, real_time_departure, real_time_arrival, destination, type_of_flight, airline_id, aircraft_id, ticket_number)
VALUES
    ('2024-03-17 10:00:00', '2024-03-17 12:00:00', '2024-03-17 10:00:00', '2024-03-17 12:00:00', 'New York', 'Direct Flight', 1, 1, 1),
    ('2024-04-17 12:00:00', '2024-04-17 14:00:00', '2024-04-17 12:00:00', '2024-04-17 14:00:00', 'London', 'Direct Flight', 2, 2, 2),
    ('2024-02-17 14:00:00', '2024-02-17 16:00:00', '2024-02-17 14:00:00', '2024-02-17 16:00:00', 'Dubai', 'Direct Flight', 3, 3, 3),
    ('2024-04-17 16:00:00', '2024-04-17 18:00:00', '2024-04-17 16:00:00', '2024-04-17 18:00:00', 'Berlin', 'Direct Flight', 4, 4, 4),
    ('2024-01-17 18:00:00', '2024-01-17 20:00:00', '2024-01-17 18:00:00', '2024-01-17 20:00:00', 'Doha', 'Direct Flight', 5, 5, 5);

-- Insert values into Passenger table
INSERT INTO Passenger (NID, first_name, last_name, phone_number, email)
VALUES
    ('1234567890', 'John', 'Doe', '123-456-7890', 'john@example.com'),
    ('2345678901', 'Jane', 'Smith', '234-567-8901', 'jane@example.com'),
    ('3456789012', 'Alice', 'Johnson', '345-678-9012', 'alice@example.com'),
    ('4567890123', 'Bob', 'Brown', '456-789-0123', 'bob@example.com'),
    ('5678901234', 'Emily', 'Davis', '567-890-1234', 'emily@example.com');

-- Insert values into Baggage table
INSERT INTO Baggage (search_number, NID, weights, sector)
VALUES
    ('ABCDE1234567890', '1234567890', 25.50, 'A'),
    ('FGHIJ2345678901', '2345678901', 30.75, 'B'),
    ('KLMNO3456789012', '3456789012', 20.25, 'C'),
    ('PQRST4567890123', '4567890123', 15.80, 'D'),
    ('UVWXY5678901234', '5678901234', 10.00, 'E');

-- Insert values into Terminal table
INSERT INTO Terminal (descriptions, airline_id)
VALUES
    ('Terminal 1', 1),
    ('Terminal 2', 2),
    ('Terminal 3', 3),
    ('Terminal 4', 4),
    ('Terminal 5', 5);

-- Insert values into Gates table
INSERT INTO Gates (gate_number, terminal, airline_assigned, terminal_assigned)
VALUES
    (1, 'A', 1, 1),
    (2, 'B', 2, 2),
    (3, 'C', 3, 3),
    (4, 'D', 4, 4),
    (5, 'E', 5, 5);

-- Insert values into Hangars table
INSERT INTO Hangars (aircraft_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5);