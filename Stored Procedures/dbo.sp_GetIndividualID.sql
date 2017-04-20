SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_GetIndividualID]
	@Username VARCHAR(30),
	@IndividualID INT OUTPUT
AS
BEGIN
	SELECT @IndividualID = IndividualId  FROM IndividualLogin WHERE Username = @Username
	RETURN @IndividualID
END

GO
