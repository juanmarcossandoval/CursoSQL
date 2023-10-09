alter table cliente
add primary key (id);

alter table cliente
drop primary key;

alter table correos 
add constraint fk_id_cliente
foreign key(id_cliente) references cliente(id);

alter table correos
DROP index fk_id_cliente;