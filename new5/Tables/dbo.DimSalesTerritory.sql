SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimSalesTerritory] (
		[SalesTerritoryKey]              [int] IDENTITY(1, 1) NOT NULL,
		[SalesTerritoryAlternateKey]     [int] NULL,
		[SalesTerritoryRegion]           [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesTerritoryCountry]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SalesTerritoryGroup]            [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[SalesTerritoryImage]            [varbinary](max) NULL,
		CONSTRAINT [AK_DimSalesTerritory_SalesTerritoryAlternateKey]
		UNIQUE
		NONCLUSTERED
		([SalesTerritoryAlternateKey])
		ON [PRIMARY],
		CONSTRAINT [PK_DimSalesTerritory_SalesTerritoryKey]
		PRIMARY KEY
		CLUSTERED
		([SalesTerritoryKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimSalesTerritory] SET (LOCK_ESCALATION = TABLE)
GO
