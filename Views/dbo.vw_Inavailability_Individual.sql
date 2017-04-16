SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_Inavailability_Individual]
AS 
	SELECT IndividualID, DateUnavailable, Reason FROM dbo.IndividualAvailability
	WHERE DateUnavailable > GETDATE()
GO
