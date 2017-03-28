CREATE TABLE [dbo].[Schedules]
(
[MatchID] [int] NOT NULL IDENTITY(1, 1),
[OpponentTeamID] [int] NULL,
[MatchType] [char] (1) COLLATE Latin1_General_CI_AI NULL,
[MatchDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Schedules] ADD CONSTRAINT [pk_MatchID] PRIMARY KEY CLUSTERED  ([MatchID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Schedules] ADD CONSTRAINT [fk_Schedules_MatchType] FOREIGN KEY ([MatchType]) REFERENCES [dbo].[MatchType] ([TypeID])
GO
ALTER TABLE [dbo].[Schedules] ADD CONSTRAINT [fk_Schedules_Teams] FOREIGN KEY ([OpponentTeamID]) REFERENCES [dbo].[Teams] ([TeamID])
GO
