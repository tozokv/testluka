SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactInternetSales] (
		[ProductKey]                [int] NOT NULL,
		[OrderDateKey]              [int] NOT NULL,
		[DueDateKey]                [int] NOT NULL,
		[ShipDateKey]               [int] NOT NULL,
		[CustomerKey]               [int] NOT NULL,
		[PromotionKey]              [int] NOT NULL,
		[CurrencyKey]               [int] NOT NULL,
		[SalesTerritoryKey]         [int] NOT NULL,
		[SalesOrderNumber]          [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesOrderLineNumber]      [tinyint] NOT NULL,
		[RevisionNumber]            [tinyint] NOT NULL,
		[OrderQuantity]             [smallint] NOT NULL,
		[UnitPrice]                 [money] NOT NULL,
		[ExtendedAmount]            [money] NOT NULL,
		[UnitPriceDiscountPct]      [float] NOT NULL,
		[DiscountAmount]            [float] NOT NULL,
		[ProductStandardCost]       [money] NOT NULL,
		[TotalProductCost]          [money] NOT NULL,
		[SalesAmount]               [money] NOT NULL,
		[TaxAmt]                    [money] NOT NULL,
		[Freight]                   [money] NOT NULL,
		[CarrierTrackingNumber]     [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CustomerPONumber]          [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[OrderDate]                 [datetime] NULL,
		[DueDate]                   [datetime] NULL,
		[ShipDate]                  [datetime] NULL,
		CONSTRAINT [PK_FactInternetSales_SalesOrderNumber_SalesOrderLineNumber]
		PRIMARY KEY
		CLUSTERED
		([SalesOrderNumber], [SalesOrderLineNumber])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimCurrency]
	FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimCurrency]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimCustomer]
	FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimCustomer]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimDate]
	FOREIGN KEY ([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimDate]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimDate1]
	FOREIGN KEY ([DueDateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimDate1]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimDate2]
	FOREIGN KEY ([ShipDateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimDate2]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimProduct]
	FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimProduct]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimPromotion]
	FOREIGN KEY ([PromotionKey]) REFERENCES [dbo].[DimPromotion] ([PromotionKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimPromotion]

GO
ALTER TABLE [dbo].[FactInternetSales]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSales_DimSalesTerritory]
	FOREIGN KEY ([SalesTerritoryKey]) REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
ALTER TABLE [dbo].[FactInternetSales]
	CHECK CONSTRAINT [FK_FactInternetSales_DimSalesTerritory]

GO
ALTER TABLE [dbo].[FactInternetSales] SET (LOCK_ESCALATION = TABLE)
GO
