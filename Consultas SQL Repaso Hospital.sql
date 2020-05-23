/*consulta de nombre y fecha de toma de posesión de los médicos pediatras del hospital*/
SELECT [Nombre del Médico], [Apellidos del Médico], [Fecha toma posesión] FROM Hospital.Medicos
WHERE Especialidad = 'Pediatría'

/*Consulta de los pacientes de madrid capital*/
SELECT Nombre, Apellidos FROM Hospital.Pacientes
WHERE Población = 'Madrid'

/*Consulta de los médicos que autorizaron ingresos entre enero y febrero de 2010*/
SELECT M.[Nombre del Médico], M.[Apellidos del Médico] FROM Hospital.Medicos AS M
LEFT JOIN Hospital.Ingresos AS I ON I.[Código de Identificación] = M.[Codigo de identificación]
WHERE I.[Fecha de Ingreso] BETWEEN '2010-01-01' AND '2010-02-28'

/*Consulta de los pacientes alérgicos ingresados entre enero y mayo de 2009*/
SELECT P.Nombre, P.Apellidos FROM Hospital.Pacientes AS P
LEFT JOIN Hospital.Ingresos AS I ON I.[Número de Historial] = P.[Número de Historial]
WHERE I.[Fecha de Ingreso] BETWEEN '2009-01-01' AND '2009-05-31' AND I.Alérgico = 'Sí' OR I.Alérgico = 'Si'

/*Consulta de los pacientes cuales ingresos han sido autorizados por el doctor Antonio Jaén Hernández*/
SELECT P.Nombre, P.Apellidos, M.[Nombre del Médico], M.[Apellidos del Médico] FROM Hospital.Ingresos AS I
FULL OUTER JOIN Hospital.Medicos AS M ON M.[Codigo de identificación] = I.[Código de Identificación]
FULL OUTER JOIN Hospital.Pacientes AS P ON P.[Número de Historial] = I.[Número de Historial]
WHERE I.[Código de Identificación] = 'AJH'