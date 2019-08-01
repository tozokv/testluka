SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[FactFinance] (
		[FinanceKey]             [int] IDENTITY(1, 1) NOT NULL,
		[DateKey]                [int] NOT NULL,
		[OrganizationKey]        [int] NOT NULL,
		[DepartmentGroupKey]     [int] NOT NULL,
		[ScenarioKey]            [int] NOT NULL,
		[AccountKey]             [int] NOT NULL,
		[Amount]                 [float] NOT NULL,
		[Date]                   [datetime] NULL
)
GO
ALTER TABLE [dbo].[FactFinance]
	WITH CHECK
	ADD CONSTRAINT [FK_FactFinance_DimScenario]
	FOREIGN KEY ([ScenarioKey]) REFERENCES [dbo].[DimScenario] ([ScenarioKey])
ALTER TABLE [dbo].[FactFinance]
	CHECK CONSTRAINT [FK_FactFinance_DimScenario]

GO
ALTER TABLE [dbo].[FactFinance]
	WITH CHECK
	ADD CONSTRAINT [FK_FactFinance_DimOrganization]
	FOREIGN KEY ([OrganizationKey]) REFERENCES [dbo].[DimOrganization] ([OrganizationKey])
ALTER TABLE [dbo].[FactFinance]
	CHECK CONSTRAINT [FK_FactFinance_DimOrganization]

GO
ALTER TABLE [dbo].[FactFinance]
	WITH CHECK
	ADD CONSTRAINT [FK_FactFinance_DimDepartmentGroup]
	FOREIGN KEY ([DepartmentGroupKey]) REFERENCES [dbo].[DimDepartmentGroup] ([DepartmentGroupKey])
ALTER TABLE [dbo].[FactFinance]
	CHECK CONSTRAINT [FK_FactFinance_DimDepartmentGroup]

GO
ALTER TABLE [dbo].[FactFinance]
	WITH CHECK
	ADD CONSTRAINT [FK_FactFinance_DimDate]
	FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey])
ALTER TABLE [dbo].[FactFinance]
	CHECK CONSTRAINT [FK_FactFinance_DimDate]

GO
ALTER TABLE [dbo].[FactFinance]
	WITH CHECK
	ADD CONSTRAINT [FK_FactFinance_DimAccount]
	FOREIGN KEY ([AccountKey]) REFERENCES [dbo].[DimAccount] ([AccountKey])
ALTER TABLE [dbo].[FactFinance]
	CHECK CONSTRAINT [FK_FactFinance_DimAccount]

GO
ALTER TABLE [dbo].[FactFinance] SET (LOCK_ESCALATION = TABLE)
GO
