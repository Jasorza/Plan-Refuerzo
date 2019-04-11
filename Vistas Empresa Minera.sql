Create View Vw_Empleado
As
Select	IdEmpleado, Nombre, Apellido, Documento, Telefono
From	Empleado
Go
-----------------------------------------------------------
Create View Vw_Cargo
As
Select	e.Nombre as Empleado, e.Apellido, c.Nombre as Cargo, ce.FechaInicio, ce.FechaFin
From	Cargo C, CargoEmpleado CE, Empleado E
Where	c.IdCargo=1
Go
