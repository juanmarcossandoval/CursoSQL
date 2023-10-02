select c.nombre  from CLIENTE c where c.id = 1;

select COUNT(c.nombre) from CLIENTE c where c.id = 1;
select UPPER(c.nombre) from CLIENTE c where c.id = 1;
select REVERSE(c.nombre) from CLIENTE c where c.id = 1;

SELECT CURRENT_TIME();
SELECT CURRENT_DATE();
SELECT CURRENT_TIMESTAMP();
#CONSULTAS
select * from CLIENTE
#ALTA BAJA Y MODIFICACION EN BBDD MYSQL
#INSERTAR DATOS
insert into cliente (id,nombre) values (6,'manuela');
insert into CLIENTE values (7,'NOEMI');
#hay que estar seguros del orden de las columnas o query puede fallar
insert into CLIENTE values ('NOMEI',8);
insert into CLIENTE (nombre,id) values ('nomei',9);

#ACTUALIZACION DE DATOS
update cliente set nombre = 'claudio' where id = 9;

#ELIMINACION DE DATOS
delete from cliente where id = 9;