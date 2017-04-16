SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_RetrieveIndividualDetails]
	@Username VARCHAR(30)
AS 
BEGIN
	SELECT Title, Name
	FROM
	dbo.Individual 
	JOIN IndividualRoles ON IndividualRoles.IndividualID = Individual.IndividualID
	JOIN dbo.Roles ON Roles.RoleID = IndividualRoles.RoleID
	JOIN dbo.Teams ON Teams.TeamID = Individual.TeamID
	WHERE Individual.IndividualID = 
		(SELECT IndividualID FROM IndividualLogin WHERE username = @UserName)
END 
GO
