--PROCEDIMIENTO 1--

create procedure pa_aumentar(aidCargo in number)
 as
 begin
  update Cargo set NumeroSMLV=NumeroSMLV+(NumeroSMLV*0.1)
  where idcargo=aidcargo;
 end;
 
 execute pa_aumentar(15);


--PROCEDIMIENTO 2--

create or replace procedure pa_insertar(idbeneficio in number, Nombre in varchar2, Clase in varchar2)
as
begin
insert into beneficio values (idbeneficio, nombre, clase);
end;

execute pa_insertar(15, 'Propina', 'Pago');