SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimProductSubcategory] (
		[ProductSubcategoryKey]              [int] IDENTITY(1, 1) NOT NULL,
		[ProductSubcategoryAlternateKey]     [int] NULL,
		[EnglishProductSubcategoryName]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SpanishProductSubcategoryName]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FrenchProductSubcategoryName]       [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ProductCategoryKey]                 [int] NULL,
		CONSTRAINT [AK_DimProductSubcategory_ProductSubcategoryAlternateKey]
		UNIQUE
		NONCLUSTERED
		([ProductSubcategoryAlternateKey])
		ON [PRIMARY],
		CONSTRAINT [PK_DimProductSubcategory_ProductSubcategoryKey]
		PRIMARY KEY
		CLUSTERED
		([ProductSubcategoryKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimProductSubcategory]
	WITH CHECK
	ADD CONSTRAINT [FK_DimProductSubcategory_DimProductCategory]
	FOREIGN KEY ([ProductCategoryKey]) REFERENCES [dbo].[DimProductCategory] ([ProductCategoryKey])
ALTER TABLE [dbo].[DimProductSubcategory]
	CHECK CONSTRAINT [FK_DimProductSubcategory_DimProductCategory]

GO
ALTER TABLE [dbo].[DimProductSubcategory] SET (LOCK_ESCALATION = TABLE)
GO
