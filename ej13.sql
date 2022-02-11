#Creamos la tabla.
create table ej13(
id int not null auto_increment,
name varchar(40),
age int not null,
primary key(id));
#Ingresamos los datos.
insert into ej13(name,age) values('Bob',21);
insert into ej13(name,age) values('Sam',19);
insert into ej13(name,age) values('Jill',18);
insert into ej13(name,age) values('Jim',21);
insert into ej13(name,age) values('Sally',19);
insert into ej13(name,age) values('Jess',20);
insert into ej13(name,age) values('Will',21);
#Creamos el procedimiento que devuelve la cantidad de personas que tienen la edad que pedimos.
Delimiter $$
create procedure cantidad(age int)
begin
Select count(age) as Count from ej13 as p where age = p.age;
end //
delimiter ;
#Llamamos el procedimiento.
call cantidad(21);
#Eliminamos la tabla.
drop table ej13;
#Eliminamos el procedimiento
drop procedure cantidad;
