CREATE TABLE [dbo].[Teams]
(
[TeamID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (20) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teams] ADD CONSTRAINT [pk_TeamID] PRIMARY KEY CLUSTERED  ([TeamID]) ON [PRIMARY]
GO
