#Creamos la tabla.
create table ej7(
id int not null auto_increment,
name varchar(30),
Amount_Sold int not null,
primary key(id)
);
#Insertamos los datos.
insert into ej7(name,Amount_Sold) values('Cup',11);
insert into ej7(name,Amount_Sold) values('Saucer',22);
insert into ej7(name,Amount_Sold) values('Plate',46);
insert into ej7(name,Amount_Sold) values('Fork',34);
insert into ej7(name,Amount_Sold) values('Spoon',45);
insert into ej7(name,Amount_Sold) values('Knife',78);
insert into ej7(name,Amount_Sold) values('Mug',23);
insert into ej7(name,Amount_Sold) values('Glass',64);
insert into ej7(name,Amount_Sold) values('Tumbler',24);
#Agrupamos los nombres y los ordenamos de mayor a menor vendidos y con limit ponemos un tope a solo 5.
SELECT name FROM ej7 GROUP BY name ORDER BY amount_sold DESC LIMIT 5;
#Borramos la tabla.
drop table if exists ej7;