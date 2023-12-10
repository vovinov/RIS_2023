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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Список рекламных щитов больше заданной цены аренды] 
	@p1 money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ГОРОДА.city, Leasing as N'Цена'
	FROM  [РЕКЛАМНЫЙ ЩИТ]
	INNER JOIN ГОРОДА
	ON [РЕКЛАМНЫЙ ЩИТ].City = Города.id
		WHERE Leasing > @p1
		ORDER BY Leasing
END
GO
