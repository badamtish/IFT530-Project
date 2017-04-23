SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[sp_IndividualAvailability_Insert]
	@IndividualID VARCHAR(30),
	@Date DATE,
	@Reason VARCHAR(2000)
AS 
BEGIN
	INSERT INTO dbo.IndividualAvailability VALUES (@IndividualID, @Date, @Reason)
END 

GO
GRANT EXECUTE ON  [dbo].[sp_IndividualAvailability_Insert] TO [dbrole_Player]
GO
