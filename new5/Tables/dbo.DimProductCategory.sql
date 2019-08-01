SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimProductCategory] (
		[ProductCategoryKey]              [int] IDENTITY(1, 1) NOT NULL,
		[ProductCategoryAlternateKey]     [int] NULL,
		[EnglishProductCategoryName]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SpanishProductCategoryName]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FrenchProductCategoryName]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [AK_DimProductCategory_ProductCategoryAlternateKey]
		UNIQUE
		NONCLUSTERED
		([ProductCategoryAlternateKey])
		ON [PRIMARY],
		CONSTRAINT [PK_DimProductCategory_ProductCategoryKey]
		PRIMARY KEY
		CLUSTERED
		([ProductCategoryKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimProductCategory] SET (LOCK_ESCALATION = TABLE)
GO
