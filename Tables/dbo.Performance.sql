CREATE TABLE [dbo].[Performance]
(
[IndividualID] [int] NULL,
[CoachID] [int] NULL,
[Comments] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ratings] [decimal] (2, 1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Performance] ADD CONSTRAINT [FK_PerformanceCoachID] FOREIGN KEY ([CoachID]) REFERENCES [dbo].[TeamCoaches] ([IndividualID])
GO
ALTER TABLE [dbo].[Performance] ADD CONSTRAINT [FK_PerformanceIndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
