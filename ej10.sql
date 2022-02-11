#Creamos la tabla.
create table ej10(
id int not null auto_increment,
name varchar(40),
age int not null,
primary key(id));
#Ingresamos los datos.
insert into ej10(name,age) values('Bob',21);
insert into ej10(name,age) values('Sam',19);
insert into ej10(name,age) values('Jill',18);
insert into ej10(name,age) values('Jim',21);
insert into ej10(name,age) values('Sally',19);
insert into ej10(name,age) values('Jess',20);
insert into ej10(name,age) values('Will',21);
#Hacemos la query donde usamos la función sum() que suma el total de los valores de una columna de tipo numérico
select sum(age) as addAges from ej10;
#Eliminamos la tabla.
drop table if exists ej10;