CREATE ROLE [dbrole_Coach]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'dbrole_Coach', N'coach'
GO
