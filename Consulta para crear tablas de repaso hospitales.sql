CREATE TABLE Hospital.Pacientes
(
	[N Seguridad Social] nchar(15) NULL,
	Nombre nchar(15) NULL,
	Apellidos nchar(30) NULL,
	Domicilio nchar(30) NULL,
	Poblaci�n nchar(25) NULL,
	Provincia nchar(15) NULL,
	[C�digo Postal] nchar(15) NULL,
	Tel�fono nchar(12) NULL,
	[N�mero de Historial] nchar(9) PRIMARY KEY NOT NULL,
	Sexo nchar(1) NULL
)


CREATE TABLE Hospital.Medicos(
	[Codigo identificaci�n] nchar(4) PRIMARY KEY NOT NULL,
	[Nombre del M�dico] nchar(15) NULL,
	[Apellidos del M�dico] nchar(30) NULL,
	Especialidad nchar(25) NULL,
	[Fecha toma posesi�n] date NULL,
	Cargo nchar(25) NULL,
	[N�mero de Colegiado] numeric(18, 0) NULL,
	Observaciones VARCHAR(MAX) NULL
)

CREATE TABLE Hospital.Ingresos(
	[N�mero de Ingreso] int PRIMARY KEY NOT NULL,
	[N�mero de Historial] nchar(9) NULL,
	[Fecha de Ingreso] date NULL,
	[C�digo de Identificaci�n] nchar(4) NULL,
	[N�mero de planta] numeric(18, 0) NULL,
	[N�mero de cama] numeric(18, 0) NULL,
	Al�rgico nchar(2) NULL,
	Observaciones VARCHAR(MAX),
	[Coste del tratamiento] numeric(18, 0) NULL,
	Diagn�stico nchar(40) NULL
)

GO