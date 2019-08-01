SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimCurrency] (
		[CurrencyKey]              [int] IDENTITY(1, 1) NOT NULL,
		[CurrencyAlternateKey]     [nchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[CurrencyName]             [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_DimCurrency_CurrencyKey]
		PRIMARY KEY
		CLUSTERED
		([CurrencyKey])
	ON [PRIMARY]
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_DimCurrency_CurrencyAlternateKey]
	ON [dbo].[DimCurrency] ([CurrencyAlternateKey])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] SET (LOCK_ESCALATION = TABLE)
GO
