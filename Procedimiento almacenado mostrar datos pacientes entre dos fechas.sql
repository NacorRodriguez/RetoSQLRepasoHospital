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
-- Description:	Procedimiento almacenado para buscar pacientes entre 2 fechas
-- =============================================
ALTER PROCEDURE Hospital.usp_MostrarPacientesIngresadosEntreFechas 
	-- Add the parameters for the stored procedure here
	@FechaIngresoInicial date, 
	@FechaIngresoFinal date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT P.Nombre, P.Apellidos, I.[Fecha de Ingreso], I.[Número de planta], I.[Número de cama], M.[Nombre del Médico], M.[Apellidos del Médico] FROM Hospital.Ingresos AS I
	FULL OUTER JOIN Hospital.Pacientes AS P ON P.[Número de Historial] = I.[Número de Historial]
	FULL OUTER JOIN Hospital.Medicos AS M ON M.[Codigo de identificación] = I.[Código de Identificación]
	WHERE I.[Fecha de Ingreso] BETWEEN @FechaIngresoInicial AND @FechaIngresoFinal
	
END
GO
