#Creamos la tabla con sus atributos
create table People(
id int not null auto_increment,
name varchar(40),
idNac int not null,
age int not null,
primary key(id)
);
#Creamos la tabla de pasaporte
create table Fvto(
id int auto_increment,
fvto date,
primary key(id)
);
#Insertamos los datos
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

#Creamos el prodecimiento que elimina la fila con el id que le pasamos en caso de que fue exitoso tendra una salida de 0 sino de -1.
Delimiter $$
create procedure PersonaDelete(id int)
begin
DELETE p.*,f.* from people as p
left join Fvto as f
on p.id = f.id
where id = p.id;
select if(row_count()>=1,0,-1);
end $$
delimiter ;
#llamamos al procedimiento
call PersonaDelete(1);
#Eliminamos las tablas
DROP TABLE  people,fvto;
#Eliminamos el procedimiento.
DROP PROCEDURE PersonaDelete;
