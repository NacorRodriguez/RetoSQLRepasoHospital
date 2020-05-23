/*consulta de nombre y fecha de toma de posesi�n de los m�dicos pediatras del hospital*/
SELECT [Nombre del M�dico], [Apellidos del M�dico], [Fecha toma posesi�n] FROM Hospital.Medicos
WHERE Especialidad = 'Pediatr�a'

/*Consulta de los pacientes de madrid capital*/
SELECT Nombre, Apellidos FROM Hospital.Pacientes
WHERE Poblaci�n = 'Madrid'

/*Consulta de los m�dicos que autorizaron ingresos entre enero y febrero de 2010*/
SELECT M.[Nombre del M�dico], M.[Apellidos del M�dico] FROM Hospital.Medicos AS M
LEFT JOIN Hospital.Ingresos AS I ON I.[C�digo de Identificaci�n] = M.[Codigo de identificaci�n]
WHERE I.[Fecha de Ingreso] BETWEEN '2010-01-01' AND '2010-02-28'

/*Consulta de los pacientes al�rgicos ingresados entre enero y mayo de 2009*/
SELECT P.Nombre, P.Apellidos FROM Hospital.Pacientes AS P
LEFT JOIN Hospital.Ingresos AS I ON I.[N�mero de Historial] = P.[N�mero de Historial]
WHERE I.[Fecha de Ingreso] BETWEEN '2009-01-01' AND '2009-05-31' AND I.Al�rgico = 'S�' OR I.Al�rgico = 'Si'

/*Consulta de los pacientes cuales ingresos han sido autorizados por el doctor Antonio Ja�n Hern�ndez*/
SELECT P.Nombre, P.Apellidos, M.[Nombre del M�dico], M.[Apellidos del M�dico] FROM Hospital.Ingresos AS I
FULL OUTER JOIN Hospital.Medicos AS M ON M.[Codigo de identificaci�n] = I.[C�digo de Identificaci�n]
FULL OUTER JOIN Hospital.Pacientes AS P ON P.[N�mero de Historial] = I.[N�mero de Historial]
WHERE I.[C�digo de Identificaci�n] = 'AJH'