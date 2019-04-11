Select	'' as Nombre,'' as Apellido,c.Nombre 
From	CargoEmpleado ce, Cargo c, Empleado e
Where	c.IdCargo=ce.IdCargo and e.IdEmpleado=ce.IdEmpleado and ce.IdEmpleado = '4'

union

Select	Nombre, Apellido,''
From	Empleado
Where	IdEmpleado = '4'
