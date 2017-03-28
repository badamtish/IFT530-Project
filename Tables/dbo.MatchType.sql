CREATE TABLE [dbo].[MatchType]
(
[TypeID] [char] (1) COLLATE Latin1_General_CI_AI NOT NULL,
[MatchType] [varchar] (15) COLLATE Latin1_General_CI_AI NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchType] ADD CONSTRAINT [ck_TypeID] CHECK (([TypeID]='T' OR [TypeID]='M'))
GO
ALTER TABLE [dbo].[MatchType] ADD CONSTRAINT [pk_TypeID] PRIMARY KEY CLUSTERED  ([TypeID]) ON [PRIMARY]
GO
