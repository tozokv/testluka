SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FactSalesQuota] (
		[SalesQuotaKey]        [int] IDENTITY(1, 1) NOT NULL,
		[EmployeeKey]          [int] NOT NULL,
		[DateKey]              [int] NOT NULL,
		[CalendarYear]         [smallint] NOT NULL,
		[CalendarQuarter]      [tinyint] NOT NULL,
		[SalesAmountQuota]     [money] NOT NULL,
		[Date]                 [datetime] NULL,
		CONSTRAINT [PK_FactSalesQuota_SalesQuotaKey]
		PRIMARY KEY
		CLUSTERED
		([SalesQuotaKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactSalesQuota]
	WITH CHECK
	ADD CONSTRAINT [FK_FactSalesQuota_DimEmployee]
	FOREIGN KEY ([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
ALTER TABLE [dbo].[FactSalesQuota]
	CHECK CONSTRAINT [FK_FactSalesQuota_DimEmployee]

GO
ALTER TABLE [dbo].[FactSalesQuota]
	WITH CHECK
	ADD CONSTRAINT [FK_FactSalesQuota_DimDate]
	FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactSalesQuota]
	CHECK CONSTRAINT [FK_FactSalesQuota_DimDate]

GO
ALTER TABLE [dbo].[FactSalesQuota] SET (LOCK_ESCALATION = TABLE)
GO
