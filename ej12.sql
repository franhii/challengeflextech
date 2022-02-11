#Creamos la tabla.
create table People(
id int not null auto_increment,
name varchar(40),
idNac int not null,
age int not null,
primary key(id)
);
#Creamos la otra tabla.
create table Fvto(
id int auto_increment,
fvto date,
primary key(id)
);
#Insertamos los datos en las tablas.
insert into People(name,idNac,age) values('Bob',1,21);
insert into People(name,idNac,age) values('Sam',1,19);
insert into People(name,idNac,age) values('Jill',2,18);
insert into People(name,idNac,age) values('Jim',3,21);
insert into People(name,idNac,age) values('Sally',4,19);
insert into People(name,idNac,age) values('Jess',2,20);
insert into People(name,idNac,age) values('Will',3,21);
insert into Fvto(id,fvto) values(1,'1/10/23');
insert into Fvto(id,fvto) values(2,'22/5/25');
insert into Fvto(id,fvto) values(5,'22/1/23');
insert into Fvto(id,fvto) values(6,'15/6/28');
#Hacemos la union con un left join, para obtener todos los datos y
#Si existen valores en la tabla izquierda pero no en la tabla derecha, ésta mostrará null.
select p.id,p.name,p.age,f.fvto from People as p
left join fvto as f
on p.id = f.id;
#Eliminamos la tabla.
drop table if exists people,fvto;
