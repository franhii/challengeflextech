#Creamos la tabla con sus atributos.
create table ej3(
id int not null auto_increment,
Year int not null,
primary key(id)
);
#Insertamos los datos en la tabla.
insert into ej3(Year) values (1776);
insert into ej3(Year) values (2001);
insert into ej3(Year) values (1643);
insert into ej3(Year) values (1865);
insert into ej3(Year) values (1969);
#Hacemos la query para que nos retorne el siglo, utilizamos ceiling para redondear hacia arriba.
select CEILING((year/100)) as siglo from ej3;
#Eliminamos la tabla.
drop table if exists ej3;
