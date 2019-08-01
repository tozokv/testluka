SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FactCurrencyRate] (
		[CurrencyKey]      [int] NOT NULL,
		[DateKey]          [int] NOT NULL,
		[AverageRate]      [float] NOT NULL,
		[EndOfDayRate]     [float] NOT NULL,
		[Date]             [datetime] NULL,
		CONSTRAINT [PK_FactCurrencyRate_CurrencyKey_DateKey]
		PRIMARY KEY
		CLUSTERED
		([CurrencyKey], [DateKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[FactCurrencyRate]
	WITH CHECK
	ADD CONSTRAINT [FK_FactCurrencyRate_DimDate]
	FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactCurrencyRate]
	CHECK CONSTRAINT [FK_FactCurrencyRate_DimDate]

GO
ALTER TABLE [dbo].[FactCurrencyRate]
	WITH CHECK
	ADD CONSTRAINT [FK_FactCurrencyRate_DimCurrency]
	FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
ALTER TABLE [dbo].[FactCurrencyRate]
	CHECK CONSTRAINT [FK_FactCurrencyRate_DimCurrency]

GO
ALTER TABLE [dbo].[FactCurrencyRate] SET (LOCK_ESCALATION = TABLE)
GO
