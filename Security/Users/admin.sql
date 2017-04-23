IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'admin')
CREATE LOGIN [admin] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [admin] FOR LOGIN [admin]
GO
