IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'polysoccerteam')
CREATE LOGIN [polysoccerteam] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [polysoccerteam] FOR LOGIN [polysoccerteam]
GO
