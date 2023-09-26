#esta es una consulta select comun
select * from actor a ;
#si deseo traer solo algunas columnas en especifico
#reemplazo el * por los nombres de las columnas
select a.first_name, a.last_name from actor a ;

#para cambiar los nombres 
#de las columnas se usa el comodin as
select 
	a.first_name as nombre, 
	a.last_name as apellido 
from actor a;
#distint muestra una sola vez cada valor dispinible y distinto
select 
	distinct last_name  
from actor ;
#ORDER BY ordena la columna seleccionada 
# en orden ascendente o descendente
select 
	a.last_name as apellido
from actor a
order by a.last_name desc

select 
	a.last_name as apellido
from actor a
order by a.last_name asc

#Consulta store_id, first_name y last_name 
# de la tabla customer

select 
	c.store_id as num_tienda,
	c.first_name as nombre,
	c.last_name as apellido 
from customer c 
	order by nombre
; 

select 
	distinct c.first_name 
from customer c ;

#¿Cuál es la cantidad mas baja 
# y mas alta de la columna amount? tabla payment
#con limit limito la cantidad de registros devueltos
#por la consulta
select 
	p.amount as monto
from payment p 
order by monto asc limit 1;

select 
	p.amount as monto
from payment p 
order by monto desc limit 1;

select
	f.title as titulo,
	f.description as descripcion,
	f.Release_year as año_lanzamiento
from film f ;

select * 
from film f 
where f.length > 70
order by f.length asc;

select * 
from film f 
where f.title = 'REDS POCUS';


select *
from film f 
where f.rental_rate < 4.00
order by f.rental_rate asc;


