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
	BEGIN TRY 
		INSERT INTO dbo.Individual ( FirstName , LastName , DateofBirth , Major , TeamID )
		VALUES  ( @FirstName, @LastName, @DateOfBirth, @Major, @TeamID)
	END TRY
	BEGIN CATCH
		THROW
	END CATCH
END
GO
