delimiter $$
create procedure rfc_actores()
begin
	declare id int;
    declare nombre varchar(50);
    declare apellido varchar(50);
    declare fecha date;
	declare terminar int default false; 
    declare rfc varchar(50);
	declare rfc_actores cursor for
    select actor_id, first_name, last_name, last_update
    from actor;
	declare continue handler for not found set terminar = true;
    
    open rfc_actores;
        mi_cursor: loop
			fetch rfc_actores into id, nombre, apellido, fecha; 
            if terminar then
				leave mi_cursor; 
            end if;
            set rfc = generar_rfc(nombre, apellido,"", fecha);
            select rfc as rfc;
        end loop;
    close rfc_actores;
end$$
delimiter ;