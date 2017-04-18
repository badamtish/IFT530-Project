SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_Schedules]
AS 
BEGIN 
	SELECT CAST(MatchDate AS DATE) AS MatchDate, OpponentTeam, MatchType.MatchType, CAST(MatchDate AS Time) AS MatchTime
	FROM dbo.Schedules
	JOIN dbo.MatchType ON MatchType.TypeID = Schedules.TypeID
END 
GO
