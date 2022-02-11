#Creamos la tabla.
create table ej8(
id int not null auto_increment,
name varchar(40),
country varchar(40),
primary key(id));
#Ingresamos los datos.
insert into ej8(name,country) values('Bob Smith','United States');
insert into ej8(name,country) values('Jim Jones','China');
insert into ej8(name,country) values('Sam White','Japan');
insert into ej8(name,country) values('Jess Black','Canada');
insert into ej8(name,country) values('Will Wilson','Germany');
insert into ej8(name,country) values('Wilson Scott','England');
insert into ej8(name,country) values('Scott Daniels','France');
insert into ej8(name,country) values('Daniel Jackson','Canada');
insert into ej8(name,country) values('Jack Johnson','United States');
#Hacemos la query donde seleccionamos los nombres donde no tienen incluido en su país Estados Unidos ni tampoco Canada.
select name from ej8 where country not like '%United States%' and country not like '%Canada%';
#Eliminamos la tabla.
drop table if exists ej8;
