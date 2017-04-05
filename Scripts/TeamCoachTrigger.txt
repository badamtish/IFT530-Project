/*Created By Nischal Kumar
Date: 03-04-2017
Description: Trigger to verify that the individuals inserted into the TeamCoaches table have their role id as Coach.
Note: Enforcing this constraint by checking the role id of the individual from the IndividualRole table for the individual before the insert.
*/

IF OBJECT_ID(N'TeamCoachInsertion_Update', 'TR') IS NOT NULL
	DROP TRIGGER TeamCoachInsertion_Update
GO
CREATE TRIGGER TeamCoachInsertion_Update
ON dbo.TeamCoaches
	INSTEAD OF INSERT,UPDATE
AS 
BEGIN
 	IF UPDATE(IndividualID)
		DECLARE @IndividualID INT

		SELECT @IndividualID = IndividualID FROM Inserted

 
 		IF EXISTS (SELECT * FROM dbo.IndividualRoles WHERE IndividualID = @IndividualID AND RoleID = 2)
		BEGIN
			IF NOT EXISTS (SELECT * FROM dbo.TeamCoaches WHERE IndividualID = @IndividualID)
				INSERT INTO dbo.TeamCoaches SELECT IndividualID, TeamID FROM inserted 
			ELSE 
				THROW 51000, 'Individual is already a coach for another team.', 1
		END	
		ELSE 
			THROW 51001, 'Individual is not an assigned coach.',1
END

/*Comments
 1. Check if he is an assigned coach in IndividualRole table.
 2. Check if he is already a coach to another table.
 */