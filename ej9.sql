#Creamos la tabla.
create table ej9(
id int not null auto_increment,
name varchar(40),
age int not null,
primary key(id));
#Ingresamos los datos.
insert into ej9(name,age) values('Bob',21);
insert into ej9(name,age) values('Sam',19);
insert into ej9(name,age) values('Jill',18);
insert into ej9(name,age) values('Jim',21);
insert into ej9(name,age) values('Sally',19);
insert into ej9(name,age) values('Jess',20);
insert into ej9(name,age) values('Will',21);
#Hacemos la query donde utilizamos distinct que lo que hace la función es recuperar valores unicos sin repetir.
select distinct(age) from ej9 order by age asc;
#Eliminamos la tabla.
drop table if exists ej9;
