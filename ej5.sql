#Creamos la tabla.
create table ej5(
id int not null auto_increment,
name varchar(30),
age int not null,
primary key (id));
#Insertamos los datos.
insert into ej5(name,age) values('Bob',21);
insert into ej5(name,age) values('Sam',19);
insert into ej5(name,age) values('Jill',18);
insert into ej5(name,age) values('Jim',21);
insert into ej5(name,age) values('Sally',19);
insert into ej5(name,age) values('Jess',20);
insert into ej5(name,age) values('Will',21);
#Seleccionamos la edad, la cantidad que tienen la misma edad que la seleccionada, las agrupa en la columna count(suma de las edades repetidas) y  las ordena de forma ascendente.
Select Age,count(age) as Count from ej5 group by Age order by Age asc;
#Eliminamos la tabla
drop table if exists ej5;
