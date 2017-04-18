SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_PlayerProfile]
	@IndividualID Int
AS 
BEGIN 
	SELECT Name AS TeamName, Goals, Assists
	FROM dbo.Individual AS Ind
	JOIN dbo.Teams ON Teams.TeamID = Ind.TeamID
	JOIN dbo.Stats ON Stats.IndividualID = Ind.IndividualID
	WHERE Ind.IndividualID = @IndividualID
END
GO
