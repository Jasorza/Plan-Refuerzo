--FUNCION 1--

create or replace function f_nomina (anomina number)
  return varchar2
 is
  valorretornado varchar2(50);
 begin
   valorretornado:='';
   if anomina<=1500000 then
    valorretornado:='alto';
   else valorretornado:='bajo';
   end if;
   return valorretornado;
 end;
 
select idcargoemppleado,f_nomina(valor) from nomina;


--FUNCION 2--

create or replace function f_incremento10 (avalor number)
  return number
 is
 begin 
   return avalor+(avalor*0.1);
 end;
 
 select idfacturainsumos,idmaterial,idproveedor,cantidad,f_incremento10(costo) from facturainsumos;
