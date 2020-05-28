CREATE TABLE Hospital.Pacientes
(
	[N Seguridad Social] nchar(15) NULL,
	Nombre nchar(15) NULL,
	Apellidos nchar(30) NULL,
	Domicilio nchar(30) NULL,
	Población nchar(25) NULL,
	Provincia nchar(15) NULL,
	[Código Postal] nchar(15) NULL,
	Teléfono nchar(12) NULL,
	[Número de Historial] nchar(9) PRIMARY KEY NOT NULL,
	Sexo nchar(1) NULL
)


CREATE TABLE Hospital.Medicos(
	[Codigo identificación] nchar(4) PRIMARY KEY NOT NULL,
	[Nombre del Médico] nchar(15) NULL,
	[Apellidos del Médico] nchar(30) NULL,
	Especialidad nchar(25) NULL,
	[Fecha toma posesión] date NULL,
	Cargo nchar(25) NULL,
	[Número de Colegiado] numeric(18, 0) NULL,
	Observaciones VARCHAR(MAX) NULL
)

CREATE TABLE Hospital.Ingresos(
	[Número de Ingreso] int PRIMARY KEY NOT NULL,
	[Número de Historial] nchar(9) NULL,
	[Fecha de Ingreso] date NULL,
	[Código de Identificación] nchar(4) NULL,
	[Número de planta] numeric(18, 0) NULL,
	[Número de cama] numeric(18, 0) NULL,
	Alérgico nchar(2) NULL,
	Observaciones VARCHAR(MAX),
	[Coste del tratamiento] numeric(18, 0) NULL,
	Diagnóstico nchar(40) NULL
)

GO