CREATE TABLE [dbo].[InventoryTracker]
(
[IndividualID] [int] NULL,
[ItemID] [int] NULL,
[BorrowFor] [bit] NULL,
[Quantity] [int] NULL,
[DateOfBorrow] [date] NULL,
[DateOfReturn] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryTracker] ADD CONSTRAINT [fk_InventoryTracker_InventoryList] FOREIGN KEY ([ItemID]) REFERENCES [dbo].[InventoryList] ([ItemID])
GO
ALTER TABLE [dbo].[InventoryTracker] ADD CONSTRAINT [FK_InventoryTrackerIndividualID] FOREIGN KEY ([IndividualID]) REFERENCES [dbo].[Individual] ([IndividualID])
GO
