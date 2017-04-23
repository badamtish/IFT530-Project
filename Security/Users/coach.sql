IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'coach')
CREATE LOGIN [coach] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [coach] FOR LOGIN [coach]
GO
