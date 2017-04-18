CREATE TABLE [dbo].[MatchType]
(
[TypeID] [char] (1) COLLATE Latin1_General_CI_AI NOT NULL,
[MatchType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchType] ADD CONSTRAINT [ck_TypeID] CHECK (([TypeID]='T' OR [TypeID]='M'))
GO
ALTER TABLE [dbo].[MatchType] ADD CONSTRAINT [pk_TypeID] PRIMARY KEY CLUSTERED  ([TypeID]) ON [PRIMARY]
GO
