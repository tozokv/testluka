SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DimOrganization] (
		[OrganizationKey]           [int] IDENTITY(1, 1) NOT NULL,
		[ParentOrganizationKey]     [int] NULL,
		[PercentageOfOwnership]     [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[OrganizationName]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CurrencyKey]               [int] NULL,
		CONSTRAINT [PK_DimOrganization]
		PRIMARY KEY
		CLUSTERED
		([OrganizationKey])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[DimOrganization]
	WITH CHECK
	ADD CONSTRAINT [FK_DimOrganization_DimCurrency]
	FOREIGN KEY ([CurrencyKey]) REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
ALTER TABLE [dbo].[DimOrganization]
	CHECK CONSTRAINT [FK_DimOrganization_DimCurrency]

GO
ALTER TABLE [dbo].[DimOrganization]
	WITH CHECK
	ADD CONSTRAINT [FK_DimOrganization_DimOrganization]
	FOREIGN KEY ([ParentOrganizationKey]) REFERENCES [dbo].[DimOrganization] ([OrganizationKey])
ALTER TABLE [dbo].[DimOrganization]
	CHECK CONSTRAINT [FK_DimOrganization_DimOrganization]

GO
ALTER TABLE [dbo].[DimOrganization] SET (LOCK_ESCALATION = TABLE)
GO
