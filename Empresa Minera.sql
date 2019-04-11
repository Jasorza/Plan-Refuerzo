create table Empleado (
	IdEmpleado		int		not null,
	Nombre			text	not null,
	Apellido		text	not null,
	Documento		text	not null,
	telefono		text	not null,
	Constraint Pk_Persona primary key (IdEmpleado)
)
go

Create Table Cargo(
	IdCargo			int		not null,
	Nombre			text	not null,
	NumeroSMLV		int		not null,
	Constraint Pk_Cargo Primary Key (IdCargo)	
)
go

Create Table Roca (
	IdRoca			int		not null,
	Nombre			text	not null,
	PrecioGr		int		not null,
	Constraint Pk_Roca Primary Key (IdRoca)
)
go

Create Table Beneficio (
	IdBeneficio		int		not null,
	Nombre			text	not null,
	Clase			text	not null, 
	Constraint Pk_Beneficio Primary Key (IdBeneficio)
)
go

Create Table CalidadRoca(
	IdCalidad		int		not null,
	IdAnalisis		int		not null,
	Nivel			text	not null,
	PuntosGr		text	not null,
	Porcetanje		text	not null,
	Constraint Pk_CalidadRoca Primary Key (IdCalidad)
)
go

Create Table Analisis (
	IdAnalisis		int		not null,
	IdProducido		int		not null,
	Fecha			date	not null,
	PorcentTotal	text	not null,
	PuntosTotal		text	not null,
	Beneficios		text	not null,
	Constraint Pk_Analisis	Primary Key	(IdAnalisis)
)
go

Create Table CargoEmpleado (
	IdCargoE		int		not null,
	IdEmpleado		int		not null,
	IdCargo			int		not null,
	IdCargoEm		int		not null,
	FechaInicio		date	not null,
	FechaFin		date	null,
	Constraint Pk_CargoEmpleado Primary Key (IdCargoE)	
)
go

Create Table Mina (
	IdMina			int		not null,
	IdCargoE		int		not null,
	Nombre			text	not null,
	Ubicacion		text	not null,
	Constraint Pk_Mina Primary Key (IdMina)
)
go

Create Table Nomina (
	IdNomina		int		not null,
	IdCargoEm		int		not null,
	IdCargoE		int		not null,
	IdBeneficio		int		not null,
	Valor			int		not null,
	FechaInicio		date	not null,
	FechaFin		date	not null,
	Constraint Pk_Nomina Primary Key (IdNomina)
)
go

Create Table Producido (
	IdProducido		int		not null,
	IdCargoE		int		not null,
	IdCargoEm		int		not null,
	IdRoca			int		not null,
	FechaRecibido	date	not null,
	Peso			int		not null,
	PrecioGr		int		not null,
	Constraint Pk_Producido	Primary Key	(IdProducido)
)
go

--Llaves Foraneas Tabla Cargo Empleado:
Alter Table CargoEmpleado
Add Constraint Fk_CargoEmpleado_Empleado Foreign Key (IdEmpleado) References Empleado (IdEmpleado);

Alter Table CargoEmpleado
Add Constraint Fk_CargoEmpleado_Cargo Foreign Key (IdCargo) References Cargo (IdCargo);

Alter Table CargoEmpleado
Add Constraint Fk_CargoEmpleado_CargoEmpleado_Dire Foreign Key (IdCargoEm) References CargoEmpleado (IdCargoE);

--Llaves Foraneas Tabla Analisis
Alter Table Analisis
Add Constraint Fk_CalidadRoca_Analisis Foreign Key (IdProducido) References Producido (IdProducido);

--Llaves Foraneas Tabla Calidad Roca
Alter Table CalidadRoca
Add Constraint Fk_CalidaRoca_Analisis Foreign Key (IdAnalisis) References Analisis (IdAnalisis);


--Llaves Foraneas Tabla Producido
Alter Table Producido
Add Constraint Fk_Producido_CargoE Foreign Key (IdCargoE) References CargoEmpleado (IdCargoE);

Alter Table Producido
Add Constraint Fk_Producido_CargoEm Foreign Key (IdCargoEm) References CargoEmpleado (IdCargoE);

Alter Table Producido
Add Constraint Fk_Producido_Roca Foreign Key (IdRoca) References Roca (IdRoca);

--Laves Foraneas Tabla Mina
Alter Table Mina 
Add Constraint Fk_Mina_CargoEmpleado Foreign Key (IdCargoE) References CargoEmpleado (IdCargoE);

--Llaves Foraneas Tabala Nomina
Alter Table Nomina 
Add Constraint Fk_Nomina_CargoEmpleado_Diretor Foreign Key (IdCargoEm) References CargoEmpleado (IdCargoE);

Alter table Nomina 
Add Constraint Fk_Nomina_CargoEmplado Foreign Key (IdCargoE) References CargoEmpleado (IdCargoE);

Alter Table Nomina 
Add Constraint Fk_Nomina_Beneficio Foreign Key (IdBeneficio) References Beneficio (IdBeneficio);

