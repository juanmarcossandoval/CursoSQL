#funcion count
select count(*) 
from payment p; 

select count(a.first_name) as cant_nombres
from actor a; 

select count(a.actor_id)
from actor a;

select count(c.active)
from customer c
where c.active = 1;

#funcion sum
select sum(p.amount) as total
from payment p 
where p.amount > 4.99;

select p.customer_id + sum(p.amount) as clienteMasVendedor
from payment p;

#funcion avg
select avg(p.amount) 
from payment p;

#funcion min
select min(p.amount)
from payment p 
where p.amount > 0;

#funcion max
select max(p.amount)
from payment p;


select 
	max(p.amount) as maximo,
	min(p.amount) as minimo,
	avg(p.amount) as promedio,
	sum(p.amount) as total,
	max(p.amount) + min(p.amount) as min_max
from payment p;

#sentencia group by
select 
	a.first_name as nombre,
	count(a.first_name) as cantidad
from actor a 
group by nombre
order by cantidad desc;

select 
	c.active as activo,
	count(c.active) as cantidad
from customer c 
group by c.active;

#sentencia having 
select 
	sum(f.length) as duracion,
	rental_duration as diasAlquiler
from film f
group by f.rental_duration
having duracion > 23000;

