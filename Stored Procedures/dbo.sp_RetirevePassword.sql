SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_RetirevePassword]
	@UserName VARCHAR(30),
	@Password VARCHAR(30),
	@Status INT OUTPUT
AS
BEGIN

	DECLARE @DBPass VARCHAR(30)
	SELECT @DBPass = userpass FROM IndividualLogin WHERE Username = @Username 
	IF @DBPass = @Password
	BEGIN
		SET @Status = 0
		RETURN @Status
	END 
	ELSE
	BEGIN 
		SET @Status = 1
		RETURN @Status
	END 
END
GO
