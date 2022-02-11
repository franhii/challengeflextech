#Creamos la tabla Persona.
create table People(
id int not null auto_increment,
name varchar(40),
idNac int not null,
age int not null,
primary key(id)
);
#Creamos la tabla Nacionalidad.
create table Nacionality(
 id int not null auto_increment,
 descr varchar(40),
  primary key(id)
 );
#Insertamos los datos.
insert into People(name,idNac,age) values('Bob',1,21);
insert into People(name,idNac,age) values('Sam',1,19);
insert into People(name,idNac,age) values('Jill',2,18);
insert into People(name,idNac,age) values('Jim',3,21);
insert into People(name,idNac,age) values('Sally',4,19);
insert into People(name,idNac,age) values('Jess',2,20);
insert into People(name,idNac,age) values('Will',3,21);
insert into Nacionality(descr) values ('Argentino');
insert into Nacionality(descr) values ('Italiano');
insert into Nacionality(descr) values ('Español');
insert into Nacionality(descr) values ('Aleman');
#Hacemos la query donde unimos las tablas con un join,aparece en el resultado 
#Si y sólo si ambas tablas cumplen las condiciones especificadas en la cláusula.
select p.id,n.descr,p.name,p.age from People as p
join Nacionality as n
on p.idNac=n.id;
#Eliminamos las tablas.
drop table if exists people,nacionality;

