--PROCEDIMIENTO 1--

create procedure pa_aumentar(aidCargo in int)
 as
 begin
  update Cargo set NumeroSMLV=NumeroSMLV+(NumeroSMLV*0.1)
  where idcargo=aidcargo;
 end;
 
 execute pa_aumentar(15);


--PROCEDIMIENTO 2--

create or replace procedure pa_insertar(idproveedor in number, nit in varchar2, direccion in varchar2, correo varchar2, telefono varchar2)
as
begin
insert into proveedor values (idproveedor, nit, direccion, correo, telefono);
end;

execute pa_insertar(4, '68767', 'cll2 cr4 Tunja', 'user@gmail.com', '3114527652');