SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteInventoryTracker]
    @IndividualID Int 
AS
BEGIN
	BEGIN TRY 
		DELETE FROM dbo.InventoryTracker
		WHERE IndividualID = @IndividualID
	END TRY 
	BEGIN CATCH 
		THROW 
	END CATCH 
END
GO
