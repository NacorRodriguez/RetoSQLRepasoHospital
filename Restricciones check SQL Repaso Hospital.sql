/* restriccion check del numero de plantas */
	ALTER TABLE Hospital.Ingresos
	ADD CONSTRAINT chk_PlantasHospital CHECK ([Número de planta] <= 10)	

	/* restriccion check del numero de camas */
	ALTER TABLE Hospital.Ingresos
	ADD CONSTRAINT chk_CamasHospital CHECK ([Número de cama] <= 200)
	
	/* restriccion check de si el paciente tiene algun tipo de alegia */
	ALTER TABLE Hospital.Ingresos
	ADD CONSTRAINT chk_Alergico CHECK (Alérgico LIKE 'No' OR Alérgico LIKE 'Sí' OR Alérgico LIKE 'Si' )

	/* restriccion check del genero del paciente */
	ALTER TABLE Hospital.Pacientes
	ADD CONSTRAINT chk_Genero CHECK (Sexo LIKE 'M' OR Sexo LIKE 'H' OR Sexo LIKE 'O' )
