#Creamos la tabla.
create table ej4(
id int not null auto_increment,
Value int not null,
primary key(id)
);
#Insetamos los datos.
insert into ej4(value) values (4);
insert into ej4(value) values (11);
insert into ej4(value) values (57);
insert into ej4(value) values (24);
insert into ej4(value) values (47);
#Hacemos la consulta donde hacemos una comprobacion si el valor(numero) es resto 0, decimos que es Par, de otro modo es Impar.
select CASE WHEN value % 2 = 0 THEN 'Par' ELSE 'Impar' END as valores from ej4;
#Eliminamos la tabla
drop table if exists ej4;