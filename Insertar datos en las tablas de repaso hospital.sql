insert into Hospital.Pacientes values ('08/7888888', 'Jos� Eduardo', 'Romerales Pinto', 'C/ Azor�n, 34 3o', 'M�stoles', 'Madrid', '28935', '91-345-87-45', '10203-F', 'H');
insert into Hospital.Pacientes values ('08/7234823', '�ngel', 'Ru�z Picasso', 'C/ Salmer�n, 212', 'Madrid', 'Madrid', '28028', '91-565-34-33', '11454-L', 'H');
insert into Hospital.Pacientes values ('08/7333333', 'Mercedes', 'Romero Carvajal', 'C/ M�lada, 13', 'M�stoles', 'Madrid', '28935', '91-455-67-45', '14546-E','M');
insert into Hospital.Pacientes values ('08/7555555', 'Mart�n', 'Fern�ndez L�pez', 'C/ Sastres, 21', 'Madrid', 'Madrid', '28028', '91-333-33-33', '15413-S', 'H');


insert into Hospital.Medicos values ('AJH', 'Antonio', 'Ja�n Hern�ndez', 'Pediatr�a', '12-08-82', 'Adjunto', 2113, 'Est� pr�xima su retirada');
insert into Hospital.Medicos values ('CEM', 'Carmen', 'Esterill Manrique', 'Psiquiatr�a', '13-02-92', 'Jefe de secci�n', 1231,NULL);
insert into Hospital.Medicos values ('RLQ', 'Roc�o', 'L�pez Quijada', 'M�dico de familia', '23-09-94', 'Titular', 1331, NULL);

insert into Hospital.Ingresos values (1, '10203-F', '23/01/2009', 'AJH', 5, 121, 'No', 'Epil�ptico', NULL, NULL);
insert into Hospital.Ingresos values (2, '15413-S', '13/03/2009', 'RLQ', 2, 5, 'S�', 'Al�rgico a la penicilina', NULL, NULL);
insert into Hospital.Ingresos values (3, '11454-L', '25/05/2009', 'RLQ', 3, 31, 'No', NULL, NULL, NULL);
insert into Hospital.Ingresos values (4, '15413-S', '29/01/2010', 'CEM', 2, 13, 'No', NULL, NULL, NULL);
insert into Hospital.Ingresos values (5, '14546-E', '24/02/2010', 'AJH', 1, 5, 'S�', 'Al�rgico al Paidoter�n', NULL, NULL);