SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FactProductInventory] (
		[ProductKey]       [int] NOT NULL,
		[DateKey]          [int] NOT NULL,
		[MovementDate]     [date] NOT NULL,
		[UnitCost]         [money] NOT NULL,
		[UnitsIn]          [int] NOT NULL,
		[UnitsOut]         [int] NOT NULL,
		[UnitsBalance]     [int] NOT NULL,
		CONSTRAINT [PK_FactProductInventory]
		PRIMARY KEY
		CLUSTERED
		([ProductKey], [DateKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactProductInventory]
	WITH CHECK
	ADD CONSTRAINT [FK_FactProductInventory_DimDate]
	FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactProductInventory]
	CHECK CONSTRAINT [FK_FactProductInventory_DimDate]

GO
ALTER TABLE [dbo].[FactProductInventory]
	WITH CHECK
	ADD CONSTRAINT [FK_FactProductInventory_DimProduct]
	FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey])
ALTER TABLE [dbo].[FactProductInventory]
	CHECK CONSTRAINT [FK_FactProductInventory_DimProduct]

GO
ALTER TABLE [dbo].[FactProductInventory] SET (LOCK_ESCALATION = TABLE)
GO
