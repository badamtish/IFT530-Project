CREATE TABLE [dbo].[TeamCoaches]
(
[IndividualID] [int] NULL,
[TeamID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [UQ__TeamCoac__2DA106F7AD9544A7] UNIQUE NONCLUSTERED  ([IndividualID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [FK_TeamCoachesIndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
ALTER TABLE [dbo].[TeamCoaches] ADD CONSTRAINT [FK_TeamCoachesTeamID] FOREIGN KEY ([TeamID]) REFERENCES [dbo].[Teams] ([TeamID])
GO
