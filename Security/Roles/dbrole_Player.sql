CREATE ROLE [dbrole_Player]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'dbrole_Player', N'player'
GO
