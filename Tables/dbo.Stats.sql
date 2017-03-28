CREATE TABLE [dbo].[Stats]
(
[IndividualID] [int] NULL,
[Goals] [int] NULL,
[NumberofTrainings] [int] NULL,
[Assists] [int] NULL,
[Saves] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Stats] ADD CONSTRAINT [fk_Stats_Individual] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
