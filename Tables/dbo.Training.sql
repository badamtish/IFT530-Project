CREATE TABLE [dbo].[Training]
(
[IndividualID] [int] NULL,
[MatchID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Training] ADD CONSTRAINT [fk_Training_Individual] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
ALTER TABLE [dbo].[Training] ADD CONSTRAINT [fk_Training_Schedules] FOREIGN KEY ([MatchID]) REFERENCES [dbo].[Schedules] ([MatchID])
GO
