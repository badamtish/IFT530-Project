SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--Inventory (Items borrowed, request items)

CREATE PROCEDURE [dbo].[sp_PlayerInventory]	
	@IndividualID Int 
AS 
BEGIN
	SELECT ItemName, DateOfBorrow, DATEDIFF(D,CAST (GETDATE() AS DATE), DateOfBorrow) AS DateHeld
	FROM dbo.InventoryList 
	JOIN dbo.InventoryTracker ON InventoryTracker.ItemID = InventoryList.ItemID
	WHERE IndividualID = @IndividualID
END 
GO
