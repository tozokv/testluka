SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactInternetSalesReason] (
		[SalesOrderNumber]         [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesOrderLineNumber]     [tinyint] NOT NULL,
		[SalesReasonKey]           [int] NOT NULL,
		CONSTRAINT [PK_FactInternetSalesReason_SalesOrderNumber_SalesOrderLineNumber_SalesReasonKey]
		PRIMARY KEY
		CLUSTERED
		([SalesOrderNumber], [SalesOrderLineNumber], [SalesReasonKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactInternetSalesReason]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSalesReason_FactInternetSales]
	FOREIGN KEY ([SalesOrderNumber], [SalesOrderLineNumber]) REFERENCES [dbo].[FactInternetSales] ([SalesOrderNumber], [SalesOrderLineNumber])
ALTER TABLE [dbo].[FactInternetSalesReason]
	CHECK CONSTRAINT [FK_FactInternetSalesReason_FactInternetSales]

GO
ALTER TABLE [dbo].[FactInternetSalesReason]
	WITH CHECK
	ADD CONSTRAINT [FK_FactInternetSalesReason_DimSalesReason]
	FOREIGN KEY ([SalesReasonKey]) REFERENCES [dbo].[DimSalesReason] ([SalesReasonKey])
ALTER TABLE [dbo].[FactInternetSalesReason]
	CHECK CONSTRAINT [FK_FactInternetSalesReason_DimSalesReason]

GO
ALTER TABLE [dbo].[FactInternetSalesReason] SET (LOCK_ESCALATION = TABLE)
GO
