CREATE TABLE [dbo].[InventoryList]
(
[ItemID] [int] NOT NULL,
[ItemName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Stock] [int] NULL,
[TotalCount] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryList] ADD CONSTRAINT [PK__Inventor__727E83EBCEC9A750] PRIMARY KEY CLUSTERED  ([ItemID]) ON [PRIMARY]
GO
