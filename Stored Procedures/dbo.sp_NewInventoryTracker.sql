SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_NewInventoryTracker]
    @IndividualID Int,
	@ItemID INT,
	@BorrwFor BIT,
	@Quantity INT,
	@DateOfBorrow DATE,
	@DateOfReturn DATE  
AS
BEGIN
	BEGIN TRY 
		INSERT INTO dbo.InventoryTracker
		VALUES (@IndividualID,@ItemID,@BorrwFor,@Quantity,@DateOfBorrow,@DateOfReturn )
	END TRY 
	BEGIN CATCH 
		THROW 
	END CATCH 
END
GO
