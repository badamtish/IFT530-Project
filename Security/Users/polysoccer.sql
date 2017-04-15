IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'polysoccerlogin')
CREATE LOGIN [polysoccerlogin] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [polysoccer] FOR LOGIN [polysoccerlogin]
GO
