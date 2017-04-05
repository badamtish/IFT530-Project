CREATE TABLE [dbo].[Individual]
(
[IndividualID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[LastName] [varchar] (20) COLLATE Latin1_General_CI_AI NULL,
[DateofBirth] [date] NULL,
[Major] [varchar] (15) COLLATE Latin1_General_CI_AI NULL,
[TeamID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Individual] ADD CONSTRAINT [pk_IndividualID] PRIMARY KEY CLUSTERED  ([IndividualID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Individual] ADD CONSTRAINT [fk_Individual_Teams] FOREIGN KEY ([TeamID]) REFERENCES [dbo].[Teams] ([TeamID])
GO
