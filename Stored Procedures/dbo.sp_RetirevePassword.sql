SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_RetirevePassword]
	@UserName VARCHAR(30),
	@Password VARCHAR(30)
AS
BEGIN

	DECLARE @DBPass VARCHAR(30)
	SELECT @DBPass = userpass FROM IndividualLogin WHERE Username = @Username 
	IF @DBPass = @Password
	RETURN  0
	else
	RETURN  1
END
GO
