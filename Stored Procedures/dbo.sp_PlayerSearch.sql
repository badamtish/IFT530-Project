SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_PlayerSearch]
	@playerName NVARCHAR(50)
AS
	BEGIN 
		SET NOCOUNT ON 
		DECLARE @SQL AS NVARCHAR(1024)
		SET @SQL =
		'SELECT FirstName, LastName, Name, Goals, Assists, NumberofTrainings AS MatchesPlayed
		FROM dbo.Individual Ind JOIN dbo.Teams 
			ON Ind.TeamID = Teams.TeamID
		JOIN dbo.Stats 
		ON Ind.IndividualID = Stats.IndividualID
		WHERE FirstName LIKE ''%' + @playerName + '%'' OR LastName LIKE ''%' + @playerName + '%'''
		--PRINT @SQL
		EXEC(@SQL) 
	END 
GO
