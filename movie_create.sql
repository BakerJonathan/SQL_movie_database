--No FK in movies or customers, so we'll start there
--table creation
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR (100)
);

create table movies(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_desc VARCHAR(300)
);

--And now for the FK reliant pair
create table ticket(
	ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	movie_id INTEGER not null,
	foreign key (movie_id) references movies(movie_id)
);

create table concessions(
	conc_id SERIAL primary key,
	conc_items VARCHAR(100),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
)

--RATIONALE:
--The ticket has no meaning without a movie and owner, so it uses the FK from those
--One person can have multiple tickets or concessions, and one movie several tickets
	--Thus it makes sense for them to not have FK
	--But rather get passed as an FK in other tables
	--You could even have a movie with no tickets, and customer with no tickets/concessions, so more reason
--Lastly for concessions, it really only needs to be connected to the customer (if anything)
	--I pondered having concessions map to another table detailing concessions (kinda like what movies doing), but decided against that