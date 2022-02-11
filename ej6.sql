#Creamos la tabla.
create table ej6(
id int not null auto_increment,
name varchar(30),
primary key(id)
);
#Insertamos los datos.
insert into ej6(name) values('Bob');
insert into ej6(name) values('Sam');
insert into ej6(name) values('Jill');
insert into ej6(name) values('Jim');
insert into ej6(name) values('Sally');
insert into ej6(name) values('Jess');
insert into ej6(name) values('Will');
#Usamos Concat para concatenar los strings más el nombre de la persona as para darle nombre a la columna.
select concat('¡Hola ',name,'! ','¿Cómo estás hoy?') as Saludo from ej6;
#Eliminamos la tabla
drop table if exists ej6;
