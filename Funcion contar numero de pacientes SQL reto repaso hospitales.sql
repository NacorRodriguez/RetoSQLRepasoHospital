-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nacor
-- Create date: 
-- Description:	Funcionar para contar el numero de pacientes
-- =============================================
ALTER FUNCTION Hospital.FContarNumeroPacientes 
(
	-- Add the parameters for the function here
	 
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = COUNT([N Seguridad Social])
	FROM Hospital.Pacientes

	-- Return the result of the function
	RETURN @Result

END
GO