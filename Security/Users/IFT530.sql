IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'IFT530')
CREATE LOGIN [IFT530] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [IFT530] FOR LOGIN [IFT530]
GO
