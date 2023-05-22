

--Now to enter data, gonna enter data from the last time I watched a movie, and a random
--customer
insert into customer(customer_id,first_name,last_name)
values(1,'Jonathan','Baker');

insert into customer(customer_id,first_name,last_name)
values(2,'Esther','Baker');

insert into customer(customer_id,first_name,last_name)
values(3,'Achilles','Hill');

--select * from customer

--Movies, desc from imdb
insert into movies(movie_id,movie_name,movie_desc)
values(1,'The Super Mario Bros. Movie', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.'  )

insert into movies(movie_id,movie_name,movie_desc)
values(2,'The Lord of the Rings: The Fellowship of the Ring', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.');

--select * from movies

--Tickets, me and my sister at the mario movie, Achilles went to both 
insert into ticket(ticket_id, customer_id, movie_id)
values(1,1,1);

insert into ticket(ticket_id, customer_id, movie_id)
values(2,2,1);

insert into ticket(ticket_id, customer_id, movie_id)
values(3,3,1);

insert into ticket(ticket_id, customer_id, movie_id)
values(4,3,2);

--select * from ticket

--concessions 
insert into concessions(conc_id, conc_items, customer_id)
values(1, 'Popcorn, slushy',1);

insert into concessions(conc_id, conc_items, customer_id)
values(2, '2 bottles of water, salt, pepper',3);

insert into concessions(conc_id, conc_items, customer_id)
values(3, 'Lime juice',3)

insert into concessions(conc_id, conc_items, customer_id)
values(4, 'Some kinda candy and beverage I believe',2)

--select * from concessions 

--A couple of join statements to check things a bit
--particularly tickets are just a bunch of ints
select first_name, concessions.conc_items
from customer
inner join concessions  
on customer.customer_id=concessions.customer_id 

select first_name, last_name, movie_name, movie_desc
from customer 
inner join ticket 
on customer.customer_id=ticket.customer_id
inner join movies 
on ticket.movie_id=movies.movie_id