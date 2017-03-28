CREATE TABLE [dbo].[Roles]
(
[RoleID] [int] NOT NULL IDENTITY(1, 1),
[Title] [varchar] (20) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Roles] ADD CONSTRAINT [pk_RoleID] PRIMARY KEY CLUSTERED  ([RoleID]) ON [PRIMARY]
GO
