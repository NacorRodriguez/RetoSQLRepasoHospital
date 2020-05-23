-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nacor
-- Create date: 
-- Description:	Procedimiento para insertar un nuevo medico al hospital
-- =============================================
ALTER PROCEDURE Hospital.usp_IntroduccionNuevoMedico 
	-- Add the parameters for the stored procedure here
	@CodigoID nchar(4), 
	@Nombre nchar(15),
	@Apellidos nchar(30),
	@Especialidad nchar(25),
	@TomaPosesion date,
	@Cargo nchar(25),
	@IDColegiado numeric(18,0),
	@Observaciones varchar(MAX)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	ALTER TABLE Hospital.Medicos
	ADD CONSTRAINT chk_NumeroDeColegiado CHECK ([Número de Colegiado]>999);
	INSERT INTO Hospital.Medicos ([Codigo de identificación], [Nombre del Médico], [Apellidos del Médico], 
	Especialidad, [Fecha toma posesión], Cargo, [Número de Colegiado], Observaciones) 
	VALUES (@CodigoID, @Nombre, @Apellidos,@Especialidad, @TomaPosesion, @Cargo, @IDColegiado, @Observaciones)
	
END
GO
