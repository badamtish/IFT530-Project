SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[sp_InventoryBorrowInsert]
	@IndividualID INT,
	@ItemID INT,
	@BorrowFor BIT,
	@Quantity INT,
	@DateOfBorrow DATE
AS
BEGIN
	IF (@BorrowFor = 0 AND @Quantity = 1)
		INSERT INTO dbo.InventoryTracker 
		VALUES (@IndividualID, @ItemID, @BorrowFor, @Quantity, @DateOfBorrow, DATEADD(DAY, 14, @DateOfBorrow))
		--Date of return will be set to 14 days as default.
	ELSE 
		THROW 51002, 'Invalid borrow parameters. Individual can borrow only one piece per item.', 1
END 
GO
