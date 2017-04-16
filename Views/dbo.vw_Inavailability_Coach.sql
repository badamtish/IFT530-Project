SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_Inavailability_Coach]
AS 
	SELECT dbo.IndividualAvailability.IndividualID, dbo.IndividualAvailability.DateUnavailable, dbo.IndividualAvailability.Reason, dbo.TeamCoaches.IndividualID AS CoachID
	FROM dbo.IndividualAvailability 
	JOIN dbo.Individual ON Individual.IndividualID = IndividualAvailability.IndividualID
	JOIN dbo.Teams ON Teams.TeamID = Individual.TeamID
	JOIN dbo.TeamCoaches ON TeamCoaches.TeamID = Teams.TeamID
	WHERE DateUnavailable > GETDATE()
GO
