SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_RetrieveIndividualAvailability]
	@IndividualID VARCHAR(30),
	@RoleID INT,
	@CoachID INT --To reduce confusion between individualid and coachid
AS 
BEGIN
	IF (@RoleID = 1)
		SELECT * FROM vw_Inavailability_Individual WHERE IndividualID = @IndividualID
	ELSE IF (@RoleID =2)
		SET @CoachID = @IndividualID

		SELECT IndividualID, DateUnavailable, Reason
		FROM vw_Inavailability_Coach
		WHERE CoachID = @CoachID
END
GO
