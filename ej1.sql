#Creamos la tabla, implementamos que no sea nulo y que el id sea autoincremental.
create table ej1 (
	 id INT NOT NULL AUTO_INCREMENT,
	 Value INT NOT NULL,
     PRIMARY KEY(id)
);
#Insertamos los datos para realizar el ejercicio
insert into ej1(value) values (-56);
insert into ej1(value) values (76);
insert into ej1(value) values (-84);
insert into ej1(value) values (96);
insert into ej1(value) values (-47);
#Comprobamos que todos fueron insertados correctamente.
select * from ej1;
#Hacemos la query que nos trae el id y el valor opuesto(valor * -1).
select id,(value*-1) as opuesto from ej1;
#Eliminamos la tabla si existe.
drop table if exists ej1;