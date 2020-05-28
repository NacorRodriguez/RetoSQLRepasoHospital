insert into Hospital.Pacientes values ('08/7888888', 'José Eduardo', 'Romerales Pinto', 'C/ Azorín, 34 3o', 'Móstoles', 'Madrid', '28935', '91-345-87-45', '10203-F', 'H');
insert into Hospital.Pacientes values ('08/7234823', 'Ángel', 'Ruíz Picasso', 'C/ Salmerón, 212', 'Madrid', 'Madrid', '28028', '91-565-34-33', '11454-L', 'H');
insert into Hospital.Pacientes values ('08/7333333', 'Mercedes', 'Romero Carvajal', 'C/ Málada, 13', 'Móstoles', 'Madrid', '28935', '91-455-67-45', '14546-E','M');
insert into Hospital.Pacientes values ('08/7555555', 'Martín', 'Fernández López', 'C/ Sastres, 21', 'Madrid', 'Madrid', '28028', '91-333-33-33', '15413-S', 'H');


insert into Hospital.Medicos values ('AJH', 'Antonio', 'Jaén Hernández', 'Pediatría', '12-08-82', 'Adjunto', 2113, 'Está próxima su retirada');
insert into Hospital.Medicos values ('CEM', 'Carmen', 'Esterill Manrique', 'Psiquiatría', '13-02-92', 'Jefe de sección', 1231,NULL);
insert into Hospital.Medicos values ('RLQ', 'Rocío', 'López Quijada', 'Médico de familia', '23-09-94', 'Titular', 1331, NULL);

insert into Hospital.Ingresos values (1, '10203-F', '23/01/2009', 'AJH', 5, 121, 'No', 'Epiléptico', NULL, NULL);
insert into Hospital.Ingresos values (2, '15413-S', '13/03/2009', 'RLQ', 2, 5, 'Sí', 'Alérgico a la penicilina', NULL, NULL);
insert into Hospital.Ingresos values (3, '11454-L', '25/05/2009', 'RLQ', 3, 31, 'No', NULL, NULL, NULL);
insert into Hospital.Ingresos values (4, '15413-S', '29/01/2010', 'CEM', 2, 13, 'No', NULL, NULL, NULL);
insert into Hospital.Ingresos values (5, '14546-E', '24/02/2010', 'AJH', 1, 5, 'Sí', 'Alérgico al Paidoterín', NULL, NULL);