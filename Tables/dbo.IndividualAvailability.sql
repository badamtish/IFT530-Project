CREATE TABLE [dbo].[IndividualAvailability]
(
[IndividualID] [int] NULL,
[DateUnavailable] [date] NULL,
[Reason] [varchar] (2000) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IndividualAvailability] ADD CONSTRAINT [fk_IndividualAvailability_Individual] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
