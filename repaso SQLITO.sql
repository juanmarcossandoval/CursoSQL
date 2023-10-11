select * from peliculas p 
where p.nombre like 'thor%'

select * from peliculas p 
where p.dur_min >100 

#funciones del 01/10 entre las 13 y las 16hs

select * from funciones f 
where f.hora_inicio
between '2017-10-01 13:00:00' 
and '2017-10-01 16:00:00'

#traer nombres de las peli de las funciones
SELECT f.id as num_fun, p.nombre,f.hora_inicio as inicio  
FROM peliculas p 
INNER JOIN funciones f ON f.id_pelicula = p.id
where f.hora_inicio
between '2017-10-01 13:00:00' 
and '2017-10-01 16:00:00'

select * from peliculas p
	where p.ID in(
	select f.id_pelicula from funciones f 
	where f.hora_inicio
	between '2017-10-01 13:00:00' 
	and '2017-10-01 16:00:00'
) 

#TRAER NOMBRE DE SALAS DONDE 
#SE PROYECTE UNA PELI ESPECIFICA

select s.nombre, f.hora_inicio 
from peliculas p 
inner join funciones f on p.id = f.id_pelicula
inner join salas s on s.id = f.id_sala
where p.nombre like 'jigsaw'
order by f.hora_inicio asc

#traer nombres de las peli en sala Del Toro el 20/10/17

select *
from peliculas p
inner join funciones f on f.id_pelicula = p.id
inner join salas s on s.ID = f.ID_SALA
where f.hora_inicio between '2017-10-20 00:00:00'
and '2017-10-21 00:00:00'and s.NOMBRE = 'del toro'

