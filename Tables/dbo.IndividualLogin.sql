CREATE TABLE [dbo].[IndividualLogin]
(
[username] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[userpass] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IndividualID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IndividualLogin] ADD CONSTRAINT [PK__Individu__F3DBC573C7EDB641] PRIMARY KEY CLUSTERED  ([username]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IndividualLogin] ADD CONSTRAINT [FK__Individua__Indiv__4BAC3F29] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
