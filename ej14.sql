#Creamos el procedimiento y utilizo dayname una funcion que devuelve el nombre del día depende el número del día.
Delimiter $$
CREATE procedure DAYNUMBER(x int)
begin
select dayname(x);
end $$
Delimiter ;
#Llamamos el procedimiento.
call daynumber('2022-02-18');
#Eliminamos el procedimiento.
drop procedure DAYNUMBER;