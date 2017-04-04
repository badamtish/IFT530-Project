CREATE TABLE [dbo].[TeamCoaches]
(
[IndividualID] [int] NULL,
[TeamID] [int] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[TeamCoachInsertion_Update]
ON [dbo].[TeamCoaches]
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
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [UQ__TeamCoac__2DA106F7AD9544A7] UNIQUE NONCLUSTERED  ([IndividualID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [FK_TeamCoachesIndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [FK_TeamCoachesTeamID] FOREIGN KEY ([TeamID]) REFERENCES [dbo].[Teams] ([TeamID])
GO
