#en otro motores de base de datos se usa top en vez limit
select top 15 * from film f order by f.length desc

#en mysql se usa limit
select * from film f order by f.length desc limit 15;

#trae 5 resultados a partir del decimo en adelante
select * from film f order by f.length desc limit 5 OFFSET 10;

#funciona igual que limit offset
select * from film f order by f.length desc limit 10,5;

#sentencia AND
select * from actor a 
where a.first_name = 'ed' 
	and a.last_name = 'chase'
	and a.actor_id = 2

#sentencia OR
select * from actor a 
where a.first_name = 'ed' or a.first_name = 'adam'

select * from actor a 
where a.first_name = 'ed' 
or (a.first_name = 'adam' and a.actor_id = 71 )

#sentencia NOT 
select * from actor a 
where not a.first_name = 'penelope'

#between
select * from actor a
where a.actor_id => 3 and a.actor_id <= 5

select * from actor a 
where a.actor_id between 3 and 5;

select * from actor a 
where a.first_name between 'a' and 'c';

select * from rental r 
where r.return_date  between '2005-05-01' and '2005-06-01';

#sentencia IN
select * from actor a 
where a.first_name = 'adam' 
	or a.first_name = 'ed' 
	or a.first_name = 'nick'
	or a.first_name = 'joe'
#es una opcion mas performante cuanta mas condiciones tenemos
select * from actor a 
where a.first_name in ('adam', 'ed', 'nick', 'joe')

#SE PUEDE CONBINAR CON LAS ANTERIORES
select * from actor a 
where a.first_name not in ('adam', 'ed', 'nick', 'joe')
and a.last_update between '2023-09-01' and '2023-09-30'

#consulta anidada
#para mejor perfomance realizar la consulta IN dentro de la misma tabla 
select c.first_name as Nombre, 
	c.last_name as apellido
from customer c  
 where c.customer_id  in (
 	select distinct r.customer_id  from rental r 
	where r.return_date between '2005-05-01' and '2005-06-01'
	order by r.customer_id 
 )


	