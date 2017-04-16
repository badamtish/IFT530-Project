SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_RetrieveIndividualAvailability]
	@IndividualID VARCHAR(30),
	@RoleID INT
AS 
BEGIN

	IF (@RoleID = 1)
		SELECT * FROM vw_Inavailability_Individual WHERE IndividualID = @IndividualID
	ELSE IF (@RoleID =2)
		SELECT IndividualID, DateUnavailable, Reason
		FROM vw_Inavailability_Coach
		WHERE CoachID = @IndividualID
END
GO
