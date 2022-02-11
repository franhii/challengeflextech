#Creamos la tabla.
create table ej2(
Division_id int not null,
Year int not null,
Revenue int not null);
#Ingresamos los datos.
insert into ej2(Division_id,Year,Revenue) values( 1,2018,60);
insert into ej2(Division_id,Year,Revenue) values( 1,2021,40);
insert into ej2(Division_id,Year,Revenue) values( 1,2020,70);
insert into ej2(Division_id,Year,Revenue) values( 2,2021,-10);
insert into ej2(Division_id,Year,Revenue) values( 3,2018,20);
insert into ej2(Division_id,Year,Revenue) values( 3,2016,40);
insert into ej2(Division_id,Year,Revenue) values( 4,2021,50);
#Hacemos la query donde traerá el id de la division que este año tuvo ingresos positivos.
select Division_id from ej2 where Year=2021 and Revenue >= 0;
#Eliminamos la tabla.
drop table if exists ej2;
