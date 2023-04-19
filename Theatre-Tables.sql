create table Customer (
	customer_id SERIAL primary key,
	first_name Varchar(100),
	last_name Varchar(100),
	address Varchar(200),
	billing_info Varchar(150)
	);

create table Movies (
	film_id SERIAL primary key,
	film_title Varchar(100),
	film_length Integer,
	film_times Date default CURRENT_DATE
	);
	
create table Ticket (
	ticket_id SERIAL primary key,
	film_id Integer,
	order_date Date default CURRENT_DATE,
	sub_total Numeric(8,2),
	total_cost Numeric(10,2),
	foreign key(film_id) references movies(film_id)
	);

create table Concession (
	food_id SERIAL primary key,
	food_name Varchar(100),
	amount Integer,
	customer_id Integer not null,
	foreign key(customer_id) references customer(customer_id)
	);
	
create table Order_ (
	order_id SERIAL primary key,
	customer_id Integer not null,
	ticket_id Integer not null,
	food_id Integer not null,
	sub_total Numeric(8,2),
	total_cost Numeric (10,2),
	foreign key(customer_id) references customer(customer_id),
	foreign key(ticket_id) references ticket(ticket_id),
	foreign key(food_id) references concession(food_id) 
	);