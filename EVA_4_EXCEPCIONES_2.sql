delimiter $$
create procedure agregar_personas( in nom varchar(50), 
in ap varchar(50), in am varchar(50), in fecha date)
begin
declare rfc varchar(10);
set rfc = generar_rfc(nom,ap,am,fecha) ;
insert into personas(rfc,nombre,ap_paterno,ap_materno,fecha_nac)
values (rfc, nom, ap, am, fecha);
end$$
delimiter ;