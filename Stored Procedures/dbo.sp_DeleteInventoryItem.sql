SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteInventoryItem]
    @ItemID int
AS
BEGIN
	BEGIN TRY 
		DELETE FROM dbo.InventoryList
		WHERE ItemID = @ItemID
	END TRY 
	BEGIN CATCH 
		THROW 
	END CATCH 
END
GO