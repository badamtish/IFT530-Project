IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'player')
CREATE LOGIN [player] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [player] FOR LOGIN [player]
GO
