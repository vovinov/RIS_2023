USE [RAPID]
GO
/****** Object:  StoredProcedure [dbo].[Список рекламных щитов больше заданной цены аренды]    Script Date: 09.12.2023 16:19:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Список рекламных щитов больше заданной цены аренды] 
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
