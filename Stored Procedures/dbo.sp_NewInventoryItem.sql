SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_NewInventoryItem]
    @ItemID int,
    @ItemName VARCHAR(40),
	@Stock INT,
	@TotalCount INT  
AS
BEGIN
	BEGIN TRY 
		INSERT INTO dbo.InventoryList
		VALUES (@ItemID,@ItemName,@Stock,@TotalCount)
	END TRY 
	BEGIN CATCH 
		THROW 
	END CATCH 
END
GO
