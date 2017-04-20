SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_PlayerProfile]
	@IndividualID INT,
	@Name VARCHAR(50) OUTPUT
AS 
BEGIN 
	SELECT Name AS TeamName, Goals, Assists
	FROM dbo.Individual AS Ind
	JOIN dbo.Teams ON Teams.TeamID = Ind.TeamID
	JOIN dbo.Stats ON Stats.IndividualID = Ind.IndividualID
	WHERE Ind.IndividualID = @IndividualID

	SELECT IndividualRoles.RoleID, Title 
	FROM dbo.IndividualRoles 
	JOIN dbo.Roles ON Roles.RoleID = IndividualRoles.RoleID
	WHERE IndividualID = @IndividualID

	SELECT  @Name = FirstName + ' ' + LastName FROM dbo.Individual WHERE IndividualID = @IndividualID
END
GO
