delimiter $$
create function generar_rfc(nomb varchar(50), a_p varchar(50), a_m varchar(50), fecha_n date)
returns varchar(200) deterministic
begin
declare dia varchar(10);
declare mes varchar(10);
declare anio varchar(10);
declare cadena varchar(10);
declare letras varchar(10);
declare nombr varchar(10);
declare apep varchar(10);
declare apem varchar(10);

set nombr = substring(nomb,1,1);
set apep = substring(a_p,1,2);
set apem = substring(a_m,1,1);
select date_format(fecha_n, '%d') into dia;
select date_format(fecha_n, '%m') into mes;
select date_format(fecha_n, '%y') into anio;
set cadena = concat(apep,apem,nombr,anio,mes,dia);
return cadena;
end$$

delimiter ;