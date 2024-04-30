USE AIRPORT_DW;

CREATE TABLE tickets(
	id int identity(1,1) PRIMARY KEY,
	id_total int,
	total nvarchar(100),
	seat_number varchar(10),
	class varchar(10),
	ticket_price numeric(10,2)
);

CREATE TABLE aircrafts(
	id int identity(1,1) PRIMARY KEY,
	id_total int,
	total nvarchar(100),
	aircraft_type varchar(100),
	total_seats int,
	capacity_1 int,
	capacity_2 int,
	capacity_3 int,
	weight_max decimal(17,2),
);

CREATE TABLE airline(
	id int identity(1,1) PRIMARY KEY,
	id_total int,
	total nvarchar(100),
	airline_name varchar(100),
	destination_city varchar(100),
	destination_country varchar(100),
);

CREATE TABLE Time_T(
	id int identity(1,1) PRIMARY KEY,
	id_total int,
	total nvarchar(100),
	id_month nvarchar(100),
	month_m nvarchar(100),
	id_year nvarchar(100),
	year_y nvarchar(100),
);

CREATE TABLE Flights_Fact(
	ticket__f int FOREIGN KEY REFERENCES tickets(id),
	aircrafts_f int FOREIGN KEY REFERENCES aircrafts(id),
	airline_f int FOREIGN KEY REFERENCES airline(id),
	time_f int FOREIGN KEY REFERENCES Time_T(id),
	predicted_departure_time datetime,
	predicted_arrival_time datetime,
	real_time_departure datetime,
	real_time_arrival datetime,
	destination varchar(100),
	type_of_flight varchar(100),
	primary key(ticket__f,aircrafts_f,airline_f,time_f)
);