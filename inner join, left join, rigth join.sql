#sentencia inner join
select * from cliente c 
inner join correos c2 
on c.id = c2.id_cliente 

select * from cliente c 
left join correos c2 
on c.id = c2.id_cliente 

select * from cliente c 
right join correos c2 
on c.id = c2.id_cliente  

select * from correos c2
left join cliente c
on c2.id_cliente = c.id

select c.nombre, c2.mail  from cliente c 
inner join correos c2 
on c.id = c2.id_cliente 

