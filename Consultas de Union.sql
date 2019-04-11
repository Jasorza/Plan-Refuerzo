Select	Nombre, Apellido,''
From	Empleado
Where	IdEmpleado = '1'

Union

Select	'','',c.Nombre 
From	CargoEmpleado ce, Cargo c, Empleado e
Where	c.IdCargo=ce.IdCargo and e.IdEmpleado=ce.IdEmpleado and ce.IdEmpleado = '1'
