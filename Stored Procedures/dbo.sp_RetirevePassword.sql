SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_RetirevePassword]
	@UserName VARCHAR(30),
	@Password VARCHAR(30) OUTPUT
AS
BEGIN
	SELECT userpass = @Password FROM IndividualLogin WHERE Username = @Username
	RETURN @Password
END
GO
