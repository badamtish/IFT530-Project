CREATE TABLE [dbo].[Schedules]
(
[MatchID] [int] NOT NULL IDENTITY(1, 1),
[OpponentTeam] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TypeID] [char] (1) COLLATE Latin1_General_CI_AI NULL,
[MatchDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Schedules] ADD CONSTRAINT [pk_MatchID] PRIMARY KEY CLUSTERED  ([MatchID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Schedules] ADD CONSTRAINT [fk_Schedules_MatchType] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[MatchType] ([TypeID])
GO
GRANT INSERT ON  [dbo].[Schedules] TO [dbrole_Coach]
GO
GRANT DELETE ON  [dbo].[Schedules] TO [dbrole_Coach]
GO
GRANT UPDATE ON  [dbo].[Schedules] TO [dbrole_Coach]
GO
