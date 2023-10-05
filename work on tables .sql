select * from cliente;
#agregar una columna a la tabla
alter table cliente add column apellido varchar(50)
#agregar una columna con valor por defecto
alter table cliente add column apellido varchar(50) 
not null default 'sin apellido';
#eliminar una columna de la tabla
alter table cliente drop column apellido

#ejemplo borrado logico
alter table cliente add column activo boolean not null default 1

#actualizar datos
update cliente set apellido = 'sandoval', activo = 0 where id = 1 

#modificar una columna
alter table cliente add column dni int unsigned not null default 0
alter table cliente drop column dni;

select * from cliente;
alter table cliente add column dni varchar(8); 
update cliente set dni = 'N/C' where ISNULL(dni);
alter table cliente modify column dni varchar(8) not null default 'sin dni';

alter table cliente drop column dni

#crear tabla
create table test (
	id int not null AUTO_INCREMENT,
	descripcion varchar(50) not null,
	activo boolean not null default 0,
	primary key (id)
);

insert into test(descripcion) values('reg1');
insert into test(descripcion) values('reg2');
insert into test(descripcion) values('reg3');
insert into test(descripcion) values('reg4');

insert into test(descripcion) values ('reg5'),('reg6'),('reg7');
select * from test
#elimina todos los registros sin borrar la tabla
truncate table test; 
#eliminar tabla
drop table test;