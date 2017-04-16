SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_UpdatePassword]
	@UserName VARCHAR(30),
	@Password VARCHAR(30)
AS
BEGIN
	UPDATE IndividualLogin SET userpass = @Password WHERE username = @UserName
END
GO
