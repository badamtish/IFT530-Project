SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_Individual_Insert]
@FirstName VARCHAR(20),
@LastName VARCHAR(20),
@DateOfBirth DATE,
@Major VARCHAR(15),
@TeamID INT
AS
BEGIN
	DECLARE @Status INT 
	BEGIN TRY 
		INSERT INTO dbo.Individual ( FirstName , LastName , DateofBirth , Major , TeamID )
		VALUES  ( @FirstName, @LastName, @DateOfBirth, @Major, @TeamID)
		SET @Status = 0
		RETURN @Status
	END TRY
	BEGIN CATCH
		SET @Status = -1
		RETURN @Status
	END CATCH
END
GO
